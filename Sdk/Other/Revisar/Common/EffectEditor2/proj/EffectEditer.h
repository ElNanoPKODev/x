// EffectEditer.h : EffectEditer 应用程序的主头文件
//
#pragma once

#ifndef __AFXWIN_H__
	#error 在包含用于 PCH 的此文件之前包含“stdafx.h” 
#endif

#include "resource.h"       // 主符号

#include "../src/D3D/D3DGlobal.h"

#include "../src/plus/DXInput.h"

#include "../src/plus/camera.h"

#include "../src/plus/meshplane.h"

#include "../src/D3D/D3DFont.h"


// CEffectEditerApp:
// 有关此类的实现，请参阅 EffectEditer.cpp
//
extern  bool g_bRun;

class CEffectEditerApp : public CWinApp
{
public:
	CEffectEditerApp();

	HMODULE  hLibrary;
	//////////////////////
	void CleanScene();
	void CleanUp();

	/////////////////////
	bool InitD3D(HWND _hWnd);
	bool InitInput(HWND _hWnd);
	bool InitScene();

	////////////////////
	void FrameMove();
	void Render();

	///////////////////
	void GetRay(D3DXVECTOR3 *vRayPos, D3DXVECTOR3 *vRayDir);
	void SelMesh(D3DXVECTOR3 *vRayPos, D3DXVECTOR3 *vRayDir);

	////////////////////
	void GetInputData();
public:
	//!d3d变量
	LPDIRECT3D8			m_pD3D;
	LPDIRECT3DDEVICE8	m_pDev;
	D3DPRESENT_PARAMETERS d3dpp; 
	RECT m_rcWnd;
	RECT m_rcSceneWnd;
	INT				    m_iWidth;
	INT					m_iHeight;

	DIDEVICEOBJECTDATA  m_mouse[DINPUT_BUFFERSIZE];
	DIDEVICEOBJECTDATA  m_key[DINPUT_BUFFERSIZE];

	CDXInput            m_cInput;

	CCamera             m_cCamera;

	CMeshPlane          m_cPlane;

	bool                m_bPressAlt;
	bool                m_bPressCtrl;
	bool                m_bBeginMove;
	bool                m_bBeginRotation;

	CD3DFont			*m_pFont;

	DWORD				dwFps;
	DWORD				dwCurcount;
	DWORD				dwLastTime;

	float					i_w,i_h;
// 重写
public:
	virtual BOOL InitInstance();
	virtual int  ExitInstance();
	virtual BOOL OnIdle(LONG lCount);

// 实现
	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
};

extern CEffectEditerApp theApp;
