#pragma once

#include "../../../../sdk/include/mpmodeleff.h"
#include "afxcmn.h"
// CSkinMeshDlg dialog


class CSkinMeshDlg : public CDialog
{
	DECLARE_DYNAMIC(CSkinMeshDlg)

private:
	const static int DUMMY_NUM = 26;
public:
	CSkinMeshDlg(CWnd* pParent = NULL);   // standard constructor
	virtual ~CSkinMeshDlg();

// Dialog Data
	enum { IDD = IDD_DLGMESH };

	static CSkinMeshDlg*	GetInstance()		{ return m_spInstance; }
	static void CreateSkinMeshDlg();
	static void DestoryDlg();
	void		InsertItem(char* szNewItem, char* szParentItem);
	HTREEITEM	FindItemByName( char* szItemName );
	HTREEITEM	GetNextItem( HTREEITEM iHTree );

	bool	Load();

	void	SetResMagr(CMPResManger* pResMagr)	{ m_pCResMagr = pResMagr;}
	bool	IsBindingBone(){return m_bUseBone;}
	bool	IsCha()			{ return m_pChaModel; }
	void	GetCurDumyMatrix(lwMatrix44* pmat);
	void	GetCurItemDumyMatrix(lwMatrix44* pmat);

	void	FrameMove();
	void	Render();

	void	SetPartCtrl();
	void	BindItem(MPSceneItem* pItem);

	bool	IsBindingCha(){ return m_bBindCha;}
	bool	IsBindingItem(){ return m_bBindItem;}
	bool	IsBindingItemCha(){ return m_bBindItemCha;}


protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	static CSkinMeshDlg*	m_spInstance;



	DECLARE_MESSAGE_MAP()
public:
	CTreeCtrl		m_cTreeCtrl;

	CChaModel*		m_pChaModel;
	CString			m_strIdx;
	int				m_iVel;
	bool			m_bPlay;
	int				m_iCurAction;
	int				m_iCurDumy;


	bool			m_bUseBone;

	bool			m_bBindCha;
	bool			m_bBindItem;
	bool			m_bBindItemCha;
	int				m_iCurItemDumy;




	//CMPStrip*		m_pStrip;
	CMPPartCtrl*	m_pPartCtrl;
	CMPResManger*	m_pCResMagr;

	MPSceneItem*	m_pItem;
	afx_msg void OnBnClickedBut_Load();
	afx_msg void OnBnClickedBut_Play();
	afx_msg void OnTvnSelchangedTree_selPose(NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnBnClickedButton_bindEffect();
	int m_iItemDummy1;
	int m_iItemDummy2;
	afx_msg void OnBnClickedBut_BindItem();
	afx_msg void OnBnClickedBut_BindingArm();
	afx_msg void OnBnClickedBut_bindArmCha();
	afx_msg void OnBnClickedBut_freebind();
};
