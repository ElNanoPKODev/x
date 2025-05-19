
/* * * * * * * * * * * * * * * * * * * *

    数据类型
    Jampe
    2006/6/28

 * * * * * * * * * * * * * * * * * * * */


#if !defined __DATATYPE_H__
#define __DATATYPE_H__


#include <windows.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <eh.h>
#define EXCEPTION_NO_MEMORY                         STATUS_NO_MEMORY


#define LOG_SERVER          1
#define INFO_SERVER         2


typedef unsigned int    uint;
typedef unsigned long   ulong;
typedef unsigned short  ushort;
typedef unsigned char   uchar;
typedef unsigned char   byte;

#define SAFE_DELETE(p)          if(p) {delete p; p = 0;}
#define SAFE_DELETE_ARRAY(p)    if(p) {delete[] p; p = 0;}


void __onerror(unsigned t, EXCEPTION_POINTERS * pexp);
#define CatchException()                _set_se_translator(__onerror)

#endif
