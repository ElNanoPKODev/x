//===================================================================
/** \file  
 *  Filename: MeshPlane.cpp
 *  Desc:     显示一个背景网格。
 *  His:      王凯 @ 6/12 2003 16:18
 */
//===================================================================

#include "StdAfx.h"
#include "../../proj/EffectEditer.h"

#include "meshplane.h"

//===================================================================
/** \class  
 *  classname: CMeshPlane
 *  Desc:     用来显示一个背景网格。
 *         
 *  函数：
 *            bool Create( LPDIRECT3DDEVICE8	_pDev);
 *            param: _pDev
					3d设备
 *            desc:  使用算法生成网格顶点，成功返回true;
 * */
//===============================

/** \brief
 * 构造函数
 *
 */
CMeshPlane::CMeshPlane(void)
{
	m_pDev = NULL;
	m_pVB = NULL;
	m_pVECvers = NULL;
	m_eOption = WRITEFRAME;
}

CMeshPlane::~CMeshPlane(void)
{
	Release();
}

/** \brief
 * 创建网格

 * \parma: _pDev
 *      3D设备
 *
 */
bool CMeshPlane::Create(LPDIRECT3DDEVICE8	_pDev)
{
	m_pDev = _pDev;
	//!计算整个网格的1/4大小
	float  t_fsize = BASECOUNT * BASESIZE;
	//!计算每一行需要多少顶点
	m_dwLineCount = BASECOUNT *2 + 1;
	//!计算全部的顶点数量
	m_dwAllCount  = m_dwLineCount * m_dwLineCount;

	D3DXVECTOR3 t_sMin( -t_fsize, 0, -t_fsize);
	D3DXVECTOR3 t_sMax(t_fsize, 0, t_fsize);
	D3DXVECTOR3 t_sMin1(-t_fsize,0,t_fsize);
	D3DXVECTOR3 t_sMax1(t_fsize,0,-t_fsize);

	m_pVECvers = new PLANE_VERTEX*[m_dwLineCount];

	//!计算每一行的顶点坐标
	float t_fwidth = t_fsize * 2;

	float t_x = -t_fsize;
	float t_z = t_fsize;
	float t_zz = -t_fsize;
	for( UINT n = 0; n <  m_dwLineCount; n++)
	{
		m_pVECvers[n] = new PLANE_VERTEX[m_dwLineCount];
		for(UINT m = 0; m <  m_dwLineCount; m++)
		{
			m_pVECvers[n][m].m_fx = t_x;
			m_pVECvers[n][m].m_fy = 0;
			m_pVECvers[n][m].m_fz = t_z;
			m_pVECvers[n][m].m_dwDiffuse = 0xffffffff;

			//m_pVECvers[n][m].m_fu = (t_x  - -t_fsize) / t_fwidth;
			//m_pVECvers[n][m].m_fv = (t_zz  - -t_fsize) / t_fwidth;

			m_VECVers.push_back(m_pVECvers[n][m]);
			t_x += BASESIZE;
			//t_zz += BASESIZE;
			//char ss[64];
			//sprintf(ss,"%f,%f",m_pVECvers[n][m].m_fu, m_pVECvers[n][m].m_fv);
			//AfxMessageBox(ss);


		}
		t_x = -t_fsize;
		t_zz += BASESIZE;
		t_z -= BASESIZE;
	}
	//!计算每一个单元格
	for( UINT q = 0; q <  m_dwLineCount-1; q++)
	{
		for(UINT p = 0; p < m_dwLineCount-1; p ++)
		{
			BASE_MESH t_basemesh;
			t_basemesh.m_sVer2d[0].x = m_pVECvers[q+1][p].m_fx;
			t_basemesh.m_sVer2d[0].y = 0;
			t_basemesh.m_sVer2d[0].z = m_pVECvers[q+1][p].m_fz;

			t_basemesh.m_sVer2d[1].x = m_pVECvers[q][p].m_fx;
			t_basemesh.m_sVer2d[1].y = 0;
			t_basemesh.m_sVer2d[1].z = m_pVECvers[q][p].m_fz;

			t_basemesh.m_sVer2d[2].x = m_pVECvers[q][p+1].m_fx;
			t_basemesh.m_sVer2d[2].y = 0;
			t_basemesh.m_sVer2d[2].z = m_pVECvers[q][p+1].m_fz;

			t_basemesh.m_sVer2d[3].x = m_pVECvers[q+1][p+1].m_fx;
			t_basemesh.m_sVer2d[3].y = 0;
			t_basemesh.m_sVer2d[3].z = m_pVECvers[q+1][p+1].m_fz;

			t_basemesh.m_bIsUsed = FALSE;
			t_basemesh.m_fHeight = 0.0f;
			
			m_VECMeshs.push_back(t_basemesh);
			
			//char ss[64];
			//sprintf(ss,"%f,%f--%f,%f",t_basemesh.m_sVer2d[1].x,t_basemesh.m_sVer2d[1].z,
			//	t_basemesh.m_sVer2d[3].x, t_basemesh.m_sVer2d[3].z);
			//_DbgOut("", m_VECMeshs.size(), S_OK, ss );
			//AfxMessageBox(ss);
		}
	}
	//_DbgOut("", m_VECMeshs.size(), S_OK, "" );
	//!创建顶点缓冲
	if(FAILED(m_pDev->CreateVertexBuffer(
		4 *sizeof(D3DXVECTOR3),//只创建一个格子的大小
        D3DUSAGE_WRITEONLY|D3DUSAGE_DYNAMIC,
        D3DFVF_XYZ,
        D3DPOOL_DEFAULT,
        &m_pVB)))
	{
		for( UINT w = 0; w <  m_dwLineCount; w++)
		{
			delete []m_pVECvers[w];
		}
		delete []m_pVECvers;
		m_pVECvers = NULL;

		return false;
	}

	for( UINT w = 0; w <  m_dwLineCount; w++)
	{
		delete []m_pVECvers[w];
	}
	delete []m_pVECvers;
	m_pVECvers = NULL;
	return true;
}

/** \brief
 * 渲染格子
 *
 */
void CMeshPlane::Render()
{
	m_pDev->SetTexture(0, NULL);
///*
	D3DXMATRIX  matWorld;
	D3DXMatrixRotationX( &matWorld,G_fDEG90 );
	m_pDev->SetTransform(D3DTS_WORLDMATRIX(0),&matWorld);

	//m_pDev->SetRenderState(D3DRS_LIGHTING, TRUE);
	//m_pDev->SetRenderState(D3DRS_AMBIENT,
	//	                  0xffffffff);

	D3DMATERIAL8 mtrl;
	D3DUtil_InitMaterial( mtrl,66/255,66/255,66/255,1.0f);

	m_pDev->SetMaterial( &mtrl ); 

	m_pDev->SetRenderState(D3DRS_SHADEMODE,D3DSHADE_GOURAUD);

	m_pDev->SetRenderState(D3DRS_ALPHABLENDENABLE  ,false );
    m_pDev->SetRenderState(D3DRS_SRCBLEND ,D3DBLEND_SRCCOLOR );
   	m_pDev->SetRenderState(D3DRS_DESTBLEND ,D3DBLEND_SRCCOLOR );

	switch(m_eOption)
	{
	case SOLID:
		m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_SOLID);
		break;
	case WRITEFRAME:
		m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_WIREFRAME);
		break;
	case POINTSD:
		m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_POINT);
		break;
	}
    m_pDev->SetVertexShader(D3DFVF_XYZ);
 //   m_pDev->SetStreamSource(0, m_pVB, sizeof(D3DXVECTOR3));



	for(UINT n = 0; n < m_VECMeshs.size(); n++)
	{
//	    BYTE* t_pVertex;
//	    m_pVB->Lock(0, 0, &t_pVertex, D3DLOCK_DISCARD);
//		memcpy(t_pVertex, m_VECMeshs[n].m_sVer2d, 4*sizeof(D3DXVECTOR3));
//		m_pVB->Unlock();

		//m_pDev->DrawPrimitive(D3DPT_POINTLIST,  0,4);

		//m_pDev->SetStreamSource(0, NULL, 0);
		if(m_VECMeshs[n].m_bIsUsed)
		{
			if(m_eOption == SOLID)
				m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_WIREFRAME);
			if(m_eOption == WRITEFRAME||m_eOption == POINTSD)
				m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_SOLID);
		}
		m_pDev->DrawPrimitiveUP(D3DPT_TRIANGLEFAN, 2,m_VECMeshs[n].m_sVer2d, sizeof(D3DXVECTOR3) );
		if(m_VECMeshs[n].m_bIsUsed)
		{
			if(m_eOption == SOLID)
				m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_SOLID);
			if(m_eOption == WRITEFRAME)
				m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_WIREFRAME);
			if(m_eOption == POINTSD)
				m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_POINT);
		}
	}
	m_pDev->SetRenderState(D3DRS_ALPHABLENDENABLE  ,FALSE);
	m_pDev->SetRenderState(D3DRS_FILLMODE ,D3DFILL_SOLID);
//*/
	//!渲染坐标
	//m_cCoord.Render(m_pDev);
}

/** \brief
 * 释放资源
 *
 */
void CMeshPlane::Release()
{
	SAFE_RELEASE(m_pVB);

	if(m_pVECvers)
	{
		for( UINT w = 0; w <  m_dwLineCount; w++)
		{
			delete []m_pVECvers[w];
		}
		delete []m_pVECvers;
		m_pVECvers = NULL;
	}
	m_VECVers.clear();
	m_VECMeshs.clear();
}

/** \brief
 * 设置格子是否使用

 * \param1: _pMesh
 *     用来对比的单元格。如果某一个格子和这个格子相等，则设置这个格子与那个格子的使用一样
 */
void CMeshPlane::SetMesh(BASE_MESH* _pMesh)
{
//	std::vector<BASE_MESH>::iterator it = std::find( m_VECMeshs.begin(),m_VECMeshs.end(), *_pMesh );
//	if( it == m_VECMeshs.end())
//	{
//		return;
//	}
		
//	BASE_MESH *t_s = (BASE_MESH*)&it;
//	t_s->m_bIsUsed = false;
	for(UINT n = 0; n < m_VECMeshs.size(); n++)
	{
		if(*_pMesh == m_VECMeshs[n])
		{
			m_VECMeshs[n].m_bIsUsed = _pMesh->m_bIsUsed;
			return;
		}
	}
	return;
}

/** \brief
 * 设置格子使用

 * param1: _pMesh
 *     用来对比的单元格。如果某一个格子和这个格子相等，则设置这个格子使用
 */
void CMeshPlane::SetMeshTrue(BASE_MESH* _pMesh)
{
	for(UINT n = 0; n < m_VECMeshs.size(); n++)
	{
		if(*_pMesh == m_VECMeshs[n])
		{
			m_VECMeshs[n].m_bIsUsed = TRUE;
			return;
		}
	}
	return;
}

/** \brief
 * 将全部格子设置不使用
 *
 */
void CMeshPlane::SetMeshAllFalse()
{
	for(UINT n = 0; n < m_VECMeshs.size(); n++)
	{
		m_VECMeshs[n].m_bIsUsed = FALSE;
	}
}