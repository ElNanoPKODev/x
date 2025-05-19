// ListBoxEx.cpp : 实现文件
//

#include "stdafx.h"
#include "ListBoxEx.h"


// CListBoxEx

IMPLEMENT_DYNAMIC(CListBoxEx, CListBox)
CListBoxEx::CListBoxEx()
: m_bDraging(FALSE)
{
}

CListBoxEx::~CListBoxEx()
{
}


BEGIN_MESSAGE_MAP(CListBoxEx, CListBox)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
//    ON_WM_KEYDOWN()
END_MESSAGE_MAP()



// CListBoxEx 消息处理程序


void CListBoxEx::OnLButtonDown(UINT nFlags, CPoint point)
{
	// TODO: 在此添加消息处理程序代码和/或调用默认值
	CListBox::OnLButtonDown(nFlags, point);
	int i=GetCurSel();
	if(i!=-1)
	{
		CRect rect;
		this->GetItemRect(i,&rect);
		if(rect.PtInRect(point))
		{
			m_iDragIndex=i;
			m_bDraging=TRUE;
			CClientDC dc(this);
			CBitmap bmp;
			bmp.DeleteObject();
			bmp.CreateCompatibleBitmap(&dc,rect.Width(),rect.Height());
			CDC memDC;
			memDC.CreateCompatibleDC(&dc);
			HGDIOBJ hOldBmp=memDC.SelectObject(bmp);
			memDC.BitBlt(0,0,rect.Width(),rect.Height(),&dc,rect.left,rect.top,SRCCOPY);
			memDC.SelectObject(hOldBmp);
			memDC.DeleteDC();
			
			m_ImageList.DeleteImageList();
			m_ImageList.Create(rect.Width(),rect.Height(),ILC_COLOR,0,1);
			m_ImageList.Add(&bmp,(COLORREF)RGB(0,0,0));
			bmp.DeleteObject();
			CPoint p1=point;
			this->ClientToScreen(&p1);
			m_ImageList.BeginDrag(0,CPoint(point.x-rect.left-3,point.y-rect.top-3));
			m_ImageList.DragEnter(this,point);
		}
	}

}

void CListBoxEx::OnLButtonUp(UINT nFlags, CPoint point)
{
	// TODO: 在此添加消息处理程序代码和/或调用默认值
	if(m_bDraging)
	{
		
		m_bDraging=FALSE;
		m_ImageList.DragLeave(this);
		m_ImageList.EndDrag();
		int i=GetCurSel();
		if(i!=m_iDragIndex)
		{
			CString strTemp;
			this->GetText(m_iDragIndex,strTemp);
			this->DeleteString(m_iDragIndex);
			this->InsertString(i,strTemp);
			if(GetParent())
			{
				GetParent()->SendMessage(WM_ITEM_MOVE,GetDlgCtrlID(),MAKELPARAM(m_iDragIndex,i));
			}
			this->SetCurSel(i);
			this->RedrawWindow();
		}
	}
	CListBox::OnLButtonUp(nFlags, point);
}

void CListBoxEx::OnMouseMove(UINT nFlags, CPoint point)
{
	// TODO: 在此添加消息处理程序代码和/或调用默认值
	if(m_bDraging)
	{
		CPoint p1=point;
		this->ClientToScreen(&p1);
		this->RedrawWindow();
		m_ImageList.DragMove(point);
	}
	CListBox::OnMouseMove(nFlags, point);
}

//void CListBoxEx::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)
//{
//    // TODO: 在此添加消息处理程序代码和/或调用默认值
//
//    CListBox::OnKeyDown(nChar, nRepCnt, nFlags);
//}
