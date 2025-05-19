

#include "ADO.h"
#include <string.h>
#include "datatype.h"
#include <util.h>

extern char g_logfile[260];

//  初始化COM
class jInitCom
{
public:
    jInitCom()
    {
        CoInitialize(NULL);
    }

    ~jInitCom()
    {
        CoUninitialize();
    }

    static jInitCom* Instance()
    {
        //static jInitCom instance;
        //return &instance;
        if(!instance)
        {
            instance = new jInitCom;
        }
        return instance;
    }
protected:
    static jInitCom* instance;
};

jInitCom* jInitCom::instance = 0;


#define InitCom()   jInitCom::Instance()



jConnection::jConnection()
{
    Init();
}


jConnection::~jConnection()
{
    Uninit();
}


jConnection::jConnection(const char* szServer, const char* szUsername, const char* szPassword, const char* szDatabase)
{
    SetSQLServerInfo(szServer, szUsername, szPassword, szDatabase);
    Init();
}

jConnection::jConnection(const char* szFilepath, const char* szPasswd)
{
    SetAccessFilePath(szFilepath, szPasswd);
    Init();
}


void jConnection::Init(void)
{
    try
    {
        InitCom();
        m_Connection.CreateInstance("ADODB.Connection");

		//m_Connection->CommandTimeout = 60 * 5;
    }
    catch(...)
    {
        LG(g_logfile, "=====> ADO Connection Object Init Exception...\r\n");
    }
}


void jConnection::Uninit(void)
{
    try
    {
        if(m_Connection.GetInterfacePtr())
        {
            m_Connection.Release();
        }
    }
    catch(...)
    {
        LG(g_logfile, "=====> ADO Connection Object Uninit Exception...\r\n");
    }
}


bool jConnection::Connect()
{
    m_lock.lock();
    LG(g_logfile, "ADO Connection Object Try To Connect DB...\r\n");
    try
    {
        if(adStateClosed != m_Connection->GetState())
        {
            m_lock.unlock();
            //对象已打开
            return true;
        }
        //LG(g_logfile, "Connection String: %s...\r\n", m_ConStr);
        HRESULT ret = m_Connection->Open((_bstr_t) m_ConStr, "", "", adConnectUnspecified);
        m_lock.unlock();
        LG(g_logfile, "ADO Connection Object Connect DB Success...\r\n");
        return S_OK == ret;
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "=====> ADO Connection Object Connect DB Exception...\r\n");
        m_lock.unlock();
        throw e;
    }
    m_lock.unlock();
    return false;
}


bool jConnection::Close()
{
    m_lock.lock();
    LG(g_logfile, "Try To Close ADO Connection Object...\r\n");
    try
    {
        if(adStateClosed == m_Connection->GetState())
        {
            m_lock.unlock();
            //对象已关闭
            return true;
        }
        HRESULT ret = m_Connection->Close();
        m_lock.unlock();
        LG(g_logfile, "Close ADO Connection Object Success...\r\n");
        return S_OK == ret;
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "=====> Close ADO Connection Object Exception...\r\n");
        m_lock.unlock();
        throw e;
    }
    m_lock.unlock();
    return false;
}


int jConnection::Execute(const char* szSQLStr, _RecordsetPtr lpRecordset)
{
    /*
        返回值说明
        0 或 正数 操作所影响行数（无记录集）
        -1 参数返回记录集
    */

    m_lock.lock();
    LG(g_logfile, "Try To Execute SQL: %s...\r\n", szSQLStr);
    try
    {
        if(lpRecordset)
        {
            if(adStateOpen == lpRecordset->GetState())
            {
                lpRecordset->Close();
            }
            lpRecordset->Open((_variant_t)szSQLStr, m_Connection.GetInterfacePtr(), adOpenForwardOnly, adLockReadOnly, adCmdUnknown);
            m_lock.unlock();
            LG(g_logfile, "Execute SQL Success...\r\n");
            return -1;
        }
        else
        {
            _variant_t aff;//影响行数
            m_Connection->Execute((_bstr_t)szSQLStr, &aff, adCmdUnknown);
            m_lock.unlock();
            LG(g_logfile, "Execute SQL Success, Affected %i...\r\n", (int)aff);
            return (int)aff;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "=====> Execute SQL Exception...\r\n");
        m_lock.unlock();
        throw e;
    }
    m_lock.unlock();
    return 0;
}


void jConnection::SetAccessFilePath(const char* szFilepath, const char* szPasswd)
{
    //  Provider=Microsoft.Jet.OLEDB.4.0;Data Source={database}
    strcpy(m_ConStr, "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=");
    strcat(m_ConStr, szFilepath);
    strcat(m_ConStr, ";Jet OLEDB:Database Password=");
    strcat(m_ConStr, szPasswd);
}


void jConnection::SetSQLServerInfo(const char* szServer, const char* szUsername, const char* szPassword, const char* szDatabase)
{
    //  Provider=SQLOLEDB;Server={server};UID={username};PWD={password};Database={database}
    strcpy(m_ConStr, "Provider=SQLOLEDB;Server=");
    strcat(m_ConStr, szServer);
    strcat(m_ConStr, ";UID=");
    strcat(m_ConStr, szUsername);
    strcat(m_ConStr, ";PWD=");
    strcat(m_ConStr, szPassword);
    strcat(m_ConStr, ";Database=");
    strcat(m_ConStr, szDatabase);
}


bool jConnection::IsConnect()
{
    m_lock.lock();
    try
    {
        //LG(g_logfile, "Begin Get Connection State...\r\n");
        long ret = m_Connection->GetState();
        m_lock.unlock();
        //LG(g_logfile, "End Get Connection State...\r\n");
        return adStateClosed != ret;
    }
    catch(...)
    {
        LG(g_logfile, "=====> IsConnect Exception...\r\n");
    }
    m_lock.unlock();
    return false;
}


void jConnection::SetConnectionString(const char* szConStr)
{
    strncpy(m_ConStr, szConStr, 1024);
}


void jConnection::SetTimeOut(long timeout)
{
    m_Connection->PutConnectionTimeout(timeout);
    m_Connection->PutCommandTimeout(timeout);
}

