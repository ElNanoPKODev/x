#pragma once

#include <afxcmn.h>
// CListBoxEx
#define WM_ITEM_MOVE	(WM_USER + 101)

class CListBoxEx : public CListBox
{
	DECLARE_DYNAMIC(CListBoxEx)

public:
	CListBoxEx();
	virtual ~CListBoxEx();

protected:
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	BOOL m_bDraging;
	CImageList m_ImageList;
	int m_iDragIndex;
//    afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
};


