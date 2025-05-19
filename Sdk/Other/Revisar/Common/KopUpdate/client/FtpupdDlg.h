// FtpupdDlg.h : 头文件
//

#pragma once
#include "afxcmn.h"
#include "afxwin.h"
#include "explorer1.h"
#include "BitmapDialog.h"
#include "mybutton.h"

// CFtpupdDlg 对话框
class CFtpupdDlg : public CBitmapDialog
{
	enum
	{
		BT_MOUSEOUT,
		BT_MOUSEIN,
		BT_MOUSEDOWN,
		BT_DISABLE,
		BT_NULL

	};
	struct _unit
	{
		CString _picname;
		CRect	_picRect[4];
		CRect	_showRect;
		COLORREF _keyColor;
	};
// 构造
public:
	CFtpupdDlg(CWnd* pParent = NULL);	// 标准构造函数

// 对话框数据
	enum { IDD = IDD_FTPUPD_DIALOG };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 支持


// 实现
protected:
    enum {USPEED_TIMER = 1, USPEED_TIME = 3000,UPDATE_PROGRESS = 4000};
    HICON m_hIconLarge;
    HICON m_hIconSmall;
    CString m_strCaption;
    CWinThread* m_pFtpThrd;
    CStatic m_stFileName;
    CProgressCtrl m_ProgressBar;
    CExplorer1 m_Web;
	CExplorer1 m_Web2;//  新闻
	CExplorer1 m_Web3;//  活动
	CExplorer1 m_Web4;//  更新网站

	

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

public:
    afx_msg void OnCbnSelchangeCombo1();
    afx_msg void OnBnClickedAcpt();
    afx_msg void OnBnClickedUnacpt();
public:
	BOOL ReadConfig(const char* filename);
	void SetProgress(int persent);
private:
	CMyButton m_btnRegister;
	CMyButton m_btnHomePage;
	CMyButton m_btnRepair;
	CMyButton m_btnStartGame;
	CMyButton m_btnExit;


	// button  data
	_unit   m_btnRegisterData;
	_unit   m_btnStartGameData;
	_unit   m_btnExitData;
	_unit   m_btnHomePageData;
	_unit   m_btnRepairData;

	_unit   m_btnAcceptData;
	_unit   m_btnUnAcceptData;


	// static data
	_unit	m_stcBillUpData;	// 上面的广告
	_unit	m_stcBillDownData;	// 下面的广告
	_unit   m_stcWeb1Data;		// 上面的new网页
	_unit   m_stcWeb2Data;		// 下面的活动网页
	_unit   m_stcWeb3Data;		// 下载的网页
	_unit   m_stcProgressData;	// 进度条的

	 int m_ipersent;
	 CBitmap* m_pProgressBmp;
};
