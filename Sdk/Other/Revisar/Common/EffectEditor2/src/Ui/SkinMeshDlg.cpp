// SkinMeshDlg.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"
#include "SkinMeshDlg.h"
#include ".\skinmeshdlg.h"

#include "DlgPartEdit.h"

CSkinMeshDlg* CSkinMeshDlg::m_spInstance = NULL;
// CSkinMeshDlg dialog
s_string EAction[] = 
{
	"普通waiting",
		"摆酷pose",
		"搞笑pose",	
		"戒备waiting",
		"普通奔跑",	
		"戒备奔跑",	
		"普通攻击",	
		"技能１",
		"技能２",
		"技能３",
		"技能４	011",	
		"技能５	012",	
		"普通坐下"	,
		"死亡(通用)",	
		"挥手(通用)",	
		"大哭(通用)",	
		"雀跃(通用)",	
		"生气(通用)",	
		"挑衅(通用)",	
		"自恋(男通用)",
		"表情动作7"	,
		"表情动作8"	,
		"表情动作9"	,
		"表情动作10",	
		"挖矿(场景互动",
		"采集(场景互动",
		"坐凳子(场景互",
		"靠墙(场景互动",
		"靠树(场景互动",
		"角色互动(场景互动)",
		"场景互动动作7",
		"场景互动动作8",
		"场景互动动作9",
		"场景互动动作10",
		"备用动作1"	,
		"备用动作2"	,
		"技能动作6"	,
		"技能动作7"	,
		"技能动作8"	,
		"技能动作9"	,
		"技能动作10",	
		"技能动作11",
		"技能动作12",	
		"技能动作13",
		"技能动作14",	
		"技能动作15",	
		"技能动作16",	
		"技能动作17",	
		"技能动作18",	
		"技能动作19",	
		"技能动作20",	
};
IMPLEMENT_DYNAMIC(CSkinMeshDlg, CDialog)
CSkinMeshDlg::CSkinMeshDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSkinMeshDlg::IDD, pParent)
	, m_strIdx(_T("2"))
	, m_iVel(120)
	, m_iItemDummy1(0)
	, m_iItemDummy2(0)
{
	m_pChaModel = NULL;
	m_bPlay =false;
	m_iCurAction =1;
	m_bUseBone = false;

	//m_pStrip = NULL;
	m_pPartCtrl = NULL;
	m_pCResMagr = NULL;
	m_pItem = NULL;

	m_bBindCha = 0;
	m_bBindItem = 0;
	m_bBindItemCha = 0;
	m_iCurItemDumy = -1;
}

CSkinMeshDlg::~CSkinMeshDlg()
{
	SAFE_DELETE(m_pChaModel);
	//SAFE_DELETE(m_pStrip);

}

void CSkinMeshDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_TREE1, m_cTreeCtrl);
	DDX_Text(pDX, IDC_EDIT1, m_strIdx);
	DDX_Text(pDX, IDC_EDIT3, m_iVel);
	DDX_Text(pDX, IDC_EDIT2, m_iItemDummy1);
	DDX_Text(pDX, IDC_EDIT16, m_iItemDummy2);
}


BEGIN_MESSAGE_MAP(CSkinMeshDlg, CDialog)
	ON_BN_CLICKED(IDC_BUTTON1, OnBnClickedBut_Load)
	ON_BN_CLICKED(IDC_BUTTON9, OnBnClickedBut_Play)
	ON_NOTIFY(TVN_SELCHANGED, IDC_TREE1, OnTvnSelchangedTree_selPose)
	ON_BN_CLICKED(IDC_BUTTON11, OnBnClickedButton_bindEffect)
	ON_BN_CLICKED(IDC_BUTTON2, OnBnClickedBut_BindItem)
	ON_BN_CLICKED(IDC_BUTTON13, OnBnClickedBut_BindingArm)
	ON_BN_CLICKED(IDC_BUTTON29, OnBnClickedBut_bindArmCha)
	ON_BN_CLICKED(IDC_BUTTON30, OnBnClickedBut_freebind)
END_MESSAGE_MAP()


// CSkinMeshDlg message handlers
void CSkinMeshDlg::CreateSkinMeshDlg()
{
	SAFE_DELETE( m_spInstance );

	m_spInstance = new CSkinMeshDlg( NULL );
	m_spInstance->Create( CSkinMeshDlg::IDD, NULL );
}
void CSkinMeshDlg::DestoryDlg()
{
	SAFE_DELETE( m_spInstance );
}
void    CSkinMeshDlg::InsertItem(char* szNewItem, char* szParentItem)
{
	HTREEITEM hParentItem;
	if ( szParentItem == NULL ) 
	{
		hParentItem = NULL;
	}
	else 
	{
		hParentItem = FindItemByName( szParentItem );
	}

	TV_INSERTSTRUCT tvInsert;

	tvInsert.hParent      = hParentItem;
	tvInsert.hInsertAfter = NULL;
	tvInsert.item.pszText = szNewItem;
	tvInsert.item.mask    = TVIF_TEXT;
	//tvInsert.item.lParam  = ( DWORD ) ipBrush;

	HTREEITEM hItem = m_cTreeCtrl.InsertItem( &tvInsert );
}
HTREEITEM
CSkinMeshDlg::FindItemByName( char* szItemName )
{

	HTREEITEM hCurrentItem;

	hCurrentItem = m_cTreeCtrl.GetRootItem();

	while( hCurrentItem != NULL ) 
	{
		CString szItemText = m_cTreeCtrl.GetItemText( hCurrentItem );
		if ( szItemText.Compare( szItemName ) == 0 )
		{
			return hCurrentItem;
		}

		hCurrentItem = GetNextItem( hCurrentItem );
	}

	return NULL;
}
HTREEITEM
CSkinMeshDlg::GetNextItem( HTREEITEM iHTree )
{
	if ( m_cTreeCtrl.ItemHasChildren( iHTree ) ) 
	{
		return m_cTreeCtrl.GetChildItem( iHTree );
	}

	HTREEITEM hCurrentItem = iHTree;

	while( hCurrentItem != NULL )
	{
		HTREEITEM hSiblingItem = m_cTreeCtrl.GetNextSiblingItem( hCurrentItem );
		if ( hSiblingItem != NULL ) 
		{
			return hSiblingItem;
		}

		hCurrentItem = m_cTreeCtrl.GetParentItem( hCurrentItem );
	}

	return NULL;
}


bool	CSkinMeshDlg::Load()
{
	UpdateData(TRUE);
	SAFE_DELETE(m_pChaModel);
	m_pChaModel = new CChaModel;
	m_pChaModel->SetDivece(m_pCResMagr->m_pDev);
	if(!m_pChaModel->LoadScript((char*)(LPCSTR)m_strIdx))
	{
		return false;
	}
	m_pChaModel->PlayPose(0,PLAY_LOOP);
	return true;
}

void	CSkinMeshDlg::FrameMove()
{
	if(m_pChaModel)
		m_pChaModel->FrameMove();
	//if(m_pStrip)
	//	m_pStrip->FrameMove();
}
void	CSkinMeshDlg::Render()
{
	if(m_pChaModel)
	{
		//m_pChaModel->Begin();
		m_pChaModel->Render();
		//m_pChaModel->End();
	}
	//if(m_pStrip)
	//	m_pStrip->Render();
}


void CSkinMeshDlg::OnBnClickedBut_Load()
{
	if(!Load())
		return;
	m_bUseBone = false;

	m_cTreeCtrl.DeleteAllItems();
	SChaAction	sAction;

	if(!CScriptFile::m_ctScript.GetCharAction(atoi((char*)(LPCSTR)m_strIdx), &sAction))
		return;
	InsertItem("Pose", NULL);
	char str[32];
	for (int iActCount = 0; iActCount < /*sAction.m_iMaxActionNum*/20; iActCount ++)
	{
		if (sAction.m_SActionInfo[iActCount].m_sActionNO < 1)
			continue;
		int at = sAction.m_SActionInfo[iActCount].m_sActionNO;
		sprintf(str,"%d",at);
		InsertItem(str,"Pose");
	}
	InsertItem("Dumy", NULL);

	for ( iActCount = 0; iActCount < DUMMY_NUM; iActCount ++)
	{
		sprintf(str,"%d",iActCount);
		InsertItem(str,"Dumy");
	}

	InsertItem("ItemDummy", NULL);
	for ( iActCount = 0; iActCount < 24; iActCount ++)
	{
		sprintf(str,"%d",iActCount);
		InsertItem(str,"ItemDummy");
	}
	//SAFE_DELETE(m_pStrip);
	//m_pStrip = new CMPStrip();
	//m_pStrip->CreateStrip(m_pCResMagr->m_pDev,"eff0089.tga",m_pCResMagr);
	//m_pStrip->AttachCharacter((MPCharacter*)m_pChaModel);
	//m_pStrip->SetDumy(0,9);
	//m_pStrip->SetDumy(1,8);

}

void CSkinMeshDlg::OnBnClickedBut_Play()
{
	UpdateData(TRUE);
	m_bPlay =!m_bPlay;
	if(m_pChaModel)
	{
		if(m_bPlay)
		{
			m_pChaModel->SetVel(m_iVel);
			m_pChaModel->PlayPose(m_iCurAction,PLAY_ONCE);
			//m_pChaModel->SetStrip(m_pPartCtrl);
			//m_pStrip->Play();
			if(m_pPartCtrl)
			{
				m_pPartCtrl->Reset();
				m_pPartCtrl->Play(0);
			}
		}else
		{
			m_pChaModel->PlayPose(m_iCurAction,PLAY_PAUSE);
		}
	}
}


void CSkinMeshDlg::OnTvnSelchangedTree_selPose(NMHDR *pNMHDR, LRESULT *pResult)
{
	LPNMTREEVIEW pNMTreeView = reinterpret_cast<LPNMTREEVIEW>(pNMHDR);
	
	HTREEITEM item = m_cTreeCtrl.GetSelectedItem();
	HTREEITEM parent;
	CString str = m_cTreeCtrl.GetItemText(item);
	if(str == "Dumy")
	{
		*pResult = 0;
		return;
	}
	if(str == "ItemDummy")
	{
		*pResult = 0;
		return;
	}

	parent = m_cTreeCtrl.GetParentItem(item);
	if(m_cTreeCtrl.GetItemText(parent)== "Dumy")
	{
		m_iCurDumy= atoi((char*)(LPCSTR)str);
		*pResult = 0;
		return;
	}
	if(m_cTreeCtrl.GetItemText(parent)== "ItemDummy")
	{
		m_iCurItemDumy= atoi((char*)(LPCSTR)str);
		*pResult = 0;
		return;
	}
	if(m_cTreeCtrl.GetItemText(parent)== "Pose")
	{
		m_iCurAction = atoi((char*)(LPCSTR)str);
		if(m_pChaModel)
		{
			if(m_bPlay)
			{
				m_pChaModel->PlayPose(m_iCurAction,PLAY_LOOP);
			}
		}
	}
	*pResult = 0;
}

void	CSkinMeshDlg::GetCurDumyMatrix(lwMatrix44* pmat)
{
	if(!m_bUseBone)
		return;
	if(m_pChaModel)
	{
		if(m_bPlay)
		{
			if(m_iCurDumy>=0 &&m_iCurDumy < DUMMY_NUM)
				m_pChaModel->GetObjDummyRunTimeMatrix(pmat,m_iCurDumy);
		}
	}
}

void	CSkinMeshDlg::GetCurItemDumyMatrix(lwMatrix44* pmat)
{
	if(!m_pItem)
		return;
	m_pItem->GetObjDummyRunTimeMatrix(pmat,m_iCurItemDumy);
}

void CSkinMeshDlg::OnBnClickedButton_bindEffect()
{
	if(!m_pChaModel)
		return;
	m_bUseBone = true;

	m_pPartCtrl = CDlgPartEdit::GetInstance()->m_CPartCtrl;
	m_pPartCtrl->BindingRes(m_pCResMagr);
	m_pPartCtrl->SetStripCharacter((MPCharacter*)m_pChaModel);

	m_bBindCha = true;
	m_bBindItem = false;
	//m_bBindItemCha = false;
}
void	CSkinMeshDlg::BindItem(MPSceneItem* pItem)
{
	m_pItem = pItem;
	m_pPartCtrl = CDlgPartEdit::GetInstance()->m_CPartCtrl;
	m_pPartCtrl->SetItemDummy((MPSceneItem*)m_pItem,m_iItemDummy1, m_iItemDummy2);

}
void	CSkinMeshDlg::SetPartCtrl()
{
	m_pPartCtrl = CDlgPartEdit::GetInstance()->m_CPartCtrl;
	m_pPartCtrl->SetStripItem((MPSceneItem*)m_pItem);
}

void CSkinMeshDlg::OnBnClickedBut_BindItem()
{
	UpdateData(TRUE);
	m_pPartCtrl = CDlgPartEdit::GetInstance()->m_CPartCtrl;
	m_pPartCtrl->SetItemDummy((MPSceneItem*)m_pItem,m_iItemDummy1, m_iItemDummy2);

	// TODO: Add your control notification handler code here
}

void CSkinMeshDlg::OnBnClickedBut_BindingArm()
{
	if(!m_pChaModel)
		return;
	m_bUseBone = true;

	m_pPartCtrl = CDlgPartEdit::GetInstance()->m_CPartCtrl;
	m_pPartCtrl->BindingRes(m_pCResMagr);
	m_pPartCtrl->SetStripItem((MPSceneItem*)m_pItem);

	m_bBindCha = false ;
	m_bBindItem = true;
	//m_bBindItemCha = false;
}

void CSkinMeshDlg::OnBnClickedBut_bindArmCha()
{
	if(!m_pChaModel)
		return;
	m_bUseBone = true;

	m_pPartCtrl = CDlgPartEdit::GetInstance()->m_CPartCtrl;
	m_pPartCtrl->BindingRes(m_pCResMagr);
	m_pPartCtrl->SetStripItem((MPSceneItem*)m_pItem);

	//m_bBindCha = false ;
	//m_bBindItem = false;
	m_bBindItemCha = true;
}

void CSkinMeshDlg::OnBnClickedBut_freebind()
{
	m_bUseBone = false;
	m_bBindCha = false ;
	m_bBindItem = false;
	m_bBindItemCha = false;
}
