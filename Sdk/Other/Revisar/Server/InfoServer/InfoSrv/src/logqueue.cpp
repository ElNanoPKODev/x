

#include "logqueue.h"
#include <stdio.h>


//  class LogQueue

LogQueue::LogQueue()
{
}


LogQueue::~LogQueue()
{
}


void LogQueue::Push(pLogMessage buf)
{
    m_lock.lock();
    m_list.push_back(buf);
    m_lock.unlock();
}


pLogMessage LogQueue::Pop()
{
    pLogMessage pBuf = GetTop();

    m_lock.lock();
    m_list.pop_front();
    m_lock.unlock();

    return pBuf;
}


pLogMessage LogQueue::GetTop()
{
    return (pLogMessage)m_list.front();
}


void LogQueue::Clear()
{
    LogList::iterator   it;
    m_lock.lock();
    for(it = m_list.begin(); it != m_list.end(); it++)
    {
        SAFE_DELETE(*it);
    }
    m_list.clear();
    m_lock.unlock();
}


int LogQueue::Size()
{
    return (int)m_list.size();
}



//  class LogBuffer

LogBuffer::LogBuffer()
: m_size(-1)
{
}


LogBuffer::~LogBuffer()
{
}


bool LogBuffer::Init()
{
    pLogMessage pLog;
    for(int i = 0; i < m_size; i++)
    {
        pLog = new LogMessage;
        memset(pLog, 0, sizeof(LogMessage));
        Push(pLog);
    }
    return true;
}


pLogMessage LogBuffer::GetBuffer()
{
    if(0 == Size())
    {
        pLogMessage pLog = new LogMessage;
        memset(pLog, 0, sizeof(LogMessage));
        pLog->isTmp = true;
        return pLog;
    }
    return Pop();
}


void LogBuffer::FreeBuffer(pLogMessage buf)
{
    if(buf->isTmp)
    {
        SAFE_DELETE(buf);
        return;
    }
    memset(buf, 0, sizeof(LogMessage));
    Push(buf);
}


bool LogBuffer::Release()
{
    int times = 0;
    while(m_size != Size())
    {
        if(times < 5)
        {
            ++times;        //  尝试5次，每次间隔1秒
            Sleep(1000);    //  等待其他线程归还所有缓存对象
        }
        else
        {
            return false;
        }
    }
    Clear();
    m_size = -1;
    return true;
}


bool LogBuffer::SetSize(int bsize)
{
    if((m_size >= 0) || (bsize < 0))
    {
        return false;
    }
    m_size = bsize;
    return Init();
}


int LogBuffer::Size()
{
    return LogQueue::Size();
}



