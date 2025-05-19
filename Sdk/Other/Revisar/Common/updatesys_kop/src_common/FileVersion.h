#ifndef CLASS_FILEVERSION
#define CLASS_FILEVERSION

#include "zstream.h"

extern "C"
{   
    #include "global.h"
    #include "md5.h"
}

#include "util.h"
#include <string>
#include <map>
#include <vector>
#include <list>

using namespace std;

VOID MD5String(char *pszFile , char *szDigest);
int  CompressFile(char *pszSrc , char *pszDest);
VOID UncompressFile(char const* pszSrc , char const* pszDest);

// 记录文件有关信息的结构体
struct SFILE_INFO
{
	char   szID[255];     // 文件ID, 由目录名+文件名组成
	char   szVersion[33]; // 版本字符串,也就是MD5值
    DWORD  dwSize;        // 文件尺寸
    char   cFlag;         // 操作标志
};

#define FILE_ARRAY vector<SFILE_INFO> // 定义文件信息数组类型

class CFileVersionMgr // 文件版本管理类
{
public:
	
	static const int CREATE_VERSION;
	static const int UPDATE_VERSION;

    static const int OP_FLAG_INVALID;  // 文件的操作标志 : 无效
	static const int OP_FLAG_VALID;    // 文件的操作标志 : 有效
	static const int OP_FLAG_UPDATE;   // 文件的操作标志 : 需要被更新
	
	char                m_szWorkingDir[255]; // 当前管理的目录
	FILE_ARRAY          m_FileList;          // 文件列表   
    map<string, int>    m_FileIndex;         // 从字符串ID索引到文件列表数组的下标

private:
	
    // 添加单个文件信息到列表
    VOID _AddFileInfo(char *pszFileName , char *pszMD5 , int nSize);
    // 更新已有的单个文件信息
    VOID _UpdateFileInfo(char *pszFileName , char *pszMD5 , int nSize);
    
    // 文件信息数据存盘
    VOID _Data2Txt(char *pszFileName); // 存成文本文件
	VOID _Data2Bin(char *pszFileName); // 存成二进制文件 

public:
	CFileVersionMgr();
	~CFileVersionMgr();
	
    VOID ClearFlag();  // 设置当前文件列表里所有文件的操作标志为无效
    
    VOID Data2File(char *pszFileName, BOOL bText); // 存盘函数
	BOOL CheckDirFile(char *pszDir, int nFlag);    // 递归一个目录里所有文件(包含)子目录
	VOID CreateFileVersionInfo(char *pszDir, int nFlag);
    VOID UpdateFileVersionInfo();
    BOOL LoadFileVersionInfo(char *pszFile);

	unsigned int VerifyClient();
	virtual void OnVerifyClient(unsigned int uiTotal,
		unsigned int uiCur, BOOL bWrong, char const* pszFile);

    BOOL LoadVersionFile(vector<SFILE_INFO> *pCompareList, map<string, int>* pCompareIdx, char *pszWorkingDir , char *pszFile);
    BOOL GenerateUpdateList(char *szCompareFile , vector<SFILE_INFO> *pUpdateList , int *pnTotalSize, BOOL bBuilder = FALSE);
    BOOL UpdateFileVersion(SFILE_INFO *pInfo , BOOL bWriteFile);

    VOID CompressAll(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList);
    VOID GeneratePatch(char const* pszDestDir, vector<SFILE_INFO>* pUpdateList);
};

#endif