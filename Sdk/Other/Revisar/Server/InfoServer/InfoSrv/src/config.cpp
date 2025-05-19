

#include "config.h"
#include "inistream.h"
#include <enclib.h>



extern int g_server_type;

Config::Config()
{
    //  获取INI绝对路径
    char* p;
    GetModuleFileName(GetModuleHandle(NULL), m_path, MAX_PATH);
    p = strrchr(m_path, '\\');
    strcpy(p + 1, INI_FILE_NAME);
}


Config::~Config()
{
}


void Config::GetConfig(CFG& cfg)
{
    static INIStream __ini(m_path);
    SetEncKey((__byte*)INFO_KEY);

    char tmp[128] = {0};
    __ini.ReadString(cfg.server, 128, "SQL Server", "Server");
    __ini.ReadString(cfg.uid, 128, "SQL Server", "Username");
    __ini.ReadString(tmp, 128, "SQL Server", "Password");
    Decrypt((__byte*)cfg.pwd, 128, (__byte*)tmp, (int)strlen(tmp));
    __ini.ReadString(cfg.database, 128, "SQL Server", "Database");
    __ini.ReadString(cfg.servername, 128, "System", "Servername");
    strncat(cfg.servername, " "INFO_VERSION, 128);
    strncat(cfg.servername, "    Compiles: "__DATE__, 128);

    g_server_type = __ini.ReadInt("System", "ServerType");  //  server type

    cfg.port = __ini.ReadInt("System", "ServerPort");
    cfg.bufsize = __ini.ReadInt("System", "BufferLength");
    cfg.warning = __ini.ReadInt("System", "Warning");
    cfg.itemnum = __ini.ReadInt("System", "ItemNum");

    cfg.interval = __ini.ReadInt("System", "Interval");

}

