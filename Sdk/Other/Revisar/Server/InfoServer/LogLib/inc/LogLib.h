
/* * * * * * * * * * * * * * * * * * * *

    连接LogServer
    Jampe
    2006/3/31

 * * * * * * * * * * * * * * * * * * * */



#if !defined __LOGLIB_H__
#define __LOGLIB_H__

#include <windows.h>

#ifdef NDEBUG
#pragma comment(lib, "LogLib.lib")
#else
#pragma comment(lib, "LogLib_D.lib")
#endif


extern const char* g_Pipename;
extern const char* g_PipeMonitor;


class LogInterface
{
public:
    virtual ~LogInterface();

    static LogInterface* Instance();

    /*
     *
     *  ip      Log服务器网络地址
     *  port    Log服务器服务端口
     *
     */
    void SetServer(const char* ip, unsigned short port);

    /*
     *  阻塞式，直到完全断开
     *  断开之前会将队列中的任务处理完毕，再执行断开
     */
    void Disconnect();


    /*
     *  将字符串传给Log服务器。
     *
     *  str1    对应数据库第一个字段，长度256
     *  str2    对应数据库第二个字段，长度256
     *  str3    对应数据库第三个字段，长度256
     *  str4    对应数据库第四个字段，长度256
     *  str5    对应数据库第五个字段，长度256
     *  str6    对应数据库第六个字段，数据库数据类型为 ntext。较长信息一般存放在此字段中
     *  ext1    对应数据库第一个扩展字段，长度128
     *  ext1    对应数据库第二个扩展字段，长度128
     *  ext1    对应数据库第三个扩展字段，长度128
     *  ext1    对应数据库第四个扩展字段，长度128
     *
     */
    void SendLogMessage(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1 = "", const char* ext2 = "", const char* ext3 = "", const char* ext4 = "");


    /*
     *  慎用，此函数压入完整的SQL语句。
     *  LOG Server不对此语句做语法分析语法检测
     */
    void PushSQLCommand(const char* sqlcmd);

    /*
     *  功能同上，但是会生成副本
     */
    void CloneSQLCommand(const char* sqlcmd, size_t size);
    void CloneSQLCommand(const char* sqlcmd);


    /*
     *  连接IPC
     */
    bool IPC_Connect();
    void IPC_Close();
    bool IPC_SendLogMessage(const char* str1, const char* str2, const char* str3, const char* str4, const char* str5, const char* str6, const char* ext1 = "", const char* ext2 = "", const char* ext3 = "", const char* ext4 = "");

private:
    LogInterface();
    HANDLE          m_hPipe;
};


//  获取实例
#define     GetLogPtr()             LogInterface::Instance()

//  记录日志
#define     LOG(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)                 GetLogPtr()->SendLogMessage(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)
#define     LOG_IPC(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)             GetLogPtr()->IPC_SendLogMessage(str1, str2, str3, str4, str5, str6, ext1, ext2, ext3, ext4)


class IPC_Monitor
{
public:
    ~IPC_Monitor();

    static IPC_Monitor* Instance();

    bool IPC_Login(const char* path);
    bool IPC_KeepLive();
    void IPC_Close();

private:
    bool IPC_Connect();
    bool IPC_Quit();

private:
    IPC_Monitor();
    HANDLE          m_hPipe;
};

#define GetMonitor()                IPC_Monitor::Instance()

#endif
