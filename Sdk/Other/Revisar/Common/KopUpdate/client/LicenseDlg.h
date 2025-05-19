#pragma once
#include "explorer1.h"


// CLicenseDlg dialog

class CLicenseDlg : public CDialog
{
	DECLARE_DYNAMIC(CLicenseDlg)

public:
	CLicenseDlg(CWnd* pParent = NULL);   // standard constructor
	virtual ~CLicenseDlg();

// Dialog Data
	enum { IDD = IDD_DIALOGLICIENSE };
public:
	virtual BOOL OnInitDialog();
protected:
	
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	CExplorer1 m_webLicense;
	afx_msg void OnBnClickedOk();
	afx_msg void OnBnClickedCancel();
	DECLARE_EVENTSINK_MAP()
	void OnDownloaded();
};
