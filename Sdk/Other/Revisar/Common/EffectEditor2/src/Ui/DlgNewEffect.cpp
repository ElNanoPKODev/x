// DlgNewEffect.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"

#include "DlgNewEffect.h"


// CDlgNewEffect dialog

IMPLEMENT_DYNAMIC(CDlgNewEffect, CDialog)
CDlgNewEffect::CDlgNewEffect(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgNewEffect::IDD, pParent)
	, m_itype(0)
	, m_CstrName(_T("new effect"))
	, m_iFrameCount(0)
	, m_bBillBoard(FALSE)
{
}

CDlgNewEffect::~CDlgNewEffect()
{
}

void CDlgNewEffect::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Radio(pDX, IDC_RADIO9, m_itype);
	DDX_Text(pDX, IDC_EDITNEWNAME, m_CstrName);
	DDX_Text(pDX, IDC_EDITNEWFRAMECOUNT, m_iFrameCount);
	DDX_Check(pDX, IDC_CHECK1, m_bBillBoard);
}


BEGIN_MESSAGE_MAP(CDlgNewEffect, CDialog)
END_MESSAGE_MAP()


// CDlgNewEffect message handlers
