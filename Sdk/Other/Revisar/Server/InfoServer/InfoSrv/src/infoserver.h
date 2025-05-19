
/* * * * * * * * * * * * * * * * * * * *

    Log ServerÂß¼­²ã

 * * * * * * * * * * * * * * * * * * * */


#if !defined __LOGSERVER_H__
#define __LOGSERVER_H__



#define SERVER_INIT         1
#define SERVER_RUNNING      2
#define SERVER_STOPPED      3


class InfoServer
{
public:
    virtual ~InfoServer();

    static InfoServer* Instance();       //  µ¥Àý

    virtual bool Init();
    virtual bool Run();
    virtual bool Release();

protected:
    InfoServer();
    static InfoServer* instance;

public:
    int     m_state;

};


#define GetServerInstance()         InfoServer::Instance()


#endif
