// Ftpupd.cpp : 定义应用程序的类行为。
//

#include "stdafx.h"

#include "Ftpupd.h"
#include "FtpupdDlg.h"
#include "KopDownload.h"
#include <NMCrypt.h>


#ifdef _DEBUG
#define new DEBUG_NEW
#endif


#pragma comment(lib, "NMCrypt.lib")


////////////////////////////////////////////////////////////////////////
extern int g_cooperate;    //  商家合作编号
extern CString strRunArgv;     //  启动参数
////////////////////////////////////////////////////////////////////////
extern CString strHomepage;    //  官网主页
extern CString strRegister;    //  注册
extern CString strNews;        //  新闻
extern CString strActivity;    //  活动
extern CString strUpdate;      //  版本更新
extern CString strAd;          //  广告
////////////////////////////////////////////////////////////////////////
#define SINA_NO_ERROR           1000
#define SINA_ERR_UNKNOWN		1001
#define SINA_ERR_NO_USER		1002
#define SINA_ERR_WRONG_PWD	    1003
#define SINA_ERR_BANNED		    1004
#define SINA_ERR_TIMEOUT		1005
#define SINA_ERR_BAD_CAS_MSG	1006
///////////////////////////////////////////////////////////////////////
extern int iBanner; //  页脚广告

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
    HINSTANCE hRtn = ::ShellExecute(NULL, "open", "launcher.exe", NULL, ".", SW_HIDE);

    //  设置工作目录
    char tmpbuf[260] = {0};
    GetModuleFileName(0, tmpbuf, 260);
    int tmplen = strlen(tmpbuf);
    while('\\' != tmpbuf[tmplen])
    {
        --tmplen;
        if(tmplen <= 0)
        {
            break;
        }
    }
    tmpbuf[tmplen] = '\0';
    SetCurrentDirectory(tmpbuf);
    GetCurrentDirectory(260, tmpbuf);

    BOOL bUpdateSelf = FALSE;


#ifndef _DEBUG  // 保证Release版本一定进行自我复制
    bUpdateSelf = TRUE;
#endif


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


    ////////////////////////////////////////
    //
    //  By Jampe
    //  联众合作启动参数修改
    //  2006/5/18
    //
    strRunArgv = GetCommandLine();
    int pos = strRunArgv.Find('\"', 1);
    strRunArgv = strRunArgv.Mid((pos + 1), (strRunArgv.GetLength() - pos));
    strRunArgv.Trim();
    int nCopPos = (int)strRunArgv.Find("/login:");
    //  /login:商家代号&区号/服务器号&用户名&密码
    if(-1 != nCopPos)
    {
        //  正常合作
        string strCop = strRunArgv.Mid(nCopPos + 7);
        string tmp[1];
        Util_ResolveTextLine(strCop.c_str(), tmp, 1, '&');
        g_cooperate = atol(tmp[0].c_str());
    }
    else if((strRunArgv.GetLength() > 0) && (strRunArgv.GetLength() < 4096))
    {
        //  sina特殊合作模式
        char key[1024] = {0};
        char buf[4096] = {0};
        if(GetCryptKey(key, 1024-1, true))
        {
            if(CRYPT_SUCCESS == DecryptString(strRunArgv.GetBuffer(), key, buf))
            {
                std::string tmp[5];
                Util_ResolveTextLine(buf, tmp, 5, ',');

                try
                {
                    CSocket sina_sock;
                    sina_sock.Create();

                    //  设置超时3秒
                    int timeout = 3000;
                    sina_sock.SetSockOpt(SO_RCVTIMEO, &timeout, sizeof(timeout));
                    sina_sock.SetSockOpt(SO_SNDTIMEO, &timeout, sizeof(timeout));

                    if(sina_sock.Connect(tmp[0].c_str(), atoi(tmp[1].c_str())))
                    {
                        std::string snd = "login&";
                        snd += tmp[2];
                        snd += "&";
                        snd += tmp[3];
                        snd += "&";
                        snd += tmp[4];
                        snd += "\r\n";

                        if(sina_sock.Send(snd.c_str(), snd.length()))
                        {
                            memset(buf, 0, 4096);
                            if(sina_sock.Receive(buf, 4096))
                            {
                                char msgID[5] = {0};
                                strncpy(msgID, buf, 4);
                                int ret = atoi(msgID);

                                switch(ret)
                                {
                                case SINA_NO_ERROR:
                                    {
                                        g_cooperate = COP_SINA;
                                        char* ptr = buf + 4;
                                        strRunArgv = ptr;
                                    }  break;
                                case SINA_ERR_UNKNOWN:
                                    {
                                        MessageBox(0, "请求不符合格式，请稍候再试！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_NO_USER:
                                    {
                                        MessageBox(0, "查无此帐号，请稍候再试！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_WRONG_PWD:
                                    {
                                        MessageBox(0, "登录密码错误，请重新登录！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_BANNED:
                                    {
                                        MessageBox(0, "帐号已被封停，请稍候再试！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_TIMEOUT:
                                    {
                                        MessageBox(0, "服务器响应超时，请稍候再试！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                case SINA_ERR_BAD_CAS_MSG:
                                    {
                                        MessageBox(0, "CAS返回错误，请稍候再试！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                default:
                                    {
                                        MessageBox(0, "未知错误，请稍候再试！", "关闭客户端", MB_OK);
                                        ::ExitProcess(0);
                                    }  break;
                                }

                                sina_sock.Close();
                            }
                            else
                            {
                                MessageBox(0, "接收数据失败，请稍候再试！", "关闭客户端", MB_OK);
                                ::ExitProcess(0);
                            }
                        }
                        else
                        {
                            MessageBox(0, "发送数据失败，请稍候再试！", "关闭客户端", MB_OK);
                            ::ExitProcess(0);
                        }
                    }
                    else
                    {
                        MessageBox(0, "连接服务器失败，请稍候再试！", "关闭客户端", MB_OK);
                        ::ExitProcess(0);
                    }
                }
                catch(...)
                {
                    MessageBox(0, "Exception", "", MB_OK);
                    ::ExitProcess(0);
                }
            }
        }
    }
    ////////////////////////////////////////
    switch(g_cooperate)
    {
    case COP_OURGAME:
        {
			strHomepage = "http://kop.ourgame.com/";
            strRegister = "http://register.ourgame.com/regist/index.asp?from=MMOG6000";
            strNews = "http://xhdw.moliyo.com/_1250/_1252";
            strActivity = "http://xhdw.moliyo.com/_1250/_1254";
			strUpdate = "http://xhdw.moliyo.com/_1250/_1255";
            strAd = "http://xhdw.moliyo.com/_1250/_1251";
            iBanner = IDB_DETAIL_OG;
        }  break;
    case COP_SINA:
        {
            strHomepage = "http://hdw.igame.sina.com.cn";
            strRegister = "http://igame.sina.com.cn/member/register/regist2.asp";
            strNews = "http://igame.sina.com.cn/game/hdw/client2.asp";
            strActivity = "http://igame.sina.com.cn/game/hdw/client3.asp";
			strUpdate = "http://www.hdwonline.com/update/update.aspx";//需要更新为新浪的页面
            strAd = "http://igame.sina.com.cn/game/hdw/client1.asp";
            iBanner = IDB_DETAIL_SINA;
        }  break;
    case COP_CGA:
        {
            strHomepage = "http://hdw.cga.com.cn";
            strRegister = "http://register.sdo.com/inputinfo.asp?from=7";
            strNews = "http://hdw.cga.com.cn/qd/2.html";
            strActivity = "http://hdw.cga.com.cn/qd/3.html";
			strUpdate = "http://hdw.cga.com.cn/qd/4.html";
            strAd = "http://hdw.cga.com.cn/qd/1.html";
            iBanner = IDB_DETAIL_CGA;
        }  break;
    default:
        {
		    //strHomepage = "http://www.hdwonline.com";
            strHomepage = "http://xhdw.moliyo.com/";
            //strRegister = "http://www.moliyo.com/user/register.aspx";
			strRegister = "https://passport.moliyo.com/register.aspx";
            strNews = "http://xhdw.moliyo.com/_1212/_1214";
            strActivity = "http://xhdw.moliyo.com/_1212/_1218";
			strUpdate = "http://xhdw.moliyo.com/_1212/_1216";
            strAd = "http://xhdw.moliyo.com/_1212/_1213";
					
        }  break;
    }
    ////////////////////////////////////////


    if (bUpdateSelf)
    {
        int pid = Fork();
        if (pid == 0) return FALSE;
    }

    //  外挂统计    by Jampe
    //if(0 == access("system/coredrv32.dll", 0x00))
    //{
    //    char syspath[260] = {0};
    //    char dllpath[260] = {0};

    //    GetSystemDirectory(syspath, 260);
    //    getcwd(dllpath, 260);

    //    strcat(syspath, "\\coredrv32.dll");
    //    strcat(dllpath, "\\system\\coredrv32.dll");
    //    MoveFile(dllpath, syspath);
    //    WinExec("regsvr32 /s coredrv32.dll", SW_HIDE);
    //}

    //char syspath[260] = {0};
    //GetSystemDirectory(syspath, 260);
    //strcat(syspath, "\\coredrv32.dll");

    //if(0 == access(syspath, 0x00))
    //{
    //    WinExec("regsvr32 /u /s coredrv32.dll", SW_HIDE);
    //    remove(syspath);
    //}



	// 标准初始化
	// 如果未使用这些功能并希望减小
	// 最终可执行文件的大小，则应移除下列
	// 不需要的特定初始化例程
	// 更改用于存储设置的注册表项
	// TODO: 应适当修改该字符串，
	// 例如修改为公司或组织名
	//SetRegistryKey(_T("应用程序向导生成的本地应用程序"));

    g_KopData.LoadISP();


   /* if (g_KopData.IsFirstRun())
    {
        CSelectISP sel;
        INT_PTR nResponse = sel.DoModal();
        if (nResponse == IDCANCEL)
            return FALSE;
    }*/

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
        if (CreateProcess((LPSTR)(LPCSTR)strRun, (LPSTR)(LPCSTR)strRunArgv, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, szRunPath, &si, &pi))
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