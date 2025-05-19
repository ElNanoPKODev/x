// DXInput.h: interface for the CDXInput class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DXINPUT_H__2D2BCFA1_BBBC_11D6_ABD1_0008C720ECD1__INCLUDED_)
#define AFX_DXINPUT_H__2D2BCFA1_BBBC_11D6_ABD1_0008C720ECD1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//#include "DX3D8.h"
BOOL FAR PASCAL  enumDEVICESCALLBACK(LPCDIDEVICEINSTANCE  lpdii, LPVOID lpvoid);
struct IPDevObjectinfo
{
	DIDEVICEOBJECTINSTANCE  lpdevobject;
};
struct IPDevinfo
{
	IPDevObjectinfo  povsobjectinfo[4];
	IPDevObjectinfo  axesobjectinfo[6];
	IPDevObjectinfo  bottonobjectinfo[32];
    LPCDIDEVICEINSTANCE  lpdevInstance;
	LPDIDEVCAPS  ipCaps;
};
struct InputInfo
{
	IPDevinfo devinfo[10];
	IPDevinfo *CurDevInfo;
	DWORD dwCount;
};
#define DINPUT_BUFFERSIZE  8
class CDXInput  
{
public:
	BOOL GetMouseData(DIDEVICEOBJECTDATA  *m_mouse_didod,\
	                 	DWORD   *m_dwmouse_Elements);
	BOOL  GetKeyData(DIDEVICEOBJECTDATA  *m_key_didod,\
		                DWORD   *m_dwkey_Elements);
	BOOL ResetJoyStick(HWND hwnd);
	void free();
	BOOL freeJoyStick();
	BOOL freemouse();
	BOOL freekeyboard();
	BOOL SetJoyStickRange(REFGUID rguid,
		                  LONG xmin, LONG xmax, 
		                  LONG ymin, LONG ymax,
						  LONG zmin, LONG zmax,
						  LONG xrmin, LONG xrmax,
					      LONG yrmin, LONG yrmax,
						  LONG zrmin, LONG zrmax,
						  DWORD deadzone/*Ã¤µã*/);
	DIJOYSTATE * GetJoyStickState();
	DIMOUSESTATE* GetMouseState();
	char* GetKeyBoardState();
	BOOL CreateJoyStickDevice(REFGUID rguid,HWND hwnd, DWORD dwFlags=DISCL_EXCLUSIVE|DISCL_FOREGROUND);

	BOOL CreateMouseDevice(HWND hwnd, 
		DWORD dwFlags=DISCL_NONEXCLUSIVE|DISCL_BACKGROUND,
		BOOL bIsNeedData=TRUE);

	BOOL CreateKeyBoardDevice(HWND hwnd, 
		DWORD dwFlags=DISCL_NONEXCLUSIVE|DISCL_BACKGROUND,
		BOOL bIsNeedData=TRUE);

	BOOL Create();
	CDXInput();
	virtual ~CDXInput();

	LPDIRECTINPUT8  m_lpInput;
	InputInfo  m_Devinfo;

	LPDIRECTINPUTDEVICE8  m_lpKeyBoardDev;
	char  m_key_state[256];
      // Receives buffered data
    LPDIRECTINPUTDEVICE8  m_lpMouseDev;
	DIMOUSESTATE  m_mouse_state;

    LPDIRECTINPUTDEVICE8  m_lpJoyStickDev;
	DIJOYSTATE  m_joystate;
};

#endif // !defined(AFX_DXINPUT_H__2D2BCFA1_BBBC_11D6_ABD1_0008C720ECD1__INCLUDED_)

