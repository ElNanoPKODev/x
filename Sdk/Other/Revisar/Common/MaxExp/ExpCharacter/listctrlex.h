// author lsh
#ifndef INC_LISTCTRLEX_H_2002_03_06
#define INC_LISTCTRLEX_H_2002_03_06

#include <afxcmn.h>

#include <string>
#include <vector>
#include <list>
using namespace std;

#define IDC_EDITBOX         10000
#define IDC_LISTBOX         10001

#define WM_LV_EDIT_OVER	(WM_USER + 1001)
#define WM_LV_KEY_DELETE (WM_USER + 1002)

namespace lsh
{


// TYPE
const int COL_NULL = 0;
const int COL_EDITBOX = 1;
const int COL_LISTBOX = 2;
struct COLUMN_EDITINFO {
    int col;
    int type;
};

struct LCE_ITEMINFO {
    LCE_ITEMINFO() : ptr(0),type(0),row(0),col(0),sel(0) {}
    CListCtrl *ptr;
    int type;
    int row;
    int col;
    int sel;
    vector<string> strlist;
};

typedef int (*ITEMINFO_PROC) (LCE_ITEMINFO &lii,unsigned int unused );

class CListCtrlEx : public CListCtrl
{
    DECLARE_MESSAGE_MAP()
private:
    vector<int> _col_type;
    ITEMINFO_PROC _iteminfo_proc;
private:
    void OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
    void OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
    void OnLButtonDown(UINT nflags, CPoint point);
    void OnEndlabeledit(NMHDR* pnmhdr, LRESULT* presult);
    int HitTest(const CPoint &pt, int *row, int *col) const;
    CEdit* EditSubLabel( int row,int col,const string &str );
    CComboBox* ShowListBox( int nitem, int ncol,const vector<string> &v_item, int nsel);

public:
    CListCtrlEx(ITEMINFO_PROC proc) : _iteminfo_proc(proc) {};
    ~CListCtrlEx() {};
    int InsertColumn(int col,const char *str,int edit_type);
    int EditItem(int row,int col,int edit_type,const vector<string>* v_item,int nsel);
	int EditItem(int row,int col);
    void ModifyStyle();

    afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
};

class CStringListBox : public CComboBox
{
public:
	CStringListBox(int iitem, int isubitem, const vector<string> &v_item, int nsel);
	virtual ~CStringListBox();

    virtual BOOL PreTranslateMessage(MSG* pmsg);

	int OnCreate(LPCREATESTRUCT lpcreatestruct);
	void OnKillFocus(CWnd* pnewwnd);
	void OnChar(UINT nchar, UINT nrepcnt, UINT nflags);
	void OnNcDestroy();
	void OnCloseUp();

	DECLARE_MESSAGE_MAP()
private:
	int 	m_iitem;
	int 	m_isubitem;
	int 	m_nsel;
	bool	m_besc;				// to indicate whether esc key was pressed
	vector<string> m_lstitems;
};

class CStringEditBox : public CEdit
{
private:
	int m_iitem;
	int m_isubitem;
	string m_sinittext;
	int    m_besc;	 	// to indicate whether esc key was pressed
public:
	CStringEditBox(int iitem, int isubitem, const string &sinittext);
	virtual ~CStringEditBox();
    virtual BOOL PreTranslateMessage(MSG* pmsg);

protected:
	void OnKillFocus(CWnd* pnewwnd);
	void OnNcDestroy();
	void OnChar(UINT nchar, UINT nrepcnt, UINT nflags);
	int OnCreate(LPCREATESTRUCT lpcreatestruct);

	DECLARE_MESSAGE_MAP()
};

/////////////
///////////////////////////
int NewListCtrlExItem(CListCtrlEx& lv);
int DelListCtrlExItem(CListCtrlEx& lv);
int ResetItemIndex(CListCtrlEx& lv,int id);
int ExchangeItemData( CListCtrlEx& lv, int src_id, int dst_id );

}
#endif
//