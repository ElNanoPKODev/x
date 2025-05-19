
#include <windows.h>
#include "log.h"
#include "resource.h"
#include "ipcserv.h"
#include "monitor.h"
#include "inistream.h"

IPC_Service g_serv;
Monitor     g_monit;
extern long g_mntCount;
extern long g_restarted;


#define CHK_TM          1000


void CheckMonitor(HWND hWnd)
{
    char buff[32] = {0};
    sprintf(buff, "%li", g_mntCount);
    SetWindowText(GetDlgItem(hWnd, IDC_CURSERV), buff);
    sprintf(buff, "%li", g_restarted);
    SetWindowText(GetDlgItem(hWnd, IDC_RSTSERV), buff);
}


INT_PTR CALLBACK ServMgrProc(HWND hWnd, UINT UMsg, WPARAM wParam, LPARAM lParam)
{
    switch(UMsg)
    {
    case WM_INITDIALOG:
        {
            g_serv.Begin();
            g_monit.Begin();
            SetWindowText(GetDlgItem(hWnd, IDC_SERV_IP), g_serv.m_ip);
            char buff[16] = {0};
            sprintf(buff, "%i", g_serv.m_port);
            SetWindowText(GetDlgItem(hWnd, IDC_SERV_PORT), buff);

            SetTimer(hWnd, 1000, CHK_TM, 0);
        }  break;
    case WM_COMMAND:
        {
        }  break;
    case WM_TIMER:
        {
            switch(wParam)
            {
            case 1000:
                {
                    CheckMonitor(hWnd);
                }  break;
            }
        }  break;
    case WM_CLOSE:
        {
            KillTimer(hWnd, 1000);
            EndDialog(hWnd, 0);
        }  break;
    default:
        {
        }  break;
    }
    return 0;
}


int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR szCmdLine, int iCmdShow)
{
    HANDLE appInst = CreateMutex(0, FALSE, "ServerManager");
    if(ERROR_ALREADY_EXISTS == GetLastError())
    {
        MessageBox(0, "ServerManager is already running.", "Error", MB_OK | MB_ICONERROR);
        return 1;
    }

    char path[MAX_PATH] = {0};
    char* p;
    GetModuleFileName(GetModuleHandle(NULL), path, MAX_PATH);
    p = strrchr(path, '\\');
    strcpy(p + 1, "config.ini");

    INIStream ini(path);
    ini.ReadString(g_serv.m_ip, 16, "Configure", "ServIP");
    g_serv.m_port = ini.ReadInt("Configure", "ServPort");
    g_serv.m_type = ini.ReadInt("Configure", "LogType");

    try
    {
        DialogBox(hInstance, MAKEINTRESOURCE(IDD_SERVMGR), NULL, ServMgrProc);
    }
    catch(...)
    {
    }

    ReleaseMutex(appInst);

    return 0;
}

