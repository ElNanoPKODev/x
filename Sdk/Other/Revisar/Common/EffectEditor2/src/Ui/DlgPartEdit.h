#pragma once

#include "../../../../sdk/include/mpmodeleff.h"
#include "../../../../sdk/include/mpeffectctrl.h"

#include "afxwin.h"
#include "afxcmn.h"
#include "../../../../sdk/include/mpfont.h"
// CDlgPartEdit dialog

class CDlgPartEdit : public CDialog
{
	DECLARE_DYNAMIC(CDlgPartEdit)

public:
	CDlgPartEdit(CWnd* pParent = NULL);   // standard constructor
	virtual ~CDlgPartEdit();

// Dialog Data
	enum { IDD = IDD_DLGPART };

	void	OnOK();
	void	OnCancel();

	static CDlgPartEdit*	GetInstance()		{ return m_spInstance; }
	static void CreatePartEditDlg();
	static void DestoryDlg();

	void					PlayList();
	void					MoveTo(D3DXVECTOR3* vPos);
	void					BindingBone(lwMatrix44* pmat);
	void					FrameMove(DWORD dwTime);
	void					Render();

	CMPResManger*			m_pCResMagr;


	CMPPartCtrl*			m_CPartCtrl;

	CMPPartCtrl				m_CTempPartCtrl;


	CMPPartSys*				m_pCurSys;

	int						m_iCurPartCtrl;
	int						m_iCurPartSys;
	int						m_iCurFrame;


	BOOL					m_bPlayList;
	D3DXVECTOR3				m_vPosList;
	CMagicCtrl				m_MagicCtrl;

	CMPFont					m_cFont;
public:
	void					InitUi(CMPResManger*	pCResMagr);
	void					UpdateUi(int iCurCtrl,int iCurSys, int iCurFrame);
protected:

	static CDlgPartEdit*	m_spInstance;

	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	char m_pszDir[256];

	CListBox m_CListComlib;
	CListBox m_CSubSyslib;
	CListBox m_CComlib;
	CComboBox m_CComboxCtrl;

	CComboBox m_cCombox_comlib;

	CString m_strPartName;
	float m_fLife;
	float m_fVel;
	int m_iNum;
	float m_fDirx;
	float m_fDiry;
	float m_fDirz;
	float m_fDirAngle;
	float m_fAccelx;
	float m_fAccely;
	float m_fAccelz;
	float m_fRangex;
	float m_fRangey;
	float m_fRangez;
	CComboBox m_CComboxTexture;
	CComboBox m_CComboxModel;
	CComboBox m_CComboxSrcBlend;
	CComboBox m_CComboxDestBlend;
	CComboBox m_CComboxMagFilter;
	CComboBox m_CComboxMinFilter;
	float m_fFrameSize;
	float m_fFrameAngleX;
	float m_fFrameAngleY;
	float m_fFrameAngleZ;
	BOOL m_bBill;
	BOOL m_bBillX;
	BOOL m_bBillY;
	BOOL m_bBillZ;
	BOOL m_bModelDirector;
	BOOL m_bDummyDirector;
	int m_iFrameCount;
	CSliderCtrl m_CSliderFrame;
	int m_iAlpha;
	int m_iColorR;
	int m_iColorG;
	int m_iColorB;

	float m_fPlayLength;
	float m_fCreateTime;
	float m_fDelayTime;

	float m_fOffsetX;
	float m_fOffsetY;
	float m_fOffsetZ;

	BOOL m_bPlaying;

	afx_msg void OnBnClickedBut_New();
	afx_msg void OnBnClickedCheck_Play();
	afx_msg void OnBnClickedBut_Delete();
	afx_msg void OnBnClickedBut_AddToLib();
	afx_msg void OnBnClickedBut_ClearTemplib();
	afx_msg void OnBnClickedBut_DelSublib();
	afx_msg void OnBnClickedBut_ComToRes();
	afx_msg void OnLbnSelchangeList_selPartCtrl();
	afx_msg void OnCbnSelchangeCom_selType();
	afx_msg void OnEnChangeEdit_Life();
	afx_msg void OnLbnSelchangeList_selsubsys();
	afx_msg void OnEnChangeEdit_selvel();
	afx_msg void OnEnChangeEdit_selnum();
	afx_msg void OnEnChangeEdit_seldirX();
	afx_msg void OnEnChangeEdit_seldirY();
	afx_msg void OnEnChangeEdit_seldirZ();
	afx_msg void OnEnChangeEdit_selaccelX();
	afx_msg void OnEnChangeEdit_selaccelY();
	afx_msg void OnEnChangeEdit_selaccelZ();
	afx_msg void OnEnChangeEdit_selrangeX();
	afx_msg void OnEnChangeEdit_selrangeY();
	afx_msg void OnEnChangeEdit_selrangeZ();
	afx_msg void OnCbnSelchangeCombo_seltexture();
	afx_msg void OnCbnSelchangeCombo_selmodel();
	afx_msg void OnCbnSelchangeCombo_selsrcblend();
	afx_msg void OnCbnSelchangeCombo_seldestblend();
	afx_msg void OnCbnSelchangeCombo_selmagfilter();
	afx_msg void OnCbnSelchangeCombo_selminfilter();
	afx_msg void OnBnClickedCheck_selbillboard();
	afx_msg void OnEnChangeEdit_selframecount();
	afx_msg void OnNMCustomdrawSlider_selcurframe(NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnEnChangeEdit_selframesize();
	afx_msg void OnEnChangeEdit_selframeangleX();
	afx_msg void OnEnChangeEdit_selframeangleY();
	afx_msg void OnEnChangeEdit_selframeangleZ();
	afx_msg void OnEnChangeEdit_selframealpha();
	afx_msg void OnBnClickedButton_selcolor();
	afx_msg void OnBnClickedButton_savepart();
//	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnClose();
	afx_msg void OnEnChangeEdit_setPlayLength();
	afx_msg void OnEnChangeEdit_selCreateTime();
	afx_msg void OnEnChangeEdit_selOffsetX();
	afx_msg void OnEnChangeEdit_selOffsetY();
	afx_msg void OnEnChangeEdit_selOffsetZ();
	afx_msg void OnCbnSelchangeCombo_selcomctrl();
	afx_msg void OnEnChangeEdit_setDelayTime();
	afx_msg void OnBnClickedBut_NewStrip();
	int m_iDumy1;
	int m_iDumy2;
	afx_msg void OnEnChangeEdit_setDumy1();
	afx_msg void OnEnChangeEdit_setDumy2();
	afx_msg void OnBnClickedBut_AddCharacter();
	int m_iSkinMeshID;
	afx_msg void OnBnClickedBut_ResultCha();
	afx_msg void OnBnClickedBut_AddPathFile();
	afx_msg void OnBnClickedBut_deletePath();
	float m_fPathVel;
	afx_msg void OnEnChangeEdit_pathVel();
	afx_msg void OnCbnEditchangeCom_findlib();
	CString m_cHitEffName;
	afx_msg void OnBnClickedBut_AddHitEff();
	afx_msg void OnBnClickedBut_AddEmission();
	afx_msg void OnBnClickedBut_delEmission();
	afx_msg void OnCbnEditchangeCom_findTexture();
	afx_msg void OnCbnEditchangeCom_findModel();
	int m_iRoadom;
	afx_msg void OnEnChangeEdit_setRoadom();
	afx_msg void OnBnClickedCheckModelDirector();
	afx_msg void OnBnClickedCheckDummyDirector();
	afx_msg void OnEnChangeEditDirangle();
};
