// DlgEditTexture.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"
//#include "DlgEditTexture.h"
#include ".\dlgedittexture.h"


// CDlgEditTexture dialog
CDlgEditTexture* CDlgEditTexture::m_spInstance = NULL;


IMPLEMENT_DYNAMIC(CDlgEditTexture, CDialog)
CDlgEditTexture::CDlgEditTexture(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgEditTexture::IDD, pParent)
	, m_iRow(1)
	, m_iColumn(1)
	, m_fTexTime(0.1f)
{
	m_pEffect = NULL;
	m_pCResMagr = NULL;
}

CDlgEditTexture::~CDlgEditTexture()
{
}

void CDlgEditTexture::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_LIST1, m_ClistboxTex);
	DDX_Text(pDX, IDC_EDIT1, m_iRow);
	DDX_Text(pDX, IDC_EDIT3, m_iColumn);
	DDX_Text(pDX, IDC_EDIT4, m_fTexTime);
	DDX_Control(pDX, IDC_COMBO1, m_cComTex);
}


BEGIN_MESSAGE_MAP(CDlgEditTexture, CDialog)
	ON_EN_CHANGE(IDC_EDIT1, OnEnChangeEditRow)
	ON_EN_CHANGE(IDC_EDIT3, OnEnChangeEditColumn)
	ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedChangeTex)
	ON_BN_CLICKED(IDC_BUTTON9, OnBnClickedButSplite)
	ON_BN_CLICKED(IDC_BUTTON3, OnBnClickedButSetTime)
	ON_BN_CLICKED(IDC_BUTREMOVE, OnBnClickedButremove)
	ON_BN_CLICKED(IDC_BUTTON11, OnBnClickedBut_addTex)
	ON_BN_CLICKED(IDC_BUTTON12, OnBnClickedBut_cleartex)
END_MESSAGE_MAP()

void CDlgEditTexture::CreateEditTexDlg()
{
	SAFE_DELETE( m_spInstance );

	m_spInstance = new CDlgEditTexture( NULL );
	m_spInstance->Create( CDlgEditTexture::IDD, NULL );
}
void CDlgEditTexture::DestoryDlg()
{
	SAFE_DELETE( m_spInstance );
}

// CDlgEditTexture message handlers

void CDlgEditTexture::OnEnChangeEditRow()
{
}

void CDlgEditTexture::OnEnChangeEditColumn()
{
}

void   CDlgEditTexture::FillDlg(VEC_string& strTexName,CMPResManger	*pCResMagr)
{
	m_pCResMagr = pCResMagr;
	for(int n = 0; n < strTexName.size(); n++)
	{
		m_ClistboxTex.AddString(strTexName[n].c_str());
	}
}

void CDlgEditTexture::OnBnClickedChangeTex()
{
	CString str;
	s_string strname ;
	m_ClistboxTex.GetText(m_ClistboxTex.GetCurSel(),str);
	strname = (char*)(LPCSTR)str;

	if(m_pEffect->getType() != EFFECT_FRAMETEX)
		m_pEffect->ChangeTexture(strname);

	m_pEffect->BoundingRes(m_pCResMagr);
}

void CDlgEditTexture::OnBnClickedButSplite()
{
	UpdateData(TRUE);
	m_pEffect->SpliteTexture(m_iRow,m_iColumn);
}

void CDlgEditTexture::OnBnClickedButSetTime()
{
	UpdateData(TRUE);
	m_pEffect->SetTextureTime(m_fTexTime);
}

void CDlgEditTexture::OnBnClickedButremove()
{
	m_pEffect->RemoveTexBack();
}

void CDlgEditTexture::OnBnClickedBut_addTex()
{
	CString str;
	s_string strname ;
	m_ClistboxTex.GetText(m_ClistboxTex.GetCurSel(),str);
	strname = (char*)(LPCSTR)str;

	if(m_pEffect->getType() == EFFECT_FRAMETEX)
	{
		m_pEffect->AddFrameTex(strname);
		SetCurEffect(m_pEffect);
		m_pEffect->BoundingRes(m_pCResMagr);
	}
}
void CDlgEditTexture::OnBnClickedBut_cleartex()
{
	m_pEffect->RemoveFrameTex();
	SetCurEffect(m_pEffect);
	m_pEffect->BoundingRes(m_pCResMagr);
}
