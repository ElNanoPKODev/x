#include "StdAfx.h"
#include "../../proj/EffectEditer.h"

#include "coordinates.h"


CCoordinates::CCoordinates(void)
{
	m_x[0] = D3DXVECTOR3(0,0.01f,0);
	m_x[1] = D3DXVECTOR3(10,0,0);
	m_y[0] = D3DXVECTOR3(0,0.01f,0);
	m_y[1] = D3DXVECTOR3(0,10,0);
	m_z[0] = D3DXVECTOR3(0,0.01f,0);
	m_z[1] = D3DXVECTOR3(0,0,10);

	D3DUtil_InitMaterial( mtrl,0.0f,1.0f,1.0f,1.0f);
}

CCoordinates::~CCoordinates(void)
{
}

void CCoordinates::Render(LPDIRECT3DDEVICE8	_pDev)
{
	D3DXMATRIX  matWorld;
	D3DXMatrixIdentity( &matWorld );
	_pDev->SetTransform(D3DTS_WORLDMATRIX(0),&matWorld);

	_pDev->SetRenderState(D3DRS_ZENABLE,D3DZB_TRUE);

	_pDev->SetRenderState(D3DRS_LIGHTING, TRUE);
	_pDev->SetRenderState(D3DRS_AMBIENT,
		                  0xffffffff);

    _pDev->SetVertexShader(D3DFVF_XYZ);

    mtrl.Diffuse.r = mtrl.Ambient.r = 0.0f;
    mtrl.Diffuse.g = mtrl.Ambient.g = 1.0f;
    mtrl.Diffuse.b = mtrl.Ambient.b = 1.0f;

	_pDev->SetMaterial( &mtrl ); 
	_pDev->DrawPrimitiveUP(D3DPT_LINELIST, 1,m_x, sizeof(D3DXVECTOR3) );

    mtrl.Diffuse.r = mtrl.Ambient.r = 1.0f;
    mtrl.Diffuse.g = mtrl.Ambient.g = 0.0f;
    mtrl.Diffuse.b = mtrl.Ambient.b = 1.0f;

	_pDev->SetMaterial( &mtrl ); 
	_pDev->DrawPrimitiveUP(D3DPT_LINELIST, 1,m_y, sizeof(D3DXVECTOR3) );

    mtrl.Diffuse.r = mtrl.Ambient.r = 0.0f;
    mtrl.Diffuse.g = mtrl.Ambient.g = 0.0f;
    mtrl.Diffuse.b = mtrl.Ambient.b = 1.0f;

	_pDev->SetMaterial( &mtrl ); 
	_pDev->DrawPrimitiveUP(D3DPT_LINELIST, 1,m_z, sizeof(D3DXVECTOR3) );

}