//===================================================================
/** \file  
 *  Filename: MeshPlane.h
 *  Desc:     显示一个背景网格。
 *  His:      王凯 @ 6/12 2003 16:18
 */
//===================================================================

#pragma once

//#include <vector>
//#include <algorithm>

#include "coordinates.h"


//!单元格大小
#define  BASESIZE   1.0f
//!每一边单元格的1/2数量
#define  BASECOUNT  8

//!定义渲染选项
enum  RENDER_OPTION{ SOLID = 0, WRITEFRAME, POINTSD};

//! 自定义顶点结构 ========================================================
#define O_PLANE_FVF (D3DFVF_XYZ|D3DFVF_DIFFUSE/*|D3DFVF_TEX1*/)

typedef struct {
    float m_fx, m_fy, m_fz;
	DWORD m_dwDiffuse;
    //float m_fu, m_fv;
} PLANE_VERTEX;

//==================================================================
//! 定义一个单元格
typedef struct basemesh{
	//! 0,2顶点代表一个单元格.高度值不用.
	D3DXVECTOR3  m_sVer2d[4];
	BOOL         m_bIsUsed;
	float        m_fHeight;
	BOOL operator == ( CONST basemesh& tes )
	{
		if((m_sVer2d[0] == tes.m_sVer2d[0])&&(m_sVer2d[2] == tes.m_sVer2d[2]))
			return TRUE;
		return FALSE;
	}
	void operator = ( CONST basemesh& tes )
	{
		m_sVer2d[0] = tes.m_sVer2d[0];
		m_sVer2d[1] = tes.m_sVer2d[1];
		m_sVer2d[2] = tes.m_sVer2d[2];
		m_sVer2d[3] = tes.m_sVer2d[3];
		m_bIsUsed = tes.m_bIsUsed;
		m_fHeight = tes.m_fHeight;
	}

	//!判断一个三角形是否在一个2D的单元格内
	bool PointInMesh(D3DXVECTOR3 *_sPoint)
	{
		for(int n = 0; n < 3; n++)
		{
			if((_sPoint[n].x > m_sVer2d[0].x) && (_sPoint[n].z > m_sVer2d[0].z)
				&& (_sPoint[n].x < m_sVer2d[2].x) && (_sPoint[n].z < m_sVer2d[2].z))
			{
				return true;
			 }
		}
		return false;
	}
	//!判断一个射线是否穿过格子
	bool RayInMesh(D3DXVECTOR3 *vRayPos, D3DXVECTOR3 *vRayDir)
	{
		if(D3DXIntersectTri(&m_sVer2d[0],&m_sVer2d[1],&m_sVer2d[2],
			vRayPos, vRayDir,NULL,NULL,NULL) || 
			D3DXIntersectTri(&m_sVer2d[0],&m_sVer2d[2],&m_sVer2d[3],
			vRayPos, vRayDir,NULL,NULL,NULL))
			return true;
		return false;
	}

	void FindHeight(D3DXVECTOR3 *vVer)
	{
		//!得以三角形的法向量初始化一个D3DXPLANE
		D3DXVECTOR3 t_vNormal;
		D3DXVec3Cross(&t_vNormal,&(vVer[1] - vVer[0]),&(vVer[2] - vVer[0]));
		D3DXVec3Normalize(&t_vNormal,&t_vNormal);
		D3DXPLANE pOut;
		D3DXPlaneFromPointNormal(&pOut, &vVer[0],&t_vNormal);
		D3DXPlaneNormalize(&pOut,&pOut);
		
		D3DXVECTOR3 ver;
		for(int n = 0; n < 4; n++)
		{
			if(D3DXPlaneIntersectLine(&ver, &pOut,&m_sVer2d[n],&D3DXVECTOR3(0,1,0)))
			{
				if(ver.y > m_fHeight)
					m_fHeight = ver.y;
			}
		}
	}
	void FindHeightwithVer(D3DXVECTOR3 *vVer)
	{
		if(m_fHeight < vVer->y)
			m_fHeight = vVer->y;
	}
	void FindHeightwithFloat(float _f)
	{
		if(m_fHeight < _f)
			m_fHeight = _f;
	}
}BASE_MESH;
//////////////

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
class CMeshPlane
{
public:
	CMeshPlane(void);
	~CMeshPlane(void);

public:
	//!创建网格
	bool Create( LPDIRECT3DDEVICE8	_pDev);

	//!得到渲染选项
	RENDER_OPTION GetRenderOption(){return m_eOption;}
	//!设置渲染选项
	void SetRenderOption(RENDER_OPTION _eOption){ m_eOption = _eOption;}

	//!渲染
	void Render();


	//!释放
	void Release();

	//!得到格子数据
	std::vector<BASE_MESH> *GetMesh(){return &m_VECMeshs;}


	//!设置格子使用否
	void SetMesh(BASE_MESH* _pMesh);
	void SetMeshTrue(BASE_MESH* _pMesh);
	void SetMeshAllFalse();
private:
	//!3D设备
	LPDIRECT3DDEVICE8	m_pDev;

	LPDIRECT3DVERTEXBUFFER8 m_pVB;

	//!临时顶点数据
	PLANE_VERTEX               **m_pVECvers;
	std::vector<PLANE_VERTEX>     m_VECVers;

	//!创建的所有格子
	std::vector<BASE_MESH>     m_VECMeshs;

	//!每一行的数量
	DWORD  m_dwLineCount;
	//!全部的顶点数量
	DWORD  m_dwAllCount;
    //!渲染选项
	RENDER_OPTION  m_eOption;

	//!显示中心坐标
	CCoordinates        m_cCoord;
};
