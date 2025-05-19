// InfoPasswdDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "InfoPasswd.h"
#include "InfoPasswdDlg.h"
#include "enclib.h"
#include ".\infopasswddlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CInfoPasswdDlg 对话框



CInfoPasswdDlg::CInfoPasswdDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CInfoPasswdDlg::IDD, pParent)
	, m_TradeServer(FALSE)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CInfoPasswdDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_EDIT1, m_Text);
	DDX_Control(pDX, IDC_EDIT2, m_Passwd);
	DDX_Control(pDX, IDC_BUTTON1, m_Go);
	DDX_Radio(pDX, IDC_RADIO_TRADE, m_TradeServer);
}

BEGIN_MESSAGE_MAP(CInfoPasswdDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
    ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedButton1)
END_MESSAGE_MAP()


// CInfoPasswdDlg 消息处理程序

BOOL CInfoPasswdDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// 设置此对话框的图标。当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	m_TradeServer = FALSE;
	// TODO: 在此添加额外的初始化代码
    //SetEncKey((__byte*)ENC_KEY);
	
	return TRUE;  // 除非设置了控件的焦点，否则返回 TRUE
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CInfoPasswdDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 用于绘制的设备上下文

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 使图标在工作矩形中居中
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 绘制图标
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

//当用户拖动最小化窗口时系统调用此函数取得光标显示。
HCURSOR CInfoPasswdDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void CInfoPasswdDlg::OnBnClickedButton1()
{
	this->UpdateData(TRUE);

	if(m_TradeServer)
	{
		SetEncKey((__byte*)"m&7B@d#");
	}
	else
	{
		SetEncKey((__byte*)"s#8Jx@D");
	}

    // TODO: 在此添加控件通知处理程序代码
    //try
    //{
    //    m_Go.EnableWindow(FALSE);
        CString txt;
        m_Text.GetWindowText(txt);

        int len = (txt.GetLength() * 2) + 5;

        char* buff = new char[len];
        Encrypt((__byte*)buff, len, (__byte*)txt.GetBuffer(), txt.GetLength());

        m_Passwd.SetWindowText(buff);
        delete[] buff;
    //    m_Go.EnableWindow();
    //}
    //catch(...)
    //{
    //    m_Go.EnableWindow();
    //}

}
