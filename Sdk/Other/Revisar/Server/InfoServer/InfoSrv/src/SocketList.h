
/* * * * * * * * * * * * * * * * * * * *

    Socket列表

 * * * * * * * * * * * * * * * * * * * */


#include <vector>
#include "Socket2.h"
#include "lock.h"

using namespace std;


#define BUFFER_SIZE     1024*16
#define RECV            0
#define SEND            1


//--------------------------------------------------
//  单IO数据
//  消息数据
//--------------------------------------------------
typedef struct _PER_IO_DATA_
{
    OVERLAPPED      Overlapped;
    WSABUF          DataBuf;
    char            Buffer[BUFFER_SIZE];
    int             OperationType;
} PER_IO_DATA, * pPER_IO_DATA;


class ServerSocket
{
public:
    ServerSocket();
    virtual ~ServerSocket();

    virtual bool PostRecv();
    virtual bool PostSend(const byte* buff, int size);
    virtual bool PostSend(const char* buff);

public:
    PER_IO_DATA         m_pIO;
    PER_IO_DATA         m_pSndIO;
    Socket2             m_sock;
    ulong               m_packet;
    char                m_temp[1024];
    bool                m_check;

};


typedef vector<ServerSocket*>   SOCKETLIST;


class SocketList
{
public:
    SocketList();
    virtual ~SocketList();

    virtual void Add(ServerSocket* sock);
    virtual void Remove(ServerSocket* sock);
    virtual void Clear();
    virtual int Size();

public:
    SOCKETLIST  m_list;
    Lock        m_lock;

};

