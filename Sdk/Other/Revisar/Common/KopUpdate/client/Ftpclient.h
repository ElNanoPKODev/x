/**
*  @file Ftpclient.h
*
*  Ftpclient.h, v 1.0 2005/5/28 13:14:05 shanghai China
*
*  @author claude Fan <fanyf2002@hotmail.com>
*
*/

#pragma once

class CFtpException : public CException
{
    DECLARE_DYNCREATE(CFtpException)

public:
    CFtpException(int nCode = 0);
    ~CFtpException() {}

    int m_nErrorCode;
};

class CFtpClient : public CInternetSession
{
public:
    CFtpClient(LPCTSTR lpszApName, DWORD dwContext = 1);
    virtual ~CFtpClient();

    VOID SetFtpServer(LPCTSTR lpszFtpIp)
    {
        m_strFtpIp = lpszFtpIp;
    }
    VOID SetFtpUser(LPCTSTR lpszFtpUser)
    {
        m_strFtpUser = lpszFtpUser;
    }
    VOID SetFtpPwd(LPCTSTR lpszFtpPwd)
    {
        m_strFtpPwd = lpszFtpPwd;
    }
    VOID SetFtpTimeOut(DWORD dwTimeOut)
    {
        SetSessionTimeOut(dwTimeOut);
    }

    VOID EnableCallback(BOOL bEnableCallback = TRUE);

    // 只能用于单线程
    enum {GET_SUCCESS, GET_GETFAIL, GET_NOTFOUND, GET_CONNFAIL, GET_FINDFAIL};
    int Get(LPCTSTR lpszRemoteFile,
            LPCTSTR lpszLocalFile,
            BOOL bPassiveMode = TRUE,
            BOOL bFailIfExists = FALSE,
            DWORD dwFlags = FTP_TRANSFER_TYPE_BINARY,
            DWORD dwContext = 1);

protected:
    enum {BUFSZ = 16 * 1024};

    VOID SetSessionTimeOut(DWORD dwTimeOut);

    virtual int OnGetFileBegin(LPCTSTR lpszRemoteFile);
    virtual int OnGetFileRecv(LPCTSTR lpszRemoteFile, ULONG uRecvSize, DWORD dwIncTick);
    virtual int OnGetFileSuccess(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile);
    virtual int OnGetFileNotFound(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile);
    virtual int OnGetFileFailed(LPCTSTR lpszRemoteFile, ULONG ulRecvSize);

private:
    DWORD m_dwFtpContext;
    //CFtpConnection* m_pFtpc;    
	
	//CInternetConnection* m_pFtpc;
	CHttpConnection* m_pFtpc;    

    //CInternetFile* m_pRemoteFile; // 远程文件
	CHttpFile* m_pRemoteFile; // 远程文件
    CFile m_LocalFile;
    char m_SendBuf[BUFSZ];
    char m_RecvBuf[BUFSZ];

    ULONG volatile m_ulDownloadSize;
    enum {DOWNLOAD_SUCCESS, DOWNLOAD_FAILED};
    static DWORD WINAPI Download(LPVOID);

    CString m_strFtpIp;
    CString m_strFtpUser;
    CString m_strFtpPwd;
    DWORD m_dwTimeOut;

    BOOL m_bEnableCallback;
};
