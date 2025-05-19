//----------------------------------------------------------------------
// 名称:道具
// 作者:lh 2004-07-19
// 最后修改日期:2004-10-09
//----------------------------------------------------------------------
#pragma once
#include "UICommand.h"
#include "CompCommand.h"

class CItemRecord;
struct SGameAttr;
struct xShipInfo;
struct NET_CHARTRADE_BOATDATA;
class CStoneInfo;
class CItemRefineInfo;
class CItemRefineEffectInfo;

namespace GUI
{

struct SItemForge
{
	bool	IsForge;			// 是否精炼
	int		nHoleNum;			// 有几个洞
	int		nLevel;				// 精炼等级

	CStoneInfo*	pStoneInfo[3];	// 三颗宝石,为空无宝石
	int		nStoneLevel[3];		// 对应的宝石等级
	char	szStoneHint[3][256];// 宝石说明
	int		nStoneNum;			// 宝石个数

	static SItemForge& Convert( DWORD v, int nItemID=-1 );

	static float GetAlpha( int nTotalLevel );	// 传入总等级,得到特效alpha

public:		// 为道具用
	int						nStoneType[3];		// 宝石类型,没有为-1
	CItemRefineInfo*		pRefineInfo;
	CItemRefineEffectInfo*	pEffectInfo;
	int						nEffectLevel;

private:
	void	Refresh( int nItemID );

};

// 来源于SItemGrid,仅实例化属性不一样，实例化属性 = SItemGrid的实例化属性 + 读取表格
struct SItemHint
{
	short	sID;
	short	sNum;	
	short	sEndure[2];
	short	sEnergy[2];
	char	chForgeLv;
	long	lDBParam[enumITEMDBP_MAXNUM];
	short	sInstAttr[ITEMATTR_CLIENT_MAX];

	void	Convert( SItemGrid& ItemGrid, CItemRecord* pInfo );
};

class CItemCommand : public CCommandObj
{
    enum 
    {
        SOLID_ALPHA = 0xa0000000,
        INVALID_COLOR = 0x00ff0000,
    };
public:
    CItemCommand( CItemRecord* pItem );
    CItemCommand( const CItemCommand& rhs );
    CItemCommand& operator=( const CItemCommand& rhs );
    ~CItemCommand();
    ITEM_CLONE(CItemCommand)

	virtual void	RenderEnergy(int x, int y);
	virtual	void	SaleRender( int x, int y, int nWidth, int nHeight );
    virtual void    Render( int x, int y );
	virtual void	OwnDefRender( int x, int y, int nWidth, int nHeight );


	virtual bool    IsDragFast();
    virtual int     GetTotalNum();
    virtual bool    IsAllowThrow();
    virtual bool    UseCommand();
	virtual bool	MouseDown();
    virtual void    SetTotalNum( int num );
    virtual const char* GetName();

    void		SetData( const SItemGrid& item );
	SItemGrid & GetData() {return _ItemData; }

	void		SetBoatHint( const NET_CHARTRADE_BOATDATA* const pBoat );

    virtual void    SetIsValid( bool v );
    virtual bool    GetIsValid();

    virtual bool    GetIsPile();
    virtual int     GetPrice();

    void    SetIsSolid( bool v );
    bool    GetIsSolid();

    CItemRecord*  GetItemInfo()         { return _pItem;                }

    int     GetThrowLink();         // 成功>=0,失败返回-1

	void	SetPrice( int n )			{ _nPrice=n;					}

	SItemForge&		GetForgeInfo();
	string			GetStoneHint(int nLevel=-1);	// 得到宝石的hint，级别为－1是道具本身的hint，否则为传入等级的hint

	static void ClearCoolDown()			{ _mapCoolDown.clear();			}	// 道具技能 COOLDOWN 信息清除

protected:
    virtual void    AddHint( int x, int y );

	void	PUSH_HINT( const char* str, int value, DWORD color=COLOR_WHITE );

    void    _Copy( const CItemCommand& rhs );
    //int     _GetValue( int nItemAttrType, SItemGrid& item );
    int     _GetValue( int nItemAttrType, SItemHint& item );
	void	_ShowWork( CItemRecord* pItem, SGameAttr* pAttr );	// 用于显示道具的职业限制
	void	_ShowFusionWork(CItemRecord* pAppearItem, CItemRecord* pEquipItem, SGameAttr* pAttr);// 用于显示熔合后道具的职业限制
	void	_AddDescriptor();
	void	_ShowWork( xShipInfo* pInfo, SGameAttr* pAttr );	// 用于显示船的职业限制
	void	_ShowBody();										// 用于显示角色限制
	void    _ShowFusionBody(CItemRecord* pEquipItem);			// 用于显示熔合后角色限制

protected:
	//void	_PushItemAttr( int attr, SItemGrid& item, DWORD color=COLOR_WHITE );
	void	_PushItemAttr( int attr, SItemHint& item, DWORD color=COLOR_WHITE );
	void	_PushValue( const char* szFormat, int attr, SItemHint& item, DWORD color=COLOR_WHITE );

private:
    CGuiPic*        _pImage;
    CItemRecord*	_pItem;
    SItemGrid       _ItemData;
	int				_nPrice;

private:
    DWORD           _dwColor;           // 无效红色显示, 非实体半透明
	NET_CHARTRADE_BOATDATA*		_pBoatHint;

	static map<int, DWORD>		_mapCoolDown;	// 保存上一次放的道具技能的时间
};

// 内联函数
inline void CItemCommand::SetIsValid( bool v )        
{
    _dwColor = ( _dwColor & 0xff000000 ) | ( v ? 0x00ffffff : INVALID_COLOR  );
}

inline bool CItemCommand::GetIsValid()                
{ 
    return (_dwColor & 0x00ffffff)==0x00ffffff;            
}

inline void CItemCommand::SetIsSolid( bool v )        
{ 
    _dwColor = ( _dwColor & 0x00ffffff ) | ( v ? 0xff000000 : SOLID_ALPHA );
}  

inline bool CItemCommand::GetIsSolid()                
{ 
    return (_dwColor & 0xff000000)==0xff000000;    
}

}
