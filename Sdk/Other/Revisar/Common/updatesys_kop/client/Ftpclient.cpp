#include "StdAfx.h"
#include ".\ftpclient.h"

IMPLEMENT_DYNCREATE(CFtpException, CException)
CFtpException::CFtpException(int nCode) : m_nErrorCode(nCode)
{
}


CFtpClient::CFtpClient(LPCTSTR lpszApName, DWORD dwContext)
    : CInternetSession(lpszApName, dwContext),
    m_LocalFile(), m_pRemoteFile(NULL)
{
    m_dwFtpContext = dwContext;
    m_pFtpc = NULL;
    m_bEnableCallback = FALSE;
    m_dwTimeOut = 0;

    SetSessionTimeOut(5000);
}

CFtpClient::~CFtpClient()
{
    if (m_pFtpc != NULL)
    {
        m_pFtpc->Close();
        delete m_pFtpc;
        m_pFtpc = NULL;
    }
}

VOID CFtpClient::SetSessionTimeOut(DWORD dwTimeOut)
{
    if (m_dwTimeOut == dwTimeOut) return;

    m_dwTimeOut = max(dwTimeOut, m_dwTimeOut);
    SetOption(INTERNET_OPTION_CONNECT_TIMEOUT, m_dwTimeOut);
    //SetOption(INTERNET_OPTION_SEND_TIMEOUT, m_dwTimeOut);
    //SetOption(INTERNET_OPTION_CONTROL_SEND_TIMEOUT, m_dwTimeOut);
    SetOption(INTERNET_OPTION_RECEIVE_TIMEOUT, m_dwTimeOut);
    //SetOption(INTERNET_OPTION_CONTROL_RECEIVE_TIMEOUT, m_dwTimeOut);
}

VOID CFtpClient::EnableCallback(BOOL bEnableCallback /* = TRUE */)
{
    m_bEnableCallback = bEnableCallback;
}

int CFtpClient::OnGetFileBegin(LPCTSTR lpszRemoteFile)
{
    return 0;
}

int CFtpClient::OnGetFileRecv(LPCTSTR lpszRemoteFile, ULONG uRecvSize, DWORD dwIncTick)
{
    return 0;
}

int CFtpClient::OnGetFileSuccess(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile)
{
    return 0;
}

int CFtpClient::OnGetFileNotFound(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile)
{
    return 0;
}

int CFtpClient::OnGetFileFailed(LPCTSTR lpszRemoteFile, ULONG ulRecvSize)
{
    return 0;
}

int CFtpClient::Get(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile,
                    BOOL bPassiveMode /* = TRUE */,
                    BOOL bFailIfExists /* = FALSE */,
                    DWORD dwFlags /* = FTP_TRANSFER_TYPE_BINARY */,
                    DWORD dwContext /* = 1 */)
{
    BOOL bRet = FALSE;
    BOOL bFound = TRUE; // 假定远程文件是存在的
    ULONG ulTotalRead = 0;

    // 得到FTP连接
    try
    {
        if (m_pFtpc == NULL)
        {
            m_pFtpc = GetFtpConnection(m_strFtpIp, m_strFtpUser, m_strFtpPwd,
                                       INTERNET_INVALID_PORT_NUMBER,
                                       bPassiveMode);
        }
    }
    catch (CInternetException* pEx)
    {
        TCHAR szErr[1024];
        pEx->GetErrorMessage(szErr, 1024);
        TRACE2("Conn Error: (%d) %s\n", pEx->m_dwError, szErr);
        pEx->Delete();

        m_pFtpc = NULL;
        return GET_CONNFAIL;
    }

    // 查找文件
    if (m_bEnableCallback)
        OnGetFileBegin(lpszRemoteFile);

    // 打开本地文件
    m_LocalFile.Open(lpszLocalFile, CFile::modeCreate | CFile::modeWrite, NULL);

    // 打开远程文件
    try
    {
        m_pRemoteFile = m_pFtpc->OpenFile(lpszRemoteFile,
                                          GENERIC_READ,
                                          dwFlags,
                                          dwContext);
    }
    catch (CInternetException* pEx)
    {
        TCHAR szErr[1024];
        DWORD dwErr = pEx->m_dwError;
        pEx->GetErrorMessage(szErr, 1024);
        TRACE2("Open Error: (%d) %s\n", dwErr, szErr);
        pEx->Delete();

        if (dwErr == 12003)
        {
            bFound = FALSE;
        }
        else
        {
            // 连接要重新建立
            m_LocalFile.Close();
            m_pFtpc->Close();
            delete m_pFtpc;
            m_pFtpc = NULL;
            return GET_FINDFAIL;
        }
    }

    // 下传远程文件
    if (bFound)
    {
        try
        {
            // 这里不能直接在线程中使用 m_pRemoteFile->Read
            // 因为如果连接出现异常，则Read无法感知，而设置的
            // INTERNET_OPTION_RECEIVE_TIMEOUT也不会起作用
            // 这是Microsoft的一个bug：
            // http://support.microsoft.com/kb/q176420/
            // 解决方法见：
            // http://support.microsoft.com/kb/224318/EN-US/
            HANDLE hThread;
            DWORD dwThreadID;
            DWORD dwThreadExitCode;

            ulTotalRead = m_ulDownloadSize = 0;
            hThread = CreateThread(NULL,
                                   0,
                                   CFtpClient::Download,
                                   this,
                                   0,
                                   &dwThreadID);

            while (true)
            {
                ulTotalRead = m_ulDownloadSize;

                Sleep(1); // free the CPU

                GetExitCodeThread(hThread, &dwThreadExitCode);
                if (dwThreadExitCode == STILL_ACTIVE)
                {
                    if ((WaitForSingleObject(hThread, m_dwTimeOut) == WAIT_TIMEOUT)
                        && (ulTotalRead == m_ulDownloadSize))
                    {
                        // 子线程一直处于挂起状态，可能是连接已经丢失
                        bRet = FALSE;

                        // 通知子线程退出
                        m_pFtpc->Close();

                        // 等待子线程退出
                        //WaitForSingleObject(hThread, INFINITE);
                        if (WaitForSingleObject(hThread, 1000) == WAIT_TIMEOUT)
                        {
                            GetExitCodeThread(hThread, &dwThreadExitCode);
                            if (dwThreadExitCode == STILL_ACTIVE)
                            {
                                TerminateThread(hThread, DOWNLOAD_FAILED);
                            }
                        }

                        break;
                    }
                }
                else if (dwThreadExitCode == DOWNLOAD_SUCCESS)
                {
                    bRet = TRUE;
                    break;
                }
                else if (dwThreadExitCode == DOWNLOAD_FAILED)
                {
                    bRet = FALSE;
                    break;
                }
            }

            CloseHandle(hThread);
        }
        catch (CInternetException* pEx)
        {
            TCHAR szErr[1024];
            pEx->GetErrorMessage(szErr, 1024);
            TRACE2("Mon Error: (%d) %s\n", pEx->m_dwError, szErr);
            pEx->Delete();
            bRet = FALSE;
        }
    }
    else
    {
        // 不存在的文件认为下传不成功
        bRet = FALSE;
    }

    // 关闭远程文件
    if (m_pRemoteFile != NULL)
    {
        m_pRemoteFile->Close();
        delete m_pRemoteFile;
        m_pRemoteFile = NULL;
    }

    // 关闭本地文件
    m_LocalFile.Close();

    if (bFound)
    {
        if (bRet)
        {
            if (m_bEnableCallback)
                OnGetFileSuccess(lpszRemoteFile, lpszLocalFile);

            return GET_SUCCESS;
        }
        else
        {
            if (m_bEnableCallback)
                OnGetFileFailed(lpszRemoteFile, ulTotalRead);

            if (m_pFtpc != NULL)
            {
                m_pFtpc->Close();
                delete m_pFtpc;
                m_pFtpc = NULL;
            }

            return GET_GETFAIL;
        }
    }
    else
    {
        if (m_bEnableCallback)
            OnGetFileNotFound(lpszRemoteFile, lpszLocalFile);

        return GET_NOTFOUND;
    }
}

DWORD CFtpClient::Download(LPVOID lpParam)
{
    CFtpClient* pThis = (CFtpClient *)lpParam;
    ULONG ulBytesRead = 0;
    DWORD dwBeginTick, dwEndTick;

    try
    {
        while (true)
        {
            dwBeginTick = ::GetTickCount();

            ulBytesRead = pThis->m_pRemoteFile->Read(pThis->m_RecvBuf, BUFSZ);
            pThis->m_ulDownloadSize += ulBytesRead;

            dwEndTick = ::GetTickCount();

            pThis->m_LocalFile.Write(pThis->m_RecvBuf, ulBytesRead);

            if (pThis->m_bEnableCallback)
                pThis->OnGetFileRecv("test", ulBytesRead, dwEndTick - dwBeginTick);

            if (ulBytesRead != BUFSZ) break;
        }
    }
    catch (CInternetException* pEx)
    {
        TCHAR szErr[1024];
        pEx->GetErrorMessage(szErr, 1024);
        TRACE2("Download Error: (%d) %s\n", pEx->m_dwError, szErr);
        pEx->Delete();
        return DOWNLOAD_FAILED;
    }
    catch (...)
    {
        return DOWNLOAD_FAILED;
    }

    return DOWNLOAD_SUCCESS;
}
