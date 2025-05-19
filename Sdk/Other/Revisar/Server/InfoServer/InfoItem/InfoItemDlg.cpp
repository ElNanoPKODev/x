// InfoItemDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "InfoItem.h"
#include "InfoItemDlg.h"
#include "zlib/zlib.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CInfoItemDlg 对话框



CInfoItemDlg::CInfoItemDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CInfoItemDlg::IDD, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CInfoItemDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    DDX_Control(pDX, IDC_EDIT1, m_src);
    DDX_Control(pDX, IDC_EDIT2, m_dest);
    DDX_Control(pDX, IDC_BUTTON1, m_src_btn);
    DDX_Control(pDX, IDC_BUTTON2, m_dest_btn);
    DDX_Control(pDX, IDC_BUTTON3, m_build);
}

BEGIN_MESSAGE_MAP(CInfoItemDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
    ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedButton1)
    ON_BN_CLICKED(IDC_BUTTON2, OnBnClickedButton2)
    ON_BN_CLICKED(IDC_BUTTON3, OnBnClickedButton3)
END_MESSAGE_MAP()


// CInfoItemDlg 消息处理程序

BOOL CInfoItemDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// 设置此对话框的图标。当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码
	
	return TRUE;  // 除非设置了控件的焦点，否则返回 TRUE
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CInfoItemDlg::OnPaint() 
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
HCURSOR CInfoItemDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void CInfoItemDlg::OnBnClickedButton1()
{
    // TODO: Add your control notification handler code here
    CFileDialog fd(TRUE, "", "", OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT|OFN_FILEMUSTEXIST, "Bin File (*.bin)|*.bin|All Files (*.*)|*.*||");
    fd.DoModal();
    m_srcPath = fd.GetPathName();
    m_src.SetWindowText(m_srcPath);

}

void CInfoItemDlg::OnBnClickedButton2()
{
    // TODO: Add your control notification handler code here
    CFileDialog fd(FALSE, "", "", OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT, "Bin File (*.bin)|*.bin|All Files (*.*)|*.*||");
    fd.DoModal();

    m_destPath = fd.GetPathName();
    m_dest.SetWindowText(m_destPath);
}

void CInfoItemDlg::OnBnClickedButton3()
{
    // TODO: Add your control notification handler code here

    if(!m_srcPath.GetLength())
    {
        AfxMessageBox("What is Source File.", MB_OK, 0);
        return;
    }

    if(!m_destPath.GetLength())
    {
        AfxMessageBox("What is Destination File.", MB_OK, 0);
        return;
    }

    FILE* sfp = fopen(m_srcPath.GetString(), "rb");
    if(!sfp)
    {
        AfxMessageBox("Open File Failt.", MB_OK, 0);
        return;
    }

    FILE* dfp = fopen(m_destPath.GetString(), "wb");
    if(!dfp)
    {
        AfxMessageBox("Open File Failt.", MB_OK, 0);
        return;
    }

    m_src_btn.EnableWindow(0);
    m_dest_btn.EnableWindow(0);
    m_build.EnableWindow(0);

    unsigned long sfz = filelength(fileno(sfp));
    unsigned char* buffer = new unsigned char[sfz];
    unsigned char* cmpfile = new unsigned char[sfz];

    fread(buffer, 1, sfz, sfp);
    fclose(sfp);

    fwrite(&sfz, 4, 1, dfp);
    compress(cmpfile, &sfz, buffer, sfz);
    fwrite(cmpfile, 1, sfz, dfp);
    fclose(dfp);

    delete [] buffer;
    delete [] cmpfile;

    m_src_btn.EnableWindow(1);
    m_dest_btn.EnableWindow(1);
    m_build.EnableWindow(1);
}
