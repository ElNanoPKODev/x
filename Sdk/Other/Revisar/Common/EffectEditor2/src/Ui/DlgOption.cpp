// DlgOption.cpp : implementation file
//

#include "stdafx.h"
#include "../../proj/EffectEditer.h"

#include ".\dlgoption.h"


// CDlgOption dialog

IMPLEMENT_DYNAMIC(CDlgOption, CDialog)
CDlgOption::CDlgOption(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgOption::IDD, pParent)
	, m_CstrTexPath(_T(""))
	, m_CstrMeshPath(_T(""))
{
}

CDlgOption::~CDlgOption()
{
}

void CDlgOption::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDITTEXPATH, m_CstrTexPath);
	DDX_Text(pDX, IDC_EDITMESHPATH, m_CstrMeshPath);
}


BEGIN_MESSAGE_MAP(CDlgOption, CDialog)
	ON_BN_CLICKED(IDC_BUTSELTEXPATH, OnBnClickedButseltexpath)
	ON_BN_CLICKED(IDC_BUTSELMESHPATH, OnBnClickedButselmeshpath)
END_MESSAGE_MAP()


// CDlgOption message handlers
void CDlgOption::BrowerFolder(CString &_str)
{
	BROWSEINFO bi;
	char Buffer[MAX_PATH];
	//初始化入口参数bi开始
	bi.hwndOwner = NULL;
	bi.pidlRoot = NULL;
	bi.pszDisplayName = Buffer;//此参数如为NULL则不能显示对话框
	bi.lpszTitle = _T("修改接收路径");
	bi.ulFlags = 0;
	bi.lpfn = NULL;
	bi.iImage=IDR_MAINFRAME;
	//初始化入口参数bi结束
	LPITEMIDLIST pIDList = SHBrowseForFolder(&bi);//调用显示选择对话框
	if(pIDList)
	{
		SHGetPathFromIDList(pIDList, Buffer);
		//取得文件夹路径到Buffer里
		_str = Buffer;//将路径保存在一个CString对象里
	}
	LPMALLOC lpMalloc;
	if(FAILED(SHGetMalloc(&lpMalloc))) return;
	//释放内存
	lpMalloc->Free(pIDList);
	lpMalloc->Release();
}

void CDlgOption::OnBnClickedButseltexpath()
{
	BrowerFolder(m_CstrTexPath);
	UpdateData(FALSE);
}

void CDlgOption::OnBnClickedButselmeshpath()
{
	BrowerFolder(m_CstrMeshPath);
	UpdateData(FALSE);
}
