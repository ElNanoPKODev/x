// EffectEditerView.cpp : CEffectEditerView 类的实现
//

#include "stdafx.h"
#include "EffectEditer.h"

#include "EffectEditerDoc.h"
#include "EffectEditerView.h"
#include ".\effectediterview.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

CEffectEditerView* CEffectEditerView::m_pInstance = NULL;

// CEffectEditerView

IMPLEMENT_DYNCREATE(CEffectEditerView, CFormView)

BEGIN_MESSAGE_MAP(CEffectEditerView, CFormView)
	ON_WM_DESTROY()
//	ON_LBN_SELCHANGE(IDC_LIST_EFFVS2, OnLbnSelchangeListEffvs2)
//ON_EN_CHANGE(IDC_EDIT2, OnEnChangeEdit2)
ON_COMMAND(ID_MENUOPTION, OnMenuOption)
ON_COMMAND(ID_FILE_NEW, OnFileNew)
ON_COMMAND(ID_FILE_SAVE, OnFileSave)
ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
ON_BN_CLICKED(IDC_CHECKPLAY, OnBnClickedCheckplay)
ON_NOTIFY(NM_CUSTOMDRAW, IDC_SLIDERFRAME, OnNMCustomdrawSliderframe)
//ON_LBN_SELCHANGE(IDC_LIST_EFFLIB, OnLbnSelchangeListEfflib)
ON_LBN_SELCHANGE(IDC_LIST_SUBEFFLIB, OnLbnSelchangeListSubefflib)
ON_BN_CLICKED(ID_BUTEDITMODEL, OnBnClickedButeditmodel)
ON_BN_CLICKED(ID_BUTEDITCOORD, OnBnClickedButeditcoord)
ON_BN_CLICKED(ID_BUTEDITTEXTURE, OnBnClickedButedittexture)
ON_BN_CLICKED(ID_BUTSCALE, OnBnClickedButscale)
ON_BN_CLICKED(ID_BUTROTATION, OnBnClickedButrotation)
ON_BN_CLICKED(ID_BUTTRANSLATE, OnBnClickedButtranslate)
ON_BN_CLICKED(IDC_CHECKX, OnBnClickedCheckx)
ON_BN_CLICKED(IDC_CHECKY, OnBnClickedChecky)
ON_BN_CLICKED(IDC_CHECKZ, OnBnClickedCheckz)
//ON_WM_LBUTTONDOWN()
//ON_WM_LBUTTONUP()
//ON_WM_MOUSEMOVE()
ON_BN_CLICKED(IDC_BUTSETKEYFRAME, OnBnClickedButsetkeyframe)
ON_BN_CLICKED(IDC_BUTSELCOLOR, OnBnClickedButselcolor)
ON_NOTIFY(NM_CUSTOMDRAW, IDC_SLIDER2, OnNMCustomdrawSlider2)
ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN1, OnDeltaposSpin1)
ON_EN_CHANGE(IDC_EDIT2, OnEnChangeEdit2)
ON_COMMAND(ID_BUTRESETORIGIN, OnButresetorigin)
ON_BN_CLICKED(IDC_BUTTON8, OnBnClickedButChangeModel)
//ON_LBN_SELCHANGE(IDC_LIST_TEXTURELIB, OnLbnSelchangeListTexturelib)
ON_BN_CLICKED(IDC_BUTTON10, OnBnClickedButApplyTex)
ON_BN_CLICKED(IDC_BUTTON6, OnBnClickedButAddSubEffTolib)
ON_BN_CLICKED(IDC_BUTTON7, OnBnClickedButUniteEff)

ON_CBN_SELCHANGE(IDC_COMBO1, OnCbnSelchangeComboAlphaType)
ON_COMMAND(ID_SAVEALL, OnSaveall)
ON_EN_CHANGE(IDC_EDIT11, OnEnChangeEditInputX)
ON_EN_CHANGE(IDC_EDIT12, OnEnChangeEditInputY)
ON_EN_CHANGE(IDC_EDIT13, OnEnChangeEditInputZ)
ON_BN_CLICKED(IDC_CHECK5, OnBnClickedCycRotating)
ON_COMMAND(ID_SHOWPARTDLG, OnShowpartdlg)
ON_COMMAND(ID_32789, On32789)
ON_COMMAND(ID_32790, OnExcuteScript)
ON_CBN_SELCHANGE(IDC_COMBO10, OnCbnSelchangeComboSelEffLib)
ON_BN_CLICKED(IDC_BUTTON20, OnBnClickedBut_modelParam)
ON_COMMAND(ID_32791, On32791)
ON_CBN_EDITCHANGE(IDC_COMBO10, OnCbnEditchangeCom_findEff)
ON_CBN_EDITCHANGE(IDC_COMBO9, OnCbnEditchangeCom_findtexture)
ON_EN_CHANGE(IDC_EDIT46, OnEnChangeEdit_setSingleVel)
ON_BN_CLICKED(IDC_CHECK7, OnBnClickedCheck_singleLoop)
ON_BN_CLICKED(IDC_CHECK8, OnBnClickedCheck_RotaBoard)
END_MESSAGE_MAP()

// CEffectEditerView 构造/析构

CEffectEditerView::CEffectEditerView()
	: CFormView(CEffectEditerView::IDD)
	, m_bPlaying(FALSE)
	, m_bLoop(FALSE)
	, m_bEditModel(FALSE)
	, m_bEditCoord(FALSE)
	, m_bEditTexture(FALSE)
	, m_bEditScale(FALSE)
	, m_bEditRotat(FALSE)
	, m_bEditTranslate(FALSE)
	, m_bEditZ(FALSE)
	, m_bEditY(FALSE)
	, m_bEditX(FALSE)
	, m_iSliderAlpha(0)
	, m_EditFrameTime(0)
	, m_strModelName(_T(""))
	, m_fStrFrameTime(0)
	, m_fScaleX(0)
	, m_fScaleY(0)
	, m_fScaleZ(0)
	, m_fRotatX(0)
	, m_fRotatY(0)
	, m_fRotatZ(0)
	, m_fTransX(0)
	, m_fTransY(0)
	, m_fTransZ(0)
	, m_iColorR(0)
	, m_iColorG(0)
	, m_iColorB(0)
	, m_iColorA(0)
	, m_istrFrameCount(0)
	, m_fstrFrameLength(0)
	, m_bIsBBoard(FALSE)
	, m_strType(_T(""))
	, m_fInputX(0)
	, m_fInputY(0)
	, m_fInputZ(0)
	, m_bEditCompEff(FALSE)
	, m_bCycRotating(FALSE)
	, m_fCycVecl(0)
	, m_iFrameShow(0)
	, m_fSinglVel(0)
	, m_bRotaSingle(FALSE)
	, m_bBoardRotating(FALSE)
{
	// TODO: 在此处添加构造代码
	m_pInstance				= this;
	m_pDev					= NULL;

	m_bLock					= false;

	m_pCurEffect = NULL;

	m_vecEffect.clear();

	m_iCurFrame = 0;
	m_iCurSubEff = 0;

	m_bBeginEdit = false;

	m_bBeginMoveShade = false;

	m_dwSelColor = 0xffffffff;

	m_pMatBBoard = NULL;

	m_pMagicCtrl = NULL;
	m_bInit = false;
}

CEffectEditerView::~CEffectEditerView()
{
	//m_ptestModel->Destroy();
	//SAFE_DELETE(m_ptestModel);

	m_pFont.ReleaseFont();
	lwReleaseMeshLibSystem();

}

void CEffectEditerView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_SHOWSCENE, m_cShowScene);
	DDX_Check(pDX, IDC_CHECKPLAY, m_bPlaying);
	DDX_Check(pDX, IDC_CHECK2, m_bLoop);
	DDX_Control(pDX, IDC_SLIDERFRAME, m_CSliderFrame);
	//DDX_Control(pDX, IDC_LIST_MODELLIB, m_ClistModelLib);
	//DDX_Control(pDX, IDC_LIST_EFFLIB, m_ClistEffLib);
	DDX_Control(pDX, IDC_LIST_SUBEFFLIB, m_ClistSubEffLib);
	//DDX_Control(pDX, IDC_LIST_PARTICLELIB, m_ClistParticleLib);
	DDX_Check(pDX, ID_BUTEDITMODEL, m_bEditModel);
	DDX_Check(pDX, ID_BUTEDITCOORD, m_bEditCoord);
	DDX_Check(pDX, ID_BUTEDITTEXTURE, m_bEditTexture);
	DDX_Check(pDX, ID_BUTSCALE, m_bEditScale);
	DDX_Check(pDX, ID_BUTROTATION, m_bEditRotat);
	DDX_Check(pDX, ID_BUTTRANSLATE, m_bEditTranslate);
	DDX_Check(pDX, IDC_CHECKZ, m_bEditZ);
	DDX_Check(pDX, IDC_CHECKY, m_bEditY);
	DDX_Check(pDX, IDC_CHECKX, m_bEditX);
	DDX_Control(pDX, IDC_BUTSETKEYFRAME, m_CButSetKey);
	DDX_Slider(pDX, IDC_SLIDER2, m_iSliderAlpha);
	DDX_Control(pDX, IDC_SLIDER2, m_CSliderAlpha);
	DDX_Text(pDX, IDC_EDIT2, m_EditFrameTime);
	DDX_Control(pDX, IDC_SPIN1, m_CSpinFrameTime);
	DDX_Text(pDX, IDC_STRMODELNAME, m_strModelName);
	DDX_Text(pDX, IDC_STRFRAMETIME, m_fStrFrameTime);
	DDX_Text(pDX, IDC_STRSCALEX, m_fScaleX);
	DDX_Text(pDX, IDC_STRSCALEY, m_fScaleY);
	DDX_Text(pDX, IDC_STRSCALEZ, m_fScaleZ);
	DDX_Text(pDX, IDC_STRROTATX, m_fRotatX);
	DDX_Text(pDX, IDC_STRROTATY, m_fRotatY);
	DDX_Text(pDX, IDC_STRROTATZ, m_fRotatZ);
	DDX_Text(pDX, IDC_STRTRANSX, m_fTransX);
	DDX_Text(pDX, IDC_STRTRANSXY, m_fTransY);
	DDX_Text(pDX, IDC_STRTRANSZ, m_fTransZ);
	DDX_Text(pDX, IDC_STRCOLORR, m_iColorR);
	DDX_Text(pDX, IDC_STRCOLORG, m_iColorG);
	DDX_Text(pDX, IDC_STRCOLORB, m_iColorB);
	DDX_Text(pDX, IDC_STRCOLORA, m_iColorA);
	DDX_Text(pDX, IDC_STRFRAMECOUNT, m_istrFrameCount);
	DDX_Text(pDX, IDC_STRLENGTH, m_fstrFrameLength);
	//DDX_Control(pDX, IDC_LIST_TEXTURELIB, m_CListboxTexLib);
	DDX_Control(pDX, IDC_LIST_PARTICLELIB2, m_CListboxTempLib);
	DDX_Check(pDX, IDC_CHECK3, m_bIsBBoard);
	DDX_Text(pDX, IDC_STRTYPE, m_strType);
	DDX_Control(pDX, IDC_COMBO1, m_CCombAlphaType);
	DDX_Text(pDX, IDC_EDIT11, m_fInputX);
	DDX_Text(pDX, IDC_EDIT12, m_fInputY);
	DDX_Text(pDX, IDC_EDIT13, m_fInputZ);
	DDX_Check(pDX, IDC_CHECK4, m_bEditCompEff);
	DDX_Check(pDX, IDC_CHECK5, m_bCycRotating);
	DDX_Text(pDX, IDC_EDIT14, m_fCycVecl);
	DDX_Text(pDX, IDC_STRFRAMESHOW, m_iFrameShow);
	DDX_Control(pDX, IDC_COMBO8, m_CComboModelLib);
	DDX_Control(pDX, IDC_COMBO9, m_CComboTextureLib);
	DDX_Control(pDX, IDC_COMBO10, m_CComboEffLib);
	DDX_Text(pDX, IDC_EDIT46, m_fSinglVel);
	DDX_Check(pDX, IDC_CHECK7, m_bRotaSingle);
	DDX_Check(pDX, IDC_CHECK8, m_bBoardRotating);
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
void	Part_trace(CMagicCtrl* pEffCtrl, void*	pParam)
{
	D3DXVECTOR3 vTarget;

	float fDist  = pEffCtrl->_fVel * *(float*)pParam;
	pEffCtrl->_vPos	 += pEffCtrl->_vDir * fDist;

	if(PointInstrPointRange(&pEffCtrl->_vPos, &pEffCtrl->_vOldTarget, 1.0f))
	{
		pEffCtrl->Stop();
		return;
	}
	pEffCtrl->Render();
}

void	Part_drop(CMagicCtrl* pEffCtrl, void*	pParam)
{
	pEffCtrl->Render();

	float fDist  = pEffCtrl->_fVel * *(float*)pParam;

	pEffCtrl->_fCurDist += fDist;
	if(pEffCtrl->_fCurDist > pEffCtrl->_fStartDist)
	{
		pEffCtrl->_vPos = pEffCtrl->_vOldTarget;
		pEffCtrl->Stop();
		return;
	}
	pEffCtrl->_vPos	 += pEffCtrl->_vDir * fDist;
}
void	Part_fly(CMagicCtrl* pEffCtrl, void*	pParam)
{
	pEffCtrl->Render();

	float fDist  = pEffCtrl->_fVel * *(float*)pParam;

	pEffCtrl->_fCurDist += fDist;
	if(pEffCtrl->_fCurDist > pEffCtrl->_fStartDist)
	{
		pEffCtrl->_vPos = pEffCtrl->_vOldTarget;
		pEffCtrl->Stop();
		return;
	}
	pEffCtrl->_vPos += pEffCtrl->_vDir * fDist;

}


void	Part_fshade(CMagicCtrl* pEffCtrl, void*	pParam)
{
	pEffCtrl->Render();

	if(PointInstrPointRange(&pEffCtrl->_vPos, &pEffCtrl->_vTarget,1.0f))
	{
		pEffCtrl->Stop();
		return;
	}

	pEffCtrl->_vPos += pEffCtrl->_vDir * (pEffCtrl->_fVel* *(float*)pParam);


	D3DXVECTOR3 tvPos = pEffCtrl->_vPos;
	float size = 3;
	float alpha = 1;
	for (int n = 0; n < pEffCtrl->_iCurSNum; n++)
	{
		size -= (float)3 / pEffCtrl->_iCurSNum; 
		alpha -= (float)1 / pEffCtrl->_iCurSNum;
		tvPos += (-pEffCtrl->_vDir) * 0.5f;
		for (int m = 0; m < pEffCtrl->GetModelNum(); m++)
		{
			pEffCtrl->GetModelEff(m)->SetAlpha(alpha);
			pEffCtrl->GetModelEff(m)->Scaling(size,size,size);
			pEffCtrl->GetModelEff(m)->MoveTo(tvPos.x,tvPos.y,tvPos.z);
			pEffCtrl->GetModelEff(m)->Render();
		}
	}
	pEffCtrl->GetModelEff(0)->Scaling(3,3,3);
	pEffCtrl->GetModelEff(0)->SetAlpha(1);

	pEffCtrl->_fCurTime += *ResMgr.GetDailTime();
	if(pEffCtrl->_fCurTime > 0.3f)
	{
		pEffCtrl->_fCurTime = 0.0f;
		pEffCtrl->_iCurSNum++;
	}
}

void	Part_arc(CMagicCtrl* pEffCtrl, void*	pParam)
{
	pEffCtrl->Render();

	pEffCtrl->_fCurArc += (pEffCtrl->_fVel* *(float*)pParam);
	D3DXVECTOR3 vp = pEffCtrl->_vOldPos + pEffCtrl->_vDir* pEffCtrl->_fCurArc;
	D3DXVECTOR3 vd = vp - pEffCtrl->_vArcOrg;
	D3DXVec3Normalize(&vd,&vd);
	pEffCtrl->_vPos = pEffCtrl->_vArcOrg + (vd * (pEffCtrl->_fHalfHei ));

	if(PointInstrPointRange(&pEffCtrl->_vPos, &pEffCtrl->_vTarget,0.5f))
	{
		pEffCtrl->Stop();
		return;
	}
}
void	Part_dirlight(CMagicCtrl* pEffCtrl, void*	pParam)
{
	pEffCtrl->_vPos = pEffCtrl->_vOldPos;

	pEffCtrl->MoveTo(&pEffCtrl->_vPos);

	bool	bover = true;
	for (int n = 0; n < pEffCtrl->GetModelNum(); ++n)
	{
		pEffCtrl->GetModelEff(n)->Render();
		if(pEffCtrl->GetModelEff(n)->IsPlay())
		{
			bover = false;
		}
	}
	if(bover)
	{
		pEffCtrl->Stop();
	}
}

void	Part_dist(CMagicCtrl* pEffCtrl, void*	pParam)
{
	pEffCtrl->Render();

	float fDist  = pEffCtrl->_fVel * *(float*)pParam;
	pEffCtrl->_fCurDist += fDist;
	pEffCtrl->_vPos	 += pEffCtrl->_vDir * fDist;

	if(pEffCtrl->_fCurDist > pEffCtrl->_fStartDist)
		pEffCtrl->Stop();
}
void (*MagicList[])(CMagicCtrl* pEffCtrl, void*	pParam) = 
{
	Part_drop,
		Part_fly,
		Part_trace,
		Part_fshade,
		Part_arc,
		Part_dirlight,
		Part_dist,
};
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

BOOL CEffectEditerView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: 在此处通过修改 CREATESTRUCT cs 来修改窗口类或
	// 样式

	return CFormView::PreCreateWindow(cs);
}

void CEffectEditerView::OnInitialUpdate()
{
	CFormView::OnInitialUpdate();
	GetParentFrame()->RecalcLayout();
	ResizeParentToFit();

	int iScreenw = GetSystemMetrics(SM_CXSCREEN);
	int iScreenh = GetSystemMetrics(SM_CYSCREEN);

	int w, h;
	w = iScreenw - iScreenw/2;
	h = iScreenh - iScreenh/2;

	//m_cShowScene.MoveWindow(10, 10, w, h);

	m_cShowScene.GetWindowRect(&m_rcScene);

	ScreenToClient(&m_rcScene);

	CDlgEditTexture::GetInstance()->CreateEditTexDlg();
	CDlgEditTexture::GetInstance()->ShowWindow( SW_HIDE );

	CDlgEditCoord::GetInstance()->CreateEditCoordDlg();
	CDlgEditCoord::GetInstance()->ShowWindow( SW_HIDE );

	CDlgPartEdit::GetInstance()->CreatePartEditDlg();
	CDlgPartEdit::GetInstance()->ShowWindow(SW_SHOW);

	CDlgModelParam::GetInstance()->CreateModelParamtDlg();
	CDlgModelParam::GetInstance()->ShowWindow(SW_HIDE);

	CSkinMeshDlg::GetInstance()->CreateSkinMeshDlg();
	CSkinMeshDlg::GetInstance()->ShowWindow(SW_SHOW);

	m_CCombAlphaType.AddString(_T("普通"));
	m_CCombAlphaType.AddString(_T("微亮"));
	m_CCombAlphaType.AddString(_T("强亮"));
	m_CCombAlphaType.AddString(_T("加重"));
	m_CCombAlphaType.AddString(_T("反色"));
	m_CCombAlphaType.AddString(_T("深度"));
	m_CCombAlphaType.AddString(_T("不透明"));


}

void CEffectEditerView::OnButresetorigin()
{
	if(!m_bEditModel)
		return;
	if (!m_bEditScale && !m_bEditRotat && !m_bEditTranslate)
		return;
	if(m_bEditScale)
	{
		if(m_bEditX)
			m_SVerScale.x  = 0;
		if(m_bEditY)
			m_SVerScale.y  = 0;
		if(m_bEditZ)
			m_SVerScale.z  = 0;
	}
	if (m_bEditRotat)
	{
		if(m_bEditX)
			m_SVerRotat.x  = 0;
		if(m_bEditY)
			m_SVerRotat.y  = 0;
		if(m_bEditZ)
			m_SVerRotat.z  = 0;
	}
	if(m_bEditTranslate)
	{
		if(m_bEditX)
			m_SVerTranslate.x  = 0;
		if(m_bEditY)
			m_SVerTranslate.y  = 0;
		if(m_bEditZ)
			m_SVerTranslate.z  = 0;
	}				
		m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameSize(m_iCurFrame,m_SVerScale);
		m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameAngle(m_iCurFrame,m_SVerRotat);
		m_CModelEff.m_vecEffect[m_iCurSubEff]->setFramePos(m_iCurFrame,m_SVerTranslate);

}
// CEffectEditerView 诊断

#ifdef _DEBUG
void CEffectEditerView::AssertValid() const
{
	CFormView::AssertValid();
}

void CEffectEditerView::Dump(CDumpContext& dc) const
{
	CFormView::Dump(dc);
}

CEffectEditerDoc* CEffectEditerView::GetDocument() const // 非调试版本是内联的
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CEffectEditerDoc)));
	return (CEffectEditerDoc*)m_pDocument;
}
#endif //_DEBUG


// CEffectEditerView 消息处理程序
/************************************************************************/
/*                                                                      */
/************************************************************************/
void  CEffectEditerView::InitScene(D3DXMATRIX *pMatBBoard)
{
	ASSERT(m_pDev);

	//lwISystem* sys;

	lwISysGraphics* sys_graphics;

	if( FAILED( lwInitMeshLibSystem( &m_CResMagr.m_pSys, &sys_graphics, theApp.m_pD3D, m_pDev, NULL) ) )
	{
		//LG("init", "msg模型模块(MeshLib)初始化失败，可能是没有读取到相关资源!" );
		return ;
	}
	LoadShader0(sys_graphics);

	lwIDeviceObject* dev_obj = sys_graphics->GetDeviceObject();

	m_pRender.InitRender(dev_obj->GetDirect3D(),dev_obj->GetDevice());

	m_pRender.GetInterfaceMgr()->sys = m_CResMagr.m_pSys;
	m_pRender.GetInterfaceMgr()->sys_graphics = sys_graphics;
	m_pRender.GetInterfaceMgr()->dev_obj = sys_graphics->GetDeviceObject();
	m_pRender.GetInterfaceMgr()->res_mgr = sys_graphics->GetResourceMgr();

	m_pRender.SetRenderState(D3DRS_CULLMODE, D3DCULL_NONE );
	m_pRender.SetRenderState( D3DRS_LIGHTING, FALSE );
	m_pRender.SetRenderState(D3DRS_SHADEMODE,D3DSHADE_GOURAUD);
	m_pRender.SetRenderState(D3DRS_ZENABLE,D3DZB_TRUE);

	m_pRender.SetTextureStageState(0,\
		D3DTSS_COLOROP,D3DTOP_MODULATE  );
	m_pRender.SetTextureStageState(0,\
		D3DTSS_COLORARG1,D3DTA_DIFFUSE);
	m_pRender.SetTextureStageState(0,\
		D3DTSS_COLORARG2,D3DTA_TEXTURE);

	m_pRender.SetTextureStageState(0,\
		D3DTSS_ALPHAOP,D3DTOP_MODULATE  );
	m_pRender.SetTextureStageState(0,\
		D3DTSS_ALPHAARG1,D3DTA_DIFFUSE);
	m_pRender.SetTextureStageState(0,\
		D3DTSS_ALPHAARG2,D3DTA_TEXTURE);

	m_pRender.SetTextureStageState(0,\
		D3DTSS_MINFILTER,D3DTEXF_LINEAR );
	m_pRender.SetTextureStageState(0,\
		D3DTSS_MAGFILTER ,D3DTEXF_LINEAR);
	//lwIPathInfo* path_info;
	//m_CResMagr.m_pSys->GetInterface( (LW_VOID**)&path_info, LW_GUID_PATHINFO );
	//path_info->SetPath( PATH_TYPE_MODEL_ITEM, "model\\effect\\" );

	D3DXMATRIX t_matview = 
	theApp.m_cCamera.GetViewMatrix();
	D3DXMATRIX t_matProj = 
	theApp.m_cCamera.GetProjMatrix();

	m_MatViewProj = t_matview * t_matProj;
	//s_string		t_strMesh = MESH_PLANERECT;
	m_CResMagr.m_pSysGraphics = sys_graphics;

	//if(!m_CResMagr.InitRes(m_pDev,pMatBBoard, &m_MatViewProj))
	//	 AfxMessageBox("InitRes");
	if(!m_CResMagr.InitRes(&m_pRender,(D3DXMATRIX*)sys_graphics->GetDeviceObject()->GetMatView(),(D3DXMATRIX*)sys_graphics->GetDeviceObject()->GetMatViewProj()))
		AfxMessageBox("InitRes");

	m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformView((lwMatrix44*)&t_matview);
	m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformProj((lwMatrix44*)&t_matProj);

	//path_info->SetPath( PATH_TYPE_MODEL_ITEM, "model\\item\\" );

	

	m_ptestModel = new MPSceneItem;
	m_ptestModel->Load("10100006.lgo");


	m_ptestModel->PlayDefaultAnimation();
	//int id = m_CResMagr.GetMeshID(t_strMesh);
	////_DbgOut( "ff", id, S_OK, "" );
	//ASSERT(id >= 0);
	//ASSERT(m_CResMagr.GetMeshByID(id));
	//m_CBBoard.Init(m_pDev, (WPARAM)pMatBBoard, (LPARAM)m_CResMagr.GetMeshByID(id));

	//m_CEffect.Init(m_pDev,NULL,(LPARAM)m_CResMagr.GetMeshByID(id));

	//s_string t_strTex = "bd.tga";
	//m_CEffect.AddTexNametoList(t_strTex);
	//m_CEffect.AddTexToList(m_CResMagr.GetTextureByID(0));

	//t_strTex = "海浪1";
	//m_CEffect.setEffectName(t_strTex);

	//m_CModelEff.BindingEffect(&m_CEffect);
	std::vector<I_Effect>& rEffects = m_CResMagr.GetEffectByID(0);
	for (int i(0); i<rEffects.size(); i++)
		rEffects[i].BoundingRes(&m_CResMagr);
 	m_CModelEff.BindingEffect(rEffects);
	m_CModelEff.BindingRes(&m_CResMagr);
	//m_CModelEff.RotatingYaw(0);

	//!把找到的资源装入列表框
	for(int n = 0; n < m_CResMagr.GetMeshNum(); n++)
	{
		//m_ClistModelLib.AddString(m_CResMagr.GetTotalMeshName()[n].c_str());
		m_CComboModelLib.AddString(m_CResMagr.GetTotalMeshName()[n].c_str());
	}
	for(int n = 0; n < m_CResMagr.GetEffectNum(); n++)
	{
		//m_ClistEffLib.AddString(m_CResMagr.GetTotalEffectName()[n].c_str());
		m_CComboEffLib.AddString(m_CResMagr.GetTotalEffectName()[n].c_str());
	}

	CDlgEditTexture::GetInstance()->FillDlg(m_CResMagr.GetTotalTexName(),&m_CResMagr);
	for(int n = 0; n < m_CResMagr.GetTexNum(); n++)
	{
		//m_CListboxTexLib.AddString(m_CResMagr.GetTotalTexName()[n].c_str());
		m_CComboTextureLib.AddString(m_CResMagr.GetTotalTexName()[n].c_str());
	}

	m_CComboModelLib.SetCurSel(0);
	//m_ClistEffLib.SetCurSel(0);
	m_CComboEffLib.SetCurSel(0);
	m_CComboTextureLib.SetCurSel(0);

	OnCbnSelchangeComboSelEffLib();
	/////////////////////////
	m_CSliderFrame.SetRange(0,m_CModelEff.GetSubEffectFrameCount(0)-1);
	m_CSliderAlpha.SetRange(0,255);
	m_CSliderAlpha.SetPos(0);

	m_CSpinFrameTime.SetBuddy(GetDlgItem(IDC_EDIT2));
	m_CSpinFrameTime.SetRange(1 , 1000);
	m_CSpinFrameTime.SetPos(30);

	CDlgPartEdit::GetInstance()->InitUi(&m_CResMagr);

	CSkinMeshDlg::GetInstance()->SetResMagr(&m_CResMagr);

	CSkinMeshDlg::GetInstance()->BindItem(m_ptestModel);
	//影子
	//m_CShadeMap.setTextureName("DinoE.jpg");
	//m_CShadeMap.BoundingRes(&m_CResMagr);
	//m_CShadeMap.CreateShadeMap();
	//m_CShadeMap.CreateSpliteTexture(4,1);
	//m_CShadeMap.SetAlphaType(D3DBLEND_SRCALPHA,D3DBLEND_DESTALPHA);
	//m_CShadeMap.setColor(0xffff0000);
	//m_CShadeMap.Play();

	//m_CSnow.Init("雪",100,"snow.tga",MESH_PLANETRI,D3DXVECTOR2(30,30),5,true);
	//m_CSnow.BindingRes(&m_CResMagr);

	//m_CFire2.Init("萤火",10,"smoke.tga",MESH_PLANERECT,D3DXVECTOR2(0.f,0.f),10,true);
	//m_CFire2.BindingRes(&m_CResMagr);
	//m_CFire2.setParticleVel(20);
	//m_CFire2.setParticleLife(200);
	//m_CFire2.setParticleSizeBig(2.5f);
	//m_CFire2.setParticleDisturb(500);
	//m_CFire2.setParticleFrameColor(9,0x00ffffff);
	//m_CFire2.SetAlphaType(D3DBLEND_SRCALPHA,D3DBLEND_INVSRCALPHA);
	//m_CFire2.Init("萤火",10,"yinghuo.TGA",MESH_PLANERECT,D3DXVECTOR2(0.f,0.f),5,true);
	//m_CFire2.BindingRes(&m_CResMagr);
	//m_CFire2.setParticleVel(20);
	//m_CFire2.setParticleLife(20);
	//m_CFire2.setParticleSizeBig(0.1f);
	//m_CFire2.setParticleDisturb(300);
	//m_CFire2.setParticleColor(0xffff0000);
	//m_CFire2.setParticleFrameColor(4,0x00ffffff);
	//m_CFire2.SetAlphaType(D3DBLEND_SRCALPHA,D3DBLEND_ONE);

	//m_CFire.BindingRes(&m_CResMagr);

	//m_CRipple.Init("波纹",10,"bd.tga",MESH_PLANERECT,D3DXVECTOR2(0.f,0.f),4,false);
	//m_CRipple.BindingRes(&m_CResMagr);
	////m_CRipple.Play();

	//if(!m_CMagrPart.Create(PARTTYPE_LINK,"model",10,"bolt2.eff",D3DXVECTOR2(0,0),4,&m_CResMagr))
	//	MessageBox("m_CMagrPart","Create");
	//m_CMagrPart.InitParam(D3DXVECTOR3(-5.5f,10.5f,20.5f),D3DXVECTOR3(100,100,100),D3DXVECTOR3(0,0,0),300);
	//m_CMagrPart.setFrameSizeSame(2.0f);
	//m_CMagrPart.MoveTo(D3DXVECTOR3(0,0,0));
	//m_CMagrPart.Emission(-1,D3DXVECTOR3(0,4,0));


	//if(!m_CMagrPart2.Create(PARTTYPE_BLAST,"model",10,"波浪花.eff",D3DXVECTOR2(0,0),4,&m_CResMagr))
	//	MessageBox("m_CMagrPart","Create");
	//m_CMagrPart2.InitParam(D3DXVECTOR3(0,0,1),D3DXVECTOR3(0,0,0.03f),D3DXVECTOR3(0,0,-0.0002f),150,150);
	//m_CMagrPart2.setFrameSizeBig(1.0f);

	////m_CMagrPart2.MoveTo(D3DXVECTOR3(0,0,0));
	//m_CMagrPart2.Emission(0,D3DXVECTOR3(0,0,0));

	if(!m_pFont.CreateFont(&m_pRender,"新宋体",14))
		MessageBox("CreateFont","error");
	m_pFont.BindingRes(&m_CResMagr);
	//m_pFont.UseSoft(true);

	//m_CPartSys.Create(PARTTICLE_RIPPLE,"新雪",10,MESH_PLANERECT,"Ripple.tga",D3DXVECTOR3(0,0,0),3,false,&m_CResMagr);
	//m_CPartSys.InitParam();
	//m_CPartSys.MoveTo(&D3DXVECTOR3(0,0,1));
	//m_CPartSys.Play(0);

	//m_skinmehs.Create("mesh.x",m_pDev);
	//m_skinmehs.SaveBoneFile("temp\\mesh.bon");
	//m_skinmehs.SaveMeshFile("temp");

	//m_action.init(&m_skinmehs,"run.x");
	//m_action.SaveAniSet("temp\\mesh.act");
	m_bInit = true;

}

void  CEffectEditerView::FrameMove(DWORD dwTime)
{
	if(m_bLock)
		return;
		if(m_bBeginEdit)
		{
			if(m_bAdd)
				Edit(0.001f);
			else
				Edit(-0.001f);
			OnBnClickedButsetkeyframe();
		}
		static D3DXVECTOR3 spos(0.0f,0.0f,0);
		if(m_bBeginMoveShade)
		{
			if(m_bAddVS)
			{
				spos.x += 0.02f;
				spos.y += 0.02f;
			//spos.z += 0.01f;
			//m_CModelEff.RotatingYaw(m_CModelEff.GetRotaingYaw()+0.02f);

			}
			else
			{
				spos.x -= 0.02f;
				spos.y -= 0.02f;
			//spos.z += 0.01f;
			//m_CModelEff.RotatingYaw(m_CModelEff.GetRotaingYaw()-0.02f);

			}
			//m_CRipple.Walk();
		}
			//m_CRipple.Stop();

			//m_CShadeMap.MoveTo(spos,NULL);

			//m_CSnow.MoveTo(D3DXVECTOR3(spos.x,spos.y,10));
			//m_CFire2.MoveTo(D3DXVECTOR3(spos.x,spos.y,0));
			////m_CMagrPart.MoveTo(D3DXVECTOR3(spos.x,spos.y,3));

			////m_CRipple.SetTarget(D3DXVECTOR3(spos.x,spos.y,0),0);
			//m_CPartSys.MoveTo(&D3DXVECTOR3(spos.x,spos.y,0.1f));


			CDlgPartEdit::GetInstance()->MoveTo(&D3DXVECTOR3(spos.x,spos.y,0.0f));
	D3DXMATRIX t_matview = 
	theApp.m_cCamera.GetViewMatrix();
	D3DXMATRIX t_matProj = 
	theApp.m_cCamera.GetProjMatrix();

	m_MatViewProj = t_matview * t_matProj;

	m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformView((lwMatrix44*)&t_matview);
	//m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformProj((lwMatrix44*)&t_matProj);

	m_CResMagr.FrameMove(dwTime);

	if(m_CModelEff.IsPlaying())
	{
		m_CModelEff.FrameMove(dwTime);
	}
		//m_CShadeMap.FrameMove(dwTime);

		//m_CSnow.FrameMove(dwTime);
		//m_CFire.FrameMove(dwTime);
		//m_CFire2.FrameMove(dwTime);

		//m_CRipple.FrameMove(dwTime);

		//m_CMagrPart.SetTarget(D3DXVECTOR3(0,5.2f,3.9));
		//m_CMagrPart.FrameMove(dwTime);
		//m_CMagrPart2.FrameMove(dwTime);

		//m_CPartSys.FrameMove(dwTime);

	
	CSkinMeshDlg::GetInstance()->FrameMove();
	
	lwMatrix44 mat,mat2;
	D3DXMatrixIdentity((D3DXMATRIX*)&mat);
	D3DXMatrixIdentity((D3DXMATRIX*)&mat2);

	m_ptestModel->SetMatrix(&mat); 
	m_ptestModel->FrameMove();

	if(CSkinMeshDlg::GetInstance()->IsBindingBone())
	{

		if(CSkinMeshDlg::GetInstance()->IsBindingItemCha())
		{
			CSkinMeshDlg::GetInstance()->GetCurDumyMatrix(&mat2);
			m_ptestModel->SetMatrix(&mat2);
		}
		m_ptestModel->FrameMove();

		if(CSkinMeshDlg::GetInstance()->IsBindingCha())
		{
			CSkinMeshDlg::GetInstance()->GetCurDumyMatrix(&mat);
		}else if(CSkinMeshDlg::GetInstance()->IsBindingItem())
		{
			CSkinMeshDlg::GetInstance()->GetCurItemDumyMatrix(&mat);
		}

		CDlgPartEdit::GetInstance()->BindingBone(&mat);

		//if(CSkinMeshDlg::GetInstance()->IsBindingItem())
		//{
		//	m_ptestModel->GetObjDummyRunTimeMatrix(&mat,1);
		//}
	}

	CDlgPartEdit::GetInstance()->FrameMove(dwTime);
	
}

void  CEffectEditerView::RenderScene()
{
	if(!m_pDev)
		return;

	if(m_bLock)
		return;
	m_pRender.SetRenderState(D3DRS_ZENABLE,D3DZB_TRUE);
	m_pRender.SetRenderState(D3DRS_ZWRITEENABLE,D3DZB_TRUE);

	m_pRender.SetRenderStateForced(D3DRS_FILLMODE ,D3DFILL_SOLID);

	m_pRender.SetVertexShader(D3DFVF_XYZ);


	//m_pDev->SetTextureStageStateForced(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE); 
	//m_pDev->SetTextureStageStateForced(0, D3DTSS_ALPHAARG2, D3DTA_DIFFUSE);
	//m_pDev->SetTextureStageStateForced(0, D3DTSS_ALPHAOP,   D3DTOP_MODULATE);
	//m_pDev->SetTextureStageStateForced(0, D3DTSS_COLORARG1, D3DTA_TEXTURE); 
	//m_pDev->SetTextureStageStateForced(0, D3DTSS_COLORARG2, D3DTA_DIFFUSE);
	//m_pDev->SetTextureStageStateForced(0, D3DTSS_COLOROP,   D3DTOP_MODULATE);  

	//D3DMATERIAL8 material;
	//D3DUtil_InitMaterial( material, 1.0f, 1.0f, 1.0f, 1.0f);
	//material.Ambient.r = 0.55f;
	//material.Ambient.g = 0.55f;
	//material.Ambient.b = 0.55f;
	//material.Ambient.a = 1.0f;


	m_CResMagr.RestoreEffect();


	//D3DXMATRIX t_matview = 
	//	theApp.m_cCamera.GetViewMatrix();
	//D3DXMATRIX t_matProj = 
	//	theApp.m_cCamera.GetProjMatrix();

	//m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformView((lwMatrix44*)&t_matview);
	//m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformProj((lwMatrix44*)&t_matProj);
	CSkinMeshDlg::GetInstance()->Render();

	m_CResMagr.RestoreEffect();
	//m_ptestModel->SetMaterial(&material);

	m_pRender.SetRenderState(D3DRS_LIGHTING,D3DZB_FALSE);

	m_ptestModel->Render();
	m_CResMagr.RestoreEffect();

	//m_CResMagr.BeginEffect(1);
	//m_pDev->SetRenderState( D3DRS_LIGHTING, TRUE );


	//m_CResMagr.EndEffect();
	//!在这里加入渲染场景的代码。
	//m_CSnow.Render();

	//m_MatViewProj = t_matview * t_matProj;

	//m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformView((lwMatrix44*)&t_matview);
	//m_CResMagr.m_pSysGraphics->GetDeviceObject()->SetTransformProj((lwMatrix44*)&t_matProj);

	//m_CResMagr.FrameMove(dwTime);

	CDlgPartEdit::GetInstance()->Render();
	m_CResMagr.Render();

	m_CResMagr.RestoreEffect();

	if(CDlgPartEdit::GetInstance()->m_bPlaying)
		return;

	if(m_CModelEff.IsPlaying())
	{
		//	D3DXMATRIX t_matview = 
		//theApp.m_cCamera.GetViewMatrix();
		//D3DXMATRIX t_matProj = 
		//theApp.m_cCamera.GetProjMatrix();
		////
		//m_CResMagr.BeginEffect(0);
		m_CModelEff.Render();
		//m_CResMagr.EndEffect();

		//m_CResMagr.BeginEffect(2);
		//m_CResMagr.EndEffect();
		//m_CResMagr.RestoreEffect();

	}
	else
	{
		if(!m_bEditModel)
		{
			m_CResMagr.BeginEffect(1);
			m_CModelEff.ShowCurFrame(m_iCurSubEff, m_iCurFrame);
			m_CResMagr.EndEffect();
		}
		else
		{
			m_CResMagr.BeginEffect(1);
			m_CModelEff.ShowTempFrame(m_iCurSubEff,m_SVerScale,m_SVerRotat,m_SVerTranslate,
				m_SColor,m_vecCoord,m_lpTex);
			m_CResMagr.EndEffect();
		}
		//

	}


	m_CResMagr.RestoreEffect();
	//m_CMagrPart.Render();
	//m_CMagrPart2.Render();

	//m_pFont.DrawText("LSFOSFJ4ljldf我是一大家庭一杳lgggj是了发是",0,0,0xffffffff, 1.0f);
	//m_pFont.Draw3DText("ffffff   王凯",D3DXVECTOR3(0,5,2),0xff00ff00,1.0f);

	m_CResMagr.RestoreEffect();

	//SIZE size;
	//m_pFont.GetTextSize("djfld",&size);

	//m_CPartSys.Render();

}

void CEffectEditerView::OnDestroy()
{
	CFormView::OnDestroy();

	m_CResMagr.ReleaseTotalRes();

	m_CModelEff.ReleaseAll();
	m_CEffect.ReleaseAll();


	CDlgEditTexture::GetInstance()->DestoryDlg();
	CDlgEditCoord::GetInstance()->DestoryDlg();
	CDlgPartEdit::GetInstance()->DestoryDlg();
	CDlgModelParam::GetInstance()->DestoryDlg();
	CSkinMeshDlg::GetInstance()->DestoryDlg();

}

/************************************************************************/
/*                                                                      */
/************************************************************************/
void CEffectEditerView::OnMenuOption()
{
	// TODO: Add your command handler code here
	m_CDlgOption.DoModal();

}

void CEffectEditerView::OnFileNew()
{

	if(m_CDlgNewEffect.DoModal() == IDOK)
	{
		s_string strname = (char*)(LPCSTR)m_CDlgNewEffect.m_CstrName;
		
		I_Effect* pCurEff;
		pCurEff = m_CResMagr.AddEffectToMgr(strname);
		int isel;// = m_ClistEffLib.AddString(strname.c_str());
		isel = m_CComboEffLib.AddString(strname.c_str());


		pCurEff->Init(&m_pRender, (EFFECT_TYPE)(m_CDlgNewEffect.m_itype + 1),
			m_CDlgNewEffect.m_iFrameCount,(bool)m_CDlgNewEffect.m_bBillBoard);

		pCurEff->setEffectName(strname);
		if(pCurEff->getType() == EFFECT_FRAMETEX)
		{
			pCurEff->AddFrameTex(m_CResMagr.GetTotalTexName()[0]);
		}else
			pCurEff->SetTextureName(m_CResMagr.GetTotalTexName()[0]);
		s_string strmesh = MESH_RECT;
		pCurEff->setEffectModelName(strmesh);

  		pCurEff->BoundingRes(&m_CResMagr,(char*)(LPCSTR)m_CDlgNewEffect.m_CstrName);
		pCurEff->BindingResInit(&m_CResMagr);

		if(m_CDlgNewEffect.m_bBillBoard)
		{
			pCurEff->setBillBoardMatrix(m_CResMagr.GetBBoardMat());
		}


		m_CModelEff.Stop();
		m_CModelEff.BindingEffect(m_CResMagr.GetEffectByID(isel));
		m_CModelEff.BindingRes(&m_CResMagr);

		//_DbgOut( "ffDDDD", m_CDlgNewEffect.m_itype, S_OK, "" );

		//m_ClistEffLib.SetCurSel(isel);
		m_CComboEffLib.SetCurSel(isel);
		m_ClistSubEffLib.ResetContent();

		for(int n = 0; n < m_CResMagr.GetSubEffectNum(isel); n++)
			m_ClistSubEffLib.AddString(m_CResMagr.GetSubEffectByID(isel,n)->getEffectName().c_str());

		m_ClistSubEffLib.SetCurSel(0);
		m_iCurSubEff = 0;

		m_iCurFrame = 0;
		ResetTempParam(m_iCurSubEff,m_iCurFrame);

		//OnLbnSelchangeListEfflib();
		OnCbnSelchangeComboSelEffLib();
	}
}

void CEffectEditerView::OnFileSave()
{
	char pszDir[256];
	::GetCurrentDirectory(256,pszDir);

	CString str = _T("文件(*.EFF)|*.EFF|");
	CFileDialog cfd(FALSE,NULL,NULL,OFN_HIDEREADONLY | 
		OFN_OVERWRITEPROMPT, str,NULL);
	cfd.m_ofn.lpstrInitialDir = pszDir;
	if( cfd.DoModal() == IDCANCEL )
	{
		return;
	}	
	char pszName[256];
	sprintf(pszName,"%s",(char*)(LPCSTR)cfd.GetPathName());
	if(!strstr(pszName,".eff"))
		sprintf(pszName,"%s.eff",(char*)(LPCSTR)cfd.GetPathName());
	else
		sprintf(pszName,"%s",(char*)(LPCSTR)cfd.GetPathName());

	m_CModelEff.SaveToFile(pszName);
	::SetCurrentDirectory(pszDir);
}

void CEffectEditerView::OnFileOpen()
{
	CString str = _T("文件(*.EFF)|*.EFF|");
	CFileDialog cfd(TRUE,NULL,NULL,OFN_HIDEREADONLY | 
		OFN_OVERWRITEPROMPT, str,NULL);
	if( cfd.DoModal() == IDCANCEL )
	{
		return;
	}	
	//m_bLock = true;
	//m_CEffect.LoadFromFile((char*)(LPCSTR)cfd.GetPathName());
	//m_CEffect.BoundingRes(&m_CResMagr);
	//m_CEffect.Reset();
	//m_bLock = false;
}

void CEffectEditerView::OnBnClickedCheckplay()
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	
	m_CModelEff.Reset();
	m_bPlaying ? m_CModelEff.Play(m_bLoop ? 0 : 1) : m_CModelEff.Stop();
}


void CEffectEditerView::OnNMCustomdrawSliderframe(NMHDR *pNMHDR, LRESULT *pResult)
{
	LPNMCUSTOMDRAW pNMCD = reinterpret_cast<LPNMCUSTOMDRAW>(pNMHDR);

	if(m_bInit)
	{
		//UpdateData(TRUE);

		//m_CModelEff.Stop();

		m_iCurFrame = m_CSliderFrame.GetPos();


		//if(m_bEditModel)
		ResetTempParam(m_iCurSubEff,m_iCurFrame);
		UpdateInfo();

		m_CSpinFrameTime.SetPos(m_CModelEff.GetSubEffectFrameTime(m_iCurSubEff,m_iCurFrame) * 100);

		//m_CButSetKey.SetFocus();
		if(m_CModelEff.m_vecEffect.size() > 0)
		{
			if(m_CModelEff.m_vecEffect[m_iCurSubEff]->IsChangeably())
			{
				//CDlgModelParam::GetInstance()->ShowWindow(SW_SHOW);
				CDlgModelParam::GetInstance()->SetCurEffect(m_CModelEff.m_vecEffect[m_iCurSubEff],m_iCurFrame);
			}
		}
	}

	*pResult = 0;
}

//void CEffectEditerView::OnLbnSelchangeListEfflib()
//{
//	// TODO: Add your control notification handler code here
//	int t_iSel;// = m_ClistEffLib.GetCurSel();
//	t_iSel = m_CComboEffLib.GetCurSel();
//	m_bPlaying = FALSE;
//	UpdateData(FALSE);
//
//	//std::vector<I_Effect> pCurEff = m_CResMagr.GetEffectByID(t_iSel);
//	m_CModelEff.Stop();
//	m_CModelEff.BindingEffect(m_CResMagr.GetEffectByID(t_iSel));
//	m_CModelEff.BindingRes(&m_CResMagr);
//
//	m_ClistSubEffLib.ResetContent();
//
//	for(int n = 0; n < m_CResMagr.GetSubEffectNum(t_iSel); n++)
//		m_ClistSubEffLib.AddString(m_CResMagr.GetSubEffectByID(t_iSel,n)->getEffectName().c_str());
//	m_ClistSubEffLib.SetCurSel(0);
//	m_iCurSubEff = 0;
//	
//	//得到组合效果的每一个子效果相对于原点的距离
//	m_vecCompDist.clear();
//	m_vecCompScale.clear();
//	m_vecCompRotat.clear();
//	m_vecCompDist.resize(m_CModelEff.m_iEffNum);
//	m_vecCompScale.resize(m_CModelEff.m_iEffNum);
//	m_vecCompRotat.resize(m_CModelEff.m_iEffNum);
//	for( n = 0; n < m_CModelEff.m_iEffNum;n++)
//	{
//		m_vecCompDist[n] = m_CModelEff.m_vecEffect[n]->getFramePos(0);
//		m_vecCompScale[n] = m_CModelEff.m_vecEffect[n]->getFrameSize(0);
//		m_vecCompRotat[n] = m_CModelEff.m_vecEffect[n]->getFrameAngle(0);
//	}
//	m_bCycRotating = m_CModelEff.m_bRotating;
//	m_fCycVecl	 = m_CModelEff.m_fRotaVel;
//
//	UpdateData(FALSE);
//	//_DbgOut( "fGetCountf", m_CResMagr.GetSubEffectNum(t_iSel), S_OK, "" );
//	//！因为改变了模型坐标。重新创建模型
//	//m_CResMagr.UpdateTotalModel();
//}

void CEffectEditerView::OnLbnSelchangeListSubefflib()
{
	m_iCurSubEff = m_ClistSubEffLib.GetCurSel();
	m_CSliderFrame.SetRange(0,m_CModelEff.GetSubEffectFrameCount(m_iCurSubEff)-1);
	m_CSliderFrame.SetPos(0);
	m_iCurFrame = 0;

	ResetTempParam(m_iCurSubEff,m_iCurFrame);


	m_CSpinFrameTime.SetPos(m_CModelEff.GetSubEffectFrameTime(m_iCurSubEff,m_iCurFrame) * 100);

	UpdateInfo();

	CDlgModelParam::GetInstance()->SetCurEffect(m_CModelEff.m_vecEffect[m_iCurSubEff],m_iCurFrame);

	s_string strname = m_CModelEff.m_vecEffect[m_iCurSubEff]->GetTextureName();
	int nid = m_CResMagr.GetTextureID(strname);
	m_CComboTextureLib.SetCurSel(nid);


	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_MODELTEXTURE/* &&
		m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_BILLBOARD*/)
	{
		CDlgEditTexture::GetInstance()->ShowWindow( SW_HIDE);
	}
	else
		CDlgEditTexture::GetInstance()->SetCurEffect(m_CModelEff.m_vecEffect[m_iCurSubEff]);
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_MODELUV /*&&
		m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_BILLBOARD*/)
	{
		CDlgEditCoord::GetInstance()->ShowWindow( SW_HIDE);
	}
	else
		CDlgEditCoord::GetInstance()->UpdateDlgInfo(m_CModelEff.m_vecEffect[m_iCurSubEff]);

}
/************************************************************************/
/*控制编辑哪方面*/
/************************************************************************/
void CEffectEditerView::OnBnClickedButeditmodel()
{
	m_bEditModel = !m_bEditModel;
	m_bEditCoord = FALSE;
	m_bEditTexture = FALSE;
	UpdateData(FALSE);

	ResetTempParam(m_iCurSubEff,m_iCurFrame);
	//m_CButSetKey.SetFocus();
	CDlgEditTexture::GetInstance()->ShowWindow( m_bEditTexture ? SW_SHOW : SW_HIDE);
	
	CDlgEditCoord::GetInstance()->ShowWindow( m_bEditCoord ? SW_SHOW : SW_HIDE);
}

void CEffectEditerView::OnBnClickedButeditcoord()
{
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_MODELUV/* &&
		m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_BILLBOARD*/)
		return;
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->IsModelRect()||
		m_CModelEff.m_vecEffect[m_iCurSubEff]->IsModelPlaneRect())
	{
		m_bEditModel = FALSE;
		m_bEditCoord = !m_bEditCoord;
		m_bEditTexture = FALSE;
		UpdateData(FALSE);
		//m_CButSetKey.SetFocus();
		CDlgEditTexture::GetInstance()->ShowWindow( m_bEditTexture ? SW_SHOW : SW_HIDE);

		CDlgEditCoord::GetInstance()->ShowWindow( m_bEditCoord ? SW_SHOW : SW_HIDE);
		CDlgEditCoord::GetInstance()->UpdateDlgInfo(m_CModelEff.m_vecEffect[m_iCurSubEff]);
	}
}

void CEffectEditerView::OnBnClickedButedittexture()
{
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_MODELTEXTURE /*&&
		*/)
	{
		if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_FRAMETEX)
			return;
	}
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() != EFFECT_FRAMETEX)
	{
		if(m_CModelEff.m_vecEffect[m_iCurSubEff]->IsModelRect()||
			m_CModelEff.m_vecEffect[m_iCurSubEff]->IsModelPlaneRect())
		{

			m_bEditModel = FALSE;
			m_bEditCoord = FALSE;
			m_bEditTexture = !m_bEditTexture;
			UpdateData(FALSE);

			CDlgEditTexture::GetInstance()->ShowWindow( m_bEditTexture ? SW_SHOW : SW_HIDE);

			CDlgEditTexture::GetInstance()->SetCurEffect(m_CModelEff.m_vecEffect[m_iCurSubEff]);

			CDlgEditCoord::GetInstance()->ShowWindow( m_bEditCoord ? SW_SHOW : SW_HIDE);
		}
	}else
	{
		m_bEditModel = FALSE;
		m_bEditCoord = FALSE;
		m_bEditTexture = !m_bEditTexture;
		UpdateData(FALSE);

		CDlgEditTexture::GetInstance()->ShowWindow( m_bEditTexture ? SW_SHOW : SW_HIDE);

		CDlgEditTexture::GetInstance()->SetCurEffect(m_CModelEff.m_vecEffect[m_iCurSubEff]);

		CDlgEditCoord::GetInstance()->ShowWindow( m_bEditCoord ? SW_SHOW : SW_HIDE);

	}
	//m_CButSetKey.SetFocus();
}
/************************************************************************/
/*控制编辑哪个操作*/
/************************************************************************/
void CEffectEditerView::OnBnClickedButscale()
{
	m_bEditScale = !m_bEditScale;
	m_bEditRotat = FALSE;
	m_bEditTranslate = FALSE;
	UpdateData(FALSE);
	//m_CButSetKey.SetFocus();
}

void CEffectEditerView::OnBnClickedButrotation()
{
	m_bEditScale = FALSE;
	m_bEditRotat = !m_bEditRotat;
	m_bEditTranslate = FALSE;
	UpdateData(FALSE);
	//m_CButSetKey.SetFocus();
}

void CEffectEditerView::OnBnClickedButtranslate()
{
	m_bEditScale = FALSE;
	m_bEditRotat = FALSE;
	m_bEditTranslate = !m_bEditTranslate;
	UpdateData(FALSE);
	//m_CButSetKey.SetFocus();
}
/************************************************************************/
/*控制编辑哪个轴*/
/************************************************************************/

void CEffectEditerView::OnBnClickedCheckx()
{
	UpdateData(TRUE);
	//m_CButSetKey.SetFocus();
}

void CEffectEditerView::OnBnClickedChecky()
{
	UpdateData(TRUE);
	//m_CButSetKey.SetFocus();
}

void CEffectEditerView::OnBnClickedCheckz()
{
	UpdateData(TRUE);
	//m_CButSetKey.SetFocus();
}
/************************************************************************/
/* 使用羝对话框来选择颜色*/
/************************************************************************/
void CEffectEditerView::OnBnClickedButselcolor()
{
	if(m_bEditModel)
	{
		CColorDialog  cd;
		cd.m_cc.Flags |= CC_RGBINIT | CC_ANYCOLOR;
		//cd.m_cc.lpCustColors
		if(cd.DoModal() == IDOK)
		{
			m_dwSelColor = cd.GetColor();
			int nColor[4];
			nColor[0] = 255;
			nColor[3] = ((m_dwSelColor&0x00ff0000)>>16);
			nColor[2] = ((m_dwSelColor&0x0000ff00)>>8);
			nColor[1] = ((m_dwSelColor&0x000000ff)>>0);

			m_SColor= D3DCOLOR_ARGB(nColor[0],nColor[1],nColor[2],nColor[3] );
			m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameColor(m_iCurFrame,m_SColor);
			m_CModelEff.m_vecEffect[m_iCurSubEff]->IsSame();
		}
	}
}
/************************************************************************/
/* 改变透明度*/
/************************************************************************/
void CEffectEditerView::OnNMCustomdrawSlider2(NMHDR *pNMHDR, LRESULT *pResult)
{
	LPNMCUSTOMDRAW pNMCD = reinterpret_cast<LPNMCUSTOMDRAW>(pNMHDR);
	if(m_bEditModel)
	{
		UpdateData(TRUE);
		int nColor[4];
		nColor[0] = m_iSliderAlpha;
		nColor[3] = ((m_dwSelColor&0x00ff0000)>>16);
		nColor[2] = ((m_dwSelColor&0x0000ff00)>>8);
		nColor[1] = ((m_dwSelColor&0x000000ff)>>0);

		m_SColor= D3DCOLOR_ARGB(nColor[0],nColor[1],nColor[2],nColor[3] );
		m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameColor(m_iCurFrame,m_SColor);
		m_CModelEff.m_vecEffect[m_iCurSubEff]->IsSame();
	}
	*pResult = 0;
}
/************************************************************************/
/* 改变帧时间*/
/************************************************************************/
void CEffectEditerView::OnDeltaposSpin1(NMHDR *pNMHDR, LRESULT *pResult)
{
	LPNMUPDOWN pNMUpDown = reinterpret_cast<LPNMUPDOWN>(pNMHDR);
	
	if(m_bEditModel)
	{
		//UpdateData(TRUE);
		m_fFrameTime = (float)(pNMUpDown->iPos+ pNMUpDown->iDelta) / 100;
		m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameTime(m_iCurFrame, m_fFrameTime);
	}
	*pResult = 0;
}
void CEffectEditerView::OnEnChangeEdit2()
{
	//if(m_bEditModel)
	//{
	//	UpdateData(TRUE);
	//	m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameTime(m_iCurFrame, m_EditFrameTime / 100);
	//}
}
void	CEffectEditerView::UpdateInfo()
{
	if(m_CModelEff.m_iEffNum <=0)
		return;

	m_strModelName  = m_CModelEff.m_vecEffect[m_iCurSubEff]->getEffectModelName().c_str();
	m_fStrFrameTime = m_CModelEff.m_vecEffect[m_iCurSubEff]->getFrameTime(m_iCurFrame);
	m_fScaleX       = m_SVerScale.x;
	m_fScaleY       = m_SVerScale.y;
	m_fScaleZ       = m_SVerScale.z;

	m_fRotatX       = m_SVerRotat.x;
	m_fRotatY       = m_SVerRotat.y;
	m_fRotatZ       = m_SVerRotat.z;

	m_fTransX       = m_SVerTranslate.x;
	m_fTransY       = m_SVerTranslate.y;
	m_fTransZ       = m_SVerTranslate.z;

	m_iColorR		= m_SColor.r * 255;
	m_iColorG		= m_SColor.g * 255;
	m_iColorB		= m_SColor.b * 255;
	m_iColorA		= m_SColor.a * 255;
	m_istrFrameCount = m_CModelEff.GetSubEffectFrameCount(m_iCurSubEff);
	m_fstrFrameLength = 0;
	for(int n = 0; n < m_istrFrameCount; n++)
		m_fstrFrameLength += m_CModelEff.m_vecEffect[m_iCurSubEff]->getFrameTime(n);

	m_bIsBBoard = m_CModelEff.m_vecEffect[m_iCurSubEff]->IsBillBoard();

	m_bBoardRotating = m_CModelEff.m_vecEffect[m_iCurSubEff]->IsRotaBoard();
	
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() == EFFECT_FRAMETEX)
		m_strType = ENUMTOSTR(贴图帧);
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() == EFFECT_MODELUV)
		m_strType = ENUMTOSTR(UV动画);
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() == EFFECT_MODELTEXTURE)
		m_strType = ENUMTOSTR(贴图动画);
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->getType() == EFFECT_MODEL)
		m_strType = ENUMTOSTR(简单模型动画);

	int isel;
	if(	!m_CModelEff.m_vecEffect[m_iCurSubEff]->IsAlpah())
		isel = 6;
	else
	{
		if( m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeSrc() == D3DBLEND_SRCALPHA &&
			m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeDest() == D3DBLEND_INVSRCALPHA)
			isel = 0;
		if( m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeSrc() == D3DBLEND_SRCCOLOR &&
			m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeDest() == D3DBLEND_INVSRCCOLOR)
			isel = 1;

		if( m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeSrc() == D3DBLEND_SRCALPHA &&
			m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeDest() == D3DBLEND_DESTALPHA)
			isel = 2;
		if( m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeSrc() == D3DBLEND_SRCALPHA &&
			m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeDest() == D3DBLEND_ONE)
			isel = 3;

		if( m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeSrc() == D3DBLEND_INVSRCALPHA &&
			m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeDest() == D3DBLEND_INVSRCALPHA)
			isel = 4;
		if( m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeSrc() == D3DBLEND_DESTALPHA &&
			m_CModelEff.m_vecEffect[m_iCurSubEff]->GetAlphaTypeDest() == D3DBLEND_INVSRCALPHA)
			isel = 5;
	}
	m_CCombAlphaType.SetCurSel(isel);

	m_iFrameShow = m_iCurFrame;

	m_fSinglVel = m_CModelEff.m_vecEffect[m_iCurSubEff]->GetRotaLoop()->w;
	m_bRotaSingle = m_CModelEff.m_vecEffect[m_iCurSubEff]->IsRotaLoop();

	UpdateData(FALSE);
}

/************************************************************************/
/* 编辑*/
/************************************************************************/
void	CEffectEditerView::Edit(float fValue)
{
	if(!m_bEditModel)
		return;
	if (!m_bEditScale && !m_bEditRotat && !m_bEditTranslate)
		return;
	if(m_bEditScale)
	{
		if(m_bEditX)
			m_SVerScale.x += fValue;
		if(m_bEditY)
			m_SVerScale.y += fValue;
		if(m_bEditZ)
			m_SVerScale.z += fValue;
	}
	if (m_bEditRotat)
	{
		D3DXMATRIX t_mat;
		if(m_bEditX)
		{
			m_SVerRotat.x += fValue;
		}
		if(m_bEditY)
		{
			m_SVerRotat.y += fValue;
		}
		if(m_bEditZ)
		{
			m_SVerRotat.z += fValue;
		}
	}
	if(m_bEditTranslate)
	{
		if(m_bEditX)
			m_SVerTranslate.x += fValue;
		if(m_bEditY)
			m_SVerTranslate.y += fValue;
		if(m_bEditZ)
			m_SVerTranslate.z += fValue;
	}
	UpdateInfo();
}
/************************************************************************/
/* 得到当前帧的变化参数*/
/************************************************************************/
void	CEffectEditerView::ResetTempParam(int iCurSubEff,int iCurFrame)
{
	if(m_CModelEff.m_iEffNum <=0)
		return;
	m_fFrameTime = m_CModelEff.m_vecEffect[iCurSubEff]->getFrameTime(iCurFrame);
	m_EditFrameTime = m_fFrameTime * 255;

	m_SVerScale = m_CModelEff.m_vecEffect[iCurSubEff]->getFrameSize(iCurFrame);
	
	m_SVerRotat = m_CModelEff.m_vecEffect[iCurSubEff]->getFrameAngle(iCurFrame);

	m_SVerTranslate = m_CModelEff.m_vecEffect[iCurSubEff]->getFramePos(iCurFrame);
	m_SColor = m_CModelEff.m_vecEffect[iCurSubEff]->getFrameColor(iCurFrame);
	//DWORD dwcolor = (DWORD)m_SColor;
	//m_iSliderAlpha = ((dwcolor&0xff000000)>>24);

	m_CModelEff.m_vecEffect[iCurSubEff]->getFrameCoord(m_vecCoord, 0);
	//m_lpTex = m_CModelEff.m_vecEffect[iCurSubEff]->getFrameTexture(0);

	//UpdateData(FALSE);
}

/************************************************************************/
/* 设置关键帧*/
/************************************************************************/
void CEffectEditerView::OnBnClickedButsetkeyframe()
{
	if(m_bEditModel)
	{
		if (!m_bEditScale && !m_bEditRotat && !m_bEditTranslate)
			return;
		for(int n = m_iCurFrame; n < m_CModelEff.m_vecEffect[m_iCurSubEff]->getFrameCount(); n++)
		{
			if(m_bEditScale)
			{
				m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameSize(n,m_SVerScale);
			}
			if (m_bEditRotat)
			{
				m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameAngle(n,m_SVerRotat);
			}
			if(m_bEditTranslate)
			{
				m_CModelEff.m_vecEffect[m_iCurSubEff]->setFramePos(n,m_SVerTranslate);
			}
				
		//int nColor[4];
		//nColor[0] = m_iSliderAlpha;
		//nColor[3] = ((m_dwSelColor&0x00ff0000)>>16);
		//nColor[2] = ((m_dwSelColor&0x0000ff00)>>8);
		//nColor[1] = ((m_dwSelColor&0x000000ff)>>0);

		//m_SColor= D3DCOLOR_ARGB(nColor[0],nColor[1],nColor[2],nColor[3] );
		//m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameColor(m_iCurFrame,m_SColor);
		}
		m_CModelEff.m_vecEffect[m_iCurSubEff]->IsSame();
	}
}




void CEffectEditerView::OnBnClickedButChangeModel()
{
	//！因为改变了模型坐标。重新创建模型
	//m_CResMagr.UpdateTotalModel();

	int t_iSel;// = m_ClistModelLib.GetCurSel();
	t_iSel = m_CComboModelLib.GetCurSel();

	m_CModelEff.Stop();

	std::vector<I_Effect>& rEffects = m_CResMagr.GetEffectByID(m_CComboEffLib.GetCurSel());
	for (int i(0); i<rEffects.size(); i++)
		rEffects[i].BoundingRes(&m_CResMagr);
	m_CModelEff.BindingEffect(rEffects);

	m_CModelEff.m_vecEffect[m_iCurSubEff]->ChangeModel(m_CResMagr.GetMeshByID(t_iSel),&m_CResMagr);
	//pEffect = &(m_CResMagr.GetEffectByID(m_CComboEffLib.GetCurSel())[0]);
	m_CModelEff.BindingRes(&m_CResMagr);
}



void CEffectEditerView::OnBnClickedButApplyTex()
{
	//int t_iSel = m_CListboxTexLib.GetCurSel();
	CString str;
	s_string strname ;
	//m_CListboxTexLib.GetText(m_CListboxTexLib.GetCurSel(),str);
	m_CComboTextureLib.GetLBText(m_CComboTextureLib.GetCurSel(),str);
	strname = (char*)(LPCSTR)str;
	m_CModelEff.m_vecEffect[m_iCurSubEff]->ChangeTexture(strname);

	m_CModelEff.m_vecEffect[m_iCurSubEff]->BoundingRes(&m_CResMagr);
}

void CEffectEditerView::OnBnClickedButAddSubEffTolib()
{
	CString strname;
	m_ClistSubEffLib.GetText(m_iCurSubEff, strname);
	m_CListboxTempLib.AddString(strname);
	m_vecEffect.push_back(*m_CModelEff.m_vecEffect[m_iCurSubEff]);
	m_vecEffect[m_vecEffect.size()-1].BoundingRes(&m_CResMagr);
	//if(IsTobMesh(m_vecEffect[m_vecEffect.size()-1].m_pCModel->m_strName))
	//{
	//	m_vecEffect[m_vecEffect.size()-1].ChangeModel(m_CModelEff.m_vecEffect[m_iCurSubEff]->m_pCModel,&m_CResMagr);
	//}
}

void CEffectEditerView::OnBnClickedButUniteEff()
{
	m_CResMagr.AddUniteEffectToMgr(m_vecEffect);

	int id = m_CComboEffLib.GetCurSel();
	if(id >= 0)
	{
		m_CModelEff.Stop();
		m_CModelEff.BindingEffect(m_CResMagr.GetEffectByID(id));

	}
	//m_ClistEffLib.AddString(m_vecEffect[0].getEffectName().c_str());
	m_CComboEffLib.AddString(m_vecEffect[0].getEffectName().c_str());


	m_vecEffect.clear();
	m_CListboxTempLib.ResetContent();
}



void CEffectEditerView::OnCbnSelchangeComboAlphaType()
{
	int isel = m_CCombAlphaType.GetCurSel();
	if( isel == 0)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetAlphaType( D3DBLEND_SRCALPHA,D3DBLEND_INVSRCALPHA ); 
	if( isel == 1)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetAlphaType( D3DBLEND_SRCCOLOR,D3DBLEND_INVSRCCOLOR );

	if( isel == 2)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetAlphaType( D3DBLEND_SRCALPHA,D3DBLEND_DESTALPHA ); 
	if( isel == 3)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetAlphaType( D3DBLEND_SRCALPHA,D3DBLEND_ONE ); 

	if( isel == 4)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetAlphaType( D3DBLEND_INVSRCALPHA,D3DBLEND_INVSRCALPHA );
	if( isel == 5)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetAlphaType( D3DBLEND_DESTALPHA,D3DBLEND_INVSRCALPHA );
	if( isel == 6)
		m_CModelEff.m_vecEffect[m_iCurSubEff]->EnableAlpha(FALSE);
	else
		m_CModelEff.m_vecEffect[m_iCurSubEff]->EnableAlpha(TRUE);

}

void CEffectEditerView::OnSaveall()
{
	char szName[128];
	for(int n = 0; n < m_CResMagr.GetEffectNum(); n++)
	{
		m_CModelEff.BindingEffect(m_CResMagr.GetEffectByID(n));
		sprintf(szName, "%s\\%s",m_CResMagr.GetEffectSavePath(),m_CResMagr.GetTotalEffectName()[n].c_str());
		m_CModelEff.SaveToFile(szName);
	}

}

void	CEffectEditerView::SetEffectParam(int idx, int xyz)
{		
		if (!m_bEditScale && !m_bEditRotat && !m_bEditTranslate)
			return;
		for(int n = m_iCurFrame; n < m_CModelEff.m_vecEffect[idx]->getFrameCount(); n++)
		{
			if(m_bEditScale)
			{
				if(m_bEditX)
					if(xyz == 0)
						m_SVerScale.x = m_fInputX;
				if(m_bEditY)
					if(xyz == 1)
						m_SVerScale.y = m_fInputY;
				if(m_bEditZ)
					if(xyz == 2)
						m_SVerScale.z = m_fInputZ;

				m_CModelEff.m_vecEffect[idx]->setFrameSize(n,m_SVerScale);
				m_vecCompScale[idx] = m_SVerScale;
			}
			if (m_bEditRotat)
			{
				if(m_bEditX)
					if(xyz == 0)
						m_SVerRotat.x = m_fInputX * G_fDEG2RAD;
				if(m_bEditY)
					if(xyz == 1)
						m_SVerRotat.y = m_fInputY * G_fDEG2RAD;
				if(m_bEditZ)
					if(xyz == 2)
						m_SVerRotat.z = m_fInputZ * G_fDEG2RAD;

				m_CModelEff.m_vecEffect[idx]->setFrameAngle(n,m_SVerRotat);
				m_vecCompRotat[idx] = m_SVerRotat;
			}
			if(m_bEditTranslate)
			{
				if(m_bEditX)
					if(xyz == 0)
						m_SVerTranslate.x = m_fInputX;
				if(m_bEditY)
					if(xyz == 1)
						m_SVerTranslate.y = m_fInputY;
				if(m_bEditZ)
					if(xyz == 2)
						m_SVerTranslate.z = m_fInputZ;

				m_CModelEff.m_vecEffect[idx]->setFramePos(n,m_SVerTranslate);
				m_vecCompDist[idx] = m_SVerTranslate;
			}
		}
		m_CModelEff.m_vecEffect[idx]->IsSame();
}

void	CEffectEditerView::SetCombEffectParam(int idx, int xyz)
{
		if (!m_bEditScale && !m_bEditRotat && !m_bEditTranslate)
			return;
		for(int n = m_iCurFrame; n < m_CModelEff.m_vecEffect[idx]->getFrameCount(); n++)
		{
			if(m_bEditScale)
			{
				m_SVerScale = m_CModelEff.m_vecEffect[idx]->getFrameSize(n);
				if(m_bEditX)
					if(xyz == 0)
						m_SVerScale.x = m_fInputX * m_vecCompScale[idx].x;
				if(m_bEditY)
					if(xyz == 1)
						m_SVerScale.y = m_fInputY * m_vecCompScale[idx].y;
				if(m_bEditZ)
					if(xyz == 2)
						m_SVerScale.z = m_fInputZ * m_vecCompScale[idx].z;

				m_CModelEff.m_vecEffect[idx]->setFrameSize(n,m_SVerScale);
			}
			if (m_bEditRotat)
			{
				m_SVerRotat = m_CModelEff.m_vecEffect[idx]->getFrameAngle(n);
				if(m_bEditX)
					if(xyz == 0)
						m_SVerRotat.x = m_fInputX * G_fDEG2RAD + m_vecCompRotat[idx].x;
				if(m_bEditY)
					if(xyz == 1)
						m_SVerRotat.y = m_fInputY * G_fDEG2RAD + m_vecCompRotat[idx].y;
				if(m_bEditZ)
					if(xyz == 2)
						m_SVerRotat.z = m_fInputZ * G_fDEG2RAD + m_vecCompRotat[idx].z;

				m_CModelEff.m_vecEffect[idx]->setFrameAngle(n,m_SVerRotat);
			}
			if(m_bEditTranslate)
			{
				m_SVerTranslate = m_CModelEff.m_vecEffect[idx]->getFramePos(n);
				if(m_bEditX)
					if(xyz == 0)
						m_SVerTranslate.x = m_fInputX + m_vecCompDist[idx].x;
				if(m_bEditY)
					if(xyz == 1)
						m_SVerTranslate.y = m_fInputY + m_vecCompDist[idx].y;
				if(m_bEditZ)
					if(xyz == 2)
						m_SVerTranslate.z = m_fInputZ + m_vecCompDist[idx].z;

				m_CModelEff.m_vecEffect[idx]->setFramePos(n,m_SVerTranslate);
			}
		}
		m_CModelEff.m_vecEffect[idx]->IsSame();
}

void CEffectEditerView::OnEnChangeEditInputX()
{
	if(m_bEditModel)
	{
		UpdateData(TRUE);
		if(!m_bEditCompEff)
		{
			SetEffectParam(m_iCurSubEff,0);
		}
		else
		{
			for(int n = 0; n < m_CModelEff.m_iEffNum; n++)
			{
				SetCombEffectParam(n,0);
			}
		}
	}
}

void CEffectEditerView::OnEnChangeEditInputY()
{
	if(m_bEditModel)
	{
		UpdateData(TRUE);

		if(!m_bEditCompEff)
		{
			SetEffectParam(m_iCurSubEff,1);
		}
		else
		{
			for(int n = 0; n < m_CModelEff.m_iEffNum; n++)
			{
				SetCombEffectParam(n,1);
			}
		}	
	}
}

void CEffectEditerView::OnEnChangeEditInputZ()
{
	if(m_bEditModel)
	{
		UpdateData(TRUE);
		if(!m_bEditCompEff)
		{
			SetEffectParam(m_iCurSubEff,2);
		}
		else
		{
			for(int n = 0; n < m_CModelEff.m_iEffNum; n++)
			{
				SetCombEffectParam(n,2);
			}
		}	
	}
}

void CEffectEditerView::OnBnClickedCycRotating()
{
	if(!m_bEditModel)
	{
		UpdateData(TRUE);

		m_CModelEff.m_bRotating = m_bCycRotating;
		m_CModelEff.m_fRotaVel = m_fCycVecl;

		if(m_bCycRotating)
		{
			D3DXVec3Normalize(&m_CModelEff.m_SVerRota,&D3DXVECTOR3(m_fInputX,m_fInputY,m_fInputZ));
			//m_SVerRotat.x = 0;
			//m_SVerRotat.y = 0;
			//m_SVerRotat.z = 0;
			//if(!m_bEditCompEff)
			//{
			//	for(int n = 0; n < m_CModelEff.m_vecEffect[m_iCurSubEff]->getFrameCount(); n++)
			//	{
			//		m_CModelEff.m_vecEffect[m_iCurSubEff]->setFrameAngle(n,m_SVerRotat);
			//	}
			//}
			//else
			//{
			//	for(int m = 0; m < m_CModelEff.m_iEffNum; m++)
			//	{
			//		for(int n = 0; n < m_CModelEff.m_vecEffect[m]->getFrameCount(); n++)
			//		{
			//			m_CModelEff.m_vecEffect[m]->setFrameAngle(n,m_SVerRotat);
			//		}
			//	}
			//}	

		}
		else
		{
			m_CModelEff.m_SVerRota = D3DXVECTOR3(0,0,0);
			D3DXMatrixIdentity(&m_CModelEff.m_SmatRota);
		}

	}
}

void CEffectEditerView::OnShowpartdlg()
{
	CDlgPartEdit::GetInstance()->ShowWindow(SW_SHOW);
}

void CEffectEditerView::On32789()
{
	ShellExecute(m_hWnd,NULL,"effect\\script.txt",NULL,NULL,SW_SHOWNORMAL); 

}

void CEffectEditerView::OnExcuteScript()
{
	////char       t_str[64];
	////if(!m_IniFile.OpenFileRead("effect\\script.txt"))
	////	return;

	////if(!m_IniFile.ReadSection( "列表" ))
	////	return;
	////VEC_string strName;

	////if(!m_IniFile.ReadLine( "施放",t_str,64))
	////	return;

	////strName.push_back(t_str);
	////if(!m_IniFile.ReadLine( "飞行",t_str,64))
	////	return;
	////strName.push_back(t_str);

	////if(!m_IniFile.ReadLine( "命中",t_str,64))
	////	return;
	////strName.push_back(t_str);

	////m_IniFile.CloseFile();

	////CDlgPartEdit::GetInstance()->PlayList();

	//SAFE_DELETE(m_pMagicCtrl);
	//m_pMagicCtrl = new CMagicCtrl;
	//m_pMagicCtrl->Create(1000,&m_CResMagr);

	//m_pMagicCtrl->MagicUpdate = MagicList[m_pMagicCtrl->GetRenderIdx()];
}

void CEffectEditerView::OnCbnSelchangeComboSelEffLib()
{
	int t_iSel;// = m_ClistEffLib.GetCurSel();
	t_iSel = m_CComboEffLib.GetCurSel();
	m_bPlaying = FALSE;
	UpdateData(FALSE);

	//std::vector<I_Effect> pCurEff = m_CResMagr.GetEffectByID(t_iSel);
	m_CModelEff.Stop();
	m_CModelEff.BindingEffect(m_CResMagr.GetEffectByID(t_iSel));
	m_CModelEff.BindingRes(&m_CResMagr);

	m_ClistSubEffLib.ResetContent();

	for(int n = 0; n < m_CResMagr.GetSubEffectNum(t_iSel); n++)
		m_ClistSubEffLib.AddString(m_CResMagr.GetSubEffectByID(t_iSel,n)->getEffectName().c_str());
	m_ClistSubEffLib.SetCurSel(0);
	m_iCurSubEff = 0;

	//得到组合效果的每一个子效果相对于原点的距离
	m_vecCompDist.clear();
	m_vecCompScale.clear();
	m_vecCompRotat.clear();
	m_vecCompDist.resize(m_CModelEff.m_iEffNum);
	m_vecCompScale.resize(m_CModelEff.m_iEffNum);
	m_vecCompRotat.resize(m_CModelEff.m_iEffNum);
	for( n = 0; n < m_CModelEff.m_iEffNum;n++)
	{
		m_vecCompDist[n] = m_CModelEff.m_vecEffect[n]->getFramePos(0);
		m_vecCompScale[n] = m_CModelEff.m_vecEffect[n]->getFrameSize(0);
		m_vecCompRotat[n] = m_CModelEff.m_vecEffect[n]->getFrameAngle(0);
	}
	m_bCycRotating = m_CModelEff.m_bRotating;
	m_fCycVecl	 = m_CModelEff.m_fRotaVel;

	UpdateData(FALSE);
}

void CEffectEditerView::OnBnClickedBut_modelParam()
{
	if(m_CModelEff.m_vecEffect[m_iCurSubEff]->IsChangeably())
	{
		CDlgModelParam::GetInstance()->ShowWindow(SW_SHOW);
		CDlgModelParam::GetInstance()->SetCurEffect(m_CModelEff.m_vecEffect[m_iCurSubEff],m_iCurFrame);
	}
}

void CEffectEditerView::On32791()
{
	char pszDir[256];
	::GetCurrentDirectory(256,pszDir);

	//::SetCurrentDirectory("");

	CString str = _T("文件(*.lgo)|*.lgo|");
	CFileDialog cfd(TRUE,NULL,NULL,OFN_HIDEREADONLY | 
		OFN_OVERWRITEPROMPT, str,NULL);
	if( cfd.DoModal() == IDCANCEL )
	{
		return;
	}
	SAFE_DELETE(m_ptestModel);
	m_ptestModel = new MPSceneItem;
	::SetCurrentDirectory(pszDir);
	if(LW_FAILED(m_ptestModel->Load((char*)(LPCSTR)cfd.GetFileName())))
	{
		MessageBox("Load scene Item error");
		m_ptestModel->Load("10100006.lgo");
		m_ptestModel->PlayDefaultAnimation();

	}

	::SetCurrentDirectory(pszDir);

	m_ptestModel->PlayDefaultAnimation();

	CSkinMeshDlg::GetInstance()->BindItem(m_ptestModel);

}

void CEffectEditerView::OnCbnEditchangeCom_findEff()
{
	CString str;
	m_CComboEffLib.GetWindowText(str);

	int id;

	s_string strname = (char*)(LPCSTR)str;
	if((id = m_CResMagr.GetEffectID(strname))< 0)
		return;


	m_CComboEffLib.SetCurSel(id);

	int t_iSel = id;
	m_bPlaying = FALSE;
	UpdateData(FALSE);

	//std::vector<I_Effect> pCurEff = m_CResMagr.GetEffectByID(t_iSel);
	m_CModelEff.Stop();
	m_CModelEff.BindingEffect(m_CResMagr.GetEffectByID(t_iSel));
	m_CModelEff.BindingRes(&m_CResMagr);

	m_ClistSubEffLib.ResetContent();

	for(int n = 0; n < m_CResMagr.GetSubEffectNum(t_iSel); n++)
		m_ClistSubEffLib.AddString(m_CResMagr.GetSubEffectByID(t_iSel,n)->getEffectName().c_str());
	m_ClistSubEffLib.SetCurSel(0);
	m_iCurSubEff = 0;

	//得到组合效果的每一个子效果相对于原点的距离
	m_vecCompDist.clear();
	m_vecCompScale.clear();
	m_vecCompRotat.clear();
	m_vecCompDist.resize(m_CModelEff.m_iEffNum);
	m_vecCompScale.resize(m_CModelEff.m_iEffNum);
	m_vecCompRotat.resize(m_CModelEff.m_iEffNum);
	for( n = 0; n < m_CModelEff.m_iEffNum;n++)
	{
		m_vecCompDist[n] = m_CModelEff.m_vecEffect[n]->getFramePos(0);
		m_vecCompScale[n] = m_CModelEff.m_vecEffect[n]->getFrameSize(0);
		m_vecCompRotat[n] = m_CModelEff.m_vecEffect[n]->getFrameAngle(0);
	}
	m_bCycRotating = m_CModelEff.m_bRotating;
	m_fCycVecl	 = m_CModelEff.m_fRotaVel;

	UpdateData(FALSE);
}

void CEffectEditerView::OnCbnEditchangeCom_findtexture()
{
	//CString str;
	//s_string strname ;


	CString str,strte;
	m_CComboTextureLib.GetWindowText(str);

	for (int n = 0; n < m_CComboTextureLib.GetCount(); n++)
	{
		m_CComboTextureLib.GetLBText(n,strte);
		//if(str == strte)
		//	m_CComboTextureLib.SetCurSel(n);
	}
	//UpdateData(TRUE);
}

void CEffectEditerView::OnEnChangeEdit_setSingleVel()
{
	UpdateData(TRUE);
	m_CModelEff.m_vecEffect[m_iCurSubEff]->GetRotaLoop()->w = m_fSinglVel;
}

void CEffectEditerView::OnBnClickedCheck_singleLoop()
{
	UpdateData(TRUE);

	if(m_bRotaSingle)
	{
		D3DXVECTOR3 vdir;
		D3DXVec3Normalize(&vdir,&D3DXVECTOR3(m_fInputX,m_fInputY,m_fInputZ));
		m_CModelEff.m_vecEffect[m_iCurSubEff]->GetRotaLoop()->x = vdir.x;
		m_CModelEff.m_vecEffect[m_iCurSubEff]->GetRotaLoop()->y = vdir.y;
		m_CModelEff.m_vecEffect[m_iCurSubEff]->GetRotaLoop()->z = vdir.z;

		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetLoop(true);
	}else
		m_CModelEff.m_vecEffect[m_iCurSubEff]->SetLoop(false);

}

void CEffectEditerView::OnBnClickedCheck_RotaBoard()
{
	UpdateData(TRUE);
	m_CModelEff.m_vecEffect[m_iCurSubEff]->SetRoatBoard(m_bBoardRotating);
}
