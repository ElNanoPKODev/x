#pragma once

#include <mmsystem.h>

class CDumpWater
{
public:
	CDumpWater(void);
	~CDumpWater(void);
};

/************************************************************************/
/*                                                                      */
/************************************************************************/
class CKWTimer  
{
public:
	DWORD GetStartTime();		//得到启动时的时间
	DWORD GetStartToNowTime();//得到系统启动到现在的时间
	DWORD GetBetweenLastTime();//得到上次调用经过的时间
	DWORD GetAbsoluteTime();/// 获取绝对时间
	void  Start();
	void  Reset();
	CKWTimer();
	virtual ~CKWTimer();
	//是否初始化定时器
	BOOL	m_bTimerInitialized;
	//是否使用QPF
	BOOL	m_bUsingQPF;

	LONGLONG m_llQPFTicksPerSec; 
	//记录系统启动时间
	LONGLONG m_llBaseTime;
	DWORD m_dwBaseTime;
	//上一次查询的时间
	LONGLONG m_llLastElapsedTime;
	DWORD m_dwLastElapsedTime;
};
inline void CKWTimer::Start()
{
	// 初始化定时器
	if (!m_bTimerInitialized)
	{
		m_bTimerInitialized = true;

		// 使用 QueryPerformanceFrequency() 获取精确时间。如果不支持
		// 只能使用 timeGetTime()
		LARGE_INTEGER qwTicksPerSec;
		m_bUsingQPF = QueryPerformanceFrequency(&qwTicksPerSec);
		if( m_bUsingQPF )
			m_llQPFTicksPerSec = qwTicksPerSec.QuadPart;

		if (m_bUsingQPF)
		{
			LARGE_INTEGER qwTime;
			QueryPerformanceCounter(&qwTime);
			m_llBaseTime = qwTime.QuadPart;

			m_llLastElapsedTime = m_llBaseTime;
		}else
		{
			m_dwBaseTime = timeGetTime();
			m_dwLastElapsedTime = m_dwBaseTime;
		}
	}
}

inline void  CKWTimer::Reset()
{
	m_bTimerInitialized = false;
	Start();
}

inline DWORD CKWTimer::GetStartTime()
{
	if (m_bUsingQPF)
	{
		return  (DWORD)m_llBaseTime;
	}else
	{
		return m_dwBaseTime;
	}
	return 0;
}

inline DWORD CKWTimer::GetAbsoluteTime()
{
	if (m_bUsingQPF)
	{
		LARGE_INTEGER qwTime;
		//double  fTime;
		QueryPerformanceCounter(&qwTime);
		//fTime = (double)qwTime.QuadPart;// / (double) m_llQPFTicksPerSec;
		return (DWORD)qwTime.QuadPart;
	}else
	{
		return timeGetTime();
	}
	return 0;
}
inline DWORD CKWTimer::GetBetweenLastTime()
{
	if (m_bUsingQPF)
	{
		LARGE_INTEGER qwTime;
		QueryPerformanceCounter(&qwTime);

		LONGLONG llElapsedTime;
		llElapsedTime = qwTime.QuadPart - m_llLastElapsedTime;
		m_llLastElapsedTime = qwTime.QuadPart;

		return (DWORD)llElapsedTime;
	}
	else
	{
		DWORD dwTime;
		DWORD dwElapsedTime;

		dwTime = timeGetTime();
		dwElapsedTime = dwTime - m_dwLastElapsedTime;
		m_dwLastElapsedTime = dwTime;
		return (DWORD) dwElapsedTime;
	}
	return 0;
}
inline DWORD CKWTimer::GetStartToNowTime()
{
	if (m_bUsingQPF)
	{
		LARGE_INTEGER qwTime;
		QueryPerformanceCounter(&qwTime);
		//double fAppTime = (double) ( qwTime.QuadPart - m_llBaseTime );// / (double) m_llQPFTicksPerSec;
		return (DWORD) ( qwTime.QuadPart - m_llBaseTime );
	}
	else
	{
		return (timeGetTime() - m_dwBaseTime);
	}
	return 0;
}

/************************************************************************/
/*                                                                      */
/************************************************************************/
class CSysClock
{
public:
	CSysClock();
	~CSysClock();

	void	Initialize();
	void	FrameUpdate();

	DWORD	GetCurTime();
	DWORD	GetDailTime();
	DWORD	GetCurFrame();

public:
	//跟踪真实时间
	CKWTimer	m_cTimer;

	DWORD		m_dwCurTime;	//当前启动到现在的时间
	DWORD		m_dwFrameTime;	//每次更新的前后时间差
	DWORD		m_dwCurFrame;	//当前帧数
};
inline void	CSysClock::FrameUpdate()
{
	m_dwFrameTime = m_cTimer.GetBetweenLastTime();
	m_dwCurTime   = m_cTimer.GetStartToNowTime();
	m_dwCurFrame++;
}
inline DWORD	CSysClock::GetCurTime()
{
	return m_dwCurTime   = m_cTimer.GetStartToNowTime();
}
inline DWORD	CSysClock::GetDailTime()
{
	return m_dwFrameTime;
}
inline DWORD	CSysClock::GetCurFrame()
{
	return m_dwCurFrame;
}
