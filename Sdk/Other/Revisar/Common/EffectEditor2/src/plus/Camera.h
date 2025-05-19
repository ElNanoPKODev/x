//===================================================================
/** \file  
 *  Filename: Camera.h
 *  Desc:     实现相机类。
 *  His:      王凯 @ 6/12 2003 16:18
 */
//===================================================================

#pragma once
#include "../src/d3d/d3dutil.h"

//定义视图类型
enum ViewType{ V_FREE, V_TOP};
//定义移动类型
enum MoveType{ M_XYZ, M_FRONTBACK, M_R_Y, M_R_XZ};

//===================================================================
/** \class  
 *  classname: CCamera
 *  Desc:     实现一个相机派生类。用来控制相机的移动
 *         
 *  函数：
 *     相机移动：
 *            void MoveCameraLeftRight(float _fDis);
 *            \param: _fDis
					相机移动的距离.
 *            desc:  相机的左右移动;
 *
 *			  void MoveCameraUpDown(float _fDis);
 *            param: _fDis
					相机移动的距离..
 *            desc:   相机的上下移动;

 *			  void MoveCameraForwardBack(float _fDis);
 *            param: _fDis
					相机移动的距离..
 *            desc:   相机的前后移动;

	   相机旋转：
 *		     void RotationCameraY(float _Angle);
 *            param: _Angle
					相机旋转的角度
 *            desc:  相机围Y轴旋转

 *            void RotationCameraXZ(float _Angle);
 *            param1: _Angle
					相机旋转的角度
 *            desc:   相机围XZ轴旋转

 *  His:      王凯 @ 6/12 2003 16:18
 */
//===============================
class CCamera :public CD3DCamera
{
public:
	CCamera(void);
	~CCamera(void);
private:
	//!按照方向_sNormal移动相机_fDist的距离
	void MoveCamera(D3DXVECTOR3 &_sNormal, float _fDis);

	//!围绕点Point和某一个轴aixs旋转angle的角度，得到旋转矩阵
	D3DXMATRIX * GetMatrixRotaPoint(D3DXMATRIX *pout,D3DXVECTOR3 *Point,\
						 D3DXVECTOR3 *aixs,float angle);
public:
	//!左右移动相机
	void MoveCameraLeftRight(float _fDis);
	//!上下移动相机
	void MoveCameraUpDown(float _fDis);
	//!前后移动相机
	void MoveCameraForwardBack(float _fDis);
	//void MoveCameraBack(float _fDis);

	//!围绕Y轴和lookat来旋转相机
	void RotationCameraY(float _Angle);
	//!围绕XZ轴和lookat来旋转相机
	void RotationCameraXZ(float _Angle);

	//!设置顶视图
	void SetTopView();
	//!设置自由视图
	void SetFreeView();
	//!设置相机到程序启动时的位置
	void SetOrgView();

	//!是否顶视图
	bool IsTopView(){ return (m_eViewType == V_TOP);}
public:
	//!设置视矩阵
	void SetViewMatrix( LPDIRECT3DDEVICE8	_pDev){ _pDev->SetTransform(D3DTS_VIEW,&m_matView);}
	//!设置投影矩阵
	void SetProMatrix( LPDIRECT3DDEVICE8	_pDev){_pDev->SetTransform(D3DTS_PROJECTION,&m_matProj);}
private:
	//!视图类型
	ViewType  m_eViewType;

	//!保存原来的自由视图的视变量
	D3DXVECTOR3  m_sOldPos;
	D3DXVECTOR3  m_sOldLookat;
	D3DXVECTOR3  m_sOldUp;
};
