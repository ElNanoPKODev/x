#include "StdAfx.h"
#include "KopDownload.h"

CKopDownload::CKopDownload(CWnd* pMainWnd, LPCTSTR lpszCfgFile)
    : CFtpClient("kopdownload"), m_ServerList(), m_ServerListN()
{
    m_pMainWnd = pMainWnd;

    m_strCfgFile = lpszCfgFile;
    m_strLoginUser = "kop";
    m_strLoginPwd = "kop_usr";
    m_strRunApp = "";
    m_bSkipUpdate = FALSE;

    LoadConfig();
    g_KopData.SetRunApp(m_strRunApp);
    PostMessage(WM_KOPUPDATEWEB);

    srand(GetTickCount());

    std::vector<CString>* pServerList = NULL;
    if (g_KopData.IsTelecom())
    {
        pServerList = &m_ServerList;
    }
    else if (g_KopData.IsNetcom())
    {
        pServerList = &m_ServerListN;
    }

    int nServerCnt = pServerList->size();
    if (nServerCnt == 0)
    {
        g_KopData.SetTips("请点击 \"选择更新点\" 按钮更换网络接入!");
        PostMessage(WM_KOPTIPS);
        throw std::bad_exception("此区自动更新服务尚未开放，请点击 \"选择更新点\" 按钮更换网络接入!\n");
    }

    int nRand = int(rand() % nServerCnt);
    SetFtpServer((*pServerList)[nRand]);
    SetFtpUser(m_strLoginUser);
    SetFtpPwd(m_strLoginPwd);

    MakeFileWritable("_TempData");
}

CKopDownload::~CKopDownload()
{
}

int CKopDownload::OnGetFileBegin(LPCTSTR lpszRemoteFile)
{
    g_KopData.SetCurrentFile(lpszRemoteFile);
    PostMessage(WM_KOPFILENAME);
    return 0;
}

int CKopDownload::OnGetFileRecv(LPCTSTR lpszRemoteFile, ULONG ulRecvSize, DWORD dwIncTick)
{
    g_KopData.AddSizeAndTick(ulRecvSize, dwIncTick);
    PostMessage(WM_KOPPROGRESSBAR);
    PostMessage(WM_KOPSPEED);
    return 0;
}

int CKopDownload::OnGetFileSuccess(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile)
{
    g_KopData.AddRecvFileCount();
    PostMessage(WM_KOPFILEPERCENT);
    return 0;
}

int CKopDownload::OnGetFileNotFound(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile)
{
    TRACE1("%s not found!\n", lpszRemoteFile);
    return 0;
}

int CKopDownload::OnGetFileFailed(LPCTSTR lpszRemoteFile, ULONG ulRecvSize)
{
    g_KopData.DecRecvSize(ulRecvSize);
    TRACE1("%s get failed!\n", lpszRemoteFile);
    return 0;
}

BOOL CKopDownload::PostQuitMessage()
{
    return PostMessage(WM_KOPUPDATEQUIT);
}

BOOL CKopDownload::PostMessage(UINT uMsg, WPARAM wParam /* = 0 */, LPARAM lParam /* = 0 */)
{
    return (m_pMainWnd != NULL) ?
        m_pMainWnd->PostMessage(uMsg, wParam, lParam) : FALSE;
}

void CKopDownload::ThrowFtpException(int nCode)
{
    CFtpException* pEx = new CFtpException(nCode);
    throw pEx;
}

void CKopDownload::LoadConfig()
{
    char szLine[1024];
    CString strLine;

    std::ifstream ifs(m_strCfgFile.GetBuffer());
    if (ifs.is_open() == 0)
    {
        throw std::logic_error("无法读取配置文件!");
    }

    CString strKey, strValue;
    int nLine = 0;
    while (!ifs.eof())
    {
        ifs.getline(szLine, 1024);
        nLine ++;
        strLine = szLine;

        // 去除前后的无用字符
        strLine.Trim("\r\n ");

        // 是否空行
        if (strLine.GetLength() == 0)
            continue;

        // 判断是否是注释
        if (strLine.Left(2) == "//")
            continue;

        // 根据'='切分
        int nPos = strLine.Find('=');
        if (nPos == -1)
            continue; // 不是：key = value 格式

        strKey = strLine.Left(nPos ++);
        strValue = strLine.Right(strLine.GetLength() - nPos);

        strKey.Trim(' ');
        strValue.Trim(' ');

        OnLoadConfig(strKey, strValue);
    }

    ifs.close();
}

void CKopDownload::OnLoadConfig(CString strKey, CString strValue)
{
    if (strKey == "server_ip")
    {
        // 中国电信
        m_ServerList.push_back(strValue);
    }
    else if (strKey == "server_ipn")
    {
        // 中国网通
        m_ServerListN.push_back(strValue);
    }
    else if (strKey == "run")
    {
        m_strRunApp = strValue;
    }
    else if (strKey == "skip_update")
    {
        m_bSkipUpdate = (BOOL)atoi((LPCTSTR)strValue);
    }
    else if (strKey == "web_addr")
    {
        g_KopData.SetWebURL(strValue);
    }
	else if (strKey == "news_addr")
	{
		g_KopData.SetNewsURL(strValue);
	}
	else if (strKey == "regs_addr")
	{
		g_KopData.SetRegsURL(strValue);
	}
	else if (strKey == "chrg_addr")
	{
		g_KopData.SetChrgURL(strValue);
	}
}

void CKopDownload::ChangeServer()
{
	std::vector<CString>* pServerList = NULL;
	if (g_KopData.IsTelecom())
	{
		pServerList = &m_ServerList;
	}
	else if (g_KopData.IsNetcom())
	{
		pServerList = &m_ServerListN;
	}
	int nServerCnt = pServerList->size();
	if (nServerCnt == 0) return;

	int nRand = int(rand() % nServerCnt);
	SetFtpServer((*pServerList)[nRand]);
}

BOOL CKopDownload::IsUpdateNeed()
{
    // 装载本地的 ver.rec 和 VerInfo.rec 文件
    CString strVerRec, strVerInfoRec;
    BOOL bVerRec = LoadVerString("ver.rec", strVerRec);
    BOOL bVerInfoRec = LoadVerString("VerInfo.rec", strVerInfoRec);
    m_FileVerMgr.LoadFileVersionInfo("VerInfo.rec");

    // 下载服务器上的 ver 文件并装载
    g_KopData.SetTips("正在连接更新服务器...");
    PostMessage(WM_KOPTIPS);

    CString strVer;

	//使用重连3次的方式替代原来只连接一次的方式，并允许玩家进入游戏 Arcol 2005-12-7
	bool bRet=false;
	for (int i=0; i < 3; i++)
	{
		if (Get("run_dest/ver", "_TempData") == GET_SUCCESS)
		{
			bRet=true;
			break;
		}
		Sleep(1000);
		ChangeServer();
	}
	if (!bRet)
	{
		g_KopData.SetTips("连接更新服务器失败!");
		PostMessage(WM_KOPTIPS);
		m_pMainWnd->MessageBox("无法从服务器得到版本信息，若要检查游戏更新，请重新启动程序!");
		return FALSE;
	}


    //if (Get("run_dest/ver", "_TempData") != GET_SUCCESS)
    //{
    //    m_pMainWnd->MessageBox("无法从服务器得到版本信息，请稍后重试!");
    //    ExitProcess(2);
    //}


    RestoreFile("_TempData", "ver");
    LoadVerString("ver", strVer);

    g_KopData.SetTips("正在获取最新的版本信息...");
    PostMessage(WM_KOPTIPS);

    // 根据本地版本信息判断下一步行为
    if (bVerRec && (strVerRec == strVer))
    {
        DeleteFile("ver");
        DeleteFile("VerComp.dat");
        return FALSE;
    }

    // 需要下载 VerComp.dat 文件并装载

	g_KopData.SetTips("发现新的版本,正在获取更新内容...");
	PostMessage(WM_KOPTIPS);
	bRet=false;
	for (int i=0; i < 3; i++)
	{
		if (Get("run_dest/VerComp.dat", "_TempData") == GET_SUCCESS)
		{
			bRet=true;
			break;
		}
		Sleep(1000);
	}

	if (!bRet)
	{
		m_pMainWnd->MessageBox("发现新的版本,但无法从服务器获得更新内容，请稍后重试!");
		ExitProcess(3);
	}
	
	//if (Get("run_dest/VerComp.dat", "_TempData") != GET_SUCCESS)
 //   {
 //       m_pMainWnd->MessageBox("无法从服务器得到详细版本信息，请稍后重试!");
 //       ExitProcess(3);
 //   }


    RestoreFile("_TempData", "VerComp.dat");

    g_KopData.SetTips("正在比对版本信息...");
    PostMessage(WM_KOPTIPS);
    m_FileVerMgr.GenerateUpdateList("VerComp.dat", &m_UpdateList, &m_nUpdateTotalSize);
    m_nUpdateTotalCount = int(m_UpdateList.size());

    if (m_nUpdateTotalCount == 0)
    {
        CopyFile("ver", "ver.rec", TRUE);
        DeleteFile("ver");
        DeleteFile("VerComp.dat");
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}

BOOL CKopDownload::IsUpdateReady()
{
    CString strMsg;
    char* pPostfix = "B";

    // 得到当前工作目录
    char szRunPath[MAX_PATH + 1];
    GetCurrentDirectory(MAX_PATH, szRunPath);

    // 得到磁盘空间
    ULARGE_INTEGER dir_free;
    ULARGE_INTEGER disk_full;
    ULARGE_INTEGER disk_free;
    if (!GetDiskFreeSpaceEx(szRunPath, &dir_free, &disk_full, &disk_free))
        return FALSE;

    ULONGLONG llReqSize = 2 * m_nUpdateTotalSize;
    if (dir_free.QuadPart <= llReqSize)
    {
        if (llReqSize > 1024) {llReqSize /= 1024; pPostfix = "KB";}
        if (llReqSize > 1024) {llReqSize /= 1024; pPostfix = "MB";}

        strMsg.Format("需要 %d%s 的空闲空间，请先清理磁盘再运行本程序！",
                      int(llReqSize), pPostfix);
        m_pMainWnd->MessageBox(strMsg);
        ExitProcess(3);
    }

    return TRUE;
}

BOOL CKopDownload::LoadVerString(LPCTSTR lpszFileName, CString& strVerString)
{
    TCHAR szLine[64] = {0};
    std::ifstream isf(lpszFileName);

    if (isf.is_open() == FALSE) return FALSE;
    isf.getline(szLine, 64);
    isf.close();
    strVerString = szLine;
    return TRUE;
}

BOOL CKopDownload::Update()
{
    BOOL bRet;
    int nResult;
    CString strLocalDir;
    LPCTSTR lpszTempFile = "_TempData";
    CString strRemoteFile;
    int nRetry = 0;

    // 更新开始
    bRet = TRUE;
    OnUpdateBegin();

    for (int i = 0; i < m_nUpdateTotalCount;)
    {
        // 建立目录
        CString strName = m_UpdateList[i].szID;
        int nPos = strName.ReverseFind('/');
        if (nPos != -1)
        {
            strLocalDir = strName.Left(nPos);
            Util_MakeDir((LPCTSTR)strLocalDir);
        }

        // 下载文件
        strRemoteFile = "run_dest/";
        strRemoteFile += m_UpdateList[i].szID;

        nResult = Get(strRemoteFile, lpszTempFile);
        if (nResult == GET_SUCCESS)
        {
            if (RestoreFile(lpszTempFile, m_UpdateList[i].szID))
            {
                SFILE_INFO* pInfo = &(m_UpdateList[i]);
                m_FileVerMgr.UpdateFileVersion(pInfo, TRUE);

                // 跳到下一个文件
                nRetry = 0;
                ++ i;
            }
            else
            {
                if (nRetry >= GET_RETRYCOUNT)
                {
                    bRet = FALSE;
                    m_pMainWnd->MessageBox("还原文件出现错误，请稍后再试!");
                    ExitProcess(2);
                }

                // 继续尝试下载本文件
                g_KopData.DecRecvFileCount();
                g_KopData.DecRecvSize(m_UpdateList[i].dwSize);

                ++ nRetry;
                Sleep(1000);
                continue;
            }
        }
        else if (nResult == GET_NOTFOUND)
        {
            g_KopData.AddRecvFileCount();
            g_KopData.AddRecvSize(m_UpdateList[i].dwSize);
            PostMessage(WM_KOPFILEPERCENT);
            PostMessage(WM_KOPPROGRESSBAR);

            // 跳到下一个文件，并记录缺少文件
            g_KopData.SetLap();
            nRetry = 0;
            ++ i;
        }
        else if (nResult == GET_GETFAIL)
        {
            if (nRetry >= GET_RETRYCOUNT)
            {
                bRet = FALSE;
                m_pMainWnd->MessageBox("下载文件出现超时，可能是网络忙，请稍后再试!");
                ExitProcess(2);
            }

            // 继续尝试下载本文件
            ++ nRetry;
            Sleep(1000);
            continue;
        }
        else if (nResult == GET_CONNFAIL)
        {
            if (nRetry >= GET_RETRYCOUNT)
            {
                bRet = FALSE;
                m_pMainWnd->MessageBox("无法连接服务器，可能是网络中断，请稍后再试!");
                ExitProcess(2);
            }

            // 继续尝试下载本文件
            ++ nRetry;
            Sleep(1000);
            continue;
        }
        else if (nResult == GET_FINDFAIL)
        {
            if (nRetry >= GET_RETRYCOUNT)
            {
                bRet = FALSE;
                m_pMainWnd->MessageBox("查询文件出现超时，可能是网络忙，请稍后再试!");
                ExitProcess(2);
            }

            // 继续尝试下载本文件
            ++ nRetry;
            Sleep(1000);
            continue;
        }
    }

    // 更新结束
    OnUpdateEnd();
    return bRet;
}

void CKopDownload::MakeFileWritable(LPCTSTR lpszFile)
{
    DWORD dwAttr = GetFileAttributes(lpszFile);
    if ((dwAttr & FILE_ATTRIBUTE_READONLY) ||
        (dwAttr & FILE_ATTRIBUTE_SYSTEM) ||
        (dwAttr & FILE_ATTRIBUTE_HIDDEN))
    {
        SetFileAttributes(lpszFile,
            FILE_ATTRIBUTE_ARCHIVE | FILE_ATTRIBUTE_NORMAL);
    }
}

BOOL CKopDownload::RestoreFile(LPCTSTR lpszTempFile, LPCTSTR lpszOriginalFile)
{
    try
    {
        MakeFileWritable(lpszOriginalFile);
        UncompressFile(lpszTempFile, lpszOriginalFile);
    }
    catch (...)
    {
        //m_pMainWnd->MessageBox("恢复文件时出现严重错误，程序将退出!");
        //ExitProcess(4);
        return FALSE;
    }

    return TRUE;
}

int CKopDownload::OnUpdateBegin()
{
    TRACE1("Update Begin, File Count=%d\n", m_nUpdateTotalCount);
    g_KopData.SetTotalSize(m_nUpdateTotalSize);
    g_KopData.SetTotalFileCount(m_nUpdateTotalCount);
    g_KopData.SetTips("更新进行中...");
    TRACE2("RecvSize=%dB, TotalSize=%dB\n",
           g_KopData.GetRecvSize(), g_KopData.GetTotalSize());

    PostMessage(WM_KOPUPDATEBEGIN);
    PostMessage(WM_KOPTIPS);
    PostMessage(WM_KOPFILENAME);
    PostMessage(WM_KOPSPEED);
    PostMessage(WM_KOPFILEPERCENT);
    PostMessage(WM_KOPPROGRESSBAR);
    return 0;
}

int CKopDownload::OnUpdateEnd()
{
    TRACE0("Update End!\n");
    TRACE2("RecvSize=%dB, TotalSize=%dB\n",
           g_KopData.GetRecvSize(), g_KopData.GetTotalSize());
    g_KopData.SetTips("更新结束!");

    if (g_KopData.GetLap())
    {
        DeleteFile("ver.rec");
    }
    else
    {
        CopyFile("ver", "ver.rec", FALSE);
    }

    DeleteFile("ver");
    DeleteFile("VerComp.dat");
    DeleteFile("_TempData");

    PostMessage(WM_KOPTIPS);
    PostMessage(WM_KOPUPDATEEND);
    return 0;
}


// 全局变量
CKopData g_KopData;