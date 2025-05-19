// InfoBill.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "BillInterface.h"
#include <sqlext.h>
#include <string>

HWND m_RemoteWindow;
int a = rand()%11 + 664897843;

SQLHENV henv;
SQLHDBC hdbc;
SQLHSTMT hstmt;
SQLRETURN retcode;

int i = 5;
SQLPOINTER rgbValue = &i;

SQLCHAR OutConnStr[255];
SQLSMALLINT OutConnStrLen;
SQLINTEGER Point;
SQLINTEGER cbData;

char* SQLstat;
char* stmt;
char* stmt0;
char* stmt1;
char* stmt2;
char* stmt3;
char* stmt4;
bool SQLselect = false;
bool symbol = false;

int colfield;
const char* IpAdd;
unsigned short port1;



void DBConn()
{
	// Allocate environment handle
	retcode = SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &henv);

	// Set the ODBC version environment attribute
	if (retcode == SQL_SUCCESS || retcode == SQL_SUCCESS_WITH_INFO) {
		retcode = SQLSetEnvAttr(henv, SQL_ATTR_ODBC_VERSION, (SQLPOINTER*)SQL_OV_ODBC3, 0); 

		// Allocate connection handle
		if (retcode == SQL_SUCCESS || retcode == SQL_SUCCESS_WITH_INFO) {
			retcode = SQLAllocHandle(SQL_HANDLE_DBC, henv, &hdbc); 

			// Set login timeout to 5 seconds
			if (retcode == SQL_SUCCESS || retcode == SQL_SUCCESS_WITH_INFO) {
				SQLSetConnectAttr(hdbc, SQL_LOGIN_TIMEOUT, (SQLPOINTER)(rgbValue), 0);

				// Connect to data source
				//retcode = SQLConnect(hdbc, (SQLCHAR*) "NorthWind", SQL_NTS, (SQLCHAR*) NULL, 0, NULL, 0);

				retcode = SQLDriverConnect( // SQL_NULL_HDBC
					hdbc, 
					NULL,
					(SQLCHAR*)"driver=SQL Server;Server=127.0.0.1\Sqlexpress;Address=127.0.0.1,1433;Network=Dbnetlib;Database=TradeServer;UID=test;PWD=zxcvbnm", 
					strlen("driver=SQL Server;Server=127.0.0.1\Sqlexpress;Address=127.0.0.1,1433;Network=Dbnetlib;Database=TradeServer;UID=test;PWD=zxcvbnm"),
					OutConnStr,
					255, 
					&OutConnStrLen,
					SQL_DRIVER_NOPROMPT);

				// Allocate statement handle
				if (retcode == SQL_SUCCESS || retcode == SQL_SUCCESS_WITH_INFO) {
					retcode = SQLAllocHandle(SQL_HANDLE_STMT, hdbc, &hstmt); 
					SQLExecDirect(hstmt, (SQLCHAR*)stmt, SQL_NTS);

					if (SQLselect)
					{
						while(SQLFetch(hstmt) == SQL_SUCCESS)
						{
							SQLGetData(hstmt,colfield,SQL_C_ULONG,&Point,0,&cbData);
						}
					}
					// Process data
					if (retcode == SQL_SUCCESS || retcode == SQL_SUCCESS_WITH_INFO) {
						SQLFreeHandle(SQL_HANDLE_STMT, hstmt);
					}

					SQLDisconnect(hdbc);
				}

				SQLFreeHandle(SQL_HANDLE_DBC, hdbc);
			}
		}
		SQLFreeHandle(SQL_HANDLE_ENV, henv);
	}
}


void Selectqueryprocess(const char* account, const char* SQLstat)
{
	stmt2 = "'";
	stmt4 = ")";
	stmt0 = (char *)calloc(strlen(stmt2) + strlen(account) + 1, sizeof(char));
	strcat(stmt0,stmt2);
	strcat(stmt0,account);

	stmt1 = (char *)calloc(strlen(stmt0) + strlen(stmt2) + 1, sizeof(char));
	strcat(stmt1,stmt0);
	strcat(stmt1,stmt2);

	if (symbol)
	{
		stmt3 = (char *)calloc(strlen(SQLstat) + strlen(stmt1) + 1, sizeof(char));
		strcat(stmt3,SQLstat);
		strcat(stmt3,stmt1);

		stmt = (char *)calloc(strlen(stmt3) + strlen(stmt4) + 1, sizeof(char));
		strcat(stmt, stmt3);
		strcat(stmt, stmt4);
	}
	else
	{
		stmt = (char *)calloc(strlen(SQLstat) + strlen(stmt1) + 1, sizeof(char));
		strcat(stmt, SQLstat);
		strcat(stmt, stmt1);
	}

	DBConn();
	free(stmt0);
	free(stmt1);
	free(stmt);
}


BOOL APIENTRY DllMain( HANDLE hModule, 
					  DWORD  ul_reason_for_call, 
					  LPVOID lpReserved
					  )
{
	return TRUE;
}


int bilVersion()
{
	return 1.36;
}

int bilInit(bilInstance instance)
{	
	PostMessage(m_RemoteWindow,MLY_bilStatus,STAT_ONLINE,NULL);
	m_RemoteWindow = instance;
	return 1;
}

int bilTerminate()
{
	PostMessage(m_RemoteWindow,MLY_bilStatus,STAT_OFFLINE,NULL);
	return 1;
}


int bilConnect(const char** ip, unsigned short* port, int count)
{
	IpAdd = ip[0];
	port1 = *port;

	PostMessage(m_RemoteWindow,MLY_bilStatus,STAT_ONLINE,NULL);	
	return 1;
}


int bilDisconnect()
{
	PostMessage(m_RemoteWindow,MLY_bilStatus,STAT_OFFLINE,NULL);
	return 1;
}


int bilTrade(const char* order, const char* current_time, const char* account, const char* character, const char* ip , long credit, int rate, const char* server_info, const char* memo)
{
	SQLselect = true;
	colfield = 1;
	sprintf(stmt,"SELECT credit from account_point WHERE acc_id = (SELECT id from account_login WHERE name = '%s')",account);
	DBConn();
	a+=2;

	if (Point + credit >=0)
	{

		Point = Point + credit;

		SQLselect = false;

		sprintf(stmt,"UPDATE account_point SET credit = '%d' WHERE acc_id = (SELECT id from account_login WHERE name = '%s')",Point,account);
		DBConn();


		PostMessage(m_RemoteWindow,MLY_bilNotify,a,RET_SUCCEED);

	}
	else
	{

		PostMessage(m_RemoteWindow,MLY_bilNotify,a,RET_NO_MONEY);

	}
	return a;
}


int bilRegisterVIP(const char* order, const char* current_time, const char* account, long month, long credit, long vip_type, const char* ip, const char* server_info, const char* memo)
{	
	SQLselect = true;
	colfield = 1;
	sprintf(stmt,"SELECT credit from account_point WHERE acc_id = (SELECT id from account_login WHERE name = '%s')",account);
	DBConn();
	a+=2;

	if (Point + credit >=0)
	{
		Point = Point + credit;

		SQLselect = false;

		sprintf(stmt,"UPDATE account_point SET credit = '%d' WHERE acc_id = (SELECT id from account_login WHERE name = '%s')",Point,account);
		DBConn();
		sprintf(stmt,"UPDATE account_login SET sid = 1 WHERE name = '%s'",account);
		DBConn();

		PostMessage(m_RemoteWindow,MLY_bilNotify,a,RET_SUCCEED);
	}
	else
	{

		PostMessage(m_RemoteWindow,MLY_bilNotify,a,RET_NO_MONEY);

	}
	return a;
}


int bilQuery(const char* account, int query)
{		
	if (query == QUERY_MONEY)
	{
		SQLselect = true;
		colfield = 1;
		//sprintf(stmt,"SELECT credit from account_point WHERE acc_id = (SELECT id from account_login WHERE name = '%s')",account);
		//DBConn();
		symbol = true;
		SQLstat = "SELECT credit from account_point WHERE acc_id = (SELECT id from account_login WHERE name = ";
		Selectqueryprocess(account,SQLstat);
		a+=2;
		PostMessage(m_RemoteWindow,MLY_bilNotify,a,Point);
		return a;
	}


	if(query == QUERY_KOP_ACCOUNT)
	{
		a+=2;
		PostMessage(m_RemoteWindow,MLY_bilNotify,a,RET_SUCCEED);
		return a;
	}

	if(query == QUERY_KOP_VIP_TYPE)
	{
		SQLselect = true;
		colfield = 1;
		symbol = false;
		SQLstat = "SELECT sid from account_login WHERE name = ";
		Selectqueryprocess(account,SQLstat);
		a+=2;
		PostMessage(m_RemoteWindow,MLY_bilNotify,a,Point);
		return a;
	}
	a+=2;
	return a;
}


int bilRecord(const char* order, const char* account, const char* character, const char* ip, long store_id, const char* store_name, long store_class, const char* current_time, long credit, long number, const char* server_info, long result)
{

	a+=2;
	PostMessage(m_RemoteWindow,MLY_bilNotify,a,RET_SUCCEED);

	return a;
}