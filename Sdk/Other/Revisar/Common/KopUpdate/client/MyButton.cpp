
#include "stdafx.h"
#include "MyButton.h"


IMPLEMENT_DYNAMIC(CMyButton, CButton)
CMyButton::CMyButton()
{
	_bSelected = FALSE;
	_bDrawText = FALSE;
	_bmpColorKey = RGB(255,1,255);
}

CMyButton::~CMyButton()
{
}


BEGIN_MESSAGE_MAP(CMyButton, CButton)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_MESSAGE(WM_MOUSELEAVE, OnMouseLeave)
	ON_WM_ENABLE()
END_MESSAGE_MAP()



void CMyButton::OnLButtonDown(UINT nFlags, CPoint point)
{
	if(_nCurrentState)
	{
		_nCurrentState = MyButton_MouseDown;
		Invalidate();
	}

	CButton::OnLButtonDown(nFlags, point);
}


void CMyButton::OnLButtonUp(UINT nFlags, CPoint point)
{
	if(_nCurrentState)
	{
		_nCurrentState = MyButton_MouseDown;
		Invalidate();
	}

	CButton::OnLButtonUp(nFlags, point);
}


void CMyButton::OnMouseMove(UINT nFlags, CPoint point)
{
	if(_nCurrentState != MyButton_MouseIn)
	{
//		_nCurrentState = (GetAsyncKeyState(VK_LBUTTON) & 0x8000) ? MyButton_MouseDown : MyButton_MouseIn;
		_nCurrentState = MyButton_MouseIn;
		Invalidate();

		TRACKMOUSEEVENT trackmouseevent;
		trackmouseevent.cbSize		= sizeof(TRACKMOUSEEVENT);
		trackmouseevent.dwFlags		= TME_LEAVE;
		trackmouseevent.hwndTrack	= GetSafeHwnd();
		trackmouseevent.dwHoverTime	= HOVER_DEFAULT;
		TrackMouseEvent(&trackmouseevent);

	}

	CButton::OnMouseMove(nFlags, point);
}


LRESULT CMyButton::OnMouseLeave(WPARAM wParam, LPARAM lParam)
{
	if(_nCurrentState)
	{
		_nCurrentState = MyButton_MouseOut;
		Invalidate();
	}

	return 0;
}


void CMyButton::OnEnable(BOOL bEnable)
{
	_nCurrentState = bEnable ? MyButton_MouseOut : MyButton_Disable;
	Invalidate();
}


void CMyButton::PreSubclassWindow()
{
	ModifyStyle(0, BS_OWNERDRAW);
	_nCurrentState = IsWindowEnabled() ? MyButton_MouseOut : MyButton_Disable;

	CButton::PreSubclassWindow();
}


void CMyButton::DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct)
{
	CDC*  pDC		= CDC::FromHandle(lpDrawItemStruct->hDC);  
	DWORD nState	= lpDrawItemStruct->itemState;  
	DWORD nAction	= lpDrawItemStruct->itemAction;    
	CRect rc		= lpDrawItemStruct->rcItem;  
	UINT  uStyle	= DFCS_BUTTONPUSH;  

	CDC dcBitmap;
	dcBitmap.CreateCompatibleDC(pDC);

	//pDC->SetBkMode(TRANSPARENT);  

	CRect*	 pRect	 = &_rcArea[_nCurrentState];
	CBitmap* pBitmap = &_bmpBackGround;
	CBitmap* pOldBmp = dcBitmap.SelectObject(pBitmap);

	if(_bSelected && _nCurrentState == MyButton_MouseOut)
	{
		// 特殊需要，要求一直亮着
		pRect = &_rcArea[MyButton_MouseIn];
	}
	HRGN hRgn = CreateRectRgn(0, 0, 0, 0);

	GetWindowRgn(hRgn);
	CRect rc1;
	GetRgnBox(hRgn,&rc1);
	

	// 绘制背景图
	BITMAP bm;
	memset(&bm, 0, sizeof(BITMAP));
	pBitmap->GetBitmap(&bm);
	::SelectClipRgn(pDC -> GetSafeHdc(), hRgn);
	pDC->StretchBlt(0, 0, rc.Width(), rc.Height(), &dcBitmap, 
		pRect->left, pRect->top, pRect->Width(), pRect->Height(), SRCCOPY);
		::SelectClipRgn(pDC -> GetSafeHdc(), NULL);
	pDC->SelectObject(pOldBmp);
	DeleteObject(hRgn);
	
	// 绘制文字
	if(_bDrawText)
	{
		CString strText;
		GetWindowText(strText);
		pDC->SetTextColor(RGB(255,255,255));
		pDC->DrawText(strText, strText.GetLength(), rc, DT_SINGLELINE|DT_VCENTER|DT_CENTER);
	}
}


// 从资源中载入四态位图
void CMyButton::SetBitmaps(UINT nBitmapID, CRect* pDisable, CRect* pMouseOut, CRect* pMouseIn, CRect* pMouseDown, DWORD dwColorKey,BOOL bDrawText)
{
	_bmpBackGround.LoadBitmap(nBitmapID);
	//SetRegion(&_bmpBackGround, pDisable);

	_rcArea[MyButton_Disable  ] = *pDisable;
	_rcArea[MyButton_MouseOut ] = *pMouseOut;
	_rcArea[MyButton_MouseIn  ] = *pMouseIn;
	_rcArea[MyButton_MouseDown] = *pMouseDown;
	_bmpColorKey = dwColorKey;
	_bDrawText = bDrawText;
	CRect bmpRect;
	bmpRect.SetRect(pMouseOut->left,pMouseOut->top,pMouseOut->left+pDisable->Width(),pMouseOut->top+pDisable->Height());

	if(_bmpColorKey!=-1)
		SetRegion(&_bmpBackGround,&bmpRect,_bmpColorKey);


	
}
// 从资源中载入四态位图
void CMyButton::SetBitmaps(const char* pBitmapName, CRect* pDisable, CRect* pMouseOut, CRect* pMouseIn, CRect* pMouseDown, DWORD dwColorKey,BOOL bDrawText)
{
	_bmpBackGround.LoadBitmap(pBitmapName);
	//SetRegion(&_bmpBackGround, pDisable);

	_rcArea[MyButton_Disable  ] = *pDisable;
	_rcArea[MyButton_MouseOut ] = *pMouseOut;
	_rcArea[MyButton_MouseIn  ] = *pMouseIn;
	_rcArea[MyButton_MouseDown] = *pMouseDown;
	_bmpColorKey = dwColorKey;
	_bDrawText = bDrawText;
	CRect bmpRect;
	bmpRect.SetRect(pMouseOut->left,pMouseOut->top,pMouseOut->left+pDisable->Width(),pMouseOut->top+pDisable->Height());

	if(_bmpColorKey!=-1)
		SetRegion(&_bmpBackGround,&bmpRect,_bmpColorKey);
}


// 设置按钮区域
void CMyButton::SetRegion(CBitmap* pBitmap, CRect* pBitmapArea, DWORD dwColorKey)
{
	
	CClientDC dc(this);
    CDC memDC;
    //创建与传入DC兼容的临时DC
    memDC.CreateCompatibleDC(&dc);
    
    CBitmap *pOldMemBmp=NULL;
    //将位图选入临时DC
    pOldMemBmp = memDC.SelectObject(pBitmap);

    CRgn wndRgn;
    //创建总的窗体区域，初始region为0
    wndRgn.CreateRectRgn(0,0,0,0);
    
    
	int width = pBitmapArea->Width();
	int height = pBitmapArea->Height();

	int row_start;

	// Go through all rows
	for (int y=0; y<height; y++)
	{
		// Start looking at the beginning
		row_start = 0;

		// Go through all columns
		for (int x=0; x<width; x++)
		{
			// If this pixel is transparent
			if (memDC.GetPixel(x+pBitmapArea->left, y+pBitmapArea->top) == dwColorKey)
			{
				// If we haven't found an opaque pixel yet, keep searching
				if (row_start == x) row_start ++;
				else
				{
					// We have found the start (row_start) and end (x) of
					// an opaque line.  Add it to the region.
					CRgn rgnAdd;
					rgnAdd.CreateRectRgn (row_start,
						y, x, y+1);
					wndRgn.CombineRgn (&wndRgn, &rgnAdd, RGN_OR);
					row_start = x+1;
				}
			}
		}

		// If the last pixel is still opaque, make a region.
		if (row_start != x)
		{
			CRgn rgnAdd;
			rgnAdd.CreateRectRgn (row_start, y,
				x, y+1);
			wndRgn.CombineRgn (&wndRgn, &rgnAdd, RGN_OR);
		}
	}
    
    if(pOldMemBmp) memDC.SelectObject(pOldMemBmp);

	this->SetWindowRgn(wndRgn,TRUE);    
}


void CMyButton::SetIsSelected(BOOL bSelected)
{
	_bSelected = bSelected;
	InvalidateRect(0);
}

BOOL CMyButton::GetIsSelected(void)
{
	return _bSelected;
}

