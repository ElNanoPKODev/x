// LicenseDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Ftpupd.h"
#include "LicenseDlg.h"
#include ".\licensedlg.h"

extern int g_AcceptLicense ;

// CLicenseDlg dialog

IMPLEMENT_DYNAMIC(CLicenseDlg, CDialog)
CLicenseDlg::CLicenseDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CLicenseDlg::IDD, pParent)
{
}

CLicenseDlg::~CLicenseDlg()
{
}
BOOL CLicenseDlg::OnInitDialog()
{
	 CDialog::OnInitDialog();
	m_webLicense.Navigate("http://passport.moliyo.com/resource/agreement.htm", NULL, NULL, NULL, NULL);
	 return TRUE;
}

void CLicenseDlg::DoDataExchange(CDataExchange* pDX)
{

	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_EXPLORER7, m_webLicense);
}


BEGIN_MESSAGE_MAP(CLicenseDlg, CDialog)
	ON_BN_CLICKED(IDC_ACPT, OnBnClickedOk)
	ON_BN_CLICKED(IDC_UNACPT, OnBnClickedCancel)
END_MESSAGE_MAP()


// CLicenseDlg message handlers

void CLicenseDlg::OnBnClickedOk()
{
	// TODO: Add your control notification handler code here
	g_AcceptLicense = 1;
	OnOK();
}

void CLicenseDlg::OnBnClickedCancel()
{
	// TODO: Add your control notification handler code here
	g_AcceptLicense = 2;
	OnCancel();
}
BEGIN_EVENTSINK_MAP(CLicenseDlg, CDialog)
	ON_EVENT(CLicenseDlg, IDC_EXPLORER7, 104, OnDownloaded, VTS_NONE)
END_EVENTSINK_MAP()

void CLicenseDlg::OnDownloaded()
{
	this->GetDlgItem(IDC_ACPT)->EnableWindow();
}
