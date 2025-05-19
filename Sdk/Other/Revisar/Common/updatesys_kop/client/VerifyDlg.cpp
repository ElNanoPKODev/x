// VerifyDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "VerifyDlg.h"


UINT VerifyThread(LPVOID pParam)
{
	CVerifyDlg* pDlg = (CVerifyDlg *)pParam;

    if (!(pDlg->LoadFileVersionInfo("VerInfo.rec")))
	{
		AfxMessageBox("装载版本文件失败，请重新启动客户端！");
		ExitProcess(-1);
	}

	unsigned int uiCount = 0;
	try
	{
        uiCount = pDlg->VerifyClient();
	}
	catch (...)
	{
	}

	if (uiCount > 0)
	{
		DeleteFile("ver.rec"); // 需要修复客户端
	}

	pDlg->PostMessage(WM_KOPVERIFYEND, uiCount);
	return 0;
}


// CVerifyDlg dialog

IMPLEMENT_DYNAMIC(CVerifyDlg, CDialog)
CVerifyDlg::CVerifyDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CVerifyDlg::IDD, pParent)
{
	m_pVerifyThrd = NULL;
}

CVerifyDlg::~CVerifyDlg()
{
}

void CVerifyDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_LIST1, m_FileList);
	DDX_Control(pDX, IDC_PROGRESS1, m_Progress);
}


BEGIN_MESSAGE_MAP(CVerifyDlg, CDialog)
	ON_WM_PAINT()
	ON_MESSAGE(WM_KOPVERIFYBEGIN, OnBeginVerify)
	ON_MESSAGE(WM_KOPVERIFYEND, OnEndVerify)
END_MESSAGE_MAP()


// CVerifyDlg message handlers
BOOL CVerifyDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// TODO: 在此添加额外的初始化代码
	SetWindowText("客户端校验");
	CMenu* pMenu = this->GetSystemMenu(FALSE);
	pMenu->EnableMenuItem(SC_CLOSE, MF_BYCOMMAND | MF_GRAYED);

	// 初始化ListCtrl的header
	LVCOLUMN lv;
	lv.mask = LVCF_WIDTH | LVCF_TEXT | LVCF_FMT;

	lv.cx = 150;
	lv.pszText = "文件";
	lv.fmt = LVCFMT_CENTER;
	m_FileList.InsertColumn(0, &lv);

	lv.cx = 104;
	lv.pszText = "状态";
	lv.fmt = LVCFMT_CENTER;
	m_FileList.InsertColumn(1, &lv);

	DWORD dwStyle = m_FileList.GetExtendedStyle();
	m_FileList.SetExtendedStyle(LVS_EX_FULLROWSELECT |
		LVS_EX_INFOTIP |
		dwStyle);

	PostMessage(WM_KOPVERIFYBEGIN);
	return TRUE;  // 除非设置了控件的焦点，否则返回 TRUE
}

void CVerifyDlg::OnPaint()
{
	CPaintDC dc(this); // device context for painting
	// TODO: Add your message handler code here
	// Do not call CDialog::OnPaint() for painting messages
}



HRESULT CVerifyDlg::OnBeginVerify(WPARAM wParam, LPARAM lParam)
{
	Sleep(1000);
	m_pVerifyThrd = AfxBeginThread(::VerifyThread, this);
	SetWindowText("正在为您检查客户端文件版本，请耐心等待...");
	return 0;
}

HRESULT CVerifyDlg::OnEndVerify(WPARAM wParam, LPARAM lParam)
{
	unsigned int uiCount = (unsigned int)wParam;
	m_pVerifyThrd = NULL;
	if (uiCount == 0)
	{
        AfxMessageBox("所有客户端文件均完好！");
		EndDialog(IDOK);
	}
	else
	{
        AfxMessageBox("校验客户端完毕，请重新启动进行修补！");
        ExitProcess(0);
	}
	return 0;
}

void CVerifyDlg::OnVerifyClient(unsigned int uiTotal,
								unsigned int uiCur,
								BOOL bWrong,
								char const* pszFile)
{
	bool bExit = false;
	try
	{	
		m_Progress.SetRange32(0, uiTotal);
		m_Progress.SetPos(uiCur);

		if (bWrong) InsertFile(pszFile);
	}
	catch (...)
	{
		bExit = true;
	}

	if (bExit) ExitProcess(0);
}

void CVerifyDlg::InsertFile(char const* szFile)
{
	LVITEM lv;
	lv.mask = LVIF_TEXT;
	lv.iItem = m_FileList.GetItemCount();

	lv.iSubItem = 0;
	lv.pszText = (LPSTR)szFile;
	m_FileList.InsertItem(&lv);

    lv.iSubItem = 1;
	lv.pszText = "版本不一致";
	m_FileList.SetItem(&lv);
}
