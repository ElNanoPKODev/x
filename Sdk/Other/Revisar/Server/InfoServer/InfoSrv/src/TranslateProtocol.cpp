
#include "translateprotocol.h"
#include "datatype.h"
#include "ItemFunc.h"
#include <string.h>
#include <stdlib.h>
#include <enclib.h>
#include "d3des.h"




extern char g_logfile[];



TranslateProtocol::TranslateProtocol()
{
}



TranslateProtocol::~TranslateProtocol()
{
}


void TranslateProtocol::SetProtocolPtr(const char* prot)
{
    m_ptr = (char*)prot;
}


const char* TranslateProtocol::GetColumn(char splite)
{
    try
    {
        if((0 == m_ptr) || ('\0' == m_ptr))
        {
            return 0;
        }

        char* ptr = m_ptr;
        char* pos = strchr(m_ptr, splite);

        if(pos)
        {
            *pos = '\0';
            m_ptr = pos + 1;
        }
        else
        {
            m_ptr = 0;
        }

        return ptr;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> GetColumn Exception...\r\n");
    }
    return 0;
}


long TranslateProtocol::Replace(char oldchr, char newchr)
{
    try
    {
        if((0 == m_ptr) || ('\0' == m_ptr))
        {
            return 0;
        }

        long ret = 0;

        char* pos;
        do
        {
            pos = strchr(m_ptr, oldchr);
            if(pos)
            {
                *pos = newchr;
                m_ptr = pos + 1;
                ++ret;
            }
        }while(pos);
        m_ptr = 0;

        return ret;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> Replace Exception...\r\n");
    }
    return 0;
}


bool TranslateProtocol::IsNumber(const char* numStr)
{
    try
    {
        if(!numStr)
        {
            return false;
        }

        while('\0' != *numStr)
        {
            if((*numStr < '0') || (*numStr > '9'))
            {
                return false;
            }
            ++numStr;
        }
        return true;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> IsNumber Exception...\r\n");
    }
    return false;
}


pAgentMsg TranslateProtocol::PeekMSG(const char* msg)
{
    try
    {
        LG(g_logfile, "Begin Peek Message: %s\r\n", msg);
        if((0 == msg) || (strlen(msg) < 6))
        {
            LG(g_logfile, "=====> Peek Error Message...\r\n");
            return 0;
        }
        pAgentMsg   pAM = new AgentMsg;
        memset(pAM, 0, sizeof(AgentMsg));

        char* ptr = (char*)msg;
        char* tPtr;

        SetProtocolPtr(ptr);

        tPtr = (char*)GetColumn(' ');//  取编号
        if(tPtr)
        {
            pAM->msgID = atol(ptr);
        }
		/*
		请求连接
		10000 [验证信息]\n\n
		*/
        if(10000 == pAM->msgID)     //  登陆验证
        {
            tPtr = (char*)GetColumn(' ');
            if(tPtr)
            {
                strcpy(pAM->field[FIELD1], tPtr);
            }
        }
        else
        {
            /*
                非服务器验证信息都具有时间戳
            */
            tPtr = (char*)GetColumn(' ');
            if(tPtr)    //  时间戳
            {
                strcpy(pAM->timeStamp, tPtr);

                /*
                    协议基本都带有小区
                */
                tPtr = (char*)GetColumn(' ');
                if(tPtr)
                {
                    if(IsNumber(tPtr))
                    {
                        pAM->section = atol(tPtr);
                    }
                    else
                    {
                        pAM->section = -1;
                    }

                    switch(pAM->msgID)
                    {
                    case 11000:             //  角色列表
                        {
                            tPtr = (char*)GetColumn(' ');   //  取用户名
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[FIELD1], tPtr);
                        }  break;
                    case 11100:         //  帐号激活
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
                        }  break;
                    case 11200:     //  帐号封停
                    case 11400:     //  帐号解封
                        {
							// Modify by lark.li 20080822 begin
                            //tPtr = (char*)GetColumn(' ');   //  取用户名
                            //if(!tPtr)
                            //{
                            //    break;
                            //}
                            //strcpy(pAM->field[FIELD1], tPtr);
                             for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
							// End
                       }  break;
                    case 11300:             //  在线人数
                        {
                        }  break;
                    case 11500:             //  更改密码
                        {
                            for(int i = 0; i < 3; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                                strupr(pAM->field[i]);
                            }
                        }  break;
                    case 11600:             //  角色改名
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
                        }  break;
					case 11700:         //  根据角色查帐号 //add by wky
                        {
                            tPtr = (char*)GetColumn(' ');//获取请求查询的“角色名”
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//返回请求查询的“角色名”
                        }  break;
                    case 12000:             //  道具
                        {
                            int len = 128;
                            ItemInfo* itemInfo = ItemInfo::Instance();
                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))  //  检测该交易纪录是否已处理过
                            {
                                sprintf(pAM->field[FIELD1], "12006 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                            if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
                            if(itemInfo->WriteTradeRecord(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr))  //  保存道具交易纪录
                            {
                                char* ptr = pAM->field[FIELD1];
                                int i;
                                for(i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');       //  将角色ID与消息个数放在第一个字段中，
                                                                        //  角色ID占中间64个字节，个数占后64个字节
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(ptr, tPtr);
                                    ptr += 64;
                                }
                                int num = atoi(pAM->field[FIELD1] + 64);
                                if(0 == (num % 2))
                                {
                                    num /= 2;
                                }
                                else
                                {
                                    num /= 2;
                                    ++num;
                                }
                                if(num > 0 && num <= 31)
                                {
                                    int j;
                                    for(i = 0; i < num; i++)                //  取所有道具消息
                                    {
                                        ptr = pAM->field[i + 1];
                                        for(j = 0; j < 2; j++)
                                        {
                                            tPtr = (char*)GetColumn(';');   //  每个道具消息占64字节。每个字段存放2条
                                            if(!tPtr)
                                            {
                                                break;
                                            }
                                            strcpy(ptr, tPtr);
                                            ptr += 64;
                                        }
                                    }
                                }
                            }
                            else
                            {
                                sprintf(pAM->field[FIELD1], "12006 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        }  break;
                    case 12100:             //  海盗币
                        {
                            int len = 128;
                            ItemInfo* itemInfo = ItemInfo::Instance();
                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))          //  检测交易
                            {
                                sprintf(pAM->field[FIELD1], "12104 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                            if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
                            if(itemInfo->WriteTradeRecord(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr))  //  保存海盗币交易纪录
                            {
                                for(int i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');   //  取角色id与金钱数量
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(pAM->field[i], tPtr);
                                }
                            }
                            else
                            {
                                sprintf(pAM->field[FIELD1], "12104 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        }  break;
                    case 12200:
                        {
                            int len = 128;
                            ItemInfo* itemInfo = ItemInfo::Instance();
                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))          //  检测交易
                            {
                                sprintf(pAM->field[FIELD1], "12204 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                            if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
                            if(itemInfo->WriteTradeRecord(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr))  //  保存海盗币交易纪录
                            {
                                for(int i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');   //  取角色id与金钱数量
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(pAM->field[i], tPtr);
                                }
                            }
                            else
                            {
                                sprintf(pAM->field[FIELD1], "12204 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        }  break;
                    case 12300:
                        {
                            tPtr = (char*)GetColumn(' ');   //  取角色ID
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[FIELD1], tPtr);
                        }  break;
						
					case 12400:             //  插入道具（含交易流水号） //add by wky
                        {
							/*
							12400 [唯一标识码] [小区ID] [密文] [交易流水号] [产品编号] [角色ID] [消息个数] [[道具编号] [道具个数];]\n\n
							12401 [唯一标识码] [角色编号错误描述]\n\n
							12402 [唯一标识码] [角色处于在线状态]\n\n
							12403 [唯一标识码] [道具编号错误描述]\n\n
							12404 [唯一标识码] [参数错误描述]\n\n
							12405 [唯一标识码] [背包已满]\n\n
							12410 [唯一标识码] [成功信息]\n\n
							*/
						
							char key[64] = "64666e6b696e3240232153643966";//"dfnkin2@#!Sd9f"
							char value[128] = {0};
							char flow_id[64] = {0};
							char production_id[64] = {0};
                            int len = 128;

							ItemInfo* itemInfo = ItemInfo::Instance();
							strcpy(pAM->field[FIELD1], (char*)GetColumn(' '));//获取密文

							strcpy(flow_id, (char*)GetColumn(' '));
							strcpy(production_id, (char*)GetColumn(' '));
							strcpy(pAM->field[FIELD2], flow_id);				//获得交易流水ID
							strcpy(pAM->field[FIELD2] + 64, production_id);		//获得产品编号
 
							//转十六进制
							char *ptr = value;
							for(int j = 4; j < strlen(flow_id); j++)
							{
								sprintf((char*)ptr, "%02x", flow_id[j]);//删除前四位
								ptr += 2;
							}
							strcat(ptr,key);//十六进制密钥

							//验证密文
							for(j = 0; j < strlen(value); j++)
							{
								if(value[j] != pAM->field[FIELD1][j])
								{
									sprintf(pAM->field[FIELD1], "12401 %s Wrong_Password\n\n", pAM->timeStamp);
									pAM->state = 1;
									return pAM;
								}
							}

                            if(!itemInfo->CheckTradeRecord(pAM->field[FIELD1], len, pAM->timeStamp))  //  检测该交易纪录（每次记录的id都不同）是否已处理过
                            {
								sprintf(pAM->field[FIELD1], "12406 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
							if(!itemInfo->CheckTradeFlowID(flow_id))	//	检测该交易流水（一笔交易只有一个流水号）是否已经处理过
							{
								//这里只能填到pAM->field[FIELD1]中，否则无法正常的返回异常信息的问题
								sprintf(pAM->field[FIELD1], "12406 %s Flow_ID_Exception\n\n", flow_id);
								pAM->state = 1;
                                return pAM;
							}
							if(len > 0)
                            {
                                pAM->state = 1;
                                return pAM;
                            }
							if(itemInfo->WriteTradeRecord2(pAM->timeStamp, pAM->msgID, pAM->section, m_ptr, flow_id, production_id))  //  保存道具交易纪录
                            {
								//从角色ID和消息个数处开始	
                                char* ptr = pAM->field[FIELD3];//label:1
                                int i;
                                for(i = 0; i < 2; i++)
                                {
                                    tPtr = (char*)GetColumn(' ');       //  将角色ID与消息个数放在第一个字段中，
                                                                        //  角色ID占中间64个字节，个数占后64个字节
                                    if(!tPtr)
                                    {
                                        break;
                                    }
                                    strcpy(ptr, tPtr);
                                    ptr += 64;
                                }
								int num = atoi(pAM->field[FIELD3] + 64);	//1.位置由 //label:1 决定。
                                if(0 == (num % 2))
                                {
                                    num /= 2;
                                }
                                else
                                {
                                    num /= 2;
                                    ++num;
                                }
                                if(num > 0 && num <= 31)
                                {
                                    int j;
                                    for(i = 0; i < num; i++)                //  取所有道具消息
                                    {
                                        ptr = pAM->field[i + 3];			//2.位置由 //label:1 决定。
                                        for(j = 0; j < 2; j++)
                                        {
                                            tPtr = (char*)GetColumn(';');   //  每个道具消息占64字节。每个字段存放2条
                                            if(!tPtr)
                                            {
                                                break;
                                            }
                                            strcpy(ptr, tPtr);
                                            ptr += 64;
                                        }
                                    }
                                }
                            }
                            else
                            {
								sprintf(pAM->field[FIELD1], "12406 %s Record_Exception\n\n", pAM->timeStamp);
                                pAM->state = 1;
                                return pAM;
                            }
                        } break;
                    case 13000:
                        {
                            for(int i = 0; i < 4; i++)
                            {
                                tPtr = (char*)GetColumn(' ');
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);
                            }
                        }  break;
					//  清空二次密码 //add by wky
					case 13100:
                        {
                            tPtr = (char*)GetColumn(' ');//取得请求的“帐户名”
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//返回“帐户名”
                        }  break;
					//  恢复角色 //add by wky
					case 13200:
                        {
                            tPtr = (char*)GetColumn(' ');//取得请求的“角色ID”
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//返回“角色ID”
                        }  break;
					//  帐户名模糊查询 //add by wky
					case 14000:
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');//取得请求查询的“帐户名”、“要查询的页码”
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);//返回“帐户名”、“要查询的页码”
                            }
                        }  break;
					//  角色名模糊查询 //add by wky
					case 14100:
                        {
                            for(int i = 0; i < 2; i++)
                            {
                                tPtr = (char*)GetColumn(' ');//取得请求查询的“角色名”、“要查询的页码”
                                if(!tPtr)
                                {
                                    break;
                                }
                                strcpy(pAM->field[i], tPtr);//返回“角色名”、“要查询的页码”
                            }
                        }  break;
					//  帐户信息查询（列出所有信息） //add by wky
					case 14200:
                        {
                            tPtr = (char*)GetColumn(' ');//取得请求查询的“帐户名”
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//返回“帐户名”
                        }  break;
					//  角色信息查询（列出所有信息） //add by wky
					case 14300:
                        {
                            tPtr = (char*)GetColumn(' ');//取得请求查询的“角色ID”
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//返回“角色ID”
                        }  break;
					//  排行榜 //add by wky
					case 14400:
                        {
                            tPtr = (char*)GetColumn(' ');//取得请求查询的“排行榜人数”
                            if(!tPtr)
                            {
                                break;
                            }
                            strcpy(pAM->field[0], tPtr);//返回“排行榜人数”
                        }  break;

					//  除了以上所有协议之外
                    default:
                        {
                            SAFE_DELETE(pAM);
                            return 0;
                        }  break;
                    }
                }
            }
        }
        LG(g_logfile, "End Peek Message...\r\n");
        return pAM;
    }
    catch(...)
    {
        LG(g_logfile, "=|=|=> Peek Error Message...\r\n");
        return 0;
    }
}


