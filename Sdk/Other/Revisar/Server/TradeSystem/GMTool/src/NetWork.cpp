
#include "head.h"
#include "NetWork.h"


extern MailInfo g_CurMail;
extern long g_totalMail;
extern long g_CurMailServID;
extern bool g_loaded;


NetWork::NetWork()
    :   m_loginState(LGN_INIT)
{
}


NetWork::~NetWork()
{
}


void NetWork::OnConnect(bool result)
{
    if(result)
    {
        m_loginState = LGN_WAITING;
        PostInfoSend(INFO_LOGIN, 0, 0, m_section, (byte*)g_key, 33);
    }
}


void NetWork::OnNetMessage(pNetMessage msg)
{
    switch(msg->msgHead.msgID)
    {
    case INFO_LOGIN:
        {
            switch(msg->msgHead.subID)
            {
            case INFO_SUCCESS:
                {
                    m_loginState = LGN_SUCCESS;
                }  break;
            case INFO_FAILED:
                {
                    m_loginState = LGN_FAILT;
                }  break;
            }
        }  break;
    case INFO_GET_GM_MAIL:
        {
            switch(msg->msgHead.subID)
            {
            case INFO_SUCCESS:
                {
                    memcpy(&g_CurMail, (byte*)msg->msgBody + sizeof(long long), sizeof(MailInfo));
                    g_CurMailServID = msg->msgHead.msgExtend;
                    g_loaded = true;
                }  break;
            case INFO_FAILED:
                {
                    MessageBox(0, "No Mail.", "Notify", 0);
                    g_loaded = true;
                }  break;
            }
        }  break;
    case INFO_MAIL_QUEUE:
        {
            g_totalMail = msg->msgHead.msgExtend;
        }  break;
    }
    FreeNetMessage(msg);
}


void NetWork::OnResend(pNetMessage msg)
{
}


void NetWork::OnDisconnect()
{
}


