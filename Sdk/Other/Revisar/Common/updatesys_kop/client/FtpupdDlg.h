// FtpupdDlg.h : 头文件
//

#pragma once
#include "afxcmn.h"
#include "afxwin.h"
#include "explorer1.h"

// CFtpupdDlg 对话框
class CFtpupdDlg : public CDialog
{
// 构造
public:
	CFtpupdDlg(CWnd* pParent = NULL);	// 标准构造函数

// 对话框数据
	enum { IDD = IDD_FTPUPD_DIALOG };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 支持


// 实现
protected:
    enum {USPEED_TIMER = 1, USPEED_TIME = 3000};
    HICON m_hIconLarge;
    HICON m_hIconSmall;
    CString m_strCaption;
    CString m_strSpeed;
    CWinThread* m_pFtpThrd;
    CStatic m_stTips;
    CStatic m_stFileName;
    CStatic m_stSpeed;
    CStatic m_stFilePercent;
    CProgressCtrl m_ProgressBar;
    CExplorer1 m_Web;
	CExplorer1 m_Web2;
	CTabCtrl m_Tab;

	void VerifyClient();

	// 生成的消息映射函数
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
    afx_msg HRESULT OnUpdateTips(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateBegin(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateFileName(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateSpeed(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateFilePercent(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateProgressBar(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateEnd(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateQuit(WPARAM wParam, LPARAM lParam);
    afx_msg HRESULT OnUpdateWeb(WPARAM wParam, LPARAM lParam);
    afx_msg void OnBnClickedExit();
	afx_msg void OnBnClickedStartGame();
	afx_msg void OnBnClickedRepair();
    afx_msg void OnTimer(UINT nIDEvent);
    afx_msg void OnTcnSelchangeTab1(NMHDR *pNMHDR, LRESULT *pResult);
    afx_msg void OnBnClickedRegaccount();
    afx_msg void OnBnClickedHomepage();
    afx_msg void OnBnClickedBeginner();
	DECLARE_MESSAGE_MAP()
public:
    afx_msg void OnBnClickedSelnet();
    afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
protected:
    CComboBox m_cbSelISP;
public:
    afx_msg void OnCbnSelchangeCombo1();
};
