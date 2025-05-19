#include "StdAfx.h"
#include ".\dumpwater.h"
#include "EffectEditer.h"


CDumpWater::CDumpWater(void)
{
}

CDumpWater::~CDumpWater(void)
{
}

/************************************************************************/
/*                                                                      */
/************************************************************************/
CKWTimer::CKWTimer()
{
	m_bTimerInitialized = false;
	m_bUsingQPF			= false;
	m_llLastElapsedTime=0;
	m_llQPFTicksPerSec=0;

	m_llBaseTime		= 0;
	m_dwBaseTime  =0;

	m_dwLastElapsedTime=0;
}

CKWTimer::~CKWTimer()
{

}

CSysClock::CSysClock()
{
}
CSysClock::~CSysClock()
{
}

void	CSysClock::Initialize()
{
	m_cTimer.Reset();
	m_dwCurTime = 0;
	m_dwFrameTime = 0;
	m_dwCurFrame = 0;
}
