
/* * * * * * * * * * * * * * * * * * * *

    SOCKET 2.2 ·â×°
    Jampe
    2006/3/28

 * * * * * * * * * * * * * * * * * * * */


#if !defined __SOCKET_H__
#define __SOCKET_H__

#include <winsock2.h>
#include <windows.h>
#include "datatype.h"


class Socket2
{
public:
    Socket2();
    Socket2(const Socket2& sock);
    virtual ~Socket2();
    virtual void Create();
    virtual void Close();
    virtual void Bind(ushort port);
    virtual void Listen(int queue = SOMAXCONN);
    virtual void Accept(Socket2& sock);
    virtual bool Connect(const char* host, ushort port);
    virtual bool Connect(SOCKADDR_IN& addr);
    virtual const char* GetIPAddress();
    virtual ushort GetPort();
    virtual int Send(LPWSABUF lpBuffers, LPDWORD lpNumberOfBytesSent, LPWSAOVERLAPPED lpOverlapped, DWORD dwBufferCount = 1, DWORD dwFlags = 0);
    virtual int Recv(LPWSABUF lpBuffers, LPDWORD lpNumberOfBytesRecvd, LPDWORD lpFlags, LPWSAOVERLAPPED lpOverlapped, DWORD dwBufferCount = 1);
    virtual void SetNoBuffer(bool nobuf = true);
    virtual void SetSendBufferSize(int size);
    virtual void SetRecvBufferSize(int size);

protected:
    virtual bool Connect();

public:
    SOCKET          m_socket;
    SOCKADDR_IN     m_addr;
};


#endif
