#include "stdafx.h"
#include ".\npchelper.h"
#include <tchar.h>

NPCHelper* NPCHelper::_Instance = NULL; 
BOOL NPCHelper::_ReadRawDataInfo(CRawDataInfo *pRawDataInfo, vector<string> &ParamList)
{   
	if(ParamList.size()==0) return FALSE;

	NPCData *pInfo = (NPCData*)pRawDataInfo;

	int m = 0, n = 0;
	string strList[8];
	string strLine;

	// npc显示名称
	_tcsncpy(pInfo->szName, pInfo->szDataName, NPC_MAXSIZE_NAME);
	pInfo->szName[NPC_MAXSIZE_NAME - 1] = _TEXT('\0');

	_tcsncpy(pInfo->szArea, ParamList[m++].c_str(), NPC_MAXSIZE_NAME);
	pInfo->szMapName[NPC_MAXSIZE_NAME - 1] = _TEXT('\0');

	// npc位置信息
	Util_ResolveTextLine( ParamList[m++].c_str(), strList, 8, ',' ); 
	pInfo->dwxPos0 = Str2Int(strList[0]);
	pInfo->dwyPos0 = Str2Int(strList[1]);

	// npc所在地图显示名称
	_tcsncpy(pInfo->szMapName, ParamList[m++].c_str(), NPC_MAXSIZE_NAME);
	pInfo->szMapName[NPC_MAXSIZE_NAME - 1] = _TEXT('\0');

	return TRUE;
}
