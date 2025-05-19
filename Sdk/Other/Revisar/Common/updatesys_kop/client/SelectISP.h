#pragma once


// CSelectISP dialog

class CSelectISP : public CDialog
{
	DECLARE_DYNAMIC(CSelectISP)

public:
	CSelectISP(CWnd* pParent = NULL);   // standard constructor
	virtual ~CSelectISP();

// Dialog Data
	enum { IDD = IDD_SELISP };
    CString m_strCaption;

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    virtual BOOL OnInitDialog();

	DECLARE_MESSAGE_MAP()

    afx_msg void OnBnClickedTelecom();
    afx_msg void OnBnClickedNetcom();
};
