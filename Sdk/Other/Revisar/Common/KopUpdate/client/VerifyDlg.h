#pragma once
#include "afxcmn.h"
#include "FileVersion.h"


// CVerifyDlg dialog

class CVerifyDlg : public CDialog, public CFileVersionMgr
{
	DECLARE_DYNAMIC(CVerifyDlg)

public:
	CVerifyDlg(CWnd* pParent = NULL);   // standard constructor
	virtual ~CVerifyDlg();

// Dialog Data
	enum { IDD = IDD_VERIFYDLG };

protected:
	virtual BOOL OnInitDialog();
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	afx_msg void OnPaint();
	afx_msg HRESULT OnBeginVerify(WPARAM wParam, LPARAM lParam);
	afx_msg HRESULT OnEndVerify(WPARAM wParam, LPARAM lParam);
	DECLARE_MESSAGE_MAP()

	CListCtrl m_FileList;
	CProgressCtrl m_Progress;
	CWinThread* m_pVerifyThrd;
	void OnVerifyClient(unsigned int uiTotal,
		unsigned int uiCur,
		BOOL bWrong,
		char const* pszFile);
	void InsertFile(char const* szFile);
};
