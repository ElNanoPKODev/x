// InfoPasswdDlg.h : 头文件
//

#pragma once
#include "afxwin.h"


// CInfoPasswdDlg 对话框
class CInfoPasswdDlg : public CDialog
{
// 构造
public:
	CInfoPasswdDlg(CWnd* pParent = NULL);	// 标准构造函数

// 对话框数据
	enum { IDD = IDD_INFOPASSWD_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 支持


// 实现
protected:
	HICON m_hIcon;

	// 生成的消息映射函数
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
    CEdit m_Text;
    CEdit m_Passwd;
    afx_msg void OnBnClickedButton1();
    CButton m_Go;
	BOOL m_TradeServer;
};
