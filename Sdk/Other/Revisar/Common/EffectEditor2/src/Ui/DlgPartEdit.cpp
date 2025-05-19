// DlgPartEdit.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"

#include ".\skinmeshdlg.h"


#include "DlgPartEdit.h"
#include ".\dlgpartedit.h"

CDlgPartEdit* CDlgPartEdit::m_spInstance = NULL;

// CDlgPartEdit dialog

IMPLEMENT_DYNAMIC(CDlgPartEdit, CDialog)
CDlgPartEdit::CDlgPartEdit(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgPartEdit::IDD, pParent)
	, m_strPartName(_T(""))
	, m_fLife(0)
	, m_fVel(0)
	, m_iNum(0)
	, m_fDirx(0)
	, m_fDiry(0)
	, m_fDirz(0)
	, m_fDirAngle(0)
	, m_fAccelx(0)
	, m_fAccely(0)
	, m_fAccelz(0)
	, m_fRangex(0)
	, m_fRangey(0)
	, m_fRangez(0)
	, m_fFrameSize(0)
	, m_fFrameAngleX(0)
	, m_fFrameAngleY(0)
	, m_fFrameAngleZ(0)
	, m_bBill(FALSE)
	, m_iFrameCount(0)
	, m_iAlpha(0)
	, m_iColorR(0)
	, m_iColorG(0)
	, m_iColorB(0)
	, m_bPlaying(FALSE)
	, m_fPlayLength(0)
	, m_fCreateTime(0)
	, m_fOffsetX(0)
	, m_fOffsetY(0)
	, m_fOffsetZ(0)
	, m_fDelayTime(0)
	, m_iDumy1(0)
	, m_iDumy2(0)
	, m_iSkinMeshID(2)
	, m_fPathVel(0)
	, m_cHitEffName(_T(""))
	, m_iRoadom(4)
{
	m_pCResMagr = NULL;
	m_CPartCtrl = NULL;
	m_iCurPartCtrl = -1;
	m_iCurPartSys = -1;

	m_pCurSys = NULL;

	m_bPlayList = FALSE;
}

CDlgPartEdit::~CDlgPartEdit()
{
}

void CDlgPartEdit::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_LIST3, m_CListComlib);
	DDX_Control(pDX, IDC_LIST1, m_CSubSyslib);
	DDX_Control(pDX, IDC_LIST2, m_CComlib);
	DDX_Control(pDX, IDC_COMBO1, m_CComboxCtrl);
	DDX_Text(pDX, IDC_EDIT23, m_strPartName);
	DDX_Text(pDX, IDC_EDIT2, m_fLife);
	DDX_Text(pDX, IDC_EDIT16, m_fVel);
	DDX_Text(pDX, IDC_EDIT27, m_iNum);
	//DDV_MinMaxInt(pDX, m_iNum, 1, 100);
	DDX_Text(pDX, IDC_EDIT17, m_fDirx);
	DDX_Text(pDX, IDC_EDIT18, m_fDiry);
	DDX_Text(pDX, IDC_EDIT19, m_fDirz);
	DDX_Text(pDX, IDC_EDIT_DirAngle, m_fDirAngle);
	DDX_Text(pDX, IDC_EDIT20, m_fAccelx);
	DDX_Text(pDX, IDC_EDIT21, m_fAccely);
	DDX_Text(pDX, IDC_EDIT22, m_fAccelz);
	DDX_Text(pDX, IDC_EDIT24, m_fRangex);
	DDX_Text(pDX, IDC_EDIT25, m_fRangey);
	DDX_Text(pDX, IDC_EDIT26, m_fRangez);
	DDX_Control(pDX, IDC_COMBO2, m_CComboxTexture);
	DDX_Control(pDX, IDC_COMBO3, m_CComboxModel);
	DDX_Control(pDX, IDC_COMBO4, m_CComboxSrcBlend);
	DDX_Control(pDX, IDC_COMBO5, m_CComboxDestBlend);
	DDX_Control(pDX, IDC_COMBO6, m_CComboxMagFilter);
	DDX_Control(pDX, IDC_COMBO7, m_CComboxMinFilter);
	DDX_Text(pDX, IDC_EDIT29, m_fFrameSize);
	DDX_Text(pDX, IDC_EDIT30, m_fFrameAngleX);
	DDX_Text(pDX, IDC_EDIT31, m_fFrameAngleY);
	DDX_Text(pDX, IDC_EDIT32, m_fFrameAngleZ);
	DDX_Check(pDX, IDC_CHECK_BillBoard_All, m_bBill);
	DDX_Check(pDX, IDC_CHECK_BillBoard_X, m_bBillX);
	DDX_Check(pDX, IDC_CHECK_BillBoard_Y, m_bBillY);
	DDX_Check(pDX, IDC_CHECK_BillBoard_Z, m_bBillZ);
	DDX_Check(pDX, IDC_CHECK_MODEL_DIRECTOR, m_bModelDirector);
	DDX_Check(pDX, IDC_CHECK_DUMMY_DIRECTOR, m_bDummyDirector);
	DDX_Text(pDX, IDC_EDIT28, m_iFrameCount);
	DDX_Control(pDX, IDC_SLIDER1, m_CSliderFrame);
	DDX_Text(pDX, IDC_EDIT33, m_iAlpha);
	DDV_MinMaxInt(pDX, m_iAlpha, 0, 255);
	DDX_Text(pDX, IDC_COLORR, m_iColorR);
	DDV_MinMaxInt(pDX, m_iColorR, 0, 255);
	DDX_Text(pDX, IDC_COLORG, m_iColorG);
	DDV_MinMaxInt(pDX, m_iColorG, 0, 255);
	DDX_Text(pDX, IDC_COLORB, m_iColorB);
	DDV_MinMaxInt(pDX, m_iColorB, 0, 255);
	DDX_Check(pDX, IDC_CHECK6, m_bPlaying);
	DDX_Text(pDX, IDC_EDIT34, m_fPlayLength);
	DDX_Text(pDX, IDC_EDIT35, m_fCreateTime);
	DDX_Text(pDX, IDC_EDIT36, m_fOffsetX);
	DDX_Text(pDX, IDC_EDIT37, m_fOffsetY);
	DDX_Text(pDX, IDC_EDIT38, m_fOffsetZ);
	DDX_Control(pDX, IDC_COMBO8, m_cCombox_comlib);
	DDX_Text(pDX, IDC_EDIT39, m_fDelayTime);
	DDX_Text(pDX, IDC_EDIT41, m_iDumy1);
	DDX_Text(pDX, IDC_EDIT40, m_iDumy2);
	DDX_Text(pDX, IDC_EDIT42, m_iSkinMeshID);
	DDX_Text(pDX, IDC_EDIT43, m_fPathVel);
	DDX_Text(pDX, IDC_EDIT44, m_cHitEffName);
	DDX_Text(pDX, IDC_EDIT45, m_iRoadom);
}


BEGIN_MESSAGE_MAP(CDlgPartEdit, CDialog)
	ON_BN_CLICKED(IDC_BUTTON16, OnBnClickedBut_New)
	ON_BN_CLICKED(IDC_CHECK6, OnBnClickedCheck_Play)
	ON_BN_CLICKED(IDC_BUTTON17, OnBnClickedBut_Delete)
	ON_BN_CLICKED(IDC_BUTTON15, OnBnClickedBut_AddToLib)
	ON_BN_CLICKED(IDC_BUTTON19, OnBnClickedBut_ClearTemplib)
	ON_BN_CLICKED(IDC_BUTTON9, OnBnClickedBut_DelSublib)
	ON_BN_CLICKED(IDC_BUTTON18, OnBnClickedBut_ComToRes)
	ON_LBN_SELCHANGE(IDC_LIST2, OnLbnSelchangeList_selPartCtrl)
	ON_CBN_SELCHANGE(IDC_COMBO1, OnCbnSelchangeCom_selType)
	ON_EN_CHANGE(IDC_EDIT2, OnEnChangeEdit_Life)
	ON_LBN_SELCHANGE(IDC_LIST1, OnLbnSelchangeList_selsubsys)
	ON_EN_CHANGE(IDC_EDIT16, OnEnChangeEdit_selvel)
	ON_EN_CHANGE(IDC_EDIT27, OnEnChangeEdit_selnum)
	ON_EN_CHANGE(IDC_EDIT17, OnEnChangeEdit_seldirX)
	ON_EN_CHANGE(IDC_EDIT18, OnEnChangeEdit_seldirY)
	ON_EN_CHANGE(IDC_EDIT19, OnEnChangeEdit_seldirZ)
	ON_EN_CHANGE(IDC_EDIT20, OnEnChangeEdit_selaccelX)
	ON_EN_CHANGE(IDC_EDIT21, OnEnChangeEdit_selaccelY)
	ON_EN_CHANGE(IDC_EDIT22, OnEnChangeEdit_selaccelZ)
	ON_EN_CHANGE(IDC_EDIT24, OnEnChangeEdit_selrangeX)
	ON_EN_CHANGE(IDC_EDIT25, OnEnChangeEdit_selrangeY)
	ON_EN_CHANGE(IDC_EDIT26, OnEnChangeEdit_selrangeZ)
	ON_CBN_SELCHANGE(IDC_COMBO2, OnCbnSelchangeCombo_seltexture)
	ON_CBN_SELCHANGE(IDC_COMBO3, OnCbnSelchangeCombo_selmodel)
	ON_CBN_SELCHANGE(IDC_COMBO4, OnCbnSelchangeCombo_selsrcblend)
	ON_CBN_SELCHANGE(IDC_COMBO5, OnCbnSelchangeCombo_seldestblend)
	ON_CBN_SELCHANGE(IDC_COMBO6, OnCbnSelchangeCombo_selmagfilter)
	ON_CBN_SELCHANGE(IDC_COMBO7, OnCbnSelchangeCombo_selminfilter)
	ON_BN_CLICKED(IDC_CHECK1, OnBnClickedCheck_selbillboard)
	ON_EN_CHANGE(IDC_EDIT28, OnEnChangeEdit_selframecount)
	ON_NOTIFY(NM_CUSTOMDRAW, IDC_SLIDER1, OnNMCustomdrawSlider_selcurframe)
	ON_EN_CHANGE(IDC_EDIT29, OnEnChangeEdit_selframesize)
	ON_EN_CHANGE(IDC_EDIT30, OnEnChangeEdit_selframeangleX)
	ON_EN_CHANGE(IDC_EDIT31, OnEnChangeEdit_selframeangleY)
	ON_EN_CHANGE(IDC_EDIT32, OnEnChangeEdit_selframeangleZ)
	ON_EN_CHANGE(IDC_EDIT33, OnEnChangeEdit_selframealpha)
	ON_BN_CLICKED(IDC_BUTTON14, OnBnClickedButton_selcolor)
	ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedButton_savepart)
//	ON_WM_KEYDOWN()
ON_WM_CLOSE()
ON_EN_CHANGE(IDC_EDIT34, OnEnChangeEdit_setPlayLength)
ON_EN_CHANGE(IDC_EDIT35, OnEnChangeEdit_selCreateTime)
ON_EN_CHANGE(IDC_EDIT36, OnEnChangeEdit_selOffsetX)
ON_EN_CHANGE(IDC_EDIT37, OnEnChangeEdit_selOffsetY)
ON_EN_CHANGE(IDC_EDIT38, OnEnChangeEdit_selOffsetZ)
ON_CBN_SELCHANGE(IDC_COMBO8, OnCbnSelchangeCombo_selcomctrl)
ON_EN_CHANGE(IDC_EDIT39, OnEnChangeEdit_setDelayTime)
ON_BN_CLICKED(IDC_BUTTON21, OnBnClickedBut_NewStrip)
ON_EN_CHANGE(IDC_EDIT41, OnEnChangeEdit_setDumy1)
ON_EN_CHANGE(IDC_EDIT40, OnEnChangeEdit_setDumy2)
ON_BN_CLICKED(IDC_BUTTON22, OnBnClickedBut_AddCharacter)
ON_BN_CLICKED(IDC_BUTTON23, OnBnClickedBut_ResultCha)
ON_BN_CLICKED(IDC_BUTTON24, OnBnClickedBut_AddPathFile)
ON_BN_CLICKED(IDC_BUTTON25, OnBnClickedBut_deletePath)
ON_EN_CHANGE(IDC_EDIT43, OnEnChangeEdit_pathVel)
ON_CBN_EDITCHANGE(IDC_COMBO8, OnCbnEditchangeCom_findlib)
ON_BN_CLICKED(IDC_BUTTON26, OnBnClickedBut_AddHitEff)
ON_BN_CLICKED(IDC_BUTTON27, OnBnClickedBut_AddEmission)
ON_BN_CLICKED(IDC_BUTTON28, OnBnClickedBut_delEmission)
ON_CBN_EDITCHANGE(IDC_COMBO2, OnCbnEditchangeCom_findTexture)
ON_CBN_EDITCHANGE(IDC_COMBO3, OnCbnEditchangeCom_findModel)
ON_EN_CHANGE(IDC_EDIT45, OnEnChangeEdit_setRoadom)
ON_BN_CLICKED(IDC_CHECK_MODEL_DIRECTOR, OnBnClickedCheckModelDirector)
ON_BN_CLICKED(IDC_CHECK_DUMMY_DIRECTOR, OnBnClickedCheckDummyDirector)
ON_EN_CHANGE(IDC_EDIT_DirAngle, OnEnChangeEditDirangle)
END_MESSAGE_MAP()


// CDlgPartEdit message handlers
void CDlgPartEdit::CreatePartEditDlg()
{
	SAFE_DELETE( m_spInstance );

	m_spInstance = new CDlgPartEdit( NULL );
	m_spInstance->Create( CDlgPartEdit::IDD, NULL );
}
void CDlgPartEdit::DestoryDlg()
{
	SAFE_DELETE( m_spInstance );
}

void	CDlgPartEdit::MoveTo(D3DXVECTOR3* vPos)
{
	if(!m_bPlaying)
		return;
	if(m_CPartCtrl)
		m_CPartCtrl->MoveTo(vPos);
}
void	CDlgPartEdit::BindingBone(lwMatrix44* pmat)
{
	if(m_bPlayList)
		return;
	if(!m_bPlaying)
		return;
	if(m_CPartCtrl)
		m_CPartCtrl->BindingBone((D3DXMATRIX*)pmat);

}

void	CDlgPartEdit::FrameMove(DWORD dwTime)
{
	if(m_bPlayList)
	{
		m_MagicCtrl.FrameMove(dwTime);
		return;
	}
	if(!m_bPlaying)
		return;
	if(m_CPartCtrl)
		m_CPartCtrl->FrameMove(dwTime);
}
void	CDlgPartEdit::Render()
{
	if(m_bPlayList)
	{
		m_MagicCtrl.Render();
		return;
	}
	if(!m_bPlaying)
		return;
	if(m_CPartCtrl)
		m_CPartCtrl->Render();
}

//////////////////////////////////////////////////////////////////////////
void	CDlgPartEdit::InitUi(CMPResManger*	pCResMagr)
{

	::GetCurrentDirectory(256,m_pszDir);

	m_cFont.CreateFont(pCResMagr->m_pDev,"宋体");
	m_cFont.BindingRes(pCResMagr);

	m_strPartName = "no name";
	m_fLife		= 0;
	m_fVel		= 0;
	m_iNum		= 1;
	m_fDirx		= 0;
	m_fDiry		= 0;
	m_fDirz		= 0;
	m_fDirAngle = 0;
	m_fAccelx	= 0;
	m_fAccely	= 0;
	m_fAccelz	= 0;
	m_fRangex	= 0;
	m_fRangey	= 0;
	m_fRangez	= 0;
	m_fFrameSize = 0;
	m_fFrameAngleX = 0;
	m_fFrameAngleY = 0;
	m_fFrameAngleZ = 0;
	m_bBill = false;
	m_iFrameCount = 0;
	m_iAlpha = 0;
	m_iCurFrame = 0;
	m_fPlayLength =0;
	m_fDelayTime =0;
	//////////////////////////////////////////////////////////////////////////

	s_string compare[] = 
	{
		"雪-snow",
			"火-fire",
			"爆炸-blast",
			"水波-ripple",
			"eff模型变换-modeleff",
			"eff模型modelstrip",
			"风-wind",
			"arraw",
			"圆环-round",
			"爆炸2-blast2",
			"爆炸3-blast3",
			"粒子收缩-shrink",
			"地表阴影-shade",
			"随机范围-range",
			"随机范围2-range2",
			"dummy缩放粒子-dummy",
			"直线运动",
			"直线往返运动",
			"Dummy方向跟随",
	};
	const int iCompareNum = 19;
	for(int n = 0; n < iCompareNum; n++)
		m_CComboxCtrl.AddString(compare[n].c_str());
	m_CComboxCtrl.SetCurSel(0);

	for(n = 0; n < pCResMagr->GetTexNum(); n++)
		m_CComboxTexture.AddString(pCResMagr->GetTotalTexName()[n].c_str());
	m_CComboxTexture.SetCurSel(0);

	for(n = 0; n < pCResMagr->GetMeshNum(); n++)
		m_CComboxModel.AddString(pCResMagr->GetTotalMeshName()[n].c_str());

	for(n = 0; n < pCResMagr->GetEffectNum(); n++)
		m_CComboxModel.AddString(pCResMagr->GetTotalEffectName()[n].c_str());
	m_CComboxModel.SetCurSel(0);

	s_string blend[] = 
	{
		"零-ZERO",
			"壹-ONE",
			"源色-SRCCOLOR",
			"反源色-INVSRCCOLOR",
			"源Alpha-SRCALPHA",
			"反源Alpha-INVSRCALPHA",
			"目标Alpha-DESTALPHA",
			"反目标Alpha-INVDESTALPHA",
			"目标色-DESTCOLOR",
			"反目标色-INVDESTCOLOR",
	};
	for(n = 0; n < 10; n++)
	{
		m_CComboxSrcBlend.AddString(blend[n].c_str());
		m_CComboxDestBlend.AddString(blend[n].c_str());
	}
	m_CComboxSrcBlend.SetCurSel(0);
	m_CComboxDestBlend.SetCurSel(0);

	s_string Filter[] = 
	{
		"无-None",
		"点过滤-Point",
		"线过滤-Linear",
	};
	for(n = 0; n < 3; n++)
	{
		m_CComboxMagFilter.AddString(Filter[n].c_str());
		m_CComboxMinFilter.AddString(Filter[n].c_str());
	}
	m_CComboxMagFilter.SetCurSel(0);
	m_CComboxMinFilter.SetCurSel(0);

	m_pCResMagr = pCResMagr;
	if(pCResMagr->GetPartCtrlNum() > 0)
	{
		m_CPartCtrl = pCResMagr->GetPartCtrlByID(0);
		m_CPartCtrl->BindingRes(pCResMagr);
		//m_CPartCtrl->setFontEffect("ok",&m_cFont);
		//VEC_string strs;
		//for (int q = 0; q < 4; q++)
		//{
		//	strs.push_back("12");
		//}
		//m_CPartCtrl->setFontEffectCom(strs,4,pCResMagr);

		/*for(int n = 0; n < 480; n++)
		{
			pCResMagr->GetPartCtrlByID(n);
		}*/

		for(int n = 0; n < pCResMagr->GetPartCtrlNum(); n++)
		{
			CMPPartCtrl* pPartCtrl = pCResMagr->GetPartCtrlByID(n);
			if (pPartCtrl)
			{
				m_CComlib.AddString(pPartCtrl->m_strName.c_str());
				m_cCombox_comlib.AddString(pPartCtrl->m_strName.c_str());
			}
			else
			{
				m_CComlib.AddString("errorPar");
				m_cCombox_comlib.AddString("errorPar");
			}

		}
		m_CComlib.SetCurSel(0);
		m_cCombox_comlib.SetCurSel(0);


		for(n = 0; n < m_CPartCtrl->m_iPartNum; n++)
			m_CSubSyslib.AddString(m_CPartCtrl->m_vecPartSys[n]->GetSysName().c_str());
		m_CSubSyslib.SetCurSel(0);

		m_iCurPartCtrl = 0;
		m_iCurPartSys = 0;

		m_strPartName = m_CPartCtrl->m_strName.c_str();

		m_iNum	= m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysNum();
		m_fLife = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysLife();
		m_fVel  = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysVel();

		m_fDirx = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysDir().x;
		m_fDiry = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysDir().y;
		m_fDirz = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysDir().z;
		//m_fDirAngle = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysDirAngle();

		m_fAccelx = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysAccel().x;
		m_fAccely = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysAccel().y;
		m_fAccelz = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysAccel().z;

		m_fRangex = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysRangeX();
		m_fRangey = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysRangeY();
		m_fRangez = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysRangeZ();

		m_bBill = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->IsBillBoard();
		m_bModelDirector = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->IsModelDir();

		m_iFrameCount = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameCount();

		m_CSliderFrame.SetRange(0,m_iFrameCount-1);
		m_CSliderFrame.SetPos(0);

		m_fFrameSize = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameSize(0);
		m_fFrameAngleX = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameAngle(0).x;
		m_fFrameAngleY = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameAngle(0).y;
		m_fFrameAngleZ = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameAngle(0).z;

		m_CComboxCtrl.SetCurSel( m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetType());

		m_CComboxTexture.SetCurSel(pCResMagr->GetTextureID( m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetTextureName()));

		int id = pCResMagr->GetMeshID(m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetModelName());
		if(id < 0)
			id = pCResMagr->GetMeshNum() + pCResMagr->GetEffectID(m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetModelName());
		m_CComboxModel.SetCurSel(id);

		m_CComboxSrcBlend.SetCurSel((int)m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSrcBlend() - 1);
		m_CComboxDestBlend.SetCurSel((int)m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetDestBlend()- 1);

		m_CComboxMagFilter.SetCurSel((int)m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetMagFilter());
		m_CComboxMinFilter.SetCurSel((int)m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetMinFilter());

		m_iAlpha = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameColor(0).a * 255;

		m_iColorR = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameColor(0).r * 255;
		m_iColorG = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameColor(0).g * 255;
		m_iColorB = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetFrameColor(0).b * 255;

		m_fCreateTime = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysStep();

		m_fOffsetX = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPosOffset().x;
		m_fOffsetY = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPosOffset().y;
		m_fOffsetZ = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPosOffset().z;

		m_iRoadom = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetRoadom();
		m_pCurSys = m_CPartCtrl->m_vecPartSys[m_iCurPartSys];
	}
	UpdateData(FALSE);
	m_CListComlib.SetFocus();
}
void	CDlgPartEdit::UpdateUi(int iCurCtrl,int iCurSys, int iCurFrame)
{
	::SetCurrentDirectory(m_pszDir);

	m_CComlib.ResetContent();
	m_cCombox_comlib.ResetContent();
	for(int n = 0; n < m_pCResMagr->GetPartCtrlNum(); n++)
	{
		m_CComlib.AddString(m_pCResMagr->GetPartCtrlByID(n)->m_strName.c_str());
		m_cCombox_comlib.AddString(m_pCResMagr->GetPartCtrlByID(n)->m_strName.c_str());
	}
	m_CComlib.SetCurSel(iCurCtrl);
	m_cCombox_comlib.SetCurSel(iCurCtrl);

	VEC_string strs;
	for (int q = 0; q < 4; q++)
	{
		strs.push_back("526+7-5");
	}

	//m_CPartCtrl->setFontEffectCom(strs,0,NULL,NULL,0xffffffff,false);
	m_CPartCtrl = m_pCResMagr->GetPartCtrlByID(iCurCtrl);
	m_CPartCtrl->BindingRes(m_pCResMagr);
	//m_CPartCtrl->setFontEffect("ok",&m_cFont);


	//m_CPartCtrl->setFontEffectCom(strs,4,m_pCResMagr);


	m_CSubSyslib.ResetContent();
	for(n = 0; n < m_CPartCtrl->m_iPartNum; n++)
		m_CSubSyslib.AddString(m_CPartCtrl->m_vecPartSys[n]->GetSysName().c_str());
	m_CSubSyslib.SetCurSel(iCurSys);

	m_strPartName = m_CPartCtrl->m_strName.c_str();

	m_pCurSys = NULL;
	if(m_CPartCtrl->GetModelNum()>0)
	{
		CChaModel* pModel = m_CPartCtrl->GetModel(0);
		m_iAlpha = pModel->GetCurColor().a * 255;
		m_iColorR = pModel->GetCurColor().r * 255;
		m_iColorG = pModel->GetCurColor().g * 255;
		m_iColorB = pModel->GetCurColor().b * 255;
		m_CComboxSrcBlend.SetCurSel((int)pModel->GetSrcBlend() - 1);
		m_CComboxDestBlend.SetCurSel((int)pModel->GetDestBlend()- 1);

		m_iSkinMeshID = pModel->GetID();

		m_iNum = pModel->GetPlayType();

		m_fVel = (float)pModel->GetVel();

		m_fPlayLength = (float)pModel->GetCurPose();
	}
	else if (m_CPartCtrl->m_iPartNum>0)
	{
		m_pCurSys = m_CPartCtrl->m_vecPartSys[iCurSys];

		m_iNum	= m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysNum();
		m_fLife = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysLife();
		m_fVel  = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysVel();

		m_fDirx = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysDir().x;
		m_fDiry = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysDir().y;
		m_fDirz = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysDir().z;
		//m_fDirAngle = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysDirAngle();

		m_fAccelx = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysAccel().x;
		m_fAccely = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysAccel().y;
		m_fAccelz = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysAccel().z;

		m_fRangex = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysRangeX();
		m_fRangey = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysRangeY();
		m_fRangez = m_CPartCtrl->m_vecPartSys[iCurSys]->GetSysRangeZ();

		m_bBill = m_CPartCtrl->m_vecPartSys[iCurSys]->IsBillBoard();
		m_bModelDirector = m_CPartCtrl->m_vecPartSys[iCurSys]->IsModelDir();
		//m_bDummyDirector = m_CPartCtrl->m_vecPartSys[iCurSys]->IsDummyDir();

		m_iFrameCount = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameCount();

		m_CSliderFrame.SetRange(0,m_iFrameCount-1);
		m_CSliderFrame.SetPos(iCurFrame);

		m_fFrameSize = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameSize(iCurFrame);
		m_fFrameAngleX = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameAngle(iCurFrame).x;
		m_fFrameAngleY = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameAngle(iCurFrame).y;
		m_fFrameAngleZ = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameAngle(iCurFrame).z;

		m_CComboxCtrl.SetCurSel( m_CPartCtrl->m_vecPartSys[iCurSys]->GetType()-1);

		m_CComboxTexture.SetCurSel(m_pCResMagr->GetTextureID( m_CPartCtrl->m_vecPartSys[iCurSys]->GetTextureName()));

		int id = m_pCResMagr->GetMeshID(m_CPartCtrl->m_vecPartSys[iCurSys]->GetModelName());
		if(id < 0)
			id = m_pCResMagr->GetMeshNum() + m_pCResMagr->GetEffectID(m_CPartCtrl->m_vecPartSys[iCurSys]->GetModelName());
		m_CComboxModel.SetCurSel(id);

		m_CComboxSrcBlend.SetCurSel((int)m_CPartCtrl->m_vecPartSys[iCurSys]->GetSrcBlend() - 1);
		m_CComboxDestBlend.SetCurSel((int)m_CPartCtrl->m_vecPartSys[iCurSys]->GetDestBlend()- 1);

		m_CComboxMagFilter.SetCurSel((int)m_CPartCtrl->m_vecPartSys[iCurSys]->GetMagFilter());
		m_CComboxMinFilter.SetCurSel((int)m_CPartCtrl->m_vecPartSys[iCurSys]->GetMinFilter());

		m_iAlpha = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameColor(iCurFrame).a * 255;

		m_iColorR = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameColor(iCurFrame).r * 255;
		m_iColorG = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameColor(iCurFrame).g * 255;
		m_iColorB = m_CPartCtrl->m_vecPartSys[iCurSys]->GetFrameColor(iCurFrame).b * 255;

		m_fCreateTime = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetSysStep();

		m_fOffsetX = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPosOffset().x;
		m_fOffsetY = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPosOffset().y;
		m_fOffsetZ = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPosOffset().z;

		m_fPlayLength = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetPlayTime();
		m_fDelayTime = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetDelayTime();

		m_fPathVel = m_pCurSys->GetPathVel();

		m_iRoadom = m_CPartCtrl->m_vecPartSys[m_iCurPartSys]->GetRoadom();

	}
	else
	{
		if(m_CPartCtrl->GetStripNum()>0)
		{
			CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			m_iNum	= pstrip->GetMaxLength();
			m_fLife =  pstrip->GetLife();

			m_iAlpha = pstrip->GetColor().a * 255;
			m_iColorR = pstrip->GetColor().r * 255;
			m_iColorG = pstrip->GetColor().g * 255;
			m_iColorB = pstrip->GetColor().b * 255;

			m_fCreateTime = pstrip->GetStep();

			m_iDumy1 = pstrip->GetDumy(0);
			m_iDumy2 = pstrip->GetDumy(1);

			m_CComboxSrcBlend.SetCurSel((int)pstrip->GetSrcBlend() - 1);
			m_CComboxDestBlend.SetCurSel((int)pstrip->GetDestBlend()- 1);

			m_CComboxTexture.SetCurSel(m_pCResMagr->GetTextureID( pstrip->GetTexName()));
		}
	}
	if (m_pCurSys)
	{
		m_cHitEffName = m_pCurSys->GetHitEff().c_str();
	}
	UpdateData(FALSE);
}

//////////////////////////////////////////////////////////////////////////
void CDlgPartEdit::OnBnClickedBut_New()
{
	UpdateData(TRUE);
	if(m_strPartName == "")
	{
		MessageBox("需要一个名称");
		return;
	}
	if(m_CComlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	if(m_cCombox_comlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	CMPPartCtrl*tctrl = m_pCResMagr->NewPartCtrl((LPCSTR)m_strPartName);
	if(tctrl)
	{
		m_CPartCtrl = tctrl;
		m_CPartCtrl->m_strName = (LPCSTR)m_strPartName;
		m_CPartCtrl->Clear();
		m_CPartCtrl->m_pfDailTime = m_pCResMagr->GetDailTime();
		m_pCurSys = m_CPartCtrl->NewPartSys();
		m_pCurSys->Create(PARTTICLE_SNOW,(LPCSTR)m_strPartName,10,MESH_PLANERECT,
			m_pCResMagr->GetTotalTexName()[0],D3DXVECTOR3(0,0,0),2,true,m_pCResMagr);
		m_pCurSys->InitParam();
		m_pCurSys->MoveTo(&D3DXVECTOR3(0,0,0));

		m_iCurPartCtrl = m_pCResMagr->GetPartCtrlID((LPCSTR)m_strPartName);
		m_iCurPartSys	 = 0;
		m_iCurFrame		 = 0;
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
	}else
	{
		MessageBox("元素已满");
	}
}
void CDlgPartEdit::OnBnClickedBut_Delete()
{
	if (m_CComlib.GetCount()<= 0)
		return;
	if(m_cCombox_comlib.GetCount() <= 0)
		return;

	UpdateData(TRUE);
	if(m_CComlib.GetCurSel() < 0)
		return;

	if(m_cCombox_comlib.GetCurSel() < 0)
		return;

	m_pCResMagr->DeletePartCtrl(m_cCombox_comlib.GetCurSel());

	m_CComlib.DeleteString(m_CComlib.GetCurSel());
	m_cCombox_comlib.DeleteString(m_CComlib.GetCurSel());

	m_CSubSyslib.ResetContent();

	if(m_cCombox_comlib.GetCount()> 0)
	{
		m_iCurPartCtrl = 0;
		m_iCurPartSys	 = 0;
		m_iCurFrame		 = 0;
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
	}
	else
	{
		m_CPartCtrl->Clear();
		m_CPartCtrl = NULL;
	}
}
void CDlgPartEdit::OnBnClickedCheck_Play()
{
	m_bPlayList = FALSE;
	UpdateData(TRUE);
	//m_bPlay = !m_bPlay;
	if(m_bPlaying)
	{
		if( m_CPartCtrl)
		{
				//SkillCtrl ctrl;
				//ctrl.fSize = 2.0f;
				//m_CPartCtrl->SetSkillCtrl(&ctrl);

			m_CPartCtrl->Play(0);

		}
	}
	else
	{
		if( m_CPartCtrl)
			m_CPartCtrl->Stop();
	}
}



void CDlgPartEdit::OnBnClickedBut_AddToLib()
{
	if (m_CPartCtrl->m_iPartNum<=0)
		return;

	CMPPartSys* tmsys = m_CTempPartCtrl.AddPartSys(m_pCurSys);
	if(!tmsys)
	{
		MessageBox("不能大于10个");
		return;
	}
	tmsys->BindingRes(m_pCResMagr);
	m_CListComlib.AddString(tmsys->GetSysName().c_str());
}

void CDlgPartEdit::OnBnClickedBut_ClearTemplib()
{
	m_CTempPartCtrl.Clear();
	m_CListComlib.ResetContent();
}

void CDlgPartEdit::OnBnClickedBut_DelSublib()
{
	if(m_CSubSyslib.GetCount() <=1)
		return;
	m_CPartCtrl->DeletePartSys(m_CSubSyslib.GetCurSel());
	m_CSubSyslib.DeleteString(m_CSubSyslib.GetCurSel());

}

void CDlgPartEdit::OnBnClickedBut_ComToRes()
{
	if(m_CListComlib.GetCount() <=0)
		return;
	UpdateData(TRUE);
	if(m_strPartName == "")
	{
		MessageBox("需要一个名称");
		return;
	}
	if(m_CComlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	if(m_cCombox_comlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}

	CMPPartCtrl*tctrl = m_pCResMagr->NewPartCtrl((LPCSTR)m_strPartName);
	if(tctrl)
	{
		m_CPartCtrl = tctrl;
		//m_CPartCtrl->BindingRes(m_pCResMagr);
		m_CPartCtrl->m_pfDailTime = m_pCResMagr->GetDailTime();
		m_CPartCtrl->m_strName = (LPCSTR)m_strPartName;
		m_CPartCtrl->Clear();
		for(int e = 0; e < m_CTempPartCtrl.m_iPartNum; e++)
		{
			m_CPartCtrl->AddPartSys(m_CTempPartCtrl.m_vecPartSys[e])->BindingRes(m_pCResMagr);
		}

		m_iCurPartCtrl = m_pCResMagr->GetPartCtrlID((LPCSTR)m_strPartName);

		m_iCurPartSys	 = 0;
		m_iCurFrame		 = 0;
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
	}

}

void CDlgPartEdit::OnLbnSelchangeList_selPartCtrl()
{
	if(m_bPlaying)
	{
		m_bPlaying = false;
		if( m_CPartCtrl)
			m_CPartCtrl->Stop();
	}

	m_iCurPartCtrl = m_cCombox_comlib.GetCurSel();
	m_iCurPartSys	 = 0;
	m_iCurFrame		 = 0;
	UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);

}

void CDlgPartEdit::OnCbnSelchangeCombo_selcomctrl()
{
	if(m_bPlaying)
	{
		m_bPlaying = false;
		if( m_CPartCtrl)
			m_CPartCtrl->Stop();
	}

	m_iCurPartCtrl = m_cCombox_comlib.GetCurSel();
	m_iCurPartSys	 = 0;
	m_iCurFrame		 = 0;
	UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);

	CSkinMeshDlg::GetInstance()->SetPartCtrl();
}

void CDlgPartEdit::OnLbnSelchangeList_selsubsys()
{
	if(m_CSubSyslib.GetCurSel() <0)
		return;
	m_iCurPartSys	 = m_CSubSyslib.GetCurSel();
	m_iCurFrame		 = 0;
	UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
}

void CDlgPartEdit::OnCbnSelchangeCom_selType()
{
	if(m_pCurSys)
		m_pCurSys->SetType(m_CComboxCtrl.GetCurSel() + 1,m_pCResMagr);
}

void CDlgPartEdit::OnEnChangeEdit_Life()
{
	UpdateData(TRUE);
	
	if(m_pCurSys)
		m_pCurSys->SetSysLife(m_fLife);
	else
	{
		 if(m_CPartCtrl->GetModelNum()<=0)
		 {
			 CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			 pstrip->SetLife(m_fLife);
		 }
	}
}


void CDlgPartEdit::OnEnChangeEdit_selvel()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysVel(m_fVel);
	else
	{
		if(m_CPartCtrl->GetModelNum()>0)
		{
			m_CPartCtrl->GetModel(0)->SetVel((int)(m_fVel));
		}
	}
}

void CDlgPartEdit::OnEnChangeEdit_selnum()
{
	UpdateData(TRUE);
	if(m_iNum >100 && m_pCurSys)
	{
		m_iNum = 100;
		UpdateData(FALSE);
	}
	if(m_pCurSys)
		m_pCurSys->SetSysNum(m_iNum);
	else
	{
		if(m_CPartCtrl->GetModelNum()<=0)
		{
			CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			pstrip->SetMaxLength(m_iNum);
		}else
		{
			if(m_CPartCtrl->GetModelNum()>0)
			{
				m_CPartCtrl->GetModel(0)->SetPlayType(m_iNum);
			}
		}
	}
}

void CDlgPartEdit::OnEnChangeEdit_seldirX()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysDirX(m_fDirx);
}

void CDlgPartEdit::OnEnChangeEdit_seldirY()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysDirY(m_fDiry);
}

void CDlgPartEdit::OnEnChangeEdit_seldirZ()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysDirZ(m_fDirz);
}

void CDlgPartEdit::OnEnChangeEdit_selaccelX()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysAccelX(m_fAccelx);
}

void CDlgPartEdit::OnEnChangeEdit_selaccelY()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysAccelY(m_fAccely);
}

void CDlgPartEdit::OnEnChangeEdit_selaccelZ()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetSysAccelZ(m_fAccelz);
}

void CDlgPartEdit::OnEnChangeEdit_selrangeX()
{
	UpdateData(TRUE);

	if(m_pCurSys)
	{
		m_pCurSys->SetSysRangeX(m_fRangex);

		m_CPartCtrl->MoveTo(&D3DXVECTOR3(0,0,0));
	}
}

void CDlgPartEdit::OnEnChangeEdit_selrangeY()
{
	UpdateData(TRUE);

	if(m_pCurSys)
	{
		m_pCurSys->SetSysRangeY(m_fRangey);
		m_CPartCtrl->MoveTo(&D3DXVECTOR3(0,0,0));
	}
}

void CDlgPartEdit::OnEnChangeEdit_selrangeZ()
{
	UpdateData(TRUE);

	if(m_pCurSys)
	{
		m_pCurSys->SetSysRangeZ(m_fRangez);
		m_CPartCtrl->MoveTo(&D3DXVECTOR3(0,0,0));
	}
}

void CDlgPartEdit::OnCbnSelchangeCombo_seltexture()
{
	UpdateData(TRUE);
	CString str;
	int id = m_CComboxTexture.GetCurSel();

	m_CComboxTexture.GetLBText(id,str);

	if(m_pCurSys)
	{
		m_pCurSys->SetTextureName((LPCSTR)str,m_pCResMagr);
	}
	else
	{
		if(m_CPartCtrl->GetModelNum()<=0)
		{
			CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			pstrip->SetTexName((LPCSTR)str,m_pCResMagr);
		}
	}
}

void CDlgPartEdit::OnCbnSelchangeCombo_selmodel()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		int id = m_CComboxModel.GetCurSel();
		CString str;
		m_CComboxModel.GetLBText(id,str);
		m_pCurSys->SetModelName((LPCSTR)str,m_pCResMagr);
	}
}

void CDlgPartEdit::OnCbnSelchangeCombo_selsrcblend()
{
	UpdateData(TRUE);
	int id = m_CComboxSrcBlend.GetCurSel();

	if(m_pCurSys)
	{
		m_pCurSys->SetSrcBlend((D3DBLEND)(id + 1));
	}
	else
	{
		if(m_CPartCtrl->GetStripNum()>0)
		{
			CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			pstrip->SetSrcBlend((D3DBLEND)(id + 1));
		}else
		{
			if(m_CPartCtrl->GetModelNum()>0)
			{
				CChaModel* pModel = m_CPartCtrl->GetModel(0);
				pModel->SetSrcBlend((D3DBLEND)(id + 1));
			}
		}
	}
}

void CDlgPartEdit::OnCbnSelchangeCombo_seldestblend()
{
	UpdateData(TRUE);
	int id = m_CComboxDestBlend.GetCurSel();

	if(m_pCurSys)
	{
		m_pCurSys->SetDestBlend((D3DBLEND)(id + 1));
	}
	else
	{
		if(m_CPartCtrl->GetStripNum()>0)
		{
			CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			pstrip->SetDestBlend((D3DBLEND)(id + 1));
		}else
		{
			if(m_CPartCtrl->GetModelNum()>0)
			{
				CChaModel* pModel = m_CPartCtrl->GetModel(0);
				pModel->SetDestBlend((D3DBLEND)(id + 1));
			}
		}
	}

}

void CDlgPartEdit::OnCbnSelchangeCombo_selmagfilter()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		int id = m_CComboxMagFilter.GetCurSel();
		m_pCurSys->SetMagFilter((D3DTEXTUREFILTERTYPE)(id));
	}
}

void CDlgPartEdit::OnCbnSelchangeCombo_selminfilter()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		int id = m_CComboxMinFilter.GetCurSel();
		m_pCurSys->SetMinFilter((D3DTEXTUREFILTERTYPE)(id));
	}
}

void CDlgPartEdit::OnBnClickedCheck_selbillboard()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetBillBoard(m_bBill);
	}
}

void CDlgPartEdit::OnEnChangeEdit_selframecount()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetFrameCount(m_iFrameCount);
		m_CSliderFrame.SetRange(0,m_iFrameCount-1);
		m_CSliderFrame.SetPos(0);
	}
}

void CDlgPartEdit::OnNMCustomdrawSlider_selcurframe(NMHDR *pNMHDR, LRESULT *pResult)
{
	LPNMCUSTOMDRAW pNMCD = reinterpret_cast<LPNMCUSTOMDRAW>(pNMHDR);
	// TODO: Add your control notification handler code here
	if(m_pCurSys)
	{
		UpdateData(TRUE);
		m_iCurFrame		 = m_CSliderFrame.GetPos();
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
	}
	*pResult = 0;
}

void CDlgPartEdit::OnEnChangeEdit_selframesize()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetFrameSize(m_iCurFrame,m_fFrameSize,m_pCResMagr);
	}
}

void CDlgPartEdit::OnEnChangeEdit_selframeangleX()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetFrameAngle(m_iCurFrame,D3DXVECTOR3(m_fFrameAngleX,m_fFrameAngleY,m_fFrameAngleZ));
	}
}

void CDlgPartEdit::OnEnChangeEdit_selframeangleY()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetFrameAngle(m_iCurFrame,D3DXVECTOR3(m_fFrameAngleX,m_fFrameAngleY,m_fFrameAngleZ));
	}
}

void CDlgPartEdit::OnEnChangeEdit_selframeangleZ()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetFrameAngle(m_iCurFrame,D3DXVECTOR3(m_fFrameAngleX,m_fFrameAngleY,m_fFrameAngleZ));
	}
}

void CDlgPartEdit::OnEnChangeEdit_selframealpha()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetFrameColor(m_iCurFrame,
			D3DXCOLOR((float)m_iColorR/255,(float)m_iColorG/255,
			(float)m_iColorB/255,(float)m_iAlpha/255));
	}else
	{
		if(m_CPartCtrl->GetModelNum()>0)
		{
			m_CPartCtrl->GetModel(0)->SetCurColor(
				D3DXCOLOR((float)m_iColorR/255,(float)m_iColorG/255,
				(float)m_iColorB/255,(float)m_iAlpha/255));
				
		}
	}
}

void CDlgPartEdit::OnBnClickedButton_selcolor()
{
	CColorDialog  cd;
	cd.m_cc.Flags |= CC_RGBINIT | CC_ANYCOLOR;
	if(cd.DoModal() == IDOK)
	{
		DWORD dwSelColor = cd.GetColor();
		m_iColorB = ((dwSelColor&0x00ff0000)>>16);
		m_iColorG = ((dwSelColor&0x0000ff00)>>8);
		m_iColorR = ((dwSelColor&0x000000ff)>>0);

		if(m_pCurSys)
		{

			m_pCurSys->SetFrameColor(m_iCurFrame,
				D3DXCOLOR((float)m_iColorR/255,(float)m_iColorG/255,
				(float)m_iColorB/255,(float)m_iAlpha/255));
			UpdateData(FALSE);
		}
		else
		{
			if(m_CPartCtrl->GetStripNum()>0)
			{
				CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
				pstrip->SetColor(D3DXCOLOR((float)m_iColorR/255,(float)m_iColorG/255,
					(float)m_iColorB/255,1));
			}else
			{
				if(m_CPartCtrl->GetModelNum()>0)
				{
					m_CPartCtrl->GetModel(0)->SetCurColor(
						D3DXCOLOR((float)m_iColorR/255,(float)m_iColorG/255,
						(float)m_iColorB/255,(float)m_iAlpha/255));
				}
			}
			UpdateData(FALSE);
		}
	}

}

void CDlgPartEdit::OnBnClickedButton_savepart()
{
	
	if(m_CPartCtrl)
	{
		//if(MessageBox("要保存吗？","保存粒子",MB_YESNO) == IDNO)
		//	return;
		char pszDir[256];
		::GetCurrentDirectory(256,pszDir);

		//::SetCurrentDirectory(pszDir);

		CString str = _T("文件(*.PAR)|*.PAR|");
		CFileDialog cfd(FALSE,NULL,NULL,OFN_HIDEREADONLY | 
			OFN_OVERWRITEPROMPT, str,NULL);
		cfd.m_ofn.lpstrInitialDir = pszDir;
		if( cfd.DoModal() == IDCANCEL ) 
		{
			return;//(char*)(LPCSTR)cfd.GetPathName()
		}	
		char pszName[256];
		sprintf(pszName,"%s",(char*)(LPCSTR)cfd.GetPathName());
		if(!strstr(pszName,".par"))
			sprintf(pszName,"%s.par",(char*)(LPCSTR)cfd.GetPathName());
		else
			sprintf(pszName,"%s",(char*)(LPCSTR)cfd.GetPathName());

		m_CPartCtrl->m_strName = (char*)(LPCSTR)cfd.GetFileName();
		m_CPartCtrl->SaveToFile(pszName); 

		::SetCurrentDirectory(pszDir);
	}
}

//void CDlgPartEdit::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)
//{
//	// TODO: Add your message handler code here and/or call default
//	MessageBox("dd");
//	ShowWindow(SW_SHOWNORMAL);
//	CDialog::OnKeyDown(nChar, nRepCnt, nFlags);
//}

void CDlgPartEdit::OnClose()
{
	//MessageBox("dd");

	CDialog::OnClose();
}
void	CDlgPartEdit::OnCancel()
{
	ShowWindow(SW_HIDE);
}
void	CDlgPartEdit::OnOK()
{
	ShowWindow(SW_SHOWNORMAL);
}


void CDlgPartEdit::OnEnChangeEdit_setPlayLength()
{
	UpdateData(TRUE);
	//if(m_CPartCtrl)
	//{
	//	m_CPartCtrl->m_fLength = m_fPlayLength;
	//}
	if(m_pCurSys)
	{
		m_pCurSys->SetPlayTime(m_fPlayLength);
	}else
	{
		if(m_CPartCtrl->GetModelNum()>0)
		{
			m_CPartCtrl->GetModel(0)->SetCurPose((int)m_fPlayLength);
		}
	}
}
void CDlgPartEdit::OnEnChangeEdit_setDelayTime()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetDelayTime(m_fDelayTime);
	}
}

void CDlgPartEdit::OnEnChangeEdit_selCreateTime()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetSysStep(m_fCreateTime);
	}else
	{
		if(m_CPartCtrl->GetStripNum()>0)
		{
			CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
			pstrip->SetStep(m_fCreateTime);
		}
	}
}

void	CDlgPartEdit::PlayList()
{
	//if(!m_MagicCtrl.Create(1000,m_pCResMagr))
	//	return;
	//m_bPlayList = TRUE;
	//m_vPosList = D3DXVECTOR3(0,0,0);
	//m_MagicCtrl.MoveTo(&m_vPosList);
	//m_MagicCtrl.Emission(&D3DXVECTOR3(10,0,0));
}


void CDlgPartEdit::OnEnChangeEdit_selOffsetX()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetPosOffset(m_fOffsetX,m_pCurSys->GetPosOffset().y,m_pCurSys->GetPosOffset().z);
	}
}

void CDlgPartEdit::OnEnChangeEdit_selOffsetY()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetPosOffset(m_pCurSys->GetPosOffset().x,m_fOffsetY,m_pCurSys->GetPosOffset().z);
	}
}

void CDlgPartEdit::OnEnChangeEdit_selOffsetZ()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetPosOffset(m_pCurSys->GetPosOffset().x,m_pCurSys->GetPosOffset().y,m_fOffsetZ);
	}
}




void CDlgPartEdit::OnBnClickedBut_NewStrip()
{
	UpdateData(TRUE);
	if(m_strPartName == "")
	{
		MessageBox("需要一个名称");
		return;
	}
	if(m_CComlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	if(m_cCombox_comlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	CMPPartCtrl*tctrl = m_pCResMagr->NewPartCtrl((LPCSTR)m_strPartName);
	if(tctrl)
	{
		m_CPartCtrl = tctrl;
		m_CPartCtrl->m_strName = (LPCSTR)m_strPartName;
		m_CPartCtrl->Clear();
		m_CPartCtrl->m_pfDailTime = m_pCResMagr->GetDailTime();

		m_CPartCtrl->NewStrip("1.tga",m_pCResMagr);
		//m_pCurSys = m_CPartCtrl->NewPartSys();
		//m_pCurSys->Create(PARTTICLE_SNOW,(LPCSTR)m_strPartName,10,MESH_PLANERECT,
		//	m_pCResMagr->GetTotalTexName()[0],D3DXVECTOR3(0,0,0),2,true,m_pCResMagr);
		//m_pCurSys->InitParam();
		//m_pCurSys->MoveTo(&D3DXVECTOR3(0,0,0));

		m_iCurPartCtrl = m_pCResMagr->GetPartCtrlID((LPCSTR)m_strPartName);
		m_iCurPartSys	 = -1;
		m_iCurFrame		 = 0;
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
	}
}

void CDlgPartEdit::OnEnChangeEdit_setDumy1()
{
	UpdateData(TRUE);
	if(!m_pCurSys && m_CPartCtrl->GetStripNum()>0)
	{
		CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
		pstrip->SetDumy(0,m_iDumy1);
	}
}

void CDlgPartEdit::OnEnChangeEdit_setDumy2()
{
	UpdateData(TRUE);
	if(!m_pCurSys && m_CPartCtrl->GetStripNum()>0)
	{
		CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
		pstrip->SetDumy(1,m_iDumy2);
	}
}

void CDlgPartEdit::OnBnClickedBut_AddCharacter()
{
	UpdateData(TRUE);
	if(m_strPartName == "")
	{
		MessageBox("需要一个名称");
		return;
	}
	if(m_CComlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	if(m_cCombox_comlib.FindString(0,m_strPartName)>=0)
	{
		MessageBox("名称已经存在，换名儿");
		return;
	}
	char psID[32];
	sprintf(psID,"%d",m_iSkinMeshID);

	CMPPartCtrl*tctrl = m_pCResMagr->NewPartCtrl((LPCSTR)m_strPartName);
	if(tctrl)
	{
		m_CPartCtrl = tctrl;
		m_CPartCtrl->m_strName = (LPCSTR)m_strPartName;
		m_CPartCtrl->Clear();
		m_CPartCtrl->m_pfDailTime = m_pCResMagr->GetDailTime();

		m_CPartCtrl->NewModel(psID,m_pCResMagr);
		//m_CPartCtrl->BindingRes(m_pCResMagr);
	
		m_iCurPartCtrl = m_pCResMagr->GetPartCtrlID((LPCSTR)m_strPartName);
		m_iCurPartSys	 = -1;
		m_iCurFrame		 = 0;
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
	}
}

void CDlgPartEdit::OnBnClickedBut_ResultCha()
{
	if(m_CPartCtrl->GetModelNum() <= 0)
		return;
	UpdateData(TRUE);

	
	m_CPartCtrl->Clear();
		for(int e = 0; e < m_CTempPartCtrl.m_iPartNum; e++)
		{
			m_CPartCtrl->AddPartSys(m_CTempPartCtrl.m_vecPartSys[e])->BindingRes(m_pCResMagr);
		}

		//m_iCurPartCtrl = m_pCResMagr->GetPartCtrlID((LPCSTR)m_strPartName);

		m_iCurPartSys	 = -1;
		m_iCurFrame		 = 0;
		UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);
}

void CDlgPartEdit::OnBnClickedBut_AddPathFile()
{
	char pszDir[256];
	::GetCurrentDirectory(256,pszDir);
	CString str = _T("文件(*.let)|*.let|文件(*.csf)|*.csf|所有文件|*.*");
	CFileDialog cfd(TRUE,NULL,NULL,OFN_HIDEREADONLY | 
		OFN_OVERWRITEPROMPT, str,NULL);
	if( cfd.DoModal() == IDCANCEL ) 
	{
		::SetCurrentDirectory(pszDir);
		return;//(char*)(LPCSTR)cfd.GetPathName()
	}	

	::SetCurrentDirectory(pszDir);

	if(m_pCurSys)
	{
		if (cfd.GetFileExt().CompareNoCase("csf") == 0)
		{
			m_pCurSys->LoadPathFile((char*)(LPCSTR)cfd.GetPathName());
		}
		else if (cfd.GetFileExt().CompareNoCase("let") == 0)
		{
			m_pCurSys->LoadPathFileLet((char*)(LPCSTR)cfd.GetPathName());
		}
	}
}

void CDlgPartEdit::OnBnClickedBut_deletePath()
{
	if(m_pCurSys)
		m_pCurSys->DeletePath();
}

void CDlgPartEdit::OnEnChangeEdit_pathVel()
{
	UpdateData(TRUE);

	if(m_pCurSys)
		m_pCurSys->SetPathVel(m_fPathVel);

}



void CDlgPartEdit::OnCbnEditchangeCom_findlib()
{
	CString str;
	m_cCombox_comlib.GetWindowText(str);

	int id;

	str += ".par";
	//if(str == "add")
	//{
	//	id = 0;
	//}
	if((id = m_pCResMagr->GetPartCtrlID((char*)(LPCSTR)str))< 0)
	{
		//MessageBox("no param");
		return;
	}
	if(m_bPlaying)
	{
		m_bPlaying = false;
		if( m_CPartCtrl)
			m_CPartCtrl->Stop();
	}

	m_iCurPartCtrl = id;
	m_iCurPartSys	 = 0;
	m_iCurFrame		 = 0;
	UpdateUi(m_iCurPartCtrl,m_iCurPartSys, m_iCurFrame);

	CSkinMeshDlg::GetInstance()->SetPartCtrl();
}

void CDlgPartEdit::OnBnClickedBut_AddHitEff()
{
	UpdateData(TRUE);
	if(m_pCurSys)
		m_pCurSys->SetHitEff((char*)(LPCSTR)m_cHitEffName);
}

void CDlgPartEdit::OnBnClickedBut_AddEmission()
{
	char pszDir[256];
	::GetCurrentDirectory(256,pszDir);
	CString str = _T("文件(*.csf)|*.csf|");
	CFileDialog cfd(TRUE,NULL,NULL,OFN_HIDEREADONLY | 
		OFN_OVERWRITEPROMPT, str,NULL);
	if( cfd.DoModal() == IDCANCEL ) 
	{
		::SetCurrentDirectory(pszDir);
		return;//(char*)(LPCSTR)cfd.GetPathName()
	}	

	::SetCurrentDirectory(pszDir);

	CEffPath pcPath;
	pcPath.LoadPathFromFile((char*)(LPCSTR)cfd.GetPathName());
	if(m_pCurSys)
		m_pCurSys->SetEmissionPath(&pcPath);
}

void CDlgPartEdit::OnBnClickedBut_delEmission()
{
	if(m_pCurSys)
		m_pCurSys->SetEmissionPath(NULL);;
}

void CDlgPartEdit::OnCbnEditchangeCom_findTexture()
{
	CString str;
	m_CComboxTexture.GetWindowText(str);
	s_string strName = (CHAR*)(LPCSTR)str;
	if(int id = m_pCResMagr->GetTextureID(strName) != -1)
	{
		if(m_pCurSys)
		{
			m_pCurSys->SetTextureName((LPCSTR)str,m_pCResMagr);
		}
		else
		{
			if(m_CPartCtrl->GetModelNum()<=0)
			{
				CMPStrip* pstrip = m_CPartCtrl->GetStrip(0);
				pstrip->SetTexName((LPCSTR)str,m_pCResMagr);
			}
		}
	}
}

void CDlgPartEdit::OnCbnEditchangeCom_findModel()
{
	CString str;
	m_CComboxModel.GetWindowText(str);
	s_string strName = (CHAR*)(LPCSTR)str;

	if(int id = m_pCResMagr->GetMeshID(strName) != -1)
	{
		if(m_pCurSys)
		{
			int id = m_CComboxModel.GetCurSel();
			CString str;
			m_CComboxModel.GetLBText(id,str);
			m_pCurSys->SetModelName((LPCSTR)str,m_pCResMagr);
		}
	}
}

void CDlgPartEdit::OnEnChangeEdit_setRoadom()
{
	UpdateData(TRUE);
	if(m_iRoadom <= 0)
		m_iRoadom == 1;

	if(m_pCurSys)
	{
		m_pCurSys->SetRoadom(m_iRoadom);
	}
	UpdateData(FALSE);
}

void CDlgPartEdit::OnBnClickedCheckModelDirector()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		m_pCurSys->SetModelDir(m_bModelDirector);
	}
	UpdateData(FALSE);
}

void CDlgPartEdit::OnBnClickedCheckDummyDirector()
{
	UpdateData(TRUE);
	if(m_pCurSys)
	{
		//m_pCurSys->SetDummyDir(m_bDummyDirector);
	}
	UpdateData(FALSE);
}

void CDlgPartEdit::OnEnChangeEditDirangle()
{
	UpdateData(TRUE);

	if(m_pCurSys);
		//m_pCurSys->SetSysDirAngle(m_fDirAngle);
}
