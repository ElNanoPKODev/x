// DlgModelParam.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"
#include "DlgModelParam.h"
#include ".\dlgmodelparam.h"


CDlgModelParam* CDlgModelParam::m_spInstance = NULL;
// CDlgModelParam dialog

IMPLEMENT_DYNAMIC(CDlgModelParam, CDialog)
CDlgModelParam::CDlgModelParam(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgModelParam::IDD, pParent)
	, m_iSeg(0)
	, m_fHeight(0)
	, m_ftopW(0)
	, m_fBotW(0)
{
	m_pEffct = NULL;
}

CDlgModelParam::~CDlgModelParam()
{
}

void CDlgModelParam::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT2, m_iSeg);
	DDX_Text(pDX, IDC_EDIT17, m_fHeight);
	DDX_Text(pDX, IDC_EDIT18, m_ftopW);
	DDX_Text(pDX, IDC_EDIT19, m_fBotW);
}


BEGIN_MESSAGE_MAP(CDlgModelParam, CDialog)
	ON_EN_CHANGE(IDC_EDIT2, OnEnChangeEdit_seg)
	ON_EN_CHANGE(IDC_EDIT17, OnEnChangeEdit_hei)
	ON_EN_CHANGE(IDC_EDIT18, OnEnChangeEdit_top)
	ON_EN_CHANGE(IDC_EDIT19, OnEnChangeEdit_bottom)
END_MESSAGE_MAP()


// CDlgModelParam message handlers
void CDlgModelParam::CreateModelParamtDlg()
{
	SAFE_DELETE( m_spInstance );

	m_spInstance = new CDlgModelParam( NULL );
	m_spInstance->Create( CDlgModelParam::IDD, NULL );
}
void CDlgModelParam::DestoryDlg()
{
	SAFE_DELETE( m_spInstance );
}

void CDlgModelParam::OnEnChangeEdit_seg()
{
	UpdateData(TRUE);

	if(m_iSeg <=2)
		return;
	if(m_pEffct)
	{
		if(IsCylinderMesh(m_pEffct->m_strModelName))
		{
			if(m_iCurFrame > 0)
			{
				m_pEffct->InitTopParam();
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
			}else
			{
				m_pEffct->ClearTopParam();
				m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->ClearTopParam();

			}
		}
		else
			m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
	}
}

void CDlgModelParam::OnEnChangeEdit_hei()
{
	UpdateData(TRUE);
	if(m_iSeg <=2)
		return;

	if(m_pEffct)
	{
		if(IsCylinderMesh(m_pEffct->m_strModelName))
		{
			if(m_iCurFrame > 0)
			{
				m_pEffct->InitTopParam();
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
			}else
			{
				m_pEffct->ClearTopParam();
				m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->ClearTopParam();

			}
		}
		else
			m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
	}
}

void CDlgModelParam::OnEnChangeEdit_top()
{
	UpdateData(TRUE);
	if(m_iSeg <=2)
		return;

	if(m_pEffct)
	{
		if(IsCylinderMesh(m_pEffct->m_strModelName))
		{
			if(m_iCurFrame > 0)
			{
				m_pEffct->InitTopParam();
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
			}else
			{
				m_pEffct->ClearTopParam();
				m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->ClearTopParam();
			}
		}
		else
			m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
	}
}

void CDlgModelParam::OnEnChangeEdit_bottom()
{
	UpdateData(TRUE);
	if(m_iSeg <=2)
		return;

	if(m_pEffct)
	{
		if(IsCylinderMesh(m_pEffct->m_strModelName))
		{
			if(m_iCurFrame > 0)
			{
				m_pEffct->InitTopParam();
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
			}else
			{
				m_pEffct->ClearTopParam();
				m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->SetTobParam(m_iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
				m_pEffct->ClearTopParam();
			}
		}
		else
			m_pEffct->m_pCModel->CreateTob(m_pEffct->m_strModelName,m_iSeg,m_fHeight,m_ftopW,m_fBotW);
	}

}
