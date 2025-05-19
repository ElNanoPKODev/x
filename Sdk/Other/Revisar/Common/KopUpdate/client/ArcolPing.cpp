#include "StdAfx.h"
#include ".\arcolping.h"
#include "Winsock2.h"

#define ICMP_ECHOREPLY	0
#define ICMP_ECHO		8
#define ICMP_MIN		8

#define DEFAULT_PACKET_SIZE	32
#define MAX_PACKET_SIZE		1024

typedef struct iphdr {
	unsigned int	h_len:4;
	unsigned int	version:4;
	unsigned char	tos;
	unsigned short	total_len;
	unsigned short	ident;
	unsigned short	frag_and_flags;
	unsigned char	ttl;
	unsigned char	proto;
	unsigned short	checksum;
	unsigned int	sourceIP;
	unsigned int	destIP;
} IpHeader;

typedef struct icmphdr {
	BYTE	i_type;
	BYTE	i_code;
	USHORT	i_chksum;
	USHORT	i_id;	
	USHORT	i_seq;	
	ULONG	timestamp;
} IcmpHeader;

CArcolPing::CArcolPing(DWORD dwTimeout)
{
	m_bInit=false;
	m_dwTimeout=dwTimeout;
	m_IcmpData = (char *)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, MAX_PACKET_SIZE);
	m_RecvBuf = (char *)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, MAX_PACKET_SIZE);
	if (!m_IcmpData || !m_RecvBuf)
		return;
	if ((m_sICMP = WSASocket(AF_INET, SOCK_RAW, IPPROTO_ICMP, NULL, 0, WSA_FLAG_OVERLAPPED)) == INVALID_SOCKET)
		return;
	if (setsockopt(m_sICMP, SOL_SOCKET, SO_RCVTIMEO, (char *)&m_dwTimeout, sizeof(m_dwTimeout)) == SOCKET_ERROR)
		return;
	if (setsockopt(m_sICMP, SOL_SOCKET, SO_SNDTIMEO, (char *)&m_dwTimeout, sizeof(m_dwTimeout)) == SOCKET_ERROR)
		return;
	m_bInit=true;
}

CArcolPing::~CArcolPing(void)
{
	if (m_bInit)
	{
		if (m_IcmpData) HeapFree (GetProcessHeap(), 0, m_IcmpData);
		if (m_RecvBuf) HeapFree (GetProcessHeap(), 0, m_RecvBuf);
	}
}

int CArcolPing::Ping(CString strAddr)
{
	DWORD dwAddr= inet_addr(strAddr);
	if (dwAddr == INADDR_NONE)
	{
		struct hostent *host=gethostbyname(strAddr);
		if (host)
		{
			return Ping(*(DWORD*)host->h_addr_list[0]);
		}
		else
			return -1;
	}
	return Ping(dwAddr);
}

int CArcolPing::Ping(DWORD dwAddr)
{
	if (!m_bInit) return -1;
	struct sockaddr_in	sToAddr,sFromAddr;
	sToAddr.sin_addr.s_addr = dwAddr;
	sToAddr.sin_family = AF_INET;
	int nFromLen = sizeof(sFromAddr);
	int datasize = DEFAULT_PACKET_SIZE;

	memset(m_IcmpData + sizeof(IcmpHeader), 'E', datasize - sizeof(IcmpHeader));
	((IcmpHeader *)m_IcmpData)->i_type = ICMP_ECHO;
	((IcmpHeader *)m_IcmpData)->i_code = 0;
	((IcmpHeader *)m_IcmpData)->i_chksum = 0;
	((IcmpHeader *)m_IcmpData)->i_id = (USHORT)GetCurrentProcessId();
	((IcmpHeader *)m_IcmpData)->i_seq = 0;
	((IcmpHeader *)m_IcmpData)->timestamp = GetTickCount();
	((IcmpHeader *)m_IcmpData)->i_chksum = GetCheckSum((USHORT *)m_IcmpData, datasize);

	if (sendto(m_sICMP, m_IcmpData, datasize, 0, (struct sockaddr *)&sToAddr, sizeof(sToAddr)) == SOCKET_ERROR)
		return -1;

	DWORD dwStartTick=GetTickCount();
	while (GetTickCount() - dwStartTick <= m_dwTimeout)
	{
		int nRead = recvfrom(m_sICMP, m_RecvBuf, MAX_PACKET_SIZE, 0, (struct sockaddr *)&sFromAddr, &nFromLen);
		if (nRead == SOCKET_ERROR || nRead < (int)((IpHeader *)m_RecvBuf)->h_len * 4 + ICMP_MIN)
			return -1;

		IcmpHeader	*icmphdr = (IcmpHeader*)(m_RecvBuf + ((IpHeader *)m_RecvBuf)->h_len * 4);
		if (icmphdr->i_type == ICMP_ECHOREPLY && icmphdr->i_id == (WORD)GetCurrentProcessId())
			return GetTickCount() - icmphdr->timestamp;
	}
	return -1;
}

WORD CArcolPing::GetCheckSum(WORD *buffer, int size)
{
	DWORD	cksum=0;

	while (size > 1)
	{
		cksum += *buffer++;
		size  -= sizeof(WORD);
	}
	if (size)
		cksum += *(BYTE *)buffer;
	cksum =  (cksum >> 16) + (cksum & 0xffff);
	cksum += (cksum >> 16);

	return (WORD)(~cksum);
}
