/**
*  @file KopDownload.h
*
*  KopDownload.h, v 1.0 2005/5/28 13:14:05 shanghai China
*
*  @author claude Fan <fanyf2002@hotmail.com>
*
*/

#pragma once

#include "Ftpclient.h"
#include "FileVersion.h"

class CKopData
{
public:
    CKopData()
    {
        m_bHaveLap = FALSE;
        m_ulTotalSize = m_ulTotalFileCount = 0;
        m_ulRecvSize = m_ulRecvFileCount = 0;
        m_strCurrentFile = "";
        m_strRunApp = "";
        m_strTips = "";
        m_dwConsumeTick = 0;
        m_dwAvgSpeed = 0;
        m_dwRtmSpeed = 0;
        m_dwOldRtmSpeed = 0;

        m_ucISP = CHINA_INVALIDISP;
        m_bFirstRun = FALSE;
    }
    ~CKopData()
    {
    }
    void SetLap()
    {
        m_bHaveLap = TRUE;
    }
    BOOL GetLap() const
    {
        return m_bHaveLap;
    }
    void SetTotalSize(ULONG ulTotalSize)
    {
        m_ulTotalSize = ulTotalSize;
        m_ulRecvSize = 0;
        m_dwConsumeTick = 0;
        m_dwAvgSpeed = 0;
        m_dwRtmSpeed = 0;
        m_dwOldRtmSpeed = 0;
    }
    ULONG GetTotalSize() const
    {
        return m_ulTotalSize;
    }
    void SetTotalFileCount(ULONG ulTotalFileCount)
    {
        m_ulTotalFileCount = ulTotalFileCount;
        m_ulRecvFileCount = 0;
        m_strCurrentFile = "";
    }
    ULONG GetTotalFileCount() const
    {
        return m_ulTotalFileCount;
    }
    void SetCurrentFile(LPCTSTR lpszCurrentFile)
    {
        m_strCurrentFile = lpszCurrentFile;
    }
    LPCTSTR GetCurrentFile() const
    {
        return m_strCurrentFile;
    }
    void AddRecvSize(ULONG ulRecvSize)
    {
        m_ulRecvSize += ulRecvSize;
    }
    void DecRecvSize(ULONG ulRecvSize)
    {
        m_ulRecvSize -= ulRecvSize;
    }
    ULONG GetRecvSize() const
    {
        return m_ulRecvSize;
    }
    void AddRecvFileCount(ULONG ulRecvFileCount = 1)
    {
        m_ulRecvFileCount += ulRecvFileCount;
    }
    void DecRecvFileCount(ULONG ulRecvFileCount = 1)
    {
        m_ulRecvFileCount -= ulRecvFileCount;
    }
    ULONG GetRecvFileCount() const
    {
        return m_ulRecvFileCount;
    }
    void SetTips(LPCTSTR lpszTips)
    {
        m_strTips = lpszTips;
    }
    CString GetTips() const
    {
        return m_strTips;
    }
    void SetRunApp(LPCTSTR lpszRunApp)
    {
        m_strRunApp = lpszRunApp;
    }
    CString GetRunApp() const
    {
        return m_strRunApp;
    }
    void AddConsumeTick(DWORD dwIncTick)
    {
        m_dwConsumeTick += dwIncTick;
    }
    DWORD GetConsumeTick() const
    {
        return m_dwConsumeTick;
    }
    void AddSizeAndTick(ULONG ulRecvSize, DWORD dwIncTick)
    {
        AddRecvSize(ulRecvSize);
        AddConsumeTick(dwIncTick);

        // 计算平均速率
        if (m_dwConsumeTick == 0)
        {
            m_dwAvgSpeed = 0;
        }
        else
        {
            m_dwAvgSpeed = m_ulRecvSize / m_dwConsumeTick;
        }

        if (dwIncTick == 0)
        {
            if (m_dwOldRtmSpeed != 0)
            {
                m_dwRtmSpeed = m_dwOldRtmSpeed;
            }
            else
            {
                m_dwRtmSpeed = m_dwAvgSpeed;
                m_dwOldRtmSpeed = m_dwRtmSpeed;
            }
        }
        else
        {
            m_dwRtmSpeed = ulRecvSize / dwIncTick;

            if (m_dwRtmSpeed < m_dwOldRtmSpeed)
                m_dwRtmSpeed = (m_dwRtmSpeed + m_dwOldRtmSpeed) / 2;

            m_dwOldRtmSpeed = m_dwRtmSpeed;
        }
    }
    DWORD GetAvrSpeed() const
    {
        return m_dwAvgSpeed;
    }
    DWORD GetRtmSpeed() const
    {
        return m_dwRtmSpeed;
    }
    CString& GetWebURL()
    {
        return m_strURL;
    }
    void SetWebURL(CString& strURL)
    {
        m_strURL = strURL;
    }
	CString& GetNewsURL()
	{
		return m_strNews;
	}
	void SetNewsURL(CString& strNews)
	{
		m_strNews = strNews;
	}
	CString& GetRegsURL()
	{
		return m_strRegs;
	}
	void SetRegsURL(CString& strRegs)
	{
		m_strRegs = strRegs;
	}
	CString& GetChrgURL()
	{
		return m_strChrg;
	}
	void SetChrgURL(CString& strChrg)
	{
		m_strChrg = strChrg;
	}

    void LoadISP()
    {
        if (access("Update.dat" , 0) != -1)
        {
            // 文件存在
            FILE* fp = fopen("Update.dat", "rb");
            UCHAR ucISP;
            if (fp != NULL)
            {
                fread(&ucISP, sizeof(UCHAR), 1, fp);
                if (ucISP == 0 || ucISP >= CHINA_MAXISP)
                    ucISP = CHINA_TELECOM;

                m_ucISP = ucISP;

                fclose(fp);
            }

            m_bFirstRun = FALSE;
        }
        else
        {
            // 不存在，第一次运行
            m_bFirstRun = TRUE;
        }
    }
    bool IsFirstRun() const
    {
        return m_bFirstRun;
    }
    void SaveISP(UCHAR ucISP)
    {
        m_ucISP = ucISP;

        FILE* fp = fopen("Update.dat", "wb");
        if (fp != NULL)
        {
            fwrite(&ucISP, sizeof(UCHAR), 1, fp);
            fclose(fp);
        }

        m_bFirstRun = FALSE;
    }
    UCHAR GetISP() const
    {
        return m_ucISP;
    }
    bool IsTelecom() const
    {
        return (m_ucISP == CHINA_TELECOM);
    }
    bool IsNetcom() const
    {
        return (m_ucISP == CHINA_NETCOM);
    }

    enum {CHINA_INVALIDISP, CHINA_TELECOM, CHINA_NETCOM, CHINA_MAXISP};

private:
    BOOL m_bHaveLap;

    ULONG m_ulTotalSize;
    ULONG m_ulTotalFileCount;

    ULONG m_ulRecvSize;
    ULONG m_ulRecvFileCount;

    CString m_strCurrentFile;

    CString m_strTips;

    CString m_strRunApp;

    DWORD m_dwConsumeTick;

    DWORD m_dwAvgSpeed;
    DWORD m_dwRtmSpeed;
    DWORD m_dwOldRtmSpeed;

    CString m_strURL; // 右上角服务器状态页面
	CString m_strNews; // 新闻页面
	CString m_strRegs; // 注册页面
	CString m_strChrg; // 充值页面

    UCHAR m_ucISP;
    BOOL m_bFirstRun;
};

class CKopDownload : public CFtpClient
{
public:
    CKopDownload(CWnd* pMainWnd, LPCTSTR lpszCfgFile);
    virtual ~CKopDownload();

    BOOL IsUpdateSkip() const {return m_bSkipUpdate;}
    BOOL IsUpdateNeed();
    BOOL IsUpdateReady();
    BOOL Update();
    BOOL PostQuitMessage();

protected:
    enum {UPDATE_NOUPDATE, UPDATE_HASUPDATE};
    enum {GET_RETRYCOUNT = 3};

    void LoadConfig();
    void MakeFileWritable(LPCTSTR lpszFile);
    BOOL RestoreFile(LPCTSTR lpszTempFile, LPCTSTR lpszOriginalFile);
    virtual void OnLoadConfig(CString strKey, CString strValue);
    BOOL LoadVerString(LPCTSTR lpszFileName, CString& strVerString);
    virtual int OnUpdateBegin();
    virtual int OnUpdateEnd();
    virtual int OnGetFileBegin(LPCTSTR lpszRemoteFile);
    virtual int OnGetFileRecv(LPCTSTR lpszRemoteFile, ULONG ulRecvSize, DWORD dwIncTick);
    virtual int OnGetFileSuccess(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile);
    virtual int OnGetFileNotFound(LPCTSTR lpszRemoteFile, LPCTSTR lpszLocalFile);
    virtual int OnGetFileFailed(LPCTSTR lpszRemoteFile, ULONG ulRecvSize);

    BOOL PostMessage(UINT uMsg, WPARAM wParam = 0, LPARAM lParam = 0);
    void ThrowFtpException(int nCode);

private:
	void ChangeServer();

private:
    CWnd* m_pMainWnd;

    CString m_strCfgFile;
    std::vector<CString> m_ServerList; // 电信服务器ip列表
    std::vector<CString> m_ServerListN; // 网通服务器ip列表
    CString m_strLoginUser;
    CString m_strLoginPwd;
    CString m_strRunApp; // 要启动的应用程序路径
    BOOL m_bSkipUpdate; // 是否跳过更新

    CFileVersionMgr m_FileVerMgr; // 版本管理器
    vector<SFILE_INFO> m_UpdateList; // 更新列表
    int m_nUpdateTotalCount; // 更新文件总数量
    int m_nUpdateTotalSize; // 更新文件总大小
};

extern CKopData g_KopData;
