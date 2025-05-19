// EffectEditerDoc.cpp :  CEffectEditerDoc 类的实现
//

#include "stdafx.h"
#include "EffectEditer.h"

#include "EffectEditerDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CEffectEditerDoc

IMPLEMENT_DYNCREATE(CEffectEditerDoc, CDocument)

BEGIN_MESSAGE_MAP(CEffectEditerDoc, CDocument)
END_MESSAGE_MAP()


// CEffectEditerDoc 构造/析构

CEffectEditerDoc::CEffectEditerDoc()
{
	// TODO: 在此添加一次性构造代码

}

CEffectEditerDoc::~CEffectEditerDoc()
{
}

BOOL CEffectEditerDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: 在此添加重新初始化代码
	// (SDI 文档将重用该文档)

	return TRUE;
}




// CEffectEditerDoc 序列化

void CEffectEditerDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: 在此添加存储代码
	}
	else
	{
		// TODO: 在此添加加载代码
	}
}


// CEffectEditerDoc 诊断

#ifdef _DEBUG
void CEffectEditerDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CEffectEditerDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG


// CEffectEditerDoc 命令
