#include "StdAfx.h"
#include ".\TestScripts.h"

CEffectObj::CEffectObj()
{
	m_pEmiCtrl = NULL; //施放特效
	m_pFlyCtrl = NULL; //飞行特效
	m_pHitCtrl = NULL; //受击特效

	m_pChaModel = NULL;
	m_pItem = NULL;

}
CEffectObj::~CEffectObj()
{
}
