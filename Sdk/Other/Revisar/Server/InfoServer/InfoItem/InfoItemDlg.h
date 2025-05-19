// InfoItemDlg.h : 头文件
//

#pragma once
#include "afxwin.h"


// CInfoItemDlg 对话框
class CInfoItemDlg : public CDialog
{
// 构造
public:
	CInfoItemDlg(CWnd* pParent = NULL);	// 标准构造函数

// 对话框数据
	enum { IDD = IDD_INFOITEM_DIALOG };

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
    afx_msg void OnBnClickedButton1();
    afx_msg void OnBnClickedButton2();
    afx_msg void OnBnClickedButton3();
    CEdit m_src;
    CEdit m_dest;
    CButton m_src_btn;
    CButton m_dest_btn;
    CButton m_build;
    CString m_srcPath;
    CString m_destPath;
};
