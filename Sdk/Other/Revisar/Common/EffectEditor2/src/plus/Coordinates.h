#pragma once

class CCoordinates
{
public:
	CCoordinates(void);
	~CCoordinates(void);

public:
	void Render(LPDIRECT3DDEVICE8	_pDev);
private:
	D3DMATERIAL8 mtrl;

	D3DXVECTOR3 m_x[2];
	D3DXVECTOR3 m_y[2];
	D3DXVECTOR3 m_z[2];
};

