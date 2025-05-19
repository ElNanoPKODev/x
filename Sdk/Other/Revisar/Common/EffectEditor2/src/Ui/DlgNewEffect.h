#pragma once


// CDlgNewEffect dialog

class CDlgNewEffect : public CDialog
{
	DECLARE_DYNAMIC(CDlgNewEffect)

public:
	CDlgNewEffect(CWnd* pParent = NULL);   // standard constructor
	virtual ~CDlgNewEffect();

// Dialog Data
	enum { IDD = IDD_DLGNEW };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	int m_itype;
	CString m_CstrName;
	int m_iFrameCount;
	BOOL m_bBillBoard;
};
