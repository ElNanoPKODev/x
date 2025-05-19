//------------------------------------------------------------------------
//	2005.3.25	Arcol	设置字符集为中国大陆区域
//------------------------------------------------------------------------


// MPTest.cpp : Defines the entry point for the application.
//
#include "stdafx.h"

#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
//#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <Wingdi.h>

#include "Main.h"
#include "GameApp.h"
#include "SceneObjFile.h"
#include "UIImeinput.h"
#include "GameConfig.h"
#include "PacketCmd.h"
#include "UIsystemform.h"
#include "EffectObj.h"
#include "Lua_Platform.h"
#include "packfile.h"
#include "loginscene.h"
#include "d3des.h"
#include "Character.h"
#include "gameloading.h"

#include "ErrorHandler.h"

#include "UdpClient.h"
using namespace client_udp;

string g_serverset;

#define MAX_LOADSTRING 100
 
// Global Variables:
HINSTANCE hInst;								// current instance
TCHAR szTitle[MAX_LOADSTRING];					// The title bar text
TCHAR szWindowClass[MAX_LOADSTRING];			// the main window class name
 
// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass(HINSTANCE hInstance, HBRUSH brush);
HWND				InitInstance(HINSTANCE, int);
LRESULT CALLBACK	WndProc(HWND, UINT, WPARAM, LPARAM);

HBRUSH	g_bk_brush;

void StdoutRedirect(); 
int InstallFont(const char* pszPath); // 字体安装
void CenterWindow(HWND hWnd); //窗口位置设置


BOOL CheckDxVersion(DWORD &ver) // 版本核对
{
    BOOL ret = 1;
    MPISystemInfo* sys_info = 0;

    MPGUIDCreateObject((LW_VOID**)&sys_info, LW_GUID_SYSTEMINFO);
    if(SUCCEEDED(sys_info->CheckDirectXVersion())) // 查看版本 
    {
		ver = sys_info->GetDirectXVersion();

        if(ver < DX_VERSION_8_1) //判断版本是否正确
        {
            ret = 0;
        }

    }
    sys_info->Release();

    return ret;
}

bool	g_IsAutoUpdate = false;				// 检测要自动更新时，要等待程序退出时才能自动更新
long	g_nCurrentLogNo = 0;


////////////////////////////////////////
//
//  By Jampe
//  合作商解密过程
//  2006/5/22
//
const unsigned char key[] = {0xda, 0x15, 0x1c, 0x10, 0x4f, 0x8c, 0x7a, 0x4a};

//////////////////////////////////////////////////////////////////////

DWORD WINAPI LoadRes(LPVOID lpvThreadParam) // 读资源
{
	g_bLoadRes = 1;

	return 0;
}

HINSTANCE g_hInstance;

int APIENTRY _tWinMain(HINSTANCE hInstance,
                     HINSTANCE hPrevInstance,
                     LPTSTR    lpCmdLine,
                     int       nCmdShow)
{
	// Add by lark.li 20080909 begin
	ErrorHandler::Initialize();
	ErrorHandler::DisableErrorDialogs();
	// End

	DWORD dx_ver = DX_VERSION_X_X;

T_B

	LG("init", "Define __CATCH\n");
	SEHTranslator translator;
	string strParam = lpCmdLine;
	
	if(strParam.find("editor")!=-1) // 启动游戏编辑器
    {
        g_Config.m_bEditor = TRUE;
		g_Config.m_IsShowConsole = true;
    }
    else
    {
        g_Config.m_bEditor      = FALSE;
        g_Config.m_nCreateScene = 0;
    }

    g_hInstance = hInstance;

     //设置玩家的自定义屏幕设置
    if ( !g_stUISystem.m_isLoad)
    {
        g_stUISystem.LoadCustomProp();  //读取系统配置并应用 
    }

	// Add by lark.li 20080730 begin
	//pi_Memory m("memorymonitor.log");
	//m.startMonitor(1);
	// End
/*	yangyinyu	2008-10-14	close!
	//  显示loading界面
	GameLoading::Init(strParam)->Create();
*/
	::_setmaxstdio( 2048 ); //   设置最大打开文件数

	//setlocale(LC_CTYPE, g_oLangRec.GetString(0)); // 改从字符串资源文件里读取  Add by Philip.Wu  2006-07-19  
	setlocale(LC_CTYPE, RES_STRING(CL_LANGUAGE_MATCH_0)); // 改从字符串资源文件里读取  Add by Philip.Wu  2006-07-19  

	InstallFont(".\\Font");	// 自动安装字体 Add by Philip.Wu  2006-08-07

	if(CheckDxVersion(dx_ver) == 0) 
    {
        MessageBox(NULL, RES_STRING(CL_LANGUAGE_MATCH_187), "error", MB_OK);
        return 0;
    }

	// 多个客户端使用不同的log文件夹
	HANDLE	hFile = CreateFileMapping(INVALID_HANDLE_VALUE, 0, PAGE_READWRITE, 0, sizeof(long), "KopClinetNO");
	if (!hFile) 
	{
		return 0;
	}

	LGInfo lg_info;
	memset( &lg_info, 0, sizeof(lg_info) );

	if( !g_Config.IsPower() ) // 不是编辑器模式时log关闭
	{
		lg_info.bCloseAll = true;
	}

	long* pClientLogNO = NULL;
	pClientLogNO = (long *)MapViewOfFile(hFile, FILE_MAP_WRITE, 0, 0, 0);
	g_nCurrentLogNo = *pClientLogNO;
	(*pClientLogNO)++;
	if (g_nCurrentLogNo > 0)
	{
		sprintf(lg_info.dir, "%s%d", "log", g_nCurrentLogNo);
	}
	else
	{
		sprintf(lg_info.dir, "%s", "log" );
	}

	lg_info.bEnableAll = g_Config.m_bEnableLG!=0;
	lg_info.bMsgBox = g_Config.m_bEnableLGMsg!=0;
	lg_info.bEraseMode = true;

	// 删除自动更新程序的复本
	char szUpdateFileName[] = "kop_d.exe";
	SetFileAttributes(szUpdateFileName, FILE_ATTRIBUTE_NORMAL); //  设置自动更新复本的属性
  	DeleteFile(szUpdateFileName);

	// for trim obj file
	short i = 1;
	short j = i<<14;
	if (_tcsstr(_tcslwr(lpCmdLine), _TEXT("-objtrim+backup")) != NULL)
	{
		g_ObjFile.TrimDirectory("map", true);
		return 0;
	}
	else if (_tcsstr(_tcslwr(lpCmdLine), _TEXT("-objtrim")) != NULL)
	{
		g_ObjFile.TrimDirectory("map", false);
		return 0;
	}
	
	MSG msg;
	HACCEL hAccelTable;

    HBRUSH brush = CreateSolidBrush(RGB(0, 0, 0));

    // Initialize global strings
	LoadString(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);
	LoadString(hInstance, IDC_KOP, szWindowClass, MAX_LOADSTRING);

	MyRegisterClass(hInstance, brush);// 注册定义的类

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_KOP); // 加载快捷键表 获得表句柄

	if(strParam.find("pack") != -1) 
	{
		char* pszPos = lpCmdLine;
		pszPos += 4;
		while (*pszPos == ' ')
		{
			pszPos++;
		}
		char pszpath[128];
		char pszFile[128];
		sprintf(pszpath,"texture\\minimap\\%s",pszPos);
		sprintf(pszFile,"texture\\minimap\\%s\\%s.pk",pszPos,pszPos);

		CMiniPack pkfile;
		if(pkfile.SaveToPack(pszpath,pszFile))
			LG("ok", RES_STRING(CL_LANGUAGE_MATCH_188),pszPos);
		else
			LG("ok", RES_STRING(CL_LANGUAGE_MATCH_189),pszPos);
		return 0;
	}

    
    if(strParam.find("startgame")==-1) 
	{
		LG("Error", RES_STRING(CL_LANGUAGE_MATCH_190));
		return 0;
	}

//#ifdef KOP_TOM
	int nTomPos = (int)strParam.find("tom:");
	if(nTomPos!=-1) 
	{
		// 解析Tom字符串,依次为:"tom:服务器IP,端口,用户名,密码"
		string strTom = strParam.substr( nTomPos + 4, strParam.length() );
		int nEnd = (int)strTom.length();
		nEnd = (int)strTom.find( " " );
		if( nEnd!=-1 ) strTom = strTom.substr( 0, nEnd );
		
		string strList[4];
		Util_ResolveTextLine( strTom.c_str(), strList, 4, ',' );

		g_TomServer.szServerIP = strList[0];
		g_TomServer.nPort = atoi( strList[1].c_str() );
		g_TomServer.szUser = strList[2];
		g_TomServer.szPassword = strList[3];
		g_TomServer.bEnable=true;
	}
//#endif


    ////////////////////////////////////////
    //
    //  By Jampe
    //  合作商参数处理
    //  2006/5/19
    //
    memset(&g_cooperate, 0, sizeof(g_cooperate));
    int nCopPos = (int)strParam.find("/login:");
    //  /login:商家代号&区号/服务器号&用户名&密码
    if(-1 != nCopPos)
    {
        SetEncKey(key);
        string strCop = strParam.substr(nCopPos + 7, strParam.length());
        string tmp[4];
        Util_ResolveTextLine(strCop.c_str(), tmp, 4, '&');

        g_cooperate.code = atol(tmp[0].c_str());
        g_cooperate.serv = tmp[1];
        g_cooperate.uid = tmp[2];
        unsigned char buff[128] = {0};
        Decrypt(buff, 128, (unsigned char*)tmp[3].c_str(), (int)tmp[3].length());
        g_cooperate.pwd = (char*)buff;
    }
    switch(g_cooperate.code) // 不同合作商对应不同服务器
    {
    case COP_OURGAME:
        {
            g_serverset = "scripts/txt/server2.tx";
        }  break;
    case COP_SINA:
        {
            g_serverset = "scripts/txt/server3.tx";
        }  break;
    case COP_CGA:
        {
            g_serverset = "scripts/txt/server4.tx";
        }  break;
    default:
        {
            g_serverset = "scripts/txt/server.tx";
        }  break;
    }

#ifdef _LUA_GAME
    InitLuaPlatform(); 
#endif
    
    MPTimer t;
    t.Begin();
    g_pGameApp = new CGameApp();
	g_pGameApp->LG_Config( lg_info );

	if(strParam.find("table_bin")!=-1) //如果命令行有table_bin 就生成二进制表
	{
		extern void MakeBinTable();
		MakeBinTable();
		return FALSE;
	}

	int nScreenMode[2][2] = // 屏幕显示方式
    {
        800, 600,
       1024, 768
    };
    
	g_Config.m_bFullScreen = g_stUISystem.m_sysProp.m_videoProp.bFullScreen; 
    int nWidth(0), nHeight(0), nDepth(0);
    if (g_stUISystem.m_sysProp.m_videoProp.bPixel1024)
    {
        nWidth  = 1024;
        nHeight = 768;
    }
    else
    {
        nWidth  = 800;
        nHeight = 600;
    }
    nDepth = g_stUISystem.m_sysProp.m_videoProp.bDepth32 ? 32 : 16;
    
    MPD3DCreateParamAdjustInfo cpai;
    cpai.multi_sample_type = (D3DMULTISAMPLE_TYPE)g_Config.m_dwFullScreenAntialias;

	g_Render.SetD3DCreateParamAdjustInfo(&cpai);

	// g_Render.EnableClearTarget(FALSE);
	g_Render.SetBackgroundColor(D3DCOLOR_XRGB(10, 10, 125));

	if(g_Config.m_bFullScreen)
	{
		nWidth  = GetSystemMetrics(SM_CXSCREEN);
		nHeight = GetSystemMetrics(SM_CYSCREEN);
	}

	if(!g_pGameApp->Init(hInstance, szWindowClass, nWidth, nHeight, nDepth, FALSE /*g_Config.m_bFullScreen*/))
    {
        LG("init", RES_STRING(CL_LANGUAGE_MATCH_191));
        g_pGameApp->End();
        return 0;
    }

	if(g_Config.m_bFullScreen)
	{
		g_pGameApp->ChangeVideoStyle( nWidth ,nHeight ,D3DFMT_D16 ,TRUE );
	}


	//DWORD ThreadID;
 //   HANDLE hThread = ::CreateThread(NULL,0,LoadRes,
 //                             0,0,&ThreadID);

	//g_pGameApp->LoadRes2();

	if( g_Config.m_bEditor ) StdoutRedirect();

	LG("init", "init use time = %d ms\n", t.End());

	// Main message loop:
	ZeroMemory( &msg, sizeof(msg) );
	
	DWORD st_dwtick	   = GetTickCount();
	DWORD st_tickcount = (GetTickCount()-st_dwtick)/unsigned long(g_NetIF->m_framedelay);

	g_NetIF->m_framedelay = 40; // 帧延迟

    //string str( "Micro" );
    //string rstr( "soft" );
    //str.append( rstr, 14, 3 );


	g_pGameApp->Run();

	// Add by lark.li 20080730 begin
	//m.stopMonitor();
	//m.wait();
	// End

	g_pGameApp->End();
    SAFE_DELETE(g_pGameApp);

    ::DeleteObject(brush);

	UnmapViewOfFile(pClientLogNO);
	CloseHandle(hFile);
	GetRegionMgr()->Exit();

	if( g_IsAutoUpdate )  	// 检测要自动更新时 显示原始窗口 调用kop.exe
	{
		::WinExec( "kop.exe", SW_SHOWNORMAL );
	}
	// 自动更新时 异常情况处理
	}
	catch(std::exception& e) 
	{ 
		std::string	strfile;
		LG_GetDir(strfile);
		strfile += "\\exception.txt";

		FILE * fp = fopen(strfile.c_str(),"a+");

		if(fp) 
		{ 
			SYSTEMTIME st;
			char tim[100] = {0};
			GetLocalTime(&st);
			sprintf(tim, "%02d-%02d %02d:%02d:%02d\r\n", st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);
			fwrite(tim,strlen(tim),1,fp);
			fwrite(e.what(),strlen(e.what()) - 1,1,fp); 
			fclose(fp); 
		} 
		WinExec("System/ErrorReport.exe", SW_SHOW);
	}
	catch( ... )
	{
		MessageBox( NULL, RES_STRING(CL_LANGUAGE_MATCH_186), RES_STRING(CL_LANGUAGE_MATCH_185), 0 );
	}

	return 0;
}


//
//  FUNCTION: MyRegisterClass()
//
//  PURPOSE: Registers the window class.
//
//  COMMENTS:
//
//    This function and its usage are only necessary if you want this code
//    to be compatible with Win32 systems prior to the 'RegisterClassEx'
//    function that was added to Windows 95. It is important to call this function
//    so that the application will get 'well formed' small icons associated
//    with it.
//
ATOM MyRegisterClass(HINSTANCE hInstance, HBRUSH brush) 
{
	WNDCLASSEX wcex;

	wcex.cbSize = sizeof(WNDCLASSEX); 

	wcex.style			= CS_HREDRAW | CS_VREDRAW;
	wcex.lpfnWndProc	= (WNDPROC)WndProc;
	wcex.cbClsExtra		= 0;
	wcex.cbWndExtra		= 0;
	wcex.hInstance		= hInstance;
	wcex.hIcon			= LoadIcon(hInstance, (LPCTSTR)IDI_KOP);
	wcex.hCursor		= NULL;
	wcex.hbrBackground	= (HBRUSH)brush;//(HBRUSH)(COLOR_BACKGROUND+1);
	wcex.lpszMenuName	= (LPCTSTR)IDC_KOP;
	wcex.lpszClassName	= szWindowClass;
	wcex.hIconSm		= LoadIcon(wcex.hInstance, (LPCTSTR)IDI_SMALL);

	return RegisterClassEx(&wcex);
}

//
//   FUNCTION: InitInstance(HANDLE, int)
//
//   PURPOSE: Saves instance handle and creates main window
//
//   COMMENTS:
//
//        In this function, we save the instance handle in a global variable and
//        create and display the main program window.
//
HWND InitInstance(HINSTANCE hInstance, int nCmdShow)
{
   HWND hWnd;

   hInst = hInstance; // Store instance handle in our global variable

   hWnd = CreateWindow(szWindowClass, szTitle, WS_OVERLAPPEDWINDOW,
      CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, NULL, NULL, hInstance, NULL);

   if (!hWnd)
   {
      return 0;
   }

   ShowWindow(hWnd, nCmdShow);
   UpdateWindow(hWnd);

   return hWnd;
}

//
//  FUNCTION: WndProc(HWND, unsigned, WORD, LONG)
//
//  PURPOSE:  Processes messages for the main window.
//
//  WM_COMMAND	- process the application menu
//  WM_PAINT	- Paint the main window
//  WM_DESTROY	- post a quit message and return
//
//

extern void __timer_period_render();

static WNDPROC g_wpOrigEditProc = NULL;
// Subclass procedure 
LRESULT APIENTRY EditSubclassProc(
    HWND hwnd, 
    UINT uMsg, 
    WPARAM wParam, 
    LPARAM lParam) 
{
    if (uMsg == WM_GETDLGCODE) 
        return DLGC_WANTALLKEYS; 
 
	switch( uMsg )
	{
	case WM_KEYDOWN:
		if ( wParam==VK_UP || wParam==VK_DOWN )
		{
			WndProc( hwnd, uMsg, wParam, lParam);
			return 0;
		}
	case WM_CHAR:
	case WM_SYSKEYDOWN:
		WndProc( hwnd, uMsg, wParam, lParam);
		break;
	case WM_SYSKEYUP:
		if ( wParam==VK_MENU || wParam==VK_F10 )
		{
			return 0;
		}
		WndProc( hwnd, uMsg, wParam, lParam);
		break;
    //case WM_INPUTLANGCHANGEREQUEST:
    //case WM_INPUTLANGCHANGE:
    //case WM_IME_NOTIFY:
    //case WM_IME_STARTCOMPOSITION:
    //case WM_IME_ENDCOMPOSITION:
    //    {
    //        WndProc( hwnd, uMsg, wParam, lParam);
    //    }
    //    break;
    //case WM_IME_COMPOSITION:
    //case WM_IME_SETCONTEXT:
    //    {
    //        WndProc( hwnd, uMsg, wParam, lParam);
    //        if(g_Config.m_bFullScreen)
    //        {
    //            return 0;
    //        }
    //    }
    //    break;
	}
	return CallWindowProc(g_wpOrigEditProc, hwnd, uMsg, wParam, lParam); 
} 


HWND g_InputEdit = NULL;
#include "inputbox.h"
LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	//switch (message) 
	//{
	//case WM_ACTIVATE:
	//	// Add by lark.li 20080903 begin
	//	if(GameLoading::Init()->Active())
	//		return 0;
	//	// End
	//	
	//	break;
	//case WM_NCACTIVATE:
	//case WM_ACTIVATEAPP: 
	//	// Add by lark.li 20080903 begin
	//	if(GameLoading::Init()->Active())
	//		return 0;
	//	// End

	//	if( g_pGameApp && g_pGameApp->IsInit() )
	//		g_pGameApp->SetInputActive( LOWORD(wParam)!=WA_INACTIVE );
	//	break;
	//}

	if( g_pGameApp ) 
	{
		g_pGameApp->HandleWindowMsg(message, (DWORD)wParam, (DWORD)lParam);
		if( GetRegionMgr()->OnMessage( message, wParam, lParam ) )
			return 0;
	}

	switch (message) 
	{
	case WM_USER_TIMER:
		__timer_period_render();
		return 0;
		break;

	case WM_ACTIVATE:
		// Add by lark.li 20080903 begin
		//if(GameLoading::Init()->Active())
		//	return 0;
		// End
		
		break;
	case WM_NCACTIVATE:
	case WM_ACTIVATEAPP: 
		// Add by lark.li 20080903 begin
		//if(GameLoading::Init()->Active())
		//	return 0;
		// End

		if( g_pGameApp && g_pGameApp->IsInit() )
			g_pGameApp->SetInputActive( LOWORD(wParam)!=WA_INACTIVE );
		break;
	case WM_CREATE:
		{
			CenterWindow(hWnd);

			g_InputEdit = CreateWindow(TEXT("EDIT"),
			TEXT(RES_STRING(CL_LANGUAGE_MATCH_192)),
			WS_CHILD | WS_VISIBLE,
			0,0,
			0,0,
			hWnd,
			(HMENU)IDC_EDIT1,
			((LPCREATESTRUCT) lParam)->hInstance,
			NULL);

            g_wpOrigEditProc = (WNDPROC)(LONG64)SetWindowLong(g_InputEdit, GWL_WNDPROC,(LONG)(LONG64)EditSubclassProc ); 

			extern CInputBox g_InputBox;
			g_InputBox.SetEditWindow(g_InputEdit);

			CImeInput::s_Ime.OnCreate( hWnd, hInst );
		}
		break;
	case WM_KEYDOWN: 
	case WM_CHAR:
		break;
	case WM_LBUTTONDOWN:
	case WM_MOUSEMOVE:
	case WM_RBUTTONDOWN:
	case WM_RBUTTONUP:  
		{
			break;
		}
	case WM_COMMAND:
		{
			int wmId    = LOWORD(wParam); 
			int wmEvent = HIWORD(wParam); 
			// Parse the menu selections: 
			switch (wmId)
			{
			case IDM_EXIT:
				DestroyWindow(hWnd);
				break;
			default:
				return DefWindowProc(hWnd, message, wParam, lParam);
			}
		}
		break;
	case WM_PAINT: 
		break;
	case WM_CLOSE:  
		//{
		//	if( g_Config.m_bEditor )
		//		break;

		//	if( !g_NetIF->IsConnected() )
		//		break;

		//	if( !dynamic_cast<CWorldScene*>( CGameApp::GetCurScene() ) ) 
		//		break;

		//	CForm* f = CFormMgr::s_Mgr.Find( "frmAskExit" );
		//	if( f )  	
		//	{
		//		long lState = GetWindowLong(hWnd, GWL_STYLE);
		//		if( lState & WS_MINIMIZE )
		//		{
		//			ShowWindow(hWnd, SW_SHOWNORMAL);
		//		}

		//		f->SetIsShow(true);
		//		g_stUISystem.GetSystemForm()->SetIsShow(false);
		//		return 0;
		//	}
		//}
		break;
	case WM_QUIT: 
		break;
	case WM_DESTROY: 
		{
			CS_Logout();
			CS_Disconnect( DS_DISCONN );

            SetWindowLong(g_InputEdit, GWL_WNDPROC, (LONG)(LONG64)g_wpOrigEditProc); 

			PostQuitMessage(0);
			if( g_pGameApp ) g_pGameApp->SetIsRun( false );
			break; 
		}
	case WM_MUSICEND: // 音乐播放系统
		{
			if( g_pGameApp ) g_pGameApp->PlayMusic(0);
			break;
		}
	case WM_SYSKEYUP:
		if (wParam==VK_MENU || wParam==VK_F10)
		{
			return 0;
		}
    //case WM_IME_STARTCOMPOSITION:
    //case WM_IME_ENDCOMPOSITION:
    //case WM_IME_NOTIFY:
    //case WM_IME_COMPOSITION:
    //case WM_IME_SETCONTEXT:
    //case WM_INPUTLANGCHANGEREQUEST:
    //case WM_INPUTLANGCHANGE:
    //    {
    //        return 0;
    //    }
    //    break;

	case WM_ERASEBKGND:
		return 0;

	}

	return DefWindowProc(hWnd, message, wParam, lParam);
}

void MakeBinTable()  
{
	g_bBinaryTable = FALSE; 		
	LGInfo lg_info;
	lg_info = *g_pGameApp->GetLGConfig();
	lg_info.bMsgBox = true;
	lg_info.bEnableAll  = true;
	g_pGameApp->LG_Config( lg_info );

	g_pGameApp->InitAllTable();

	MPResourceSet* pResourceSet = new MPResourceSet(0, g_Config.m_nMaxResourceNum);
	pResourceSet->LoadRawDataInfo("scripts/table/ResourceInfo", g_bBinaryTable);

	MessageBox( NULL, RES_STRING(CL_LANGUAGE_MATCH_193), "Info", 0 );
}

// 把printf的内容输出到当前应用程序的edit控件里
void DisplayError(char* szMsg)
{
	OutputDebugString( szMsg );
    //TRACE(szMsg);
    //TRACE(" ");
}

list<CCharacter*> g_Loading;

HANDLE hOutputReadTmp = 0;
HANDLE hOutputWrite = 0;
DWORD WINAPI ReadStdout(LPVOID lpvThreadParam)
{
  CHAR lpBuffer[256];
  DWORD nBytesRead;

  //extern CMyIDEApp theApp;

  while(TRUE)
  {
	  if( g_Loading.size() > 0 )
	  {
		
	  }
	  else
	  {
		  Sleep( 1 );
	  }


   //  if (!ReadFile(hOutputReadTmp, lpBuffer,sizeof(lpBuffer),
   //                                   &nBytesRead,NULL) || !nBytesRead)
   //  {
   //     if (GetLastError() == ERROR_BROKEN_PIPE)
   //        break; // pipe done - normal exit path.
   //     else
   //        DisplayError("ReadFile"); // Something bad happened.
   //  }
   // 
   //  if (nBytesRead >0 )
   //  {
   //      //获取到printf的输出
   //      lpBuffer[nBytesRead] = 0;
		 ////if(theApp.m_pMainWnd)
		 ////{
			////CMyIDEDlg *pDlg = (CMyIDEDlg*)theApp.m_pMainWnd; //往Edit控件写入接受到的字符串输出
			////pDlg->m_edit1.ReplaceSel(lpBuffer);
	  //   //}
		 //if( g_pGameApp )
		 //{
			// g_pGameApp->SysInfo( "lua printf:%s", lpBuffer );
		 //}
   //  }
  }

  return 0;
}

#include  <io.h>
#include <FCNTL.h>
void StdoutRedirect()
{
    if (!CreatePipe(&hOutputReadTmp,&hOutputWrite,0,0))
         DisplayError("CreatePipe");

   int hCrt;
   FILE *hf;
   //AllocConsole();
   hCrt = _open_osfhandle((long)hOutputWrite, _O_TEXT);
   hf = _fdopen( hCrt, "w" );
   *stdout = *hf;
   int i = setvbuf( stdout, NULL, _IONBF, 0 );

      // Launch the thread that gets the input and sends it to the child.
    DWORD ThreadID;
    HANDLE hThread = ::CreateThread(NULL,0,ReadStdout, //创建线程
                              0,0,&ThreadID);
}


// 安装字体
int InstallFont(const char* pszPath)
{
	int nRet = 0;
	char szWindow[256] = {0};
	char szBuffer[256] = {0};

	// 判断是否已经安装了新宋体，如果没有安装则自动安装
	GetWindowsDirectory(szWindow, sizeof(szWindow) / sizeof(szWindow[0]));// 获取Windows目录的完整路径名
	sprintf(szBuffer, "%s\\fonts\\simsun.ttc", szWindow); 
	if(-1 !=access(szBuffer, 0))
	{
		return nRet;
	}
	else
	{
		sprintf(szBuffer, "%s\\simsun.ttc", pszPath);
		nRet += AddFontResource(szBuffer);
	}


	//WIN32_FIND_DATA oFinder;

	//sprintf(szBuffer, "%s%s", pszPath, "*.*");
	//HANDLE hFind = FindFirstFile(szBuffer, &oFinder);

	//if(hFind == INVALID_HANDLE_VALUE)
	//{
	//	return 0;
	//}

	//// 遍历存放字体目录
	//while(FindNextFile(hFind, &oFinder) != 0) 
	//{
	//	if(oFinder.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
	//	{
	//		continue;
	//	}

	//	sprintf(szBuffer, "%s%s", pszPath, oFinder.cFileName);
	//	nRet += AddFontResource(szBuffer);	//AddFontResourceEx(szBuffer, FR_NOT_ENUM, 0);
	//}

	//FindClose(hFind);

	if(nRet)
	{
		SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);  // 广播通知系统
	}

	return nRet;
}


void CenterWindow(HWND hWnd)  // 窗口在屏幕显示位置设置
{
	RECT rc;
	GetWindowRect(hWnd, &rc);
	int x = (GetSystemMetrics(SM_CXSCREEN) - (rc.right - rc.left)) / 2;
	//int y = (GetSystemMetrics(SM_CYSCREEN) - (rc.bottom - rc.top)) / 2;
	MoveWindow(hWnd, x, 0, rc.right - rc.left, rc.bottom - rc.top, TRUE);
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            