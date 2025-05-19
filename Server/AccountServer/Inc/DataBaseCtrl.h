#pragma once

#include "atltime.h"

class CSQLDatabase;

//此类只允许主线程调用
class CDataBaseCtrl
{
public:
	CDataBaseCtrl(void);
	~CDataBaseCtrl(void);
	bool CreateObject();
	void ReleaseObject();
	bool KickUser(std::string strUserName);

    void SetExpScale(std::string strUserName, long time);

	bool UserLogin(int nUserID, std::string strUserName, std::string strIP);
	bool UserLogout(int nUserID);
	bool UserLoginMap(std::string strUserName, std::string strPassport);
	bool UserLogoutMap(std::string strUserName);

private:
	struct sPlayerData
	{
		CTime ctLoginTime;
	};
	typedef std::map<std::string, CDataBaseCtrl::sPlayerData> StringMap;

private:
	bool Connect();
	bool IsConnect();
	void Disconnect();

private:
	std::string m_strServerIP;
	std::string m_strServerDB;
	std::string m_strUserID;
	std::string m_strUserPwd;
	CSQLDatabase* m_pDataBase;
	StringMap m_mapUsers;
};
