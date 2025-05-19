
#include "monitor.h"
#include "log.h"
#include <LogLib.h>
#include <string.h>
#include <shellapi.h>


#pragma comment(lib, "shell32.lib")


#define BUFSIZE         1024*8
long g_mntCount = 0;
long g_restarted = 0;


MNIT_Client::MNIT_Client()
{
}


MNIT_Client::~MNIT_Client()
{
}


unsigned MNIT_Client::Run()
{
    BOOL bSuccess; 
    unsigned char readBuffer[BUFSIZE] = {0};
    unsigned char cmd[5] = {0};
    unsigned long readByte = 0;
    bool exit = false;

    while(1) 
    {
        try
        {
            memset(readBuffer, 0, BUFSIZE);
            memset(cmd, 0, 5);
            bSuccess = ReadFile(m_hPipe, readBuffer, BUFSIZE, &readByte, NULL);

            if (! bSuccess || readByte == 0) 
                break;

            memcpy(cmd, readBuffer, 4);

            if(0 == stricmp((char*)cmd, "lgn:"))
            {
                memset(m_path, 0, MAX_PATH);
                strncpy(m_path, (char*)(readBuffer + 4), (readByte - 4));
                ++g_mntCount;
            }
            else if(0 == stricmp((char*)cmd, "liv:"))
            {
            }
            else if(0 == stricmp((char*)cmd, "qut:"))
            {
                exit = true;
                break;
            }
            else
            {
                LG("Monitor_LOG", "Unknown Command.");
            }
        }
        catch(...)
        {
        }
    }
    CloseHandle(m_hPipe);

    --g_mntCount;
    if(!exit)
    {
        LG("Monitor_LOG", "Command: %s. Crashed.\n", m_path);
        WinExec(m_path, SW_SHOW);
        ++g_restarted;
    }

    delete(this);
    return 0;
}





Monitor::Monitor()
{
}


Monitor::~Monitor()
{
}


unsigned Monitor::Run()
{
    HANDLE  hPipe = NULL;
    MNIT_Client* client = 0;

    for(;;)
    {
        try
        {
            hPipe = CreateNamedPipe(g_PipeMonitor, PIPE_ACCESS_DUPLEX, PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT, PIPE_UNLIMITED_INSTANCES, BUFSIZE, BUFSIZE, NMPWAIT_WAIT_FOREVER, NULL);
            if(INVALID_HANDLE_VALUE == hPipe)
            {
                continue;
            }
            if(!ConnectNamedPipe(hPipe, 0))
            {
                if(ERROR_PIPE_CONNECTED != GetLastError())
                {
                    continue;
                }
            }

            client = new MNIT_Client;
            client->m_hPipe = hPipe;
            client->Begin();
        }
        catch(...)
        {
        }
    }

    return 0;
}

