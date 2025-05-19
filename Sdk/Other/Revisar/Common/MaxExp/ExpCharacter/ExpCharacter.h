// ExpCharacter.h : main header file for the ExpCharacter DLL
//

#pragma once

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols


// CExpCharacterApp
// See ExpCharacter.cpp for the implementation of this class
//

class CExpCharacterApp : public CWinApp
{
public:
	CExpCharacterApp();

// Overrides
public:
	virtual BOOL InitInstance();

	DECLARE_MESSAGE_MAP()
};
