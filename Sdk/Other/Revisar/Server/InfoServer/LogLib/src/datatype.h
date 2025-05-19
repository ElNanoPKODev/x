
/* * * * * * * * * * * * * * * * * * * *

    数据类型
    Jampe
    2006/6/28

 * * * * * * * * * * * * * * * * * * * */


#if !defined __DATATYPE_H__
#define __DATATYPE_H__


#include <assert.h>

typedef unsigned int    uint;
typedef unsigned long   ulong;
typedef unsigned short  ushort;
typedef unsigned char   uchar;
typedef unsigned char   byte;

#ifndef SAFE_DELETE
#define SAFE_DELETE(p)          if(p) {delete p; p = 0;}
#endif
#ifndef SAFE_DELETE_ARRAY
#define SAFE_DELETE_ARRAY(p)    if(p) {delete[] p; p = 0;}
#endif


#endif
