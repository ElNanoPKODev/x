


#if !defined __LOG_H__
#define __LOG_H__

#include "lock.h"
#include <stdio.h>
#include <map>

using std::map;



class Log
{
public:
    Log();
    virtual ~Log();

    void Open(const char* file);
    void Close();
    void WriteLog(const char* buf);

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
    LogList     m_list;
    Lock        m_lock;
};



void LG(const char* filename, const char* format, ...);
void LGFMT(const char* filename, const char* format, va_list param);
void LGPRT(const char* filename, const char* format, ...);
void CloseAllLog();

#endif

