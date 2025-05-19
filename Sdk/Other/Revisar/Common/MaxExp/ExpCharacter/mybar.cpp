// mybar.cpp : implementation file
//

#include "stdafx.h"
#include "mybar.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyBar

CMyBar::CMyBar()
: _toolview(0)
{
}

CMyBar::~CMyBar()
{
}


BEGIN_MESSAGE_MAP(CMyBar, baseCMyBar)
    //{{AFX_MSG_MAP(CMyBar)
    ON_WM_CREATE()
    ON_WM_SIZE()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CMyBar message handlers

int CMyBar::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (baseCMyBar::OnCreate(lpCreateStruct) == -1)
        return -1;

    //if ( !m_wndChild.Create(0,0,WS_VISIBLE|WS_CHILD,CRect(0,0,0,0),this,IDD_FORMVIEW,0) )
    //    return -1;

    // older versions of Windows* (NT 3.51 for instance)
    // fail with DEFAULT_GUI_FONT
    if (!m_font.CreateStockObject(DEFAULT_GUI_FONT))
        if (!m_font.CreatePointFont(80, "MS Sans Serif"))
            return -1;

    //m_wndChild.SetFont(&m_font);

    return 0;
}

void CMyBar::OnUpdateCmdUI(CFrameWnd* pTarget, BOOL bDisableIfNoHndler)
{
    baseCMyBar::OnUpdateCmdUI(pTarget, bDisableIfNoHndler);

    UpdateDialogControls(pTarget, bDisableIfNoHndler);
}

void CMyBar::OnSize(UINT nType, int cx, int cy) 
{
    baseCMyBar::OnSize(nType, cx, cy);

    // TODO: Add your message handler code here
    if( _toolview ) {
        CRect rc;
        GetClientRect(rc);

        _toolview->MoveWindow(rc);
        //m_wndChild.MoveWindow(rc);
    }
}
