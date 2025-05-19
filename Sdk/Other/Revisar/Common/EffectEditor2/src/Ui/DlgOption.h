#pragma once


// CDlgOption dialog

class CDlgOption : public CDialog
{
	DECLARE_DYNAMIC(CDlgOption)

public:
	CDlgOption(CWnd* pParent = NULL);   // standard constructor
	virtual ~CDlgOption();

// Dialog Data
	enum { IDD = IDD_DLGOPTION };

	void BrowerFolder(CString &_str);

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	CString m_CstrTexPath;
	CString m_CstrMeshPath;
	afx_msg void OnBnClickedButseltexpath();
	afx_msg void OnBnClickedButselmeshpath();
};
