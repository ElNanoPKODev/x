#pragma once

class CArcolPing
{
public:
	CArcolPing(DWORD dwTimeout);
	~CArcolPing(void);
	int Ping(CString strAddr);
	int Ping(DWORD dwAddr);

private:
	WORD GetCheckSum(WORD *buffer, int size);

private:
	SOCKET m_sICMP;
	char *m_IcmpData;
	char *m_RecvBuf;
	bool m_bInit;
	DWORD m_dwTimeout;
};
