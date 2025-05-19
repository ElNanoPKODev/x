#include "util.h"
#include <time.h>
#include <list>

// Cross Platform Util Functions 

BOOL g_bFirstLog = TRUE;
HANDLE __hStdOut = NULL;
FILE *g_fpLog = NULL;

BOOL g_bRNLog = TRUE;

LOG_PROC g_pfnLogCallback = NULL;

void Log(LPCSTR szFormat , ...)
{
	char szLog[2048];
	
	if(g_bFirstLog)
	{
		g_fpLog = fopen("ulog.txt" , "wt");
		g_bFirstLog = FALSE;				
#ifdef _LOG_CONSOLE
        if(g_bRNLog)
        {
            CreateConsole(80 , 24);
        }
#endif
	}
    
    BOOL bMsg  = FALSE;
	if(strlen(szFormat) > 3) // if MsgBox
	{
		if(szFormat[0]=='m' && szFormat[1]=='s' &&szFormat[2]=='g')
		{
			bMsg = TRUE;
		}
	}
    
    va_list list;
	va_start( list  , szFormat );           
	if(bMsg)
	{
		vsprintf(szLog , szFormat + 3 , list);
	}
	else
	{
		vsprintf(szLog , szFormat , list);
	}
	va_end( list );              

	fprintf(g_fpLog , "%s" , szLog);
	
    
    fflush(g_fpLog);
    // fclose(fp);

#ifdef WIN32
    #ifndef _CONSOLE
        if(__hStdOut)
	    {
		    unsigned long cCharsWritten;
		    WriteConsole(__hStdOut, szLog , strlen(szLog), &cCharsWritten , NULL);
	    }
    #else
        printf("%s" , szLog);
    #endif
#else
        printf("%s" , szLog);
#endif	

#ifdef WIN32
    if(bMsg)
	{
		MSGSTR(szLog);
	}
#endif

	if(g_pfnLogCallback)
	{
		g_pfnLogCallback(szLog);
	}
}

void CreateConsole(int width, int height)
{
#ifdef WIN32
#ifndef _LOG_CONSOLE
	return;
#endif
	
    AllocConsole();
    SetConsoleTitle("Debug Window");
    __hStdOut = GetStdHandle(STD_OUTPUT_HANDLE); // ->standard output HANDLE
    COORD co = {width , height};
    SetConsoleScreenBufferSize(__hStdOut, co); // set buf size
#endif
}


void Util_TrimString(std::string &str)
{
	char *psz = (char*)(str.c_str());
	int nSize = str.size();
	char *pNew = new char[nSize + 1];
	int n = 0;
	for(int i = 0 ; i < nSize ; i++)
	{
		char c = psz[i];
		if(c!=' ')
		{
			pNew[n] = c;
			n++;
		}
	}
	pNew[n] = '\0';
	str = pNew;
	delete[] pNew;
}


long Util_GetFileSize(FILE *fp)
{
    if(fp==NULL) return -1;
    DWORD dwOldLoc = ftell(fp);
    fseek(fp , 0 , SEEK_END);
    DWORD dwSize = ftell(fp);
    fseek(fp , dwOldLoc , SEEK_SET);
    return dwSize;
}

long Util_GetFileSizeByName(char *pszFileName)
{
    FILE *fp = fopen(pszFileName , "rb");
    long lSize =  Util_GetFileSize(fp);
    fclose(fp);
    return lSize;
}

unsigned long Util_GetSysTick()
{
#ifdef WIN32
    return GetTickCount();
#endif

#ifdef LINUX
    timeval tv;
    gettimeofday(&tv , NULL);
    return (tv.tv_sec * 1000 + tv.tv_usec/1000);
#endif
}


void Util_Sleep(int ms)
{
#ifdef WIN32
    Sleep(ms);
#endif

#ifdef LINUX
    usleep(ms * 1000);
#endif
}

bool Util_IsFileExist(char const*pszName)
{
    if(access(pszName , 0)== -1) return false;
    return true;
}

bool Util_MakeDir(const char* lpPath)
{
    std::string pathname = lpPath;
     if(lpPath[pathname.size() - 1]!='/')    pathname+="/";

     int end = pathname.rfind('/');

     int pt = pathname.find('/');

     if (pathname[pt-1] == ':')         pt = pathname.find('/', pt+1);

     std::string path;

     while(pt!=-1 && pt<=end)
     {
         path = pathname.substr(0 , pt + 1);
         if(access(path.c_str() , 0) == -1) 
         {
#ifdef WIN32
             mkdir(path.c_str());
#endif

#ifdef LINUX
             
          int mode = S_IRWXU | S_IRWXG;
          mkdir(path.c_str() , mode);
#endif
         }
         pt = pathname.find('/' , pt+1);
     }
     return true;
}

int  Util_ResolveTextLine(const char *pszText , std::string strList[] , int nMax, int nSep)
{
    if(pszText==NULL) 
    {
        return 0;
    }
    int  nResult   = 0;
    char *pszDest  = (char*)pszText;
    char *pszFound = NULL;
    do
    {
        pszFound = strchr(pszDest , nSep);
        if(pszFound!=NULL)
        {
            int p = pszFound - pszDest;
            pszDest[p] = '\0'; // trick , we need save result string
            strList[nResult] = pszDest;
            pszDest[p] = nSep; // we should not change source string
            pszDest = pszFound + 1;
            int nSkip = Util_StringSkip(&pszDest , nSep);
            if(pszDest[0]=='\0')
            {
                nResult++;
                break;
            }
        }
        else
        {
            strList[nResult] = pszDest;
        }
        nResult++;
        if(nResult>=nMax) 
        {
            break;
        }
    
    }while(pszFound);
    
    return nResult;
}

bool Util_CopyFile(char const* pszSrc, char const* pszDest, bool bFailIfExists)
{
    bool ret = false;

    if (Util_IsFileExist(pszDest))
    {
        // 去掉只读、系统、隐藏属性
        DWORD dwAttr = GetFileAttributes(pszDest);
        if ((dwAttr & FILE_ATTRIBUTE_READONLY) || (dwAttr & FILE_ATTRIBUTE_SYSTEM) || (dwAttr & FILE_ATTRIBUTE_HIDDEN))
        {
            SetFileAttributes(pszDest, FILE_ATTRIBUTE_ARCHIVE | FILE_ATTRIBUTE_NORMAL);
        }

        ret = (bool)CopyFile(pszSrc, pszDest, bFailIfExists);
    }
    else
    {
        ret = (bool)CopyFile(pszSrc, pszDest, FALSE);
    }

    return ret;
}

void Util_GenPatchDir(std::string& strPatchDir)
{
    SYSTEMTIME st;
    char szPatchDir[255];

    GetLocalTime(&st);
    sprintf(szPatchDir, "patch_%d%02d%02d_%02d%02d_%02d", st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);
    strPatchDir = szPatchDir;
}

const char* Util_CurTime2String(int nFlag)
{
    static char g_szTime[96];
    time_t l;  time(&l);
    struct tm *t = localtime(&l);
    switch(nFlag)
    {
        case 0:
            {
                strcpy(g_szTime, asctime(t));
                break;
            }
        case 1:
            {
                sprintf(g_szTime, "%04d-%02d-%02d_%02d-%02d-%02d", t->tm_year + 1900, t->tm_mon + 1, t->tm_mday, t->tm_hour, t->tm_min, t->tm_sec);
                break;
            }
        case 2:
            {
                sprintf(g_szTime, "%02d-%02d-%02d", t->tm_hour, t->tm_min, t->tm_sec);
                break;
            }
        default:
            {
                strcpy(g_szTime, "");
                break;
            }
    }
    return g_szTime;
}





void ProcessDirectory(const char *pszDir, std::vector<std::string>* pFileList, int nOperateFlag)
{
#ifdef WIN32    
    _finddata_t filestruct;
    int p  = 0;
    int fn = 0;
    char szSearch[255];
    if(strlen(pszDir)==0)
    {
        strcpy(szSearch , "*.*");
    }
    else
    {
        strcpy(szSearch , pszDir);
        strcat(szSearch , "/*.*");
    }

    int hnd = _findfirst(szSearch , &filestruct);
    if(hnd==-1) 
    {
        return;
    }
    do
    { 	
	    char szFullName[255];
	    if(strlen(pszDir) > 0)
        {
            sprintf(szFullName , "%s/%s" , pszDir , filestruct.name);
        }
        else
        {
            strcpy(szFullName , filestruct.name);
        }
	  	
        if(!(filestruct.attrib & _A_SUBDIR)) 
	    {
            switch(nOperateFlag)
            {
                case DIRECTORY_OP_QUERY:
                {
                    if(pFileList) pFileList->push_back(szFullName);
                    break;
                }
                case DIRECTORY_OP_DELETE:
                {
                    remove(szFullName); 
                    break;
                }
            }
	    }
	    else // Directory
	    {
		    if(strcmp(filestruct.name , "..")!=0 && strcmp(filestruct.name , ".")!=0)
		    {
			    ProcessDirectory(szFullName, pFileList, nOperateFlag);
            }
	    }
    }while(!_findnext(hnd , &filestruct)); 
#endif

#ifdef LINUX
    int nLen = strlen(pszDir);
    DIR *dir;
    if(nLen==0)
    {
        dir = opendir(".");
    }
    else
    {
        dir = opendir(pszDir);
    }
    if(dir!=NULL)
    {
	    int n;
  	    direct *dd;
  	    while(dd = readdir(dir))
        {
			if(strcmp(dd->d_name, ".")!=0 && strcmp(dd->d_name, "..")!=0)
			{
			    char szFullName[255];
                strcpy(szFullName , pszDir);
                if(pszDir[nLen - 1]!='/' && (nLen > 0))
				{
  					strcat(szFullName, "/");
				}
                strcat(szFullName , dd->d_name);
                struct stat stat_p;
                stat(szFullName , &stat_p);
				if(S_ISDIR(stat_p.st_mode)) // is directory
				{
          	        ProcessDirectory(szFullName, pFileList, nOperateFlag);
                }
                else if(S_ISREG(stat_p.st_mode)) // is file
                {
			        switch(nOperateFlag)
                    {
                        case DIRECTORY_OP_QUERY:
                        {
                            if(pFileList) pFileList->push_back(szFullName);
                            break;
                        }
                        case DIRECTORY_OP_DELETE:
                        {
                            remove(szFullName); 
                            break;
                        }
                    }
                }
            } // end !("."|"..")
        } // end white                     	
    } // dir is exist 
    else
    {
        // Log("ERR : Directory [%s] is not exist\n" ,  pszDir);
    }
#endif
}


