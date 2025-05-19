
/* * * * * * * * * * * * * * * * * * * *

    程序入口

 * * * * * * * * * * * * * * * * * * * */


#include "datatype.h"
#include "resource.h"
#include "config.h"
#include "logqueue.h"
#include "ado.h"
#include "infoServerThread.h"
#include <time.h>
#include <stdio.h>
#include <util.h>

#include <i18n.h>
#include "pi_Alloc.h"
#include "pi_Memory.h"


#pragma comment(lib, "Winmm.lib")
#pragma comment(lib, "util.lib")
#pragma comment(lib, "common.lib")

pi_LeakReporter pi_leakReporter("InforServermemleak.log");
CResourceBundleManage g_ResourceBundleManage("InforServer.loc"); //Add by Lark.li 200803028

int         g_server_type = 0;
CFG         g_cfg;
LogBuffer   g_logbuff;
LogQueue    g_logqueue;
DBThread    g_db_thread;
jConnection g_conn;
jConnection g_trad;

INT_PTR CALLBACK SelectProc(HWND _hwnd, UINT _msg, WPARAM wParam, LPARAM lParam);
INT_PTR CALLBACK LogServerProc(HWND _hwnd, UINT _msg, WPARAM wParam, LPARAM lParam);
INT_PTR CALLBACK ResServerProc(HWND _hwnd, UINT _msg, WPARAM wParam, LPARAM lParam);


char g_logfile[260] = {0};




//主函数
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR szCmdLine, int iCmdShow)
{
	//CatchException();

    HANDLE appInst = CreateMutex(0, FALSE, "InfoServer");
    if(ERROR_ALREADY_EXISTS == GetLastError())
    {
        MessageBox(0, "InfoServer is already running.", "Error", MB_OK | MB_ICONERROR);
        return 0;
    }

	//防止不同帐号的双开
	//::FindWindow();
	//找到多于两个进程就杀掉（CloseWindow对方，或者return自己）

    //se_translator translator;
	SEHTranslator translator;

    time_t t = time(0);
    tm* m = localtime(&t);

    sprintf(g_logfile, "%i_%i_%i__%i_%i_%i__%i", m->tm_year + 1900, m->tm_mon + 1, m->tm_mday, m->tm_hour, m->tm_min, m->tm_sec, m->tm_wday);

    try
    {
        Config  cf;
        cf.GetConfig(g_cfg);
        g_conn.SetSQLServerInfo(g_cfg.server, g_cfg.uid, g_cfg.pwd, g_cfg.database);
        g_conn.SetTimeOut(300000);
        g_logbuff.SetSize(g_cfg.bufsize);

        //DialogBox(hInstance, MAKEINTRESOURCE(IDD_SELECT), NULL, SelectProc);
        switch(g_server_type)
        {
        case LOG_SERVER:
            {
                DialogBox(hInstance, MAKEINTRESOURCE(IDD_LOGSERVER), NULL, LogServerProc);
            }   break;
        case INFO_SERVER:
            {
                g_trad.SetAccessFilePath("log/system.jmp", "jmpsxf");
                //g_trad.SetAccessFilePath("E:\\Item\\Source\\VC2003\\Unicode\\Project_Kop\\vss_server\\InfoServer\\bin\\system.jmp", "jmpsxf");
                if(!g_trad.Connect())
                {
                    MessageBox(0, "Failt to load system.jmp.", "", MB_OK);
                    return 0;
                }
                DialogBox(hInstance, MAKEINTRESOURCE(IDD_RESOURCE_SERVER), NULL, ResServerProc);
            }  break;
        case 0:
        default:
            {
                MessageBox(0, "Please check configure file.", "Notify", 0);
            }  break;
        }
        g_logbuff.Release();
        PostQuitMessage(0);

        ReleaseMutex(appInst);

        return 0;
    }
    catch(_com_error& e)
    {
        MessageBox(0, "Failt to load system.jmp.", "", MB_OK);
        LG(g_logfile, "Failt to load system.jmp.\r\n");
    }
    catch(...)
    {
        LG(g_logfile, "=====> ShutDown Server...\r\n");
        MessageBox(0, "Main Exception", "Exception", MB_OK);
    }
   
    return 1;
}


