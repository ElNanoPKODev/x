#pragma once
#include "afxwin.h"

//#include <mindpower.h>
//#include "GlobalInc.h"

#include "../../../../sdk/include/mpmodeleff.h"


// CDlgEditTexture dialog

class CDlgEditTexture : public CDialog
{
	DECLARE_DYNAMIC(CDlgEditTexture)

public:
	CDlgEditTexture(CWnd* pParent = NULL);   // standard constructor
	virtual ~CDlgEditTexture();

// Dialog Data
	enum { IDD = IDD_DLGEDITTEXTURE };

public:
	static CDlgEditTexture*	GetInstance()		{ return m_spInstance; }
	static void CreateEditTexDlg();
	static void DestoryDlg();

	void   FillDlg(VEC_string& strTexName,CMPResManger	*pCResMagr);

	void   SetCurEffect(I_Effect* pEffect)
	{ 
		m_cComTex.ResetContent();
		m_pEffect = pEffect;
		if(m_pEffect->getType() == EFFECT_FRAMETEX)
		{
			for(int n = 0; n < m_pEffect->GetFrameTex().size(); n++)
				m_cComTex.AddString(m_pEffect->GetFrameTex()[n].c_str());
		}
	}

protected:
	static CDlgEditTexture*	m_spInstance;

	I_Effect*				m_pEffect;
	CMPResManger*			m_pCResMagr;
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	CListBox m_ClistboxTex;
	int m_iRow;
	int m_iColumn;
	afx_msg void OnEnChangeEditRow();
	afx_msg void OnEnChangeEditColumn();
	afx_msg void OnBnClickedChangeTex();
	float m_fTexTime;
	afx_msg void OnBnClickedButSplite();
	afx_msg void OnBnClickedButSetTime();
	afx_msg void OnBnClickedButremove();
	afx_msg void OnBnClickedBut_addTex();
	afx_msg void OnBnClickedBut_cleartex();
	CComboBox m_cComTex;
};
