

#include "config.h"
#include "ItemFunc.h"
#include "translateprotocol.h"
#include <string>
#include <time.h>
#include <enclib.h>
#include <math.h>
#include <stdlib.h>

#include <ATLComTime.h>

extern CFG  g_cfg;
extern jConnection g_conn;
extern jConnection g_trad;
extern char g_logfile[260];


const char* NowTime()
{
    time_t now = time(0);
    tm* nowTime = localtime(&now);

    static char retTime[32] = {0};

    strftime(retTime, 32, "%Y-%m-%d %H:%M:%S", nowTime);

    return retTime;
}





ItemFunc::ItemFunc()
{
}


ItemFunc::~ItemFunc()
{
}


short ItemFunc::CorvItem_COE(const char* item)
{
    if(0 == strcmp(item, "Strength Bonus"))
    {
        return ITEMATTR_COE_STR;
    }
    else if(0 == strcmp(item, "Agility Bonus"))
    {
        return ITEMATTR_COE_AGI;
    }
    else if(0 == strcmp(item, "Accuracy Bonus"))
    {
        return ITEMATTR_COE_DEX;
    }
    else if(0 == strcmp(item, "Constitution Bonus"))
    {
        return ITEMATTR_COE_CON;
    }
    else if(0 == strcmp(item, "Spirit Bonus"))
    {
        return ITEMATTR_COE_STA;
    }
    else if(0 == strcmp(item, "Luck Bonus"))
    {
        return ITEMATTR_COE_LUK;
    }
    else if(0 == strcmp(item, "Hit Rate Bonus"))
    {
        return ITEMATTR_COE_ASPD;
    }
    else if(0 == strcmp(item, "Attack Range Bonus"))
    {
        return ITEMATTR_COE_ADIS;
    }
    else if(0 == strcmp(item, "Min Attack Bonus"))
    {
        return ITEMATTR_COE_MNATK;
    }
    else if(0 == strcmp(item, "Max Attack Bonus"))
    {
        return ITEMATTR_COE_MXATK;
    }
    else if(0 == strcmp(item, "Defense Bonus"))
    {
        return ITEMATTR_COE_DEF;
    }
    else if(0 == strcmp(item, "Max HP Bonus"))
    {
        return ITEMATTR_COE_MXHP;
    }
    else if(0 == strcmp(item, "Max SP Bonus"))
    {
        return ITEMATTR_COE_MXSP;
    }
    else if(0 == strcmp(item, "Dodge Bonus"))
    {
        return ITEMATTR_COE_FLEE;
    }
    else if(0 == strcmp(item, "Accuracy Rate Bonus"))
    {
        return ITEMATTR_COE_HIT;
    }
    else if(0 == strcmp(item, "Berserk Rate Bonus"))
    {
        return ITEMATTR_COE_CRT;
    }
    else if(0 == strcmp(item, "Treasure Drop Bonus"))
    {
        return ITEMATTR_COE_MF;
    }
    else if(0 == strcmp(item, "HP Recovery Rate Bonus"))
    {
        return ITEMATTR_COE_HREC;
    }
    else if(0 == strcmp(item, "SP Recovery Rate Bonus"))
    {
        return ITEMATTR_COE_SREC;
    }
    else if(0 == strcmp(item, "Movement Speed Bonus"))
    {
        return ITEMATTR_COE_MSPD;
    }
    else if(0 == strcmp(item, "Gathering Rate Bonus"))
    {
        return ITEMATTR_COE_COL;
    }
    else
    {
        return 0;
    }
    return 0;
}


short ItemFunc::CorvItem_VAL(const char* item)
{
    if(0 == strcmp(item, "Strength Bonus"))
    {
        return ITEMATTR_VAL_STR;
    }
    else if(0 == strcmp(item, "Agility Bonus"))
    {
        return ITEMATTR_VAL_AGI;
    }
    else if(0 == strcmp(item, "Accuracy Bonus"))
    {
        return ITEMATTR_VAL_DEX;
    }
    else if(0 == strcmp(item, "Constitution Bonus"))
    {
        return ITEMATTR_VAL_CON;
    }
    else if(0 == strcmp(item, "Spirit Bonus"))
    {
        return ITEMATTR_VAL_STA;
    }
    else if(0 == strcmp(item, "Luck Bonus"))
    {
        return ITEMATTR_VAL_LUK;
    }
    else if(0 == strcmp(item, "Hit Rate Bonus"))
    {
        return ITEMATTR_VAL_ASPD;
    }
    else if(0 == strcmp(item, "Attack Range Bonus"))
    {
        return ITEMATTR_VAL_ADIS;
    }
    else if(0 == strcmp(item, "Min Attack Bonus"))
    {
        return ITEMATTR_VAL_MNATK;
    }
    else if(0 == strcmp(item, "Max Attack Bonus"))
    {
        return ITEMATTR_VAL_MXATK;
    }
    else if(0 == strcmp(item, "Defense Bonus"))
    {
        return ITEMATTR_VAL_DEF;
    }
    else if(0 == strcmp(item, "Max HP Bonus"))
    {
        return ITEMATTR_VAL_MXHP;
    }
    else if(0 == strcmp(item, "Max SP Bonus"))
    {
        return ITEMATTR_VAL_MXSP;
    }
    else if(0 == strcmp(item, "Dodge Bonus"))
    {
        return ITEMATTR_VAL_FLEE;
    }
    else if(0 == strcmp(item, "Accuracy Rate Bonus"))
    {
        return ITEMATTR_VAL_HIT;
    }
    else if(0 == strcmp(item, "Berserk Rate Bonus"))
    {
        return ITEMATTR_VAL_CRT;
    }
    else if(0 == strcmp(item, "Treasure Drop Bonus"))
    {
        return ITEMATTR_VAL_MF;
    }
    else if(0 == strcmp(item, "HP Recovery Rate Bonus"))
    {
        return ITEMATTR_VAL_HREC;
    }
    else if(0 == strcmp(item, "SP Recovery Rate Bonus"))
    {
        return ITEMATTR_VAL_SREC;
    }
    else if(0 == strcmp(item, "Movement Speed Bonus"))
    {
        return ITEMATTR_VAL_MSPD;
    }
    else if(0 == strcmp(item, "Gathering Rate Bonus"))
    {
        return ITEMATTR_VAL_COL;
    }
    else if(0 == strcmp(item, "Physical Resist Bonus"))
    {
        return ITEMATTR_VAL_PDEF;
    }
    else
    {
        return 0;
    }
    return 0;
}


short ItemFunc::GetCoe(CItemRecord* pCItemRec, int type, int index)
{
    switch(type)
    {
    case ITEMATTR_COE_STR:
        {
            return pCItemRec->sStrCoef;
        }  break;
    case ITEMATTR_COE_AGI:
        {
            return pCItemRec->sAgiCoef;
        }  break;
    case ITEMATTR_COE_DEX:
        {
            return pCItemRec->sDexCoef;
        }  break;
    case ITEMATTR_COE_CON:
        {
            return pCItemRec->sConCoef;
        }  break;
    case ITEMATTR_COE_STA:
        {
            return pCItemRec->sStaCoef;
        }  break;
    case ITEMATTR_COE_LUK:
        {
            return pCItemRec->sLukCoef;
        }  break;
    case ITEMATTR_COE_ASPD:
        {
            return pCItemRec->sASpdCoef;
        }  break;
    case ITEMATTR_COE_ADIS:
        {
            return pCItemRec->sADisCoef;
        }  break;
    case ITEMATTR_COE_MNATK:
        {
            return pCItemRec->sMnAtkCoef;
        }  break;
    case ITEMATTR_COE_MXATK:
        {
            return pCItemRec->sMxAtkCoef;
        }  break;
    case ITEMATTR_COE_DEF:
        {
            return pCItemRec->sDefCoef;
        }  break;
    case ITEMATTR_COE_MXHP:
        {
            return pCItemRec->sMxHpCoef;
        }  break;
    case ITEMATTR_COE_MXSP:
        {
            return pCItemRec->sMxSpCoef;
        }  break;
    case ITEMATTR_COE_FLEE:
        {
            return pCItemRec->sFleeCoef;
        }  break;
    case ITEMATTR_COE_HIT:
        {
            return pCItemRec->sHitCoef;
        }  break;
    case ITEMATTR_COE_CRT:
        {
            return pCItemRec->sCrtCoef;
        }  break;
    case ITEMATTR_COE_MF:
        {
            return pCItemRec->sMfCoef;
        }  break;
    case ITEMATTR_COE_HREC:
        {
            return pCItemRec->sHRecCoef;
        }  break;
    case ITEMATTR_COE_SREC:
        {
            return pCItemRec->sSRecCoef;
        }  break;
    case ITEMATTR_COE_MSPD:
        {
            return pCItemRec->sMSpdCoef;
        }  break;
    case ITEMATTR_COE_COL:
        {
            return pCItemRec->sColCoef;
        }  break;
    default:
        {
            return 0;
        }  break;
    }
    return 0;
}


short ItemFunc::GetVal(CItemRecord* pCItemRec, int type, int index)
{
    switch(type)
    {
    case ITEMATTR_VAL_STR:
        {
            return pCItemRec->sStrValu[index];
        }  break;
    case ITEMATTR_VAL_AGI:
        {
            return pCItemRec->sAgiValu[index];
        }  break;
    case ITEMATTR_VAL_DEX:
        {
            return pCItemRec->sDexValu[index];
        }  break;
    case ITEMATTR_VAL_CON:
        {
            return pCItemRec->sConValu[index];
        }  break;
    case ITEMATTR_VAL_STA:
        {
            return pCItemRec->sStaValu[index];
        }  break;
    case ITEMATTR_VAL_LUK:
        {
            return pCItemRec->sLukValu[index];
        }  break;
    case ITEMATTR_VAL_ASPD:
        {
            return pCItemRec->sASpdValu[index];
        }  break;
    case ITEMATTR_VAL_ADIS:
        {
            return pCItemRec->sADisValu[index];
        }  break;
    case ITEMATTR_VAL_MNATK:
        {
            return pCItemRec->sMnAtkValu[index];
        }  break;
    case ITEMATTR_VAL_MXATK:
        {
            return pCItemRec->sMxAtkValu[index];
        }  break;
    case ITEMATTR_VAL_DEF:
        {
            return pCItemRec->sDefValu[index];
        }  break;
    case ITEMATTR_VAL_MXHP:
        {
            return pCItemRec->sMxHpValu[index];
        }  break;
    case ITEMATTR_VAL_MXSP:
        {
            return pCItemRec->sMxSpValu[index];
        }  break;
    case ITEMATTR_VAL_FLEE:
        {
            return pCItemRec->sFleeValu[index];
        }  break;
    case ITEMATTR_VAL_HIT:
        {
            return pCItemRec->sHitValu[index];
        }  break;
    case ITEMATTR_VAL_CRT:
        {
            return pCItemRec->sCrtValu[index];
        }  break;
    case ITEMATTR_VAL_MF:
        {
            return pCItemRec->sMfValu[index];
        }  break;
    case ITEMATTR_VAL_HREC:
        {
            return pCItemRec->sHRecValu[index];
        }  break;
    case ITEMATTR_VAL_SREC:
        {
            return pCItemRec->sSRecValu[index];
        }  break;
    case ITEMATTR_VAL_MSPD:
        {
            return pCItemRec->sMSpdValu[index];
        }  break;
    case ITEMATTR_VAL_COL:
        {
            return pCItemRec->sColValu[index];
        }  break;
    case ITEMATTR_VAL_PDEF:
        {
            return pCItemRec->sPDef[index];
        }  break;
    default:
        {
            return 0;
        }  break;
    }
    return 0;
}


COLORREF ItemFunc::GetItemColor(short iEne)
{
    short ret = iEne / 1000;
    switch(ret)
    {
    case 0:
        {
            return 0x00C1C1C1;
        }  break;
    case 1:
    case 2:
        {
            return 0x00FFFFFF;
        }  break;
    case 3:
    case 4:
        {
            return 0x00A2E13E;
        }  break;
    case 5:
    case 6:
        {
            return 0x00d68aff;
        }  break;
    case 7:
    case 8:
        {
            return 0x00ff6440;
        }  break;
    case 9:
        {
            return 0x00ffcc12;
        }  break;
    default:
        {
            return RGB(0, 0, 0);
        }  break;
    }

    return RGB(0, 0, 0);
}


const char* ItemFunc::GetItemPrefix(short iEne)
{
    short ret = iEne / 10;
    ret %= 100;

    switch(ret)
    {
    case 1:
        {
            return "Mammoth";
        }  break;
    case 2:
        {
            return "Precise";
        }  break;
    case 3:
        {
            return "Colossus";
        }  break;
    case 4:
        {
            return "Tempest";
        }  break;
    case 5:
        {
            return "Sage";
        }  break;

    case 11:
        {
            return "Black Dragon";
        }  break;
    case 12:
        {
            return "Red Dragon";
        }  break;
    case 13:
        {
            return "Blue Dragon";
        }  break;
    case 14:
        {
            return "Silver Dragon";
        }  break;
    case 15:
        {
            return "Draconic";
        }  break;
    case 16:
        {
            return "Green Dragon";
        }  break;
    case 17:
        {
            return "Yellow Dragon";
        }  break;
    case 18:
        {
            return "Gold Dragon";
        }  break;
    case 19:
        {
            return "Sacred Dragon";
        }  break;
    case 20:
        {
            return "Demonic Dragon";
        }  break;

    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
        {
            return "卡拉之";
        }  break;
    default:
        {
            return NULL;
        }  break;
    }

    return NULL;
}




ItemInfo* ItemInfo::instance = 0;

ItemInfo::ItemInfo()
{
    LG(g_logfile, "Begin Get Game DB List...\r\n");
    if(!m_rs.GetInterfacePtr())
    {
        m_rs.CreateInstance("ADODB.Recordset");
    }

    m_gdbList = 0;
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }
        SetEncKey((__byte*)INFO_KEY);
        g_conn.Execute("SELECT COUNT(*) AS totalnum FROM GameDBServerList", m_rs);
        m_num = (int)m_rs->GetCollect("totalnum");
        SafeCloseRs();

        if(m_num)
        {
            char tmp[128] = {0};
            char pwd[128] = {0};
            m_gdbList = new GameDBInfo[m_num];
            g_conn.Execute("SELECT server_section, server_ip, server_uid, server_pwd, server_db FROM GameDBServerList", m_rs);
            for(int  i = 0; !m_rs->GetADOEOF(); m_rs->MoveNext(), i++)
            {
                m_gdbList[i].section = (long)m_rs->GetCollect("server_section");
                strcpy(m_gdbList[i].server, (char*)(bstr_t)m_rs->GetCollect("server_ip"));
                strcpy(tmp, (char*)(bstr_t)m_rs->GetCollect("server_pwd")); //密码
                Decrypt((__byte*)pwd, 128, (__byte*)tmp, (int)strlen(tmp)); //解密
                m_gdbList[i].conn.SetSQLServerInfo(
                    m_gdbList[i].server, 
                    (char*)(bstr_t)m_rs->GetCollect("server_uid"), 
                    pwd, 
                    (char*)(bstr_t)m_rs->GetCollect("server_db"));
                m_gdbList[i].conn.SetTimeOut(300000);
            }
            SafeCloseRs();
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Game DB List...\r\n");
        SAFE_DELETE(m_gdbList);
        return;
    }
    LG(g_logfile, "End Get Game DB List...\r\n");
}


ItemInfo::~ItemInfo()
{
    if(m_rs.GetInterfacePtr())
    {
        m_rs.Release();
    }
    if(m_num)
    {
        for(int i = 0; i < m_num; i++)
        {
            m_gdbList[i].conn.Close();
        }
        SAFE_DELETE(m_gdbList);
        m_num = 0;
    }
}


ItemInfo* ItemInfo::Instance()
{
    //static ItemInfo instance;
    //return &instance;
    if(!instance)
    {
        instance = new ItemInfo;
    }
    return instance;
}


void ItemInfo::SafeCloseRs()
{
    if(adStateOpen == m_rs->GetState())
    {
        m_rs->Close();
    }
}


bool ItemInfo::CheckIP(const char* ip)
{
    LG(g_logfile, "Begin Check Login IP...\r\n");
    bool ret = false;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "SELECT aid FROM safety WHERE allowIP = '%s'", ip);
        g_conn.Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            ret = true;
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Check Login IP...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Check Login IP...\r\n");
    return ret;
}


bool ItemInfo::GetChaItem(long section, CKitbag& kbcha, long chaID, int type)
{
	LG(g_logfile, "Begin Get Character Kitbag...\r\n");
    bool ret = false;
    kbcha.Reset();

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT RTRIM(LTRIM(content)) AS content FROM resource WHERE cha_id = %li AND type_id = %i", chaID, type);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            std::string kitbag;
            kitbag = (char*)(bstr_t)m_rs->GetCollect("content");

            ret = String2KitbagData(&kbcha, kitbag);   // 字符串转背包信息
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character Kitbag...\r\n");
        ret = false;
    }
    m_lock.unlock();

	LG(g_logfile, "End Get Character Kitbag...\r\n");
    return ret;
}


bool ItemInfo::GetChaIDList(long section, char* buf, long actID)
{
    LG(g_logfile, "Begin Get Character ID List...\r\n");
    bool ret = false;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT RTRIM(LTRIM(cha_ids)) AS cha_ids FROM account WHERE act_id = %li", actID);
        connGam->Execute(m_sql, m_rs);
        char* ptr = buf;

        if(!m_rs->GetADOEOF())
        {
            strcpy(buf, (char*)(bstr_t)m_rs->GetCollect("cha_ids"));
            ret = true;

            int i = 0;
            while(*ptr)
            {
                if(';' == *ptr)
                {
                    *ptr = ',';
                    ++i;
                }
                if(i >= 3)
                {
                    *ptr = '\0';
                    break;
                }
                ++ptr;
            }
            --ptr;
            if(',' == *ptr)
            {
                *ptr = '\0';
            }
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character ID List...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character ID List...\r\n");
    return ret;
}


bool ItemInfo::GetChaIDList(long section, char* buf, const char* actName)
{
    LG(g_logfile, "Begin Get Character ID List...\r\n");
    bool ret = false;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT RTRIM(LTRIM(cha_ids)) AS cha_ids FROM account WHERE act_name = '%s'", actName);
        connGam->Execute(m_sql, m_rs);
        char* ptr = buf;

        if(!m_rs->GetADOEOF())
        {
            strcpy(buf, (char*)(bstr_t)m_rs->GetCollect("cha_ids"));
            ret = true;

            int i = 0;
            while(*ptr)
            {
                if(';' == *ptr)
                {
                    *ptr = ',';
                    ++i;
                }
                if(i >= 3)
                {
                    *ptr = '\0';
                    break;
                }
                ++ptr;
            }
            --ptr;
            if(',' == *ptr)
            {
                *ptr = '\0';
            }
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character ID List...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character ID List...\r\n");
    return ret;
}


bool ItemInfo::GetChaNameList(long section, char* buf, const char* chaLst, long& count)
{
    LG(g_logfile, "Begin Get Character Name List...\r\n");
    bool ret = false;
    char tempJob[32] = {0};

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT TOP 3 cha_id, cha_name, job, degree FROM character WHERE cha_id IN (%s) AND delflag = 0", chaLst);
        connGam->Execute(m_sql, m_rs);
        char buff[32] = {0};
        count = 0;

        while(!m_rs->GetADOEOF())
        {
            strcat(buf, ltoa((long)m_rs->GetCollect("cha_id"), buff, 10));
            strcat(buf, " ");
            strcat(buf, (char*)(bstr_t)m_rs->GetCollect("cha_name"));
            strcat(buf, " ");

            strncpy(tempJob, (char*)(bstr_t)m_rs->GetCollect("job"), 32);
            char* ptr = strchr(tempJob, ' ');
			while(ptr)
			{
				*ptr = '_';
				ptr = strchr(ptr + 1, ' ');
			}
			strcat(buf, tempJob);

            strcat(buf, " ");
            strcat(buf, (char*)(bstr_t)m_rs->GetCollect("degree"));
            strcat(buf, ";");
            m_rs->MoveNext();
            ++count;
        }

        SafeCloseRs();
        ret = true;
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character Name List...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character Name List...\r\n");
    return ret;
}


bool ItemInfo::GetChaNameList(long section, char* buf, long actID, long& count)
{
    LG(g_logfile, "Begin Get Character Name List...\r\n");
    bool ret = false;
    char tempJob[32] = {0};

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT TOP 3 cha_id, cha_name, job, degree FROM character WHERE act_id = %li AND delflag = 0", actID);
        connGam->Execute(m_sql, m_rs);
        char buff[32] = {0};
        count = 0;

        while(!m_rs->GetADOEOF())
        {
            strcat(buf, ltoa((long)m_rs->GetCollect("cha_id"), buff, 10));
            strcat(buf, " ");
            strcat(buf, (char*)(bstr_t)m_rs->GetCollect("cha_name"));
            strcat(buf, " ");

            strncpy(tempJob, (char*)(bstr_t)m_rs->GetCollect("job"), 32);
            char* ptr = strchr(tempJob, ' ');
			while(ptr)
			{
				*ptr = '_';
				ptr = strchr(ptr + 1, ' ');
			}
			strcat(buf, tempJob);

            strcat(buf, " ");
            strcat(buf, (char*)(bstr_t)m_rs->GetCollect("degree"));
            strcat(buf, ";");
            m_rs->MoveNext();
            ++count;
        }

        SafeCloseRs();
        ret = true;
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character Name List...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character Name List...\r\n");
    return ret;
}


char* ItemInfo::GetChaName(long section, char* buf, long chaID)
{
    LG(g_logfile, "Begin Get Character Name...\r\n");

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT cha_name FROM character WHERE cha_id = %li AND delflag = 0", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            strcpy(buf, (char*)(bstr_t)m_rs->GetCollect("cha_name"));
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character Name...\r\n");
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character Name...\r\n");
    return buf;
}


bool ItemInfo::RenameCha(long section, long chaID, const char* newname)
{
    LG(g_logfile, "Begin Rename Character...\r\n");
    bool ret = false;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "IF NOT EXISTS (SELECT cha_id FROM character WHERE cha_name = '%s' AND delflag = 0) UPDATE character SET cha_name = '%s' WHERE cha_id = %li AND delflag = 0", newname, newname, chaID);
        if(connGam->Execute(m_sql) > 0)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Rename Character...\r\n");
    }
    m_lock.unlock();

    LG(g_logfile, "End Rename Character...\r\n");
    return ret;
}


long ItemInfo::GetActID(long section, long chaID)
{
    LG(g_logfile, "Begin Get Account ID...\r\n");
    long actID = -1;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT act_id FROM character WHERE cha_id = %li", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            actID = (long)m_rs->GetCollect("act_id");
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Account ID...\r\n");
        actID = -1;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Account ID...\r\n");
    return actID;
}


char* ItemInfo::GetActName(char* buff, long section, long chaID)
{
	LG(g_logfile, "Begin Get Account ID...\r\n");

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT act_name FROM account WHERE act_id = (SELECT act_id FROM character WHERE cha_id = %li)", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            strcpy(buff, (char*)(bstr_t)m_rs->GetCollect("act_name"));
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Account ID...\r\n");
        *buff = 0;
    }
    m_lock.unlock();

	LG(g_logfile, "End Get Account ID...\r\n");
    return buff;
}


long ItemInfo::GetActID(const char* username)
{
	LG(g_logfile, "Begin Get Account ID...\r\n");
    long actID = -1;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        //sprintf(m_sql, "SELECT id FROM account_login WHERE name = '%s' AND password = '%s'", username, password);
        sprintf(m_sql, "SELECT id FROM account_login WHERE name = '%s'", username);
        g_conn.Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            actID = (long)m_rs->GetCollect("id");
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Account ID...\r\n");
        actID = -1;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Account ID...\r\n");
    return actID;
}



bool ItemInfo::ChkActOffline(long actID)
{
	LG(g_logfile, "Begin Check Account Offline...\r\n");
    bool ret = false;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "SELECT login_status FROM account_login WHERE (id = %li) AND (DATEDIFF(second, enable_login_time, GETDATE()) > 15)", actID);
        g_conn.Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            if((0 == (long)m_rs->GetCollect("login_status")) || (2 == (long)m_rs->GetCollect("login_status")))
            {
                ret = true;
            }
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Check Account Offline...\r\n");
        ret = false;
    }
    m_lock.unlock();

	LG(g_logfile, "End Check Account Offline...\r\n");
    return ret;
}



short ItemInfo::GetItemAttr(const char* attrname, const char* type)
{
    if(0 == strcmp(type, "Coefficient"))
    {
        return ItemFunc::CorvItem_COE(attrname);
    }
    else
    {
        return ItemFunc::CorvItem_VAL(attrname);
    }
}



short ItemInfo::CountPercent(short min, short max, int percent)
{
    double per;
    per = (double)percent / 100;

    return (short)((per * (double)(max - min)) + min);
}



bool ItemInfo::GetChaLook(long section, stNetChangeChaPart& chaPart, long chaID)
{
    LG(g_logfile, "Begin Get Character Lookat...\r\n");
    bool ret = false;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT look FROM character WHERE cha_id = %li", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            std::string lookStr;
            lookStr = (char*)(bstr_t)m_rs->GetCollect("look");

            ret = Strin2LookData(&chaPart, lookStr);   // 字符串转背包信息
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character Lookat...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character Lookat...\r\n");
    return ret;
}


bool ItemInfo::String2ItemGrid(SItemGrid* ig, const char* str)
{
    LG(g_logfile, "Begin String To Item Grid...\r\n");
    char* ptr = 0;
    TranslateProtocol tp;
    CItemRecord*    pCItemRec = NULL;

    tp.SetProtocolPtr(str);

    ptr = (char*)tp.GetColumn(' ');    //  道具编号
    if(!ptr) return false;
    ig->sID = (short)atoi(ptr);

    pCItemRec = GetItemRecordInfo(ig->sID);    //获取道具基本属性
    if(!pCItemRec) return false;

    ptr = (char*)tp.GetColumn(' ');    //  道具个数
    if(!ptr) return false;
    ig->sNum = (short)atoi(ptr);

    ptr = (char*)tp.GetColumn(' ');    //  道具孔数
    if(!ptr) return false;
    ig->SetForgeParam(atol(ptr) * 1000000000);  //  计算空数

    ig->sEndure[0] = ig->sEndure[1] = pCItemRec->sEndure[1];
    //  能量取非0的最小值
    ig->sEnergy[1] = (pCItemRec->sEnergy[0] < pCItemRec->sEnergy[1]) ? pCItemRec->sEnergy[0] : pCItemRec->sEnergy[1];
    if(!ig->sEnergy[1])
    {
        ++ig->sEnergy[1];
    }
    ig->sEnergy[0] = ig->sEnergy[1];

    ptr = (char*)tp.GetColumn(' ');  //  检测是否拥有属性值
    if(!ptr) return false;
    if(1 == atoi(ptr))
    {
        for(int i = 0; i < 5; i++)
        {
            ptr = (char*)tp.GetColumn(' ');    //  属性编号
            if(!ptr) return false;
            ig->sInstAttr[i][0] = atoi(ptr);

            if((ig->sInstAttr[i][0] > 0) && (ig->sInstAttr[i][0] < 50))
            {
                ptr = (char*)tp.GetColumn(' '); //  属性值
                if(!ptr) return false;
                ig->sInstAttr[i][1] = atoi(ptr);
            }
            else
            {
                ig->sInstAttr[i][0] = ig->sInstAttr[i][1] = 0;  //  属性编号错误，设置其为无效状态
            }
        }
    }

    LG(g_logfile, "End String To Item Grid...\r\n");
    return true;
}


//  字符串转物品数据（无属性信息）//add by wky
bool ItemInfo::String2ItemGrid2(SItemGrid* ig, const char* str)
{
	LG(g_logfile, "Begin String To Item Grid...\r\n");
    char* ptr = 0;
    TranslateProtocol tp;
    CItemRecord*    pCItemRec = NULL;

    tp.SetProtocolPtr(str);

    ptr = (char*)tp.GetColumn(' ');    //  道具编号
    if(!ptr) return false;
    ig->sID = (short)atoi(ptr);

    pCItemRec = GetItemRecordInfo(ig->sID);    //  获取道具基本属性
    if(!pCItemRec) return false;

    ptr = (char*)tp.GetColumn(' ');    //  道具个数
    if(!ptr) return false;
    ig->sNum = (short)atoi(ptr);

    ig->SetForgeParam(0);  //  计算空数

    ig->sEndure[0] = ig->sEndure[1] = pCItemRec->sEndure[1];
    //  能量取非0的最小值
    ig->sEnergy[1] = (pCItemRec->sEnergy[0] < pCItemRec->sEnergy[1]) ? pCItemRec->sEnergy[0] : pCItemRec->sEnergy[1];
    if(!ig->sEnergy[1])
    {
        ++ig->sEnergy[1];
    }
    ig->sEnergy[0] = ig->sEnergy[1];

    for(int i = 0; i < 5; i++)
    {
		ig->sInstAttr[i][0] = ig->sInstAttr[i][1] = 0;  //  设置属性编号及其属性为无效状态
    }

	LG(g_logfile, "End String To Item Grid...\r\n");
    return true;
}

/*
	修改说明
	此函数为保存包裹。在INFO中主要应用于给游戏者增加道具。
	为了处理数据库回档造成的作弊现象，特增加如下逻辑。
		1	保存原始记录时，给背包做一下校验用的备份。
		2	GAMESERVER如果检查出校验数据和原始数据不一致，则会拒绝进入游戏。
	为了实现以上逻辑，将当前逻辑更改为。
		1	查询效验用备份是否存在。
			a	如果存在，则在一条SQL语句中执行两次UPDATE操作。
			b	如果不存在，则创建校验数据，在进行a中的UPDATE操作。
*/
bool ItemInfo::SaveKitBag(long section, const char* sqlstr, long chaID)
{
	LG(g_logfile, "Begin Save Kitbag...\r\n");
    char num2str[16] = {0};
    bool ret = false;
    std::string sql;
    sql = "UPDATE resource SET content ='";
    sql += sqlstr;
    sql += "' WHERE cha_id =";
    sql += ltoa(chaID, num2str, 10);
    sql += " AND type_id =1";

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }
        if(connGam->Execute(sql.c_str()) > 0)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Save Kitbag...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Save Kitbag...\r\n");
    return ret;


	////2007-11-24	杨印宇修改开始.	( 以下被注释的是原始代码 ).
	//FILE*	fp	=	fopen( "ItemInfo_SaveKitBag.txt", "a+" );

	////
 //   char num2str[16] = {0};
 //   bool ret = false;

	////
	//jConnection*	connGam	=	GetConnection(	section	);

	//if(	!connGam )
	//{
	//	fprintf( fp, "get connect failed!\n"	);
	//	fclose(	fp	);
	//	return	false;
	//}

	//m_lock.lock();

	//try
	//{
	//	//	连接。
	//	if(	!connGam->IsConnect() )
	//	{
	//		fprintf(	fp,	"connect failed!\n"	);
	//		connGam->Connect();
	//	}

	//	//	利用选择语句查看是否存在指定的行。
	//	char sql[1024];
	//	sprintf(sql, "IF NOT EXISTS (SELECT id FROM resource WHERE char_id = %d + 100 AND type_id =101) INSERT resource (cha_id, type_id ) VALUES(%d + 100,101)", chaID, chaID);
	//	connGam->Execute(sql, m_rs);

	//	//	更新。
	//	sql = "";
	//	sprintf(sql, "IF EXISTS (UPDATE resource SET content = '' WHERE cha_id = %d AND type_id = 1) UPDATE resource SET content = '' WHERE cha_id = %d + 100 AND type_id = 101", chaID, chaID)
 //       if(connGam->Execute(sql, m_rs) > 0)
 //       {
 //           ret = true;
 //       }
 //       else
 //       {
 //           ret = false;
	//		LG( g_logfile, "角色背包更新失败，如果表被创建成功但未被填入数据，则可能会出现用户无法进入的情况！"	);
 //       }
 //   }
 //   catch(_com_error& e)
 //   {
	//	fprintf(	fp,	"COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description()	);
 //       LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
 //   }
 //   catch(...)
 //   {
	//	fprintf(	fp,	"=====> Exception Save Kitbag...\r\n");
 //       LG(g_logfile, "=====> Exception Save Kitbag...\r\n");
 //       ret = false;
 //   }
 //   m_lock.unlock();

	//fclose(	fp	);

 //   return ret;

	////	2007-11-24	杨印宇修改结束.
}



bool ItemInfo::GainCoin(long section, long chaID, long coin)
{
    LG(g_logfile, "Begin Gain Coin...\r\n");
    bool ret = false;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT gd FROM character WHERE cha_id = %li", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            long gd = 0;
            long ngd = 0;
            gd = (long)m_rs->GetCollect("gd");
            ngd = gd + coin;
            if((ngd < 2000000000) && (ngd >= 0))
            {
                memset(m_sql, 0, 128);
                sprintf(m_sql, "UPDATE character SET gd = %li WHERE cha_id = %li", ngd, chaID);
                if(connGam->Execute(m_sql) > 0)
                {
                    ret = true;
                }
                else
                {
                    ret = false;
                }
            }
            else
            {
                ret = false;
            }
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Gain Coin...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Gain Coin...\r\n");
    return ret;
}


long ItemInfo::QueryCoin(long section, long chaID)
{
    LG(g_logfile, "Begin Query Coin...\r\n");
    long ret = -1;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT gd FROM character WHERE cha_id = %li", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            ret = (long)m_rs->GetCollect("gd");
        }
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
        ret = -1;
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Query Coin...\r\n");
        ret = -1;
    }
    m_lock.unlock();

    LG(g_logfile, "End Query Coin...\r\n");
    return ret;
}


bool ItemInfo::WriteTradeRecord(const char* id, int msg, int section, const char* info)
{
    LG(g_logfile, "Begin Write Trade Record...\r\n");
    bool ret = false;
    bool local = false;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "INSERT INTO TradeRecord(record_id, record_message, record_section, record_info, record_time, ret_info, ret_time, state) VALUES('%s', %i, %i, '%s', '%s', '', '%s', %i)", id, msg, section, info, NowTime(), NowTime(), (!strcmp(id, "-1") ? -1 : 0));
        if(g_conn.Execute(m_sql))
        {
            local = true;

            if(!g_trad.IsConnect())
            {
                g_trad.Connect();
            }

            if(!g_trad.IsConnect())
            {
                LG(g_logfile, "Failt to load system.jmp.\r\n", m_sql);
            }
            else
            {
                LG(g_logfile, "Local: ");
                g_trad.Execute(m_sql);
            }

            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Write Trade Record...\r\n");
        if(local)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    m_lock.unlock();

    LG(g_logfile, "End Write Trade Record...\r\n");
    return ret;
}


bool ItemInfo::UpdateTradeRecord(const char* id, const char* info)
{
    LG(g_logfile, "Begin Update Trade Record...\r\n");
    bool ret = false;
    bool local = false;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "UPDATE TradeRecord SET ret_info = '%s', ret_time = '%s', state = 1 WHERE record_id = '%s'", info, NowTime(), id);
        if(g_conn.Execute(m_sql))
        {
            local = true;

            if(!g_trad.IsConnect())
            {
                g_trad.Connect();
            }

            if(!g_trad.IsConnect())
            {
                LG(g_logfile, "Failt to load system.jmp.\r\n", m_sql);
            }
            else
            {
                LG(g_logfile, "Local: ");
                g_trad.Execute(m_sql);
            }

            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Update Trade Record...\r\n");
        if(local)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    m_lock.unlock();

    LG(g_logfile, "End Update Trade Record...\r\n");
    return ret;
}


bool ItemInfo::CheckTradeRecord(char* buf, int& len, const char* id)
{
	LG(g_logfile, "Begin Check Trade Record...\r\n");
    bool ret = false;
    int size = len;
    len = 0;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "SELECT TOP 1 ret_info FROM TradeRecord WHERE record_id = '%s' AND state = 1", id);
        g_conn.Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            strncpy(buf, (char*)(bstr_t)m_rs->GetCollect("ret_info"), size);
            len = (int)strlen(buf);
        }

        SafeCloseRs();
        ret = true;
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Check Trade Record...\r\n");
        ret = false;
    }
    m_lock.unlock();

	LG(g_logfile, "End Check Trade Record...\r\n");
    return ret;
}

//  添加道具交易纪录2（含交易流水号） //add by wky
bool ItemInfo::WriteTradeRecord2(const char* id, int msg, int section, const char* info, const char* flow_id, const char* production_id)
{
	LG(g_logfile, "Begin Write Trade Record...\r\n");
    bool ret = false;
    bool local = false;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "INSERT INTO TradeRecord(record_id, record_message, record_section, record_info, record_time, ret_info, ret_time, state, flow_id, production_id) VALUES('%s', %i, %i, '%s', '%s', '', '%s', %i, '%s' , '%s')", id, msg, section, info, NowTime(), NowTime(), (!strcmp(id, "-1") ? -1 : 0), flow_id, production_id);
        if(g_conn.Execute(m_sql))
        {
            local = true;

            if(!g_trad.IsConnect())
            {
                g_trad.Connect();
            }

            if(!g_trad.IsConnect())
            {
                LG(g_logfile, "Failt to load system.jmp.\r\n", m_sql);
            }
            else
            {
                LG(g_logfile, "Local: ");
                g_trad.Execute(m_sql);
            }

            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Write Trade Record...\r\n");
        if(local)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    m_lock.unlock();

	LG(g_logfile, "End Write Trade Record...\r\n");
    return ret;
}

//  检测交易流水是否未处理 //add by wky
bool ItemInfo::CheckTradeFlowID(const char* flow_id)
{
    LG(g_logfile, "Begin Check Trade FlowID...\r\n");
    bool ret = false;
	int len = 0;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        sprintf(m_sql, "SELECT TOP 1 flow_id FROM TradeRecord WHERE flow_id = '%s' AND ret_info LIKE '12410 %%'", flow_id);//取得成功插入该流水号道具的记录 2007-12-03 add by wky
        g_conn.Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
			char buff[50] = {0};
			strcpy(buff,(char*)(bstr_t)m_rs->GetCollect("flow_id"));
            len = (int)strlen(buff);
        }

		if(len > 0)
		{
			ret = false;	//已经处理过
		}
		else
		{
			ret = true;		//尚未处理过
		}

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Check Trade FlowID...\r\n");
        ret = false;
    }
    m_lock.unlock();

	LG(g_logfile, "End Check Trade FlowID...\r\n");
    return ret;
}

bool ItemInfo::CheckSection(long section)
{
    return 0 != GetConnection(section);
}


jConnection* ItemInfo::GetConnection(long section)
{
    for(int i = 0; i < m_num; i++)
    {
        if(section == m_gdbList[i].section)
        {
            return &m_gdbList[i].conn;
        }
    }
    return 0;
}

// Add by lark.li 20080825 begin
int ItemInfo::BanAccount(const char* name, int from, int type)
{
    LG(g_logfile, "Begin Ban Account...\r\n");
    int ret = 0;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

		// 官方
		if(from == 0)
		{
			// 封停
			if(type == 1)
			{
				sprintf(m_sql, "UPDATE account_login SET ban = 2 WHERE name = '%s'", name);
				ret = 1;
			}
			else
			{
				sprintf(m_sql, "UPDATE account_login SET ban = 0 WHERE name = '%s'", name);
				ret = 2;
			}
		} // 个人
		else
		{
			// 封停
			if(type == 1)
			{
				sprintf(m_sql, "UPDATE account_login SET ban = 1 WHERE name = '%s' and ban = 0", name);
				ret = 3;
			}
			else
			{
				sprintf(m_sql, "UPDATE account_login SET ban = 0 WHERE name = '%s' and ban = 1", name);
				ret = 4;
			}
		}

        int  aff = g_conn.Execute(m_sql);
        
		if(aff != 1)
		{
			ret = 0 - ret;
		}
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
		ret = 0 - ret ;
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Ban Account...\r\n");
		ret = 0 - ret ;
    }
    m_lock.unlock();

    LG(g_logfile, "End Ban Account...\r\n");
    return ret;
}
// End

//bool ItemInfo::BanAccount(const char* name, int ban)
//{
//    LG(g_logfile, "Begin Ban Account...\r\n");
//    bool ret = false;
//
//    m_lock.lock();
//    try
//    {
//        if(!g_conn.IsConnect())
//        {
//            g_conn.Connect();
//        }
//
//        sprintf(m_sql, "UPDATE account_login SET ban = %i WHERE name = '%s'", ban, name);
//        int  aff = g_conn.Execute(m_sql);
//        if(aff)
//        {
//            ret = true;
//        }
//        else
//        {
//            ret = false;
//        }
//    }
//    catch(_com_error& e)
//    {
//        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
//    }
//    catch(...)
//    {
//        LG(g_logfile, "=====> Exception Ban Account...\r\n");
//        ret = false;
//    }
//    m_lock.unlock();
//
//    LG(g_logfile, "End Ban Account...\r\n");
//    return ret;
//}
//
//
//bool ItemInfo::BanAccount(long id, int ban)
//{
//    LG(g_logfile, "Begin Ban Account...\r\n");
//    bool ret = false;
//
//    m_lock.lock();
//    try
//    {
//        if(!g_conn.IsConnect())
//        {
//            g_conn.Connect();
//        }
//
//        sprintf(m_sql, "UPDATE account_login SET ban = %i WHERE id = %li", ban, id);
//        int  aff = g_conn.Execute(m_sql);
//        if(aff)
//        {
//            ret = true;
//        }
//        else
//        {
//            ret = false;
//        }
//    }
//    catch(_com_error& e)
//    {
//        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
//    }
//    catch(...)
//    {
//        LG(g_logfile, "=====> Exception Ban Account...\r\n");
//        ret = false;
//    }
//    m_lock.unlock();
//
//    LG(g_logfile, "End Ban Account...\r\n");
//    return ret;
//}
//
//
//
int ItemInfo::ActiveAccount(const char* name, const char* password)
{
    LG(g_logfile, "Begin Active Account...\r\n");
    int ret = 0;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        //  检测重名
        sprintf(m_sql, "SELECT TOP 1 name FROM account_login WHERE name = '%s'", name);
        g_conn.Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            ret = 1;
        }
        SafeCloseRs();

        if(!ret)
        {
            long count;
            sprintf(m_sql, "SELECT TOP 1 id FROM account_login ORDER BY id DESC");
            g_conn.Execute(m_sql, m_rs);

            if(!m_rs->GetADOEOF())
            {
                count = (long)m_rs->GetCollect("id");
            }
            SafeCloseRs();

            memset(m_sql, 0, 128);
            sprintf(m_sql, "INSERT INTO account_login(id, name, password) VALUES(%li, '%s', '%s')", count + 1, name, password);
            int  aff = g_conn.Execute(m_sql);
            if(aff)
            {
                ret = 0;
            }
            else
            {
                ret = 2;
            }
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Active Account...\r\n");
        ret = 2;
    }
    m_lock.unlock();

    LG(g_logfile, "End Active Account...\r\n");
    return ret;
}


bool ItemInfo::UpdatePasswd(const char* name, const char* oldpassword, const char* newpassword)
{
    LG(g_logfile, "Begin Update Password...\r\n");
    bool ret = false;

    m_lock.lock();
    try
    {
        if(!g_conn.IsConnect())
        {
            g_conn.Connect();
        }

        //sprintf(m_sql, "UPDATE account_login SET password = '%s' WHERE name = '%s' AND password = '%s'", newpassword, name, oldpassword);
        //  暂时不做旧密码验证
        sprintf(m_sql, "UPDATE account_login SET password = '%s' WHERE name = '%s'", newpassword, name);
        int  aff = g_conn.Execute(m_sql);
        if(aff)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Update Password...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Update Password...\r\n");
    return ret;
}


long ItemInfo::GetOnline(int section)
{
    LG(g_logfile, "Begin Get Online Number...\r\n");
    long ol = -1;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        //sprintf(m_sql, "SELECT TOP 1 login_num FROM stat_log ORDER BY track_date DESC");
		sprintf(m_sql, "SELECT TOP 1 track_date, play_num FROM stat_log ORDER BY track_date DESC");
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
			COleDateTime now = COleDateTime::GetCurrentTime();

			_variant_t date = m_rs->GetCollect("track_date");
			COleDateTime getDate(date.date);

			COleDateTimeSpan span(0, 0, g_cfg.interval, 0);

			if(now - getDate > span)
				ol = -2;
			else
				ol = (long)m_rs->GetCollect("play_num");
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
        ol = -1;
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Online Number...\r\n");
        ol = -1;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Online Number...\r\n");
    return ol;
}


int ItemInfo::TomAccount(char* info, long section, const char* tomName, const char* passwd2, const char* name, const char* passwd)
{
    LG(g_logfile, "Begin TomAccount...\r\n");
    long ret = 3;

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT TOP 1 act_id, is_check FROM tom_account WHERE act_name = '%s' AND act_pwd = '%s'", tomName, passwd2);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            long act_id = (long)m_rs->GetCollect("act_id");
            int isCheck = (long)m_rs->GetCollect("is_check");
            if(0 == isCheck)
            {
                long atv = ActiveAccount(name, passwd);
                switch(atv)
                {
                case 0:
                    {
                        sprintf(m_sql, "UPDATE tom_account SET is_check = 1 WHERE act_id = %li; UPDATE account SET act_name = '%s' WHERE act_id = %li", act_id, name, act_id);
                        int aff = connGam->Execute(m_sql);

                        if(aff)
                        {
                            ret = 13010;
                            strncpy(info, "Active_Account_Succeed", 128);
                        }
                        else
                        {
                            ret = 13003;
                            strncpy(info, "Unknown_Error", 128);
                        }
                    }  break;
                case 1:
                    {
                        ret = 13002;
                        strncpy(info, "Account_Already_Exist", 128);
                    }  break;
                case 2:
                default:
                    {
                        ret = 13003;
                        strncpy(info, "Unknown_Error", 128);
                    }  break;
                }
            }
            else
            {
                SafeCloseRs();

                ret = 13004;

                sprintf(m_sql, "SELECT TOP 1 act_name FROM account WHERE act_id = %li", act_id);
                connGam->Execute(m_sql, m_rs);

                if(!m_rs->GetADOEOF())
                {
                    strncpy(info, (const char*)(bstr_t)m_rs->GetCollect("act_name"), 128);
                }
                else
                {
                    strncpy(info, "Unknown", 128);
                }
            }
        }
        else
        {
            ret = 13001;
            strncpy(info, "Wrong_Second_Password", 128);
        }

        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
        ret = 13003;
        strncpy(info, "Unknown_Error", 128);
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception TomAccount...\r\n");
        ret = 13003;
        strncpy(info, "Unknown_Error", 128);
    }
    m_lock.unlock();

    LG(g_logfile, "End TomAccount...\r\n");
    return ret;
}

	//  根据“用户名”获取“帐号ID”和“帐号名”//add by wky
char* ItemInfo::GetAccountFromChaName(long section, char* buff, char* chaName)
{
    LG(g_logfile, "Begin Get Account From ChaName ...\r\n");

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT [act_id], [act_name] FROM account \
					   WHERE [act_id] IN (SELECT act_id FROM character WHERE cha_name = '%s')", chaName);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_id"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_name"));
			strcat(buff, "\n\n");
        }
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Account From ChaName ...\r\n");
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Account From ChaName ...\r\n");
    return buff;
}

	//  获取帐户所有信息//add by wky
char* ItemInfo::GetAccount(long section, char* buff, char* actName)
{
    LG(g_logfile, "Begin Get Account ...\r\n");

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT act_id,act_name,gm,cha_ids,last_ip,last_leave \
					   FROM account \
					   WHERE act_name = '%s'", actName);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_id"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_name"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("gm"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_ids"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("last_ip"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("last_leave"));
			strcat(buff, "\n\n");
        }
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Account ...\r\n");
        *buff = 0;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Account ...\r\n");
    return buff;
}

	//  获取角色所有信息//add by wky
char* ItemInfo::GetCharacter(long section, char* buff, char* chaID)
{
    LG(g_logfile, "Begin Get Character ...\r\n");

    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "SELECT cha_id,cha_name,motto,job,degree,exp,hp,sp,ap,tp,\
					   gd,str,dex,agi,con,sta,luk,kb_capacity,delflag \
					   FROM character \
					   WHERE cha_id = '%s'", chaID);
        connGam->Execute(m_sql, m_rs);

        if(!m_rs->GetADOEOF())
        {
            strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_id"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_name"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("motto"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("job"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("degree"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("exp"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("hp"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("sp"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("ap"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("tp"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("gd"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("str"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("dex"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("agi"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("con"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("sta"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("luk"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("kb_capacity"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("delflag"));
			strcat(buff, "\n\n");
        }
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character ...\r\n");
        *buff = 0;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character ...\r\n");
    return buff;
}
//  帐户名模糊查询//add by wky
char* ItemInfo::GetAccountApproximately(long section, char* buff, char* actName, int page)
{
	LG(g_logfile, "Begin Get Account Approximately ...\r\n");
	long act_count = 0;
	long lpages,lpage;
    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }
		
		//计数帐户数目
		sprintf(m_sql, "SELECT count(act_name) AS act_count FROM account WHERE act_name LIKE '%%%%%s%%%%'", actName);//检索结果按“角色名”、“等级”、“经验”排序
        connGam->Execute(m_sql, m_rs);
		if(!m_rs->GetADOEOF())
		{
			act_count = (long)m_rs->GetCollect("act_count");
			if(act_count > 0) 
			{
				lpages = act_count/10 + 1;	//计算总页数
				if(page > lpages)	//请求页比末页大
				{
					lpage = lpages;
				}
				else if(page < 1)	//请求页比首页小
				{
					lpage = 1;	
				}
				else
				{
					lpage = page;
				}
				
				//取得请求页的帐户(每页10个，每次按照参数只取一页)
				sprintf(m_sql, "SELECT TOP 10 act_id,act_name \
							FROM account AS a \
							WHERE act_name LIKE '%%%%%s%%%%' \
							AND a.act_id NOT IN (SELECT TOP %d act_id FROM account WHERE act_name LIKE '%%%%%s%%%%') \
							ORDER BY act_name ", actName, ((lpage - 1)*10), actName);//检索结果按“帐户名”排序
				connGam->Execute(m_sql, m_rs);
				
				//返回查询结果
				ltoa(act_count,buff,10);
				strcat(buff, " ");
				while(!m_rs->GetADOEOF())
				{
					strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_id"));
					strcat(buff, " ");
					strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_name"));
					strcat(buff, ";");

					m_rs->MoveNext();
				}
				strcat(buff, "\n\n");
			}
		}
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Account Approximately ...\r\n");
        *buff = 0;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Account Approximately ...\r\n");

    return buff;
}


//  角色名模糊查询//add by wky
char* ItemInfo::GetCharacterApproximately(long section, char* buff, char* chaName, int page)
{
	LG(g_logfile, "Begin Get Character Approximately ...\r\n");
	long cha_count = 0;
	long lpages,lpage;
    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }
		
		//计数角色数目
		sprintf(m_sql, "SELECT count(cha_name) AS cha_count FROM character WHERE cha_name LIKE '%%%%%s%%%%'", chaName);//检索结果按“角色名”、“等级”、“经验”排序
        connGam->Execute(m_sql, m_rs);
		if(!m_rs->GetADOEOF())
		{
			cha_count = (long)m_rs->GetCollect("cha_count");

			if(cha_count > 0) 
			{
				lpages = cha_count/10 + 1;	//计算总页数
				if(page > lpages)	//请求页比末页大
				{
					lpage = lpages;
				}
				else if(page < 1)	//请求页比首页小
				{
					lpage = 1;
				}
				else
				{
					lpage = page;
				}
				
				//取得请求页的角色(每页10个，每次只取一页)
				if(lpages > 0)
				sprintf(m_sql, "SELECT TOP 10 cha_id,cha_name,(SELECT act_name FROM account WHERE act_id = c.act_id) as act_name \
							FROM character AS c \
							WHERE c.cha_name LIKE '%%%%%s%%%%' \
							AND c.cha_id NOT IN (SELECT TOP %d cha_id FROM character WHERE cha_name LIKE '%%%%%s%%%%') \
							ORDER BY cha_name,act_name", chaName, ((lpage - 1)*10), chaName);//检索结果按“角色名”、“帐户名”排序
				connGam->Execute(m_sql, m_rs);
				
				//返回查询结果
				ltoa(cha_count, buff, 10);
				strcat(buff, " ");
				while(!m_rs->GetADOEOF())
				{
					strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_id"));
					strcat(buff, " ");
					strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_name"));
					strcat(buff, " ");
					strcat(buff, (char*)(bstr_t)m_rs->GetCollect("act_name"));
					strcat(buff, ";");
					
					m_rs->MoveNext();
				}
				strcat(buff, "\n\n");
			}
		}
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Character Approximately ...\r\n");
        *buff = 0;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Character Approximately ...\r\n");

    return buff;
}


//	清空二次密码//add by wky
bool ItemInfo::ClearSecondPassword(long section, char* actName)
{
    LG(g_logfile, "Begin Clear Second Password ...\r\n");
	
	bool ret = false;
    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

        sprintf(m_sql, "UPDATE account \
					   SET password = NULL\
					   WHERE act_name = '%s'", actName);
        int aff  = connGam->Execute(m_sql, m_rs);
		if(aff)
        {
            ret = true;
        }
        else
        {
            ret = false;
        }
		SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Clear Second Password ...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Clear Second Password ...\r\n");
    return ret;
}

//	恢复角色//add by wky
bool ItemInfo::ResumeCharacter(long section, char* chaID)
{
    LG(g_logfile, "Begin Clear Second Password ...\r\n");

	bool ret = false;
    jConnection* connGam = GetConnection(section);
    m_lock.lock();
    try
    {
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }
		//查询该角色所属的帐号已经创建了几个角色
		sprintf(m_sql, "SELECT cha_ids FROM account \
					   WHERE act_id = (SELECT act_id FROM character WHERE cha_id = %s)",chaID);
		connGam->Execute(m_sql, m_rs);
		
		char buff[64] = {0};
		if(!m_rs->GetADOEOF())
		{
			strcpy(buff,(char*)(bstr_t)m_rs->GetCollect("cha_ids"));
			char * ptr = buff;
			int iCount = 0;
			while(strlen(ptr) > 0)
			{
				if(';' == *ptr)
				{
					iCount++;
				}
				ptr++;
			}
			//已经有了三个及以上角色的不允许进行恢复角色的操作
			if(iCount >= 3)
			{
				ret = false;
			}
			else 
			{
				//恢复角色
				strcat(buff, chaID);
				strcat(buff, ";");
				sprintf(m_sql, "UPDATE account SET cha_ids = '%s' \
							   WHERE act_id = (SELECT act_id FROM character WHERE cha_id = %s) ;\
							   UPDATE character SET delflag = 0 \
							   WHERE cha_id = %s AND delflag = 1", buff, chaID, chaID);
				int aff = connGam->Execute(m_sql, m_rs);
				if(aff)
				{
					ret = true;
				}
				else
				{
					ret = false;
				}
			}
		}
		SafeCloseRs();
	}
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Clear Second Password ...\r\n");
        ret = false;
    }
    m_lock.unlock();

    LG(g_logfile, "End Clear Second Password ...\r\n");
    return ret;
}

//	排行榜//add by wky
char* ItemInfo::GetSortedCharacters(long section, char* buff, int& num, char order)
{
	char * ORDER = 0;
	LG(g_logfile, "Begin Get Sorted Characters ...\r\n");
    jConnection* connGam = GetConnection(section);
    m_lock.lock();

    try
    {
		//连接数据库
        if(!connGam->IsConnect())
        {
            connGam->Connect();
        }

		//设置排序规则
		if('A' == order)
		{
			ORDER = "ASC";
		}
		else if('D' == order)
		{
			ORDER = "DESC";
		}

		//计数实际排序的人数
		sprintf(m_sql,"SELECT COUNT(cha_name) AS cha_count FROM (SELECT TOP %d cha_name \
					  FROM character \
					  WHERE act_id IN \
					  (SELECT act_id FROM account WHERE gm = 0) \
					  ORDER BY degree %s,exp %s) AS a", num, ORDER, ORDER);
		connGam->Execute(m_sql, m_rs);
		strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_count"));
		strcat(buff, " ");

		//排行榜查询
		sprintf(m_sql,"SELECT TOP %d cha_name,degree,exp \
					  FROM character \
					  WHERE act_id IN \
					  (SELECT act_id FROM account WHERE gm = 0) \
					  ORDER BY degree %s,exp %s", num, ORDER, ORDER);
        connGam->Execute(m_sql, m_rs);

		//返回查询结果
        while(!m_rs->GetADOEOF())
        {
            strcat(buff, (char*)(bstr_t)m_rs->GetCollect("cha_name"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("degree"));
			strcat(buff, " ");
			strcat(buff, (char*)(bstr_t)m_rs->GetCollect("exp"));
			strcat(buff, ";");

			m_rs->MoveNext();
        }

		//结束符
		strcat(buff, "\n\n");
        SafeCloseRs();
    }
    catch(_com_error& e)
    {
        LG(g_logfile, "COM Exception, Function: %s. Code: %i, Description: %s\r\n", __FUNCTION__, e.WCode(), (const char*)e.Description());
    }
    catch(...)
    {
        LG(g_logfile, "=====> Exception Get Sorted Characters ...\r\n");
        *buff = 0;
    }
    m_lock.unlock();

    LG(g_logfile, "End Get Sorted Characters ...\r\n");

    return buff;
}
