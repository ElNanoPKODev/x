/* Generated by Together */

#include <time.h>
#include <iostream>
#include <signal.h>

#include "GroupServerApp.h"
#include "GameCommon.h"
#include "Guild.h"
#include "Player.h"
#include "util.h"
#include "Team.h"
#include "Script.h"
#include "Parser.h"

uLong	NetBuffer[]		={100,10,0};
bool	g_logautobak	=true;

LogStream			g_LogErrServer("ErrorServer");
LogStream			g_LogGrpServer("GroupServer");
LogStream			g_LogGuild("Guild");
LogStream			g_LogFriend("Friend");
LogStream			g_LogMaster("Master");
LogStream			g_LogTeam("Team");
LogStream			g_LogConnect("Connect");
LogStream			g_LogDB("Database");
LogStream			g_LogGarner2("Garner2");

GroupServerApp	*	g_gpsvr	=0;
InterLockedLong		g_exit	=0;
InterLockedLong		g_ref	=0;
GMBBS			*	g_gmbbs	=0;
TimerMgr			g_timermgr;
//=========Timer==============
extern BOOL GetOnlineCount( DWORD& dwLoginNum, DWORD& dwPlayerNum );

class AddStatLog: public Timer
{
public:
	AddStatLog(uLong interval):Timer(interval){}
private:
	void Process()
	{
		RefArmor l(g_ref);
		if(!g_exit)
		{
			static long	l_lastlogin =-1;
			static long	l_lastplay	=-1;
			long l_loginum	=g_gpsvr->m_plylst.GetTotal();
			long l_playnum	=long(g_gpsvr->m_curChaNum);
			long l_wgplaynum = long(g_gpsvr->m_curWGChaNum);
			
			//统计外挂数量
			static short sStatCheatCount = 0;
			if(sStatCheatCount == 0)
			{
				//LG("group_cheat", "当前使用外挂数量是[%ld]\n", g_gpsvr->m_dwCheatCount);
				LG("group_cheat", "current cheat count [%ld]\n", g_gpsvr->m_dwCheatCount);
			}
			sStatCheatCount = (sStatCheatCount + 1) % 60;

			//if((l_lastlogin !=l_loginum || l_lastplay !=l_playnum))
			{
				MutexArmor l_lockDB(g_gpsvr->m_mtxDB);

				DWORD dwLoginNum = (DWORD)l_loginum;
				DWORD dwPlayerNum = (DWORD)l_playnum;
				if( GetOnlineCount( dwLoginNum, dwPlayerNum ) )
				{
					l_loginum = dwLoginNum;
					l_playnum = dwPlayerNum;
				}

				g_gpsvr->m_tblaccounts->AddStatLog(l_loginum,l_playnum,l_wgplaynum);							

				l_lastlogin	=l_loginum;
				l_lastplay	=l_playnum;
			}
		}
	}
};
extern "C"{WINBASEAPI HWND APIENTRY GetConsoleWindow(VOID);}
class DisableCloseButton: public Timer
{
public:
	DisableCloseButton(uLong interval):Timer(interval),m_hMenu(0)
	{
		HWND hWnd	= ::GetConsoleWindow();
		m_hMenu		= GetSystemMenu(hWnd, FALSE);
	}
private:
	~DisableCloseButton()
	{
	}
	void Process()
	{
		RefArmor l(g_ref);
		if (!g_exit && m_hMenu)
		{
			EnableMenuItem(m_hMenu, SC_CLOSE, MF_BYCOMMAND | MF_GRAYED);
		}
	}
	HMENU m_hMenu;
};
GMBBS::GMBBS(uLong interval):Timer(interval),m_dwCount(0)
{
	for(uLong i=0;i<em_words;i++)
	{
		m_queue[i].m_times=0;
	}
	g_gmbbs	=this;
}
GMBBS::~GMBBS(){g_gmbbs	=0;}
bool GMBBS::AddBBS(uLong inter,uLong times,const char *word)
{
	MutexArmor l_lockQue(m_mtxque);
	uLong i;
	for(i=0;i<em_words && m_queue[i].m_times;i++);
	if(i==em_words)return false;
	m_queue[i].m_start	=m_dwCount;
	m_queue[i].m_inter	=inter*10;
	m_queue[i].m_times	=times;
	m_queue[i].m_word	=word;
	return true;
}

void GMBBS::Process()
{
	++m_dwCount;
	MutexArmor l_lockQue(m_mtxque);
	for(uLong i=0;i<em_words;i++)
	{
		if(m_queue[i].m_times && (m_dwCount -m_queue[i].m_start)%m_queue[i].m_inter ==1)
		{
			WPacket	l_wpk	=g_gpsvr->GetWPacket();
			l_wpk.WriteCmd(CMD_MC_SYSINFO);
			l_wpk.WriteString(m_queue[i].m_word);					//说话的内容

			Player *l_plylst[10240];
			short	l_plynum	=0;

			Player	*	l_ply1	=0;char	l_currcha	=0;
			RunChainGetArmor<Player> l(g_gpsvr->m_plylst);
			while(l_ply1	=g_gpsvr->m_plylst.GetNextItem())
			{
				if((l_currcha =l_ply1->m_currcha) >=0)
				{
					l_plylst[l_plynum]	=l_ply1;
					l_plynum ++;
				}
			}
			l.unlock();
			g_gpsvr->SendToClient(l_plylst,l_plynum,l_wpk);


			if(!--(m_queue[i].m_times))
			{
				m_queue[i].m_word.SetSize(0);
			}
		}
	}
}
void __cdecl ctrlc_dispatch(int sig)
{
	if (sig == SIGINT)
	{
		g_exit	=1;
		signal(SIGINT, ctrlc_dispatch);
		//while(g_ref)
		//{
		//	Sleep(1);
		//}
		//ThreadPool	*l_comm = g_gpsvr->GetCommunicator();
		//ThreadPool	*l_proc = g_gpsvr->GetProcessor();
		//delete g_gpsvr;

		//l_comm->DestroyPool();
		//l_proc->DestroyPool();
		//TcpCommApp::WSACleanup();
		//g_exit	=2;
		//Sleep(2000);

		//exit(0);
	}
}
GroupServerApp::GroupServerApp(ThreadPool *proc,ThreadPool *comm)
:TcpServerApp(this,proc,comm),RPCMGR(this)
,m_plyheap(1,1000),m_gldheap(1,100),m_teamheap(1,300),m_acctsock(0),m_gatenum(0)//,m_tblsystem(0)
// Modify by lark.li 20080806 
//,m_tblaccounts(0),m_tblcharaters(0),m_tblfriends(0),m_tblguilds(0),m_tbLparam(0),m_tblX1(0),m_cfg("GroupServer.cfg")
,m_tblaccounts(0),m_tblcharaters(0),m_tblfriends(0),m_tblguilds(0),m_tbLparam(0),m_tblX1(0),m_cfg("GroupServer.cfg")
// End
,m_curChaNum(0),m_curWGChaNum(0)
{
	g_gpsvr	=this;

	SetPKParse(0,2,16*1024,100);
	uLong	l_alive	=10;
	try{
		l_alive	=atoi(m_cfg["Main"]["KeepAlive"]);
	}catch(...){}
	BeginWork(l_alive);
	m_mtxDB.Create(false);
	m_mtxlogin.Create(false);

	m_plyheap.Init();
	m_gldheap.Init();
	m_teamheap.Init();

	srand( (unsigned)time( NULL ) );	//初始化随机数种子
	try
	{
		Initialize();
		(proc?proc:comm)->AddTask(&g_timermgr);
		g_timermgr.AddTimer(new AddStatLog(10*1000));
		g_timermgr.AddTimer(new ChkGuild(60*1000));
		g_timermgr.AddTimer(new DisableCloseButton(200));
		g_timermgr.AddTimer(new GMBBS(1000));
		signal(SIGINT, ctrlc_dispatch);

		// Add by lark.li 20080702 begin
		//白银城				=garner
		//沙岚城				=magicsea
		//冰狼堡				=darkblue
		m_mapBirthplace["Argent City"] = "garner";
		m_mapBirthplace["Shaitan City"] = "magicsea";
		m_mapBirthplace["Icicle Castle"] = "darkblue";
		// End

	}catch(excp &e)
	{
		std::cout<<e.what()<<std::endl;
		LogLine l_line(g_LogConnect);
		l_line<<newln<<e.what()<<endln;
		try{GroupServerApp::~GroupServerApp();}catch(...){}
		throw e;
	}catch(...)
	{
		//std::cout<<"GroupServer初始化期间发生未知错误，请通知开发者"<<std::endl;
		std::cout<<"GroupServer init unkonwn exception, please contact developer"<<std::endl;
		try{GroupServerApp::~GroupServerApp();}catch(...){}
		throw;
	}
}
GroupServerApp::~GroupServerApp()
{
	ShutDown(12*1000);

	MutexArmor l_lock(m_mtxDB);
	if(m_tblX1)
	{
		delete m_tblX1;
		m_tblX1	=0;
	}
	if(m_tblguilds)
	{
		delete m_tblguilds;
		m_tblguilds	=0;
	}
	if(m_tblfriends)
	{
		delete m_tblfriends;
		m_tblfriends=0;
	}
	if(m_tblcharaters)
	{
		delete m_tblcharaters;
		m_tblcharaters	=0;
	}
	// Add by lark.li 20080806 begin
	if(m_tblpersoninfo)
	{
		delete m_tblpersoninfo;
		m_tblpersoninfo	=0;
	}
	if(m_tblpersonavatar)
	{
		delete m_tblpersonavatar;
		m_tblpersonavatar	=0;
	}
	// End
	if(m_tblaccounts)
	{
		delete m_tblaccounts;
		m_tblaccounts	=0;
	}
	if(m_tbLparam)
	{
		delete m_tbLparam;
		m_tbLparam = 0;
	}
	CloseLuaScript();
/*	if(m_tblsystem)
	{
		m_tblsystem->Decrement();
		delete m_tblsystem;
		m_tblsystem		=0;
	}
*/}
void GroupServerApp::SendToClient(Player* ply[],short cli_num,const WPacket &wpk)
{
	WPacket	l_wpk2;uShort l_count2;
	for(int j=0;j<GATE_MAX;j++)
	{
		if(!m_gate[j].GetDataSock())continue;
		l_wpk2	=wpk;l_count2 =0;
		for(short i=0;i<cli_num;i++)
		{
			if(ply[i]->m_gate ==m_gate +j && ply[i]->m_currcha >=0)
			{
				l_wpk2.WriteLong(MakeULong(ply[i]));
				l_wpk2.WriteLong(ply[i]->m_gtAddr);
				l_count2	++;
			}
		}
		if(l_count2)
		{
			l_wpk2.WriteShort(l_count2);
			m_gate[j].GetDataSock()->SendData(l_wpk2);
		}
	}
}
void GroupServerApp::SendToClient(Player* ply,WPacket &wpk)
{
	if(ply && ply->m_gate)
	{
		wpk.WriteLong(MakeULong(ply));
		wpk.WriteLong(ply->m_gtAddr);
		wpk.WriteShort(1);
		ply->m_gate->m_datasock->SendData(wpk);
	}
}

GateServer * GroupServerApp::FindGateSByName(cChar *gatename)
{
	short i;
	for(i =0;i<m_gatenum;i++)
	{
		if(m_gate[i].m_name==gatename)
		{
			break;
		}
	}
	return (i<m_gatenum)?m_gate+i:0;
}
Guild * GroupServerApp::FindGuildByName(cChar * gldname)
{
	Guild	*l_gld	=0;
	RunChainGetArmor<Guild> l(m_gldlst);
	while(l_gld	=m_gldlst.GetNextItem())
	{
		if(!strcmp(l_gld->m_name,gldname))break;
	}
	l.unlock();
	return l_gld;
}
Guild * GroupServerApp::FindGuildByGldID(uLong	gldid)
{
	Guild	*l_gld	=0;
	RunChainGetArmor<Guild> l(m_gldlst);
	while(l_gld	=m_gldlst.GetNextItem())
	{
		if(l_gld->m_id ==gldid)break;
	}
	l.unlock();
	return l_gld;
}
Guild *	GroupServerApp::FindGuildByLeadID(uLong chaid)
{
	Guild	*l_gld	=0;
	RunChainGetArmor<Guild> l(m_gldlst);
	while(l_gld	=m_gldlst.GetNextItem())
	{
		if(l_gld->m_leaderID ==chaid)break;
	}
	l.unlock();
	return l_gld;
}
Player * GroupServerApp::FindPlayerByChaName(cChar * plyname)
{
	Player	*l_ply	=0;char	l_currcha	=0;
	RunChainGetArmor<Player> l(m_plylst);
	while(l_ply	=m_plylst.GetNextItem())
	{
		if(((l_currcha =l_ply->m_currcha) >=0)&&(l_ply->m_chaname[l_currcha] ==plyname))break;
	}
	l.unlock();
	return l_ply;
}
Player * GroupServerApp::FindPlayerByChaID(uLong chaid)
{
	Player	*l_ply	=0;char	l_currcha	=0;
	RunChainGetArmor<Player> l(m_plylst);
	while(l_ply	=m_plylst.GetNextItem())
	{
		if(((l_currcha =l_ply->m_currcha) >=0)&&(l_ply->m_chaid[l_currcha] ==chaid))break;
	}
	l.unlock();
	return l_ply;
}

Player *GroupServerApp::GetPlayerByChaID(uLong chaid)
{
	map<uLong, Player *>::iterator it = m_mapPlayerList.find(chaid);
	if(it != m_mapPlayerList.end())
	{
		return m_mapPlayerList[chaid];
	}
	return NULL;
}

bool GroupServerApp::AddPlayerToList(uLong chaid, Player *pPlayer)
{
	map<uLong, Player *>::iterator it = m_mapPlayerList.find(chaid);
	if(it != m_mapPlayerList.end())
	{
		return false;
	}
	m_mapPlayerList[chaid] = pPlayer;
	return true;
}

bool GroupServerApp::DelPlayerFromList(uLong chaid)
{
	map<uLong, Player *>::iterator it = m_mapPlayerList.find(chaid);
	if(it != m_mapPlayerList.end())
	{
		m_mapPlayerList.erase(it);
		return true;
	}
	return false;
}

