// Ftpupd.cpp : 定义应用程序的类行为。
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "SelectISP.h"
#include "FtpupdDlg.h"
#include "KopDownload.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CFtpupdApp

BEGIN_MESSAGE_MAP(CFtpupdApp, CWinApp)
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()


// CFtpupdApp 构造

CFtpupdApp::CFtpupdApp()
{
	// TODO: 在此处添加构造代码，
	// 将所有重要的初始化放置在 InitInstance 中
}


// 唯一的一个 CFtpupdApp 对象

CFtpupdApp theApp;


// CFtpupdApp 初始化

BOOL CFtpupdApp::InitInstance()
{
    BOOL bUpdateSelf = FALSE;

#ifndef _DEBUG  // 保证Release版本一定进行自我复制
    bUpdateSelf = TRUE;
#endif

    if (bUpdateSelf)
    {
        int pid = Fork();
        if (pid == 0) return FALSE;
    }

	// 如果一个运行在 Windows XP 上的应用程序清单指定要
	// 使用 ComCtl32.dll 版本 6 或更高版本来启用可视化方式，
	//则需要 InitCommonControls()。否则，将无法创建窗口。
	InitCommonControls();

	CWinApp::InitInstance();

	if (!AfxSocketInit())
	{
		AfxMessageBox(IDP_SOCKETS_INIT_FAILED);
		return FALSE;
	}

	AfxEnableControlContainer();

	// 标准初始化
	// 如果未使用这些功能并希望减小
	// 最终可执行文件的大小，则应移除下列
	// 不需要的特定初始化例程
	// 更改用于存储设置的注册表项
	// TODO: 应适当修改该字符串，
	// 例如修改为公司或组织名
	//SetRegistryKey(_T("应用程序向导生成的本地应用程序"));

    g_KopData.LoadISP();
    if (g_KopData.IsFirstRun())
    {
        CSelectISP sel;
        INT_PTR nResponse = sel.DoModal();
        if (nResponse == IDCANCEL)
            return FALSE;
    }

	CFtpupdDlg dlg;
	m_pMainWnd = &dlg;
	INT_PTR nResponse = dlg.DoModal();
	if (nResponse == IDOK)
	{
		// TODO: 在此放置处理何时用“确定”来关闭
		//对话框的代码
	}
	else if (nResponse == IDCANCEL)
	{
		// TODO: 在此放置处理何时用“取消”来关闭
		//对话框的代码
	}

	// 由于对话框已关闭，所以将返回 FALSE 以便退出应用程序，
	// 而不是启动应用程序的消息泵。
	return FALSE;
}

int CFtpupdApp::Fork()
{
    TCHAR szRunPath[MAX_PATH + 1];
    CString strRunName = AfxGetAppName();
    TCHAR szOriginName[] = "kop";
    TCHAR szCloneName[] = "kop_d.exe";
    CString strRun = szCloneName;

    GetCurrentDirectory(MAX_PATH, szRunPath);
    if (stricmp(strRunName, szOriginName) == 0)
    {
        // 检查副本是否已存在于文件系统中
        if (access(szCloneName , 0) != -1)
        {
            // 去掉只读、系统、隐藏属性
            DWORD dwAttr = GetFileAttributes(szCloneName);
            if ((dwAttr & FILE_ATTRIBUTE_READONLY) ||
                (dwAttr & FILE_ATTRIBUTE_SYSTEM) ||
                (dwAttr & FILE_ATTRIBUTE_HIDDEN))
            {
                SetFileAttributes(szCloneName,
                    FILE_ATTRIBUTE_ARCHIVE | FILE_ATTRIBUTE_NORMAL);
            }
        }

        // 克隆副本 
        TCHAR szOriginWithExt[MAX_PATH];
        sprintf(szOriginWithExt, "%s.exe", szOriginName);
        if (!CopyFile(szOriginWithExt, szCloneName, FALSE))
        {
            AfxMessageBox("自动更新程序已启动！");
            DWORD dwErr = GetLastError();
            return 0;
        }

        // 启动副本
        PROCESS_INFORMATION pi;
        STARTUPINFO si;
        GetStartupInfo(&si);
        //if (CreateProcess(NULL, (LPSTR)(LPCSTR)strRun, NULL, NULL, FALSE, 0, NULL, szRunPath, &si, &pi))
        if (CreateProcess((LPSTR)(LPCSTR)strRun, NULL, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, szRunPath, &si, &pi))
        {
            CloseHandle(pi.hProcess);
        }

        return 0;
    }
    else
    {
        // 子进程等待父进程退出，然后执行更新任务
        Sleep(1000);
        return 1;
    }
}