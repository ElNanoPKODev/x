#ifdef WIN32
    #pragma warning(disable : 4251)
    #pragma warning(disable : 4786)
#endif

#include <stdio.h>
#include <math.h>

#include <string>
#include <list>
#include <vector>

#ifndef TAG_UTIL
#define TAG_UTIL

#ifdef WIN32

#include <io.h>
#include <direct.h>

    #ifndef _MFC
        #ifndef _WINDOWS_    
            #include <windows.h>
        #endif
    #endif
    

#else
    #define LINUX
    
    #include <unistd.h>
    #include <stdio.h>
    #include <string.h>
	#include <stdarg.h>

//    #include <sys/io.h>
    #include <sys/stat.h>
    #include <sys/types.h>
    #include <sys/time.h>
    #include <sys/dir.h>
    
    #define VOID    void
    #define BYTE    unsigned char
    #define LPBYTE  unsigned char*
    #define BOOL    bool
    #define DWORD   unsigned long
    #define LPCSTR const char*

    #define TRUE true
	#define FALSE false

    #define HANDLE void*

	#ifndef CALLBACK
		#define CALLBACK
	#endif

#define _LOG
#define _LOG_CONSOLE

#endif

#ifdef WIN32
    #define MSGSTR(str)		MessageBox(NULL , str , "msg" , 0)
    #define MSGNUM(num)		{ char szNum[6]; itoa(num , szNum , 10); MSGSTR(szNum); }
    #define MSGFLOAT(flo)	{ char szNum[6]; sprintf(szNum , "%f" , flo); } 
#endif

void CreateConsole(int width, int height);
void Log(LPCSTR szFormat , ...);

extern BOOL g_bRNLog;

void          Util_TrimString(std::string &str);
long          Util_GetFileSize(FILE *fp);
long          Util_GetFileSizeByName(char *pszFileName);
unsigned long Util_GetSysTick();
void          Util_Sleep(int ms);
bool          Util_IsFileExist(char const* pszName);
bool          Util_MakeDir(const char* lpPath);
int           Util_ResolveTextLine(const char *pszText , std::string strListp[], int nMax, int nSep = ' ');
bool          Util_CopyFile(char const* pszSrc, char const* pszDest, bool bFailIfExists = FALSE);
void          Util_GenPatchDir(std::string& strPatchDir);
inline  int   Util_StringSkip(char **ppszDest , int nSep = ' ')
{
    int i;
    for(i = 0 ; i < strlen(*ppszDest) ; i++)
    {
        if(*(*ppszDest)!=nSep)
        {
            break;
        }
        (*ppszDest)++;
    }
    return i;
}

inline float Str2Float(const std::string str)
{
    return float(atof(str.c_str()));
}

inline int Str2Int(const std::string str)
{
    return atoi(str.c_str());
}

inline void Util_ClearStrEndline(std::string &str)
{
    int p = str.find('\r');
    if(p==-1)
    {
        p = str.find('\n');
    }
    if(p!=-1) // ½áÊø×Ö·û´®
    {
       str[p] = '\0';
    }
}        

const char* Util_CurTime2String(int nFlag);


#define DIRECTORY_OP_QUERY  1
#define DIRECTORY_OP_DELETE 2

void ProcessDirectory(const char *pszDir, std::vector<std::string>* pFileList, int nOperateFlag);

typedef long (CALLBACK* LOG_PROC)(char *pszLog);

extern LOG_PROC g_pfnLogCallback;

#endif
