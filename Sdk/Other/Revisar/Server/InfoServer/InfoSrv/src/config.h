
/* * * * * * * * * * * * * * * * * * * *

    ∂¡»°config.ini

 * * * * * * * * * * * * * * * * * * * */


#if !defined __CONFIG_H__
#define __CONFIG_H__

#include "datatype.h"
#include <windows.h>


#define INI_FILE_NAME   "InforServer.cfg"
//#define INFO_VERSION    "1.1.9 Beta"
//Modify by lark.li 20080218
#define INFO_VERSION    "1.3.7"
#define INFO_KEY        "m&7B@d#"

typedef struct _Config_
{
    //  SQL SERVER
    char server[128];
    char uid[128];
    char pwd[128];
    char database[128];

    //  System
    int bufsize;
    ushort port;
    int warning;
    long itemnum;
    char servername[128];
	int interval;
}CFG, *pCFG;



class Config
{
public:
    Config();
    virtual ~Config();

    virtual void GetConfig(CFG& cfg);

public:
    char    m_path[MAX_PATH];
};


#endif
