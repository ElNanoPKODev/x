#pragma once


#include "GlobalInc.h"

#include <mindpower.h>

#include "../../../Mindpower/sdk/include/MPEffectCtrl.h"

class CEffectObj
{
public:
	CEffectObj();
	~CEffectObj();

	//void	LoadCha();
public:
	CChaModel*					m_pChaModel;
	MPSceneItem*				m_pItem;

	CMPPartCtrl*				m_pEmiCtrl; //施放特效
	CMagicCtrl*					m_pFlyCtrl; //飞行特效
	CMPPartCtrl*				m_pHitCtrl; //受击特效
};