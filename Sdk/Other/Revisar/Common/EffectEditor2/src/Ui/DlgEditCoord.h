#pragma once
#include "afxcmn.h"

//#include <mindpower.h>
//#include "GlobalInc.h"

#include "../../../../sdk/include/mpmodeleff.h"
// CDlgEditCoord dialog

class CDlgEditCoord : public CDialog
{
	DECLARE_DYNAMIC(CDlgEditCoord)

public:
	CDlgEditCoord(CWnd* pParent = NULL);   // standard constructor
	virtual ~CDlgEditCoord();

// Dialog Data
	enum { IDD = IDD_DLGEDITCOORD };

	void	SetResMgr(CMPResManger	*pCResMagr)	{ m_pCResMagr = pCResMagr; }

	void	UpdateDlgInfo(I_Effect* pEffect);
public:
	static CDlgEditCoord*	GetInstance()		{ return m_spInstance; }
	static void CreateEditCoordDlg();
	static void DestoryDlg();

protected:
	static CDlgEditCoord*	m_spInstance;

	I_Effect*				m_pEffect;
	CMPResManger*			m_pCResMagr;

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	CSliderCtrl m_CSliderCurCoord;
	float m_fU1;
	float m_fV1;
	float m_fU2;
	float m_fV2;
	float m_fU3;
	float m_fV3;
	float m_fU4;
	float m_fV4;
	float m_fTime;
	int m_iCoordNum;

	TEXCOORD    m_vecCoord;
	afx_msg void OnNMCustomdrawSlider1(NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnBnClickedButDefaultCoord();
	afx_msg void OnBnClickedButSetCurCoord();
	afx_msg void OnBnClickedButSetFrameTime();
	afx_msg void OnBnClickedButSetCoordNum();
};
