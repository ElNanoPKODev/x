
/* * * * * * * * * * * * * * * * * * * *

    Log队列

 * * * * * * * * * * * * * * * * * * * */


#if !defined __LOGQUEUE_H__
#define __LOGQUEUE_H__


#include <deque>
#include "datatype.h"
#include "lock.h"

using namespace std;


#define LogStr1     0
#define LogStr2     1
#define LogStr3     2
#define LogStr4     3
#define LogStr5     4
#define LogStr6     5
#define ExtStr1     6
#define ExtStr2     7
#define ExtStr3     8
#define ExtStr4     9


#define LOG_BUFFER_SIZE         1024*16


typedef struct _LogMessage_
{
    bool        isTmp;
    long        extend;
    char        MsgBuffer[LOG_BUFFER_SIZE];
}LogMessage, *pLogMessage;


typedef deque<pLogMessage>       LogList;


class LogQueue
{
public:
    LogQueue();
    virtual ~LogQueue();

    virtual void Push(pLogMessage buf);
    virtual pLogMessage Pop();
    virtual pLogMessage GetTop();
    virtual void Clear();
    virtual int Size();

protected:
    LogList     m_list;
    Lock        m_lock;
};



class LogBuffer : protected LogQueue
{
public:
    LogBuffer();
    virtual ~LogBuffer();
    virtual pLogMessage GetBuffer();
    virtual void FreeBuffer(pLogMessage buf);
    virtual bool Release();     //  在单线程程序中，此函数会造成阻塞
    virtual bool SetSize(int bsize);    //  在Release之前只能设置一次size
    virtual int Size();

protected:
    virtual bool Init();

protected:
    int m_size;
};


#endif

