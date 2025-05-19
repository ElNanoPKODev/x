// ErrorReportDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "ErrorReport.h"
#include "ErrorReportDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CErrorReportDlg 对话框




CErrorReportDlg::CErrorReportDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CErrorReportDlg::IDD, pParent)
	, m_strMail(_T(""))
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CErrorReportDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT_ERROR, m_strMail);
}

BEGIN_MESSAGE_MAP(CErrorReportDlg, CDialog)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDOK, &CErrorReportDlg::OnBnClickedOk)
	ON_BN_CLICKED(ID_COPY, &CErrorReportDlg::OnBnClickedCopy)
	ON_BN_CLICKED(ID_CANCEL, &CErrorReportDlg::OnBnClickedCancel)
END_MESSAGE_MAP()


// CErrorReportDlg 消息处理程序

BOOL CErrorReportDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// 将“关于...”菜单项添加到系统菜单中。

	// IDM_ABOUTBOX 必须在系统命令范围内。
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// 设置此对话框的图标。当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码
	// 你好：
	//		
	this->m_strMail = _T("你好：\r\n");
	this->m_strMail.Append(_T("    我发现了一个Bug，哈哈，你们赶快解决哈，Bug信息如下：\r\n"));

	CString   strAppPath;  
	CString   strTemp;  
	::GetModuleFileName(   NULL,   strTemp.GetBuffer(   256   ),   256   );  
	strTemp.ReleaseBuffer();  
	int   nNum   =   strTemp.ReverseFind(   '\\'   );  
	strTemp   =   strTemp.Left(   nNum   );  

	nNum   =   strTemp.ReverseFind(   '\\'   );  
	strAppPath   =   strTemp.Left(   nNum   );  

	TCHAR   c   =   strAppPath.GetAt(   nNum   -   1   );  
	if(   c   ==   '\\'   )  
	{  
		strAppPath   +=   "log\\exception.txt";  
	}  
	else  
	{  
		strAppPath   +=   "\\log\\exception.txt";  
	}   

	CStdioFile file;

	if(file.Open(strAppPath, CFile::modeRead|CFile::typeText))
	//if(file.Open(_T("C:\\exception.log"), CFile::modeRead))
	{
		CString content;

		while(file.ReadString(content))
		{
			this->m_strMail.Append(content);
			this->m_strMail.Append(_T("\r\n"));
		}
	}
	this->m_strMail.Append(_T("\r\n\t您的联系方式："));
	
	this->UpdateData(FALSE);

	return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}

void CErrorReportDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	CDialog::OnSysCommand(nID, lParam);
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CErrorReportDlg::OnPaint()
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
//
HCURSOR CErrorReportDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


void CErrorReportDlg::OnBnClickedOk()
{
	ShellExecute(0, _T("open"), _T("mailto:lark.li@moliyo.com"), NULL, NULL, SW_SHOWDEFAULT);

	OnOK();
}

void CErrorReportDlg::OnBnClickedCopy()
{
	if(::OpenClipboard   (NULL))    
	{  
		this->UpdateData();


		::EmptyClipboard();  

		HGLOBAL hClipData = ::GlobalAlloc(GMEM_MOVEABLE | GMEM_DDESHARE, m_strMail.GetLength() + 1);
		if(! hClipData)
			return;

		char *pszClipData = (char*)::GlobalLock(hClipData);
		if(!pszClipData)
			return;

		memcpy(pszClipData, m_strMail.GetBuffer(), m_strMail.GetLength());

		GlobalUnlock(hClipData);

		::SetClipboardData(CF_TEXT,   hClipData);  
		::CloseClipboard();  
		::GlobalFree(hClipData);  
	}   
}

void CErrorReportDlg::OnBnClickedCancel()
{
	OnCancel();
}
