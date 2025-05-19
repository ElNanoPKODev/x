#pragma once
#ifndef _INCLUDED_SSE
#define _INCLUDED_SSE

//#if defined __cplusplus
//extern "C" { /* Begin "C" */
//	/* Intrinsics use C name-mangling. */
//#endif /* __cplusplus */

#include <xmmintrin.h>

union Float128 
{
	__m128	m;
	float val[4];
	float x, y, z, w;
};
Float128 t;

inline	float	G_sqrt(float fval)
{
	return *(float*)&(_mm_sqrt_ps(_mm_set_ps1(fval)));
}



//#if defined __cplusplus
//}; /* End "C" */
//#endif /* __cplusplus */

#endif