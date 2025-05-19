
#include "stdio.h"
#include "FileVersion.h"

void DelSrcVerFile(char const* dir)
{
    char of[][80] = {"ver", "VerComp.dat",
        "ver.rec", "VerInfo.rec", "_TempData",
        "ulog.txt", "kop_d.exe", "_Update.exe"};

    std::string buf1(dir), buf2;
    int len = strlen(dir);
    if (dir[len - 1] != '\\')
    {
        buf1 += "\\";        
    }

#if defined(WIN32)
    for (int i = 0; i < (sizeof of) / (sizeof of[0]); ++ i)
    {
        buf2 = buf1 + of[i];
        DeleteFile(buf2.c_str());
    }
#elif defined(FREEBSD)
#elif defined(LINUX)
#else
#endif
}

void CopyVerFileToSrc(char const* dir)
{
    std::string buf1(dir), buf2(dir);
    int len = 0; len = strlen(dir);

#if defined(WIN32)
    if (dir[len - 1] != '\\')
    {
        buf1 += "\\";
        buf2 += "\\";
    }
    buf1 += "ver.rec";
    buf2 += "VerInfo.rec";
    CopyFile("ver", buf1.c_str(), FALSE);
    CopyFile("VerComp.dat", buf2.c_str(), FALSE);
#elif defined(FREEBSD)
    ;
#elif defined(LINUX)
    if (dir[len - 1] != '/')
    {
        buf1 += "/";
        buf2 += "/";
    }
    buf1 += "ver.rec";
    buf2 += "VerInfo.rec";
#else
    ;
#endif
}

int main(int argc, char* argv[])
{
    bool bRebuild = false;

    if (argv[1] && argv[2]) // 必须至少带两个目录名做参数
    {
        // 删除源目录中不必要的文件
        DelSrcVerFile(argv[1]);

        // Create MD5 STRING
        Log("Create MD5 ...\n");

        CFileVersionMgr FileVerMgr;

        if (argv[3] && strcmp(argv[3], "-rebuild") == 0) // 如果带有'-rebuild'参数
        {
            // 完全重建版本信息文件, 不论是否已经有版本信息文件存在
            bRebuild = true;
            FileVerMgr.CreateFileVersionInfo(argv[1], CFileVersionMgr::CREATE_VERSION);
        }
        else
        {
            // 读取现有的版本信息文件, 记录到列表中
            if (FileVerMgr.LoadVersionFile(&FileVerMgr.m_FileList, &FileVerMgr.m_FileIndex,
                                           FileVerMgr.m_szWorkingDir, "VerComp.dat"))
            {
                FileVerMgr.ClearFlag(); // 把列表中的所有文件的操作标志设为无效

                // 用'更新'的方式来重建版本信息文件
                FileVerMgr.CreateFileVersionInfo(argv[1], CFileVersionMgr::UPDATE_VERSION);
            }
            else
            {
                // 如果版本信息文件不存在, 完全重建
                FileVerMgr.CreateFileVersionInfo(argv[1], CFileVersionMgr::CREATE_VERSION);
            }
        }
        Log("Create MD5 End!\n");

        std::string dir = argv[2];
        dir += "/run_dest";
        Util_MakeDir(dir.c_str()); // 创建指定的目标目录(如果不存在的话)

        // 压缩所有文件到目标目录
        Log("\nCompress File ...\n");
        FileVerMgr.CompressAll(dir.c_str(), NULL);
        Log("Compress File End!\n");

        // 产生手动更新文件到目标目录
        if (!bRebuild)
        {
            std::string patch_dir;
            Util_GenPatchDir(patch_dir);
            dir = argv[2];
            dir += "/";
            dir += patch_dir;
            Log("\nGenerate Patch ...\n");
            FileVerMgr.GeneratePatch(dir.c_str(), NULL);
            Log("Generate Patch End!\n");
        }

        // 拷贝版本文件到源目录
        CopyVerFileToSrc(argv[1]);
    }
    else
    {
        Log("need source and dest directory name!\n");
    }
    return 0;
}


