

#include <stdio.h>
#include <conio.h>
#include <time.h>
#include "socketlist.h"
#include "infoserver.h"
#include "logqueue.h"
#include "config.h"
#include "ado.h"
#include "infoserverthread.h"
#include "MyListView.h"
#include "resource.h"


extern LogBuffer    g_logbuff;
extern LogQueue     g_logqueue;
extern DBThread     g_db_thread;
extern CFG          g_cfg;
extern jConnection  g_conn;
extern SocketList   g_socklist;
extern ulong        g_count;


#define STATE_TIMER     1000

INT_PTR CALLBACK LogServerProc(HWND _hwnd, UINT _msg, WPARAM wParam, LPARAM lParam)
{
    static InfoServer* __server = GetServerInstance();
    static MyListView list;

    switch(_msg)
    {
    case WM_INITDIALOG:
        {
            __server->Init();
            SetTimer(_hwnd, STATE_TIMER, 3000, NULL);
            SetWindowText(GetDlgItem(_hwnd, IDC_STATIC_DB_SERVER), g_cfg.server);
            SetWindowText(GetDlgItem(_hwnd, IDC_STATIC_DB_DATABASE), g_cfg.database);
            list.GetListViewHandle(_hwnd, IDC_SOCKET_LIST);
            list.InsertColumn(0, "IP", 100);
            list.InsertColumn(1, "Port", 70);
            list.InsertColumn(2, "Posted Number", 90);
            list.SetExtended();
        }
        break;
    case WM_COMMAND:
        {
            switch(LOWORD(wParam))
            {
            case IDC_START:
                {
                    __server->Run();
                }  break;
            case IDC_STOP:
                {
                    __server->Release();
                    //g_db_thread.Wait();
                }  break;
            default:
                {
                }  break;
            }

        }
        break;
    case WM_TIMER:
        {
            switch(LOWORD(wParam))
            {
            case STATE_TIMER:
                {
                    static HWND hLogState   = GetDlgItem(_hwnd, IDC_STATIC_STATE);    //  日志服务器状态
                    static HWND hDBState    = GetDlgItem(_hwnd, IDC_STATIC_DB);       //  数据库服务器状态
                    static HWND hBuffSize   = GetDlgItem(_hwnd, IDC_STATIC_BFSZ);     //  缓存队列大小
                    static HWND hDataSize   = GetDlgItem(_hwnd, IDC_STATIC_LOG);      //  未处理数据
                    static HWND hConSize    = GetDlgItem(_hwnd, IDC_STATIC_CON);      //  网络连接数
                    static HWND hWarn       = GetDlgItem(_hwnd, IDC_STATIC_WARN);     //  告警
                    static HWND hCount      = GetDlgItem(_hwnd, IDC_STATIC_COUNT);    //  统计
                    static HWND hDataCount  = GetDlgItem(_hwnd, IDC_STATIC_DATA_COUNT);//   单条记录统计
                    static HWND hBtnStart   = GetDlgItem(_hwnd, IDC_START);           //  开始按钮
                    static HWND hBtnStop    = GetDlgItem(_hwnd, IDC_STOP);            //  停止按钮
                    static char buff[16]    = {0};
                    static ulong currentCount = 0;
                    static ulong diff = 0;
                    static clock_t stamp = clock();


                    switch(__server->m_state)   //  检测服务状态
                    {
                    case SERVER_RUNNING:
                        {
                            SetWindowText(hLogState, "Running");
                            EnableWindow(hBtnStart, FALSE);
                            EnableWindow(hBtnStop, TRUE);
                        }  break;
                    case SERVER_INIT:
                    case SERVER_STOPPED:
                    default:
                        {
                            SetWindowText(hLogState, "Stopped");
                            EnableWindow(hBtnStart, TRUE);
                            EnableWindow(hBtnStop, FALSE);
                        }  break;
                    }

                    if(g_conn.IsConnect())      //  检测数据库状态
                    {
                        SetWindowText(hDBState, "Connected");
                    }
                    else
                    {
                        SetWindowText(hDBState, "Disconnected");
                    }

                    SetWindowText(hBuffSize, itoa(g_logbuff.Size(), buff, 10));     //  缓存队列大小
                    SetWindowText(hDataSize, itoa(g_logqueue.Size(), buff, 10));    //  数据队列大小
                    SetWindowText(hConSize, itoa(g_socklist.Size(), buff, 10));     //  连接数

                    if(g_logbuff.Size() < g_cfg.warning)        //  告警处理
                    {
                        SetWindowText(hWarn, "System will haven't enough memory buffers, if haven't any more free buffer, system will allocate temp buffer.");
                    }
                    else
                    {
                        SetWindowText(hWarn, "");
                    }

                    diff = g_count - currentCount;
                    SetWindowText(hCount, itoa(diff, buff, 10));    //  计算每秒处理数

                    if(diff)     //  检测被除数
                    {
                        //  被除数不为0时，计算单数据处理时间
                        SetWindowText(hDataCount, gcvt(((double)(clock() - stamp) / diff), 3/*保留三位*/, buff));
                    }
                    else
                    {
                        //  被除数为0时
                        SetWindowText(hDataCount, "0");
                    }

                    stamp = clock();
                    currentCount += diff;

                    list.DeleteAllItem();

                    SOCKETLIST::iterator it;
                    g_socklist.m_lock.lock();
                    for(it = g_socklist.m_list.begin(); it != g_socklist.m_list.end(); it++)
                    {
                        diff = list.InsertItem();
                        list.SetItemText(diff, 0, (*it)->m_sock.GetIPAddress());
                        list.SetItemText(diff, 1, itoa((*it)->m_sock.GetPort(), buff, 10));
                        list.SetItemText(diff, 2, itoa((*it)->m_packet, buff, 10));
                    }
                    g_socklist.m_lock.unlock();

                }  break;
            }
        }  break;
    case WM_CLOSE:
        {
            if(SERVER_RUNNING == __server->m_state)
            {
                MessageBox(_hwnd, "Service is running, You can't quit application!\r\nPlease stop service first,Waiting for process message.", "Warning", MB_OK | MB_ICONERROR);
                break;
            }
            KillTimer(_hwnd, STATE_TIMER);
            EndDialog(_hwnd, 0);
        }break;
    default:
        {
        }break;
        
    }
    
    return 0;
}
