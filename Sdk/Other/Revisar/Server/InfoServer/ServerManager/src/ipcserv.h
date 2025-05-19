

#if !defined __IPCSERV_H__
#define __IPCSERV_H__

#include "thread.h"
#include <deque>
#include "lock.h"



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



#define EXEC_SQL            1
#define EXEC_IO             2



class IPC_Client : public Thread
{
public:
    IPC_Client();
    ~IPC_Client();
    unsigned Run();

public:
    HANDLE  m_hPipe;
    int     m_type;
};

class IPC_Service : public Thread
{
public:
    IPC_Service();
    ~IPC_Service();
    unsigned Run();

public:
    char            m_ip[16];
    unsigned short  m_port;
    int             m_type;
};


class CheckFile : public Thread
{
#define CHKTM       1000 * 60 * 1           //  1分钟检测一次
#define MAXSZ       1024 * 1024 * 50        //  50兆左右一个文件
public:
    CheckFile();
    ~CheckFile();
    unsigned Run();
    void newFile();
};


#endif
