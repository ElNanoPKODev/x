#pragma once


#include "../../../../sdk/include/mpmodeleff.h"
// CDlgModelParam dialog

class CDlgModelParam : public CDialog
{
	DECLARE_DYNAMIC(CDlgModelParam)

public:
	CDlgModelParam(CWnd* pParent = NULL);   // standard constructor
	virtual ~CDlgModelParam();

// Dialog Data
	enum { IDD = IDD_DLGMODELPARAM };

	static CDlgModelParam*	GetInstance()		{ return m_spInstance; }
	static void CreateModelParamtDlg();
	static void DestoryDlg();

	void	SetCurEffect(I_Effect* peff, int iCurFrame)
	{
		m_iCurFrame = iCurFrame;
		m_pEffct = peff;
		if(IsCylinderMesh(m_pEffct->m_strModelName))
		{
			m_pEffct->GetTobParam(iCurFrame, m_iSeg,m_fHeight,m_ftopW,m_fBotW);
		}else
		{
			if (m_pEffct->m_pCModel)
			{
				m_iSeg = m_pEffct->m_pCModel->m_nSegments;
				m_fHeight = m_pEffct->m_pCModel->m_rHeight;
				m_ftopW = m_pEffct->m_pCModel->m_rRadius;
				m_fBotW = m_pEffct->m_pCModel->m_rBotRadius;
			}
			else
			{
				LG("error", "msg:m_pEffct->m_pCModel=0");
			}
		}
		UpdateData(FALSE);
	}
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()

	static CDlgModelParam*	m_spInstance;

	I_Effect*				m_pEffct;
	int						m_iCurFrame;
public:
	int m_iSeg;
	float m_fHeight;
	float m_ftopW;
	float m_fBotW;
	afx_msg void OnEnChangeEdit_seg();
	afx_msg void OnEnChangeEdit_hei();
	afx_msg void OnEnChangeEdit_top();
	afx_msg void OnEnChangeEdit_bottom();
};
