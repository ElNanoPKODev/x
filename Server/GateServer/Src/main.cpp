// main.cpp : Defines the entry point for the console application.
//

#include "gateserver.h"
_DBC_USING;

//#pragma init_seg( lib )
pi_LeakReporter pi_leakReporter("gatememleak.log");
CResourceBundleManage g_ResourceBundleManage("GateServer.loc"); //Add by lark.li 20080130

//#include <ExceptionUtil.h>

int main(int argc, char* argv[])
{
	SEHTranslator translator;

	T_B

	// Add by lark.li 20080731 begin
	pi_Memory m;
	m.startMonitor(1);
	// End

	::SetLGDir("logfile/log");

	GateServerApp app;
	app.ServiceStart();	
	g_gtsvr->RunLoop();
	app.ServiceStop();

	// Add by lark.li 20080731 begin
	m.stopMonitor();
	m.wait();
	// End

	T_FINAL

	return 0;
}
