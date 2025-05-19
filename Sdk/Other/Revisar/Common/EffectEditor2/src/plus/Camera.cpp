//===================================================================
/** \file  
 *  Filename: Camera.cpp
 *  Desc:     实现相机类。
 *  His:      王凯 @ 6/12 2003 16:18
 */
//===================================================================

#include "StdAfx.h"
#include "../../proj/EffectEditer.h"

#include "camera.h"


/** \brief
 * 使用父类初始化VIEW和PROJECT变量
 *
 */
CCamera::CCamera(void)
{
	CD3DCamera::CD3DCamera();
	
	//SetFreeView();
}

CCamera::~CCamera(void)
{
}

/** \brief
 * 设置顶视图， 将原先自由视图的位置保存下来
 *
 */
void CCamera::SetTopView()
{
	m_eViewType =  V_TOP;
	m_sOldPos = m_vEyePt;
	m_sOldLookat = m_vLookatPt;
	m_sOldUp = D3DXVECTOR3(0.0f,1.0f,0.0f);

    SetViewParams( D3DXVECTOR3(0.0f,100.0f,0.0f), D3DXVECTOR3(0.0f,0.0f,0.0f),
                   D3DXVECTOR3(0.0f,0.0f,1.0f) );
}

/** \brief
 * 设置自由视图， 使用原先自由视图的位置
 *
 */
void CCamera::SetFreeView()
{
	m_eViewType =  V_FREE;
    SetViewParams( m_sOldPos, m_sOldLookat, m_sOldUp );
}

/** \brief
 * 设置自由视图,将相机移动到程序启动的位置
 *
 */
void CCamera::SetOrgView()
{
	m_eViewType =  V_FREE;
    SetViewParams( D3DXVECTOR3(0.0f,0.0f,-10.0f), D3DXVECTOR3(0.0f,0.0f,0.0f),
                   D3DXVECTOR3(0.0f,1.0f,0.0f) );

}

/** \brief
 * 按照方向_sNormal移动相机_fDist的距离
 *
 */
void CCamera::MoveCamera(D3DXVECTOR3 &_sNormal, float _fDis)
{
    D3DXVECTOR3 Nor;
    D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = _sNormal * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);
	tmp = t_lookat;
	D3DXVec3Add(&t_lookat,&tmp,&Nor);

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

/** \brief
 * 围绕点Point和某一个轴aixs旋转angle的角度，得到旋转矩阵

 * 算法描述：
 *     先得到平移矩阵，平移到-Point->x, -Point->y, -Point->z，
 *     然后得到旋转矩阵，围绕轴aixs旋转angle的角度,
 *     矩阵联级，将联级矩阵与平移到Point->x, Point->y, Point->z的矩阵再次联级。
 *     将结果返回。
 *
 */
D3DXMATRIX * CCamera::GetMatrixRotaPoint(D3DXMATRIX *pout,D3DXVECTOR3 *Point,\
						 D3DXVECTOR3 *aixs,float angle)
{
	D3DXMATRIX r, r2;
	D3DXMATRIX r1 = D3DXMATRIX(1, 0, 0, 0,
                               0, 1, 0, 0,
                               0, 0, 1, 0,
                               -Point->x, -Point->y, -Point->z, 1);
	D3DXMatrixRotationAxis(&r2,aixs,angle);
	r = r1 * r2;
    r1 = D3DXMATRIX(1, 0, 0, 0,
                    0, 1, 0, 0,
                    0, 0, 1, 0,
                    Point->x, Point->y, Point->z, 1);
	r = r * r1;
	*pout = r;
	return pout;
}

/** \brief
 * 按照cross方向（也就是眼睛的左右方向）移动相机
 *
 */
void CCamera::MoveCameraLeftRight(float _fDis)
{
	//MoveCamera(m_vCross, _fDis);
	D3DXVECTOR3 Nor = m_vCross;
	Nor.z = 0;
	D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = Nor * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);

	tmp = t_lookat;
	D3DXVec3Add(&t_lookat,&tmp,&Nor);
	t_lookat.z = 0;

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

/** \brief
 * 按照头顶方向移动相机
 *
 */
void CCamera::MoveCameraUpDown(float _fDis)
{
	D3DXVECTOR3 Nor = m_vView;
	Nor.z = 0;
	D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = Nor * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);

	tmp = t_lookat;
	D3DXVec3Add(&t_lookat,&tmp,&Nor);
	t_lookat.z = 0;

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

/** \brief
 * 按照眼睛看的方向移动相机(前后移动)
 *
 */
void CCamera::MoveCameraForwardBack(float _fDis)
{
	//MoveCamera(m_vView, _fDis);
	D3DXVECTOR3 Nor;
	D3DXVECTOR3 tmp;

	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	Nor = m_vView * _fDis;
	tmp = t_eyeat;
	D3DXVec3Add(&t_eyeat,&tmp,&Nor);

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0.0f,0.0f,1.0f));
}

//void CCamera::MoveCameraBack(float _fDis)
//{
//	MoveCamera(-m_vView, _fDis);
//}

/** \brief
 * 按照头顶的方向旋转相机(左右旋转)
 *
 */
void CCamera::RotationCameraY(float _Angle)
{
    D3DXMATRIX t_mat;
	D3DXVECTOR4 t_ver4;
	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	GetMatrixRotaPoint(&t_mat,&t_lookat,&m_vUpVec, _Angle);
	D3DXVec3Transform(&t_ver4,& t_eyeat,&t_mat);
	t_eyeat.x = t_ver4.x;
	t_eyeat.y = t_ver4.y;
	t_eyeat.z = t_ver4.z;
		
	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
}

/** \brief
 * 按照眼睛左右的方向旋转相机(上下旋转)
 *
 */
void CCamera::RotationCameraXZ(float _Angle)
{
    D3DXMATRIX t_mat;
	D3DXVECTOR4 t_ver4;
	D3DXVECTOR3 t_eyeat = m_vEyePt;
	D3DXVECTOR3 t_lookat = m_vLookatPt;

	GetMatrixRotaPoint(&t_mat,&t_lookat,&m_vCross, _Angle);
	D3DXVec3Transform(&t_ver4,& t_eyeat,&t_mat);
	t_eyeat.x = t_ver4.x;
	t_eyeat.y = t_ver4.y;
	t_eyeat.z = t_ver4.z;

	if(m_eViewType ==  V_TOP)
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
	else
		SetViewParams(t_eyeat,t_lookat,D3DXVECTOR3(0,0,1));
}