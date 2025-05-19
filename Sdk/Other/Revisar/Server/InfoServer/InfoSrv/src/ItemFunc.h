
/* * * * * * * * * * * * * * * * * * * *

    物品相关函数
    Jampe
    2006/4/12

 * * * * * * * * * * * * * * * * * * * */


#if !defined __ITEMFUNC_H__
#define __ITEMFUNC_H__

#pragma warning(disable: 4535)

#include "ado.h"
#include "lock.h"
#include <windows.h>

#include <util.h>
#include <Kitbag.h>
#include <CommFunc.h>



class ItemFunc
{
public:
    virtual ~ItemFunc();

    //  获取系数属性编号
    static short CorvItem_COE(const char* item);


    //  获取常数属性编号
    static short CorvItem_VAL(const char* item);

    //  获取基本系数属性值
    static short GetCoe(CItemRecord* pCItemRec, int type, int index = 0);


    //  获取基本常数属性值
    static short GetVal(CItemRecord* pCItemRec, int type, int index);


    //  道具颜色
    static COLORREF GetItemColor(short iEne);


    //  获取道具前缀
    static const char* GetItemPrefix(short iEne);

private:
    ItemFunc();
};



typedef struct _GameDBInfo_
{
    long            section;
    char            server[128];
    jConnection     conn;
}GameDBInfo, *pGameDBInfo;



class ItemInfo
{
public:
    virtual ~ItemInfo();
    static ItemInfo* Instance();
    virtual void SafeCloseRs();

    virtual bool CheckIP(const char* ip);

    //  获取角色背包数据。type为1时，取背包数据，为2时，取银行数据
    virtual bool GetChaItem(long section, CKitbag& kbcha, long chaID, int type = 1);

    //  获取角色ID列表
    virtual bool GetChaIDList(long section, char* buf, long actID);
    virtual bool GetChaIDList(long section, char* buf, const char* actName);

    //  获取角色名称列表。chaLst格式要求每个角色id之间用逗号相隔
    virtual bool GetChaNameList(long section, char* buf, const char* chaLst, long& count);
    virtual bool GetChaNameList(long section, char* buf, long actID, long& count);

    //  获取角色名
    virtual char* GetChaName(long section, char* buf, long chaID);

    //  角色重命名
    virtual bool RenameCha(long section, long chaID, const char* newname);

    //  获取角色对象的帐户id
    virtual long GetActID(long section, long chaID);

    //  获取角色对象的账户名
    virtual char* GetActName(char* buff, long section, long chaID);

    //  获取帐户ID
    virtual long GetActID(const char* username);

    //  检测角色是否在线
    virtual bool ChkActOffline(long actID);

    //  获取物品属性编号
    virtual short GetItemAttr(const char* attrname, const char* type);

    //  计算百分比值(用于耐久度及能量的实际值计算)
    virtual short CountPercent(short min, short max, int percent);

    //  获取角色外观
    virtual bool GetChaLook(long section, stNetChangeChaPart& chaPart, long chaID);

    //  字符串转物品数据
    virtual bool String2ItemGrid(SItemGrid* ig, const char* str);

	//  字符串转物品数据（无属性信息） //add by wky
    virtual bool String2ItemGrid2(SItemGrid* ig, const char* str);

    //  保存背包到数据库中
    virtual bool SaveKitBag(long section, const char* sqlstr, long chaID);

    //  增加角色海盗币
    virtual bool GainCoin(long section, long chaID, long coin);

    //  查询角色海盗币
    virtual long QueryCoin(long section, long chaID);

    //  添加道具交易纪录
    virtual bool WriteTradeRecord(const char* id, int msg, int section, const char* info);

    //  更新交易记录为已处理
    virtual bool UpdateTradeRecord(const char* id, const char* info);

    //  检测交易记录是否未处理
    virtual bool CheckTradeRecord(char* buf, int& len, const char* id);
	
	//  添加道具交易纪录2（含交易流水号） //add by wky
    virtual bool WriteTradeRecord2(const char* id, int msg, int section, const char* info, const char* flow_id, const char* production_id);

	//  检测交易流水是否未处理 //add by wky
    virtual bool CheckTradeFlowID(const char* flow_id);

    //  检测小区是否有效
    virtual bool CheckSection(long section);

    //  封停帐户
    //virtual bool BanAccount(const char* name, int ban);
    //virtual bool BanAccount(long id, int ban);

	// 封停帐户
	virtual int BanAccount(const char* name, int from, int type);

    //  帐号激活。返回值：0成功，1帐户已存在，2失败
    virtual int ActiveAccount(const char* name, const char* password);
    virtual bool UpdatePasswd(const char* name, const char* oldpassword, const char* newpassword);

    //  在线人数
    virtual long GetOnline(int section);

    //  tom帐号激活.返回值: 0成功,1错误的二次密码,2账户已存在,3失败,4已激活
    virtual int TomAccount(char* info, long section, const char* tomName, const char* passwd2, const char* name, const char* passwd);

	//  根据用户名获取帐号 //add by wky
	virtual char* GetAccountFromChaName(long section, char* buf, char* chaName);

	//  获取帐户所有信息 //add by wky
    virtual char* GetAccount(long section, char* buf, char* actName);

	//  获取角色所有信息 //add by wky
    virtual char* GetCharacter(long section, char* buf, char* chaName);

	//  模糊查询帐户名 //add by wky
	virtual char* GetAccountApproximately(long section, char* buf, char* actName, int page);

	//  模糊查询角色名 //add by wky
	virtual char* GetCharacterApproximately(long section, char* buf, char* chaName, int page);

	//	清空二次密码 //add by wky
	virtual bool ClearSecondPassword(long section, char* actName);

	//	恢复角色 //add by wky
	virtual bool ResumeCharacter(long section, char* chaID);

	//	排行榜 //add by wky
	virtual char* GetSortedCharacters(long section, char* buf, int& num, char order);

public:
    pGameDBInfo     m_gdbList;
    long            m_num;

protected:
    ItemInfo();
    virtual jConnection* GetConnection(long section);
    static ItemInfo* instance;
    _RecordsetPtr   m_rs;
    Lock            m_lock; //  资源锁，防止rs对象被多线程脏读或互刷
    char            m_sql[16384];
};


#endif
