

#include <direct.h>
#include "head.h"
#include "ado.h"
#include "NetWork.h"
#include "MyComboBox.h"
#include "MyListView.h"
#include "resource.h"


#pragma comment(lib, "ws2_32.lib")

HINSTANCE   g_hInstance;
HWND        g_hMainWnd;
WSADATA     g_wsaData;
char        g_key[33] = {0};
NetWork     g_NetWork;
ServerList  g_ServList;
jConnection g_conn;
long        g_totalMail = 0;
long        g_totalReply = 0;
MailInfo    g_CurMail = {0};
long        g_CurMailServID = 0;
bool        g_loaded = false;

long        g_searchActID = 0;
long        g_searchChaID = 0;


INT_PTR CALLBACK HistoryWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    static bool bShow = false;
    static MyListView hisLst;
    switch(uMsg)
    {
    case WM_INITDIALOG:
        {
            if(bShow)
            {
                EndDialog(hWnd, 0);
            }
            bShow = true;
            hisLst.GetListViewHandle(hWnd, IDC_LST_HISTORY);
            hisLst.SetExtended(LVS_EX_GRIDLINES | LVS_EX_FULLROWSELECT);
            hisLst.InsertColumn(1,  "ID", 60);
            hisLst.InsertColumn(2, "Account", 100);
            hisLst.InsertColumn(3, "Character", 100);
            hisLst.InsertColumn(4, "Server ID", 40);
            hisLst.InsertColumn(5, "Time", 120);
            hisLst.InsertColumn(6, "Title", 150);
            hisLst.InsertColumn(7, "Context", 250);
            hisLst.InsertColumn(8, "GM ID", 80);
            hisLst.InsertColumn(9, "Reply Time", 120);
            hisLst.InsertColumn(10, "Reply Context", 250);

            _RecordsetPtr rs;
            if(!rs.GetInterfacePtr())
            {
                rs.CreateInstance("ADODB.Recordset");
            }

            char buff[128] = {0};
            char sql[512] = {0};
            int idx = 1;
            sprintf(sql, "SELECT mailID, actID, actName, chaID, chaName, servID, sendTime, title, context, gmID, replyTime, replyContext FROM mail WHERE actID = %li AND chaID = %li", g_searchActID, g_searchChaID);
            g_conn.Execute(sql, rs);

            while(!rs->GetADOEOF())
            {
                hisLst.InsertItem(idx);

                sprintf(buff, "%li", (long)rs->GetCollect("mailID"));
                hisLst.SetItemText(idx, 0, buff);

                sprintf(buff, "%li: %s", (long)rs->GetCollect("actID"), (char*)(bstr_t)rs->GetCollect("actName"));
                hisLst.SetItemText(idx, 1, buff);

                sprintf(buff, "%li: %s", (long)rs->GetCollect("chaID"), (char*)(bstr_t)rs->GetCollect("chaName"));
                hisLst.SetItemText(idx, 2, buff);

                sprintf(buff, "%li", (long)rs->GetCollect("servID"));
                hisLst.SetItemText(idx, 3, buff);

                hisLst.SetItemText(idx, 4, (char*)(bstr_t)rs->GetCollect("sendTime"));

                hisLst.SetItemText(idx, 5, (char*)(bstr_t)rs->GetCollect("title"));

                hisLst.SetItemText(idx, 6, (char*)(bstr_t)rs->GetCollect("context"));

                sprintf(buff, "%li", (long)rs->GetCollect("gmID"));
                hisLst.SetItemText(idx, 7, buff);

                hisLst.SetItemText(idx, 8, (char*)(bstr_t)rs->GetCollect("replyTime"));

                hisLst.SetItemText(idx, 8, (char*)(bstr_t)rs->GetCollect("replyContext"));

                ++idx;
                rs->MoveNext();
            }

            rs->Close();
            if(rs.GetInterfacePtr())
            {
                rs.Release();
            }
        }   break;
    case WM_CLOSE:
        {
            bShow = false;
            EndDialog(hWnd, 0);
        }  break;
    }
    return 0;
}



INT_PTR CALLBACK MainWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch(uMsg)
    {
    case WM_INITDIALOG:
        {
            SetTimer(hWnd, 1001, 3000, 0);
            SetTimer(hWnd, 1002, 1, 0);
            SetTimer(hWnd, 1003, 180000, 0);
            EnableWindow(GetDlgItem(hWnd, IDC_BTN_REQUEST), TRUE);
            EnableWindow(GetDlgItem(hWnd, IDC_BTN_REPLY), FALSE);
        }  break;
    case WM_COMMAND:
        {
            switch(LOWORD(wParam))
            {
            case IDC_BTN_REQUEST:
                {
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_PLAYER), "");
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_TITLE), "");
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_CONTEXT), "");
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_REPLY), "");

                    //EnableWindow(GetDlgItem(hWnd, IDC_BTN_REQUEST), FALSE);
                    memset(&g_CurMail, 0, sizeof(MailInfo));
                    g_CurMailServID = 0;
                    g_NetWork.PostInfoSend(INFO_GET_GM_MAIL, 0, 0, g_NetWork.m_section, 0, 0);
                }  break;
            case IDC_BTN_REPLY:
                {
                    EnableWindow(GetDlgItem(hWnd, IDC_BTN_REPLY), FALSE);
                    char buff[512] = {0};
                    GetWindowText(GetDlgItem(hWnd, IDC_EDT_REPLY), buff, 512);
                    if(!strlen(buff))
                    {
                        MessageBox(hWnd, "Null Text", "", 0);
                        break;
                    }
                    strcpy(g_CurMail.description, buff);
                    g_CurMail.sendTime = (long)time(0);
                    char time[32] = {0};
                    tm* ttm;
                    ttm = localtime(&g_CurMail.sendTime);
                    sprintf(time, "%04i-%02i-%02i %02i:%02i:%02i", ttm->tm_year + 1900, ttm->tm_mon + 1, ttm->tm_mday, ttm->tm_hour, ttm->tm_min, ttm->tm_sec);

                    char sql[4096] = {0};
                    sprintf(sql, 
                        "UPDATE mail SET gmID = %li, replyTime = '%s', replyContext = '%s' WHERE mailID = %li", 
                        g_NetWork.m_section, time, g_CurMail.description, g_CurMail.id);
                    g_conn.Execute(sql);

                    g_NetWork.PostInfoSend(INFO_RPY_GM_MAIL, 0, 0, g_NetWork.m_section, (byte*)&g_CurMail, sizeof(MailInfo));
                    ++g_totalReply;
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_PLAYER), "");
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_TITLE), "");
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_CONTEXT), "");
                    SetWindowText(GetDlgItem(hWnd, IDC_EDT_REPLY), "");
                    g_searchActID = g_searchChaID = 0;
                    //EnableWindow(GetDlgItem(hWnd, IDC_BTN_REQUEST), TRUE);
                }  break;
            case IDC_BTN_HISTORY:
                {
                    if(!g_searchActID || !g_searchChaID)
                    {
                        MessageBox(hWnd, "No Search Object.", "Notify", 0);
                        break;
                    }
                    DialogBox(g_hInstance, MAKEINTRESOURCE(IDD_DLG_HISTORY), 0, HistoryWndProc);
                }  break;
            }
        }  break;
    case WM_TIMER:
        {
            switch(LOWORD(wParam))
            {
            case 1001:
                {
                    char buff[260] = {0};
                    sprintf(buff, "Hello GM%li, There are about %li mails. You have replyed %li mails.", g_NetWork.m_section, g_totalMail, g_totalReply);
                    SetWindowText(GetDlgItem(hWnd, IDC_LABEL_STATE), buff);
                }  break;
            case 1002:
                {
                    if(g_loaded)
                    {
                        if(g_CurMail.id)
                        {
                            //EnableWindow(GetDlgItem(hWnd, IDC_BTN_REQUEST), FALSE);
                            EnableWindow(GetDlgItem(hWnd, IDC_BTN_REPLY), TRUE);

                            char buff[256] = {0};
                            char time[32] = {0};

                            sprintf(buff, "MailID: %li, ActID: %li, ActName: %s, ChaID: %li, ChaName: %s", 
                                g_CurMail.id, g_CurMail.actID, g_CurMail.actName, g_CurMail.chaID, g_CurMail.chaName);

                            SetWindowText(GetDlgItem(hWnd, IDC_EDT_PLAYER), buff);
                            tm* ttm;
                            ttm = localtime(&g_CurMail.sendTime);
                            sprintf(time, "%04i-%02i-%02i %02i:%02i:%02i", ttm->tm_year + 1900, ttm->tm_mon + 1, ttm->tm_mday, ttm->tm_hour, ttm->tm_min, ttm->tm_sec);
                            sprintf(buff, "%s --ServerID: %li, Send Time: %s", g_CurMail.title, g_CurMailServID, time);
                            SetWindowText(GetDlgItem(hWnd, IDC_EDT_TITLE), buff);
                            SetWindowText(GetDlgItem(hWnd, IDC_EDT_CONTEXT), g_CurMail.description);

                            char sql[4096] = {0};
                            sprintf(sql, 
                                "INSERT INTO mail(mailID, actID, actName, chaID, chaName, servID, sendTime, title, context) VALUES(%li, %li, '%s', %li, '%s', %li, '%s', '%s', '%s')", 
                                g_CurMail.id, g_CurMail.actID, g_CurMail.actName, g_CurMail.chaID, g_CurMail.chaName, g_CurMailServID, time, g_CurMail.title, g_CurMail.description);
                            g_conn.Execute(sql);

                            g_searchActID = g_CurMail.actID;
                            g_searchChaID = g_CurMail.chaID;
                        }
                        else
                        {
                            //EnableWindow(GetDlgItem(hWnd, IDC_BTN_REQUEST), TRUE);
                            //EnableWindow(GetDlgItem(hWnd, IDC_BTN_REPLY), TRUE);
                        }
                        g_loaded = false;
                    }
                }  break;
            case 1003:
                {
                    g_NetWork.PostInfoSend(INFO_MAIL_QUEUE, 0, 0, g_NetWork.m_section, 0, 0);
                }  break;
            }
        }   break;
    case WM_CLOSE:
        {
            KillTimer(hWnd, 1001);
            KillTimer(hWnd, 1002);
            KillTimer(hWnd, 1003);
            EndDialog(hWnd, 0);
        }  break;
    }
    return 0;
}


INT_PTR CALLBACK LoginWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    static clock_t login_t = 0;
    static MyComboBox hComb;
    switch(uMsg)
    {
    case WM_INITDIALOG:
        {
            hComb.GetComboBoxHandle(hWnd, IDC_CMB_SERVER);
            ServerList::iterator it;
            for(it = g_ServList.begin(); it != g_ServList.end(); it++)
            {
                hComb.AddItem((*it)->name);
            }
            hComb.SetCurSel(0);
        }  break;
    case WM_COMMAND:
        {
            switch(LOWORD(wParam))
            {
            case IDC_BTN_LOGIN:
                {
                    HWND hPWD = GetDlgItem(hWnd, IDC_EDT_PASSWD);
                    HWND hUID = GetDlgItem(hWnd, IDC_EDT_ID);
                    HWND hStat = GetDlgItem(hWnd, IDC_LGN_STATE);
                    HWND hLgn = GetDlgItem(hWnd, IDC_BTN_LOGIN);

                    if((GetWindowTextLength(hUID) <= 0) || (GetWindowTextLength(hPWD) <= 0))
                    {
                        SetWindowText(hStat, "Userid or Password length less than 1...");
                        break;
                    }

                    GetWindowText(hPWD, g_key, sizeof(g_key));

                    char userid[32] = {0};
                    GetWindowText(hUID, userid, sizeof(userid));
                    g_NetWork.m_section = atol(userid);

                    ServerList::iterator it;
                    for(it = g_ServList.begin(); it != g_ServList.end(); it++)
                    {
                        if(!strcmp((*it)->name, hComb.GetText()))
                        {
                            g_NetWork.RunInfoService((*it)->servip, (*it)->port);
                        }
                    }

                    EnableWindow(hLgn, FALSE);
                    EnableWindow(hUID, FALSE);
                    EnableWindow(hPWD, FALSE);

                    SetWindowText(hStat, "Waiting for response...");

                    login_t = clock();
                    SetTimer(hWnd, 1000, 50, 0);
                }  break;
            }
        }  break;
    case WM_TIMER:
        {
            switch(LOWORD(wParam))
            {
            case 1000:
                {
                    switch(g_NetWork.m_loginState)
                    {
                    case LGN_SUCCESS:
                        {
                            KillTimer(hWnd, 1000);
                            EndDialog(hWnd, 1);
                        }  break;

                    case LGN_FAILT:
                        {
                            KillTimer(hWnd, 1000);
                            EndDialog(hWnd, -1);
                        }  break;

                    case LGN_INIT:
                    case LGN_WAITING:
                    default:
                        {
                            //  do nothing
                        }  break;
                    }

                    if((clock() - login_t) > 30000)
                    {
                        EnableWindow(GetDlgItem(hWnd, IDC_BTN_LOGIN), TRUE);
                        EnableWindow(GetDlgItem(hWnd, IDC_EDT_ID), TRUE);
                        EnableWindow(GetDlgItem(hWnd, IDC_EDT_PASSWD), TRUE);

                        g_NetWork.StopInfoService();
                        SetWindowText(GetDlgItem(hWnd, IDC_LGN_STATE), "Time out...");
                        KillTimer(hWnd, 1000);
                    }
                }  break;
            }
        }  break;
    case WM_CLOSE:
        {
            EndDialog(hWnd, 0);
        }  break;
    }
    return 0;
}

#define DB_FILE_NAME         "\\config.jmp"

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR szCmdLine, int iCmdShow)
{
    g_hInstance = hInstance;
    try
    {
        char   workPath[MAX_PATH] = {0};
        getcwd(workPath, 260);   //  获取工作目录
        strcat(workPath, DB_FILE_NAME);

        mkdir("Log");

        _RecordsetPtr rs;
        g_conn.SetAccessFilePath(workPath);
        g_conn.Connect();
        if(!g_conn.IsConnect())
        {
            MessageBox(0, "Load Config File Failt.", "Notify", 0);
            return 0;
        }
        if(!rs.GetInterfacePtr())
        {
            rs.CreateInstance("ADODB.Recordset");
        }
        g_conn.Execute("SELECT * FROM servlist", rs);

        while(!rs->GetADOEOF())
        {
            pServer serv = new Server;
            serv->id = (long)rs->GetCollect("servid");
            strcpy(serv->name, (char*)(bstr_t)rs->GetCollect("servname"));
            strcpy(serv->servip, (char*)(bstr_t)rs->GetCollect("servip"));
            serv->port = (short)rs->GetCollect("servport");
            g_ServList.push_back(serv);
            rs->MoveNext();
        }

        rs->Close();
        if(rs.GetInterfacePtr())
        {
            rs.Release();
        }

        if(!g_ServList.size())
        {
            g_conn.Close();
            MessageBox(0, "Load Server List Failt.", "Notify", 0);
            return 0;
        }

        WSAStartup(0x0202, &g_wsaData);

        int ret = (int)DialogBox(g_hInstance, MAKEINTRESOURCE(IDD_DLG_LOGIN), 0, LoginWndProc);

        if(ret > 0)
        {
            DialogBox(g_hInstance, MAKEINTRESOURCE(IDD_DLG_MAIN), 0, MainWndProc);
            g_NetWork.StopInfoService();
        }
        else if(ret < 0)
        {
            MessageBox(0, "Login Failed. \r\nIf you are administrator of TradeServer, please try again.", "Error", MB_OK);
            g_NetWork.StopInfoService();
        }

        WSACleanup();
        g_conn.Close();
    }
    catch(...)
    {
        MessageBox(0, "Unknown Exception", "Error", MB_OK);
    }
    return 0;
}


