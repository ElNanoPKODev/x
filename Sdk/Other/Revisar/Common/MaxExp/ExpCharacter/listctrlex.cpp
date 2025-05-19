// author lsh
#include "stdafx.h"
#include "resource.h"

#include "listctrlex.h"
namespace lsh
{

int ExchangeItemData( CListCtrlEx& lv, int src_id, int dst_id )
{
   
    int count = lv.GetItemCount();
    if( src_id < 0 || dst_id < 0 || src_id >= count || dst_id >= count )
        return 0;

    int col_num = lv.GetHeaderCtrl()->GetItemCount();

    char buf[256];

    for( int i = 0; i < col_num; i++ ) {
        if( i == 0 )
            continue;
        lv.GetItemText( src_id, i, buf, 256 );
        lv.SetItemText( src_id, i, lv.GetItemText( dst_id, i ) );
        lv.SetItemText( dst_id, i, buf );
    }

    // 什么烂东西，不能显示选中条～～～
    lv.SetItemState( dst_id, LVIS_SELECTED, LVIS_SELECTED|LVIS_FOCUSED );
    //lv.SetSelectionMark( dst_id );
    //lv.Update( dst_id );
    //lv.RedrawItems( dst_id, dst_id );
    //lv.SetHotItem( dst_id );

    return 1;
}

int ResetItemIndex(CListCtrlEx& lv,int id)
{
	char buf[32];
	int num = lv.GetItemCount();
	for( int i=id; i<num; i++ )
		lv.SetItemText(i,0,itoa(i,buf,10));
	return 1;
}

int NewListCtrlExItem(CListCtrlEx& lv)
{
	int row = 0;
	POSITION pos = lv.GetFirstSelectedItemPosition();
	if( pos ) 
		row = lv.GetNextSelectedItem(pos);
	else
		row = lv.GetItemCount();
	lv.InsertItem(row,"");
	ResetItemIndex(lv,row);
	//lv.SendMessage(WM_LBUTTONDOWN,0,0);
    //lv.SendMessage(WM_LBUTTONUP,0,0);
	lv.EditItem(row,1);
	return row;
}
int DelListCtrlExItem(CListCtrlEx& lv)
{
    int ret;

	POSITION pos = lv.GetFirstSelectedItemPosition();
	if( pos ) {
		int row = lv.GetNextSelectedItem(pos);
		lv.DeleteItem(row);
		ResetItemIndex(lv,row);

        ret = row;
	}
	else {
		//MessageBox(0,"No Selected Item",0,MB_OK);
        ret = -1;
	}

	return ret;

}

//////////
////////////////////////////////////
BEGIN_MESSAGE_MAP(CListCtrlEx, CListCtrl)
ON_WM_LBUTTONDOWN()
ON_WM_HSCROLL()
ON_WM_VSCROLL()
ON_NOTIFY_REFLECT(LVN_ENDLABELEDIT, OnEndlabeledit)
ON_WM_KEYDOWN()
END_MESSAGE_MAP()

// hittest	- determine the row index and column index for a point
// returns	- 1 success 0 if point is not over a row
// point	- point to be tested.
// row      - to hold the row index
// col		- to hold the column index
int CListCtrlEx::HitTest(const CPoint &pt,int *row,int *col) const
{
	int colnum = 0;
    int row_b = CListCtrl::HitTest( pt,0 );
	
	if( col ) *col = 0;

	// make sure that the listview is in lvs_report
	if( (GetWindowLong(m_hWnd, GWL_STYLE) & LVS_TYPEMASK) != LVS_REPORT )
		return 0;

	// get the top and bottom row visible
	row_b = GetTopIndex();
	int bottom = row_b + GetCountPerPage();
	if( bottom > GetItemCount() )
		bottom = GetItemCount();
	
	// get the number of columns
	CHeaderCtrl* pheader = (CHeaderCtrl*)GetDlgItem(0);
	int ncolumncount = pheader->GetItemCount();

	// loop through the visible rows
	for( ;row_b <=bottom;row_b++) { // get bounding rect of item and check whether point falls in it. 
        CRect rect; 
        GetItemRect( row_b, &rect, LVIR_BOUNDS); 
        if( rect.PtInRect(pt) ) { // now find the column 
            for( colnum=0; colnum < ncolumncount; colnum++ ) {
                int colwidth=GetColumnWidth(colnum);
                if( pt.x>= rect.left && pt.x <= (rect.left + colwidth ) ) { 
                    if( col )
                        *col=colnum;
                    if( row )
                        *row=row_b;
                    return 1; 
                }
                rect.left +=colwidth;
            }
        }
        
    } 
 
    return 0;
}
// editsublabel		- start edit of a sub item label
// returns		- temporary pointer to the new edit control
// nitem		- the row index of the item to edit
// ncol			- the column of the sub item.
CEdit* CListCtrlEx::EditSubLabel(int row,int col,const string &str )
{
	// the returned pointer should not be saved

	// make sure that the item is visible
	if( !EnsureVisible( row, 1 ) ) 
        return 0;

	// make sure that col is valid
	CHeaderCtrl* pheader = (CHeaderCtrl*)GetDlgItem(0);
	int columncount = pheader->GetItemCount();
	if( col >= columncount || GetColumnWidth(col) < 5 )
		return 0;

	// get the column offset
	int offset = 0;
	for( int i = 0; i < col; i++ )
		offset += GetColumnWidth( i );

	CRect rect;
	GetItemRect( row, &rect, LVIR_BOUNDS );

	// now scroll if we need to expose the column
	CRect rcclient;
	GetClientRect( &rcclient );
	if( offset + rect.left < 0 || offset + rect.left > rcclient.right )
	{
		CSize size;
		size.cx = offset + rect.left;
		size.cy = 0;
		Scroll( size );
		rect.left -= size.cx;
	}

	// get column alignment
	LV_COLUMN lvcol;
	lvcol.mask = LVCF_FMT;
	GetColumn( col, &lvcol );
	DWORD dwstyle ;
	if((lvcol.fmt&LVCFMT_JUSTIFYMASK) == LVCFMT_LEFT)
		dwstyle = ES_LEFT;
	else if((lvcol.fmt&LVCFMT_JUSTIFYMASK) == LVCFMT_RIGHT)
		dwstyle = ES_RIGHT;
	else dwstyle = ES_CENTER;

	rect.left += offset+4;
	rect.right = rect.left + GetColumnWidth( col ) - 3 ;
	if( rect.right > rcclient.right) rect.right = rcclient.right;

	dwstyle |= WS_BORDER|WS_CHILD|WS_VISIBLE|ES_AUTOHSCROLL;
	CEdit *pedit = new CStringEditBox(row, col,str);
	pedit->Create( dwstyle, rect, this, IDC_EDITBOX );


	return pedit;
}

CComboBox* CListCtrlEx::ShowListBox( int nitem, int ncol,const vector<string> &v_item, int nsel)
{
	// the returned pointer should not be saved

	// make sure that the item is visible
	if( !EnsureVisible(nitem,1) )
        return 0;

	// make sure that ncol is valid 
	CHeaderCtrl* pheader = (CHeaderCtrl*)GetDlgItem(0);
	int ncolumncount = pheader->GetItemCount();
	if( ncol >= ncolumncount || GetColumnWidth(ncol) <10 ) 
        return 0; // get the column offset 
    int offset=0;
    for( int i=0; i<ncol; i++ ) 
        offset +=GetColumnWidth(i); 
    CRect rect; 
    GetItemRect( nitem, &rect, LVIR_BOUNDS); // now scroll if we need to expose the column 
    CRect rcclient; 
    GetClientRect(&rcclient ); 
    if( offset + rect.left < 0 || offset + rect.left> rcclient.right ) {
		CSize size;
		size.cx = offset + rect.left;
		size.cy = 0;
		Scroll( size );
		rect.left -= size.cx;
	}

	rect.left += offset+4;
	rect.right = rect.left + GetColumnWidth( ncol ) - 3 ;
	int height = rect.bottom-rect.top;
	rect.bottom += 5*height;
	if( rect.right > rcclient.right) rect.right = rcclient.right;

	DWORD dwstyle = WS_BORDER|WS_CHILD|WS_VISIBLE|WS_VSCROLL/*|WS_HSCROLL*/
					|CBS_DROPDOWNLIST|CBS_DISABLENOSCROLL;
	CComboBox *plist = new CStringListBox(nitem, ncol,v_item, nsel);
	plist->Create( dwstyle, rect, this, IDC_LISTBOX );
	plist->SetItemHeight( -1, height);
	//plist->SetItemHeight( 0, 60);
	//plist->SetHorizontalExtent( GetColumnWidth( ncol ));

	return plist;

}

void CListCtrlEx::OnHScroll(UINT nsbcode, UINT npos, CScrollBar* pscrollbar) 
{
	if( GetFocus() != this ) 
        SetFocus();
	CListCtrl::OnHScroll(nsbcode, npos, pscrollbar);
}

void CListCtrlEx::OnVScroll(UINT nsbcode, UINT npos, CScrollBar* pscrollbar) 
{
	if( GetFocus() != this ) 
        SetFocus();
    CListCtrl::OnVScroll(nsbcode, npos, pscrollbar);
}

void CListCtrlEx::OnEndlabeledit(NMHDR* pnmhdr, LRESULT* presult)
{
	LV_DISPINFO  *plvdispinfo = (LV_DISPINFO *)pnmhdr;
 	LV_ITEM		 *plvitem = &plvdispinfo->item;

	if (plvitem->pszText != 0)
	{
        // default retun value is 0
        LRESULT ret = GetParent()->SendMessage(WM_LV_EDIT_OVER,(WPARAM)GetDlgCtrlID(),(LPARAM)plvitem);

        if( ret == 0 ) { 
            SetItemText(plvitem->iItem, plvitem->iSubItem, plvitem->pszText);
        }
	}
	*presult = 0;
    
}
void CListCtrlEx::ModifyStyle()
{
    SetWindowLong(m_hWnd,GWL_STYLE,GetWindowLong(m_hWnd, GWL_STYLE) | LVS_EDITLABELS);
}
void CListCtrlEx::OnLButtonDown(UINT nflags, CPoint point) 
{
	int index;

	int col;
	if( HitTest( point, &index,&col ) ) {
        if( GetItemState(index, LVIS_SELECTED) == LVIS_SELECTED ) {
                //CListCtrl::OnLButtonDown(nflags, point);
                EditItem(index,col);
                return;
		}
	}

	CListCtrl::OnLButtonDown(nflags, point);
}

int CListCtrlEx::InsertColumn(int col,const char *str,int edit_type)
{
    _col_type.push_back(edit_type);
    return CListCtrl::InsertColumn(col,str);
}
int CListCtrlEx::EditItem(int row,int col,int edit_type,const vector<string>* v_item,int nsel)
{
    if( edit_type == COL_EDITBOX )
        EditSubLabel(row,col,v_item?v_item->front():string(""));
    else if( edit_type == COL_LISTBOX )
        ShowListBox(row,col,*v_item,nsel);
    return 1;
}
int CListCtrlEx::EditItem(int row,int col)
{
	UINT flag = LVIS_FOCUSED;
	// add check for lvs_editlabels
	if( GetWindowLong(m_hWnd, GWL_STYLE) & LVS_EDITLABELS )
	{
		LCE_ITEMINFO lii;                
		lii.row = row;
		lii.col = col;
		lii.ptr = this;
		(*_iteminfo_proc)(lii,0);
        if( _col_type[col] == COL_EDITBOX ) {            
            EditSubLabel(row,col, lii.strlist.size() ? lii.strlist.front() : GetItemText(row,col).GetBuffer() );
        }
		else if( _col_type[col] == COL_LISTBOX )
			ShowListBox(row,col,lii.strlist,lii.sel);
		
	}
	
	return 1;
}

////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

BEGIN_MESSAGE_MAP(CStringListBox, CComboBox)
ON_WM_CREATE()
ON_WM_KILLFOCUS()
ON_WM_CHAR()
ON_WM_NCDESTROY()
ON_CONTROL_REFLECT(CBN_CLOSEUP, OnCloseUp)
END_MESSAGE_MAP()

CStringListBox::CStringListBox(int iitem, int isubitem, const vector<string> &v_item, int nsel)
{
	m_iitem = iitem;
	m_isubitem = isubitem;

	m_lstitems = v_item;
	m_nsel = nsel;
	m_besc = 0;
}

CStringListBox::~CStringListBox()
{
}

int CStringListBox::OnCreate(LPCREATESTRUCT lpcreatestruct) 
{
	if (CComboBox::OnCreate(lpcreatestruct) == -1)
		return -1;
	
	// set the proper font
	CFont* font = GetParent()->GetFont();
	SetFont(font);
	//int n = SetItemHeight(0,40);

    vector<string>::iterator it = m_lstitems.begin();
    for( ; it!=m_lstitems.end(); it++ ) {
		AddString((*it).c_str());
	}
	SetCurSel( m_nsel );
	SetFocus();
	return 0;
}

BOOL CStringListBox::PreTranslateMessage(MSG* pmsg) 
{
	if( pmsg->message == WM_KEYDOWN )
	{
		if( pmsg->wParam == VK_RETURN || pmsg->wParam == VK_ESCAPE ) {
			::TranslateMessage(pmsg);
			::DispatchMessage(pmsg);
			return TRUE;				// do not process further
		}
	}
	
	return CComboBox::PreTranslateMessage(pmsg);
}

void CStringListBox::OnKillFocus(CWnd* pnewwnd) 
{
	CComboBox::OnKillFocus(pnewwnd);
	
	CString str;
	GetWindowText(str);

	// send notification to parent of listview ctrl
	LV_DISPINFO dispinfo;
	dispinfo.hdr.hwndFrom = GetParent()->m_hWnd;
	dispinfo.hdr.idFrom = GetDlgCtrlID();
	dispinfo.hdr.code = LVN_ENDLABELEDIT;

	dispinfo.item.mask = LVIF_TEXT;
	dispinfo.item.iItem = m_iitem;
	dispinfo.item.iSubItem = m_isubitem;
	dispinfo.item.pszText = m_besc ? NULL : LPTSTR((LPCTSTR)str);
	dispinfo.item.cchTextMax = str.GetLength();

	GetParent()->GetParent()->SendMessage(WM_NOTIFY,GetParent()->GetDlgCtrlID(),(LPARAM)&dispinfo );

	PostMessage(WM_CLOSE);
}

void CStringListBox::OnChar(UINT nchar, UINT nrepcnt, UINT nflags) 
{
	if( nchar == VK_ESCAPE || nchar == VK_RETURN)
	{
		if( nchar == VK_ESCAPE )
			m_besc = 1;
		GetParent()->SetFocus();
		return;
	}
	
	CComboBox::OnChar(nchar, nrepcnt, nflags);
}

void CStringListBox::OnNcDestroy() 
{
	CComboBox::OnNcDestroy();
	
	delete this;
}

void CStringListBox::OnCloseUp() 
{
	GetParent()->SetFocus();
}

// #############################################
BEGIN_MESSAGE_MAP(CStringEditBox, CEdit)
ON_WM_CREATE()
ON_WM_KILLFOCUS()
ON_WM_CHAR()
ON_WM_NCDESTROY()
END_MESSAGE_MAP()

CStringEditBox::CStringEditBox(int iitem, int isubitem, const string &sinittext)
:m_sinittext( sinittext )
{
	m_iitem = iitem;
	m_isubitem = isubitem;
	m_besc = 0;
}

CStringEditBox::~CStringEditBox()
{
}
/////////////////////////////////////////////////////////////////////////////

BOOL CStringEditBox::PreTranslateMessage(MSG* pmsg)
{
	if( pmsg->message == WM_KEYDOWN )
	{
		if(pmsg->wParam == VK_RETURN
				|| pmsg->wParam == VK_DELETE
				|| pmsg->wParam == VK_ESCAPE
				|| GetKeyState( VK_CONTROL)
				)
		{
			::TranslateMessage(pmsg);
			::DispatchMessage(pmsg);
			return true;		    	// do not process further
		}
	}

	return CEdit::PreTranslateMessage(pmsg);
}


void CStringEditBox::OnKillFocus(CWnd* pnewwnd)
{
	CEdit::OnKillFocus(pnewwnd);

	CString str;
	GetWindowText(str);

	// send notification to parent of listview ctrl
	LV_DISPINFO dispinfo;
	dispinfo.hdr.hwndFrom = GetParent()->m_hWnd;
	dispinfo.hdr.idFrom = GetDlgCtrlID();
	dispinfo.hdr.code = LVN_ENDLABELEDIT;

	dispinfo.item.mask = LVIF_TEXT;
	dispinfo.item.iItem = m_iitem;
	dispinfo.item.iSubItem = m_isubitem;
	dispinfo.item.pszText = m_besc ? 0 : LPTSTR((LPCTSTR)str);
	dispinfo.item.cchTextMax = str.GetLength();

	GetParent()->GetParent()->SendMessage( WM_NOTIFY, GetParent()->GetDlgCtrlID(), 
					(LPARAM)&dispinfo );

	DestroyWindow();
}

void CStringEditBox::OnNcDestroy()
{
	CEdit::OnNcDestroy();

	delete this;
}


void CStringEditBox::OnChar(UINT nchar, UINT nrepcnt, UINT nflags)
{
	if( nchar == VK_ESCAPE || nchar == VK_RETURN)
	{
		if( nchar == VK_ESCAPE )
			m_besc = 1;
		GetParent()->SetFocus();
		return;
	}


	CEdit::OnChar(nchar, nrepcnt, nflags);

	// resize edit control if needed

	// get text extent
	CString str;

	GetWindowText( str );
	CWindowDC dc(this);
	CFont *pfont = GetParent()->GetFont();
	CFont *pfontdc = dc.SelectObject( pfont );
	CSize size = dc.GetTextExtent( str );
	dc.SelectObject( pfontdc );
	size.cx += 5;			   	// add some extra buffer

	// get client rect
	CRect rect, parentrect;
	GetClientRect( &rect );
	GetParent()->GetClientRect( &parentrect );

	// transform rect to parent coordinates
	ClientToScreen( &rect );
	GetParent()->ScreenToClient( &rect );

	// check whether control needs to be resized
	// and whether there is space to grow
	if( size.cx > rect.Width() )
	{
		if( size.cx + rect.left < parentrect.right )
			rect.right = rect.left + size.cx;
		else
			rect.right = parentrect.right;
		MoveWindow( &rect );
	}
}

int CStringEditBox::OnCreate(LPCREATESTRUCT lpcreatestruct)
{
	if (CEdit::OnCreate(lpcreatestruct) == -1)
		return -1;

	// set the proper font
	CFont* font = GetParent()->GetFont();
	SetFont(font);

	SetWindowText( m_sinittext.c_str() );
	SetFocus();
	SetSel( 0, -1 );
	return 0;
}


void lsh::CListCtrlEx::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)
{
    // TODO: 在此添加消息处理程序代码和/或调用默认值
    if( nChar == VK_DELETE ) {

        POSITION pos = GetFirstSelectedItemPosition();
        if( pos ) {
            int row = GetNextSelectedItem(pos);

            LRESULT ret = GetParent()->SendMessage(WM_LV_KEY_DELETE,(WPARAM)GetDlgCtrlID(),(LPARAM)row);

            if( ret == 0 ) { 
                // check parent permission
                DeleteItem(row);
                ResetItemIndex(*this,row);
            }
        }

    }

    CListCtrl::OnKeyDown(nChar, nRepCnt, nFlags);
}

}
