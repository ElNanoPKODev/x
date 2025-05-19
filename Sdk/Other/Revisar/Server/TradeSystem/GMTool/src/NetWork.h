

#if !defined __NETWORK_H__
#define __NETWORK_H__

#include <InfoNet.h>


#define LGN_INIT            0
#define LGN_WAITING         1
#define LGN_SUCCESS         2
#define LGN_FAILT           3




class NetWork : public InfoNetBase
{
public:
    NetWork();
    virtual ~NetWork();
    virtual void OnConnect(bool result);
    virtual void OnNetMessage(pNetMessage msg);
    virtual void OnResend(pNetMessage msg);
    virtual void OnDisconnect();

public:
    long            m_section;
    long            m_loginState;
};


#endif
