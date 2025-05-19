
/* * * * * * * * * * * * * * * * * * * *

    ADO ·â×°
    Jampe
    2006/3/28

 * * * * * * * * * * * * * * * * * * * */

#if !defined __CONNECTION_H__
#define __CONNECTION_H__

#pragma once


#include <windows.h>
#include "lock.h"


#import "c:\Program Files\Common Files\System\ADO\msado15.dll" \
        no_namespace rename("BOF", "ADOBOF") rename("EOF", "ADOEOF")


class jConnection
{
public:

    jConnection();
    jConnection(const char* szServer, const char* szUsername, const char* szPassword, const char* szDatabase);  //  for sqlserver
    jConnection(const char* szFilepath, const char* szPasswd);    //  for access
    virtual ~jConnection();

    virtual bool Connect();
    virtual bool Close();
    virtual int Execute(const char* szSQLStr, _RecordsetPtr lpRecordset = NULL);

    virtual bool IsConnect();

    virtual void SetConnectionString(const char* szConStr);

    virtual void SetAccessFilePath(const char* szFilepath, const char* szPasswd);
    virtual void SetSQLServerInfo(const char* szServer, const char* szUsername, const char* szPassword, const char* szDatabase);
    virtual void Init();
    virtual void Uninit();

    virtual void SetTimeOut(long timeout);

public:
    _ConnectionPtr  m_Connection;

protected:
    char            m_ConStr[1024];
    Lock            m_lock;


};



#endif


