
/* * * * * * * * * * * * * * * * * * * *

    ∑≠“ÎÕ¯¬Á–≠“È
    Jampe
    2006/4/24

 * * * * * * * * * * * * * * * * * * * */



#define FIELD1              0
#define FIELD2              1
#define FIELD3              2
#define FIELD4              3
#define FIELD5              4
#define FIELD6              5
#define FIELD7              6
#define FIELD8              7
#define FIELD9              8
#define FIELD10             9
#define FIELD11             10
#define FIELD12             11
#define FIELD13             12
#define FIELD14             13
#define FIELD15             14
#define FIELD16             15
#define FIELD17             16
#define FIELD18             17
#define FIELD19             18
#define FIELD20             19
#define FIELD21             20
#define FIELD22             21
#define FIELD23             22
#define FIELD24             23
#define FIELD25             24
#define FIELD26             25
#define FIELD27             26
#define FIELD28             27
#define FIELD29             28
#define FIELD30             29
#define FIELD31             30
#define FIELD32             31



typedef struct _AgentMSG_
{
    long            msgID;
    long            section;
    char            timeStamp[32];
    char            field[32][128];
    int             state;
}AgentMsg, *pAgentMsg;





class TranslateProtocol
{
public:
    TranslateProtocol();
    virtual ~TranslateProtocol();

    virtual void SetProtocolPtr(const char* prot);
    virtual const char* GetColumn(char splite);
    virtual long Replace(char oldchr, char newchr);
    virtual bool IsNumber(const char* numStr);
    virtual pAgentMsg PeekMSG(const char* msg);

protected:
    char*       m_ptr;
};


