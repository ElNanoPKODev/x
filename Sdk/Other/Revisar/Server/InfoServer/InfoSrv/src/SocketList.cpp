
#include "SocketList.h"
#include "memory.h"
#include <util.h>


extern char g_logfile[260];

ServerSocket::ServerSocket()
    : m_packet(0)
{
    memset(m_temp, 0, sizeof(m_temp));
}


ServerSocket::~ServerSocket()
{
}


bool ServerSocket::PostRecv()
{
    memset(&m_pIO, 0, sizeof(PER_IO_DATA));

    m_pIO.OperationType = RECV;
    m_pIO.DataBuf.buf = m_pIO.Buffer;
    m_pIO.DataBuf.len = BUFFER_SIZE;

    unsigned long lBytes = 0, lFlags = 0;

    if(SOCKET_ERROR == m_sock.Recv(&m_pIO.DataBuf , &lBytes, &lFlags, &m_pIO.Overlapped))
    {
        if (ERROR_IO_PENDING != WSAGetLastError())
        {
            LG(g_logfile, "=====> Exception Socket Recvive...\r\n");
            return false;
        }
    }
    return true;
}


bool ServerSocket::PostSend(const byte* buff, int size)
{
    try
    {
        if(!buff)
        {
            LG(g_logfile, "=====> Wrong Send Buffer: %s\r\n", buff);
            return false;
        }
        memset(&m_pSndIO, 0, sizeof(PER_IO_DATA));
        memcpy(m_pSndIO.Buffer, buff, size);

        m_pSndIO.OperationType = SEND;
        m_pSndIO.DataBuf.buf = m_pSndIO.Buffer;
        m_pSndIO.DataBuf.len = size;

        unsigned long lBytes = 0;

        LG(g_logfile, "IP: %s, Begin Send Buffer: %s", m_sock.GetIPAddress(), buff);
        if(SOCKET_ERROR == m_sock.Send(&m_pSndIO.DataBuf, &lBytes, &m_pSndIO.Overlapped))
        {
            if (ERROR_IO_PENDING != WSAGetLastError())
            {
                LG(g_logfile, "=====> Exception Socket Send...\r\n");
                return false;
            }
        }
        LG(g_logfile, "End Send Buffer\r\n");
        return true;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> Exception Socket Send...\r\n");
    }
    return false;
}


bool ServerSocket::PostSend(const char* buff)
{
    return PostSend((byte*)buff, (int)strlen(buff));
}





SocketList::SocketList()
{
}


SocketList::~SocketList()
{
}


void SocketList::Add(ServerSocket* sock)
{
    m_lock.lock();
    m_list.push_back(sock);
    m_lock.unlock();
}


void SocketList::Remove(ServerSocket* sock)
{
    SOCKETLIST::iterator it;

    m_lock.lock();
    for(it = m_list.begin(); it != m_list.end(); it++)
    {
        if(sock->m_sock.m_socket == (*it)->m_sock.m_socket)
        {
            (*it)->m_sock.Close();
            SAFE_DELETE(*it);
            m_list.erase(it);
            break;
        }
    }
    m_lock.unlock();
}


void SocketList::Clear()
{
    SOCKETLIST::iterator it;

    Sleep(1);   //  解决Heap问题

    m_lock.lock();
    for(it = m_list.begin(); it != m_list.end(); it++)
    {
        (*it)->m_sock.Close();
        SAFE_DELETE(*it);
    }
    m_list.clear();
    m_lock.unlock();
}


int SocketList::Size()
{
    return (int)m_list.size();
}



