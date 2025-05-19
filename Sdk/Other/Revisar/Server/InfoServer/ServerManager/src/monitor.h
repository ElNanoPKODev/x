
#if !defined __MONITOR_H__
#define __MONITOR_H__

#include "thread.h"


class MNIT_Client : public Thread
{
public:
    MNIT_Client();
    ~MNIT_Client();

    unsigned Run();

public:
    HANDLE  m_hPipe;
    char    m_path[MAX_PATH];
};


class Monitor : public Thread
{
public:
    Monitor();
    virtual ~Monitor();

    unsigned Run();
};


#endif
