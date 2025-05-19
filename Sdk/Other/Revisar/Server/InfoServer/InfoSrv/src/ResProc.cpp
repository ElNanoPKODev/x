

#include <string>
#include "socketlist.h"
#include "resource.h"
#include "MyListView.h"
#include "MyComboBox.h"
#include "ado.h"
#include "config.h"
#include "logqueue.h"
#include "ItemFunc.h"
#include "infoServerThread.h"
#include "infoserver.h"
#include <windows.h>
#include "zlib/zlib.h"


extern LogBuffer   g_logbuff;
extern LogQueue    g_logqueue;
extern DBThread    g_db_thread;
extern CFG         g_cfg;
extern SocketList   g_socklist;
extern char g_logfile[260];


void InitItem(MyComboBox* cb)
{
    cb->AddItem("Strength Bonus");
    cb->AddItem("Agility Bonus");
    cb->AddItem("Accuracy Bonus");
    cb->AddItem("Constitution Bonus");
    cb->AddItem("Spirit Bonus");
    cb->AddItem("Luck Bonus");
    cb->AddItem("Hit Rate Bonus");
    cb->AddItem("Attack Range Bonus");
    cb->AddItem("Min Attack Bonus");
    cb->AddItem("Max Attack Bonus");
    cb->AddItem("Defense Bonus");
    cb->AddItem("Max HP Bonus");
    cb->AddItem("Max SP Bonus");
    cb->AddItem("Dodge Bonus");
    cb->AddItem("Accuracy Rate Bonus");
    cb->AddItem("Berserk Rate Bonus");
    cb->AddItem("Treasure Drop Bonus");
    cb->AddItem("HP Recovery Rate Bonus");
    cb->AddItem("SP Recovery Rate Bonus");
    cb->AddItem("Movement Speed Bonus");
    cb->AddItem("Gathering Rate Bonus");
    cb->AddItem("Physical Resist Bonus");
}


void InitItemType(MyComboBox* cb)
{
    cb->AddItem("Coefficient");
    cb->AddItem("Constant");
    cb->SetCurSel(0);
}


void InitPercent(HWND hwnd)
{
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"100%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"90%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"80%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"70%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"60%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"50%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"40%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"30%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"20%");
    SendMessage(hwnd, CB_ADDSTRING, 0, (LPARAM)"10%");
}


void InitListView(MyListView& list)
{
    list.SetExtended();
    list.InsertColumn(0, "Position", 100);
    list.InsertColumn(1, "ID", 100);
    list.InsertColumn(2, "Name", 100);
    list.InsertColumn(3, "Number", 100);
    list.InsertColumn(4, "Durability", 100);
    list.InsertColumn(5, "Energy", 100);
    list.InsertColumn(6, "Slot", 100);
    list.InsertColumn(7, "Ext Attr ID 1", 140);
    list.InsertColumn(8, "Ext Attr Value 1", 140);
    list.InsertColumn(9, "Ext Attr ID 2", 140);
    list.InsertColumn(10, "Ext Attr Value 2", 140);
    list.InsertColumn(11, "Ext Attr ID 3", 140);
    list.InsertColumn(12, "Ext Attr Value 3", 140);
    list.InsertColumn(13, "Ext Attr ID 4", 140);
    list.InsertColumn(14, "Ext Attr Value 4", 140);
    list.InsertColumn(15, "Ext Attr ID 5", 140);
    list.InsertColumn(16, "Ext Attr Value 5", 140);
}


void InitBoat(MyListView& list)
{
    list.SetExtended();
    list.InsertColumn(0, "Ship Movement ID", 100);
    list.InsertColumn(1, "Ship Info ID", 100);
    list.InsertColumn(2, "Ship Fore", 100);
    list.InsertColumn(3, "Ship Body", 100);
    list.InsertColumn(4, "Ship Motor", 100);
    list.InsertColumn(5, "Ship Artillery", 100);
    list.InsertColumn(6, "Ship Equip", 100);
}


void InitChaLook(MyListView& list)
{
    list.SetExtended();
    list.InsertColumn(0, "Item ID", 100);
    list.InsertColumn(1, "Item Name", 100);
    list.InsertColumn(2, "Item Number", 100);
    list.InsertColumn(3, "Current Durability", 100);
    list.InsertColumn(4, "Max Durability", 100);
    list.InsertColumn(5, "Current Energy", 100);
    list.InsertColumn(6, "Max Energy", 100);
    list.InsertColumn(7, "Slot", 100);
    list.InsertColumn(8, "Ext Attr ID 1", 140);
    list.InsertColumn(9, "Ext Attr Value 1", 140);
    list.InsertColumn(10, "Ext Attr ID 2", 140);
    list.InsertColumn(11, "Ext Attr Value 2", 140);
    list.InsertColumn(12, "Ext Attr ID 3", 140);
    list.InsertColumn(13, "Ext Attr Value 3", 140);
    list.InsertColumn(14, "Ext Attr ID 4", 140);
    list.InsertColumn(15, "Ext Attr Value 4", 140);
    list.InsertColumn(16, "Ext Attr ID 5", 140);
    list.InsertColumn(17, "Ext Attr Value 5", 140);
}


void InitDBList(MyListView& list)
{
    list.SetExtended();
    list.InsertColumn(0, "Section ID", 80);
    list.InsertColumn(1, "Database Server", 140);
}


void InitConnList(MyListView& list)
{
    list.SetExtended();
    list.InsertColumn(0, "Remote Address", 140);
    list.InsertColumn(1, "Port", 80);
    list.InsertColumn(2, "Check", 80);
}




//  将背包数据显示到列表控件中
void SetItemToGUI(CKitbag& kbcha, MyListView& list)
{
    char buffer[32] = {0};

    list.DeleteAllItem();

    int bagsize = kbcha.GetCapacity();
    int j = 0;
    SItemGrid* item;
    CItemRecord* rs;
    for(int i = 0; i < bagsize; i++)
    {
        item = kbcha.GetGridContByID(i);
        if(item)
        {
            rs = GetItemRecordInfo(item->sID);
            list.InsertItem(j);
            list.SetItemText(j, 0, itoa(i+1, buffer, 10));
            list.SetItemText(j, 1, itoa(item->sID, buffer, 10));
            list.SetItemText(j, 2, rs->szName);
            list.SetItemText(j, 3, itoa(item->sNum, buffer, 10));
            list.SetItemText(j, 4, itoa(item->sEndure[1], buffer, 10));
            list.SetItemText(j, 5, itoa(item->sEnergy[1], buffer, 10));
            list.SetItemText(j, 6, itoa((unsigned)item->lDBParam[0] / 1000000000, buffer, 10));

            if(item->IsInstAttrValid())
            {
                list.SetItemText(j, 7, itoa(item->sInstAttr[0][0], buffer, 10));
                list.SetItemText(j, 8, itoa(item->sInstAttr[0][1], buffer, 10));
                list.SetItemText(j, 9, itoa(item->sInstAttr[1][0], buffer, 10));
                list.SetItemText(j, 10, itoa(item->sInstAttr[1][1], buffer, 10));
                list.SetItemText(j, 11, itoa(item->sInstAttr[2][0], buffer, 10));
                list.SetItemText(j, 12, itoa(item->sInstAttr[2][1], buffer, 10));
                list.SetItemText(j, 13, itoa(item->sInstAttr[3][0], buffer, 10));
                list.SetItemText(j, 14, itoa(item->sInstAttr[3][1], buffer, 10));
                list.SetItemText(j, 15, itoa(item->sInstAttr[4][0], buffer, 10));
                list.SetItemText(j, 16, itoa(item->sInstAttr[4][1], buffer, 10));
            }
            else
            {
                list.SetItemText(j, 7, "0");
                list.SetItemText(j, 8, "0");
                list.SetItemText(j, 9, "0");
                list.SetItemText(j, 10, "0");
                list.SetItemText(j, 11, "0");
                list.SetItemText(j, 12, "0");
                list.SetItemText(j, 13, "0");
                list.SetItemText(j, 14, "0");
                list.SetItemText(j, 15, "0");
                list.SetItemText(j, 16, "0");
            }
            ++j;
        }
    }
}


//  将外观信息显示到列表控件中。type： 0外观， 1船只
void SetLookToGUI(stNetChangeChaPart& look, MyListView& list, int type = 0)
{
    char buffer[32] = {0};

    list.DeleteAllItem();

    CItemRecord* rs;
    if(type)
    {
        list.InsertItem();
        list.SetItemText(0, 0, itoa(look.sPosID, buffer, 10));
        list.SetItemText(0, 1, itoa(look.sBoatID, buffer, 10));
        list.SetItemText(0, 2, itoa(look.sHeader, buffer, 10));
        list.SetItemText(0, 3, itoa(look.sBody, buffer, 10));
        list.SetItemText(0, 4, itoa(look.sEngine, buffer, 10));
        list.SetItemText(0, 5, itoa(look.sCannon, buffer, 10));
        list.SetItemText(0, 6, itoa(look.sEquipment, buffer, 10));
    }
    else
    {
        for(int i = 0; i < enumEQUIP_NUM; i++)
        {
            rs = GetItemRecordInfo(look.SLink[i].sID);
            list.InsertItem(i);
            list.SetItemText(i, 0, itoa(look.SLink[i].sID, buffer, 10));
            list.SetItemText(i, 1, rs->szName);
            list.SetItemText(i, 2, itoa(look.SLink[i].sNum, buffer, 10));
            list.SetItemText(i, 3, itoa(look.SLink[i].sEndure[0], buffer, 10));
            list.SetItemText(i, 4, itoa(look.SLink[i].sEndure[1], buffer, 10));
            list.SetItemText(i, 5, itoa(look.SLink[i].sEnergy[0], buffer, 10));
            list.SetItemText(i, 6, itoa(look.SLink[i].sEnergy[1], buffer, 10));
            list.SetItemText(i, 7, itoa((unsigned)look.SLink[i].lDBParam[0] / 1000000000, buffer, 10));

            if(look.SLink[i].IsInstAttrValid())
            {
                list.SetItemText(i, 8, itoa(look.SLink[i].sInstAttr[0][0], buffer, 10));
                list.SetItemText(i, 9, itoa(look.SLink[i].sInstAttr[0][1], buffer, 10));
                list.SetItemText(i, 10, itoa(look.SLink[i].sInstAttr[1][0], buffer, 10));
                list.SetItemText(i, 11, itoa(look.SLink[i].sInstAttr[1][1], buffer, 10));
                list.SetItemText(i, 12, itoa(look.SLink[i].sInstAttr[2][0], buffer, 10));
                list.SetItemText(i, 13, itoa(look.SLink[i].sInstAttr[2][1], buffer, 10));
                list.SetItemText(i, 14, itoa(look.SLink[i].sInstAttr[3][0], buffer, 10));
                list.SetItemText(i, 15, itoa(look.SLink[i].sInstAttr[3][1], buffer, 10));
                list.SetItemText(i, 16, itoa(look.SLink[i].sInstAttr[4][0], buffer, 10));
                list.SetItemText(i, 17, itoa(look.SLink[i].sInstAttr[4][1], buffer, 10));
            }
            else
            {
                list.SetItemText(i, 8, "0");
                list.SetItemText(i, 9, "0");
                list.SetItemText(i, 10, "0");
                list.SetItemText(i, 11, "0");
                list.SetItemText(i, 12, "0");
                list.SetItemText(i, 13, "0");
                list.SetItemText(i, 14, "0");
                list.SetItemText(i, 15, "0");
                list.SetItemText(i, 16, "0");
                list.SetItemText(i, 17, "0");
            }
        }
    }
}


#define RES_TIMER       2000


INT_PTR CALLBACK ResServerProc(HWND _hwnd, UINT _msg, WPARAM wParam, LPARAM lParam)
{
    static InfoServer* __server = GetServerInstance();
    static MyListView conlist;
    static MyListView dblist;
/*
    static MyListView item_lv;
    static MyListView item_bank;
    static MyListView chaLook;
    static MyComboBox section;
    static MyComboBox endure_cb;
    static MyComboBox energy_cb;
    static MyComboBox hole_cb;
    static MyComboBox pro1no_cb;
    static MyComboBox pro2no_cb;
    static MyComboBox pro3no_cb;
    static MyComboBox pro4no_cb;
    static MyComboBox pro5no_cb;
    static MyComboBox pro1typ_cb;
    static MyComboBox pro2typ_cb;
    static MyComboBox pro3typ_cb;
    static MyComboBox pro4typ_cb;
    static MyComboBox pro5typ_cb;
*/
    static ItemInfo*        itemInfo = ItemInfo::Instance();
/*
    static CKitbag	        kbcha;
    static CItemRecord*     pCItemRec = NULL;
    static COLORREF         gColr = RGB(0, 0, 0);
    static HDC              hdc;
    static bool             chaEnable = false;
    static long             lSection = 0;
*/

    switch(_msg)
    {

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    case WM_INITDIALOG:
        {
            LG("System", "Begin Information Services...\r\n");
            SetWindowText(_hwnd, g_cfg.servername);

            unsigned long ufz = 0;
            FILE* fp = fopen("iteminfo.bin", "rb");
            fread(&ufz, 4, 1, fp);  //  读取源文件大小

            unsigned long fz = Util_GetFileSizeByName("iteminfo.bin") - 4;
            unsigned char* buffer = new unsigned char[fz];
            unsigned char* srcfile = new unsigned char[ufz];

            fread(buffer, 1, fz, fp);

            fclose(fp);

            uncompress(srcfile, &ufz, buffer, fz);  //  解压

            fp = fopen("__tempfile__.bin", "wb");
            fwrite(srcfile, 1, ufz, fp);
            fclose(fp);

            CItemRecordSet *pCItemRecordSet = new CItemRecordSet(0, g_cfg.itemnum);
	        if (!pCItemRecordSet->LoadRawDataInfo("__tempfile__", TRUE)) // 读取道具表失败
	        {
                MessageBox(_hwnd, "Load Item Table Failed.", "Error", MB_OK);
                EndDialog(_hwnd, 0);
	        }

            delete [] buffer;
            delete [] srcfile;
            remove("__tempfile__.bin");

            __server->Init();

            SetTimer(_hwnd, RES_TIMER, 1000, NULL);

            conlist.GetListViewHandle(_hwnd, IDC_CONNLIST);
            dblist.GetListViewHandle(_hwnd, IDC_DBLIST);
/*
            //  获取控件句柄
            item_lv.GetListViewHandle(_hwnd, IDC_RES_LIST);
            item_bank.GetListViewHandle(_hwnd, IDC_RES_BANK);
            chaLook.GetListViewHandle(_hwnd, IDC_CHA_LOOK);
            section.GetComboBoxHandle(_hwnd, IDC_SECTION);
            endure_cb.GetComboBoxHandle(_hwnd, IDC_ENDURE);
            energy_cb.GetComboBoxHandle(_hwnd, IDC_ENERGY);
            hole_cb.GetComboBoxHandle(_hwnd, IDC_HOLE_NUM);
            pro1no_cb.GetComboBoxHandle(_hwnd, IDC_PNO1);
            pro2no_cb.GetComboBoxHandle(_hwnd, IDC_PNO2);
            pro3no_cb.GetComboBoxHandle(_hwnd, IDC_PNO3);
            pro4no_cb.GetComboBoxHandle(_hwnd, IDC_PNO4);
            pro5no_cb.GetComboBoxHandle(_hwnd, IDC_PNO5);
            pro1typ_cb.GetComboBoxHandle(_hwnd, IDC_PTYP1);
            pro2typ_cb.GetComboBoxHandle(_hwnd, IDC_PTYP2);
            pro3typ_cb.GetComboBoxHandle(_hwnd, IDC_PTYP3);
            pro4typ_cb.GetComboBoxHandle(_hwnd, IDC_PTYP4);
            pro5typ_cb.GetComboBoxHandle(_hwnd, IDC_PTYP5);
            hdc = GetDC(GetDlgItem(_hwnd, IDC_ITEM_COLR));
            SetBkColor(hdc, RGB(0, 0, 0));

            //  初始化列表控件
            InitListView(item_lv);
            InitListView(item_bank);

            //  初始化百分比
            InitPercent(endure_cb.m_hwnd);
            InitPercent(energy_cb.m_hwnd);

            //  初始化凹槽
            hole_cb.AddItem("0");
            hole_cb.AddItem("1");
            hole_cb.AddItem("2");
            hole_cb.AddItem("3");
            hole_cb.SetCurSel(0);

            //  初始化物品属性类型
            InitItemType(&pro1typ_cb);
            InitItemType(&pro2typ_cb);
            InitItemType(&pro3typ_cb);
            InitItemType(&pro4typ_cb);
            InitItemType(&pro5typ_cb);

            //  初始化物品属性名称
            InitItem(&pro1no_cb);
            InitItem(&pro2no_cb);
            InitItem(&pro3no_cb);
            InitItem(&pro4no_cb);
            InitItem(&pro5no_cb);
*/
            InitConnList(conlist);
            InitDBList(dblist);
/*
            char buff[8] = {0};
            for(int i = 0; i < itemInfo->m_num; i++)
            {
                section.AddItem(ltoa(itemInfo->m_gdbList[i].section, buff, 10));
            }
*/

            //  初始化ADO
            __server->Run();

        }  break;

    case WM_TIMER:
        {
            switch(LOWORD(wParam))
            {
            case RES_TIMER:
                {
                    //LG("list", "Begin Check Info List...\r\n");
                    char buff[16]    = {0};
                    int idx = 0;

                    conlist.DeleteAllItem();

                    SOCKETLIST::iterator it;
                    g_socklist.m_lock.lock();
                    for(it = g_socklist.m_list.begin(); it != g_socklist.m_list.end(); it++)
                    {
                        idx = conlist.InsertItem();
                        conlist.SetItemText(idx, 0, (*it)->m_sock.GetIPAddress());
                        conlist.SetItemText(idx, 1, itoa((*it)->m_sock.GetPort(), buff, 10));
                        conlist.SetItemText(idx, 2, (((*it)->m_check == true) ? "Y" : "N"));
                        //LG("list", "Socket IP: %s, Port: %i\r\n", (*it)->m_sock.GetIPAddress(), (*it)->m_sock.GetPort());
                    }
                    g_socklist.m_lock.unlock();

                    dblist.DeleteAllItem();
                    for(int i = 0; i < itemInfo->m_num; i++)
                    {
                        idx = dblist.InsertItem();
                        dblist.SetItemText(idx, 0, ltoa(itemInfo->m_gdbList[i].section, buff, 10));
                        dblist.SetItemText(idx, 1, itemInfo->m_gdbList[i].server);
                        //LG("list", "Database Section: %li, IP: %s\r\n", itemInfo->m_gdbList[i].section, itemInfo->m_gdbList[i].server);
                    }
                    //LG("list", "End Check Info List...\r\n");
                }  break;
            }
        }  break;
/*
    case WM_COMMAND:
        {
            switch(LOWORD(wParam))
            {
            case IDC_CHA_ID:
                {
                    switch(HIWORD(wParam))
                    {
                    case EN_KILLFOCUS:
                        {
                            chaEnable = false;
                        }   break;
                    default:
                        {
                        }  break;
                    };
                }  break;

            case IDC_CHA_GET:       //  获取角色道具
                {
                    static char buffer[32];
                    CKitbag     kbbank;
                    stNetChangeChaPart lookPart;

                    GetWindowText(GetDlgItem(_hwnd, IDC_CHA_ID), buffer, 16);
                    long chaID = atol(buffer);
                    lSection = atol(section.GetText());
                    if(!lSection)
                    {
                        MessageBox(_hwnd, "Wrong Section!", "Error", MB_OK);
                        break;
                    }
                    if(itemInfo->GetChaItem(lSection, kbcha, chaID))  //  获取道具列表
                    {
                        SetItemToGUI(kbcha, item_lv);
                    }
                    else
                    {
                        item_lv.DeleteAllItem();
                        MessageBox(_hwnd, "Load Kitbag Info Failed!", "Error", MB_OK);
                    }

                    if(itemInfo->GetChaItem(lSection, kbbank, chaID, 2))  //  获取银行道具列表
                    {
                        SetItemToGUI(kbbank, item_bank);
                    }
                    else
                    {
                        item_bank.DeleteAllItem();
                        MessageBox(_hwnd, "Load Bank Info Failed, User Doesn't Sign Up Bank Service!", "Warning", MB_OK);
                    }

                    if(itemInfo->GetChaLook(lSection, lookPart, chaID))
                    {
                        chaLook.DeleteAllItem();
                        chaLook.DeleteAllColum();
                        if(enumMODAL_BOAT == lookPart.sTypeID)
                        {
                            InitBoat(chaLook);
                            SetLookToGUI(lookPart, chaLook, 1);
                        }
                        else
                        {
                            InitChaLook(chaLook);
                            SetLookToGUI(lookPart, chaLook);
                        }
                    }
                    else
                    {
                        chaLook.DeleteAllItem();
                        chaLook.DeleteAllColum();
                        MessageBox(_hwnd, "Load Equiped Item Information Faileds!", "Error", MB_OK);
                    }

                    chaEnable = true;
                }  break;

            case IDC_ITEM_ADD:      //  添加物品
                {
                    if(!lSection)
                    {
                        MessageBox(_hwnd, "Wrong Section!", "Error", MB_OK);
                        break;
                    }
                    static HWND btnAdd = GetDlgItem(_hwnd, IDC_ITEM_ADD);
                    EnableWindow(btnAdd, FALSE);

                    if(!chaEnable)
                    {
                        MessageBox(_hwnd, "Please Load Kigbag!", "Error", MB_OK);
                        EnableWindow(btnAdd, TRUE);
                        break;
                    }

                    if(!pCItemRec)
                    {
                        MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
                        EnableWindow(btnAdd, TRUE);
                        break;
                    }

                    static char buffer[64] = {0};
                    long actID;
                    GetWindowText(GetDlgItem(_hwnd, IDC_CHA_ID), buffer, 16);
                    actID = itemInfo->GetActID(lSection, atol(buffer));

                    if(!itemInfo->ChkActOffline(actID))
                    {
                        MessageBox(_hwnd, "User is Online!", "Error", MB_OK);
                        EnableWindow(btnAdd, TRUE);
                        break;
                    }

                    int num, holes;

                    SItemGrid	itNew;  //新道具对象。使用道具基本属性及修改属性来填充此结构
                    itNew.sID = (short)pCItemRec->lID;

                    GetWindowText(GetDlgItem(_hwnd, IDC_ITEM_NUM), buffer, 64);
                    num = atoi(buffer);

                    if(num < 1)
                    {
                        MessageBox(_hwnd, "Wrong Item Number!", "Error", MB_OK);
                        EnableWindow(btnAdd, TRUE);
                        break;
                    }
                    itNew.sNum = num;

                    itNew.sEndure[0] = itNew.sEndure[1] = itemInfo->CountPercent(pCItemRec->sEndure[0], pCItemRec->sEndure[1], atoi(endure_cb.GetText()));
                    itNew.sEnergy[0] = itNew.sEnergy[1] = itemInfo->CountPercent(pCItemRec->sEnergy[0], pCItemRec->sEnergy[1], atoi(energy_cb.GetText()));

                    holes = atoi(hole_cb.GetText());
                    itNew.SetForgeParam(holes * 1000000000);//孔数

                    //  属性1
                    itNew.sInstAttr[0][0] = itemInfo->GetItemAttr(pro1no_cb.GetText(), pro1typ_cb.GetText());
                    GetWindowText(GetDlgItem(_hwnd, IDC_PV1), buffer, 64);
                    itNew.sInstAttr[0][1] = (short)atoi(buffer);
                    //  属性2
                    itNew.sInstAttr[1][0] = itemInfo->GetItemAttr(pro2no_cb.GetText(), pro2typ_cb.GetText());
                    GetWindowText(GetDlgItem(_hwnd, IDC_PV2), buffer, 64);
                    itNew.sInstAttr[1][1] = (short)atoi(buffer);
                    //  属性3
                    itNew.sInstAttr[2][0] = itemInfo->GetItemAttr(pro3no_cb.GetText(), pro3typ_cb.GetText());
                    GetWindowText(GetDlgItem(_hwnd, IDC_PV3), buffer, 64);
                    itNew.sInstAttr[2][1] = (short)atoi(buffer);
                    //  属性4
                    itNew.sInstAttr[3][0] = itemInfo->GetItemAttr(pro4no_cb.GetText(), pro4typ_cb.GetText());
                    GetWindowText(GetDlgItem(_hwnd, IDC_PV4), buffer, 64);
                    itNew.sInstAttr[3][1] = (short)atoi(buffer);
                    //  属性5
                    itNew.sInstAttr[4][0] = itemInfo->GetItemAttr(pro5no_cb.GetText(), pro5typ_cb.GetText());
                    GetWindowText(GetDlgItem(_hwnd, IDC_PV5), buffer, 64);
                    itNew.sInstAttr[4][1] = (short)atoi(buffer);

                    //  生成交易纪录
                    char record[128] = {0}; //  交易纪录
                    GetWindowText(GetDlgItem(_hwnd, IDC_CHA_ID), buffer, 16);
                    //  记录形式：角色ID 道具ID 道具数量 耐久度 能量 凹槽数 属性编号1 属性值1 属性编号2 属性值2 属性编号3 属性值3 属性编号4 属性值4 属性编号5 属性值5
                    sprintf(record, "%s %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i", 
                        buffer, itNew.sID, itNew.sNum, itNew.sEndure[0], itNew.sEnergy[0], holes, 
                        itNew.sInstAttr[0][0], itNew.sInstAttr[0][1], itNew.sInstAttr[1][0], itNew.sInstAttr[1][1], 
                        itNew.sInstAttr[2][0], itNew.sInstAttr[2][1], itNew.sInstAttr[3][0], itNew.sInstAttr[3][1], 
                        itNew.sInstAttr[4][0], itNew.sInstAttr[4][1]);

	                // 压入背包
                    short pos = -1;
	                if (enumKBACT_SUCCESS != kbcha.Push(&itNew, pos))
	                {
                        MessageBox(_hwnd, "Import Kitbag Failed!", "Error", MB_OK);
                        EnableWindow(btnAdd, TRUE);
		                break;
	                }

                    static char txt[8192] = {0};
	                // 保存背包到数据库
	                if (!KitbagData2String(&kbcha, txt, 8192))
	                {
		                MessageBox(_hwnd, "Save Kitbag Failed!", "Error", MB_OK);
                        EnableWindow(btnAdd, TRUE);
		                break;
	                }

                    //std::string sql;
                    GetWindowText(GetDlgItem(_hwnd, IDC_CHA_ID), buffer, 16);

                    itemInfo->SaveKitBag(lSection, txt, atol(buffer));
                    itemInfo->WriteTradeRecord("-1", -1, lSection, record); //  保存交易纪录

                    //sql = "UPDATE resource SET content ='";
                    //sql += txt;
                    //sql += "' WHERE cha_id =";
                    //sql += buffer;
                    //sql += " AND type_id =1";

                    //pLogMessage         pMsg;

                    //pMsg = g_logbuff.GetBuffer();
                    //pMsg->extend = actID;
                    //memcpy(pMsg->MsgBuffer, sql.c_str(), sql.size());
                    //g_logqueue.Push(pMsg);

                    MessageBox(_hwnd, "Add Item Succeed!", "Success", MB_OK);
                    EnableWindow(btnAdd, TRUE);
                }  break;

            case IDC_ITEM_ID:   //  获取物品信息
                {
                    switch(HIWORD(wParam))
                    {
                    case EN_KILLFOCUS:
                        {
                            // 生成新道具
                            char buffer[32] = {0};
                            GetWindowText(GetDlgItem(_hwnd, IDC_ITEM_ID), buffer, 64);
	                        pCItemRec = GetItemRecordInfo(atoi(buffer));    //获取道具基本属性

                            if(!pCItemRec)
	                        {
                                MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                        break;
	                        }
                            SetWindowText(GetDlgItem(_hwnd, IDC_ITEM_NAME), pCItemRec->szName);

                            sprintf(buffer, "%i-%i", pCItemRec->sEndure[0], pCItemRec->sEndure[1]);
                            SetWindowText(GetDlgItem(_hwnd, IDC_ITEM_ENDURE), buffer);

                            sprintf(buffer, "%i-%i", pCItemRec->sEnergy[0], pCItemRec->sEnergy[1]);
                            SetWindowText(GetDlgItem(_hwnd, IDC_ITEM_ENERGY), buffer);

                            endure_cb.SetText("");
                            energy_cb.SetText("");
                        }  break;
                    default:
                        {
                        }  break;
                    }
                }  break;

            case IDC_ENERGY:    //  最大能量
                {
                    switch(HIWORD(wParam))
                    {
                    case CBN_SELENDCANCEL:
                        {
                            if (!pCItemRec)
	                        {
                                MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                        break;
	                        }

                            short energy;

                            energy = itemInfo->CountPercent(pCItemRec->sEnergy[0], pCItemRec->sEnergy[1], atoi(energy_cb.GetText()));
                            SetWindowText(GetDlgItem(_hwnd, IDC_ITEM_PREFIX), ItemFunc::GetItemPrefix(energy));

                            gColr = ItemFunc::GetItemColor(energy);
                            SetTextColor(hdc, gColr);
                            TextOut(hdc, 0, 0, "Item Rate", 8);
                        }  break;
                    default:
                        {
                        }  break;
                    }
                }  break;

            case IDC_PNO1:
                {
                    if (!pCItemRec)
	                {
                        MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                break;
	                }
                    char buffer[32] = {0};
                    int v1, v2;

                    v1 = ItemFunc::CorvItem_COE(pro1no_cb.GetText());
                    v2 = ItemFunc::CorvItem_VAL(pro1no_cb.GetText());

                    sprintf(buffer, "Coefficient:%i\r\nConstant:%i-%i", ItemFunc::GetCoe(pCItemRec, v1), ItemFunc::GetVal(pCItemRec, v2, 0), ItemFunc::GetVal(pCItemRec, v2, 1));
                    SetWindowText(GetDlgItem(_hwnd, IDC_PS1), buffer);
                }  break;

            case IDC_PNO2:
                {
                    if (!pCItemRec)
	                {
                        MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                break;
	                }
                    char buffer[32] = {0};
                    int v1, v2;

                    v1 = ItemFunc::CorvItem_COE(pro2no_cb.GetText());
                    v2 = ItemFunc::CorvItem_VAL(pro2no_cb.GetText());

                    sprintf(buffer, "Coefficient:%i\r\nConstant:%i-%i", ItemFunc::GetCoe(pCItemRec, v1), ItemFunc::GetVal(pCItemRec, v2, 0), ItemFunc::GetVal(pCItemRec, v2, 1));
                    SetWindowText(GetDlgItem(_hwnd, IDC_PS2), buffer);
                }  break;

            case IDC_PNO3:
                {
                    if (!pCItemRec)
	                {
                        MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                break;
	                }
                    char buffer[32] = {0};
                    int v1, v2;

                    v1 = ItemFunc::CorvItem_COE(pro3no_cb.GetText());
                    v2 = ItemFunc::CorvItem_VAL(pro3no_cb.GetText());

                    sprintf(buffer, "Coefficient:%i\r\nConstant:%i-%i", ItemFunc::GetCoe(pCItemRec, v1), ItemFunc::GetVal(pCItemRec, v2, 0), ItemFunc::GetVal(pCItemRec, v2, 1));
                    SetWindowText(GetDlgItem(_hwnd, IDC_PS3), buffer);
                }  break;

            case IDC_PNO4:
                {
                    if (!pCItemRec)
	                {
                        MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                break;
	                }
                    char buffer[32] = {0};
                    int v1, v2;

                    v1 = ItemFunc::CorvItem_COE(pro4no_cb.GetText());
                    v2 = ItemFunc::CorvItem_VAL(pro4no_cb.GetText());

                    sprintf(buffer, "Coefficient:%i\r\nConstant:%i-%i", ItemFunc::GetCoe(pCItemRec, v1), ItemFunc::GetVal(pCItemRec, v2, 0), ItemFunc::GetVal(pCItemRec, v2, 1));
                    SetWindowText(GetDlgItem(_hwnd, IDC_PS4), buffer);
                }  break;

            case IDC_PNO5:
                {
                    if (!pCItemRec)
	                {
                        MessageBox(_hwnd, "Load Item Base Attribute Failed!", "Error", MB_OK);
		                break;
	                }
                    char buffer[32] = {0};
                    int v1, v2;

                    v1 = ItemFunc::CorvItem_COE(pro5no_cb.GetText());
                    v2 = ItemFunc::CorvItem_VAL(pro5no_cb.GetText());

                    sprintf(buffer, "Coefficient:%i\r\nConstant:%i-%i", ItemFunc::GetCoe(pCItemRec, v1), ItemFunc::GetVal(pCItemRec, v2, 0), ItemFunc::GetVal(pCItemRec, v2, 1));
                    SetWindowText(GetDlgItem(_hwnd, IDC_PS5), buffer);
                }  break;

            default:
                {
                }  break;
            }
        }  break;
*/
    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
    case WM_CLOSE:
        {
/*
            ReleaseDC(GetDlgItem(_hwnd, IDC_ITEM_COLR), hdc);
*/
            __server->Release();
            KillTimer(_hwnd, RES_TIMER);
            while(SERVER_RUNNING == __server->m_state)
            {
                Sleep(10);
            }
            LG("System", "End Information Services...\r\n");
            EndDialog(_hwnd, 0);
        }  break;
    default:
        {
        }  break;
    }

    return 0;
}
