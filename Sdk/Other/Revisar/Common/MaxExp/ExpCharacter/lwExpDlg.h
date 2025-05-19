#pragma once

#include <afxwin.h>
#include "resource.h"
#include "ExpErrCode.h"
#include "lwHeader.h"
// lwExpDlg dialog

class ExpInterface;
class Interface;
class INode;


LW_BEGIN

struct lwSkeletonInfo;
struct lwGeomObjInfo;
class lwAnimDataBone;

LW_END

LW_USING;

enum {
    MAX_BONE_NUM = 1,
    MAX_SKIN_NUM = 8,
};

struct lwExpDlgObj
{
    INode* node;
    DWORD type;
    char name[ 128 ];
    BYTE state;
};

class lwExpDlg : public CDialog
{
	DECLARE_DYNAMIC(lwExpDlg)

public:
	lwExpDlg(CWnd* pParent = NULL);   // standard constructor
	virtual ~lwExpDlg();

// Dialog Data
	enum { IDD = IDD_DIALOG1 };
    

    ExpInterface *_ei;
    Interface *_i;

    //lwSkeletonInfo* _sk_info;
    lwAnimDataBone* _bone_data;
    lwGeomObjInfo* _skin_info;

    char _path[ 260 ];
    char _name[ 260 ];

    lwExpDlgObj _bone_obj;
    lwExpDlgObj _skin_obj_seq[ MAX_SKIN_NUM ];

    int _pb_pos;
    DWORD _coord_type;
    DWORD _exp_skin_mask;

    DWORD _err_code;


    const char* _file;

    int InitExpData( const char* file,ExpInterface *ei,Interface *i );
    int DoExpData();
    int SaveExpData();
    void ShowErrDlg();
    

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
    virtual BOOL OnInitDialog();
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    virtual BOOL Create(LPCTSTR lpszTemplateName, CWnd* pParentWnd = NULL);
    afx_msg void OnBnClickedExport();
    afx_msg void OnBnClickedBtnExpBone();
    afx_msg void OnBnClickedBtnExpSkin0();
    afx_msg void OnBnClickedBtnExpSkin1();
    afx_msg void OnBnClickedBtnExpSkin2();
    afx_msg void OnBnClickedBtnExpSkin3();
    afx_msg void OnBnClickedBtnExpSkin4();
    afx_msg void OnBnClickedBtnExpSkin5();
protected:
    virtual void PostNcDestroy();
public:
    afx_msg void OnBnClickedBtnCoordStdRighthand();
    afx_msg void OnBnClickedBtnCoordStdLefthand();
    afx_msg void OnBnClickedBtnCoordMindpower();
    afx_msg void OnBnClickedBtnSkinAnimBone();
    afx_msg void OnBnClickedBtnSkinAnimMatrix();
    afx_msg void OnBnClickedBtnExpBoundingobject();
    afx_msg void OnBnClickedBtnBoneKeyMat43();
    afx_msg void OnBnClickedBtnBoneKeyMat44();
    afx_msg void OnBnClickedBtnBoneKeyQuat();
    afx_msg void OnBnClickedBtnExpSkin6();
    afx_msg void OnBnClickedBtnExpSkin7();
};
