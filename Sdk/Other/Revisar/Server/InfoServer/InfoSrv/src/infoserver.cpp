
#include "infoserver.h"
#include "socket2.h"
#include "config.h"
#include "logqueue.h"
#include "infoserverthread.h"
#include "ado.h"
#include "socketlist.h"


AcceptThread        g_apt_thread;
IOCPWorkThread      g_ipco_thread1;
IOCPWorkThread      g_ipco_thread2;
Socket2             g_sock;
extern DBThread     g_db_thread;
extern CFG          g_cfg;
extern jConnection  g_conn;
extern LogBuffer    g_logbuff;
extern SocketList   g_socklist;
extern int          g_server_type;



InfoServer* InfoServer::instance = 0;

InfoServer::InfoServer()
: m_state(0)
{
}


InfoServer::~InfoServer()
{
}



InfoServer* InfoServer::Instance()
{
    //static LogServer __instance;
    //return &__instance;
    if(!instance)
    {
        instance = new InfoServer;
    }
    return instance;
}


bool  InfoServer::Init()
{
    m_state = SERVER_INIT;
    return true;
}


bool  InfoServer::Run()
{
    if(SERVER_RUNNING == m_state)
    {
        return true;
    }

    g_sock.Close();
    g_sock.Create();
    g_sock.Bind(g_cfg.port);
    g_sock.Listen();

    g_apt_thread.m_param = &g_sock;
    g_ipco_thread1.m_param = &g_sock;
    g_ipco_thread2.m_param = &g_sock;
    g_db_thread.m_exit = false;

    g_db_thread.Begin();
    g_apt_thread.Begin();
    g_ipco_thread1.Begin();
    g_ipco_thread2.Begin();

    m_state = SERVER_RUNNING;

    return true;
}


bool  InfoServer::Release()
{
    if(SERVER_STOPPED == m_state)
    {
        return true;
    }

    g_apt_thread.Terminate();
    g_ipco_thread1.Terminate();
    g_ipco_thread2.Terminate();
    g_db_thread.m_exit = true;
    g_socklist.Clear();
    if(INFO_SERVER == g_server_type)
    {
        m_state = SERVER_STOPPED;       //  由数据处理线程来进行状态设置
    }

    return true;
}


