// DXInput.cpp: implementation of the CDXInput class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "../../proj/EffectEditer.h"

#include "DXInput.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CDXInput::CDXInput()
{
    m_lpInput=NULL;
    m_lpKeyBoardDev=NULL;
    m_lpMouseDev=NULL;
    m_lpJoyStickDev=NULL;

}
CDXInput::~CDXInput()
{
    free();
}

BOOL CDXInput::Create()
{
    if(FAILED(DirectInput8Create(GetModuleHandle(NULL), 
                         DIRECTINPUT_VERSION,
                        IID_IDirectInput8,
                        (void**)&m_lpInput,
                         NULL)))
	{
		return FALSE;
	}

	m_Devinfo.dwCount=0;
	if(FAILED(m_lpInput->EnumDevices(DI8DEVCLASS_ALL,
	         	enumDEVICESCALLBACK,&m_Devinfo,0)))
	{
		free();
		return FALSE;
	}
	
		

    return TRUE;

}

BOOL FAR PASCAL  enumDEVICESCALLBACK(LPCDIDEVICEINSTANCE lpdii, LPVOID lpvoid)
{
	if(GET_DIDEVICE_TYPE(lpdii->dwDevType)==DI8DEVTYPE_MOUSE)
		return DIENUM_CONTINUE;
	if(GET_DIDEVICE_TYPE(lpdii->dwDevType)==DI8DEVTYPE_KEYBOARD)
		return DIENUM_CONTINUE;
	if(GET_DIDEVICE_TYPE(lpdii->dwDevType)==DI8DEVTYPE_JOYSTICK)
	{
      	InputInfo *pdevinfo=(InputInfo*)lpvoid;
	//	pdevinfo->devinfo[pdevinfo->dwCount].lpdevInstance->dwSize=sizeof(LPCDIDEVICEINSTANCE);
      	pdevinfo->devinfo[pdevinfo->dwCount].lpdevInstance=lpdii;
        pdevinfo->dwCount++;
		return DIENUM_CONTINUE;
	}
	return DIENUM_CONTINUE;
}

BOOL CDXInput::CreateKeyBoardDevice(HWND hwnd ,DWORD dwFlags,BOOL bIsNeedData)
{
	if(m_lpInput==NULL)
	{
		return FALSE;
	}

    if(FAILED(m_lpInput->CreateDevice(GUID_SysKeyboard,
		&m_lpKeyBoardDev,NULL)))
		return FALSE;


	if(FAILED(m_lpKeyBoardDev->SetDataFormat(&c_dfDIKeyboard)))
	{
		free();
		return FALSE;
	}

    if(FAILED(m_lpKeyBoardDev->SetCooperativeLevel(hwnd,
		dwFlags)))
	{
		free();
		return FALSE;
	}
	if(bIsNeedData)
	{
		
        DIPROPDWORD     property;
        property.diph.dwSize = sizeof(DIPROPDWORD);
        property.diph.dwHeaderSize = sizeof(DIPROPHEADER);
        property.diph.dwObj = 0;
        property.diph.dwHow = DIPH_DEVICE;
        property.dwData = DINPUT_BUFFERSIZE;

        if(FAILED(m_lpKeyBoardDev->SetProperty(DIPROP_BUFFERSIZE, 
    		&property.diph)))
    		return FALSE;

//        m_dwkey_Elements = DINPUT_BUFFERSIZE;
	}
    m_lpKeyBoardDev->Acquire();
	return TRUE;
}

BOOL CDXInput::CreateMouseDevice(HWND hwnd , DWORD dwFlags,BOOL bIsNeedData)
{
	if(m_lpInput==NULL)
	{
		return FALSE;
	}
    if(FAILED(m_lpInput->CreateDevice(GUID_SysMouse,
		&m_lpMouseDev,NULL)))
	{
		free();
		return FALSE;
	}

		if(FAILED(m_lpMouseDev->SetDataFormat(&c_dfDIMouse)))
		{
			free();
			return FALSE;
		}

		if(FAILED(m_lpMouseDev->SetCooperativeLevel(hwnd,
		dwFlags)))
		{
			free();
			return FALSE;
		}
       if(bIsNeedData)
       {		
		   DIPROPDWORD dipdw;

           dipdw.diph.dwSize       = sizeof(DIPROPDWORD);
           dipdw.diph.dwHeaderSize = sizeof(DIPROPHEADER);
           dipdw.diph.dwObj        = 0;
           dipdw.diph.dwHow        = DIPH_DEVICE;
           dipdw.dwData            = DINPUT_BUFFERSIZE; // Arbitary buffer size

           if( FAILED(m_lpMouseDev->SetProperty( DIPROP_BUFFERSIZE, &dipdw.diph ) ) )
               return FALSE;


	   }

    m_lpMouseDev->Acquire();

	return TRUE;
}

BOOL CDXInput::CreateJoyStickDevice(REFGUID rguid, HWND hwnd, DWORD dwFlags)
{
	if(m_lpInput==NULL)
	{
		return FALSE;
	}
    if(FAILED(m_lpInput->CreateDevice(rguid,   \
		&m_lpJoyStickDev,NULL)))
	{
		free();
		return FALSE;
	}

	for(DWORD dwCap=0; dwCap<m_Devinfo.dwCount; dwCap++)
	{
		if(m_Devinfo.devinfo[dwCap].lpdevInstance->guidInstance==rguid)
		{
            m_Devinfo.CurDevInfo=&m_Devinfo.devinfo[dwCap];
			m_Devinfo.devinfo[dwCap].ipCaps->dwSize=sizeof(DIDEVCAPS);
	      	m_lpJoyStickDev->GetCapabilities(m_Devinfo.devinfo[dwCap].ipCaps);
	
            for(DWORD dwobj=0; dwobj<m_Devinfo.devinfo[dwCap].ipCaps->dwButtons; dwobj++)
			{
	     //	   m_Devinfo.devinfo[dwCap].bottonobjectinfo[dwobj].lpdevobject.dwSize=sizeof(DIDEVICEOBJECTINSTANCE);
         	   
	    	   m_lpJoyStickDev->GetObjectInfo(& m_Devinfo.devinfo[dwCap].bottonobjectinfo[dwobj].lpdevobject,
	               	DIJOFS_BUTTON(dwobj),DIPH_BYOFFSET);
					
			}
			DWORD dwobjecttype[6]={
                               DIJOFS_X ,
                               DIJOFS_Y ,
                               DIJOFS_Z ,
                               DIJOFS_RX,
                               DIJOFS_RY,
                               DIJOFS_RZ		
			};
            for(DWORD dwaxes=0; dwaxes<m_Devinfo.devinfo[dwCap].ipCaps->dwAxes; dwaxes++)
			{
	     //	   m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwSize=sizeof(DIDEVICEOBJECTINSTANCE);
         	   
	    	   m_lpJoyStickDev->GetObjectInfo(& m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject,
	               	dwobjecttype[dwaxes],DIPH_BYOFFSET);
					
			}
            for(DWORD dwrov=0; dwrov<m_Devinfo.devinfo[dwCap].ipCaps->dwPOVs; dwrov++)
			{
	     //	   m_Devinfo.devinfo[dwCap].povsobjectinfo[dwrov].lpdevobject.dwSize=sizeof(DIDEVICEOBJECTINSTANCE);
         	   
	    	   m_lpJoyStickDev->GetObjectInfo(& m_Devinfo.devinfo[dwCap].povsobjectinfo[dwrov].lpdevobject,
	               	DIJOFS_POV(dwrov),DIPH_BYOFFSET);
					
			}


			break;
		}

	}

	if(FAILED(m_lpJoyStickDev->SetDataFormat(&c_dfDIJoystick)))
	{
		free();
		return FALSE;
	}

	if(FAILED(m_lpJoyStickDev->SetCooperativeLevel(hwnd,   \
		dwFlags)))
	{
		free();
		return FALSE;
	}
    m_lpJoyStickDev->Acquire();
	return TRUE;
}

char* CDXInput::GetKeyBoardState()
{
    m_lpKeyBoardDev->Acquire();
	if(FAILED(m_lpKeyBoardDev->GetDeviceState(256,\
		(LPVOID)&m_key_state)))
		return NULL;
	return m_key_state;
}

DIMOUSESTATE * CDXInput::GetMouseState()
{
    m_lpMouseDev->Acquire();
	if(FAILED(m_lpMouseDev->GetDeviceState(sizeof(DIMOUSESTATE),\
		&m_mouse_state)))
		return NULL;
	return &m_mouse_state;
}

DIJOYSTATE* CDXInput::GetJoyStickState()
{
    m_lpJoyStickDev->Acquire();
	m_lpJoyStickDev->Poll();
	if(FAILED(m_lpJoyStickDev->GetDeviceState(sizeof(DIJOYSTATE),\
		&m_joystate)))
		return NULL;
	return &m_joystate;
}



BOOL CDXInput::SetJoyStickRange(REFGUID rguid,
								LONG xmin, LONG xmax,
								LONG ymin, LONG ymax,
								LONG zmin, LONG zmax,
								LONG xrmin, LONG xrmax,
								LONG yrmin, LONG yrmax,
								LONG zrmin, LONG zrmax,
								DWORD deadzone/*Ã¤µã*/)
{
	for(DWORD dwCap=0; dwCap<m_Devinfo.dwCount; dwCap++)
	{
		if(m_Devinfo.devinfo[dwCap].lpdevInstance->guidInstance==rguid)
		{
			DIPROPRANGE diproprange;
            diproprange.diph.dwSize=sizeof(diproprange);
            diproprange.diph.dwHeaderSize=sizeof(diproprange.diph);
            diproprange.diph.dwHow= DIPH_BYOFFSET;
  
        	DIPROPDWORD dipropword;
        	dipropword.diph.dwSize=sizeof(dipropword);
        	dipropword.diph.dwHeaderSize=sizeof(dipropword.diph);
         	dipropword.diph.dwHow= DIPH_BYOFFSET;

            for(DWORD dwaxes=0; dwaxes<m_Devinfo.devinfo[dwCap].ipCaps->dwAxes; dwaxes++)
			{   

                if(m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwType==DIJOFS_X)
				{
                   	diproprange.diph.dwObj= DIJOFS_X;
                 	diproprange.lMax=xmax;
                  	diproprange.lMin=xmin;

                	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_RANGE,& diproprange.diph)))
                 		return FALSE;

	             	dipropword.diph.dwObj= DIJOFS_X;
                	dipropword.dwData= deadzone;
                 	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_DEADZONE, &dipropword.diph)))
                 		return FALSE;

					continue;
				}
                if(m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwType==DIJOFS_Y)
				{
     
                	diproprange.diph.dwObj= DIJOFS_Y;
                 	diproprange.lMax=ymax;
                  	diproprange.lMin=ymin;

                  	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_RANGE, &diproprange.diph)))
                  		return FALSE;

	          		dipropword.diph.dwObj= DIJOFS_Y;
                	dipropword.dwData= deadzone;
                	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_DEADZONE, &dipropword.diph)))
                 		return FALSE;
                    continue;
				}
                if(m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwType==DIJOFS_Z)
				{

                	diproprange.diph.dwObj= DIJOFS_Z;
                  	diproprange.lMax=zmax;
                 	diproprange.lMin=zmin;

                   	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_RANGE, &diproprange.diph)))
               		return FALSE;

					dipropword.diph.dwObj= DIJOFS_Z;
                	dipropword.dwData= deadzone;
                 	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_DEADZONE, &dipropword.diph)))
                		return FALSE;
                    continue;
				}
                if(m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwType==DIJOFS_RX)
				{

                 	diproprange.diph.dwObj= DIJOFS_RX;
                  	diproprange.lMax=xrmax;
                  	diproprange.lMin=xrmin;

                  	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_RANGE, &diproprange.diph)))
                  		return FALSE;

					dipropword.diph.dwObj= DIJOFS_RX;
                	dipropword.dwData= deadzone;
                   	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_DEADZONE, &dipropword.diph)))
                  		return FALSE;
                    continue;
				}
                if(m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwType==DIJOFS_RY)
				{

                  	diproprange.diph.dwObj= DIJOFS_RY;
                   	diproprange.lMax=yrmax;
                   	diproprange.lMin=yrmin;

                  	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_RANGE, &diproprange.diph)))
                		return FALSE;

					dipropword.diph.dwObj= DIJOFS_RY;
                	dipropword.dwData= deadzone;
                	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_DEADZONE, &dipropword.diph)))
                		return FALSE;
                    continue;
				}
                if(m_Devinfo.devinfo[dwCap].axesobjectinfo[dwaxes].lpdevobject.dwType==DIJOFS_RZ)
				{

                  	diproprange.diph.dwObj= DIJOFS_RZ;
                  	diproprange.lMax=zrmax;
                  	diproprange.lMin=zrmin;

                	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_RANGE, &diproprange.diph)))
                  		return FALSE;

					dipropword.diph.dwObj= DIJOFS_RZ;
                 	dipropword.dwData= deadzone;
                 	if(FAILED(m_lpJoyStickDev->SetProperty(DIPROP_DEADZONE, &dipropword.diph)))
                		return FALSE;
                    continue;
				}

			}
			break;
		}
	}
    return TRUE;
}

BOOL CDXInput::freekeyboard()
{   
	if(m_lpKeyBoardDev==NULL)
		return FALSE;
	m_lpKeyBoardDev->Unacquire();
	return TRUE;
}

BOOL CDXInput::freemouse()
{
    if(m_lpMouseDev==NULL)
		return FALSE;
	m_lpMouseDev->Unacquire();
	return TRUE;
}

BOOL CDXInput::freeJoyStick()
{
    if(m_lpJoyStickDev==NULL)
		return FALSE;
	m_lpJoyStickDev->Unacquire();
	return TRUE;
}

void CDXInput::free()
{
    if(m_lpKeyBoardDev!=NULL)
	{
    	m_lpKeyBoardDev->Unacquire();
    	m_lpKeyBoardDev->Release();
		m_lpKeyBoardDev=NULL;
	}
    if(m_lpMouseDev!=NULL)
	{
    	m_lpMouseDev->Unacquire();
     	m_lpMouseDev->Release();
		m_lpMouseDev=NULL;
	}
    if(m_lpJoyStickDev!=NULL)
	{
     	m_lpJoyStickDev->Unacquire();
     	m_lpJoyStickDev->Release();
		m_lpJoyStickDev=NULL;
	}
	if(m_lpInput!=NULL)
	{
		m_lpInput->Release();
		m_lpInput=NULL;
	}
}

BOOL CDXInput::ResetJoyStick(HWND hwnd)
{
    if(FAILED(m_lpInput->CreateDevice(m_Devinfo.CurDevInfo->lpdevInstance->guidInstance,   \
		&m_lpJoyStickDev,NULL)))
		return FALSE;


	if(FAILED(m_lpJoyStickDev->SetDataFormat(&c_dfDIJoystick)))
		return FALSE;

	if(FAILED(m_lpJoyStickDev->SetCooperativeLevel(hwnd,   \
		DISCL_EXCLUSIVE|DISCL_FOREGROUND)))
		return FALSE;

	return TRUE;
}

BOOL CDXInput::GetKeyData(DIDEVICEOBJECTDATA  *m_key_didod,\
		                DWORD   *m_dwkey_Elements)
{
	HRESULT  hr;
getdata:
	m_lpKeyBoardDev->Poll();
    if(DI_OK!=(hr = m_lpKeyBoardDev->GetDeviceData(sizeof(DIDEVICEOBJECTDATA),
		m_key_didod,m_dwkey_Elements,0)))
	{
         if(hr==DIERR_INPUTLOST)
		 {
			 if(SUCCEEDED(hr = m_lpKeyBoardDev->Acquire()))
				 goto getdata;
		 }
		 if(hr == DIERR_OTHERAPPHASPRIO || 
            hr == DIERR_NOTACQUIRED || 
			hr == DI_BUFFEROVERFLOW)
		 {
//			 GetKeyBoardState();

			 return FALSE;
		 }
		 return FALSE;
	}
    return TRUE;
}

BOOL CDXInput::GetMouseData(DIDEVICEOBJECTDATA  *m_mouse_didod,\
	                 	DWORD   *m_dwmouse_Elements)
{
	HRESULT  hr;
getdata:
	m_lpMouseDev->Poll();
    if(DI_OK!=(hr = m_lpMouseDev->GetDeviceData(sizeof(DIDEVICEOBJECTDATA),
                                   m_mouse_didod,
                                   m_dwmouse_Elements,
                                   0)))
	{
         if(hr==DIERR_INPUTLOST)
		 {
			 if(SUCCEEDED(hr =m_lpMouseDev->Acquire()))
				 goto getdata;
		 }
		 if(hr == DIERR_OTHERAPPHASPRIO || 
            hr == DIERR_NOTACQUIRED || 
			hr == DI_BUFFEROVERFLOW)
		 {
//			 GetMouseState();
			 return FALSE;
		 }
    	 return FALSE;
	}
	return TRUE;
}
