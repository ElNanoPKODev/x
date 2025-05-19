#if !defined(__MYBAR_H__)
#define __MYBAR_H__

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// mybar.h : header file
//

#include "sizecbar.h"

#include "toolview.h"
/////////////////////////////////////////////////////////////////////////////
// CMyBar window

#ifndef baseCMyBar
#define baseCMyBar CSizingControlBar
#endif

class CMyBar : public baseCMyBar
{
// Construction
public:

// Attributes
public:

// Overridables
    virtual void OnUpdateCmdUI(CFrameWnd* pTarget, BOOL bDisableIfNoHndler);

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMyBar)
    //}}AFX_VIRTUAL

// Implementation
public:
    CMyBar();
    virtual ~CMyBar();

public:
   // CButton m_wndChild;
    //ToolView m_wndChild;
    ToolViewBase* _toolview;
    CFont   m_font;

    inline void SetToolView( ToolViewBase* view ) { _toolview = view; }
    // Generated message map functions
protected:
    //{{AFX_MSG(CMyBar)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(__MYBAR_H__)
