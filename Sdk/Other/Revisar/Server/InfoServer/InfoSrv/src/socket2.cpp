
#include "socket2.h"


#pragma comment(lib, "ws2_32.lib")


//  ³õÊ¼»¯SOCKET
class InitNet
{
public:
    InitNet()
    {
        WSAStartup(0x0202, &wsaData);
    }

    ~InitNet()
    {
        WSACleanup();
    }

private:
    WSADATA wsaData;

}initNet;



Socket2::Socket2()
{
}


Socket2::Socket2(const Socket2& sock)
: m_socket(sock.m_socket)
{
    memcpy(&m_addr, &sock.m_addr, sizeof(SOCKADDR));
}


Socket2::~Socket2()
{
}


void Socket2::Create()
{
    m_socket = WSASocket(AF_INET, SOCK_STREAM, 0, NULL, 0, WSA_FLAG_OVERLAPPED);
}


void Socket2::Close()
{
    shutdown(m_socket, SD_BOTH);
    closesocket(m_socket);
}


void Socket2::Bind(ushort port)
{
    m_addr.sin_family         = AF_INET;
    m_addr.sin_addr.s_addr    = htonl(INADDR_ANY);
    m_addr.sin_port           = htons(port);

    bind(m_socket, (PSOCKADDR)&m_addr, sizeof(SOCKADDR));
}


void Socket2::Listen(int queue)
{
    listen(m_socket, queue);
}


void Socket2::Accept(Socket2& sock)
{
    int __size = sizeof(SOCKADDR);
    sock.m_socket = WSAAccept(m_socket, (PSOCKADDR)&sock.m_addr, &__size, NULL, 0);
}


bool Socket2::Connect(const char* host, ushort port)
{
    m_addr.sin_family = AF_INET;
    m_addr.sin_port = htons((u_short)port);
    m_addr.sin_addr.s_addr = inet_addr(host);

    //  dns½âÎö
    if (INADDR_NONE == m_addr.sin_addr.s_addr)
    {
        LPHOSTENT lphost;
        lphost = gethostbyname(host);

        if (lphost != NULL)
        {
            m_addr.sin_addr.s_addr = ((LPIN_ADDR)lphost->h_addr)->s_addr;
        }
    }
    return Connect();
}


bool Socket2::Connect(SOCKADDR_IN& addr)
{
    memcpy(&m_addr, &addr, sizeof(SOCKADDR));
    return Connect();
}


bool Socket2::Connect()
{
    return SOCKET_ERROR != WSAConnect(m_socket, (PSOCKADDR)&m_addr, sizeof(SOCKADDR), NULL, NULL, NULL, 0);
}


const char* Socket2::GetIPAddress()
{
    return inet_ntoa(m_addr.sin_addr);
}


ushort Socket2::GetPort()
{
    return m_addr.sin_port;
}


int Socket2::Send(LPWSABUF lpBuffers, LPDWORD lpNumberOfBytesSent, LPWSAOVERLAPPED lpOverlapped, DWORD dwBufferCount, DWORD dwFlags)
{
    return WSASend(m_socket, lpBuffers, dwBufferCount, lpNumberOfBytesSent, dwFlags, lpOverlapped, 0);
}


int Socket2::Recv(LPWSABUF lpBuffers, LPDWORD lpNumberOfBytesRecvd, LPDWORD lpFlags, LPWSAOVERLAPPED lpOverlapped, DWORD dwBufferCount)
{
    return WSARecv(m_socket, lpBuffers, dwBufferCount, lpNumberOfBytesRecvd, lpFlags, lpOverlapped, 0);
}


void Socket2::SetNoBuffer(bool nobuf)
{
    setsockopt(m_socket, IPPROTO_TCP, TCP_NODELAY,(const char*)&nobuf, sizeof(nobuf));
}


void Socket2::SetSendBufferSize(int size)
{
    setsockopt(m_socket, SOL_SOCKET, SO_SNDBUF, (const char*)&size, sizeof(size));
}


void Socket2::SetRecvBufferSize(int size)
{
    setsockopt(m_socket, SOL_SOCKET, SO_RCVBUF, (const char*)&size, sizeof(size));
}

