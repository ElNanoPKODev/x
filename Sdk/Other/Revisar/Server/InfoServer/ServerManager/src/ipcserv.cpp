
#include <time.h>
#include <LogLib.h>
#include <stdio.h>
#include <io.h>
#include <direct.h>
#include "log.h"
#include "ipcserv.h"


#define BUFSIZE         1024*16
char g_logfile[MAX_PATH] = {0};


IPC_Client::IPC_Client()
{
}

IPC_Client::~IPC_Client()
{
}

unsigned IPC_Client::Run()
{
    BOOL bSuccess; 
    unsigned char readBuffer[BUFSIZE] = {0};
    //unsigned char writeBuffer[BUFSIZE] = {0};
    unsigned long readByte = 0;
    //unsigned long writeByte = 0;
    //unsigned long rsByte = 0;

    while(1) 
    {
        try
        {
            // Read client requests from the pipe. 
            memset(readBuffer, 0, BUFSIZE);
            bSuccess = ReadFile(m_hPipe, readBuffer, BUFSIZE, &readByte, NULL);

            if(! bSuccess || readByte == 0) 
                break; 

            switch(m_type)
            {
            case EXEC_SQL:
                {
                    GetLogPtr()->CloneSQLCommand((char*)readBuffer, readByte);
                }  break;
            case EXEC_IO:
                {
                    readBuffer[readByte - 1] = '\0';
                    LG2(g_logfile, "%s\n", (char*)readBuffer);
                }  break;
            }
         
            // Write the reply to the pipe. 
            //bSuccess = WriteFile(m_hPipe, writeBuffer, rsByte, &writeByte, NULL);

            //if (! bSuccess || rsByte != writeByte)
            //    break; 
        }
        catch(...)
        {
        }
    }
    CloseHandle(m_hPipe);

    delete(this);
    return 0;
}




IPC_Service::IPC_Service()
{
}

IPC_Service::~IPC_Service()
{
}

unsigned IPC_Service::Run()
{
    HANDLE  hPipe = NULL;
    IPC_Client* client = 0;
    CheckFile chkfl;

    switch(m_type)
    {
    case EXEC_SQL:
        {
            GetLogPtr()->SetServer(m_ip, m_port);
        }  break;
    case EXEC_IO:
        {
            chkfl.Begin();
        }  break;
    }

    for(;;)
    {
        try
        {
            hPipe = CreateNamedPipe(g_Pipename, PIPE_ACCESS_DUPLEX, PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT, PIPE_UNLIMITED_INSTANCES, BUFSIZE, BUFSIZE, NMPWAIT_WAIT_FOREVER, NULL);
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

            client = new IPC_Client;
            client->m_hPipe = hPipe;
            client->m_type = m_type;
            client->Begin();
        }
        catch(...)
        {
        }
    }

    switch(m_type)
    {
    case EXEC_SQL:
        {
            GetLogPtr()->Disconnect();
        }  break;
    case EXEC_IO:
        {
        }  break;
    }
    return 0;
}




CheckFile::CheckFile()
{
}

CheckFile::~CheckFile()
{
}

unsigned CheckFile::Run()
{
    for(;;)
    {
        if('\0' == g_logfile[0])
        {
            newFile();
        }
        else
        {
            char path[MAX_PATH] = {0};
            getcwd(path, MAX_PATH);   //  获取工作目录

            strcat(path, "\\");
            strcat(path, LOG_FOLDER);
            strcat(path, "\\");
            strcat(path, g_logfile);
            strcat(path, ".log");

            FILE* fp = fopen(path, "r");
            if(fp)
            {
                long fsize = _filelength(fileno(fp));

                if(fsize >= MAXSZ)
                {
                    newFile();
                }

                fclose(fp);
            }
        }
        Sleep(CHKTM);
    }

    return 0;
}


extern LogMgr  g_lm;

void CheckFile::newFile()
{
    time_t t = time(0);
    tm* m = localtime(&t);
    sprintf(g_logfile, "LOG_%i_%i_%i__%i_%i_%i__%i", m->tm_year + 1900, m->tm_mon + 1, m->tm_mday, m->tm_hour, m->tm_min, m->tm_sec, m->tm_wday);
    g_lm.CloseLogFile(g_logfile);
}


