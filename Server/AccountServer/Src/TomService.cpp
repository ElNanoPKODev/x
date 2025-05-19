#define _CRTDBG_MAP_ALLOC
#include <stdlib.h>
#include <crtdbg.h>

#include "AccountServer2.h"
#include "inifile.h"
#include ".\tomservice.h"
#include "GlobalVariable.h"

CTomService::CTomService(void)
{
	m_hTomMod=NULL;
	pUserAttestFun=NULL;
	pGameOnlineFun=NULL;
	m_bEnableService=false;
	IniFile inf(g_strCfgFile.c_str());
	IniSection& is = inf["tom"];
	int enable = atoi(is["enable_tom"]);
	m_bEnableService=(enable>0);
}

CTomService::~CTomService(void)
{
	if (m_hTomMod)
	{
		FreeLibrary(m_hTomMod);
		m_hTomMod=NULL;
	}
}

bool CTomService::InitService()
{
	if (!m_bEnableService) return true;
	printf("Initial Tom service system...");
	char *lpszDllPath=NULL;
#ifdef _DEBUG
	lpszDllPath="UserAttestReportOnlineProxyD.dll" ;
#else
	lpszDllPath="UserAttestReportOnlineProxy.dll" ;
#endif
	m_hTomMod=LoadLibrary(lpszDllPath);
	if (!m_hTomMod)
	{
		printf("Failure!\nCannot LoadLibrary :");
		printf(lpszDllPath);
		printf("\n");
		return false;
	}
	pUserAttestFun=(UserAttest)GetProcAddress(m_hTomMod,"UserAttest");
	if (!pUserAttestFun)
	{
		printf("Failure!\nCannot found the function \"UserAttest\" in GetProcAddress !\n");
		return false;
	}
	pGameOnlineFun=(GameOnline)GetProcAddress(m_hTomMod,"GameOnline");
	if (!pGameOnlineFun)
	{
		printf("Failure!\nCannot found the function \"GameOnline\" in GetProcAddress !\n");
		return false;
	}
	printf("Success!!\n");
	return true;
}

bool CTomService::VerifyLoginMember(const char* lpszUserName, const char* lpszMD5PSW)
{
	if (!m_bEnableService) return false;
	return pUserAttestFun((char*)lpszUserName, (char*)lpszMD5PSW);
}

void CTomService::ReportMemberCounts(int nCounts)
{
	if (!m_bEnableService) return;
	//printf("Report online user numbers : %d\r\n", nCounts);
	LG("MemberCount", "Report online user numbers : %d\r\n", nCounts);
	pGameOnlineFun(nCounts);
}

bool CTomService::IsEnable()
{
	return m_bEnableService;
}
//
//CTomService::eState CTomService::CheckMemberState(const char* lpszUserName)
//{
//	//m_mapUserState.find(lpszUserName);
//	return eState_LoginLocked;
//}


