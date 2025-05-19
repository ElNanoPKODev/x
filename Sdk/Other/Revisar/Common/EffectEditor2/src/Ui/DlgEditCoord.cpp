// DlgEditCoord.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"
#include "DlgEditCoord.h"
#include ".\dlgeditcoord.h"

CDlgEditCoord* CDlgEditCoord::m_spInstance = NULL;

// CDlgEditCoord dialog

IMPLEMENT_DYNAMIC(CDlgEditCoord, CDialog)
CDlgEditCoord::CDlgEditCoord(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgEditCoord::IDD, pParent)
	, m_fU1(0)
	, m_fV1(0)
	, m_fU2(0)
	, m_fV2(0)
	, m_fU3(0)
	, m_fV3(0)
	, m_fU4(0)
	, m_fV4(0)
	, m_fTime(0.1f)
	, m_iCoordNum(0)
{
	m_pEffect = NULL;
	m_pCResMagr = NULL;
	m_vecCoord.clear();
}

CDlgEditCoord::~CDlgEditCoord()
{
}

void CDlgEditCoord::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_SLIDER1, m_CSliderCurCoord);
	DDX_Text(pDX, IDC_EDIT3, m_fU1);
	DDX_Text(pDX, IDC_EDIT7, m_fV1);
	DDX_Text(pDX, IDC_EDIT5, m_fU2);
	DDX_Text(pDX, IDC_EDIT9, m_fV2);
	DDX_Text(pDX, IDC_EDIT4, m_fU3);
	DDX_Text(pDX, IDC_EDIT8, m_fV3);
	DDX_Text(pDX, IDC_EDIT6, m_fU4);
	DDX_Text(pDX, IDC_EDIT10, m_fV4);
	DDX_Text(pDX, IDC_EDIT1, m_fTime);
	DDX_Text(pDX, IDC_EDIT15, m_iCoordNum);
}


BEGIN_MESSAGE_MAP(CDlgEditCoord, CDialog)
	ON_NOTIFY(NM_CUSTOMDRAW, IDC_SLIDER1, OnNMCustomdrawSlider1)
	ON_BN_CLICKED(IDC_BUTTON13, OnBnClickedButDefaultCoord)
	ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedButSetCurCoord)
	ON_BN_CLICKED(IDC_BUTTON9, OnBnClickedButSetFrameTime)
	ON_BN_CLICKED(IDC_BUTTON12, OnBnClickedButSetCoordNum)
END_MESSAGE_MAP()


// CDlgEditCoord message handlers
void CDlgEditCoord::CreateEditCoordDlg()
{
	SAFE_DELETE( m_spInstance );

	m_spInstance = new CDlgEditCoord( NULL );
	m_spInstance->Create( CDlgEditCoord::IDD, NULL );
}
void CDlgEditCoord::DestoryDlg()
{
	SAFE_DELETE( m_spInstance );
}

/************************************************************************/
/*                                                                      */
/************************************************************************/
void	CDlgEditCoord::UpdateDlgInfo(I_Effect* pEffect)
{
	m_pEffect = pEffect;
	m_iCoordNum = m_pEffect->getFrameCoordCount();
	m_fTime = m_pEffect->getFrameCoordTime();

	m_CSliderCurCoord.SetRange(0,m_iCoordNum - 1);
	m_CSliderCurCoord.SetPos(0);

	m_pEffect->getFrameCoord(m_vecCoord,0);

	m_fU1 = m_vecCoord[0].x;
	m_fV1 = m_vecCoord[0].y;
	m_fU2 = m_vecCoord[1].x;
	m_fV2 = m_vecCoord[1].y;
	m_fU3 = m_vecCoord[2].x;
	m_fV3 = m_vecCoord[2].y;
	if(m_vecCoord.size() > 3)
	{
		m_fU4 = m_vecCoord[3].x;
		m_fV4 = m_vecCoord[3].y;
	}
	else
	{
		m_fU4 = 0;
		m_fV4 = 0;
	}
	UpdateData(FALSE);
}

void CDlgEditCoord::OnNMCustomdrawSlider1(NMHDR *pNMHDR, LRESULT *pResult)
{
	LPNMCUSTOMDRAW pNMCD = reinterpret_cast<LPNMCUSTOMDRAW>(pNMHDR);
	int n = m_CSliderCurCoord.GetPos();
	m_pEffect->getFrameCoord(m_vecCoord,n);

	m_iCoordNum = m_pEffect->getFrameCoordCount();

	m_fTime = m_pEffect->getFrameCoordTime();

	m_fU1 = m_vecCoord[0].x;
	m_fV1 = m_vecCoord[0].y;
	m_fU2 = m_vecCoord[1].x;
	m_fV2 = m_vecCoord[1].y;
	m_fU3 = m_vecCoord[2].x;
	m_fV3 = m_vecCoord[2].y;
	if(m_vecCoord.size() > 3)
	{
		m_fU4 = m_vecCoord[3].x;
		m_fV4 = m_vecCoord[3].y;
	}
	else
	{
		m_fU4 = 0;
		m_fV4 = 0;
	}
	UpdateData(FALSE);
	*pResult = 0;
}

void CDlgEditCoord::OnBnClickedButDefaultCoord()
{
	if(m_vecCoord.size() > 3)
	{
	//m_fU1			= 0.0f;
	//m_fV1			= 1.0f;
	//m_fU2			= 0.0f;
	//m_fV2			= 0.0f;
	//m_fU3			= 1.0f;
	//m_fV3			= 0.0f;
	//m_fU4			= 1.0f;
	//m_fV4			= 1.0f;
	
		m_vecCoord[0].x = 0.0f;
		m_vecCoord[0].y = 1.0f;
		m_vecCoord[1].x = 0.0f;
		m_vecCoord[1].y = 0.0f;
		m_vecCoord[2].x = 1.0f;
		m_vecCoord[2].y = 0.0f;
		m_vecCoord[3].x = 1.0f;
		m_vecCoord[3].y = 1.0f;

		m_pEffect->setFrameCoord(m_vecCoord, m_CSliderCurCoord.GetPos());
	}
	else
	{
		//m_fU1			= 0.0f;
		//m_fV1			= 1.0f;
		//m_fU2			= 0.5f;
		//m_fV2			= 0.0f;
		//m_fU3			= 1.0f;
		//m_fV3			= 1.0f;
		m_vecCoord[0].x = 0.0f;
		m_vecCoord[0].y = 1.0f;
		m_vecCoord[1].x = 0.5f;
		m_vecCoord[1].y = 0.0f;
		m_vecCoord[2].x = 1.0f;
		m_vecCoord[2].y = 1.0f;
		m_pEffect->setFrameCoord(m_vecCoord, m_CSliderCurCoord.GetPos());
	}
}

void CDlgEditCoord::OnBnClickedButSetCurCoord()
{
	UpdateData(TRUE);
	if(m_vecCoord.size() > 3)
	{
		m_vecCoord[0].x = m_fU1;
		m_vecCoord[0].y = m_fV1;
		m_vecCoord[1].x = m_fU2;
		m_vecCoord[1].y = m_fV2;
		m_vecCoord[2].x = m_fU3;
		m_vecCoord[2].y = m_fV3;
		m_vecCoord[3].x = m_fU4;
		m_vecCoord[3].y = m_fV4;

		m_pEffect->setFrameCoord(m_vecCoord, m_CSliderCurCoord.GetPos());
	}
	else
	{
		m_vecCoord[0].x = m_fU1;
		m_vecCoord[0].y = m_fV1;
		m_vecCoord[1].x = m_fU2;
		m_vecCoord[1].y = m_fV2;
		m_vecCoord[2].x = m_fU3;
		m_vecCoord[2].y = m_fV3;
		m_pEffect->setFrameCoord(m_vecCoord, m_CSliderCurCoord.GetPos());
	}}

void CDlgEditCoord::OnBnClickedButSetFrameTime()
{
	UpdateData(TRUE);

	m_pEffect->setFrameCoordTime(m_fTime);
}

void CDlgEditCoord::OnBnClickedButSetCoordNum()
{
	UpdateData(TRUE);

	int inum = m_pEffect->getFrameCoordCount();
	int isub;

	isub = m_iCoordNum - inum;

	m_pEffect->setFrameCoordCount(m_iCoordNum);

	m_CSliderCurCoord.SetRange(0,m_iCoordNum - 1);
	m_CSliderCurCoord.SetPos(0);

	if(inum > 0)
	{
		if(m_vecCoord.size() > 3)
		{
			m_vecCoord[0].x = 0.0f;
			m_vecCoord[0].y = 1.0f;
			m_vecCoord[1].x = 0.0f;
			m_vecCoord[1].y = 0.0f;
			m_vecCoord[2].x = 1.0f;
			m_vecCoord[2].y = 0.0f;
			m_vecCoord[3].x = 1.0f;
			m_vecCoord[3].y = 1.0f;
		}
		else
		{
			m_vecCoord[0].x = 0.0f;
			m_vecCoord[0].y = 1.0f;
			m_vecCoord[1].x = 0.5f;
			m_vecCoord[1].y = 0.0f;
			m_vecCoord[2].x = 1.0f;
			m_vecCoord[2].y = 1.0f;
		}
		for(int n = inum; n < m_iCoordNum; n++)
		{
			m_pEffect->setFrameCoord(m_vecCoord, n);
		}
	}
}
