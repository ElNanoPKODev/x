


#if !defined __LOG_H__
#define __LOG_H__

#include "lock.h"
#include <stdio.h>
#include <map>

using std::map;

#define __LN            "\n"
#define __BEGIN_TRY     try{
#define __END_TRY       }catch(...){LGPRT("ServMgr", "Exception File: %s, Function: %s, Line: %i, ThreadID: %li"__LN, __FILE__, __FUNCTION__, __LINE__, GetCurrentThreadId());}

#ifndef SAFE_DELETE
#define SAFE_DELETE(p)          if(p) {delete p; p = 0;}
#endif
#ifndef SAFE_DELETE_ARRAY
#define SAFE_DELETE_ARRAY(p)    if(p) {delete[] p; p = 0;}
#endif

#define LOG_FOLDER          "LOG"

class Log
{
public:
    Log();
    virtual ~Log();

    void Open(const char* file);
    void Close();
    void WriteLog(const char* buf, bool wiztm = true);

private:
    FILE*   m_file;
    Lock    m_lock;
};


typedef map<const char*, Log*>     LogList;


class LogMgr
{
public:
    LogMgr();
    virtual ~LogMgr();
    Log* GetFileHandle(const char* filename);
    void CloseLogFile(const char* filename);
    void CloseAllLogFile();
private:
    char        m_path[260];
    LogList     m_list;
    Lock        m_lock;
};


//  带时间
void LG(const char* filename, const char* format, ...);
void LGFMT(const char* filename, const char* format, va_list param);
void LGPRT(const char* filename, const char* format, ...);

//  不带时间
void LG2(const char* filename, const char* format, ...);
void LGFMT2(const char* filename, const char* format, va_list param);
void LGPRT2(const char* filename, const char* format, ...);

void CloseAllLog();

#endif

