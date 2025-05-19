
#if !defined __HEAD_H__
#define __HEAD_H__

#include <winsock2.h>
#include <vector>
#include "datatype.h"


using std::vector;

typedef struct tagServer
{
    long id;
    char name[128];
    char servip[64];
    short port;
}Server, *pServer;


typedef vector<pServer> ServerList;


#endif
