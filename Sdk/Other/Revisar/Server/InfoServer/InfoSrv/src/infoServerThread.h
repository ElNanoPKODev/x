

/* * * * * * * * * * * * * * * * * * * *

    Log Server工作线程

 * * * * * * * * * * * * * * * * * * * */



#include "thread.h"


class AcceptThread : public Thread
{
public:
    AcceptThread();
    virtual ~AcceptThread();

    virtual uint Run();
};




class IOCPWorkThread : public Thread
{
public:
    IOCPWorkThread();
    virtual ~IOCPWorkThread();

    virtual uint Run();
};



class DBThread : public Thread
{
public:
    DBThread();
    virtual ~DBThread();

    virtual uint Run();

public:
    bool    m_exit;

};




