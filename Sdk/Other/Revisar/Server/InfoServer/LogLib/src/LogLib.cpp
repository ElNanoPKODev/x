
#include <deque>
#include <string.h>
#include "log.h"
#include "thread.h"
#include "lock.h"
#include "../inc/loglib.h"
#include "socket2.h"


const char* g_Pipename = "\\\\.\\pipe\\moliyo_ServMgrPipe";
const char* g_PipeMonitor = "\\\\.\\pipe\\moliyo_ServMnitrPipe";

#define CHK_STR(str)            ((0 == (str)) ? ("") : (str))


//  处理单引号
static const char* SQLFilter(const char* sql)
{
    char* filter = 0;
    if(!sql)
    {
        filter = new char[1];
        filter[0] = '\0';
        return filter;
    }

    size_t len = strlen(sql);
    if(!len)
    {
        filter = new char[1];
        filter[0] = '\0';
        return filter;
    }

    filter = new char[len * 2];
    memset(filter, 0, len * 2);

    char* ptr = strchr(sql, '\'');

    if(!ptr)
    {
        memcpy(filter, sql, len);
        return filter;
    }

    int size;
    do
    {
        size = (int)(ptr - sql) + 1;
        strncat(filter, sql, size);
        strcat(filter, "'");
        sql = sql + size;

        ptr = strchr(sql, '\'');
    }while(ptr);

    strcat(filter, sql);

    return filter;
}


static char* BuildSQLCommand(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1, const char* ext2, const char* ext3, const char* ext4)
{
    static const char sql_head[] = "INSERT INTO LogTable(LogStr1, LogStr2, LogStr3, LogStr4, LogStr5, LogStr6, Extend1, Extend2, Extend3, Extend4) VALUES('";
    static const char sql_split[] = "','";
    static const char sql_end[] = "');\1";
    static const size_t sql_h_sz = strlen(sql_head);
    static const size_t sql_s_sz = strlen(sql_split);
    static const size_t sql_e_sz = strlen(sql_end);
    static const size_t sql_sz = sql_h_sz + sql_s_sz * 9 + sql_e_sz;

    char* field[10] = {0};
    field[0] = (char*)SQLFilter(str1);
    field[1] = (char*)SQLFilter(str2);
    field[2] = (char*)SQLFilter(str3);
    field[3] = (char*)SQLFilter(str4);
    field[4] = (char*)SQLFilter(str5);
    field[5] = (char*)SQLFilter(str6);
    field[6] = (char*)SQLFilter(ext1);
    field[7] = (char*)SQLFilter(ext2);
    field[8] = (char*)SQLFilter(ext3);
    field[9] = (char*)SQLFilter(ext4);

    size_t sz[10] = {0};
    for(int i = 0; i < 10; i++)
    {
        sz[i] = strlen(field[i]);
    }

    size_t bufsize = sql_sz + sz[0] + sz[1] + sz[2] + sz[3] + sz[4] + sz[5] + sz[6] + sz[7] + sz[8] + sz[9] + 1;

    char* sqlstr = new char[bufsize];
    memset(sqlstr, 0, bufsize);

    strcpy(sqlstr, sql_head);
    strcat(sqlstr, field[0]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[1]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[2]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[3]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[4]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[5]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[6]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[7]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[8]);
    strcat(sqlstr, sql_split);
    strcat(sqlstr, field[9]);
    strcat(sqlstr, sql_end);

    for(int i = 0; i < 10; i++)
    {
        SAFE_DELETE_ARRAY(field[i]);
    }

    return sqlstr;
}


template <class T>
class _AnyQueue
{
public:
    typedef std::deque<T>   _AnyType;
    _AnyQueue()
    {
    }
    virtual ~_AnyQueue()
    {
    }
    virtual T Pop()
    {
        m_lock.lock();
        T ty = (T)m_queue.front();
        m_queue.pop_front();
        m_lock.unlock();
        return ty;
    }
    virtual T Top()
    {
        m_lock.lock();
        T ty = (T)m_queue.front();
        m_lock.unlock();
        return ty;
    }
    virtual void Push(T val)
    {
        m_lock.lock();
        m_queue.push_back(val);
        m_lock.unlock();
    }
    virtual int Size()
    {
        return (int)m_queue.size();
    }
    virtual void Clear()
    {
        _AnyType::iterator it;

        m_lock.lock();
        for(it = m_queue.begin(); it != m_queue.end(); it++)
        {
            SAFE_DELETE(*it);
        }
        m_queue.clear();
        m_lock.unlock();
    }

public:
    _AnyType    m_queue;
    Lock        m_lock;
};


class WorkThread : public Thread
{
    typedef _AnyQueue<const char*>  MsgQueue;
public:
    static WorkThread* Instance()
    {
        static WorkThread instance;
        return &instance;
    }
    ~WorkThread()
    {}
    void init(const char* ip, unsigned short port)
    {
        strncpy(m_ip, ip, 32);
        m_port = port;
    }
    void push(const char* msg)
    {
        m_queue.Push(msg);
    }
    unsigned Run()
    {
        char* msg = 0;
        Socket2 sock;
        WSABUF       BuffData;
        DWORD        RSBytes;
        OVERLAPPED   Overlapped;
        m_end = false;

        for(;;)
        {
            try
            {
                if(!sock.IsValid())
                {
                    sock.Connect(m_ip, m_port);
                    Sleep(1);
                    continue;
                }

                while(m_queue.Size())
                {
                    msg = (char*)m_queue.Pop();
                    memset(&Overlapped, 0, sizeof(OVERLAPPED));
                    BuffData.buf = msg;
                    BuffData.len = (u_long)strlen(msg);

                    if(SOCKET_ERROR == sock.Send(&BuffData, &RSBytes, &Overlapped))
                    {
                        if (ERROR_IO_PENDING != WSAGetLastError())
                        {
                            push(msg);
                            sock.Close();
                            break;
                        }
                    }
                    SAFE_DELETE_ARRAY(msg);
                }

                if(m_end)
                {
                    break;
                }

                Sleep(1);
            }
            catch(...)
            {
            }
        }

        sock.Close();

        return 0;
    }
    void close()
    {
        m_end = true;
        Wait();
    }

private:
    WorkThread()
    {
    }

private:
    bool            m_end;
    MsgQueue        m_queue;
    char            m_ip[32];
    unsigned short  m_port;
};




LogInterface::LogInterface()
    :   m_hPipe(0)
{
}


LogInterface::~LogInterface()
{
}


LogInterface* LogInterface::Instance()
{
    static LogInterface instance;
    return &instance;
}


void LogInterface::SetServer(const char* ip, unsigned short port)
{
    WorkThread::Instance()->init(ip, port);
    WorkThread::Instance()->Begin();
}


void LogInterface::Disconnect()
{
    WorkThread::Instance()->close();
}


void LogInterface::SendLogMessage(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1, const char* ext2, const char* ext3, const char* ext4)
{
    char* sqlstr = BuildSQLCommand(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4);
    PushSQLCommand(sqlstr);
}


void LogInterface::PushSQLCommand(const char* sqlcmd)
{
    WorkThread::Instance()->push(sqlcmd);
}


void LogInterface::CloneSQLCommand(const char* sqlcmd, size_t size)
{
    char* buffer = new char[size + 1];
    memset(buffer, 0, size + 1);
    memcpy(buffer, sqlcmd, size);

    PushSQLCommand(buffer);
}


void LogInterface::CloneSQLCommand(const char* sqlcmd)
{
    size_t size = strlen(sqlcmd);
    CloneSQLCommand(sqlcmd, size);
}


bool LogInterface::IPC_Connect()
{
    if (!WaitNamedPipe(g_Pipename, NMPWAIT_WAIT_FOREVER))
    {
        return false;
    }

    m_hPipe = CreateFile(g_Pipename, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (INVALID_HANDLE_VALUE == m_hPipe)
    {
        m_hPipe = 0;
        return false;
    }
    return true;
}


void LogInterface::IPC_Close()
{
    if(m_hPipe)
    {
        CloseHandle(m_hPipe); // 关闭管道句柄 
    }
}


bool LogInterface::IPC_SendLogMessage(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1, const char* ext2, const char* ext3, const char* ext4)
{
    bool ret = false;

    if(!m_hPipe)
    {
        IPC_Connect();
    }

    if(m_hPipe)
    {
        char* sqlstr = BuildSQLCommand(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4);
        DWORD WriteNum = 0;
        if (!WriteFile(m_hPipe, sqlstr, (DWORD)strlen(sqlstr), &WriteNum, NULL))
        {
            LG("loglib_error_sql", "%s\n", sqlstr);
            IPC_Close();
            ret = false;
        }
        ret = true;
        SAFE_DELETE_ARRAY(sqlstr);
    }
    else
    {
        //  Excel 文本格式
        LG("loglib_error", "\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\"\n", 
            CHK_STR(str1), CHK_STR(str2), CHK_STR(str3), CHK_STR(str4), CHK_STR(str5), CHK_STR(str6), 
            CHK_STR(ext1), CHK_STR(ext2), CHK_STR(ext3), CHK_STR(ext4));
        ret = false;
    }
    return ret;
}




IPC_Monitor::IPC_Monitor()
    :   m_hPipe(0)
{
}


IPC_Monitor::~IPC_Monitor()
{
}


IPC_Monitor* IPC_Monitor::Instance()
{
    static IPC_Monitor instance;
    return &instance;
}


bool IPC_Monitor::IPC_Login(const char* path)
{
    bool ret = false;
    if(!m_hPipe)
    {
        IPC_Connect();
    }
    if(m_hPipe)
    {
        char buff[MAX_PATH + 4] = {0};
        sprintf(buff, "lgn:%s", path);
        DWORD WriteNum = 0;
        if (!WriteFile(m_hPipe, buff, (DWORD)strlen(buff), &WriteNum, NULL))
        {
            LG("loglib_error_monitor", "%s\n", path);
            IPC_Close();
            ret = false;
        }
        ret = true;
    }
    else
    {
        LG("loglib_error_monitor", "%s\n", path);
        ret = false;
    }
    return ret;
}


bool IPC_Monitor::IPC_KeepLive()
{
    bool ret = false;
    if(!m_hPipe)
    {
        IPC_Connect();
    }
    if(m_hPipe)
    {
        char buff[32] = {0};
        sprintf(buff, "liv:i am alive.");
        DWORD WriteNum = 0;
        if (!WriteFile(m_hPipe, buff, (DWORD)strlen(buff), &WriteNum, NULL))
        {
            LG("loglib_error_monitor", "Keep Live\n");
            IPC_Close();
            ret = false;
        }
        ret = true;
    }
    else
    {
        LG("loglib_error_monitor", "Keep Live\n");
        ret = false;
    }
    return ret;
}


bool IPC_Monitor::IPC_Quit()
{
    bool ret = false;
    if(!m_hPipe)
    {
        IPC_Connect();
    }
    if(m_hPipe)
    {
        char buff[32] = {0};
        sprintf(buff, "qut:quit ipc.");
        DWORD WriteNum = 0;
        if (!WriteFile(m_hPipe, buff, (DWORD)strlen(buff), &WriteNum, NULL))
        {
            LG("loglib_error_monitor", "Quit\n");
            IPC_Close();
            ret = false;
        }
        ret = true;
    }
    else
    {
        LG("loglib_error_monitor", "Quit\n");
        ret = false;
    }
    return ret;
}


bool IPC_Monitor::IPC_Connect()
{
    if(!WaitNamedPipe(g_PipeMonitor, NMPWAIT_WAIT_FOREVER))
    {
        return false;
    }

    m_hPipe = CreateFile(g_PipeMonitor, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if(INVALID_HANDLE_VALUE == m_hPipe)
    {
        m_hPipe = 0;
        return false;
    }
    return true;
}


void IPC_Monitor::IPC_Close()
{
    IPC_Quit();
    if(m_hPipe)
    {
        CloseHandle(m_hPipe); // 关闭管道句柄 
    }
}


