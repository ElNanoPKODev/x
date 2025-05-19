


#include "thread.h"
#include <process.h>
#include <util.h>


extern char g_logfile[260];

void __onerror(unsigned t, EXCEPTION_POINTERS * pexp)
{
    char des[1024] = {0};
    sprintf(des, "ThreadID:%li ", GetCurrentThreadId());
	switch (pexp->ExceptionRecord->ExceptionCode)
	{
	case EXCEPTION_NO_MEMORY:                   strcat(des, "NO_MEMORY");             break;
	case EXCEPTION_ACCESS_VIOLATION:            strcat(des, "ACCESS_VIOLATION");      break;
	case EXCEPTION_DATATYPE_MISALIGNMENT:       strcat(des, "DATATYPE_MISALIGNMENT"); break;
	case EXCEPTION_BREAKPOINT:                  strcat(des, "BREAKPOINT");            break;
	case EXCEPTION_SINGLE_STEP:                 strcat(des, "SINGLE_STEP");           break;
	case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:       strcat(des, "ARRAY_BOUNDS_EXCEEDED"); break;
	case EXCEPTION_FLT_DENORMAL_OPERAND:        strcat(des, "FLT_DENORMAL_OPERAND");  break;
	case EXCEPTION_FLT_DIVIDE_BY_ZERO:          strcat(des, "FLT_DIVIDE_BY_ZERO");    break;
	case EXCEPTION_FLT_INEXACT_RESULT:          strcat(des, "FLT_INEXACT_RESULT");    break;
	case EXCEPTION_FLT_INVALID_OPERATION:       strcat(des, "FLT_INVALID_OPERATION"); break;
	case EXCEPTION_FLT_OVERFLOW:                strcat(des, "FLT_OVERFLOW");          break;
	case EXCEPTION_FLT_STACK_CHECK:             strcat(des, "FLT_STACK_CHECK");       break;
	case EXCEPTION_FLT_UNDERFLOW:               strcat(des, "FLT_UNDERFLOW");         break;
	case EXCEPTION_INT_DIVIDE_BY_ZERO:          strcat(des, "INT_DIVIDE_BY_ZERO");    break;
	case EXCEPTION_INT_OVERFLOW:                strcat(des, "INT_OVERFLOW");          break;
	case EXCEPTION_PRIV_INSTRUCTION:            strcat(des, "PRIV_INSTRUCTION");      break;
	case EXCEPTION_IN_PAGE_ERROR:               strcat(des, "IN_PAGE_ERROR");         break;
	case EXCEPTION_ILLEGAL_INSTRUCTION:         strcat(des, "ILLEGAL_INSTRUCTION");   break;
	case EXCEPTION_NONCONTINUABLE_EXCEPTION:    strcat(des, "NONCONTINUABLE_EXCEPTION");  break;
	case EXCEPTION_STACK_OVERFLOW:              strcat(des, "STACK_OVERFLOW");        break;
	case EXCEPTION_INVALID_DISPOSITION:         strcat(des, "INVALID_DISPOSITION");   break;
	case EXCEPTION_GUARD_PAGE:                  strcat(des, "GUARD_PAGE");            break;
	case EXCEPTION_INVALID_HANDLE:              strcat(des, "INVALID_HANDLE");        break;
	default:                                    strcat(des, "UnKnown Exception");     break;
	};
    //MessageBox(0, des, "Exception", MB_OK);
    LG(g_logfile, "%s\r\n", des);
}


uint __stdcall ThreadFunc(void* param)
{
    //CatchException();
    //se_translator translator;
	SEHTranslator translator;

    try
    {
        Thread* __thread = (Thread*)param;
        uint __ret = __thread->Run();
        _endthreadex(__ret);
        return __ret;
    }
    catch(std::exception &e)
    {
        std::cout << e.what() << std::endl;
    }
    catch(...)
    {
        char buff[64] = {0};
        sprintf(buff, "ThreadID: %i happened some exception", GetCurrentThreadId());
        //MessageBox(0, buff, "Thread Exception", MB_OK);
        LG(g_logfile, "=====> Exception Thread...\r\n");
    }
    return -1;
}


Thread::Thread()
{
}


Thread::~Thread()
{
}


bool Thread::Begin(int flag)
{
    m_thread = (HANDLE)_beginthreadex(NULL, 0, ThreadFunc, this, flag, &m_threadid);
    return NULL != m_thread;
}


bool Thread::Resume()
{
    return -1 != ResumeThread((HANDLE)m_thread);
}


bool Thread::Suspend()
{
    return -1 != SuspendThread((HANDLE)m_thread);
}


bool Thread::Terminate()
{
    return TRUE == TerminateThread((HANDLE)m_thread, 0);
}


int Thread::Wait(int time)
{
    return (int)WaitForSingleObject((HANDLE)m_thread, time);
}


bool Thread::SetPriority(int priority)
{
    return TRUE == SetThreadPriority((HANDLE)m_thread, priority);
}


int Thread::GetPriority()
{
    return GetThreadPriority((HANDLE)m_thread);
}


