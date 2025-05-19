

#include <windows.h>
#include "datatype.h"
#include "resource.h"
#include "MyComboBox.h"

extern int g_server_type;


#define STR_LOG_SERV                "LogServer"
#define STR_RES_SERV                "InfoServer"


INT_PTR CALLBACK SelectProc(HWND _hwnd, UINT _msg, WPARAM wParam, LPARAM lParam)
{
    static MyComboBox cb;
    switch(_msg)
    {
    case WM_INITDIALOG:
        {
            cb.GetComboBoxHandle(_hwnd, IDC_SERV_LIST);
            cb.AddItem(STR_LOG_SERV);
            cb.AddItem(STR_RES_SERV);
        }  break;
    case WM_COMMAND:
        {
            switch(LOWORD(wParam))
            {
            case IDC_OPEN_SERVER:
                {
                    if(g_server_type > 0)
                    {
                        EndDialog(_hwnd, 0);
                        break;
                    }
                    MessageBox(_hwnd, "Please select server type£¡", "Select Server", MB_OK);
                }  break;
            case IDC_SERV_LIST:
                {
                    switch(HIWORD(wParam))
                    {
                    case CBN_SELCHANGE:
                        {
                            if(0 == strcmp(cb.GetText(), STR_LOG_SERV))
                            {
                                g_server_type = LOG_SERVER;
                            }
                            else if(0 == strcmp(cb.GetText(), STR_RES_SERV))
                            {
                                g_server_type = INFO_SERVER;
                            }
                        }  break;
                    default:
                        {
                        }  break;
                    }
                }  break;
            default:
                {
                }  break;
            }
        }  break;
    case WM_CLOSE:
        {
            g_server_type = 0;
            EndDialog(_hwnd, 0);
        }  break;
    default:
        {
        }  break;
    }

    return 0;
}
