#include "FileVersion.h"

#ifdef WIN32
    #include <direct.h>
#else

#endif

#include <fstream>

const int CFileVersionMgr::CREATE_VERSION  = 0;
const int CFileVersionMgr::UPDATE_VERSION  = 1;
const int CFileVersionMgr::OP_FLAG_INVALID = 0;
const int CFileVersionMgr::OP_FLAG_VALID   = 1;
const int CFileVersionMgr::OP_FLAG_UPDATE  = 2;
	
CFileVersionMgr::CFileVersionMgr()
{
	strcpy(m_szWorkingDir , "NULL");
}

CFileVersionMgr::~CFileVersionMgr() 
{

}

// for server
VOID CFileVersionMgr::ClearFlag()
{
    for(int n = 0 ; n < m_FileList.size() ; n++)
    {
       	SFILE_INFO *pInfo = &(m_FileList[n]);
        pInfo->cFlag = OP_FLAG_INVALID; // 置0无效
    }
}

BOOL CFileVersionMgr::CheckDirFile(char *pszDir , int nFlag)
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
        // Log("no file found in dir [%s]\n" , szSearch);
	    return FALSE;
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
            char szDigest[33];
            MD5String(szFullName , szDigest);
            if(nFlag==CREATE_VERSION)
            {
                _AddFileInfo(szFullName, szDigest, filestruct.size);
            }
            else if(nFlag==UPDATE_VERSION)
            {
                _UpdateFileInfo(szFullName, szDigest, filestruct.size);
            }
	    }
	    else // Directory
	    {
		    if(strcmp(filestruct.name , "..")!=0 && strcmp(filestruct.name , ".")!=0)
		    {
			    // Log("Dir <%s>\n" , szFullName);
			    CheckDirFile(szFullName , nFlag);
		    }
	    }
    }while(!_findnext(hnd , &filestruct)); 
  
  
  return TRUE;
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
			if(strcmp(dd->d_name , ".")!=0 && strcmp(dd->d_name , "..")!=0)
			{
			    char szFullName[255];
                strcpy(szFullName , pszDir);
                if(pszDir[nLen - 1]!='/' && (nLen > 0))
				{
  					strcat(szFullName , "/");
				}
                strcat(szFullName , dd->d_name);
                struct stat stat_p;
                stat(szFullName , &stat_p);
				if(S_ISDIR(stat_p.st_mode)) // is directory
				{
          	        CheckDirFile(szFullName , nFlag);
				}
                else if(S_ISREG(stat_p.st_mode)) // is file
                {
			        int nFileSize = stat_p.st_size;
                    char szDigest[33];
                    MD5String(szFullName , szDigest);
                    if(nFlag==CREATE_VERSION)
                    {
                        _AddFileInfo(szFullName , szDigest , nFileSize);
                    }
                    else if(nFlag==UPDATE_VERSION)
                    {
                        _UpdateFileInfo(szFullName , szDigest , nFileSize);        
                    }
                } 
            } // end !("."|"..")
        } // end white                     	
    } // dir is exist 
    else
    {
        Log("ERR : Directory [%s] is not exist\n" ,  pszDir);
    }
    return TRUE;
#endif
}


VOID CFileVersionMgr::_AddFileInfo(char *pszFileName , char *pszDigest , int nSize)
{
    //char* pCopy = _strlwr(_strdup(pszFileName));
    char* pCopy = pszFileName;

    SFILE_INFO info;
	strcpy(info.szID      , pCopy);
	strcpy(info.szVersion , pszDigest);
    info.dwSize = nSize;
    info.cFlag = OP_FLAG_UPDATE;
    m_FileList.push_back(info);
    m_FileIndex[pCopy] = m_FileList.size() - 1;
}

VOID CFileVersionMgr::_UpdateFileInfo(char *pszFileName , char *pszDigest , int nSize)
{
    //char* pCopy = _strlwr(_strdup(pszFileName));
    char* pCopy = pszFileName;

    map<string ,int>::iterator it = m_FileIndex.find(pCopy);
    if(it!=m_FileIndex.end())
    {
        // exist
        int nIndex = (*it).second;
        SFILE_INFO *pInfo = &(m_FileList[nIndex]);
        if(strcmp(pInfo->szVersion , pszDigest)!=0)
        {
            strcpy(pInfo->szVersion , pszDigest);
            pInfo->cFlag = OP_FLAG_UPDATE;
        }
        else
        {
            pInfo->cFlag = OP_FLAG_VALID;
        }
    }
    else
    {
        _AddFileInfo(pCopy, pszDigest, nSize);
    }
}
    
// for server & client
VOID CFileVersionMgr::_Data2Txt(char *pszFileName)
{
	FILE *fp = fopen(pszFileName, "wt");
    if(fp==NULL)
    {
        return;
    }
    fprintf(fp, "%s\n", m_szWorkingDir);
    int nValid = 0;
    for(int n = 0 ; n < m_FileList.size() ; n++)
    {
       	SFILE_INFO *pInfo = &(m_FileList[n]);
        if(pInfo->cFlag!=OP_FLAG_INVALID)
        {
		    fprintf(fp , "%s,%s,%d\n", pInfo->szID, pInfo->szVersion, pInfo->dwSize);
            nValid++;
        }
    }
    fclose(fp);
    // Log("Write List , Total = %d\n", nValid);
}

// for server & client
VOID CFileVersionMgr::_Data2Bin(char *pszFileName)
{

}

// for server & client
VOID CFileVersionMgr::Data2File(char *pszFileName, BOOL bText)
{
    if(bText)
	{
		_Data2Txt(pszFileName);
	}
	else
	{
		_Data2Txt(pszFileName);
		//_Data2Bin(pszFileName);
	}
}

// for server & client
BOOL CFileVersionMgr::LoadFileVersionInfo(char *pszFile)
{
    if(access(pszFile, 0)==-1)
    {
        return FALSE;
    }
    
    m_FileList.clear();
    m_FileIndex.clear();
    
    LoadVersionFile(&m_FileList, &m_FileIndex, m_szWorkingDir, pszFile);

    Log("File Info Load = %d\n", m_FileList.size());
    return TRUE;
}


// for server 
VOID CFileVersionMgr::CreateFileVersionInfo(char *pszDir, int nFlag)
{
	if(access(pszDir, 0)==-1) // 如果目录不存在, 返回错误
    {
        Log("Directory not exist!\n");
        return;
    }
    
    if(nFlag==CREATE_VERSION) // 如果是重新创建版本
    {
        // 清除现有记录
        m_FileList.clear();
        m_FileIndex.clear(); 
        strcpy(m_szWorkingDir, pszDir);
    }
	
    char szCurDir[255];
    getcwd(szCurDir, 255); // 保存程序的当前目录

    chdir(pszDir); // 进入要遍历的目录(使它成为当前根目录)
    CheckDirFile("", nFlag);
    chdir(szCurDir); // 恢复成刚才保存的目录

    Log("Total File = <%d>\n", m_FileList.size());
}

// for server
VOID CFileVersionMgr::UpdateFileVersionInfo()
{
	/*
    if(!strcmp(m_szWorkingDir , "NULL")==0)
    {
        char szCurDir[255];
        _getcwd( szCurDir , 255);

        _chdir(m_szWorkingDir);
        CheckDirFile("." , UPDATE_VERSION);
        
        
        // Check File Exist , if not , remove it from Version Record
        map<string , int>::iterator it;
        int nRemove = 0;
        for (it = m_FileIndex.begin(); it!=m_FileIndex.end();it++)
        {
            const char *pszFile = ((*it).first).c_str();
            if(_access(pszFile , 0)==-1) 
            {
                // Log("Remove ID = <%s> \n" , pszFile);
                // file not exist
                
                vector<SFILE_INFO>::iterator itList;
                int nIndex = (*it).second;
                itList = m_FileList.begin() + nIndex;
                m_FileList.erase(itList);
                
                map<string , int>::iterator itNext = it++;
                m_FileIndex.erase(--it);
                it = itNext;
                
                nRemove++;
            }
        }
        //Log("Remove <%d> File From the List\n" , nRemove);

        _chdir(szCurDir);

    }
    else
    {
        Log("Working Dir is NULL!\n");
    }*/
}

/*
// for server
VOID CFileVersionMgr::GenerateCompareFile(char *pszFileName)
{
    if(strcmp(m_szWorkingDir , "NULL")==0)
    {
        return;
    }
    FILE *fp = fopen(pszFileName , "wt");
    fprintf(fp , "%s\n" , m_szWorkingDir);
    for(int n = 0 ; n < m_FileList.size() ; n++)
    {
    	SFILE_INFO *pInfo = &(m_FileList[n]);
		fprintf(fp , "%s,%s,%d\n" , pInfo->szID , pInfo->szVersion , pInfo->dwSize);
    }
    fclose(fp);
}*/

//----------------------------------------------------------------------------
// 功能 : 从一个文本文件里读入文件信息列表, 并保存到传入的列表指针和索引指针里
// pFileList   : 文件列表数组的指针
// pFileIdx    : ID->列表数组下标的索引指针
// pszFileName : 文件名
//----------------------------------------------------------------------------
BOOL CFileVersionMgr::LoadVersionFile(vector<SFILE_INFO> *pFileList, map<string, int>* pFileIdx, char *pszWorkingDir, char *pszFileName)
{
    ifstream in(pszFileName); // 按文本方式打开文件
    if(in.is_open()==0) // 文件打开失败, 返回错误
    {
        Log("Open Compare File Error <%s>\n", pszFileName);
        return FALSE;
    }
    
    // 依次读入并解析文件版本信息 : ID,MD5版本,尺寸
    char szLine[512];
    in.getline(szLine , 512);
    string strRunDir = szLine;
    strcpy(pszWorkingDir , strRunDir.c_str());
    while(!in.eof())
    {
        in.getline(szLine , 512);
        string strLine = szLine;
        if(strLine.size()==0) break;
        
        int p = strLine.find(","); // 解析逗号间隔的字符串
        string strLeft  = strLine.substr(0 , p);
        string strRight = strLine.substr(p + 1 , strLine.size() - p - 1);
        p = strRight.find(",");
        string strVer  = strRight.substr(0 , p);
        string strSize = strRight.substr(p + 1 , strRight.size() - p - 1);
        
        int nSize = atoi(strSize.c_str());
        SFILE_INFO info;

        //char* pCopy = _strlwr(_strdup(strLeft.c_str()));
        char* pCopy = (char *)strLeft.c_str();

        strcpy(info.szID       , pCopy);
        strcpy(info.szVersion  , strVer.c_str()); 
        info.dwSize = nSize;
        info.cFlag  = OP_FLAG_VALID; // 已经读入的文件信息, 操作标志初始化为有效
        pFileList->push_back(info);
        (*pFileIdx)[info.szID] = pFileList->size() - 1;
        // Log("ID <%s> , Ver = <%s>\n", strLeft.c_str() , info.szVersion);
    }
    in.close();
    return TRUE;
}

void CFileVersionMgr::OnVerifyClient(unsigned int uiTotal,
									 unsigned int uiCur,
									 BOOL bWrong,
									 char const* pszFile)
{
	if (bWrong) Log("%s is in wrong format!\n", pszFile);
}

unsigned int CFileVersionMgr::VerifyClient()
{
	char szDigest[33];
	char szWrongDigest[33] = "WRONGFORMAT";
	vector<SFILE_INFO>::iterator it = m_FileList.begin();
	SFILE_INFO* pFile;
	unsigned int uiCount = 0;
	unsigned int uiTotal = m_FileList.size();
	unsigned int i = 0;
	BOOL bWrong;
	while (it != m_FileList.end())
	{
		pFile = &(*it);
		MD5String(pFile->szID, szDigest);
		szDigest[32] = 0;
		bWrong = FALSE;
		if (strcmp(szDigest, pFile->szVersion) != 0)
		{
			// 更新版本文件
			strcpy(pFile->szVersion, szWrongDigest);
			UpdateFileVersion(pFile, TRUE);
			bWrong = TRUE;
			++ uiCount;
		}

		++ i;
		try
		{
			OnVerifyClient(uiTotal, i, bWrong, pFile->szID);
		}
		catch (...)
		{
			Log("Exception in OnVerifyClient\n");
		}

		++ it;
	}

	return uiCount;
}



//--------------------------------------------------------------
// 功能 : 读入一个版本信息文件, 和现有的版本信息列表的内容做比对
// 如果发现版本已经发生变化, 则加入到一个更新列表中
// szCompareFile : 用来比较的版本信息文件名
// pUpdateList   : 用来记录更新的列表
// pnTotalSize   : 因为比较的过程会检查所有文件，所以可以计算好
// 所有要更新的文件累加起来的尺寸, 将来用于显示更新进度
// bBuilder      : 一个标志决定比较的双方, 是新读入的文件比对现有
// 信息还是现有信息比对新读入的文件
//-------------------------------------------------------------
BOOL CFileVersionMgr::GenerateUpdateList(char *szCompareFile, vector<SFILE_INFO>* pUpdateList, int *pnTotalSize, BOOL bBuilder)
{
    vector<SFILE_INFO> CompareList;
    map<string, int>   CompareIdx;
    char szWorkingDir[255]; // 读入传入文件里包含的文件版本信息
    if(!LoadVersionFile(&CompareList, &CompareIdx, szWorkingDir, szCompareFile))
    {
        return FALSE; // 如果读入文件失败, 返回错误
    }

    if(strcmp(szWorkingDir , m_szWorkingDir)!=0) // 如果文件里记录的管理目录与现有的不同,发出一个警告
    {
        Log("Warning : Different Working Directory!\n");
    }

    vector<SFILE_INFO>* pListSrc  = NULL;
    map<string, int>*   pIdxSrc   = NULL;
    
    vector<SFILE_INFO>* pListDest = NULL;
    map<string, int>*   pIdxDest  = NULL;
    
    if(bBuilder) // 决定新读入的文件和现有的版本信息, 谁和谁做比对
    {
        pListSrc  = &CompareList;
        pIdxSrc   = &CompareIdx;
        pListDest = &m_FileList;
        pIdxDest  = &m_FileIndex;
    }
    else
    {
        pListSrc  = &m_FileList;
        pIdxSrc   = &m_FileIndex;
        pListDest = &CompareList;
        pIdxDest  = &CompareIdx;
    }
    
    // 比对开始
    Log("Compare [Src Size = %d , Dest Size = %d]\n", pListSrc->size(), pListDest->size());
    int nFileSize =0;
    for(int n = 0; n < pListDest->size(); n++) // 遍历数组里所有文件
    {
        SFILE_INFO *pDestInfo = &((*pListDest)[n]);
    
        //char* pCopy = _strlwr(_strdup(pDestInfo->szID));
        char* pCopy = pDestInfo->szID;
        map<string, int>::iterator it = pIdxSrc->find(pCopy);
        if(it!=pIdxSrc->end()) // 发现对应文件ID
        {
            int nIndex = (*it).second;
            SFILE_INFO *pSrcInfo = &((*pListSrc)[nIndex]);
            if(strcmp(pDestInfo->szVersion , pSrcInfo->szVersion)!=0)
            {
                pUpdateList->push_back(*pDestInfo); //如果MD5版本不同, 放入更新列表
                nFileSize+=pDestInfo->dwSize; // 文件尺寸累加
            }
        }
        else // 如果当前的文件ID没有发现, 表明是新添加的文件
        {
            pUpdateList->push_back(*pDestInfo); // 放入更新列表
            nFileSize+=pDestInfo->dwSize; // 文件尺寸累加
        }
    }
    *pnTotalSize = nFileSize;
    return TRUE;
}

//------------------------------------------------------
// 功能 : 更新(或添加)某个文件的版本信息, 并马上重写文件
// pInfo : 文件信息的指针
// bWriteFile : 是否马上重写文件
//------------------------------------------------------
BOOL CFileVersionMgr::UpdateFileVersion(SFILE_INFO *pInfo, BOOL bWriteFile)
{
    //char* pCopy = _strlwr(_strdup(pInfo->szID));
    char* pCopy = (char *)(pInfo->szID);
    map<string , int>::iterator it = m_FileIndex.find(pCopy);
    if(it!=m_FileIndex.end()) // 此文件ID已存在, 进行更新
    {
        int nIndex = (*it).second;
        SFILE_INFO *pFileInfo = &(m_FileList[nIndex]);
        strcpy(pFileInfo->szVersion, pInfo->szVersion);
    }
    else // 添加新的文件版本信息到现有列表中
    {
        SFILE_INFO info;
        strcpy(info.szID, pCopy);
        strcpy(info.szVersion, pInfo->szVersion);
        info.dwSize = pInfo->dwSize;
        m_FileList.push_back(info);
        m_FileIndex[pCopy] = m_FileList.size();
    }
        
    if(bWriteFile)
    {
        // 写入版本信息文件(就是重写整个文件), 因为该函数是在更新过程被调用的, 文件一旦被更新完
        // 就会马上写入文件, 如果玩家马上退出程序, 更新结果也得以保存
        Data2File("VerInfo.rec", TRUE);
    }
    return TRUE;
}

//------------------------------------------------------------------------
// 功能 : 按照指定文件更新信息列表(或当前文件信息列表)的内容, 把所有的文件
// 按照原有的目录结构压缩到指定目录中
//------------------------------------------------------------------------
VOID CFileVersionMgr::CompressAll(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList)
{
    string strDest = pszDestDir;     // 目的地目录   
    string strSrc  = m_szWorkingDir; // 取得当前目录
    
    strDest+="/";
    strSrc+="/";
    
    char szSrcFile[255];
    char szDestFile[255];
    
    vector<SFILE_INFO>* pCurList = pUpdateList;
    if(pCurList==NULL) // 如果更新列表为空, 表示直接使用当前的文件信息列表
    {
        pCurList = &m_FileList;
    }
    
    int nUpdate = 0;
    for(int n = 0; n < pCurList->size(); n++)
    {
        SFILE_INFO *pInfo = &((*pCurList)[n]);
        if(pInfo->cFlag!=OP_FLAG_UPDATE) continue; // 如果文件的操作标志不是'需要升级', 则跳过
        
        strcpy(szSrcFile  , strSrc.c_str());
        strcat(szSrcFile  , pInfo->szID);
        
        strcpy(szDestFile , strDest.c_str());
        strcat(szDestFile , pInfo->szID);
        
        string strDestFile = szDestFile;
        int p = strDestFile.rfind('/');
        if(p!=-1)
        {
            string strDir = strDestFile.substr(0 , p);
            //char* pCopy = _strlwr(_strdup(strDir.c_str()));
            char* pCopy = (char *)strDir.c_str();
            Util_MakeDir(pCopy); // 如果目标目录或其子目录并不存在, 则创建之
        }
        Log("Compress [%s]\n" , szSrcFile);
        //char* pCopy = _strlwr(_strdup(szDestFile));
        char* pCopy = (char *)szDestFile;
        CompressFile(szSrcFile , pCopy);
        pInfo->dwSize = Util_GetFileSizeByName(pCopy); // 设置为压缩之后的文件尺寸
        nUpdate++;
    }

    Log("File Update and Compress Total = %d\n", nUpdate);
    
    // Save VerComp.dat to Dest Dir
    Data2File("VerComp.dat" , TRUE); // 生成版本文件
    string strFile = strDest;
    strFile+="VerComp.dat";
    CompressFile("VerComp.dat" , (char*)strFile.c_str()); // 压缩版本文件到目的地目录

    
    // 把版本文件的MD5单独记录下来到一个文件ver, 压缩后保存到目的地目录
    char szDigest[33]; MD5String("VerComp.dat", szDigest);
    char szVerFile[255] = "ver";
    
    FILE *fp = fopen(szVerFile, "wt"); // 写入文件
    fprintf(fp, "%s", szDigest);
    fclose(fp);

    strFile = strDest;
    strFile+=szVerFile;

    CompressFile(szVerFile, (char*)strFile.c_str());
}

VOID CFileVersionMgr::GeneratePatch(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList)
{
    string strDest = pszDestDir;     // 目的地目录   
    string strSrc  = m_szWorkingDir; // 取得当前目录

    strDest+="/";
    strSrc+="/";

    char szSrcFile[255];
    char szDestFile[255];

    vector<SFILE_INFO>* pCurList = pUpdateList;
    if(pCurList==NULL) // 如果更新列表为空, 表示直接使用当前的文件信息列表
    {
        pCurList = &m_FileList;
    }

    int nUpdate = 0;
    for(int n = 0; n < pCurList->size(); n++)
    {
        SFILE_INFO *pInfo = &((*pCurList)[n]);
        if(pInfo->cFlag!=OP_FLAG_UPDATE) continue; // 如果文件的操作标志不是'需要升级', 则跳过

        strcpy(szSrcFile  , strSrc.c_str());
        strcat(szSrcFile  , pInfo->szID);

        strcpy(szDestFile , strDest.c_str());
        strcat(szDestFile , pInfo->szID);

        string strDestFile = szDestFile;
        int p = strDestFile.rfind('/');
        if(p!=-1)
        {
            string strDir = strDestFile.substr(0 , p);
            Util_MakeDir(strDir.c_str()); // 如果目标目录或其子目录并不存在, 则创建之
        }

        Log("Copy [%s]\n" , szSrcFile);
        Util_CopyFile(szSrcFile, szDestFile);

        ++ nUpdate;
    }

    Log("File Generate for Patch Total = %d\n", nUpdate);

    if (nUpdate > 0)
    {    
        // Save VerComp.dat to Dest Dir as VerInfo.rec
        string strFile = strDest;
        strFile += "VerInfo.rec";
        Util_CopyFile("VerComp.dat", strFile.c_str());

        // Save ver to Dest Dir as ver.rec
        strFile = strDest;
        strFile += "ver.rec";
        Util_CopyFile("ver", strFile.c_str());
    }
}


// Util Functions > ------------------------------------------------------------------

int CompressFile(char *pszSrc , char *pszDest)
{
    ozstream out(pszDest);
    FILE *fp = fopen(pszSrc , "rb");
    if(fp==NULL)
    {
        Log("ERR : Open Src File [%s] Fail!\n" , pszSrc);
        return 0;
    }
    int buf_size = 1024 * 32;
    char *buf = new char[buf_size];
    int nSize = 0;
    while(1)
    {
       int len = fread(buf , 1 , buf_size , fp);
       nSize+=out.write(buf , len);
       if(feof(fp)) break;
    }
    fclose(fp);
    out.close();
    delete[] buf;
    return nSize;
}

VOID UncompressFile(char const* pszSrc , char const* pszDest)
{
    int buf_size = 1024 * 32;
    char *buf = new char[buf_size];
    izstream in(pszSrc);
    FILE *fp = fopen(pszDest , "wb");
    while(1)
    {
        int n = in.read(buf , buf_size);
        fwrite(buf , 1 , n , fp);
        if(gzeof(in.fp())) break;
    }
   in.close();
   fclose(fp);
   delete[] buf;
}


VOID MD5String(char *pszFile , char *pszDigest)
{
    BYTE btDigest[16];
    MDFile(pszFile , (char*)btDigest);
    for (int i = 0; i < 16; i++)
    {
        sprintf(pszDigest + i * 2 , "%02x", btDigest[i]);
    }
    pszDigest[32] = '\0';
}

// ---------------------------------------------------------------- < Util Functions

/*
核心玩法还有待改进

   怪兽的核心玩法是怪兽系统和道具系统, 怪兽系统还有些不足的地方, 比如主人的形象和作用还有
   待加强, 职业的区别和玩法还需要改进, 宠物本身也还需要从特色属性上得到加强，造型只是一个很重要的
   辅助而已.

   在一切线上游戏都视为重中之重的道具系统，在怪兽中不免有点鸡肋的感觉, 至少没有看到什么玩家在
   热烈的讨论道具发挥的作用. 道具数量那么多，却形同垃圾, 应该每个道具都有一个存在的理由, 每个
   道具的属性都被精心设计, 才能在游戏中真正发挥作用.

   游戏只有在核心玩法价值有保证的前提下, 增加花边功能才算得上是锦上添花, 否则一味的去想一些
   花边功能, 再酷再眩也只是杯水车薪, 苟延残喘.


游戏资源分配不均

游戏资源且分做玩法资源和美术资源, 怪兽中有很多玩法，回城, 护士, 家族，商人买卖，任务据点, 拍卖等等一堆，
大都集中在了巨慢的多米村和巨丑的南冒险平原一条线上, 让人感觉游戏的氛围很狭隘, 其它的很漂亮的或有特色的
场景都空空如也, 成了任务和练级的一个点缀. 就比如好好的一个水下场景, 放在别的游戏里不知道该有多眩,
在怪兽里成了没人去的废地, 居然还观光, 干!, 无异于自贬价值.


战斗系统从画面表现上讲中规中距,平淡无奇

   怪兽的战斗需要在画面表现进一步上加强. 回合战斗本身就比即时开打缺少很多乐趣, 所以这方面一定要有
   突出的地方.

速度问题

   怪兽对机器的要求确实太高, 尤其是作为门户的多米村, 慢得和屎一样, 建议展开一个多米减面计划, 把不太被
   玩家注意的房顶和屋角的面统统减下来, (或规定村中不能飞行, 把飞行Terrain彻底杀掉)

*/



