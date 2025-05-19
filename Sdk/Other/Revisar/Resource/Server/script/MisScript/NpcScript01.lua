--------------------------------------------------------------------------
--									--
--									--
--NPCScript01.lua Created by Robin 2005.1.20.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- 白银之城:服装店尼萨婆婆
------------------------------------------------------------

function BT_NpcSale001()


	Talk( 1, "尼萨婆婆:欢迎光临.我这里卖的服装质量好,手工精美,款式新颖,价钱便宜,多来看看吧." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission ( 220 )
	AddNpcMission ( 705 )
	
	
	
	
end

-------------------------------------------------------------------
--								--
--		白银城（比特）		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	Talk( 1, "比特:你好,我是白银城的守卫比特,我负责整个白银城安全,另外我也负责新剑士的训练,那么你现在找我有什么事么?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3953, 1 )
	TriggerAction( 1, TakeItem, 3953, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3953, 1 )
	TriggerAction( 2, TakeItem, 3953, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3164, 1, 4 )
	TriggerAction( 2, GiveItem, 1, 1, 4 )
	TriggerAction( 2, SetProfession, 1  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	--Talk(2, "比特:喂,朋友,你等一下!你对剑术有兴趣吗?我看你的身体条件这么好,不练剑实在太可惜了!让我教你如何成为一名剑士吧!")
	--Text(2, "好的,转职成为剑士", MultiTrigger, GetMultiTrigger(), 2)
	--Text(2, "不,我觉得现在这样挺好的.", CloseTalk)

	--Talk(3, "比特:我已把知道的剑术知识都传授给你了,剩下的就要靠你自己努力了.")

	--Talk(4, "比特:想要就职剑士吗?只有等级10以上的新手男生,持有勇气证书1本,另外给1000G登记费才可以.")

	--InitTrigger()
	---------------剑士
	--TriggerCondition( 1, LvCheck, ">", 9 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission( 100 )
	AddNpcMission( 204 )
	AddNpcMission ( 279 )
	AddNpcMission ( 281 )
	AddNpcMission ( 404 )
	AddNpcMission ( 749 )
	AddNpcMission ( 750 )
	AddNpcMission ( 66 )
	AddNpcMission ( 67 )
	AddNpcMission ( 68 )
	AddNpcMission ( 72 )
	AddNpcMission(	1222	)
----------eleven
	AddNpcMission(	5056	)
	AddNpcMission(	5060	)	
	AddNpcMission(	5068	)	
------------1.7
	AddNpcMission(	5167	)
	AddNpcMission(	5089	)
	AddNpcMission (5093 )
	AddNpcMission (5094 )
	AddNpcMission (5095 )
	AddNpcMission (5096 )
	AddNpcMission (5109 )

	AddNpcMission ( 6078 )
	AddNpcMission ( 6079 )
	AddNpcMission ( 6080 )
	AddNpcMission ( 6097 )
	AddNpcMission ( 6100 )
	AddNpcMission ( 6101 )


	MisListPage(2)


end


-------------------------------------------------------------------
--								--
--		白银城（铁匠——小金金）		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--买卖东西对话
	Talk( 1, "小金金:你好,我这里出售武器防具,需要什么自己挑,别客气." )
	Text( 1, "交易", BuyPage)
	Text( 1, "修理", OpenRepair)
	Text( 1, "有关精炼", JumpPage, 2)
	Text( 1, "有关合成", JumpPage, 3)
	Text( 1,"合金矿镐变异事件",JumpPage,9)
	
	
	Talk(9,"前不久商城上出售了一批变异过的合金矿镐，会对玩家造成极其不好的影响，如果您有变异过的合金矿镐，这里提供免费的修复服务，只要您的合金矿镐最大耐久为0，都可以到我这里来领取一把新的合金矿镐")
	Text(9,"我有变异的矿镐，我要修复我的矿镐",CheckMetal)
	Text(9,"不知道你在说什么",CloseTalk)

	
	--Text( 1, "面具制造", JumpPage,4)

	Talk( 2, "小金金:精炼?那种技术只有沙岚城的铁匠才会." )

	Talk( 3, "小金金:你想合成物品么?据我所知合成物品需要有一张相对应的合成公式卷轴,卷轴上面记载了所有合成所需要的材料,你可以找沙岚城的杂货商人·艾墨,他是这个世界上唯一会合成的人,我知道的就只有这些了." )

	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)
	--Talk( 4, "小金金:你想制作什么面具呢?")
	--Text( 4, "雪娃面具",JumpPage,5)
	--Text( 4, "南瓜面具", JumpPage,6)
	--Text( 4, "亡灵面具", JumpPage,7)


	--InitTrigger() --兑换鬼怪面具
	--TriggerCondition( 1, HasItem, 4358, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
	--TriggerCondition(1, HasLeaveBagGrid, 1)
	--TriggerCondition(1, KitbagLock, 0 )
       -- TriggerAction( 1, TakeItem, 4358, 30 )
	--TriggerAction( 1, TakeItem,  3909, 2 )
	--TriggerAction( 1, GiveItem,1120, 1,4 )
	--TriggerFailure( 1, JumpPage, 8 ) 
	--Talk(5, "小金金:制作雪娃面具需要30个蓝色雪球和2个食神水饺")
	--Text( 5, "确认制造",MultiTrigger, GetMultiTrigger(), 1) 

	--InitTrigger() --兑换面具
	--TriggerCondition( 1, HasItem, 4809, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
	--TriggerCondition(1, HasLeaveBagGrid, 1)
	--TriggerCondition(1, KitbagLock, 0 )
        --TriggerAction( 1, TakeItem, 4809, 30 )
	--TriggerAction( 1, TakeItem,  3909, 2 )
	--TriggerAction( 1, GiveItem,1121, 1,4 )
	--TriggerFailure( 1, JumpPage, 8 ) 
	--Talk(6, "小金金:南瓜面具需要30个南瓜头和2个食神水饺")
	--Text( 6, "确认制造",MultiTrigger, GetMultiTrigger(), 1) 
	
	--InitTrigger() --兑换面具
	--TriggerCondition( 1, HasItem, 2419, 20 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
	--TriggerCondition(1, HasLeaveBagGrid, 1)
	--TriggerCondition(1, KitbagLock, 0 )
        --TriggerAction( 1, TakeItem, 2419, 20 )
	--TriggerAction( 1, TakeItem,  3909, 2 )
	--TriggerAction( 1, GiveItem,1122, 1,4 )
	--TriggerFailure( 1, JumpPage, 8 ) 
	--Talk(7, "小金金:亡灵面具需要20个海盗的骨头和2个食神水饺")
	--Text( 7, "确认制造",MultiTrigger, GetMultiTrigger(), 1) 
	
	--Talk( 8, "小金金:您身上似乎没有足够的制造面具所需物品啊!或者您的背包已锁定,请确保您的背包留有一个空格")
	
	AddNpcMission ( 703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission(	1221	)


end
-----------------------------------------------------------------小金金铁匠结束----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------白银城秘书斯克特---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1, "斯克特:你好,看样子你是刚来这个城市的吧?有什么可以帮你的么?" )
	Text( 1, "你是谁?", JumpPage, 2)
	Text( 1, "这是哪里?", JumpPage, 3 )
	
	Text( 1, "我大致了解了,再见.", JumpPage, 4 )

	Talk( 2, "斯克特:鄙人是这个城市的指导官斯克特,负责给人们解答一些日常的问题和给予一定的指导,你有什么困难可以来找我问问,帮助每个来到白银城的人是我的职责." )
	Text( 2, "返回", JumpPage, 1)

	Talk( 3, "斯克特:这是加纳大陆最繁荣的城市:白银之城,是德尔维公爵建立的一方乐土,这里远离战争,物产丰饶,多亏了公爵和塔尔格子爵的英明领导,我们才有今天的成就." )
	Text( 3, "返回", JumpPage, 1)

	Talk( 4, "斯克特:好的,如果你以后还有问题的话,随时都可以来找我." )
	Text( 4, "好吧,我还想想知道一些事情", JumpPage, 5)
	
	Talk( 5, "斯克特:别这么客气么,你尽管问吧." )
	Text( 5, "我想知道白银之城和德尔维公爵还有塔尔格子爵的事情", JumpPage, 6)
	
	Talk( 6, "斯克特:多年前,当时的加纳帝国同魔族之间的战争已经进行了很久,皇族成员德尔维公爵和他的侄子塔尔格子爵带着领地内所有的子民离开了没落的加纳帝国首都.他们历经30年才抵达了丰饶的东海岸并在此建立了城市.德尔维公爵将这座被银矿所围绕的城市命名为白银之城,同时宣布自治.塔尔格子爵在叔父过世后接过了城邦的领导权,并凭借着卓越的商业头脑和谈判技巧,为银之城的自治权正了名,子爵大人被后世尊称为白银之虎." )
	--Text( 6, "哇!好威风啊.", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 100, 200 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 100 )
	
	Talk( 7, "斯克特:作为一个伟大城市的指导官,在你了解我们的城市后,我讲给予白银城市民的待遇:冒险费100个金币.在LV5以前你还可以到我们的医疗护士处免费回复HP!当然,还有一本荣誉市民证书!" )
	Text( 7, "谢谢你咯!",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "斯克特:你好朋友,白银城正需要你这样的有为青年!" )
	Text( 8, "谢谢,没什么事我来闲逛的",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

----------------注册任务

	AddNpcMission ( 203 )
	AddNpcMission ( 204 )
	AddNpcMission ( 205 )
	AddNpcMission ( 206 )
	AddNpcMission ( 221 )
	AddNpcMission ( 222 )
	AddNpcMission ( 1002 )
	AddNpcMission ( 1057 )
	AddNpcMission ( 1112 )
	AddNpcMission ( 1166 )
	AddNpcMission ( 55 )
	AddNpcMission ( 56 )
	AddNpcMission ( 57 )
	AddNpcMission ( 1220 )
	AddNpcMission ( 319 )
	AddNpcMission ( 325 )
	AddNpcMission ( 326 )
---------eleven
	AddNpcMission ( 5037 )	



	MisListPage(8)
end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC 《斯克特》结束了!
----------------------------------------------------------
--							--
--							--
--		白银城[老奶奶]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk02 ()

	
	Talk( 1, "老奶奶:年轻人你好啊." )
	--Text( 1, "真爱的种子", JumpPage, 2)
	--Text( 1, "10粒真爱的种子兑换", JumpPage, 3)
	--Text( 1, "100粒真爱的种子兑换", JumpPage, 4)
	--Text( 1, "1000粒真爱的种子兑换", JumpPage, 5)
--	Text( 1, "使用“蟹苗”和“超级蟹用激素”兑换蟹王", JumpPage, 6)
--	Text( 1, "使用耐久值为“0”的蟹苗兑换蟹王", JumpPage, 7)
	Text( 1, "离开", CloseTalk)
	
	
	Talk( 2, "老奶奶:苦苦的等待爱情的垂怜,不如播种真爱的种子,收获爱情的秋天.1个纯净的水、1个梦幻花瓣、1个纯净蓝宝石、1个精灵之心就能孕育一粒真爱的种子." )
	Text( 2, "兑换真爱的种子", GetChaName_21, 1 )

	Talk( 3, "老奶奶:10个真爱种子可以兑换甜蜜巧克力1个")
	Text(3,"确定兑换",  GetChaName_22, 1)

	Talk( 4, "老奶奶:100个真爱种子可以兑换努力增幅器3个")
	Text(4,"确定兑换",  GetChaName_23, 1)

	Talk( 5, "老奶奶:1000个真爱种子可以兑换地狱4层机票1张")
	Text(5,"确定兑换",  GetChaName_24, 1)
	
	Talk(6,"老奶奶：饕餮盛宴之蟹王大餐，需要您手里的1个“蟹苗”和商城中购买的1个“超级蟹用激素”。当年享誉整个海盗界的大海盗王罗森，曾因品过此菜而经验彪增。亲爱的朋友！让我们共同期待奇迹的降临！")	
	InitTrigger()                                                   --------1个蟹王
	TriggerCondition(1, HasItem, 0058, 1)               ---------蟹苗
	TriggerCondition(1, HasItem, 0060, 1)               ---------蟹绳
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, TakeItem, 0060, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------蟹王
	TriggerFailure(1, JumpPage, 8)
	Text(6,"享用蟹王大餐", MultiTrigger, GetMultiTrigger(), 1) 

	Talk(7,"老奶奶：持之以恒的耐力是成功的关键！请把在您背包栏第2格培育了5天的蟹苗给我吧！当蟹苗的耐久值化整为0，享誉整个加纳大陆的蟹王名肴便横空出世了！让我们一起等待这未知的惊喜！")
	InitTrigger()                                                   --------1个蟹王
	TriggerCondition(1, HasItem, 0058, 1)               ---------蟹苗 
	TriggerCondition(1, crablife)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------蟹王
	TriggerFailure(1, JumpPage, 9)
	Text(7, "享用蟹王大餐", MultiTrigger, GetMultiTrigger(), 1) 

	Talk(8, "请确保您身上有蟹苗和商城里购买的“超级蟹用激素”喔！")

	Talk(9, "亲爱的朋友，可能您身上并无蟹苗或蟹苗尚未经过5天的精心培育，在耐久值未到0时，我们所能做的只有等待！")
		

	MisListPage(1)

	AddNpcMission ( 282 )
	AddNpcMission ( 283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
	AddNpcMission( 906 )

-----------------老奶奶·贝蒂---------金牛
	AddNpcMission	(5631)
	AddNpcMission	(5632)

-------------------老奶奶·贝蒂---------金秋十月国庆活动
--	AddNpcMission  (5865)
--	AddNpcMission  (5866)
--	AddNpcMission  (5867)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<老奶奶结束




----------------------------------------------------------
--							--
--							--
--		白银城[药草商人——帝姆]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1, "帝姆:你好,欢迎光临.我店里有白银城最好的药材哦,全都是我自己种的,看看吧." )
	Text( 1, "交易", BuyPage)
	--Text( 1, "卖东西!", SalePage)
	Text( 1, "调配回复药剂", JumpPage, 5)


	Talk( 4, "帝姆:很好,你已经修炼到Lv9了,10级就可以就职了.现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,而猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）.由于冰狼堡和沙岚城路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )
	Text( 4, "交易", BuyPage)
	--Text( 4, "卖东西!", SalePage )
	Text( 4, "调配回复药剂", JumpPage, 5)

---------------制作甘草药水
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "帝姆:生病了就要吃药,药到才能病除!朋友,说吧,你需要什么药?" )
	Text( 5, "制作甘草药水", MultiTrigger, GetMultiTrigger(), 1 )
	--------------炮制醒神花茶
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "炮制醒神花茶", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------合成秘制奇异膏
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5, "合成秘制奇异膏", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------蒸烤冰芽酥
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "蒸烤冰芽酥", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "帝姆:一手交钱一手交货.钱我收下了,这是你要的东西,请拿好." )
	Talk( 7, "帝姆:嗨,得要10个药用草叶和1个药瓶子才能合成1个甘草药水了,另外你还得付50G." )
	Talk( 8, "帝姆:嗨,得要10个梦幻花瓣和1个药瓶子才能合成1瓶醒神花茶了,另外你还得付50G." )
	Talk( 9, "帝姆:嗨,得要10个奇异果实和1个药瓶子才能合成1瓶秘制奇异膏了,另外你还得付50G." )
	Talk( 10, "帝姆:嗨,得要10个冰封草芽和1个药瓶子才能合成1瓶冰芽酥了,另外你还得付50G." )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)



--这里写任务的检测


-----------超过9级告诉玩家可以转职
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------注册任务
	MisListPage(1)

	AddNpcMission ( 707 )
	--AddNpcMission ( 733 )
	AddNpcMission ( 738 )
	--AddNpcMission ( 739 )
	AddNpcMission ( 214 )
	AddNpcMission ( 215 )
	AddNpcMission ( 217 )
	AddNpcMission ( 218 )
	AddNpcMission ( 219 )
	AddNpcMission ( 220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	--AddNpcMission	(913)
	--AddNpcMission	(914)
	--AddNpcMission	(915)
	--AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<药草商人——嫡母结束



----------------------------------------------------------
--							--
--							--
--		白银城[护士小姐——岚岚]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------加血恢复的判定


----------------普通对话开始
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "岚岚:你好,我是白银城医务所的护士岚岚,生病或者受伤可以来找我噢!" )
	Text( 1, "高级治愈", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1, "治疗", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "创建船只", JumpPage, 10)

	Talk( 2, "岚岚:对不起,高级治愈需要200金币,您的医药费不够了……" )

	Talk( 3, "岚岚:对不起,治疗需要50金币,您的医药费不够了……" )

	Talk( 4, "我没有什么信件啊,你大概送错人了" )

	Talk( 5, "嗯?不会又是那种没署名的追求信吧,算了,谢谢!也什么好东西酬谢你,这点钱请收下吧." )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6, "岚岚:你好,我是白银城医务所的护士岚岚,生病或者受伤可以来找我噢!" )
	Text( 6, "高级治愈", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6, "治疗", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐——岚岚         结束咯



----------------------------------------------------------
----							--
--							--
--		白银城[酒吧女 - 蒂娜]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk05 ()

	Talk( 1, "蒂娜:嗨,你好,我是蒂娜.你是水手吗?知道传说中的军舰岛吗?要是你能给我讲讲你的冒险经历,我就请你喝一杯!" )
	Text( 1, "买酒", BuyPage )
	Text(1, "关于名声",JumpPage,4)
	--Text(1, "海盗望族名声兑换",JumpPage,7)
	--Text( 1, "好名胜=好回报", JumpPage, 9)

	InitTrade()
	Other(	3916	)

	Talk( 2, "蒂娜:听说你的山珍八宝酒没有了?我这里有一瓶,不过只有一瓶了噢,酿制这种酒的原料很难找到,如果你想要的话就得付给我100000海盗币" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "山珍八宝酒", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "蒂娜:似乎你的现金不够哦?这么高贵的酒可不是你这种穷鬼可以买的起的哦,赚够了钱再来吧." )

	Talk(4,"名声这东西很有用的,代表了你对这个世界的贡献,一般来说越有人缘,越喜欢帮助他人的人,声望越高!当然,你也可以用你的声望来我这里领取一些奖励")
	Text(4,"我自信我的名声够了,我是来领奖的", JumpPage,5)

	Talk(5,"目前可以领取的奖励有以下几种,在你领取奖励的同时,我会相应的扣除你的声望点哦")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"初级传承徽章 : 需要名声20" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"中级传承徽章 : 需要名声200" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"高级传承徽章 : 需要名声2000" ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6,"请保证您的背包留有空格,同时处于未锁定的状态,要不就是您的声望不够哦,多做点助人为乐的好事再来找我吧,顺便告诉你个小秘密,如果你肯收个徒弟.....",CloseTalk)

	Talk(7,"您好！这里是海盗望族，我们只对有声望的人提供服务！你想要兑换什么？要知道兑换后,我会相应的扣除你的声望点哦")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"精灵硬币5枚 : 需要名声500" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"努力增幅器3个 : 需要名声5000" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 0610,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"初级精灵自爆1本: 需要名声2万" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 0885,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"一级精炼石1个 : 需要名声5万" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200000 )
	TriggerAction( 1, GiveItem, 0862,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"岩玉1颗 : 需要名声20万" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,600000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 600000 )
	TriggerAction( 1, GiveItem, 1012,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"加纳之神1个 : 需要名声60万" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"欢迎再次光临海盗望族!海盗望族、众望所归,继续努力吧!")

--	Talk( 9, "您好，我们这里只向有名望的人开放。只有您有足够的名声，您可以在这里换到所有您想要的东西，不过同时我们也会扣除您的一部分精灵硬币作为手续费哦。")
--	
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,5 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 5)
--	TriggerAction( 1, DelRoleCredit, 5 )
--	TriggerAction( 1, TakeItem, 855, 5)
--	TriggerAction( 1, GiveItem, 1024,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"高级充电电池: 需要名声5，精灵硬币5个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,10 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 10)
--	TriggerAction( 1, DelRoleCredit, 10 )
--	TriggerAction( 1, TakeItem, 855, 10)
--	TriggerAction( 1, GiveItem, 0456,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"强化晶石: 需要名声10，精灵硬币10个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,20 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 20)
--	TriggerAction( 1, DelRoleCredit, 20 )
--	TriggerAction( 1, TakeItem, 855, 20)
--	TriggerAction( 1, GiveItem, 0455,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"强化卷轴: 需要名声20，精灵硬币20个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,30 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 30)
--	TriggerAction( 1, DelRoleCredit, 30 )
--	TriggerAction( 1, TakeItem, 855, 30)
--	TriggerAction( 1, GiveItem, 0453,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"熔合卷轴: 需要名声30，精灵硬币30个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,50 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 50)
--	TriggerAction( 1, DelRoleCredit, 50 )
--	TriggerAction( 1, TakeItem, 855, 50)
--	TriggerAction( 1, GiveItem, 0332,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"春风机票: 需要名声50，精灵硬币50个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,80 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 80)
--	TriggerAction( 1, DelRoleCredit, 80 )
--	TriggerAction( 1, TakeItem, 855, 80)
--	TriggerAction( 1, GiveItem, 0583,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"秋岛机票: 需要名声80，精灵硬币80个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,120 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 120)
--	TriggerAction( 1, DelRoleCredit, 120 )
--	TriggerAction( 1, TakeItem, 855, 120)
--	TriggerAction( 1, GiveItem, 3094,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"努力增幅器: 需要名声120，精灵硬币120个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(9,"下一页", JumpPage , 12)
--
--	Talk(12, "您好，我们这里只向有名望的人开放。只有您有足够的名声，您可以在这里换到所有您想要的东西，不过同时我们也会扣除您的一部分精灵硬币作为手续费哦。")
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,150 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 150)
--	TriggerAction( 1, DelRoleCredit, 150 )
--	TriggerAction( 1, TakeItem, 855, 150)
--	TriggerAction( 1, GiveItem, 1095,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"99爆炸包: 需要名声150，精灵硬币150个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 200)
--	TriggerAction( 1, DelRoleCredit, 200 )
--	TriggerAction( 1, TakeItem, 855, 200)
--	TriggerAction( 1, GiveItem, 2844,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"地狱4层机票: 需要名声200，精灵硬币200个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 300)
--	TriggerAction( 1, DelRoleCredit, 300 )
--	TriggerAction( 1, TakeItem, 855, 300)
--	TriggerAction( 1, GiveItem, 3336,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"神算草: 需要名声300，精灵硬币300个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,1000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 1000)
--	TriggerAction( 1, DelRoleCredit, 1000 )
--	TriggerAction( 1, TakeItem, 855, 1000)
--	TriggerAction( 1, GiveItem, 3088,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"28格背包: 需要名声1000，精灵硬币1000个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,4700 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 4700)
--	TriggerAction( 1, DelRoleCredit, 4700 )
--	TriggerAction( 1, TakeItem, 855, 4700)
--	TriggerAction( 1, GiveItem, 1028,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"摩力符石: 需要名声4700，精灵硬币4700个" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(12, "上一页", JumpPage , 9 )
--
--	Talk( 10, "谢谢惠顾，欢迎再次光临")
--
--	Talk( 11, "请保证您的背包留有空格,同时处于未锁定的状态,要不就是您的声望不够或者精灵硬币不够多哦.....",CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission ( 268 )
	AddNpcMission ( 269 )
	AddNpcMission ( 288 )
	AddNpcMission ( 502 )
	AddNpcMission ( 334 )
	AddNpcMission ( 6081 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧女 - 蒂娜结束



----------------------------------------------------------
--							--
--							--
--		白银城[小山车]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk06 ()
	
	
	Talk( 1, "小山车:年轻人就是要敢于冒险,不要怕,外面的世界多精彩,你见过波涛汹涌的大海吗?你见过那被沙漠淹没的雄伟神殿吗?有没有去过那北方神秘的寂寞之塔?" )
	--Text( 1, "学习航海技能", BuyPage )
	Text( 1, "我现在没空听你说故事!", CloseTalk)
	Text(1,"给小山车看你身上的机械内核",JumpPage,2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeItem, 3933, 10 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, GiveItem, 1812, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "小山车:咦……没想到你居然有那么多机械内核,如果你肯拿10个机械内核给我的话,我可以试着制作一个古代定位仪给你.当然,手续费嘛也是要点的,5000G就可以了." )
	Text( 2, "好吧我支付（5000G）费用",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "我还是考虑一下吧", CloseTalk)

	Talk(3, "小山车:拿好哦,这个就是古代定位仪,他可以带你去废灵之都,如果还有需要的话可以来找我.")

	Talk(4, "小山车:对不住哦,你必须给我10个机械内核外加5000G手续费,我才能给你制作古代定位仪.")

	InitTrade()
	Other(	3243	)
	Other(	3244	)
	Other(	3245	)
	Other(	3246	)
	Other(	3247	)
	Other(	3248	)
	Other(	3249	)
	Other(	3250	)
	Other(	3251	)
	Other(	3252	)
	Other(	3253	)
	Other(	3254	)
	Other(	3255	)
	Other(	3256	)
	Other(	3257	)
	Other(	3258	)
	Other(	3259	)
	Other(	3260	)
	Other(	3261	)
	Other(	3262	)
	Other(	3263	)
	Other(	3264	)
	Other(	3265	)
	Other(	3266	)
	Other(	3267	)
	Other(	3268	)
	Other(	3269	)
	Other(	3270	)
	Other(	3271	)
	Other(	3272	)
	Other(	3273	)
	Other(	3274	)
	Other(	3275	)
	Other(	3276	)
	Other(	3277	)
	Other(	3278	)
	Other(	3279	)
	Other(	3280	)
	Other(	3281	)
	Other(	3282	)
	Other(	3283	)
	Other(	3284	)
	Other(	3285	)
	Other(	3286	)
	Other(	3287	)
	Other(	3288	)
	Other(	3289	)
	Other(	3290	)
	Other(	3291	)
	Other(	3292	)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 748 )
	AddNpcMission	(1045)
	AddNpcMission	(1099)
	AddNpcMission	(1157)
	AddNpcMission	(758)
	AddNpcMission	(103)
	AddNpcMission	(191)
	AddNpcMission	(192)
	AddNpcMission	(193)
	AddNpcMission	(197)
	AddNpcMission(	1225	)
	AddNpcMission(	503	)
	AddNpcMission	(330)
	AddNpcMission	(331)
	AddNpcMission	(332)
	AddNpcMission	(335)
	AddNpcMission	(359)
	AddNpcMission	(360)
	AddNpcMission	(361)
	AddNpcMission	(362)
	AddNpcMission	(363)
	AddNpcMission	(364)
	AddNpcMission	(365)
	AddNpcMission	(366)
	AddNpcMission	(367)
	AddNpcMission	(368)
	AddNpcMission	(369)
	AddNpcMission	(370)
	AddNpcMission	(371)
	AddNpcMission	(522)
------------eleven
	AddNpcMission	(5058)
	AddNpcMission	(5062)
	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<小山车结束






----------------------------------------------------------
--							--
--							--
--		白银城[杂货商人 - 吉普立]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk07 ()

	Talk( 1, "吉普立:您好,欢迎光临.有什么能为您效劳吗?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	Text( 1, "兑换真实面具",JumpPage, 2 )

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)
	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3296	)
	Other(	3299	)
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(	3288	)
	--AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "要想得到真实面具的话就得准备精灵辉印1个，1W海盗币，还有以下任意一种3级采集产物10个哦" )
	Text( 2, "用骨头来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "用锋利牙齿来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用水晶原石来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用象牙酥木原木来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用射水暴鱼来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "吉普立:拿好哦，这可是很重要的东西呢." )
	Talk( 4, "吉普立:您好象没有足够的材料哦，也有可能您的背包已经锁定或者背包空间不够." )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人 - 吉普立结束


----------------------------------------------------------
--							--
--							--
--		白银城[居民·玛格丽特]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk08 ()

	Talk( 1, "玛格丽特:你…哈哈哈…好.昨天的电…啊哈哈哈…视看了吗.笑…哈哈哈…死我了!哈哈哈……" )
	Text( 1, "制作甜点", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "玛格丽特:你真有眼光!不是我吹牛,我每天都看电视里的《加纳美食王》,做甜品的手艺可是一流的哟." )
	Text( 2, "现榨精灵果汁", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "冲泡沙枣茶", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "清炖蘑菇汤", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "现榨曼陀罗果汁", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "制作冰激凌", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "玛格丽特:这是用你要的东西,一点没偷工减料,请收好." )
	Talk( 4, "玛格丽特:对不起,你没有配方上要的东西哦.精灵果汁需要10个精灵果和1个玻璃杯才能制作哟." )
	Talk( 5, "玛格丽特:对不起,你没有配方上要的东西哦.沙枣茶需要10个沙枣和1个玻璃杯才能制作哟." )
	Talk( 6, "玛格丽特:对不起,你没有配方上要的东西哦.蘑菇汤需要10个蘑菇和1个玻璃杯才能制作哟." )
	Talk( 7, "玛格丽特:对不起,你没有配方上要的东西哦.曼陀罗果汁需要10个曼陀罗果和1个玻璃杯才能制作哟." )
	Talk( 8, "玛格丽特:对不起,你没有配方上要的东西哦.冰激凌需要10个冰果和1个玻璃杯才能制作哟." )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	




end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<居民·玛格丽特


----------------------------------------------------------
--							--
--							--

	--白银城[旅店老板·玛拉依兰]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk09 ()
	
	
	Talk( 1, "玛拉依兰:你好,我是这家旅店的老板.要在这里住几天吗? 或者要不要换个最新最酷的头型呢?" )		
	Text( 1, "调制染发剂", JumpPage, 2)
	
	--Text(1, "烹调美味的火鸡肉", JumpPage, 10)
	--Text(1, "烹调圣诞大餐", JumpPage, 13)
	
	
---------------------烹调美味的火鸡肉
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10, "玛拉依兰:我需要原材料10个火鸡肉,当然你还要支付给我10000海盗币的辛苦费")
	Text(10, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11, "玛拉依兰:这是我精心烹调的美味火鸡肉,赶快尝尝,味道怎么样?" )

	Talk( 13, "玛拉依兰:做圣诞大餐喽,每人只限三次哦!")
	Text(13, "第一次烹制圣诞大餐",  JumpPage, 15)
	Text(13, "第二次烹制圣诞大餐",  JumpPage, 16)
	Text(13, "第三次烹制圣诞大餐", JumpPage, 17)
	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 14 )
	Talk( 15, "要做圣诞大餐可不容易,我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我10000海盗币的辛苦费,而且只能为每人做3次")
	Text( 15, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 18 )
	Talk(16, "又来做圣诞大餐?我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我1百万海盗币的辛苦费,而且只能为每人做3次")
	Text( 16, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage,19 )
	Talk(17, "又来做圣诞大餐?我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我1千万海盗币的辛苦费,而且只能为每人做3次")
	Text( 17, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14, "玛拉依兰:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第一次做圣诞大餐吗?只能做3次.")
	Talk( 18, "玛拉依兰:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第二次做圣诞大餐吗?只能做3次哦.")
	Talk( 19, "玛拉依兰:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第三次做圣诞大餐吗?只能做3次哦.")
	Talk( 12, "玛拉依兰:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.")
------------------调配红色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1787, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1787, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1797, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "玛拉依兰:长时间顶着一个颜色的头发也会腻的,就像和天天都要去工作是一个道理.我帮你调个其他颜色的染发剂吧." )
	Text( 2, "调配红色染发剂", MultiTrigger, GetMultiTrigger(), 1)
---------------------调配橙色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1788, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1788, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1798, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "调配橙色染发剂", MultiTrigger, GetMultiTrigger(), 1)
---------------------调配黑色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 4606, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4606, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4607, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "调配黑色染发剂", MultiTrigger, GetMultiTrigger(), 1)
---------------------调配褐色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 4608, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4608, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4609, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "调配褐色染发剂", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "玛拉依兰:嘿,看我多厉害,这么快就调出这么漂亮的染发剂." )
	Talk( 4, "玛拉依兰:红色染发剂的制作需要5个红色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G." )
	Talk( 5, "玛拉依兰:橙色染发剂的制作需要5个橙色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G." )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 2 )
	TriggerAction( 1, AddExp, 116688305, 116688305 )
	TriggerAction( 1, AddExpAndType,2,370500,370500)
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "玛拉依兰:为了配合测试PK,我将给您自动升级到65级和100W金钱." )
	Text( 6, "好的", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "玛拉依兰:我只提供给1级的新手这样的机会." )

	Talk( 8, "玛拉依兰:黑色染发剂的制作需要5个黑色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G." )
	Talk( 9, "玛拉依兰:褐色染发剂的制作需要5个褐色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G." )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------二月-----------情为何物-----------倾城之恋------------幸运猪猪----------七猪开泰
	
	--AddNpcMission	(5505)
	--AddNpcMission	(5506)
	--AddNpcMission	(5508)
	--AddNpcMission	(5509)
	--AddNpcMission	(5536)

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·玛拉依兰




----------------------------------------------------------
--							--
--							--
--		白银城[佛姆]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk11 ()
	
	
	Talk( 1, "佛姆:嘿,给你猜个谜语,知道小白＋小白等于啥吗?啊哈哈,就是小白兔（Two）嘛!哎?不好笑吗?那等我换一个……喂,别走呀!" )

	--Text( 1, "捆绑粽子", JumpPage,2)

	Talk( 2, "佛姆:端午节快乐!你想捆绑哪种粽子呢?")
	Text( 2, "蛋黄粽子",JumpPage,3)
	Text( 2, "豆沙粽子", JumpPage,4)
	Text( 2, "糯米粽子", JumpPage,5)

	InitTrigger() --兑换蛋黄粽
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3040, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3040, 1 )
	TriggerAction( 1, GiveItem,3043, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(3, "佛姆:1蛋黄粽绳+1温情粽子=1蛋黄粽,蛋黄粽可使防御力在10分钟内提升60点")
	Text( 3, "确定",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --兑换豆沙粽
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3041, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3041, 1 )
	TriggerAction( 1, GiveItem,3044, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(4, "佛姆:1豆沙粽绳+1温情粽子=1豆沙粽,豆沙粽可使行走速度在15分钟内有较大提升效果")
	Text( 4, "确定",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --兑换糯米粽
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3042, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3042, 1 )
	TriggerAction( 1, GiveItem,3045, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(5, "佛姆:1糯米粽绳+1温情粽子=1糯米粽,糯米粽可使角色将获得35%的HP恢复")
	Text( 5, "确定",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 6, "佛姆:您身上似乎没有足够的捆绑粽子所需物品啊!或者您的背包已锁定,请确保您的背包留有一个空格.")
	AddNpcMission	(1009)
	AddNpcMission	(1173)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<佛姆



----------------------------------------------------------
--							--
--							--
--		白银城[水手·海云]			--
--							--
--		235013,284694				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk12 ()
	
	
	Talk( 1, "海云:你好,朋友,我是水手海云." )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1043 )
	TriggerCondition( 1, HasRecord, 1042 )
	TriggerCondition( 1, NoRecord, 1058 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "第一个问题",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1044 )
	TriggerAction( 1, SetRecord, 1058 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "杀精灵草杀的爽吗？")
	Text( 2, "爽",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1045 )
	TriggerAction( 1, SetRecord, 1058 )
	TriggerAction( 1, JumpPage, 5 )
	Text( 2, "不爽",MultiTrigger, GetMultiTrigger(), 1  )


	Talk( 3, "你是谁？我不认识你！")
	Talk( 4, "爽吗？那继续吧。")
	Talk( 5, "不爽吗？那换一种让你杀杀吧")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------吉尼斯-海云---01
	AddNpcMission	(5510)
	AddNpcMission ( 6061 )
	AddNpcMission ( 6062 )
	AddNpcMission ( 6063 )
	AddNpcMission ( 6064 )
	AddNpcMission ( 6065 )
	AddNpcMission ( 6066 )
	AddNpcMission ( 6067 )
	AddNpcMission ( 6068 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<水手·海云


----------------------------------------------------------
--							--
--							--
--		白银城[银行出纳·摩妮雅]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk13 ()
	
	
	Talk( 1, "摩妮雅:你好,我是银行出纳摩妮雅.凡是我经手的帐目,不会有一笔出错的." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "银行（每次200G）", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "对不起,您的现金不够,无法支付使用银行的费用." )

	AddNpcMission	(1050)
	AddNpcMission	(1212)
	AddNpcMission ( 6091 )
	AddNpcMission ( 6092 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·摩妮雅

----------------------------------------------------------
--							--
--							--
--		白银城[海军少将·威尔斯]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk14 ()
	
	
	Talk( 1, "威尔斯:你好,我是海军少将威尔斯,雷霆堡驻白银城海军办事处的最高负责人." )
	Text( 1, "兑换军帽", JumpPage, 3)
	Text( 1, "没事,我随便逛逛",CloseTalk )

	Talk( 3, "威尔斯:我这里可以用军衔证明换得非常稀有的军帽哦." )
	Text( 3, "兑换少校军帽", JumpPage, 4)
	Text( 3, "兑换中校军帽", JumpPage, 5)
	Text( 3, "兑换上校军帽", JumpPage, 6)
	Text( 3, "兑换将军军帽", JumpPage, 7)
	Text( 3, "兑换元帅军帽", JumpPage, 8)
	
	Talk( 4, "威尔斯:想要兑换少校之首,你必须给我1张少校军衔证明才行." )
	--------------兑换少校之首
	InitTrigger()
	TriggerCondition( 1, HasItem, 68, 1 )
	TriggerAction( 1, TakeItem, 68, 1 )
	TriggerAction( 1, GiveItem, 90, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "我要兑换", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "下次再说",CloseTalk )

	Talk( 5, "威尔斯:想要兑换少校之首,你必须给我1张中校军衔证明才行." )
	--------------兑换中校之首
	InitTrigger()
	TriggerCondition( 1, HasItem, 69, 1 )
	TriggerAction( 1, TakeItem, 69, 1 )
	TriggerAction( 1, GiveItem, 91, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "我要兑换", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "下次再说",CloseTalk )

	Talk( 6, "威尔斯:想要兑换上校之首,你必须给我1张中校军衔证明才行." )
	--------------兑换上校之首
	InitTrigger()
	TriggerCondition( 1, HasItem, 70, 1 )
	TriggerAction( 1, TakeItem, 70, 1 )
	TriggerAction( 1, GiveItem, 92, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "我要兑换", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "下次再说",CloseTalk )

	Talk( 7, "威尔斯:想要兑换将军之首,你必须给我1张中校军衔证明才行." )
	--------------兑换将军之首
	InitTrigger()
	TriggerCondition( 1, HasItem, 71, 1 )
	TriggerAction( 1, TakeItem, 71, 1 )
	TriggerAction( 1, GiveItem, 93, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "我要兑换", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "下次再说",CloseTalk )

	Talk( 8, "威尔斯:想要兑换元帅之首,你必须给我1张中校军衔证明才行." )
	--------------兑换元帅之首
	InitTrigger()
	TriggerCondition( 1, HasItem, 72, 1 )
	TriggerAction( 1, TakeItem, 72, 1 )
	TriggerAction( 1, GiveItem, 94, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 8, "我要兑换", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "下次再说",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2, "威尔斯:什么什么?你的悬赏令丢了?没有那个东西商会会长怎么肯承认呢?还好我这里有一张,不过我也是花了20000G买来的,你想要的话就卖给你吧.")
	Text( 2, "好吧,我买悬赏令", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "甘地维拉:现在我正在研究古代符石,我需要大量的古代符石来做研究,如果你提供给我足够的符石,我可以拿一些好东西与你交换." )
	Text( 2, "有关骷髅系列装备", JumpPage, 3)
	Text( 2, "有关咒术系列装备", JumpPage, 4)
	Text( 2, "有关幻灵系列装备", JumpPage, 5)
	Text( 2, "有关迷之系列装备", JumpPage, 6)

	Talk( 10, "威尔斯:请确保您身上有对应的军衔证明." )

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 207 )
	AddNpcMission ( 208 )
	AddNpcMission ( 209 )
	AddNpcMission ( 212 )
	AddNpcMission ( 213 )
	AddNpcMission ( 216 )
	AddNpcMission ( 274 )
	AddNpcMission ( 275 )
	AddNpcMission ( 276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军少将·威尔斯



----------------------------------------------------------
--							--
--							--
--		白银城[沙岚城大使·席巴]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk15 ()
	
	
	Talk( 1, "席巴:能趴着我为什么还要四处打滚呢.就算我是沙岚城的外交大使,偷一点懒也是可以的嘛?对吧,朋友,人不能总那么严肃." )

	AddNpcMission	(1032)
	AddNpcMission	(1195)
----------------秋岛开发
	--AddNpcMission	(6177)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚城大使·席巴


----------------------------------------------------------
--							--
--							--
--		白银城[白银城商会会长·劳伦迪马斯]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk16 ()
	
	
	Talk( 1, "劳伦迪马斯:我是白银商会的会长劳伦迪马斯,也是白银城的御用商人.我可以训练任何人成为加纳大陆上最有钱途的商人,当然也包括你." )
	
	AddNpcMission ( 271 )
	AddNpcMission ( 277 )
	AddNpcMission ( 278 )
	AddNpcMission ( 280 )
	AddNpcMission ( 286 )
------------1.7
	AddNpcMission (5076 )
	AddNpcMission (5077 )
	AddNpcMission (5078 )
	AddNpcMission (5079 )
	AddNpcMission (5088 )
	AddNpcMission (5110 )
	AddNpcMission (5112 )
	AddNpcMission (5114 )
	AddNpcMission (5116 )
	AddNpcMission (5147 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<白银城商会会长·劳伦迪马斯

----------------------------------------------------------
--							--
--							--
--		白银城[老者·糊涂山人]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk17 ()
	
	
	Talk( 1, "糊涂山人:贝蒂做的草莓饼三十年前就已经很好吃啦,现在更是美味." )

	AddNpcMission ( 266 )
	AddNpcMission ( 267 )
	AddNpcMission ( 270 )
	AddNpcMission ( 272 )
	AddNpcMission ( 273 )
	AddNpcMission ( 337 )
	AddNpcMission ( 338 )
	AddNpcMission ( 554 )
	AddNpcMission ( 555 )
	AddNpcMission ( 901 )
	---------------白羊
	AddNpcMission	(5557)
	AddNpcMission	(5558)
	AddNpcMission ( 6094 )
		--------------猪光宝气--------马来西亚
	--AddNpcMission ( 6126 )
	---------------勇者试炼
	AddNpcMission( 6167 )
	AddNpcMission( 6168 )
	AddNpcMission( 6169 )
	AddNpcMission( 6170 )
	AddNpcMission( 6173 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<老者·糊涂山人

----------------------------------------------------------
--							--
--							--
--		白银城[会长助理·罗伊]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk18 ()
	
	
	Talk( 1, "罗伊:哎,你有没有觉得我们的商会会长在刻意隐瞒什么?恩,到底是什么呢……" )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<会长助理·罗伊

----------------------------------------------------------
--							--
--							--
--		白银城[路人·甲]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk19 ()
	
	
	Talk( 1, "路人甲:说起海上的怪物啊,射水贝是最可怕的了.真的真的,我在港口见过有一个人那么大的,要不是樱花十三一个飞镖射在它身上,我们这些岸边的人早就完蛋了!" )
	
	AddNpcMission ( 6086 )
	AddNpcMission ( 6089 )
	AddNpcMission ( 6090 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·甲

----------------------------------------------------------
--							--
--							--
--		白银城[酒鬼·芬德内]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk20 ()
	
	
	Talk( 1, "芬德内:怎么?你找我打听东西?你找对人了, 我可是万事通啊, 不过Money Talk, 不给钱是不行的. 请在聊天输入栏里输入'/?关键字'" )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )
	AddNpcMission ( 6082 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒鬼·芬德内

----------------------------------------------------------
--							--
--							--
--		白银城[少年·唐德]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk21 ()
	
	
	Talk( 1, "唐德:嗨,我叫唐德,你呢?最近城外怪物好多,我奶奶贝蒂都不放心我一个人出来玩了." )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少年·唐德

----------------------------------------------------------
--							--
--							--
--		白银城[制造师·德萨克]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk22 ()
	
	
	Talk( 1, "德萨克:我们地精的制造工艺向来高于你们人类,是你们自己不愿意承认罢了." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<制造师·德萨克


----------------------------------------------------------
--							--
--							--
--		白银城[D版商·走私兔]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk23 ()
	
	
	Talk( 1, "走私兔:违禁品一网打尽,走私品尽在掌握.这位朋友,你需要什么?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------愚人节
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D版商·走私兔


----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军司令官·德斯塔罗]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk24 ()
	
	
	Talk( 1, "德斯塔罗:你好,我是雷霆堡海军的最高统率德斯塔罗,我可以让你领导光荣的海军部队,你想加入我们吗?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "成为海军领导", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "德斯塔罗:要成为海军的领导必须提供100000G的临时军费,以及带上誓言之石来表明你的忠诚" )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
	AddNpcMission ( 6087 )
	AddNpcMission ( 6088 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军司令官·德斯塔罗


----------------------------------------------------------
--							--
--							--
--		雷霆堡[酒吧服务员·米娜]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk25 ()
	
	
	Talk( 1, "米娜:嗨,你认识那个大名鼎鼎的海盗樱花十三吗?她可是我的偶像.早晚有一天我要离开这个无情无意的地方,和她一起做个大海盗!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧服务员·米娜

----------------------------------------------------------
--							--
--							--
--		雷霆堡[水手·迪奥]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk26 ()
	
	
	Talk( 1, "嗨,朋友,我是水手迪奥.出海可要小心点,魔女之海有很多很多凶猛的水怪,特别是那些锯齿鲨鱼,他们是魔鬼,他们会咬断你的腿!!……就像咬我的一样,Oh,No...My Leg" )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------吉尼斯---水手·迪奥--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<水手·迪奥






----------------------------------------------------------
--							--
--							--
--		雷霆堡[军医·玛沙]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk28 ()
	
	
	Talk( 1, "玛沙:找我有什么事吗?我是雷霆堡的军医玛沙,一点小伤可别来烦我." )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)
	----------------1.7
	AddNpcMission (5130 )
	AddNpcMission (5131 )
	AddNpcMission (5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<军医·玛沙

----------------------------------------------------------
--							--
--							--
--		雷霆堡[银行出纳·玛卡多]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk29 ()
	
	
	Talk( 1, "玛卡多:您好,欢迎光临雷霆堡信誉最好的喳喳银行." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "银行（每次200G）", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "对不起,您的现金不够,无法支付使用银行的费用." )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·玛卡多


----------------------------------------------------------
--							--
--							--
--		雷霆堡[铁匠·佛朗哥]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk30 ()
	
	
	Talk( 1, "佛朗哥:哼.打铁?哼哼." )
	Text( 1, "炼制", JumpPage, 2)
	Text( 1, "没事,我随便逛逛",CloseTalk )


----------------炼制水晶砂碎片
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "佛朗哥:炼炼炼……我每天的工作就是炼铁炼钢,偶尔我也会想要炼点别的东西." )
	Text( 2, "炼制水晶砂碎片",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "佛朗哥:这是用你的水晶细沙炼造出来的水晶沙碎片,请拿好.以后有事情欢迎再来找我." )
	Talk( 4, "佛朗哥:你得有10个水晶细沙我才能帮你制作水晶沙碎片,别忘了200G的工本费." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·佛朗哥
----------------------------------------------------------
--							--
--							--
--		雷霆堡[少女·辛蒂]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk31 ()
	
	
	Talk( 1, "辛蒂:你好,远方来的朋友,我是克拉克公爵家的小女儿辛蒂,最喜欢可爱的小玩意了.你要是在旅途上发现什么可爱的东西,别忘记告诉我." )
	
	Text( 1, "喋血白羊宫(终极12宫专用任务)", JumpPage,6 )
	Text( 1, "水手过关奖励", JumpPage,8 )
	Text( 1, "海盗过关奖励", JumpPage,11 )
	Text( 1, "船长过关奖励", JumpPage,12 )
	Text( 1, "调制染发剂", JumpPage, 2)

	Talk( 6, "辛蒂:请选择你要闯关的难度,从水手到船长难度依次加大,当然了难度越高奖励越丰厚.你想好了吗?不可以后悔哦" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "水手",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "海盗",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "船长",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7, "辛蒂:猪你好运喏!" )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	--TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8, "辛蒂:集齐7枚勋章就可以在我这里兑换到白羊宫守印和下一宫的门票了.还有很多奖励哦" )
	Text( 8, "确定兑换",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11, "辛蒂:集齐7枚勋章就可以在我这里兑换到白羊宫守印和下一宫的门票了.还有很多奖励哦" )
	Text( 11, "确定兑换",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12, "辛蒂:集齐7枚勋章就可以在我这里兑换到白羊宫守印和下一宫的门票了.还有很多奖励哦" )
	Text( 12, "确定兑换",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10, "辛蒂:您身上似乎没有足够的勋章啊!请检查您的背包是否已锁定,而且要保证留有3个空格!还有你确定你当时选择的难度是这个吗?")
	Talk( 9, "辛蒂:金牛宫有更刺激的挑战等你哦,加油!!")
	Talk( 13, "辛蒂:挑战白羊宫的时候,难度只能选择一次哦")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "辛蒂:想和我拥有一个同样的发色吗?我帮你调配这种染发剂出来吧." )
	Text( 2, "调配黄色染发剂",MultiTrigger, GetMultiTrigger(), 1)
---------------调配绿色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "调配绿色染发剂",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "辛蒂:我的技艺还不纯熟,让你久等了.这是你要的染发剂." )
	Talk( 4, "辛蒂:我会做黄色染发剂,你只要给我5个黄色染料、1个特效气体和1个彩色玻璃杯,另外再收你手工费200G." )
	Talk( 5, "辛蒂:我会做绿色染发剂,你只要给我5个绿色染料、1个特效气体和1个彩色玻璃杯,另外再收你手工费200G." )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------
	AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	AddNpcMission	(5597)
	AddNpcMission	(5600)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少女·辛蒂


----------------------------------------------------------
--							--
--							--
--		雷霆堡[沙岚驻雷霆堡大使·埃德加]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk32 ()
	
	
	Talk( 1, "埃德加:你好,我是沙岚城的外交官埃德加.你最近有路过那里吗?我好久没回去看看了." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚驻雷霆堡大使·埃德加

----------------------------------------------------------
--							--
--							--
--		雷霆堡[道具商人·休布李维斯]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk33 ()
	
	
	Talk( 1, "休布李维斯:嘛布啦轰,轰啦布嘛～～这是春风镇的问候,我是刚从那里搬来的新移民,以后请多多关照了." )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<道具商人·休布李维斯

----------------------------------------------------------
--							--
--							--
--		雷霆堡[旅馆老板·玛雅婆婆]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk34 ()
	
	
	Talk( 1, "玛雅婆婆:你好,年轻人.我近来身体不好,旅店正在休业中." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅馆老板·玛雅婆婆

----------------------------------------------------------
--							--
--							--
--		雷霆堡[服装店主·迪乐]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk35 ()
	
	
	Talk( 1, "迪乐:您好,很抱歉,本店暂停营业" )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·迪乐

----------------------------------------------------------
--							--
--							--
--		雷霆堡[白银城驻雷霆堡大使·伊塔多]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk36 ()
	
	
	Talk( 1, "伊塔多:无奸不商,无奸不商,真是至理名言呀." )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
	AddNpcMission ( 6025 )
	AddNpcMission ( 6026 )
	AddNpcMission ( 6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<白银城驻雷霆堡大使·伊塔多

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫长·迦略克]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk37 ()
	
	
	Talk( 1, "迦略克:朋友,你好.我是雷霆堡的护卫长迦略克,负责城内的保安工作." )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "海盗和怪兽越来越猖獗了,可是想要做个好的剑士的人却少了.朋友,我觉得你条件不错,人品也好,要不要考虑当个剑盾士,捍卫和平吗?")
	Text(2, "好的,转职成为剑盾士", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "不,我觉得现在这样挺好的.", CloseTalk)

	Talk(3, "除暴安良是剑盾士的职责,当了剑盾士之后你可不要忘记这一点.")

	Talk(4, "想要转职剑盾士吗?等到了40级再来吧,来之前先把剑士的技能炼好,另外记得带上1个奇异金属的碎片作为你历练的成绩.转职费用是20000G.")
	

	
	
	
		

	----------转职成为剑盾士
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------转狙击手判断

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫长·迦略克

----------------------------------------------------------
--							--
--							--
--		雷霆堡[杂货商人·咕嘟]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk38 ()
	
	
	Talk( 1, "咕嘟:你好,朋友,来得真巧.最近店里搞促销,东西都给你算最低价好了.我喜欢搜集一些特殊的东西,在你10级以后我们好好谈谈,你可以来这里领取我给你的随机任务.我会给你很丰厚的经验报酬哦!" )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·咕嘟

----------------------------------------------------------
--							--
--							--
--		雷霆堡[少女·罗莉]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk39 ()
	
	
	Talk( 1, "罗莉:你去过那么多地方,有没有见过海军少将威尔斯?自从他调到白银城工作之后,城里一下子黯淡了许多,这些壁草一样的男人一点可看性都没有呢." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少女·罗莉

----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军总部指挥官·基.埃斯西准将]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk40 ()
	
	
	Talk( 1, "基.埃斯西上将:我有预感,玛亚兹一定会再给我惹麻烦的.虽然他现在被我分配到城外执勤,但以他的个性,总有一天会把城外也闹得鸡犬不宁.到时候背黑锅的人还是我,唉……" )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------白羊
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军总部指挥官·基.埃斯西准将

----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军总部参谋长·玛亚兹少校]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk41 ()
	
	
	Talk( 1, "玛亚兹少校:哟,你好啊,朋友.我是海军参谋长玛亚兹,前两天被亲爱的上司基.埃斯西上将贬来这里做看守.呵呵,他的不满终于爆发了,呵呵呵." )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军总部参谋长·玛亚兹少校

----------------------------------------------------------
--							--
--							--
--		雷霆堡[摩尔克人后裔·菲儿]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk42 ()
	
	
	Talk( 1, "菲儿:把我们称为魔族的不就是你们这些人吗?我讨厌你们这些自以为是的现代人,不要和我说话." )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<摩尔克人后裔·菲儿

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫·尼松]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk43 ()
	
	
	Talk( 1, "尼松:我和松尼是好兄弟,一起来做海军护卫." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	-------------护卫·尼松-------双子
	AddNpcMission	(5690)
	AddNpcMission	(5691)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫·尼松

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫·松尼]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk44 ()
	
	
	Talk( 1, "松尼:好兄弟,明算帐." )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫·松尼

----------------------------------------------------------
--							--
--							--
--		雷霆堡[路人·丙]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk45 ()
	
	
	Talk( 1, "路人丙:雷霆堡的码头有个不错的酒吧,就是离这里太远了,不方便去." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·丙


----------------------------------------------------------
--							--
--							--
--		雷霆堡[路人·巴比]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk46 ()
	
	
	Talk( 1, "巴比:嗨,朋友,你做过海盗没有?雷霆堡海军太多,海盗都不敢来了!" )
	Text( 1, "炼造", JumpPage, 2)

--------------炼造地金
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "巴比:积少成多的道理你懂吧?我的工作就把许多小矿石炼造成大矿石." )
	Text( 2, "炼造地金", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "巴比:地金矿石我交给你喽,你可别事后再来反悔哦." )
	Talk( 4, "巴比:地金矿石?拿10个小块地金矿石和2000G来换吧." )

	AddNpcMission	(6256)
	AddNpcMission	(6257)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·巴比

----------------------------------------------------------
--							--
--							--
--		沙岚城[大神官·甘地维拉]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------这里开始P话聊天
function r_talk47 ()
	
	
	Talk( 1, "甘地维拉:你好,朋友,愿女神卡拉降福于你.我是沙岚城的大神官甘地维拉." )
	Text( 1, "研究古代符石", JumpPage, 2)
        Text( 1, "合成藏宝图", JumpPage, 7)
        Text( 1, "幻象碎片兑换图纸", JumpPage, 9)
	Text( 1, "幻象之心兑换60级戒指", JumpPage, 10)

	Talk( 2, "甘地维拉:现在我正在研究古代符石,我需要大量的古代符石来做研究,如果你提供给我足够的符石,我可以拿一些好东西与你交换." )
	Text( 2, "有关骷髅系列装备", JumpPage, 3)
	Text( 2, "有关咒术系列装备", JumpPage, 4)
	Text( 2, "有关幻灵系列装备", JumpPage, 5)
	Text( 2, "有关迷之系列装备", JumpPage, 6)
	
	Talk( 3, "甘地维拉:骷髅系列装备,是来自废灵都市的Lv30装备,你必须给我10个卡那符石和10个索思符石才行,当然你可以选择任意一种职业的装备哦." )
	--------------骷髅之剑士宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "获取剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之猎人宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "获取猎人装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之药师宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "获取药师装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之冒险者宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "获取冒险者装备", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "甘地维拉:咒术系列装备,是来自废灵都市和阴暗沼泽的Lv40装备,你必须给我10个加而符石和10个肯特符石才行,当然你可以选择任意一种职业的装备哦." )
	--------------咒术之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "获取双剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "获取巨剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "获取狙击手装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "获取圣职者装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "获取封印师装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "获取航海士装备", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "甘地维拉:咒术系列装备,是来自阴暗沼泽和魔方世界的Lv50装备,你必须给我10个奥加符石和10个纳特符石才行,当然你可以选择任意一种职业的装备哦." )
	--------------幻灵之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "获取双剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "获取巨剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "获取狙击手装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "获取圣职者装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "获取封印师装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "获取航海士装备", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "甘地维拉:迷之系列装备,是来自魔方世界的Lv60装备,你必须给我10个特尔符石和10个法兰符石才行,当然你可以选择任意一种职业的装备哦." )
	--------------迷之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "获取双剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "获取巨剑士装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "获取狙击手装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "获取圣职者装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "获取封印师装备", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "获取航海士装备", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --合成藏宝图
	TriggerCondition( 1, HasItem, 0432, 1 )
        TriggerCondition( 1, HasItem, 0433, 1 )
	TriggerCondition( 1, HasItem, 0434, 1 )
	TriggerCondition( 1, HasItem, 0435, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeItem, 0432, 1 )
	TriggerAction( 1, TakeItem, 0433, 1 )
	TriggerAction( 1, TakeItem, 0434, 1 )
	TriggerAction( 1, TakeItem, 0435, 1 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GiveItem, 1092, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 ) 

	Talk( 7, "甘地维拉:把四张藏宝图碎片给我吧,我帮你来合成藏宝图." )
	Text( 7, "合成藏宝图",MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 8, "甘地维拉:等你凑齐了四张藏宝图和2000块钱再来找我吧" )

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "甘地维拉:啊？你身上的碎片可以给我吗？不会亏待你的." )
	Text( 9, "5个幻象碎片兑换1张模糊图纸", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30个幻象碎片兑换1张密文图纸", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100个幻象碎片兑换1张封印图纸", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500个幻象碎片兑换1张符文图纸", MultiTrigger, GetMultiTrigger(), 1)


	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "甘地维拉:多么美丽的幻象之心啊，我用这个戒指来和你交换吧." )
	Text( 10, "兑换怒火之炎", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "兑换坚定之岩", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "兑换轻灵之风", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "兑换缠绕之藤", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "兑换奇迹之水", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11, "您没有兑换所需要的道具，也有可能您的背包已经锁定或者没有空格." )



	--AddNpcMission ( 719 )
	AddNpcMission ( 102 )
	AddNpcMission 	(416)
	AddNpcMission 	(751)
	AddNpcMission 	(755)
	AddNpcMission 	(95)
	AddNpcMission 	(96)
	AddNpcMission 	(97)
	AddNpcMission 	(151)
	AddNpcMission(	1227	)
	AddNpcMission 	(342)
	AddNpcMission 	(343)
	AddNpcMission 	(344)
	AddNpcMission 	(345)
	AddNpcMission 	(346)
	AddNpcMission 	(347)
	AddNpcMission 	(348)
	AddNpcMission 	(349)
	AddNpcMission 	(350)
	AddNpcMission 	(351)
	AddNpcMission 	(352)
	AddNpcMission 	(353)
	AddNpcMission 	(354)
	AddNpcMission 	(355)
-------------eleven
	AddNpcMission 	(5009)
	AddNpcMission 	(5015)
	AddNpcMission 	(5017)
	AddNpcMission 	(5024)
	AddNpcMission 	(5028)
	AddNpcMission 	(5031)
	AddNpcMission 	(5059)
	AddNpcMission 	(5064)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<大神官·甘地维拉


----------------------------------------------------------
--							--
--							--
--		沙岚城[氏族长·阿布多罗.李]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk48 ()
	
	
	Talk( 1, "阿布多罗.李:你好,我是李氏一族的族长阿布多罗.李.有什么需要帮忙的吗?" )
	InitTrigger()
	TriggerCondition( 1, HasMission, 1014 )
	TriggerCondition( 1, HasRecord, 1013 )
	TriggerCondition( 1, NoRecord, 1059 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "选择转生之路",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059 )
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056 )
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6)
	Text( 1, "重新选择转生之路",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "没什么", CloseTalk)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "阿布多罗.李:转生之路其实分为两条，其中一条为艰难之路，选择这条的话你将遭遇到这游戏中最为强大的几个怪物，这是一条强者之路；第二条则是考验你的耐心的道路，选择这条的话你将会遭遇无数的刁难和挫折，如果没有充分的心理准备的话还是不要选的好！想好的了话请选择艰难之路或者麻烦之路，你只要完成其中一条道路就可以转生了哦")
	Text( 2, "困难之路",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Text( 2, "麻烦之路",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "你还没有到选择转生之路的时候或者你已经选择了你的转生之路")

	Talk( 4, "选好了方向就要勇往直前，回去找路人·丁吧！")


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1016 )
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5, "重新选择转生之路需要付出很大的代价，大概要500W海盗币吧！")
	Text( 5, "改为困难之路",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1015 )
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Text( 5, "改为麻烦之路",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "你还没有选择过转生之路呢，不需要这样，这只是给那些已经选择过了但是想反悔的人准备的！也有可能你已经完成转生了！")

	Talk( 7, "这次你可要加油哦")

	Talk( 8, "你没有足够的钱，或者你选择的转生之路路就是你以前所选的")

	AddNpcMission ( 231 )
	AddNpcMission ( 232 )
	AddNpcMission ( 234 )
	AddNpcMission	(1037)
	AddNpcMission	(1091)
	AddNpcMission	(1149)
	AddNpcMission	(1200)
	AddNpcMission(	1228	)
	AddNpcMission	(327)
	AddNpcMission	(339)
	AddNpcMission	(340)
	AddNpcMission ( 6017 )
	AddNpcMission ( 6018 )
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<氏族长·阿布多罗.李


----------------------------------------------------------
--							--
--							--
--		沙岚城[道具店主·欧翟]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk49 ()
	
	
	Talk( 1, "欧翟:过来瞧瞧吧,朋友.我这里的药可都是根据土著民族的秘方调配的哟." )
	Text( 1, "调配回复药剂", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "欧翟:要想恢复精力就必须喝回复药剂,我可以调配一种特殊的哦,想不想试试?" )
	Text( 2, "调配甘草药水", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "现榨精灵果汁", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "炮制醒神花茶", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "欧翟:一手交钱一手交货.钱我收下了,这是你要的甘草药水,请拿好." )
	Talk( 4, "欧翟:嗨,得要10个药用草叶和1个药瓶子才能合成1个甘草药水了,另外你还得付50G." )
	Talk( 5, "欧翟:这是用你的精灵果现榨的精灵果汁,一点没偷工减料,请收好." )
	Talk( 6, "欧翟:对不起,你没有配方上要的东西哦.精灵果汁需要10个精灵果和1个玻璃杯才能制作哟." )
	Talk( 7, "欧翟:一手交钱一手交货.钱我收下了,这是你要的醒神花茶,请拿好." )
	Talk( 8, "欧翟:嗨,得要10个梦幻花瓣和1个药瓶子才能合成1瓶醒神花茶了,另外你还得付50G." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<道具店主·欧翟


----------------------------------------------------------
--							--
--							--
--		沙岚城[服装店主·莫亚]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk50 ()
	
	
	Talk( 1, "莫亚:我家世代都是裁缝,请随便看,挑得再仔细也没有次品." )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)
	Defence(	0383	)
	Defence(	0559	)
	Defence(	0735	)
	Defence(	0359	)
	Defence(	0535	)
	Defence(	0711	)
	Defence(	0381	)
	Defence(	0557	)
	Defence(	0733	)
	Defence(	0360	)
	Defence(	0536	)
	Defence(	0712	)
	Defence(	0389	)
	Defence(	0565	)
	Defence(	0741	)
	Defence(	0361	)
	Defence(	0537	)
	Defence(	0713	)
	Defence(	0390	)
	Defence(	0566	)
	Defence(	0742	)
	Defence(	0362	)
	Defence(	0538	)
	Defence(	0714	)
	Defence(	0385	)
	Defence(	0561	)
	Defence(	0737	)
	Defence(	0363	)
	Defence(	0539	)
	Defence(	0715	)
	Defence(	0392	)
	Defence(	0568	)
	Defence(	0744	)
	Defence(	0388	)
	Defence(	0564	)
	Defence(	0740	)
	Defence(	0382	)
	Defence(	0558	)
	Defence(	0734	)
	Defence(	0391	)
	Defence(	0567	)
	Defence(	0743	)


	AddNpcMission ( 715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·莫亚

----------------------------------------------------------
--							--
--							--
--		沙岚城[银行出纳·朱迪斯]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk51 ()
	
	
	Talk( 1, "朱迪斯:您好,欢迎光临沙岚银行.有什么能为您效劳的吗?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "银行（每次200G）", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "对不起,您的现金不够,无法支付使用银行的费用." )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·朱迪斯

----------------------------------------------------------
--							--
--							--
--		沙岚城[港卫队成员·鹧鸪草]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk52 ()
	
	
	Talk( 1, "鹧鸪草:我本是想做个海军.可是啊,我的灾难体质却总是为舰队招来暴风雨.有一次,我给舰队吸引来了十余艘海盗船,那些被扒到只剩一条内裤的长官们,终于愤怒地把我踢到港卫队来让我负责沙岚城的安全工作." )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	
	
	----------------转职成为训兽师
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "哎呀,真是可惜了,你居然没有做个训兽师!凭我的眼力和直觉,你这么有天赋就应该去做训兽师.快点,我教你转行吧!")
	Text(5, "好的,转职成为训兽师", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "不,我觉得现在这样挺好的.", CloseTalk)

	Talk(6, "怎么样,我没说错吧,你天生是个做训兽师的料!")

	Talk(7, "想要转职训兽师吗?等到了40级再来吧,来之前先把猎人的技能炼好,另外记得带上1个透明水晶作为你历练的成绩.转职费用是20000G.")


	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission ( 243 )
	AddNpcMission ( 244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<港卫队成员·鹧鸪草

----------------------------------------------------------
--							--
--							--
--		沙岚城[铁匠·铜铜鼓]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk53 ()
	
	
	Talk( 1, "铜铜鼓:你好,朋友.我这里出售武器防具,需要什么自己挑,别客气.另外我还会修复一些损毁的物品." )
	Text( 1, "交易", BuyPage )
	Text( 1, "修理", OpenRepair )
	Text( 1, "开始精炼", OpenForge)
	Text( 1, "开始打磨", OpenMilling)
	Text( 1, "酷装熔合", OpenFusion)
	Text( 1, "酷装升级", OpenUpgrade)
	Text( 1, "没事,我随便逛逛",CloseTalk )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)

	AddNpcMission ( 713 )
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·铜铜鼓




--------------------------------------------------------------铁匠的徒弟 
function mmm_talk04 ()
	Talk( 1, "铁匠的徒弟 :我要是能有师傅的手艺那该多好啊." )
	Text( 1, "关于道具精炼", JumpPage, 2 )
	Text( 1, "关于道具合成", JumpPage, 3 )
	Text( 1, "关于装备打磨", JumpPage, 7 )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	
	
	Talk( 2, "铁匠的徒弟:要精炼你的武器和装备必须付出极大的代价,首先你必须要有一颗对应你武器精炼等级的精炼石,然后你再选择一种任意的宝石镶嵌作为属性的追加,不同的宝石代表不同的属性,但他们同样也是需要与武器的等级匹配的,我师傅的能力有限,只能镶嵌等于或者高于武器本身精炼级别的宝石,你需要精炼么?" )
	Text( 2, "有关精炼石", JumpPage, 4)
	Text( 2, "有关镶嵌宝石", JumpPage, 5)
	Text( 2, "有关精炼成功率", JumpPage, 6)
	
	Talk( 3, "铁匠的徒弟:你想合成物品么?据我所知合成物品需要有一张相对应的合成公式卷轴,卷轴上面记载了所有合成所需要的材料,你可以找沙岚城的杂货商人·艾墨,他是这个世界上唯一会合成的人,我知道的就只有这些了." )
	
	Talk( 4, "铁匠的徒弟:精炼石是精炼的必备物品,精炼石的等级必须大于等于当前需要精炼的装备精炼等级." )

	Talk( 5, "铁匠的徒弟:镶嵌宝石有很多种,大致可以分为攻击的火系宝石、防御的水系宝石、增益的圣系宝石." )

	Talk( 6, "铁匠的徒弟:精炼的等级越高失败的几率越大,精炼的最高等级为27级,精炼失败后精炼的装备是不会消失的." )
	
	Talk( 7, "铁匠的徒弟:打磨装备的话,你需要准备给我师傅一个装备加固剂和一个装备催化粉我才能开始打磨哦." )

end

----------------------------------------------------------
--							--
--							--
--		沙岚城[莉娜]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk54 ()
	
	
	Talk( 1, "莉娜:你好,我是铜铜鼓的妻子莉娜." )
	Text( 1, "调制染发剂", JumpPage, 2)

----------------调配青色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "莉娜:我认为这种头发很适合你,要不要试试看?我会帮你调染发剂的." )
	Text( 2, "调配青色染发剂",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "莉娜:如何,这个青色染发剂的颜色你很满意吧?下次可以再来找我哦." )
	Talk( 4, "莉娜:5个青色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G就能制作青色染发剂了." )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<莉娜

----------------------------------------------------------
--							--
--							--
--		沙岚城[杂货商人·艾墨]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk55 ()
	
	
	Talk( 1, "艾墨:您好,欢迎光临.本店垄断了城里所有的热门商品,您不用货比三家了." )
	Text( 1, "交易", BuyPage )
	Text( 1, "合成", OpenUnite)
	Text( 1, "没事,我随便逛逛",CloseTalk )
	Text( 1, "兑换真实面具",JumpPage, 2 )

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	Other( 886 )
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(	3288	)

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "要想得到真实面具的话就得准备精灵辉印1个，1W海盗币，还有以下任意一种3级采集产物10个哦" )
	Text( 2, "用骨头来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "用锋利牙齿来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用水晶原石来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用象牙酥木原木来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用射水暴鱼来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "艾墨:拿好哦，这可是很重要的东西呢." )
	Talk( 4, "艾墨:您好象没有足够的材料哦，也有可能您的背包已经锁定或者背包空间不够." )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·艾墨

----------------------------------------------------------
--							--
--							--
--		沙岚城[旅店老板·哈根]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk56 ()
	
	
	Talk( 1, "哈根:你好,住店吗?楼上的上好客房还有两间空的." )
	Text( 1, "制作热卖甜点", JumpPage, 2)


--------------------调配五彩琉璃汁
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "哈根:这年头卖得好就是好东西,对吧,年轻人.你看我这里连存货都没有,都是城里人抢购一空的呀." )
	Text( 2, "调配五彩琉璃汁",MultiTrigger, GetMultiTrigger(), 1)

----------------调配综合果汁
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "调配综合果汁",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "哈根:年轻人,你要的东西调好了.你可要拿好哦,这是城里最受欢迎的饮品了." )
	Talk( 4, "哈根:对不起,你没有配方上要的东西哦.五彩琉璃汁需要4个五彩果和1个彩色玻璃杯还有50G才能制作哟." )
	Talk( 5, "哈根:对不起,你没有配方上要的东西哦.综合果汁需要1个精灵果汁、1个沙枣茶、1个蘑菇汤、1个曼陀罗果汁还有1个彩色玻璃杯,另外加上50G才能制作哟." )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·哈根

----------------------------------------------------------
--							--
--							--
--		沙岚城[护士小姐·兰兰]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk57 ()
	
	
	Talk( 1, "兰兰:你好,我是护士兰兰.我现在是实习期,医术还不太高明,所以还不能替你医疗呢,不介意的话你可以去找药材商人·沙拉拉看看有没有你需要的东西,她的位置在（903,3646）" )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐·兰兰

--------------------------------------------------
--							--
--							--
--		沙岚城[海盗·德克]			--
--							--
--		794,3669				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk58 ()
	
	
	Talk( 1, "德克:嘿,我是狼人海盗团团长德克,目前在海盗赏金榜上排行老七.我不怕暴露身份,因为海军没那个本事抓我,嘿嘿." )
	

	Text( 1, "梦幻双子宫(终极12宫专用任务)", JumpPage,2 )

	Talk( 2, "海盗·德克:请选择你要闯关的难度,从水手到船长难度依次加大,当然了难度越高奖励越丰厚.你想好了吗?只能选择一次,不可以后悔哦" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------双子门票
	TriggerAction( 1, TakeItem, 3027, 1 )----------双子门票
	TriggerAction( 1, SetRecord, 1159 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "水手",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------双子门票
	TriggerAction( 1, TakeItem, 3027, 1 )----------双子门票
	TriggerAction( 1, SetRecord, 1204 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "海盗",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, HasItem, 3027, 1 )--------双子门票
	TriggerAction( 1, TakeItem, 3027, 1 )----------双子门票
	TriggerAction( 1, SetRecord, 1161 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "船长",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "海盗·德克:我祈祷你在自己选择的道路上不会一命呜呼.哇哈哈哈..." )
	Talk( 4, "海盗·德克:挑战双子宫的时候,难度只能选择一次.并确保您的背包里有双子宫门票.")
	
	AddNpcMission	(1125)

---------------------海盗·德克
	---------------双子
	AddNpcMission	(5673)
	AddNpcMission	(5674)
	AddNpcMission	(5741)-------(5675)
	AddNpcMission	(5742)
	AddNpcMission	(5677)
	AddNpcMission	(5678)

	AddNpcMission	(5679)
	AddNpcMission	(5680)
	AddNpcMission	(5681)
	AddNpcMission	(5682)
	AddNpcMission	(5683)
	AddNpcMission	(5684)
	AddNpcMission	(5685)
	AddNpcMission	(5686)
	AddNpcMission	(5687)
	AddNpcMission	(5688)
	AddNpcMission	(5689)

	AddNpcMission	(5730)
	AddNpcMission	(5731)
	AddNpcMission	(5733)
	AddNpcMission	(5734)
	AddNpcMission	(5735)
	

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海盗·德克

----------------------------------------------------------
--							--
--							--
--		沙岚城[新手指导·拉丝碧]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk59 ()
	Talk( 1, "拉丝碧:“你好,朋友.我是拉丝碧.最喜欢聊天和管闲事,有问题找我准没错.”" )
	Text( 1, "团队之星", JumpPage, 31 )
	Text( 1, "你想要了解些什么?", JumpPage, 4 )
	Text( 1, "关于职业和属性", JumpPage, 11 )
	Text( 1, "查找怪物坐标", JumpPage, 30 )

	Talk( 4, "我们沙岚城是个制造工艺非常发达的城市,所有先进的武器和船只都是在沙岚城中生产的.你不妨四处走走,以了解沙岚城的伟大." )
	Text( 4, "想去买武器", JumpPage, 5 )
	Text( 4, "想去买防具", JumpPage, 7 )
	Text( 4, "想去买道具", JumpPage, 8 )
	Text( 4, "想要出城走走", JumpPage, 9 )
	Text( 4, "身体不舒服,要去看医生", JumpPage, 10 )

	Talk( 5, "沙岚城的铁匠铜铜鼓在经营武器的买卖.他出售的武器质优价廉,去看看吧.铁匠铺的位置在沙岚城的左上角,可别迷路哦." )
	Text( 5, "继续询问其他的商家", JumpPage, 4 )
	Text( 5, "已经清楚不用再看了", CloseTalk )

--	Talk( 6, "还有什么不明白的可以继续找我哦～", CloseTalk )

	Talk( 7, "想买防具的话可以去找服装店的莫亚,他手艺好,价格又公道.莫亚的店就在这个喷泉的右下方." )
	Text( 7, "继续询问其他的商家", JumpPage, 4 )
	Text( 7, "已经清楚不用再看了", CloseTalk )

	Talk( 8, "买道具吗?道具店主欧翟离这里很近,就在喷水池的西南角.你冒险需要什么,他应该都有,去看看吧." )
	Text( 8, "继续询问其他的商家", JumpPage, 4 )
	Text( 8, "已经清楚不用再看了",  CloseTalk )

	Talk( 9, "想要出城的话,传送使美斯可以把你传送到大陆上的各个城市里去,而且她还可以帮你储存复活点哦,她现在就在右面的城门呢." )
	Text( 9, "继续询问其他的商家", JumpPage, 4 )
	Text( 9, "已经清楚不用再看了",  CloseTalk )

	Talk( 10, "哎呀,你生病了吗?医护小姐就在中央水池那里,快点让她看一看吧!" )
	Text( 10, "继续询问其他的商家", JumpPage, 4 )
	Text( 10, "已经清楚不用再看了",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "拉丝碧:作为玩家,最先要了解的就是职业与属性的相关资料,你想知道一些什么内容呢?" )
	Text( 11, "有关职业", JumpPage, 12)
	Text( 11, "有关属性", JumpPage, 13)
	--Text( 11, "有关职业", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "有关属性", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "拉丝碧:在海盗王里一共有七种初始职业,不同的角色能胜任不同的职业,你对那个职业最感兴趣呢?" )
	Text( 12, "有关剑士", JumpPage, 14 )
	Text( 12, "有关猎人", JumpPage, 15 )
--	Text( 12, "有关水手", JumpPage, 16 )
	Text( 12, "有关冒险者", JumpPage, 17 )
	Text( 12, "有关药师", JumpPage, 18 )
--	Text( 12, "有关技师", JumpPage, 19 )
--	Text( 12, "有关商人", JumpPage, 20 )

	Talk( 13, "拉丝碧:人物的属性由六个基础属性推出,影响着不同的扩展属性,玩家每升一级则获得1点属性点和1点技能点,初始新手附送5点属性给玩家任意分配." )
	Text( 13, "有关力量", JumpPage, 21 )
	Text( 13, "有关敏捷", JumpPage, 22 )
	Text( 13, "有关体质", JumpPage, 23 )
	Text( 13, "有关精神", JumpPage, 24 )
	--Text( 13, "有关幸运", JumpPage, 25 )
	Text( 13, "有关专注", JumpPage, 26 )

	Talk( 14, "拉丝碧:剑士是海盗王里物理防御最高的一个职业,新手男性玩家在Lv10以后找白银城的守卫·比特就职" )
	Text( 14, "询问其他职业", JumpPage, 12)
	Text( 14, "询问有关属性", JumpPage, 13)
	Text( 14, "已经清楚不用看了", JumpPage, 27)

	Talk( 15, "拉丝碧:猎人是海盗王里唯一的远程攻击职业,在后期转职成为狙击手以后可以使用火枪,只有蓝崎和菲利尔可以就职猎人,玩家在Lv10以后找冰狼堡的剑士·雷欧就职" )
	Text( 15, "询问其他职业", JumpPage, 12)
	Text( 15, "询问有关属性", JumpPage, 13)
	Text( 15, "已经清楚不用看了", JumpPage, 27)

	Talk( 16, "拉丝碧:水手是海上战斗最强的职业,目前内测版本未开放" )
	Text( 16, "询问其他职业", JumpPage, 12)
	Text( 16, "询问有关属性", JumpPage, 13)
	Text( 16, "已经清楚不用看了", JumpPage, 27)
	
	Talk( 17, "拉丝碧:冒险者是海上辅助最强的职业,除了卡西斯,其他人都可以担任这个职业.玩家在Lv10以后可以找白银城的小山车就职" )
	Text( 17, "询问其他职业", JumpPage, 12)
	Text( 17, "询问有关属性", JumpPage, 13)
	Text( 17, "已经清楚不用看了", JumpPage, 27)

	Talk( 18, "拉丝碧:药师是卡拉女神的虔诚信徒,他们拥有神秘的医疗能力,只有菲利尔和艾米可以就职,玩家在Lv10以后可以找沙岚城的大神官·甘地维拉就职" )
	Text( 18, "询问其他职业", JumpPage, 12)
	Text( 18, "询问有关属性", JumpPage, 13)
	Text( 18, "已经清楚不用看了", JumpPage, 27)

	Talk( 19, "拉丝碧:技师是海盗王里可以制造物品的职业,所有的公会建筑公事都是由技师建造完成的,目前内测版本未开放" )
	Text( 19, "询问其他职业", JumpPage, 12)
	Text( 19, "询问有关属性", JumpPage, 13)
	Text( 19, "已经清楚不用看了", JumpPage, 27)

	Talk( 20, "拉丝碧:商人是海盗王里拥有贸易能力的职业,商人永远都是最富有的,目前内测版本未开放" )
	Text( 20, "询问其他职业", JumpPage, 12)
	Text( 20, "询问有关属性", JumpPage, 13)
	Text( 20, "已经清楚不用看了", JumpPage, 27)

	Talk( 21, "拉丝碧:力量关乎近战攻击力" )
	Text( 21, "询问其他属性", JumpPage, 13)
	Text( 21, "询问有关职业", JumpPage, 12)
	Text( 21, "已经清楚不用看了", JumpPage, 27)

	Talk( 22, "拉丝碧:敏捷关乎攻击速度与闪避率" )
	Text( 22, "询问其他属性", JumpPage, 13)
	Text( 22, "询问有关职业", JumpPage, 12)
	Text( 22, "已经清楚不用看了", JumpPage, 27)

	Talk( 23, "拉丝碧:体质关乎HP和物理防御" )
	Text( 23, "询问其他属性", JumpPage, 13)
	Text( 23, "询问有关职业", JumpPage, 12)
	Text( 23, "已经清楚不用看了", JumpPage, 27)

	Talk( 24, "拉丝碧:精神关于SP值与技能施展效果" )
	Text( 24, "询问其他属性", JumpPage, 13)
	Text( 24, "询问有关职业", JumpPage, 12)
	Text( 24, "已经清楚不用看了", JumpPage, 27)

	Talk( 25, "拉丝碧:幸运关乎会心一击概率和合成成功概率" )
	Text( 25, "询问其他属性", JumpPage, 13)
	Text( 25, "询问有关职业", JumpPage, 12)
	Text( 25, "已经清楚不用看了", JumpPage, 27)

	Talk( 26, "拉丝碧:专注关乎命中率和远程攻击力" )
	Text( 26, "询问其他属性", JumpPage, 13)
	Text( 26, "询问有关职业", JumpPage, 12)
	Text( 26, "已经清楚不用看了", JumpPage, 27)

	Talk( 27, "拉丝碧:好吧,以后有什么不明白的地方就来找我吧!")

	Talk( 28, "拉丝碧:很好,你已经掌握了一些基本的战斗与收集道具的方法了,我已经没有什么好教你的了.我有两个好朋友可以推荐你去找他们,有一个家伙叫迈克,他是沙岚城的巡逻兵,如果你也跟他一样喜欢战斗的话就去找找他吧,他在（958,3549）位置,从沙岚城右边出去笔直走,就可以看到他了.另一位是我们沙岚城有名的药材商人·沙拉拉,他最喜欢收集一些花花草草的东西了,最近好像又在找人帮忙收集药材什么的,如果你感兴趣的话就去（903,3646）找他.祝你好运!" )
	Text( 28, "你想要了解些什么?", JumpPage, 4 )
	Text( 28, "关于职业和属性", JumpPage, 11 )
	Text( 28, "已经清楚不用再看了",  CloseTalk)

	Talk( 29, "拉丝碧:很好,现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,而猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）.由于白银城和冰狼堡路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )
	Text( 29, "你想要了解些什么?", JumpPage, 4 )
	Text( 29, "关于职业和属性", JumpPage, 11 )
	Text( 29, "已经清楚不用再看了",  CloseTalk )

	Talk( 30, "拉丝碧:在游戏里查找怪物坐标其实是一件很简单的,在白银城的酒吧里有个叫酒鬼（坐标:加纳大陆2222,2889）的人,找到他就可以查询所有怪物的位置.”" )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "拉丝碧:团队之星是海外流传过来的一种非常是神奇的首饰,当你装备它的时候,如果能激发团队的力量,将会出现意想不到的事情哦,现在为了打开市场,联合贸易公司特举办万人免费试用活动,不为赚钱,只为打开市场,条件是41级以下的人每人限领一个,同时举办“旧货换新颜活动”允许大家用使用过的团队之星来换取合适的装备.你有兴趣吗?" )
	Text( 31, "领取团队之星",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "旧貌换新颜",JumpPage, 32 )

	Talk( 32, "感谢您使用联合贸易公司的产品,如果您有使用过的“团队之星”,将可以在我这里换领到50级的职业武器一把哦,很诱人对吧")
	Text( 32, "换领职业武器", Transfer_TeamStar, 1)

	Talk( 6, "拉丝碧:对不起,您不具备领取资格" )
	
	--InitTrigger()
	---------------------玩家超过6级完成过瑟安的战斗训练任务
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 711 )
	AddNpcMission ( 712 )
	AddNpcMission ( 714 )
	AddNpcMission ( 716 )
	AddNpcMission ( 718 )
	AddNpcMission ( 202 )
	AddNpcMission 	(414)
	AddNpcMission 	(83)
	AddNpcMission 	(84)
	AddNpcMission 	(94)
	AddNpcMission 	(161)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)

	MisListPage(28)
	MisListPage(29)
----------------------------------------------08鼠年新春活动kokora---------------------------------------
--	AddNpcMission 	(6211)
--	AddNpcMission 	(6212)
--	AddNpcMission 	(6213)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<新手指导·拉丝碧


----------------------------------------------------------
--							--
--							--
--		沙岚城[海军办事处官员·艾微尔少校]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk61 ()
	
	
	Talk( 1, "艾微尔少校:你好,我是艾微尔,雷霆堡驻沙岚城的第一任女外交官." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军办事处官员·艾微尔少校

----------------------------------------------------------
--							--
--							--
--		沙岚城[沙岚城商会会长·古利击]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk62 ()
	
	
	Talk( 1, "古利击:稀奇古怪是我最爱,低买高卖是我本能,出卖朋友是我专长,黑道白道我两手抓.嘿嘿,我就是全城商人的老大,你找我有什么事吗?" )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	AddNpcMission	(1144)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚城商会会长·古利击

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·珊瑚虫]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk63 ()
	
	
	Talk( 1, "珊瑚虫:小山车这人的话你最好连标点都不要信,我就是怕了他才搬到沙岚城的." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2999, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2999, 99 )
	TriggerAction( 1, GiveItem, 3000, 1 , 4)
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "99个金属碎片兑换1个宝藏密钥", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 1 )
	TriggerAction( 1, GiveItem, 3017, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "1个宝藏密钥兑换1个天使宝藏", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 8 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 8 )
	TriggerAction( 1, GiveItem, 3018, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "8个宝藏密钥兑换1个黄金圣斗士宝藏", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 18 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 18 )
	TriggerAction( 1, GiveItem, 3019, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "18个宝藏密钥兑换1个神龙宝藏", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 88 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 88 )
	TriggerAction( 1, GiveItem, 3020, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "88个宝藏密钥兑换1个极速宝藏", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 198 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 198 )
	TriggerAction( 1, GiveItem, 3021, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "198个宝藏密钥兑换1个恶魔宝藏", MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "下一页", JumpPage, 5)

	Talk( 5, "珊瑚虫:小山车这人的话你最好连标点都不要信,我就是怕了他才搬到沙岚城的." )

	Text( 5, "上一页", JumpPage, 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 498 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 498 )
	TriggerAction( 1, GiveItem, 3022, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "498个宝藏密钥兑换1个死神宝藏", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 3888 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 3888 )
	TriggerAction( 1, GiveItem, 3023, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "3888个宝藏密钥兑换1个年兽宝藏", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "这可是传说中能带来无数财富的钥匙啊，这次兑换真是便宜你了。")
	Talk( 3, "换到你想要的宝箱了吗？祝你好运开出好东东哦。")
	Talk( 4, "您没有足够的兑换所需要的道具，也有可能您的背包已经锁定或者背包空间不够." )

	AddNpcMission ( 6028 )
	AddNpcMission ( 6029 )
	AddNpcMission ( 6054 )
	AddNpcMission ( 6055 )

end 


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·珊瑚虫

----------------------------------------------------------
--							--
--							--
--		沙岚城[小羊·威利]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk64 ()
	
	
	Talk( 1, "小羊威利:咩～～我是一只会说话的羊." )

	AddNpcMission ( 233 )
	---------------白羊
	AddNpcMission	(5565)
	AddNpcMission	(5566)

		----------------秋岛开发
	--AddNpcMission	(6184)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<小羊·威利

----------------------------------------------------------
--							--
--							--
--		沙岚城[会长助理·提司面包]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk65 ()
	
	
	Talk( 1, "提司面包:我们会长多说少做,挣钱多;见风使舵,笑里藏刀.哪比我这般踏实肯干." )
	AddNpcMission ( 905 )
	----------------周岁包
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<会长助理·提司面包

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·乙]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk66 ()
	
	
	Talk( 1, "路人乙:圣女艾达住在旧沙岚神殿里,她是许多信徒的精神寄托." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·乙

----------------------------------------------------------
--							--
--							--
--		沙岚城[沙匪·闪光侠八世]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk67 ()
	
	
	Talk( 1, "闪光侠八世:呀呵!我就是人称玉树临风赛潘安,富可敌国比盖茨的沙漠闪光侠亨利八世!（←自称的.可信度待考）" )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙匪·闪光侠八世


----------------------------------------------------------
--							--
--							--
--		沙岚城[人鱼王子·哈沙特]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk68 ()
	
	
	Talk( 1, "哈沙特:那天我在人间闻到的熏香到底是取自何物呢?其清凛之香竟然纠缠了我十昼夜,令我至今难以忘怀.若有幸得到这种熏香,我将为它取名梦十夜,供奉在海底神殿." )
	Text( 1, "合成", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "哈沙特:水晶砂的碎片密度太低,价值也没那么高,要我帮你把它们合成水晶砂结晶吗?" )
	Text( 2, "合成水晶沙结晶", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "哈沙特:这就是水晶砂的结晶,很漂亮吧.下次再要提炼还可以来找哦." )
	Talk( 4, "哈沙特:10个水晶碎片加上2000G,水晶沙结晶就是你的了." )

	--------------奥运活动 之 仁爱之心2
	AddNpcMission	(6258)
	AddNpcMission	(6259)
	-------------eleven
	AddNpcMission ( 5010)
	AddNpcMission ( 5014)
	AddNpcMission ( 5033)
	AddNpcMission ( 5034)
	---------------白羊
	AddNpcMission	(5553)
	AddNpcMission	(5554)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<人鱼王子·哈沙特


----------------------------------------------------------
--							--
--							--
--		沙岚城[乐器专家·沙梅洱]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk69 ()
	
	
	Talk( 1, "沙梅洱:你好,我是乐师沙梅洱,为收集各地乐谱而流浪至此." )
---------------白羊
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<乐器专家·沙梅洱


----------------------------------------------------------
--							--
--							--
--		沙岚城[圣女·艾达]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk70 ()
	
	
	Talk( 1, "艾达:你好,远道而来的朋友,愿女神卡拉降福于你.我是沙岚城的圣女艾达." )

	AddNpcMission ( 756 )
	AddNpcMission ( 341 )
	AddNpcMission ( 356 )
	AddNpcMission ( 357 )
	AddNpcMission ( 521 )
	AddNpcMission ( 539 )
	AddNpcMission ( 540 )
	AddNpcMission ( 541 )
	AddNpcMission ( 552 )
	AddNpcMission ( 553 )
	AddNpcMission ( 556 )
-----------------圣女·艾达---------金牛
	AddNpcMission	(5627)
	AddNpcMission	(5628)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<圣女·艾达

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·法利尔]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk71 ()
	
	
	Talk( 1, "法利尔:你知道吗?仙人掌也是会开花的!据说它们耗尽一生开出来的花奇香无比,真想闻一下." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·法利尔

----------------------------------------------------------
--							--
--							--
--		沙岚城[工会会长·佛瑞]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk72 ()
	
	Talk( 1, "佛瑞:团结就是力量,力量需要团结!想挑战最强的三大公会么?想成为这个世界上的霸主么?来挑战吧,公会的会长可以在这里申请对任意三大公会挑战,如果获胜那么您的公会将取代他成为三大公会之一" )
	Text( 1, "查看三大公会", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<工会会长·佛瑞

----------------------------------------------------------
--							--
--							--
--		冰狼堡[铁匠·暴冰]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk73 ()
	
	
	Talk( 1, "暴冰:欢迎欢迎.这里出售武器防具,保证货真价实." )
	Text( 1, "交易", BuyPage )
	Text( 1, "修理", OpenRepair)
	Text( 1, "关于精炼", JumpPage, 2)
	Text( 1, "关于合成", JumpPage, 3)
	Text( 1, "没事,我随便逛逛",CloseTalk )

	Talk( 2, "暴冰:精炼?那种技术只有沙岚城的铁匠才会." )

	Talk( 3, "暴冰:你想合成物品么?据我所知合成物品需要有一张相对应的合成公式卷轴,卷轴上面记载了所有合成所需要的材料,你可以找沙岚城的杂货商人·艾墨,他是这个世界上唯一会合成的人,我知道的就只有这些了." )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)



	AddNpcMission	(6251)
	AddNpcMission	(6252)
	AddNpcMission	(6253)
	AddNpcMission ( 723 )
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission(	1233	)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·暴冰

----------------------------------------------------------
--							--
--							--
--		冰狼堡[杂货商人·伯鲁]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk74 ()
	Talk( 1, "伯鲁:你好,朋友.我是冰狼堡的杂货商人.我喜欢收集一些东西,你在10级以后可以到我这里来领收集任务哦,我会高价收取的.有什么能为你效劳吗?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	Text( 1, "兑换真实面具",JumpPage, 2 )

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(	3288	)


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "要想得到真实面具的话就得准备精灵辉印1个，1W海盗币，还有以下任意一种3级采集产物10个哦" )
	Text( 2, "用骨头来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "用锋利牙齿来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用水晶原石来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用象牙酥木原木来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "用射水暴鱼来交换真实面具", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "伯鲁:拿好哦，这可是很重要的东西呢." )
	Talk( 4, "伯鲁:您好象没有足够的材料哦，也有可能您的背包已经锁定或者背包空间不够." )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·伯鲁

----------------------------------------------------------
--							--
--							--
--		冰狼堡[药店老板·达赫]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk75 ()
	
	
	Talk( 1, "达赫:你好,朋友.过来瞧瞧吧,全冰狼堡最好的草药都在我这里了." )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	
	Talk( 2, "达赫:很好,你已经修炼到Lv9了,10级就可以就职了.现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,而猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）.由于白银城和沙岚城路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )
	Text( 2, "交易", BuyPage )
	Text( 2, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)

	---------------------玩家超过9级
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 727 )
	--AddNpcMission ( 735 )
	--AddNpcMission ( 746 )
	--AddNpcMission ( 747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<药店老板·达赫


----------------------------------------------------------
--							--
--							--
--		冰狼堡[护士小姐·安妮]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk76 ()
	
	
	Talk( 1, "安妮:嗨,我是护士安妮.现在实习中,暂时还无法给你治疗哦." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐·安妮

----------------------------------------------------------
--							--
--							--
--		冰狼堡[新手指导·安琪露亚]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk77 ()
	
	
        Talk( 1, "安琪露亚:“嗨,朋友都叫我安琪.我会教你如何适应冰狼堡的生活,享受冰天雪地里探险的乐趣.”" )
	Text( 1, "团队之星", JumpPage, 31 )
	Text( 1, "你想要了解些什么?", JumpPage, 4 )
	Text( 1, "关于职业和属性", JumpPage, 11 )
	Text( 1, "关于查找怪物坐标", JumpPage, 30 )
	Text( 1, "已经清楚不用再看了", CloseTalk )
--	Text( 1, "已经清楚不用再看了", CloseTalk )


	Talk( 4, "正如你所见,冰狼堡是个被冰雪覆盖的城市.要想在这里舒舒服服地过日子,就得先知道如何购买日用品和防护品." )
	Text( 4, "关于武器售卖", JumpPage, 5 )
	Text( 4, "关于防具售卖", JumpPage, 7 )
	Text( 4, "关于道具售卖", JumpPage, 8 )
	Text( 4, "关于传送使者", JumpPage, 9 )
	Text( 4, "关于医疗问题", JumpPage, 10 )

	Talk( 5, "你离开喷泉往南走,之后右拐,就能看见铁匠铺了,那里经营各种武器的售卖.在这冰天雪地的地方你可得找个合适的兵器防身." )
	Text( 5, "继续询问其他的商家", JumpPage, 4 )
	Text( 5, "已经清楚不用再看了", CloseTalk )

--	Talk( 6, "还有什么不明白的可以继续找我哦～", CloseTalk )

	Talk( 7, "买防具的地方离铁匠铺可近了.你往南走然后右拐就到了.服装店老板是个好人,肯定会给你挑几件漂亮防具的." )
	Text( 7, "继续询问其他的商家", JumpPage, 4 )
	Text( 7, "已经清楚不用再看了", CloseTalk )

	Talk( 8, "买道具吗?杂货店离这里不远,就开在冰狼堡的左上角.你冒险需要什么,那里应该都有,去看看吧." )
	Text( 8, "继续询问其他的商家", JumpPage, 4 )
	Text( 8, "已经清楚不用再看了", CloseTalk )

	Talk( 9, "你沿着我面前这条路笔直走,就能看见城门口那位漂亮的小姐了.她是传送使,能把你传送到大陆的各个城市去,而且她还可以帮你储存复活点哦." )
	Text( 9, "继续询问其他的商家", JumpPage, 4 )
	Text( 9, "已经清楚不用再看了", CloseTalk )

	Talk( 10, "医护小姐就是喷泉另一边的那位小姐.你可要记住她哦,以后生病受伤都可以找她." )
	Text( 10, "继续询问其他的商家", JumpPage, 4 )
	Text( 10, "已经清楚不用再看了", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "安琪露亚:作为新手玩家,最先要了解的就是职业与属性的相关资料,你想知道一些什么内容呢?" )
	Text( 11, "有关职业", JumpPage, 12)
	Text( 11, "有关属性", JumpPage, 13)

	--Text( 11, "有关职业", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "有关属性", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "安琪露亚:在海盗王里一共有七种初始职业,不同的角色能胜任不同的职业,你对那个职业最感兴趣呢?" )
	Text( 12, "有关剑士", JumpPage, 14 )
	Text( 12, "有关猎人", JumpPage, 15 )
--	Text( 12, "有关水手", JumpPage, 16 )
	Text( 12, "有关冒险者", JumpPage, 17 )
	Text( 12, "有关药师", JumpPage, 18 )
--	Text( 12, "有关技师", JumpPage, 19 )
--	Text( 12, "有关商人", JumpPage, 20 )
	Text( 12, "了解啦,想看看其他的.", JumpPage, 11 )

	Talk( 13, "安琪露亚:人物的属性由六个基础属性推出,影响着不同的扩展属性,玩家每升一级则获得1点属性点和1点技能点,初始新手附送5点属性给玩家任意分配." )
	Text( 13, "有关力量", JumpPage, 21 )
	Text( 13, "有关敏捷", JumpPage, 22 )
	Text( 13, "有关体质", JumpPage, 23 )
	Text( 13, "有关精神", JumpPage, 24 )
	--Text( 13, "有关幸运", JumpPage, 25 )
	Text( 13, "有关专注", JumpPage, 26 )
	Text( 13, "了解啦,想看看其他的.", JumpPage, 11 )

	Talk( 14, "安琪露亚:剑士是海盗王里物理防御最高的一个职业,新手男性玩家在Lv10以后找白银城的守卫·比特就职" )
	Text( 14, "询问其他职业", JumpPage, 12)
	Text( 14, "询问有关属性", JumpPage, 13)
	Text( 14, "已经清楚不用看了", JumpPage, 27)

	Talk( 15, "安琪露亚:猎人是海盗王里唯一的远程攻击职业,在后期转职成为狙击手以后可以使用火枪,只有蓝崎和菲利尔可以就职猎人,玩家在Lv10以后找冰狼堡的剑士·雷欧就职" )
	Text( 15, "询问其他职业", JumpPage, 12)
	Text( 15, "询问有关属性", JumpPage, 13)
	Text( 15, "已经清楚不用看了", JumpPage, 27)

	Talk( 16, "安琪露亚:水手是海上战斗最强的职业,目前内测版本未开放" )
	Text( 16, "询问其他职业", JumpPage, 12)
	Text( 16, "询问有关属性", JumpPage, 13)
	Text( 16, "已经清楚不用看了", JumpPage, 27)
	
	Talk( 17, "安琪露亚:冒险者是海上辅助最强的职业,除了卡西斯,其他人都可以担任这个职业.玩家在Lv10以后可以找白银城的小山车就职" )
	Text( 17, "询问其他职业", JumpPage, 12)
	Text( 17, "询问有关属性", JumpPage, 13)
	Text( 17, "已经清楚不用看了", JumpPage, 27)

	Talk( 18, "安琪露亚:药师是卡拉女神的虔诚信徒,他们拥有神秘的医疗能力,只有菲利尔和艾米可以就职,玩家在Lv10以后可以找沙岚城的大神官·甘地维拉就职" )
	Text( 18, "询问其他职业", JumpPage, 12)
	Text( 18, "询问有关属性", JumpPage, 13)
	Text( 18, "已经清楚不用看了", JumpPage, 27)

	Talk( 19, "安琪露亚:技师是海盗王里可以制造物品的职业,所有的公会建筑公事都是由技师建造完成的,目前内测版本未开放" )
	Text( 19, "询问其他职业", JumpPage, 12)
	Text( 19, "询问有关属性", JumpPage, 13)
	Text( 19, "已经清楚不用看了", JumpPage, 27)

	Talk( 20, "安琪露亚:商人是海盗王里拥有贸易能力的职业,商人永远都是最富有的,目前内测版本未开放" )
	Text( 20, "询问其他职业", JumpPage, 12)
	Text( 20, "询问有关属性", JumpPage, 13)
	Text( 20, "已经清楚不用看了", JumpPage, 27)

	Talk( 21, "安琪露亚:力量关乎近战攻击力" )
	Text( 21, "询问其他属性", JumpPage, 13)
	Text( 21, "询问有关职业", JumpPage, 12)
	Text( 21, "已经清楚不用看了", JumpPage, 27)

	Talk( 22, "安琪露亚:敏捷关乎攻击速度与闪避率" )
	Text( 22, "询问其他属性", JumpPage, 13)
	Text( 22, "询问有关职业", JumpPage, 12)
	Text( 22, "已经清楚不用看了", JumpPage, 27)

	Talk( 23, "安琪露亚:体质关乎HP和物理防御" )
	Text( 23, "询问其他属性", JumpPage, 13)
	Text( 23, "询问有关职业", JumpPage, 12)
	Text( 23, "已经清楚不用看了", JumpPage, 27)

	Talk( 24, "安琪露亚:精神关于SP值与技能施展效果" )
	Text( 24, "询问其他属性", JumpPage, 13)
	Text( 24, "询问有关职业", JumpPage, 12)
	Text( 24, "已经清楚不用看了", JumpPage, 27)

	Talk( 25, "安琪露亚:幸运关乎会心一击概率和合成成功概率" )
	Text( 25, "询问其他属性", JumpPage, 13)
	Text( 25, "询问有关职业", JumpPage, 12)
	Text( 25, "已经清楚不用看了", JumpPage, 27)

	Talk( 26, "安琪露亚:专注关乎命中率和远程攻击力" )
	Text( 26, "询问其他属性", JumpPage, 13)
	Text( 26, "询问有关职业", JumpPage, 12)
	Text( 26, "已经清楚不用看了", JumpPage, 27)

	Talk( 27, "安琪露亚:好吧,以后有什么不明白的地方就来找我吧!")

	Talk( 28, "安琪露亚:很好,你已经掌握了一些基本的战斗与收集道具的方法了,我已经没有什么好教你的了.我有两个好朋友可以推荐你去找他们,有一个家伙叫小莫,他是冰狼堡的巡逻兵,如果你也跟他一样喜欢战斗的话就去找找他吧,他在（1237,613）位置,从冰狼堡大门往下走出去,就可以看到他了.另一位是我们冰狼堡有名的药店老板·达赫,他最喜欢收集一些花花草草的东西了,最近好像又在找人帮忙收集药材什么的,如果你感兴趣的话就去（1352,499）找他.祝你好运!" )
	Text( 28, "你想要了解些什么?", JumpPage, 4 )
	Text( 28, "关于职业和属性", JumpPage, 11 )
	Text( 28, "已经清楚不用再看了",  CloseTalk )

	Talk( 29, "安琪露亚:很好,现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,而猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）.由于白银城和沙岚城路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )
	Text( 29, "你想要了解些什么?", JumpPage, 4 )
	Text( 29, "关于职业和属性", JumpPage, 11 )
	Text( 29, "已经清楚不用再看了",  CloseTalk)

	Talk( 30, "安琪露亚:在游戏里查找怪物坐标其实是一件很简单的,在白银城的酒吧里有个叫酒鬼（坐标:加纳大陆2222,2889）的人,找到他就可以查询所有怪物的位置.”" )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "安琪露亚:团队之星是海外流传过来的一种非常是神奇的首饰,当你装备它的时候,如果能激发团队的力量,将会出现意想不到的事情哦,现在为了打开市场,联合贸易公司特举办万人免费试用活动,不为赚钱,只为打开市场,条件是41级以下的人每人限领一个,同时举办“旧货换新颜活动”允许大家用使用过的团队之星来换取合适的装备.你有兴趣吗?" )
	Text( 31, "领取团队之星",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "旧貌换新颜",JumpPage, 32 )

	Talk( 32, "感谢您使用联合贸易公司的产品,如果您有使用过的“团队之星”,将可以在我这里换领到50级的职业武器一把哦,很诱人对吧")
	Text( 32, "换领职业武器", Transfer_TeamStar, 1)

	Talk( 6, "安琪露亚:对不起,您不具备领取资格" )

	--InitTrigger()
	---------------------玩家超过6级完成过瑟安的战斗训练任务
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission ( 721 )
	AddNpcMission ( 722 )
	AddNpcMission ( 724 )
	AddNpcMission ( 726 )
	AddNpcMission ( 728 )
	AddNpcMission ( 201 )
	AddNpcMission 	(406)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(162)
	AddNpcMission 	(163)
	AddNpcMission 	(173)
	AddNpcMission 	(190)


	MisListPage(28)
	MisListPage(29)
----------------------------------------------08鼠年新春活动kokora---------------------------------------
--	AddNpcMission 	(6208)
--	AddNpcMission 	(6209)
--	AddNpcMission 	(6210)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<新手指导·安琪露亚


----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡剑士·雷欧]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk78 ()
	
	-------------------转职双剑
	Talk( 1, "雷欧:我是这里的赏金猎人,最喜欢到不死怪物出没的地方去狩猎.你要是有兴趣,我随时可以告诉你几个好去处." )

		----------------转职成为猎人
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3955, 1 )
	TriggerAction( 1, TakeItem, 3955, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3187, 1 , 4)
	TriggerAction( 1, GiveItem, 25, 1 , 4)
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 7 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3955, 1 )
	TriggerAction( 2, TakeItem, 3955, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3187, 1 , 4)
	TriggerAction( 2, GiveItem, 25, 1, 4)
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "嗨,朋友,你的反应能力挺不错,很适合做个猎人嘛.这样吧,你就转职做猎人吧,我保证你会过得比现在舒服.")
	Text(2, "好的,转职成为猎人", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "不,我觉得现在这样挺好的.", CloseTalk)

	Talk(3, "我已经把做猎人的基知识都告诉你了.要成为一名出色的猎人还要看你日后的修行了.")

	Talk(4, "想要就职猎人吗?只有等级8以上的少年和少女,持有猎人手册,给1000G登记费才可以,壮汉和小女孩是不适合这个职业的.")

	----------------转职成为狙击手
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, SetProfession, 12  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "现在的狙击手真是太不象话了,只要能赚钱,什么人都敢杀.朋友,其实我觉得你条件不错,人品也好,要不要考虑当个狙击手,纠正这种不良的风气?")
	Text(5, "好的,转职成为狙击手", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "不,我觉得现在这样挺好的.", CloseTalk)

	Talk(6, "狙击手不是杀手,它也有它的职业尊严.你当了狙击手之后可不要忘记这一点.")

	Talk(7, "想要转职狙击手吗?等到了40级再来吧,来之前先把猎人的技能炼好,另外记得带上1个透明水晶作为你历练的成绩.转职费用是15000G.")

	--InitTrigger()

-------------------转猎人判断
	--TriggerCondition( 1, LvCheck, ">", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------狙击手

	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 1 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	--TriggerCondition( 4, LvCheck, ">", 39 )
	--TriggerCondition( 4, IsCategory, 3 )
	--TriggerCondition( 4, PfEqual, 2 )
	--TriggerAction( 4, JumpPage, 5 )
	--TriggerFailure( 4, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )
	
	--AddNpcMission ( 729 )
	AddNpcMission ( 101 )
	AddNpcMission ( 251 )
	AddNpcMission ( 252 )
	AddNpcMission ( 260 )
	AddNpcMission ( 261 )
	AddNpcMission 	(410)
	AddNpcMission 	(757)
	AddNpcMission 	(167)
	AddNpcMission 	(168)
	AddNpcMission 	(169)
	AddNpcMission 	(174)
	AddNpcMission 	(175)
	AddNpcMission 	(176)
	AddNpcMission 	(180)
	AddNpcMission 	(523)
	AddNpcMission(	1237	)
-------------eleven
	AddNpcMission(	5057	)
	AddNpcMission(	5061	)	
	AddNpcMission(	5069	)
----------1.7
	AddNpcMission(	5168	)
	AddNpcMission(	5090	)
	AddNpcMission (5097 )
	AddNpcMission (5098 )
	AddNpcMission (5099 )
	AddNpcMission (5100 )
	AddNpcMission (5111 )

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<冰狼堡剑士·雷欧

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡商会会长·艾立克]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk79 ()
	
	
	Talk( 1, "艾立克:哪里有商机哪里就有我.你好,朋友,我就是冰狼堡的商会会长,也是冰狼堡最富有的人." )
	Text( 1, "调配热卖回复药剂", JumpPage, 5)

	--------------------炮制提神剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "艾立克:药商那里的药都是小儿科,真正的妙手回春药只有我冰狼堡的商会会长才有哦." )
	Text( 5, "炮制提神剂",MultiTrigger, GetMultiTrigger(), 1)

	----------------合成魔幻药水
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "合成魔幻药水",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "艾立克:让你久等了,这是你要的东西,疗效奇佳." )
	Talk( 7, "艾立克:我这里确实有提神剂,但是你得用神秘果2个、提马拉果子2个和1个药瓶子还有200G来跟我换." )
	Talk( 8, "艾立克:我这里确实有魔幻药水,但是你得用甘草药水1个、醒神花茶1个、秘制奇异膏1个、冰芽酥1个还有1个药瓶子再加上还有200G来跟我换." )

	AddNpcMission 	(459)
	AddNpcMission 	(465)
	AddNpcMission 	(699)
	AddNpcMission 	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission ( 5084	)
	AddNpcMission ( 5085	)
	AddNpcMission ( 5086	)
	AddNpcMission ( 5087	)
	AddNpcMission (5143 )
	AddNpcMission (5144 )
	AddNpcMission (5145 )
	AddNpcMission (5146 )
	AddNpcMission (5151 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<商会会长·艾立克

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡贵族·马尔修斯]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk80 ()
	
	
	Talk( 1, "马尔修斯:我的家族史和冰狼堡的历史一样长,我的荣誉也有如冰狼堡的冰雕一样璀璨夺目." )
	Text( 1, "有关海盗团的传说",JumpPage, 2 )
	Text( 1, "没事,我随便逛逛",CloseTalk )


	Talk( 2, "马尔修斯:嘿嘿嘿嘿……海盗团?你想创建海盗团?那要看看你有没有这个能力噢." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "创建海盗团", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "马尔修斯:想做海盗头目不是那么容易的,带上100000G的海盗经费,拥有誓言之石的人才能成为一名真正的海盗" )


	AddNpcMission ( 253 )
	AddNpcMission ( 254 )
	AddNpcMission (	453 )
	AddNpcMission 	(698)
	AddNpcMission 	(801)
	AddNpcMission	(1004)
	AddNpcMission	(1059)
	AddNpcMission	(1114)
	AddNpcMission	(1168)
	AddNpcMission	(317)
	AddNpcMission	(321)
	AddNpcMission	(322)
-----------eleven
	AddNpcMission	(5045)
	AddNpcMission	(5046)
	AddNpcMission	(5047)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<冰狼堡贵族·马尔修斯

----------------------------------------------------------
--							--
--							--
--		冰狼堡[银行出纳·布丽娜]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk81 ()
	
	
	Talk( 1, "布丽娜:欢迎光临冰狼堡银行.您好,我是银行出纳布丽娜." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "银行（每次200G）", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "对不起,您的现金不够,无法支付使用银行的费用." )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)
	AddNpcMission ( 6093 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·布丽娜

-----------------------------------------------------------
--							--
--							--
--		冰狼堡[酒吧服务员·芭芭拉]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk82 ()
	
	
	Talk( 1, "芭芭拉:你好,朋友.有什么好玩的冒险经历吗?讲的有趣,我可以请你喝一杯哟." )

	Text( 1, "血溅金牛宫(终极12宫专用任务)", JumpPage,9 )
--	Text( 1, "水手过关奖励", JumpPage,11 )
--	Text( 1, "海盗过关奖励", JumpPage,12 )
--	Text( 1, "船长过关奖励", JumpPage,13 )
	Text( 1, "调制染发剂", JumpPage, 2)
	Text( 1, "制作甜点", JumpPage, 6)


	Talk( 9, "芭芭拉:请选择你要闯关的难度,从水手到船长难度依次加大,当然了难度越高奖励越丰厚.你想好了吗?只能选择一次,不可以后悔哦" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------金牛门票
	TriggerAction( 1, TakeItem, 2943, 1 )----------金牛门票
	TriggerAction( 1, SetRecord, 1111 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "水手",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------金牛门票
	TriggerAction( 1, TakeItem, 2943, 1 )----------金牛门票
	TriggerAction( 1, SetRecord, 1112 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "海盗",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------金牛门票
	TriggerAction( 1, TakeItem, 2943, 1 )----------金牛门票
	TriggerAction( 1, SetRecord, 1113 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "船长",MultiTrigger, GetMultiTrigger(), 1)

	Talk(10, "芭芭拉:我看好你哟!!" )
	Talk( 13, "芭芭拉:挑战金牛宫的时候,难度只能选择一次哦.请确保您的背包里有金牛宫门票.")

--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1111 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--	TriggerAction( 1, SetLog  , 0 )-------------??????
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 10 , 4)
--	TriggerAction( 1, AddMoney, 100000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "芭芭拉:集齐7枚勋章就可以在我这里兑换到白羊宫守印和下一宫的门票了.还有很多奖励哦" )
--	Text( 11, "确定兑换",MultiTrigger_1, GetMultiTrigger(), 1)--------------------?????????
--
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1112 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 20 , 4)
--	TriggerAction( 1, AddMoney, 200000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "芭芭拉:集齐7枚勋章就可以在我这里兑换到金牛宫守印和双子宫的门票了.还有很多奖励哦" )
--	Text( 11, "确定兑换",MultiTrigger, GetMultiTrigger(), 1)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1113 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 30 , 4)
--	TriggerAction( 1, AddMoney, 300000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 12, "芭芭拉:集齐7枚金牛勋章就可以在我这里兑换到金牛宫守印和双子宫的门票了.还有很多奖励哦" )
--	Text( 12, "确定兑换",MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk( 16, "芭芭拉:您身上似乎没有足够的勋章啊!请检查您的背包是否已锁定,而且要保证留有3个空格!还有你确定你当时选择的难度是这个吗?")
--	Talk( 15, "芭芭拉:下一宫是双子宫哦,再接再厉!")


-----------调配蓝色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "芭芭拉:你好,朋友.有什么好玩的冒险经历吗?讲得有趣,我可以请你喝一杯哟." )
	Text( 2, "调配蓝色染发剂", MultiTrigger, GetMultiTrigger(), 1)
-------------------------调配紫色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "调配紫色染发剂", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "芭芭拉:我调得染发剂让你心动了吧!快收好,下次想要再来找我哦." )
	Talk( 4, "芭芭拉:5个蓝色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G就能做蓝色染发剂,这个秘密我只告诉你哟." )
	Talk( 5, "芭芭拉:5个紫色染料、1个特效气体和1个彩色玻璃杯再加上手续费200G就能做紫色染发剂,这个秘密我只告诉你哟." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "芭芭拉:我是冰狼堡唯一会制作精灵果汁的人,你想来一杯么?" )
	Text( 6, "现榨精灵果汁", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "芭芭拉:这是用你的精灵果现榨的精灵果汁,一点没偷工减料,请收好." )

	Talk( 8, "芭芭拉:对不起,你没有配方上要的东西哦.精灵果汁需要10个精灵果和1个玻璃杯才能制作哟." )
	AddNpcMission	(1078)
	AddNpcMission	(389)
---------------------芭芭拉
	---------------金牛
	AddNpcMission	(5608)
	AddNpcMission	(5609)
	AddNpcMission	(5610)
	AddNpcMission	(5611)
	AddNpcMission	(5612)
	AddNpcMission	(5613)

	AddNpcMission	(5614)
	AddNpcMission	(5615)
	AddNpcMission	(5616)
	AddNpcMission	(5617)
	AddNpcMission	(5618)
	AddNpcMission	(5619)
	AddNpcMission	(5620)
	AddNpcMission	(5621)
	AddNpcMission	(5622)
	AddNpcMission	(5623)
	AddNpcMission	(5624)

	AddNpcMission	(5667)
	--AddNpcMission	(5668)

	AddNpcMission	(5670)
	AddNpcMission	(5671)
	AddNpcMission	(5672)
--	AddNpcMission	(5673)
	AddNpcMission	(5675)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧服务员·芭芭拉

----------------------------------------------------------
--							--
--							--
--		冰狼堡[服装店主·翰娜]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk83 ()
	
	
	Talk( 1, "翰娜:你好,欢迎光临冰狼堡时装店,时尚潮流随你挑选." )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)




	AddNpcMission ( 725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·翰娜

----------------------------------------------------------
--							--
--							--
--		冰狼堡[旅店老板·约瑟夫]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk84 ()
	
	
	Talk( 1, "约瑟夫:欢迎光临冰狼堡的渔船旅店,我是老板约瑟夫." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)
	---------------秋岛开发
	--AddNpcMission	(6179)
	--AddNpcMission	(6180)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·约瑟夫

----------------------------------------------------------
--							--
--							--
--		冰狼堡[路人·丁]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk85 ()
	
	
	Talk( 1, "丁:你见过我的三个哥哥吗?他们分别居住在沙岚城、白银城和雷霆堡." )
	Text( 1, "炼造", JumpPage, 2)
-------------------炼造地金矿石
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2, "丁:我不是一个普通的路人,我现在就证明给你看,我对这个游戏多么重要!没有我你就不能合成,哈哈." )
	Text( 2, "炼造地金矿石", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "丁:嘿,你这个人真爽快,这个小块地金矿石是你的了." )
	Talk( 4, "丁:我这里有办法炼造小块地金矿石,能给我10个地金矿石碎片和200G它就是你的了." )

	AddNpcMission ( 6015 )
	AddNpcMission ( 6016 )
	AddNpcMission ( 6019 )
	AddNpcMission ( 6020 )
	AddNpcMission ( 6021 )
	AddNpcMission ( 6022 )
	AddNpcMission ( 6023 )
	AddNpcMission ( 6024 )
	-------------------路人·丁  -------------------------巨蟹
	AddNpcMission ( 5859 )
	AddNpcMission ( 5860 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·丁




------------------------------------------------------------
-- 白银之城:历史任务:新手指导任务
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1, "瑟安:你好,我是白银城的形象大使瑟安,负责照顾新移民来的朋友和过往的旅行者,有什么不明白尽管问我." )
	Text( 1, "团队之星", JumpPage, 31 )
	Text( 1, "关于白银城", JumpPage, 4 )
	Text( 1, "关于职业和属性", JumpPage, 11 )
	Text( 1, "关于查询怪物坐标", JumpPage, 30 )
	Text( 1, "已经清楚不用再看了",  CloseTalk)



	Talk( 4, "我们白银城是个商业非常发达的城市,有多个店铺出售相应的物品,你可以四处看看." )
	Text( 4, "关于武器售卖", JumpPage, 5 )
	Text( 4, "关于防具售卖", JumpPage, 7 )
	Text( 4, "关于道具售卖", JumpPage, 8 )
	Text( 4, "关于传送使者", JumpPage, 9 )
	Text( 4, "关于医护小姐", JumpPage, 10 )

	Talk( 5, "白银之城的铁匠小金金在经营武器的售卖,他出售的武器质优价廉,去看看吧,铁匠铺的位置在白银之城内的左上角." )
	Text( 5, "继续询问其他的商家", JumpPage, 4 )
	Text( 5, "已经清楚不用再看了",  CloseTalk )

--	Talk( 6, "还有什么不明白的可以继续找我哦～", CloseTalk )

	Talk( 7, "白银之城的防具十分结实耐用,不妨去挑选一下,那商家的位置在城内右上角." )
	Text( 7, "继续询问其他的商家", JumpPage, 4 )
	Text( 7, "已经清楚不用再看了",  CloseTalk )

	Talk( 8, "我们这里有种类数量繁多的道具出售,对于冒险者来说是十分重要的,在水池的右边就有出售,去看看吧." )
	Text( 8, "继续询问其他的商家", JumpPage, 4 )
	Text( 8, "已经清楚不用再看了",  CloseTalk )

	Talk( 9, "传送使者可以将你传送到这个大陆的各个城市去,还有一个功能就是可以帮你储存复活点哦,她就在左面的城门呢." )
	Text( 9, "继续询问其他的商家", JumpPage, 4 )
	Text( 9, "已经清楚不用再看了",  CloseTalk )

	Talk( 10, "医护小姐在中央水池下面一点的地方,她心地十分好,给大家提供医疗医护服务,大家都很喜欢她的." )
	Text( 10, "继续询问其他的商家", JumpPage, 4 )
	Text( 10, "已经清楚不用再看了", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "瑟安:作为新手玩家,最先要了解的就是职业与属性的相关资料,你想知道一些什么内容呢?" )
	Text( 11, "有关职业", JumpPage, 12)
	Text( 11, "有关属性", JumpPage, 13)
	Text( 11, "已经清楚不用再看了", JumpPage, 6 )
	--Text( 11, "有关职业", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "有关属性", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "瑟安:在海盗王里一共有七种初始职业,不同的角色能胜任不同的职业,你对那个职业最感兴趣呢?" )
	Text( 12, "有关剑士", JumpPage, 14 )
	Text( 12, "有关猎人", JumpPage, 15 )
--	Text( 12, "有关水手", JumpPage, 16 )
	Text( 12, "有关冒险者", JumpPage, 17 )
	Text( 12, "有关药师", JumpPage, 18 )
--	Text( 12, "有关技师", JumpPage, 19 )
--	Text( 12, "有关商人", JumpPage, 20 )
	Text( 12, "了解啦,想看看其他的.", JumpPage, 11 )

	Talk( 13, "瑟安:人物的属性由六个基础属性推出,影响着不同的扩展属性,玩家每升一级则获得1点属性点和1点技能点,初始新手附送5点属性给玩家任意分配." )
	Text( 13, "有关力量", JumpPage, 21 )
	Text( 13, "有关敏捷", JumpPage, 22 )
	Text( 13, "有关体质", JumpPage, 23 )
	Text( 13, "有关精神", JumpPage, 24 )
	--Text( 13, "有关幸运", JumpPage, 25 )
	Text( 13, "有关专注", JumpPage, 26 )
	Text( 13, "了解啦,想看看其他的.", JumpPage, 11 )

	Talk( 14, "瑟安:剑士是海盗王里物理防御最高的一个职业,新手男性玩家在Lv10以后找白银城的守卫·比特就职" )
	Text( 14, "询问其他职业", JumpPage, 12)
	Text( 14, "询问有关属性", JumpPage, 13)
	Text( 14, "已经清楚不用看了", JumpPage, 27)

	Talk( 15, "瑟安:猎人是海盗王里唯一的远程攻击职业,在后期转职成为狙击手以后可以使用火枪,只有蓝崎和菲利尔可以就职猎人,玩家在Lv10以后找冰狼堡的剑士·雷欧就职" )
	Text( 15, "询问其他职业", JumpPage, 12)
	Text( 15, "询问有关属性", JumpPage, 13)
	Text( 15, "已经清楚不用看了", JumpPage, 27)

	Talk( 16, "瑟安:水手是海上战斗最强的职业,目前内测版本未开放" )
	Text( 16, "询问其他职业", JumpPage, 12)
	Text( 16, "询问有关属性", JumpPage, 13)
	Text( 16, "已经清楚不用看了", JumpPage, 27)
	
	Talk( 17, "瑟安:冒险者是海上辅助最强的职业,除了卡西斯,其他人都可以担任这个职业.玩家在Lv10以后可以找白银城的小山车就职" )
	Text( 17, "询问其他职业", JumpPage, 12)
	Text( 17, "询问有关属性", JumpPage, 13)
	Text( 17, "已经清楚不用看了", JumpPage, 27)

	Talk( 18, "瑟安:药师是卡拉女神的虔诚信徒,他们拥有神秘的医疗能力,只有菲利尔和艾米可以就职,玩家在Lv10以后可以找沙岚城的大神官·甘地维拉就职" )
	Text( 18, "询问其他职业", JumpPage, 12)
	Text( 18, "询问有关属性", JumpPage, 13)
	Text( 18, "已经清楚不用看了", JumpPage, 27)

	Talk( 19, "瑟安:技师是海盗王里可以制造物品的职业,所有的公会建筑公事都是由技师建造完成的,目前内测版本未开放" )
	Text( 19, "询问其他职业", JumpPage, 12)
	Text( 19, "询问有关属性", JumpPage, 13)
	Text( 19, "已经清楚不用看了", JumpPage, 27)

	Talk( 20, "瑟安:商人是海盗王里拥有贸易能力的职业,商人永远都是最富有的,目前内测版本未开放" )
	Text( 20, "询问其他职业", JumpPage, 12)
	Text( 20, "询问有关属性", JumpPage, 13)
	Text( 20, "已经清楚不用看了", JumpPage, 27)

	Talk( 21, "瑟安:力量关乎近战攻击力" )
	Text( 21, "询问其他属性", JumpPage, 13)
	Text( 21, "询问有关职业", JumpPage, 12)
	Text( 21, "已经清楚不用看了", JumpPage, 27)

	Talk( 22, "瑟安:敏捷关乎攻击速度与闪避率" )
	Text( 22, "询问其他属性", JumpPage, 13)
	Text( 22, "询问有关职业", JumpPage, 12)
	Text( 22, "已经清楚不用看了", JumpPage, 27)

	Talk( 23, "瑟安:体质关乎HP和物理防御" )
	Text( 23, "询问其他属性", JumpPage, 13)
	Text( 23, "询问有关职业", JumpPage, 12)
	Text( 23, "已经清楚不用看了", JumpPage, 27)

	Talk( 24, "瑟安:精神关于SP值与技能施展效果" )
	Text( 24, "询问其他属性", JumpPage, 13)
	Text( 24, "询问有关职业", JumpPage, 12)
	Text( 24, "已经清楚不用看了", JumpPage, 27)

	Talk( 25, "瑟安:幸运关乎会心一击概率和合成成功概率" )
	Text( 25, "询问其他属性", JumpPage, 13)
	Text( 25, "询问有关职业", JumpPage, 12)
	Text( 25, "已经清楚不用看了", JumpPage, 27)

	Talk( 26, "瑟安:专注关乎命中率和远程攻击力" )
	Text( 26, "询问其他属性", JumpPage, 13)
	Text( 26, "询问有关职业", JumpPage, 12)
	Text( 26, "已经清楚不用看了", JumpPage, 27)

	Talk( 27, "瑟安:好吧,以后有什么不明白的地方就来找我吧!")
	
	Talk( 28, "瑟安:很好,你已经掌握了一些基本的战斗与收集道具的方法了,我已经没有什么好教你的了.我有两个好朋友可以推荐你去找他们,有一个家伙叫马尔斯,他是白银城的巡逻兵,如果你也跟他一样喜欢战斗的话就去找找他吧,他在（2065,2732）位置,从白银城左边出去笔直走,就可以看到他了.另一位是我们白银城有名的药草商人·帝姆,他最喜欢收集一些花花草草的东西了,最近好像又在找人帮忙收集药材什么的,如果你感兴趣的话就去（2250,2770）找他,也就是中央水池的右边啦.祝你好运!" )
	Text( 28, "关于白银城", JumpPage, 4 )
	Text( 28, "关于职业和属性", JumpPage, 11 )
	Text( 28, "已经清楚不用再看了",  CloseTalk)

	Talk( 29, "瑟安:很好,现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,而猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）.由于白银城和沙岚城路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )
	Text( 29, "你想要了解些什么?", JumpPage, 4 )
	Text( 29, "关于职业和属性", JumpPage, 11 )
	Text( 29, "已经清楚不用再看了",  CloseTalk )

	Talk( 30, "瑟安:在游戏里查找怪物坐标其实是一件很简单的,在白银城的酒吧里有个叫酒鬼（坐标:加纳大陆2222,2889）的人,找到他就可以查询所有怪物的位置.”" )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31, "瑟安:团队之星是海外流传过来的一种非常是神奇的首饰,当你装备它的时候,如果能激发团队的力量,将会出现意想不到的事情哦,现在为了打开市场,联合贸易公司特举办万人免费试用活动,不为赚钱,只为打开市场,条件是41级以下的人每人限领一个,同时举办“旧货换新颜活动”允许大家用使用过的团队之星来换取合适的装备.你有兴趣吗?" )
	Text( 31, "领取团队之星",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "旧貌换新颜",JumpPage, 32 )

	Talk( 32,"感谢您使用联合贸易公司的产品,如果您有使用过的“团队之星”,将可以在我这里换领到50级的职业武器一把哦,很诱人对吧")
	Text( 32, "换领职业武器", Transfer_TeamStar, 1)

	Talk( 6, "瑟安:对不起,您不具备领取资格" )

	--InitTrigger()
	---------------------玩家超过6级完成过瑟安的战斗训练任务
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 701 )
	AddNpcMission ( 702 )
	AddNpcMission ( 704 )
	AddNpcMission ( 706 )
	AddNpcMission ( 708 )
	AddNpcMission ( 200 )
	AddNpcMission 	(402)
	AddNpcMission 	(50)
	AddNpcMission 	(51)
	AddNpcMission 	(61)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(82)

	MisListPage(28)
	MisListPage(29)
-----------------二月-------------压岁包
	--AddNpcMission 	(5507)
----------------------------------------------08鼠年新春活动kokora---------------------------------------
--	AddNpcMission 	(6205)
--	AddNpcMission 	(6206)
--	AddNpcMission 	(6207)
end




------------------------------------------------------------
-- 通用竞技场脚本
------------------------------------------------------------

function r_talk87 ()

	Talk( 1, "竞技管理员:你好,我是竞技场的管理员,你想试试自己的实力么?想挑战更多的玩家么?想让他们看看你的厉害么?" )
	Text( 1, "获取勇者之证", JumpPage, 2)
	Text( 1, "组队挑战荣誉规则说明", JumpPage, 6)
	Text( 1, "荣誉转正", JumpPage, 3)
	Text( 1, "记录当前挑战地点", SetSpawnPos, "白银酒馆")

	Talk( 2, "竞技管理员:你好年轻人,要获取勇者之证必须提升等级到25级以上(不包括25级),交给我50000海盗币作为签证费,拥有勇者之证可以参与组队挑战竞技,这张勇者之证将永远伴随你,你不能将他丢弃、销毁、出售." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "获得勇者之证", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "竞技管理员:要转换荣誉值必须拥有团队贡献值才行哦,团队贡献值是与其他玩家组队战斗时获得的哦.每1点荣誉值需要10点团队贡献和500金钱,团队贡献详细的获得方法请参考官方网站的说明." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "兑换10点团队贡献", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 2500 )
	TriggerAction( 1, TakeMoney, 2500 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3, "兑换50点团队贡献", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3, "兑换100点团队贡献", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3, "兑换300点团队贡献", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "竞技管理员:不好意思,您必须确定您的背包有一个空位,并且您的等级超过25级(不包括25级),支付我50000签证费,最后每人只能拥有一张勇者之证书." )

	Talk( 5, "竞技管理员:你好,兑换10点团队贡献为1点荣誉,需要团队贡献10点、现金500,并且荣誉值为负数才能兑换成功." )

	Talk( 6, "竞技管理员:有关荣誉的说明详细如下" )
	Text( 6, "有关参与场数", JumpPage, 7)
	Text( 6, "有关杀人荣誉", JumpPage, 8)
	Text( 6, "有关胜利荣誉", JumpPage, 9)
	Text( 6, "有关逃跑惩罚", JumpPage, 10)

	Talk( 7, "竞技管理员:每次进入挑战,增加参与场数1" )

	Talk( 8, "竞技管理员:每杀死1人,增加杀人数1,增加荣誉1（被杀者低于杀人者10级,则不增加荣誉,被杀者高于杀人者10级,则额外增加一点荣誉）每被杀1次,增加被杀数1,减少荣誉1（被杀者低于杀人者10级,则不减少荣誉,被杀者高于杀人者10级,则额外减少一点荣誉）" )

	Talk( 9, "竞技管理员:团队每胜利1场,增加胜利场数1,根据敌方人数以及双方平局级别差获得荣誉个人每胜利1场,增加胜利场数1,增加荣誉2并根据双方等级差别增加或减少获得荣誉." )

	Talk( 10, "竞技管理员:团队每次非胜利退出（逃跑或失败）根据己方人数以及双方平均等级差减少荣誉个人每次非胜利退出（逃跑或失败）减少荣誉2,并根据双方等级差增加或减少获得荣誉" )

	Talk( 11, "竞技管理员:你好,兑换50点团队贡献为5点荣誉,需要团队贡献50点、现金2500,并且荣誉值为负数才能兑换成功." )

	Talk( 12, "竞技管理员:你好,兑换100点团队贡献为10点荣誉,需要团队贡献100点、现金5000,并且荣誉值为负数才能兑换成功." )

	Talk( 13, "竞技管理员:你好,兑换300点团队贡献为30点荣誉,需要团队贡献300点、现金15000,并且荣誉值为负数才能兑换成功." )

end



------------------------------------------------------------
-- 白银城——巡逻兵·马尔斯
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "马尔斯:Hi,你好,我是新来的,我叫马尔斯,不知道什么时候开始白银城外面有那么多的章鱼,墨汁喷的到处都是的,士卫长让我出来巡逻,不让这些家伙跑到城里去,5555～～要是有一个进去的士卫长就让我去擦地板,5555～～～" )

	Talk( 2, "马尔斯:很好,你已经修炼到Lv9了,10级就可以就职了.现在你可以去找就职人接受就职的试炼了.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）,冒险者的就职人是白银城的小山车（坐标:2193,2730）.由于沙岚城和冰狼堡路途遥远,你可以通过白银城门口的传送使将自己传送到目的地.祝你一路好运哦." )


	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 730 )
	--AddNpcMission ( 736 )
	--AddNpcMission ( 737 )
	AddNpcMission ( 400 )
	AddNpcMission ( 52 )
	AddNpcMission ( 53 )
	AddNpcMission ( 54 )
----------巡逻兵·马尔斯-------双子
	AddNpcMission	(5696)
	AddNpcMission	(5697)
	MisListPage(2)

end

------------------------------------------------------------
-- 沙岚城——巡逻兵·迈克
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "迈克:你好,我是沙岚城的巡逻兵,在沙漠里随时都存在危机,你要随时小心哦,这里的蝎子可是很厉害的哦,喔喔喔～～好困啊,趁队长不在我先打个盹." )
	
	Talk( 2, "迈克:很好,你已经修炼到Lv9了,10级就可以就职了.现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）,冒险者的就职人是白银城的小山车（坐标:2193,2730）.由于白银城和冰狼堡路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )

	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 731 )
	--AddNpcMission ( 740 )
	--AddNpcMission ( 741 )
	AddNpcMission ( 235 )
	AddNpcMission ( 236 )
	AddNpcMission ( 241 )
	AddNpcMission ( 242 )
	AddNpcMission 	(412)
	AddNpcMission 	(85)
	AddNpcMission 	(86)
	AddNpcMission 	(87)
	AddNpcMission 	(922)--------------------------------------------
	AddNpcMission 	(923)
	AddNpcMission 	(924)------------
----------巡逻兵·迈克-------双子
	AddNpcMission	(5692)
	AddNpcMission	(5693)

	MisListPage(2)

end

------------------------------------------------------------
-- 冰狼堡——巡逻兵·小莫
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "小莫:我是新来的巡逻兵小莫,这么冷的天队长还让我出来巡逻,冻死我了,你有没有什么可以吃的啊?我好饿啊,这附近的东西都没什么好吃的了……" )

	Talk( 2, "小莫:很好,你已经修炼到Lv9了,10级就可以就职了.现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）,冒险者的就职人是白银城的小山车（坐标:2193,2730）.由于白银城和沙岚城路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )

	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 732 )
	--AddNpcMission ( 742 )
	--AddNpcMission ( 743 )
	AddNpcMission ( 255 )
	AddNpcMission ( 256 )
	AddNpcMission 	(408)
	AddNpcMission 	(164)
	AddNpcMission 	(165)
	AddNpcMission 	(166)
	AddNpcMission 	(177)
	AddNpcMission 	(178)
	AddNpcMission 	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- 沙岚城——药材商人·沙拉拉
------------------------------------------------------------

function r_talk91 ()

	Talk( 1, "沙拉拉:唔唔……我是沙岚城的药材商人,我这里有你需要的东西哦!" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )
	
	Talk( 2, "沙拉拉:很好,你已经修炼到Lv9了,10级就可以就职了.现在你可以去找就职人接受就职的试炼.剑士的就职人是白银城的比特（坐标:2192,2767）,药师的就职人是沙岚城的大神官·甘地维拉（坐标:862,3500）,而猎人的就职人是冰狼堡的剑士·雷欧（坐标:1365,570）.由于白银城和冰狼堡路途遥远,你可以通过门口的传送使将自己传送到目的地.祝你一路好运哦." )
	Text( 2, "交易", BuyPage )
	Text( 2, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


	---------------------玩家超过9级
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 717 )
	--AddNpcMission ( 734 )
	--AddNpcMission ( 744 )
	--AddNpcMission ( 745 )

	MisListPage(2)

end 

------------------------------------------------------------
--卡尔加德雪原    旅行医生·瓦罗温妮
------------------------------------------------------------

function r_talk92 ()

	Talk( 1, "瓦罗温妮:Hi,我是瓦罗温妮,这附近就只有我一个医生哦,你需要点什么药品么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	471	)
	AddNpcMission(	472	)
	AddNpcMission	(753)
	
end

------------------------------------------------------------
-- 赖安森林——旅行医生·米奈希尔
------------------------------------------------------------

function r_talk93 ()

	Talk( 1, "米奈希尔:Hi,我是米奈希尔,这附近就只有我一个医生哦,你需要点什么药品么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	1442	)
	AddNpcMission (	1900	)

	---------------白羊
	AddNpcMission	(5567)
	AddNpcMission	(5568)
	AddNpcMission ( 6052 )
	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- 德尔维平原-----福克
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "福克:哼哼,说我自大也好,但我的梦想就是做一只骄傲的井底之蛙!" )

end

------------------------------------------------------------
-- 冰极补给站-----法迪尔
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "法迪尔:我那个没有商业头脑的朋友老想把冰狼堡的大衣买到沙岚城去,我在苦恼怎么才能打消他这个荒谬的念头." )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission (	1927	)
	AddNpcMission (	1948	)

	------------------二月
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- 德尔维平原-----席特
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "席特:人家都说我是一只披着羊皮的狼,嗷嗷." )

end

------------------------------------------------------------
-- 德尔维平原-----严罗塔
------------------------------------------------------------

function r_talk97 ()

	Talk( 1, "严罗塔:人生真是寂寞如雪啊." )

	AddNpcMission 	(409)
	AddNpcMission 	(415)
	AddNpcMission 	(424)
	AddNpcMission 	(426)
	AddNpcMission 	(449)
	AddNpcMission 	(809)
	AddNpcMission 	(813)
	AddNpcMission(	1431	)
	AddNpcMission (	1901	)
----------eleven
	AddNpcMission (	5048	)
	AddNpcMission (	5049	)
	AddNpcMission (	5050	)
	AddNpcMission (	5051	)
	AddNpcMission (	5052	)
	AddNpcMission ( 6030 )
	AddNpcMission ( 6031 )

end

------------------------------------------------------------
-- 德尔维平原-----布布
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "布布:我爸爸是大海盗,所以我长大要加入海军,做他们海盗团的“无间道”!" )

end

------------------------------------------------------------
-- 德尔维平原-----鲁鲁
------------------------------------------------------------

function r_talk99 ()

	Talk( 1, "鲁鲁:哈哈,童言无忌,百无禁忌!" )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------白羊
	AddNpcMission	(5561)
	AddNpcMission	(5562)
	AddNpcMission ( 6040 )
	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- 德尔维平原-----奥迪斯.闪光
------------------------------------------------------------

function r_talk100()

	Talk( 1, "奥迪斯.闪光:我想老了以后搬家到恶魔居住的地方,然后每天在顶楼欣赏火山喷发的盛况." )

	AddNpcMission (	454	)
	AddNpcMission (	458	)
	AddNpcMission 	(654)
	AddNpcMission 	(657)
	AddNpcMission 	(658)
	AddNpcMission 	(663)
	AddNpcMission 	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission (	1914	)

	




end

------------------------------------------------------------
-- 德尔维平原-----梅尔
------------------------------------------------------------

function r_talk101()

	Talk( 1, "梅尔:平息一个八卦的最佳办法就是造出另一个更火爆的八卦." )

end

------------------------------------------------------------
-- 德尔维平原-----古博拉
------------------------------------------------------------

function r_talk102()

	Talk( 1, "古博拉:我写了一本畅销书,叫做《啊,那些穿花衬衫的男人们呀》,据说在海盗界也很流行呢." )

	AddNpcMission 	(603)
	AddNpcMission 	(608)
	AddNpcMission 	(613)
	AddNpcMission 	(615)
	AddNpcMission 	(618)
----------古博拉-------双子
	AddNpcMission	(5702)
	AddNpcMission	(5703)

end

------------------------------------------------------------
-- 德尔维平原-----小库尔森
------------------------------------------------------------

function r_talk103()

	Talk( 1, "小库尔森:妈妈说我不能跟陌生人要糖吃,不过,你真的不能给我糖吗?" )

end

------------------------------------------------------------
-- 德尔维平原-----玛姬婶婶
------------------------------------------------------------

function r_talk104()

	Talk( 1, "玛姬婶婶:我最喜欢吃黑森林蛋糕,上面一层厚厚的巧克力,啊,想想就流口水." )

end

------------------------------------------------------------
-- 德尔维平原-----瓦萨法尔
------------------------------------------------------------

function r_talk105()

	Talk( 1, "瓦萨法尔:告诉你个秘密,最近我和朋友们发明了一种游戏,需要四个人和一百零八张牌,按照四个方位坐下……" )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	----------瓦萨法尔-------双子
	AddNpcMission	(5708)
	AddNpcMission	(5709)




end

------------------------------------------------------------
-- 德尔维平原-----朱丽布玛
------------------------------------------------------------

function r_talk106()

	Talk( 1, "朱丽布玛:你想知道城里的铁匠为什么是个秃头吗……什么?我太八卦?你真没情趣!" )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- 德尔维平原-----阿里克斯
------------------------------------------------------------

function r_talk107()

	Talk( 1, "阿里克斯:做人真辛苦,不如打网游" )
	AddNpcMission 	(425)
	AddNpcMission 	(431)
	AddNpcMission 	(436)
	AddNpcMission 	(442)
	AddNpcMission 	(448)
	AddNpcMission 	(601)
	AddNpcMission 	(607)
	AddNpcMission 	(610)
	AddNpcMission 	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- 德尔维平原-----老库尔森
------------------------------------------------------------

function r_talk108()

	Talk( 1, "老库尔森:在这个炎热的夏天,真想去个小岛度假呀." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- 德尔维平原-----海军列兵
------------------------------------------------------------

function r_talk109()

	Talk( 1, "嘘～小声点,我们老大正在训话呢" )

end

------------------------------------------------------------
-- 帕克荒漠-----吉尔尼尼斯
------------------------------------------------------------

function r_talk110()

	Talk( 1, "吉尔尼尼斯:我祖祖辈辈是靠打柴为生的,可是近来有人说我不环保,真伤脑筋." )

	AddNpcMission 	(411)
	AddNpcMission 	(669)
	AddNpcMission 	(675)
	AddNpcMission 	(678)
	AddNpcMission 	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- 帕克荒漠-----米尔米莉
------------------------------------------------------------

function r_talk111()

	Talk( 1, "米尔米莉:嗨,你好.朋友都叫我米莉,我不介意你也这样称呼我." )

	AddNpcMission 	(456)
	AddNpcMission 	(656)
	AddNpcMission 	(661)
	AddNpcMission 	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission (	1910	)
---------eleven
	AddNpcMission (	5025	)
	AddNpcMission ( 5026	)
	AddNpcMission ( 5029	)
	AddNpcMission (	5070)
	AddNpcMission ( 5072	)
	AddNpcMission ( 5073	)
	------------1.7
	AddNpcMission ( 5074	)
	AddNpcMission(	5092 )
	AddNpcMission (5101 )
	AddNpcMission (5102 )
	AddNpcMission (5103 )
	AddNpcMission (5104 )
	AddNpcMission (5113 )
	AddNpcMission ( 6032 )
	AddNpcMission ( 6033 )
----------米尔米莉-------双子
	AddNpcMission	(5722)
	AddNpcMission	(5723)
end

------------------------------------------------------------
-- 帕克荒漠-----奥格森
------------------------------------------------------------

function r_talk112()

	Talk( 1, "奥格森:这世上还有许多未解之迷等待着勇敢的人去探索!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- 帕克荒漠-----加西亚·破帆
------------------------------------------------------------

function r_talk113()

	Talk( 1, "加西亚·破帆:嗨,我叫破帆,但这可不意味着我乘坐过的船都会破帆." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- 帕克荒漠-----迪迪马修
------------------------------------------------------------

function r_talk114()

	Talk( 1, "迪迪马修:大海的男儿们,让我们朝着夕阳航行吧!" )

	AddNpcMission 	(640)
	AddNpcMission 	(644)
	AddNpcMission 	(645)
	AddNpcMission 	(646)
	AddNpcMission 	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission (	1911	)
	AddNpcMission ( 6038 )
	AddNpcMission ( 6039 )

	





end

------------------------------------------------------------
-- 帕克荒漠-----俄克琉西斯
------------------------------------------------------------

function r_talk115()

	Talk( 1, "俄克琉西斯:我想要很多很多的钱.如果没有,我就要能给我很多很多钱的队友." )
	AddNpcMission	(1120)
----------俄克琉西斯-------双子
	AddNpcMission	(5698)
	AddNpcMission	(5699)

end

------------------------------------------------------------
-- 帕克荒漠-----梅利西亚·猫眼
------------------------------------------------------------

function r_talk116()

	Talk( 1, "梅利西亚·猫眼:你干吗这么诧异,没见过女海盗吗?!" )
	
	AddNpcMission ( 245 )
	AddNpcMission ( 246 )
	AddNpcMission ( 247 )
	AddNpcMission ( 249 )
	AddNpcMission ( 250 )
	AddNpcMission (1141)

end

------------------------------------------------------------
-- 帕克荒漠-----古得塔克·灰墙
------------------------------------------------------------

function r_talk117()

	Talk( 1, "古得塔克·灰墙:谁说我晕船的,在这个航海时代我怎么能晕船呢.我只是和船的属性不太兼容而已罢了." )

end

------------------------------------------------------------
-- 帕克荒漠-----奎赛斯·狂沙
------------------------------------------------------------

function r_talk118()

	Talk( 1, "奎赛斯·狂沙:人善被人欺,狗善被猫抓!" )
	
	AddNpcMission ( 257 )
	AddNpcMission ( 258 )
	AddNpcMission ( 259 )
	AddNpcMission 	(435)
	AddNpcMission 	(686)
	AddNpcMission 	(691)
	AddNpcMission 	(693)
	AddNpcMission 	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- 帕克荒漠-----通灵者·月光眼
------------------------------------------------------------

function r_talk119()

	Talk( 1, "通灵者·月光眼:我能看见常人看不见的东西,比如说,你背后的那一团黑影……" )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------白羊
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- 帕克荒漠-----卡尔苏斯·泥巴
------------------------------------------------------------

function r_talk120()

	Talk( 1, "卡尔苏斯·泥巴:我一点都不羡慕白银城的首席秘书,也不想当雷霆堡的指挥官,我就想懒惰地像一团泥巴." )

	AddNpcMission 	(407)
	AddNpcMission 	(638)
	AddNpcMission 	(642)
	AddNpcMission(	1438	)
	AddNpcMission (	1912	)

	



end

------------------------------------------------------------
-- 帕克荒漠-----尼里艾亚·长发
------------------------------------------------------------

function r_talk121()

	Talk( 1, "尼里艾亚·长发:嗯,你……我……嗯……那个……啊!对不起,就当我什么都没说!" )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission (	1924	)
	AddNpcMission (	1945	)

	


end

------------------------------------------------------------
-- 帕克荒漠-----克莉莉雅
------------------------------------------------------------

function r_talk122()

	Talk( 1, "克莉莉雅:白银城自称是世界流行潮流的引领者,但比起那些见多识广的海盗来,他们还差得远呢." )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- 帕克荒漠-----贝克
------------------------------------------------------------

function r_talk123()

	Talk( 1, "贝克:我有个兄弟叫汉姆,不过没我这么伶俐可爱." )

end

------------------------------------------------------------
-- 帕克荒漠-----汉姆
------------------------------------------------------------

function r_talk124()

	Talk( 1, "汉姆:我有个兄弟叫贝克,可惜不及我玉树临风." )
-----------------汉姆---------金牛
	AddNpcMission	(5645)
	AddNpcMission	(5646)
end

------------------------------------------------------------
-- 帕克荒漠-----爱尔尤利·微风
------------------------------------------------------------

function r_talk125()

	Talk( 1, "爱尔尤利·微风:唉,这世上似近而远的东西是,极乐净土,船的航程和男女之间啊……" )

end

------------------------------------------------------------
-- 帕克荒漠-----薇莉尔
------------------------------------------------------------

function r_talk126()

	Talk( 1, "薇莉尔:第一不许说我又胖了,第二不许说我又丰满了,第三不许说隔壁家的小猪又到荒郊野外觅食来了!好了,你可以说话了." )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
	AddNpcMission ( 6034 )
	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- 帕克荒漠-----冬达米婆婆
------------------------------------------------------------
function r_talk127()
Talk( 1, "冬达米婆婆:年轻人,要趁着身体好到处走走哦." )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Hello！",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "又Hello！",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "我路过而已",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "冬达米婆婆:你说是先有鸡还是先有蛋?")
	Text(2, "先有鸡", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2, "先有蛋", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "冬达米婆婆:小朋友,婆婆很忙,没有特别的事呢就请走开一点点~~")
	Talk( 10, "冬达米婆婆:小朋友,你回答错了,好好考虑一下再来回答~~")

	Talk( 4, "冬达米婆婆:很有慧根嘛!不错~~")

	Talk( 5, "冬达米婆婆:难道怪叟的白痴病有传染性!?")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6, "冬达米婆婆:一只兔子和一只跑得飞快的乌龟赛跑,谁赢了?")
	Text( 6, "乌龟",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "兔子",JumpPage, 10  )

	Talk( 7, "冬达米婆婆:当然是乌龟赢了,因为那是一只跑得超级快的乌龟")
	Text( 7, "下一题",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8, "冬达米婆婆:一只兔子与一只戴墨镜的乌龟赛跑,谁赢了?")
	Text( 8, "戴墨镜的乌龟",MultiTrigger, GetMultiTrigger(), 1 )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8, "兔子",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "冬达米婆婆:当然不是兔子赢,因为摘掉墨镜还是那只跑得超级快的乌龟.嘎嘎嘎......")
	--Start( GetMultiTrigger(), 1 )
	AddNpcMission 	(417)
	AddNpcMission 	(674)
	AddNpcMission 	(676)
	AddNpcMission 	(681)
	AddNpcMission	(1064)
	AddNpcMission	(752)

	
	------------------1.7
	AddNpcMission (5153 )
	AddNpcMission (5154 )
	AddNpcMission (5155 )
	AddNpcMission (5156 )
	AddNpcMission (5157 )
	AddNpcMission (5159 )
	end

------------------------------------------------------------
-- 帕克荒漠-----罗宾斯·背包
------------------------------------------------------------

function r_talk128()

	Talk( 1, "罗宾斯·背包:小时候父亲把我装在背包里到处流浪,现在我把梦想装在背包里重回故里." )

end

------------------------------------------------------------
-- 帕克荒漠-----瑞得·皮戈
------------------------------------------------------------

function r_talk129()

	Talk( 1, "瑞得·皮戈:啊哈,你好!找我瑞得·皮戈有何贵干呀." )

	AddNpcMission 	(623)
	AddNpcMission 	(627)
	AddNpcMission 	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission (	1905	)
	AddNpcMission (	1941	)

	---------------白羊
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- 阿兰比斯冰原-----温莉·冰泉
------------------------------------------------------------

function r_talk130()

	Talk( 1, "温莉·冰泉:我的家乡在冰狼堡,所以我的名字里有个“冰”字." )
---------------白羊
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----雷斯·小虫
------------------------------------------------------------

function r_talk131()

	Talk( 1, "雷斯·小虫:我叫小虫,可我不会一辈子都这么矮小的……" )
-----------------雷斯·小虫---------金牛
	AddNpcMission	(5653)
	AddNpcMission	(5654)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----达米尔·嘟嘟
------------------------------------------------------------

function r_talk132()

	Talk( 1, "达米尔·嘟嘟:嘟嘟,嘟嘟,嘟嘟嘟……" )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- 阿兰比斯冰原-----索拉姆·萨加
------------------------------------------------------------

function r_talk133()

	Talk( 1, "索拉姆·萨加:你听说过海盗王的宝藏吗?我找了好多好多年了!" )

	AddNpcMission 	(421)
	AddNpcMission 	(427)
	AddNpcMission 	(438)
	AddNpcMission 	(444)
	AddNpcMission 	(653)
	AddNpcMission 	(659)
	AddNpcMission 	(660)
	AddNpcMission 	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission (	1913	)


-----------------索拉姆·萨加---------金牛
	AddNpcMission	(5657)
	AddNpcMission	(5658)



end

------------------------------------------------------------
-- 阿兰比斯冰原-----狼牙拉姆
------------------------------------------------------------

function r_talk134()

	Talk( 1, "狼牙拉姆:走了三天也没找到城,难道说……我又迷路了吗?!!" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----狼牙拉姆
------------------------------------------------------------

function r_talk135()

	Talk( 1, "仙尼埃尔斯:如果现在你拿着的东西不是“传说中的白马王子”给我的信,请不要和我说话……" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- 阿兰比斯冰原-----艾伦娜
------------------------------------------------------------

function r_talk136()

	Talk( 1, "艾伦娜:我正准备赶去城里的特卖会,希望他们不要结束得太早." )

	AddNpcMission ( 262 )
	AddNpcMission ( 263 )
	AddNpcMission ( 264 )
	AddNpcMission ( 265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- 阿兰比斯冰原-----赫尔达达
------------------------------------------------------------

function r_talk137()

	Talk( 1, "赫尔达达:无耻无聊无节操!你好,我就是人们常说的三无人士." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----约瑟夫·乔
------------------------------------------------------------

function r_talk138()

	Talk( 1, "约瑟夫·乔:我讨厌那些小章鱼,它们老喷我一脸墨水." )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----草莓优优
------------------------------------------------------------

function r_talk139()

	Talk( 1, "草莓优优:你看见那些粉红色的迷你猪了吗,悄悄告诉你,其实它们最喜欢吃的东西是芥末哟." )
---------------白羊
	AddNpcMission	(5555)
	AddNpcMission	(5556)
	----------草莓优优-------双子
	AddNpcMission	(5706)
	AddNpcMission	(5707)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----伊文
------------------------------------------------------------

function r_talk140()

	Talk( 1, "伊文:你好,我叫伊文.你来这里做什么?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----苏珊娜
------------------------------------------------------------

function r_talk141()

	Talk( 1, "苏珊娜:现在每天从我脸上流过的时间,从我指尖流走的是金钱呀!" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----卡诺林
------------------------------------------------------------

function r_talk142()

	Talk( 1, "卡诺林:因为我是一个素食主义者,所以我一直在困惑,那些会滚的仙人球到底是动物还是植物呢?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----詹姆斯
------------------------------------------------------------

function r_talk143()

	Talk( 1, "詹姆斯:相传在这个世界里有一只会说话的小羊……" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----露西丽丽雅
------------------------------------------------------------

function r_talk144()

	Talk( 1, "露西丽丽雅:嗨,你好啊,旅行者." )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----尤兰达克
------------------------------------------------------------

function r_talk145()

	Talk( 1, "尤兰达克:我每天都很辛苦地打怪赚钱,不过我发现怪物们的荷包最近也很空虚." )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----博尔芬尼
------------------------------------------------------------

function r_talk146()

	Talk( 1, "博尔芬尼:我出海的时候遇见过一只美人鱼,我一直想问她那种妖娆的眼影是哪里买的." )

	AddNpcMission 	(622)
	AddNpcMission 	(624)
	AddNpcMission 	(628)
	AddNpcMission 	(630)
	AddNpcMission 	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission (	1906	)
	AddNpcMission (	1942	)
	AddNpcMission ( 6036 )
	AddNpcMission ( 6037 )

	



end

------------------------------------------------------------
-- 阿兰比斯冰原-----淘淘
------------------------------------------------------------

function r_talk147()

	Talk( 1, "淘淘:今天的天BlueBlue,海也BlueBlue,逃掉英文课的心情更是BlueBlue!" )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------白羊
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- 阿兰比斯冰原-----科瑞其
------------------------------------------------------------

function r_talk148()

	Talk( 1, "科瑞其:你好,朋友.我正在这里思考为什么这里没有月亮这个严肃的问题.你呢?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----米歇尔梅林芬
------------------------------------------------------------

function r_talk149()

	Talk( 1, "米歇尔梅林芬:………………（我想我没什么什么话想对你说）" )
-------------秋岛开发
	--AddNpcMission 	(6182)
end

------------------------------------------------------------
-- 冰狼堡-----水手·埃迪加
------------------------------------------------------------

function r_talk156()

	Talk( 1, "埃迪加:你好,我是这个大陆上最好的水手,你需要我的帮助吗?" )

end

------------------------------------------------------------
-- 古里咯利补给站-----榴莲
------------------------------------------------------------

function r_talk157()

	Talk( 1, "榴莲:我从来没有过吃饱的感觉,我想这是一种病,可我并不太想治好它……" )

	AddNpcMission 	(419)
	AddNpcMission 	(460)
	AddNpcMission 	(600)
	AddNpcMission 	(604)
	AddNpcMission 	(606)
	AddNpcMission 	(611)
	AddNpcMission 	(614)
	AddNpcMission 	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission (	1903	)

	---------------白羊
	AddNpcMission	(5587)
	AddNpcMission	(5588)

	AddNpcMission ( 6042 )
	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- 古里咯利补给站-----莲娜姨
------------------------------------------------------------

function r_talk158()

	Talk( 1, "莲娜姨:你……你……要……买……什……什……么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(450)
	AddNpcMission 	(452)
	AddNpcMission 	(602)
	AddNpcMission 	(605)
	AddNpcMission 	(609)
	AddNpcMission 	(616)
	AddNpcMission 	(617)
	AddNpcMission(	1435	)
	AddNpcMission (	1904	)

	



	
end

------------------------------------------------------------
-- 瓦尔诺补给站-----古奈斯
------------------------------------------------------------

function r_talk159()

	Talk( 1, "古奈斯:卖东西买东西,都来找我吧" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	
	AddNpcMission 	(463)
	AddNpcMission 	(620)
	AddNpcMission 	(626)
	AddNpcMission 	(629)
	AddNpcMission 	(631)
	AddNpcMission 	(632)
	AddNpcMission 	(633)
	AddNpcMission 	(635)
	AddNpcMission 	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission (	1907	)
	AddNpcMission (	1943	)

	


end

------------------------------------------------------------
-- 废矿补给站-----里卡尔
------------------------------------------------------------

function r_talk160()

	Talk( 1, "里卡尔:你好,我是矿区的治安官里卡尔,这里很危险di～" )

	AddNpcMission ( 223 )
	AddNpcMission ( 224 )
	AddNpcMission ( 225 )
	AddNpcMission ( 226 )
	AddNpcMission ( 227 )
	AddNpcMission ( 228 )
	AddNpcMission ( 229 )
	AddNpcMission ( 230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission (	1908	)

	



	
end

------------------------------------------------------------
-- 废矿补给站-----矿工大肚腩
------------------------------------------------------------

function r_talk161()

	Talk( 1, "大肚腩:咕噜……咕噜……肚子好饿啊,我的便当……不见了" )
	
	---------------奥运
	AddNpcMission	(6272)
	AddNpcMission	(6273)
	AddNpcMission	(6274)

	AddNpcMission ( 284 )
	AddNpcMission ( 285 )
	AddNpcMission ( 311 )
	-----------------矿工大肚腩---------金牛
	AddNpcMission	(5663)
	AddNpcMission	(5664)
end

------------------------------------------------------------
-- 废矿补给站-----古灵精
------------------------------------------------------------

function r_talk162()

	Talk( 1, "古灵精:你好,我是古灵精,你找我有什么事么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(455)
	AddNpcMission 	(461)
	AddNpcMission 	(811)
	AddNpcMission 	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)


	
end

------------------------------------------------------------
-- 温拿补给站-----琳达
------------------------------------------------------------

function r_talk163()

	Talk( 1, "琳达:我不想加班,可老板每天都让我做到深夜,我要求加薪!" )
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission (5139 )
	AddNpcMission (5140 )
	AddNpcMission (5141 )
	AddNpcMission ( 6044 )
	AddNpcMission ( 6045 )

end

------------------------------------------------------------
-- 温拿补给站-----达达迈亚
------------------------------------------------------------

function r_talk164()

	Talk( 1, "达达迈亚:嗨,你好啊,朋友.到这么危险的地方来干粮有没有带足呀!" )

end

------------------------------------------------------------
-- 温拿补给站-----古力果
------------------------------------------------------------

function r_talk165()

	Talk( 1, "古力果:你好,请问你需要点什么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------白羊
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- 巴布补给站-----蘑蘑
------------------------------------------------------------

function r_talk166()

	Talk( 1, "蘑蘑:嘿!我叫蘑蘑,是蘑菇的蘑,在我这里可以买到好吃的噢" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(433)
	AddNpcMission 	(655)
	AddNpcMission 	(662)
	AddNpcMission 	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission (	1915	)

	---------------白羊
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- 沙泉补给站-----维娜
------------------------------------------------------------

function r_talk167()

	Talk( 1, "维娜:我就要结婚了,我希望每个人都能分享我的喜悦." )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- 沙泉补给站-----菲菲
------------------------------------------------------------

function r_talk168()

	Talk( 1, "菲菲:你好,我叫菲菲." )

	AddNpcMission 	(422)
	AddNpcMission 	(639)
	AddNpcMission 	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission (	1916	)

	---------------二月
	--AddNpcMission (5503	)

---------------白羊
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- 沙泉补给站-----马洛
------------------------------------------------------------

function r_talk169()

	Talk( 1, "马洛:我是这里的补给员,你要来点什么吗?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(403)
	AddNpcMission 	(413)
	AddNpcMission 	(420)
	AddNpcMission 	(643)
	AddNpcMission 	(647)
	AddNpcMission 	(649)
	AddNpcMission 	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission (	1917	)

	----------------1.7
	AddNpcMission (5124 )
	AddNpcMission (5125 )
	AddNpcMission (5126 )
end

------------------------------------------------------------
-- 阿兰比斯补给站-----朱比
------------------------------------------------------------

function r_talk170()

	Talk( 1, "朱比:我总能听到大海对我的召唤,我想那里一定有着许多美妙的事等待着我去探索." )

	AddNpcMission 	(429)
	AddNpcMission 	(464)
	AddNpcMission 	(466)
	AddNpcMission 	(684)
	AddNpcMission 	(696)
	AddNpcMission 	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission (5136 )
	AddNpcMission (5137 )
	AddNpcMission (5138 )
-----------------朱比---------金牛
	AddNpcMission	(5647)
	AddNpcMission	(5648)
end

------------------------------------------------------------
-- 沙泉补给站-----尤塔里尼
------------------------------------------------------------

function r_talk171()

	Talk( 1, "尤塔里尼:嘿!朋友,你要来点面包么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(423)
	AddNpcMission 	(440)
	AddNpcMission 	(446)
	AddNpcMission 	(462)
	AddNpcMission 	(683)
	AddNpcMission 	(687)
	AddNpcMission 	(692)
	AddNpcMission 	(695)
	AddNpcMission(	1580	)
	AddNpcMission (	1919	)
	AddNpcMission (	1955	)

	----------尤塔里尼-------双子
	AddNpcMission	(5718)
	AddNpcMission	(5719)




end

------------------------------------------------------------
-- 骷髅营地补给站-----修司
------------------------------------------------------------

function r_talk172()

	Talk( 1, "修司:抢怪可耻!" )

	AddNpcMission 	(802)
	AddNpcMission 	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission (	1921	)
	AddNpcMission (	1922	)
----------------1.7
	AddNpcMission (5127 )
	AddNpcMission (5128 )
	AddNpcMission (5129 )
	AddNpcMission ( 6046 )
	AddNpcMission ( 6047 )

	----------修司-------双子
	AddNpcMission	(5694)
	AddNpcMission	(5695)


end

------------------------------------------------------------
-- 骷髅营地补给站-----嘻嘻哈哈
------------------------------------------------------------

function r_talk173()

	Talk( 1, "嘻嘻哈哈:你好,我负责这里的物资补给,请问你需要点什么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(467)
	AddNpcMission 	(803)
	AddNpcMission(	1588	)
	AddNpcMission (	1923	)
	AddNpcMission (	1944	)

	





end

------------------------------------------------------------
-- 冰极补给站-----米开朗费罗
------------------------------------------------------------

function r_talk174()

	Talk( 1, "米开朗费罗:我那敲锣的父亲听说在异世界有个著名的艺术家叫米开朗基罗,所以他说,儿子,你就叫“废锣”吧!" )

	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission (	1926	)
	AddNpcMission (	1947	)

	



end

------------------------------------------------------------
-- 冰都补给站-----奈奈
------------------------------------------------------------

function r_talk175()

	Talk( 1, "奈奈:我想我很笨,总是在城外迷路,要是有个自动导航装置就好了." )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------白羊
	AddNpcMission	(5589)
	AddNpcMission	(5590)
	AddNpcMission ( 6050 )
	AddNpcMission ( 6051 )
	
----------奈奈-------双子
	AddNpcMission	(5700)
	AddNpcMission	(5701)



end

------------------------------------------------------------
-- 冰都补给站-----怪叟爷爷
------------------------------------------------------------

function r_talk176()

	Talk( 1, "怪叟爷爷:别看我怪,我可是这里的治疗师哦,有美女需要做个全身检查么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事,我随便逛逛",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(430)
	AddNpcMission 	(434)
	AddNpcMission 	(670)
	AddNpcMission 	(671)
	AddNpcMission 	(679)
	AddNpcMission 	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission (	1929	)

	---------------1.7
	AddNpcMission (5148 )
	AddNpcMission (5150 )
	AddNpcMission (5152 )
	AddNpcMission (5158 )
	AddNpcMission (5160 )
	AddNpcMission (5161 )
	AddNpcMission (5162 )
	AddNpcMission (5163 )
	AddNpcMission (5164 )
	AddNpcMission (5165 )
	AddNpcMission (5166 )
	AddNpcMission (5169 )


end


------------------------------------------------------------
-- 骷髅营地补给站-----阿泰
------------------------------------------------------------

function r_talk177()

	Talk( 1, "阿泰:我想组一只由海洋生物组成的乐队,让美人鱼唱歌,铁甲蟹敲鼓.我当然是做队长兼吉他手啦.可我却不是海洋生物,这一点让我很头疼……" )

	AddNpcMission 	(805)
	AddNpcMission 	(806)
	AddNpcMission(	1589	)
	AddNpcMission (	1934	)
	AddNpcMission (	1949	)

	-----------------阿泰---------金牛
	AddNpcMission	(5629)
	AddNpcMission	(5630)




	
end

------------------------------------------------------------
-- 德尔维平原-----贝壳商人·拉姆
------------------------------------------------------------

function r_talk221()

	Talk( 1, "拉姆:我的爱好是收集贝壳,我这里有很多奇怪的贝壳,你想看看么?" )
	Text( 1, "交易", BuyPage )
	Text( 1, "贝壳能量补充", JumpPage, 2 )
	Text( 1, "没事,我随便逛逛",CloseTalk )


	Talk( 2, "拉姆:贝壳是可以补充能量的,在海上有各种属性的区域,风贝要到风区,雷贝是雷区,雾贝当然是雾区咯,唔……我好像记得在加纳大陆白银海域的2500,2850附近有一个雷区,你去那里试试看,应该可以补充雷贝的能量,别忘了补充能量的时候请装备好你的贝壳.")


	InitTrade()
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)
-----------------贝壳商人·拉姆---------金牛
	AddNpcMission	(5637)
	AddNpcMission	(5638)


end




------------------------------------------------------------
-- 白银城-----服装店助理◎蓓蓓
------------------------------------------------------------
function r_talk222()


	Talk( 1, "蓓蓓:你好,我是新来的店员,我这里卖所有冒险者相关的衣服哦" )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
----------------1.7
	AddNpcMission (5118 )
	AddNpcMission (5119 )
	AddNpcMission (5120 )

end
------------------------------------------------------------
-- 秋之岛-----莱娜
------------------------------------------------------------
function r_talk223()


	Talk( 1, "莱娜:你好,我是秋之岛的传送员莱娜,请问有什么需要帮忙的么?" )
	Text( 1, "我要回冰狼堡", GoTo, 1318, 510, "darkblue" )

end


------------------------------------------------------------
-- 冰雪岛-----海盗杰里米
------------------------------------------------------------
function r_talk224()


	Talk( 1, "海盗杰里米:“我是海盗!我是快乐的海盗!我是快乐的老海盗!”" )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )
-----------------海盗杰里米---------金牛
	AddNpcMission	(5651)
	AddNpcMission	(5652)
end

------------------------------------------------------------
-- 鸣沙岛-----杰克船长
------------------------------------------------------------
function r_talk225()


	Talk( 1, "杰克船长:呀呵!我就是人称玉树临风赛潘安,富可敌国比盖茨的沙漠闪光侠亨利八世!" )

	AddNpcMission ( 309 )
	AddNpcMission ( 310 )
	AddNpcMission ( 312 )
	AddNpcMission ( 313 )
	AddNpcMission ( 314 )
	AddNpcMission ( 315 )
	AddNpcMission ( 316 )
	AddNpcMission ( 328 )
	AddNpcMission ( 329 )
	AddNpcMission ( 333 )
	AddNpcMission ( 336 )
	AddNpcMission ( 483 )
	AddNpcMission ( 484 )

	-----------------杰克船长---------金牛
	AddNpcMission	(5639)
	AddNpcMission	(5640)
end


------------------------------------------------------------
-- 冰狼堡下城-----鲁格兰
------------------------------------------------------------
function r_talk226()


	Talk( 1, "鲁格兰:唉!我的弟弟总是给我惹麻烦,最后都要我来收场,他实在是太爱恶作剧了." )
	
	Talk( 2, "鲁格兰:唉!我的弟弟总是给我惹麻烦,最后都要我来收场,他实在是太爱恶作剧了.")
	Text( 2, "你给我的戒指丢了", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "鲁格兰:啊,那么贵重的戒指居然丢了?你要赔偿我50000海盗币,我才会重新给你戒指")
	Text( 3, "好吧,这里是50000海盗币.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "太黑了吧,我没有那么多钱", CloseTalk )

	Talk( 4, "鲁格兰:拿好了,这个戒指给你啦")

	Talk( 5, "鲁格兰:你好像没有那么多钱哦……要50000海盗币")

	InitTrigger()
	-----------检测任务拿了鱼鳞戒指,但是丢了不见了
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 296 )
	AddNpcMission ( 297 )
	AddNpcMission ( 298 )
	AddNpcMission ( 302 )
	AddNpcMission ( 303 )

end


------------------------------------------------------------
-- 骷髅营地补给站-----克拉拉大师
------------------------------------------------------------
function r_talk227()

	Talk( 1, "克拉拉大师:所有人都以为我有神力,其实是他们没有一颗坚强的心." )

	AddNpcMission ( 299 )
	AddNpcMission ( 300 )
	AddNpcMission ( 469 )
	AddNpcMission ( 391 )
	----------------1.7
	AddNpcMission (5121 )
	AddNpcMission (5122 )
	AddNpcMission (5123 )
end

------------------------------------------------------------
-- 卡尔加德补给站-----萨南·格力德
------------------------------------------------------------
function r_talk228()

	Talk( 1, "萨南·格力德:唉……不知道什么时候我才能成为雷霆堡的军官啊,难道是我的魅力不够?!!" )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----海蓝·微风
------------------------------------------------------------
function r_talk229()

	Talk( 1, "海蓝·微风:记住哦,看到好看的树根一定要寄给我哦." )

	AddNpcMission ( 840 )
---------------白羊
	AddNpcMission	(5591)
	AddNpcMission	(5592)
	AddNpcMission ( 6048 )
	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----賽·魔力
------------------------------------------------------------
function r_talk230()

	Talk( 1, "賽·魔力:噢呵呵呵呵,象我这样热心而又美丽的女士世界上已经不多了." )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )
-----------------賽·魔力---------金牛
	AddNpcMission	(5625)
	AddNpcMission	(5626)
end

------------------------------------------------------------
-- 卡尔加德补给站-----卡休·碎石
------------------------------------------------------------
function r_talk231()

	Talk( 1, "卡休·碎石:我最讨厌那边那个肥老太婆了,还自称年轻貌美,我吐的石头都碎掉了." )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )
----------卡休·碎石-------双子
	AddNpcMission	(5714)
	AddNpcMission	(5715)
end

------------------------------------------------------------
-- 冰极补给站-----塞维·朱尔
------------------------------------------------------------
function r_talk232()

	Talk( 1, "塞维·朱尔:这里风很大,可是我的皮肤依然细腻而又光泽,我用了纯天然冰极海藻泥,要不要来一点." )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- 冰极补给站-----凯文·狼
------------------------------------------------------------
function r_talk233()

	Talk( 1, "凯文·狼:我是一匹来自北方的狼,走在无垠的旷野中～～～～～" )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- 白银城-----潮流发型师·卡特
------------------------------------------------------------
function r_talk234()

	Talk( 1, "卡特:嘿朋友,想改变一下自己的造型么?把握潮流体现真我,来换个发型吧." )
	Text( 1, "我要理发", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "卡特:其实...我很久没有理发了,如果没有理好你可别怪我哦,你准备好要转换头型了么?对了,你的把你的理发券给我看看,没有带理发券可不行哦.")
	Text( 2, "是的,我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "算了,我还是想想吧", CloseTalk )

	Talk( 3, "卡特:好像没有理发券哦,我不能给你理发的.")

	AddNpcMission ( 6085 )

end

------------------------------------------------------------
--冰狼堡-----旅行商人

------------------------------------------------------------
function rr_talk529()

	Talk( 1, "卡特:嘿朋友,想改变一下自己的造型么?把握潮流体现真我,来换个发型吧." )
	Text( 1, "我要理发", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "卡特:其实...我很久没有理发了,如果没有理好你可别怪我哦,你准备好要转换头型了么?对了,你的把你的理发券给我看看,没有带理发券可不行哦.")
	Text( 2, "是的,我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "算了,我还是想想吧", CloseTalk )

	Talk( 3, "卡特:好像没有理发券哦,我不能给你理发的.")
	--巨蟹特别行动任务二----
	AddNpcMission ( 5861 )
	

end
------------------------------------------------------------
-- 废矿补给站-----饰品商人·布卡
------------------------------------------------------------
function r_talk235()

	Talk( 1, "饰品商人·布卡:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

end

------------------------------------------------------------
-- 赖安森林补给站-----饰品商人·里克
------------------------------------------------------------
function r_talk236()

	Talk( 1, "饰品商人·里克:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)

	-----------------饰品商人·里克---------金牛
	AddNpcMission	(5649)
	AddNpcMission	(5650)
end

------------------------------------------------------------
-- 瓦尔诺补给站-----饰品商人·费拉里
------------------------------------------------------------
function r_talk237()

	Talk( 1, "饰品商人·费拉里:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)

end

------------------------------------------------------------
-- 雷霆堡-----饰品商人·维克多
------------------------------------------------------------
function r_talk238()

	Talk( 1, "饰品商人·维克多:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- 卡尔加德补给站-----饰品商人·艾尔
------------------------------------------------------------
function r_talk239()

	Talk( 1, "饰品商人·艾尔:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

end

------------------------------------------------------------
-- 巴布补给站-----饰品商人·艾伦
------------------------------------------------------------
function r_talk240()

	Talk( 1, "饰品商人·艾伦:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
-- 冰极补给站-----饰品商人·瑞恩
------------------------------------------------------------
function r_talk241()

	Talk( 1, "饰品商人·瑞恩:我这里有上等的珠宝戒指和项链哦,没关系,你先看看那个适合你,价钱嘛我这里最公正了." )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)
----------饰品商人·瑞恩-------双子
	AddNpcMission	(5712)
	AddNpcMission	(5713)
end


------------------------------------------------------------
-- 白银城-----清洗机
------------------------------------------------------------
function r_talk252()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "这是一台古老的清洗机,在这里可以洗涤你的一切,你需要清洗么?每次200G." )
	Text( 1, "清洗污泥", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "清洗圣诞盒子", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "哇!好脏的盒子!清洗这么脏的盒子必须支付10000海盗币" )
	Text( 3, "确定清洗", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "好漂亮的盒子!打开会有惊喜吧" )
	Talk( 2, "清洗失败,没有支付足够的金钱或者没有需要清洗的物品" )
end


------------------------------------------------------------
-- 考古队长-----考古学家
------------------------------------------------------------
function r_talk253()
	
	Talk( 1, "考古学家:你好啊,我是隶属考古协会的一名专业的考古学家,我研究了好多古老的咒文咒术,不知道你有什么事情来找我呢?" )
	Text( 1, "有关烈焰封印", JumpPage, 3)

	Talk( 3, "考古学家:嗯,既然你找到我,那我就不推辞了,古老的烈焰封印是很复杂和繁琐的,但是没关系,我可以解除这些封印,只要你给我找到相应的符文就可以了." )
	Text( 3, "幻法之袍", JumpPage, 6)
	Text( 3, "幻化之杖", JumpPage, 7)
	Text( 3, "幻灵精神法杖", JumpPage, 8)
	Text( 3, "幻灵披风", JumpPage, 9)
	Text( 3, "幻灵外套", JumpPage, 10)
	Text( 3, "幻灵纹身", JumpPage, 11)
	Text( 3, "幻灵战甲", JumpPage, 12)
	Text( 3, "下一页", JumpPage, 4)

	Talk( 4, "考古学家:嗯,既然你找到我,那我就不推辞了,古老的烈焰封印是很复杂和繁琐的,但是没关系,我可以解除这些封印,只要你给我找到相应的符文就可以了." )
	Text( 4, "幻灵之怒吼", JumpPage, 13)
	Text( 4, "幻灵之咆哮", JumpPage, 14)
	Text( 4, "幻灵之舞", JumpPage, 15)
	Text( 4, "幻灵之牙", JumpPage, 16)
	Text( 4, "幻咒之袍", JumpPage, 17)
	Text( 4, "幻灵战甲手套", JumpPage, 18)
	Text( 4, "幻灵战甲靴", JumpPage, 19)
	Text( 4, "下一页", JumpPage, 5)

	Talk( 5, "考古学家:嗯,既然你找到我,那我就不推辞了,古老的烈焰封印是很复杂和繁琐的,但是没关系,我可以解除这些封印,只要你给我找到相应的符文就可以了." )
	Text( 5, "幻灵护手", JumpPage, 20)
	Text( 5, "幻灵护腿", JumpPage, 21)
	Text( 5, "幻咒手套", JumpPage, 22)
	Text( 5, "幻咒靴", JumpPage, 23)
	Text( 5, "幻法手套", JumpPage, 24)
	Text( 5, "幻法靴", JumpPage, 25)
	Text( 5, "幻灵皮手套", JumpPage, 26)
	Text( 5, "幻灵皮靴", JumpPage, 27)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1912, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1912, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 791, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "考古学家:要解除幻法之袍的封印你必须给我以下物品:烈焰封印的幻法之袍、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 6, "解除幻法之袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1915, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1915, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 794, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "考古学家:要解除幻化之杖的封印你必须给我以下物品:烈焰封印的幻化之杖、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 7, "解除幻化之杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1908, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1908, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 787, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "考古学家:要解除幻灵精神法杖的封印你必须给我以下物品:烈焰封印的幻灵精神法杖、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 8, "解除幻灵精神法杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1926, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1926, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 805, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "考古学家:要解除幻灵披风的封印你必须给我以下物品:烈焰封印的幻灵披风、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 9, "解除幻灵披风的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1900, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1900, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 779, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "考古学家:要解除幻灵外套的封印你必须给我以下物品:烈焰封印的幻灵外套、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 10, "解除幻灵外套的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1886, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1886, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 765, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "考古学家:要解除幻灵纹身的封印你必须给我以下物品:烈焰封印的幻灵纹身、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 11, "解除幻灵纹身的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1889, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1889, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 768, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "考古学家:要解除幻灵战甲的封印你必须给我以下物品:烈焰封印的幻灵战甲、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 12, "解除幻灵战甲的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1904, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1904, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 783, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "考古学家:要解除幻灵之怒吼的封印你必须给我以下物品:烈焰封印的幻灵之怒吼、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 13, "解除幻灵之怒吼的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1893, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1893, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 772, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "考古学家:要解除幻灵之咆哮的封印你必须给我以下物品:烈焰封印的幻灵之咆哮、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 14, "解除幻灵之咆哮的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1896, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1896, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 775, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "考古学家:要解除幻灵之舞的封印你必须给我以下物品:烈焰封印的幻灵之舞、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 15, "解除幻灵之舞的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1922, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1922, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 801, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "考古学家:要解除幻灵之牙的封印你必须给我以下物品:烈焰封印的幻灵之牙、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 16, "解除幻灵之牙的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1918, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1918, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 797, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "考古学家:要解除幻咒之袍的封印你必须给我以下物品:烈焰封印的幻咒之袍、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 17, "解除幻咒之袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1988, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1988, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0807, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻灵战甲手套、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 18, "解除幻灵战甲手套的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1989, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1989, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0808, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻灵战甲靴、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 19, "解除幻灵战甲靴的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1990, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1990, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0809, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 20, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻灵护手、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 20, "解除幻灵护手的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1991, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1991, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0810, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 21, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻灵护腿、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 21, "解除幻灵护腿的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1992, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1992, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0811, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 22, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻咒手套、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 22, "解除幻咒手套的封印", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 1994, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1994, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0813, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 23, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻咒靴、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 23, "解除幻咒靴的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1993, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1993, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0812, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 24, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻法手套、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 24, "解除幻法手套的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1995, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1995, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0814, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 25, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻法靴、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 25, "解除幻法靴的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1996, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1996, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0815, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 26, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻灵皮手套、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 26, "解除幻灵皮手套的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1997, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1997, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0877, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 27, "考古学家:要解除幻灵战甲手套的封印你必须给我以下物品:烈焰封印的幻灵皮靴、费诺符石x5、奥加符石x10、纳特符石x10,为了研究解除封印我付出了极大的代价,请支付给我60万海盗币作为解封费用" )
	Text( 27, "解除幻灵皮靴的封印", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 30, "考古学家:很抱歉,你给我的物品不对,我无法为你解除封印." )


end

------------------------------------------------------------
-- 废灵之都-----考古学家
------------------------------------------------------------
function r_talk254()
	
	Talk( 1, "考古学家:你好啊,我是隶属考古协会的一名专业的考古学家,我负责研究废灵之都,不知道你有什么事情来找我呢?" )
	Text( 1, "有关废灵之都", JumpPage, 2)

	Talk( 2, "考古学家:我已经研究废灵之都很久了,我可以帮你利用一些古代符文来解除那些武器上的封印." )
	Text( 2, "解除封印", JumpPage, 3)
	
	Talk( 3, "考古学家:在废灵之都有很多不死封印了的武器,通过多年的研究,我终于可以解开这些封印了,不过我需要借助一些符石的力量才行.你需要解开封印么?" )
	Text( 3, "暗影之牙", JumpPage, 6)
	Text( 3, "海妖披风", JumpPage, 7)
	Text( 3, "破魔法杖", JumpPage, 8)
	Text( 3, "死灵之殇", JumpPage, 9)
	Text( 3, "亡灵短袍", JumpPage, 10)
	Text( 3, "亡灵之触", JumpPage, 11)
	Text( 3, "巫毒法袍", JumpPage, 12)
	Text( 3, "幽灵铠甲", JumpPage, 13)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1920, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1920, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 799, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "考古学家:要解除暗影之牙的封印你必须给我以下物品:不死封印的暗影之牙、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 6, "解除暗影之牙的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1924, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1924, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 803, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "考古学家:要解除海妖披风的封印你必须给我以下物品:不死封印的海妖披风、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 7, "解除海妖披风的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1906, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1906, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 785, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "考古学家:要解除破魔法杖的封印你必须给我以下物品:不死封印的破魔法杖、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 8, "解除破魔法杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1891, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1891, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 770, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "考古学家:要解除死灵之殇的封印你必须给我以下物品:不死封印的死灵之殇、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 9, "解除死灵之殇的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1898, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1898, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 777, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "考古学家:要解除亡灵短袍的封印你必须给我以下物品:不死封印的亡灵短袍、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 10, "解除亡灵短袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1902, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1902, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 781, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "考古学家:要解除亡灵之触的封印你必须给我以下物品:不死封印的亡灵之触、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 11, "解除亡灵之触的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1910, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1910, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 789, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "考古学家:要解除巫毒法袍的封印你必须给我以下物品:不死封印的巫毒法袍、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 12, "解除巫毒法袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1884, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1884, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 763, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "考古学家:要解除幽灵铠甲的封印你必须给我以下物品:不死封印的幽灵铠甲、亚伦符石x5、加而符石x5、卡那符石x10,为了研究解除封印我付出了极大的代价,请支付给我20万海盗币作为解封费用" )
	Text( 13, "解除幽灵铠甲的封印", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "考古学家:很抱歉,你给我的物品不对,我无法为你解除封印." )

end

------------------------------------------------------------
-- 魔方世界-----考古学家
------------------------------------------------------------
function r_talk255()
	
	Talk( 1, "考古学家:你好啊,我是隶属考古协会的一名专业的考古学家,我负责研究魔方世界,不知道你有什么事情来找我呢?" )
	Text( 1, "有关魔方世界", JumpPage, 2)

	Talk( 2, "考古学家:我已经研究魔方世界很久了,我可以帮你利用一些古代符文来解除那些武器上的封印." )
	Text( 2, "解除封印", JumpPage, 3)
	
	Talk( 3, "考古学家:在魔方世界有很多被寒冰封印了的武器,通过多年的研究,我终于可以解开这些封印了,不过我需要借助一些符石的力量才行.你需要解开封印么?" )
	Text( 3, "迷法之杖", JumpPage, 6)
	Text( 3, "迷幻斗篷", JumpPage, 7)
	Text( 3, "迷幻之刺", JumpPage, 8)
	Text( 3, "迷之裁决", JumpPage, 9)
	Text( 3, "迷之长枪", JumpPage, 10)
	Text( 3, "迷之斗篷", JumpPage, 11)
	Text( 3, "迷之法袍", JumpPage, 12)
	Text( 3, "下一页", JumpPage, 4)

	Talk( 4, "考古学家:在魔方世界有很多被寒冰封印了的武器,通过多年的研究,我终于可以解开这些封印了,不过我需要借助一些符石的力量才行.你需要解开封印么?" )
	Text( 4, "迷之利刃", JumpPage, 13)
	Text( 4, "迷之纹身", JumpPage, 14)
	Text( 4, "迷之战甲", JumpPage, 15)
	Text( 4, "迷咒法袍", JumpPage, 16)
	Text( 4, "迷咒法杖", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "考古学家:要解除迷法之杖的封印你必须给我以下物品:寒冰封印的迷法之杖、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 6, "解除迷法之杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "考古学家:要解除迷幻斗篷的封印你必须给我以下物品:寒冰封印的迷幻斗篷、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 7, "解除迷幻斗篷的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "考古学家:要解除迷幻之刺的封印你必须给我以下物品:寒冰封印的迷幻之刺、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 8, "解除迷幻之刺的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "考古学家:要解除迷之裁决的封印你必须给我以下物品:寒冰封印的迷之裁决、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 9, "解除迷之裁决的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "考古学家:要解除迷之长枪的封印你必须给我以下物品:寒冰封印的迷之长枪、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 10, "解除迷之长枪的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "考古学家:要解除迷之斗篷的封印你必须给我以下物品:寒冰封印的迷之斗篷、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 11, "解除迷之斗篷的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "考古学家:要解除迷之法袍的封印你必须给我以下物品:寒冰封印的迷之法袍、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 12, "解除迷之法袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "考古学家:要解除迷之利刃的封印你必须给我以下物品:寒冰封印的迷之利刃、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 13, "解除迷之利刃的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "考古学家:要解除迷之纹身的封印你必须给我以下物品:寒冰封印的迷之纹身、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 14, "解除迷之纹身的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "考古学家:要解除迷之战甲的封印你必须给我以下物品:寒冰封印的迷之战甲、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 15, "解除迷之战甲的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "考古学家:要解除迷咒法袍的封印你必须给我以下物品:寒冰封印的迷咒法袍、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 16, "解除迷咒法袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "考古学家:要解除迷咒法杖的封印你必须给我以下物品:寒冰封印的迷咒法杖、纳卡符石x5、法兰符石x10、特尔符石x20,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 17, "解除迷咒法杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "考古学家:很抱歉,你给我的物品不对,我无法为你解除封印." )

end


------------------------------------------------------------
-- 阴暗沼泽-----考古学家队长
------------------------------------------------------------
function r_talk256()
	
	Talk( 1, "考古学家:你好啊,我是隶属考古协会的一名专业的考古学家,我负责研究阴暗沼泽,不知道你有什么事情来找我呢?" )
	Text( 1, "有关阴暗沼泽", JumpPage, 2)

	Talk( 2, "考古学家:我已经研究阴暗沼泽很久了,我可以帮你利用一些古代符文来解除那些武器上的封印,另外如果你有阴暗沼泽里的污油的话,我可以帮制作火种抵御严寒." )
	Text( 2, "解除封印", JumpPage, 3)
	Text( 2, "有关火种", JumpPage, 5)
	
	Talk( 3, "考古学家:在阴暗沼泽有很多被污泥封印了的武器,通过多年的研究,我终于可以解开这些封印了,不过我需要借助一些符石的力量才行.你需要解开封印么?" )
	Text( 3, "符文外衣", JumpPage, 6)
	Text( 3, "武士诅咒纹身", JumpPage, 7)
	Text( 3, "咒火斗篷", JumpPage, 8)
	Text( 3, "咒术之杖", JumpPage, 9)
	Text( 3, "咒文法杖", JumpPage, 10)
	Text( 3, "咒文之袍", JumpPage, 11)
	Text( 3, "咒纹刺剑", JumpPage, 12)
	Text( 3, "下一页", JumpPage, 4)

	Talk( 4, "考古学家:在阴暗沼泽有很多被污泥封印了的武器,通过多年的研究,我终于可以解开这些封印了,不过我需要借助一些符石的力量才行.你需要解开封印么?" )
	Text( 4, "咒纹紧身衣", JumpPage, 13)
	Text( 4, "咒纹重剑", JumpPage, 14)
	Text( 4, "诅咒之刺", JumpPage, 15)
	Text( 4, "诅咒之灵钢甲", JumpPage, 16)
	Text( 4, "诅咒之吻", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5, "考古学家:要制作火种你必须拥有下列物品:污油x5、打火石x1、布条x5,如果你有以上物品再支付我200G的话我可以帮你制成一个火种" )
	Text( 5, "制作火种", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "考古学家:要解除符文外衣的封印你必须给我以下物品:污泥封印的符文外衣、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 6, "解除符文外衣的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "考古学家:要解除武士诅咒纹身的封印你必须给我以下物品:污泥封印的武士诅咒纹身、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 7, "解除武士诅咒纹身的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "考古学家:要解除咒火斗篷的封印你必须给我以下物品:污泥封印的咒火斗篷、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 8, "解除咒火斗篷的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "考古学家:要解除咒术之杖的封印你必须给我以下物品:污泥封印的咒术之杖、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 9, "解除咒术之杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "考古学家:要解除咒术之杖的封印你必须给我以下物品:污泥封印的咒文法杖、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 10, "解除咒文法杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "考古学家:要解除咒文之袍的封印你必须给我以下物品:污泥封印的咒文之袍、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 11, "解除咒文之袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "考古学家:要解除咒纹刺剑的封印你必须给我以下物品:污泥封印的咒纹刺剑、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 12, "解除咒纹刺剑的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "考古学家:要解除咒纹紧身衣的封印你必须给我以下物品:污泥封印的咒纹紧身衣、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 13, "解除咒纹紧身衣的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "考古学家:要解除咒纹重剑的封印你必须给我以下物品:污泥封印的咒纹重剑、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 14, "解除咒纹重剑的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "考古学家:要解除诅咒之刺的封印你必须给我以下物品:污泥封印的诅咒之刺、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 15, "解除诅咒之刺的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "考古学家:要解除诅咒之灵钢甲的封印你必须给我以下物品:污泥封印的诅咒之灵钢甲、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 16, "解除诅咒之灵钢甲的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "考古学家:要解除诅咒之吻的封印你必须给我以下物品:污泥封印的诅咒之吻、沃伦符石x5、索思符石x10、肯特符石x5,为了研究解除封印我付出了极大的代价,请支付给我40万海盗币作为解封费用" )
	Text( 17, "解除诅咒之吻的封印", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "考古学家:很抱歉,你给我的物品不对,我无法为你解除封印." )

	Talk( 31, "考古学家:很抱歉,你必须拥有下列物品:污油x5、打火石x1、布条x5,另外支付我200G手续费我才会给你制作火种." )


end


------------------------------------------------------------
-- 白银城-----槟果
------------------------------------------------------------
function r_talk242()
	Talk( 14, "槟果:给我一张圣诞宝石兑换券,你将得到高级宝石." )
	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14, "兑换3颗风灵石",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "兑换3颗鹰眼石",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "兑换3颗岩玉",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "兑换3颗炎玉",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "兑换1颗加纳之神",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15, "兑换失败,您身上好像没有圣诞宝石兑换券啊,或者背包已锁或没有空格!" )
	Talk( 16, "圣诞快乐!" )

	Talk( 1, "槟果:我这里有海盗王最新最快的消息哦,而且是最最可靠的,你想打听一点什么?")
	--Text( 1, "海盗兑奖券", JumpPage, 17 )
	Text( 1, "圣诞宝石兑奖券", JumpPage, 14 )
	Text( 1, "高级宝石兑换券", JumpPage, 12 )
	Text( 1, "兑换一级精炼石兑换券", JumpPage, 2 )
	Text( 1, "兑换二级精炼石兑换券", JumpPage, 3 )
	Text( 1, "精炼石兑换券", JumpPage, 4 )
        Text( 1, "宝石兑奖券", JumpPage, 5 )
        Text( 1, "合成许愿石", JumpPage, 6 )
--	Text( 1, "月饼兑换", JumpPage, 20 )


--	Talk( 20, "槟果:你有吃不完的月饼吗?在我这里可以兑换许多好东西." )
--	InitTrigger() --99个：迷之锁10个
--	TriggerCondition( 1, HasItem,3915, 99 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 99 )
--	TriggerAction( 1, GiveItem, 2440, 10, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--	Text( 20, "兑换迷之锁10个",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --100个：财富1个
--	TriggerCondition( 1, HasItem,3915, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 100 )
--	TriggerAction( 1, GiveItem, 3096, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换财富增幅器1个",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --200个：藏宝图1个
--	TriggerCondition( 1, HasItem,3915, 200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 200 )
--	TriggerAction( 1, GiveItem, 1092, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换藏宝图1个",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --300个：99包1个
--	TriggerCondition( 1, HasItem,3915, 300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 300 )
--	TriggerAction( 1, GiveItem, 1095, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换99包1个",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --2000个：加纳之神（精神加5）
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 1012, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换加纳之神1颗",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000个：炎玉（力量加5）
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 863, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换炎玉1颗",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000个：岩玉（体质加5）
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 862, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换岩玉1颗",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000个：鹰眼石（专注加5）
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 861, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换鹰眼石1颗",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000个：风灵石（敏捷加5）
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 860, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "兑换风灵石1颗",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --3000个：65 BOSS衣服1件
--	TriggerCondition( 1, HasItem,3915,3000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 3000)
--	TriggerAction( 1, GiveItem, 241, 1, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--      Text( 20, "兑换65 BOSS衣服1件",MultiTrigger, GetMultiTrigger(), 1) 

--	Talk( 21, "兑换失败,您身上好像没有足够的月饼啊,或者背包已锁或没有空格!" )

	--Text( 1, "对换灯笼", JumpPage, 7 )
	--Text( 1, "获得“三月精灵”", JumpPage, 10 )
      
	
	Talk( 2, "槟果:你需要给我一张一级精炼石兑换券,你将得到一颗一级精炼石,随机获得一颗一级宝石.")
	Text( 2, "确认兑换", TransferDiamond, 1)

	Talk( 3, "槟果:你需要给我一张二级精炼石兑换券,你将得到一颗二级精炼石,随机获得一颗二级宝石.")
	Text( 3, "确认兑换", TransferDiamond, 2)

	Talk( 4, "槟果:给我一张精炼石兑换券,你将得到一颗一级精炼石.")
	Text( 4, "确认兑换", TransferDiamond, 3)

------------------------------------------08商品调整 kokora---------------------------------
--	Talk( 5, "槟果:给我一张宝石兑换券,你将得到一颗一级宝石.")
--	Text( 5, "确认兑换", TransferDiamond, 4)
	Talk( 5, "槟果:给我一张高级宝石兑换券 ,您将获得10000海盗币的惠赠.")

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 3886, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3886, 1 )
	TriggerAction( 1, AddMoney, 10000)
	TriggerFailure( 1, JumpPage, 25 ) 
	Text( 5, "兑换海盗币",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 25, "槟果:您身上似乎没有高级宝石兑换券啊!请检查您的背包是否已锁定^ ^")



	Talk( 17, "槟果:你有海盗兑奖券吗?就是那种很漂亮的带有数字的彩球.")
	
	InitTrigger()--兑换"IPOD"兑换券
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "我有海盗兑奖券8",MultiTrigger, GetMultiTrigger(), 1)


	--InitTrigger()--兑换摩力符石
	--TriggerCondition( 1, HasItem, 2240, 1 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem, 2240, 1 )
 	--TriggerAction( 1, GiveItem, 1028, 1 ,4)
	--TriggerAction( 1,JumpPage, 19 )------------------
	--TriggerFailure( 1, JumpPage, 18 )
	--Text( 17, "我有海盗兑奖券6",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17, "我有海盗兑奖券6",JumpPage, 19)
	Talk(19,"你真的要兑换吗?")
	Text( 19, "确定兑换",GetChaName_5, 1)

	InitTrigger()--兑换精灵硬币99个
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "我有海盗兑奖券9",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- 兑换铸造图纸"密文图纸"１张
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "我有海盗兑奖券7",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--兑换加速成长果1个
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "我有海盗兑奖券5",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17, "其它海盗兑奖券数", GetChaName_4, 1)



	Talk( 18, "槟果:您身上好像没有适合的海盗兑换券啊!请检查您的背包是否已锁定,且至少有1个空格")

 	InitTrigger() --合成许愿石
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "槟果:给我五个暗淡的许愿石和一个黏合剂,我将会为你合成一颗闪光的许愿石.")
	Text( 6, "确认合成",MultiTrigger, GetMultiTrigger(), 1)        
 	
	InitTrigger() --对换灯笼
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7, "槟果:给我十五张 红纸 ,十五根 竹签 和一根 奇怪的蜡烛 ,我会给你一个灯笼.")
	Text( 7, "确认对换",MultiTrigger, GetMultiTrigger(), 1) 
     
	Talk( 8, "槟果:您身上好像没有足够的许愿石和粘合剂啊!请检查您的背包是否已锁定,且至少有1个空格")
	Talk( 9, "槟果:您是不是没有足够的红纸,竹签或是奇怪的蜡烛啊!")

	InitTrigger() --兑换三月精灵
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10, "槟果:给我2个元宵灯笼和一颗精灵之魂就可以获得三月精灵,有关精灵之魂可以去“哈尔补给站”找“海港指挥·瓦雷米”问问看.")
	Text( 10, "确认对换",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11, "槟果:三月精灵必须要有2个元宵灯笼和一个精灵之魂才能得到哦.请检查您的背包是否已锁定,且至少有1个空格")
	
	Talk( 12, "槟果:给我一张高级宝石兑换券 ,你可以兑换三颗以下四种宝石中的一种.")

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12, "兑换风灵石",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "兑换鹰眼石",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "兑换岩玉",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "兑换炎玉",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13, "槟果:您身上似乎没有高级宝石兑换券啊!请检查您的背包是否已锁定,且至少有3个空格")
	----------------------------------------30个月饼
	--InitFuncList()
	--AddFuncList( GiveItem, 374, 1, 7 )
	--AddFuncList( GiveItem, 361, 1, 7 )
	--AddFuncList( GiveItem, 314, 1, 7 )
	--AddFuncList( GiveItem, 298, 1, 7 )
	--AddFuncList( GiveItem, 339, 1, 7 )
	--AddFuncList( GiveItem, 354, 1, 7 )

--	InitTrigger()
--	TriggerCondition( 1, HasItem, 3915, 30 )
--	TriggerAction( 1, TakeItem, 3915, 30 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
--	TriggerFailure( 1, JumpPage, 11 )
--	Talk( 3, "槟果:30个月饼啊,可以获得35级各职业任意装备（衣服）一件,你确定要么?")
--	Text( 3, "我确定",MultiTrigger, GetMultiTrigger(), 1)
--	Text( 3, "那还是算了吧",CloseTalk )

end
------------------------------------------------------------
-- 白银城-----活动专员
------------------------------------------------------------
function mmm_talk01()
	Talk( 1, bgtalk1_1 )
	--Text( 1, "幸运字母卡兑奖", JumpPage, 18 )	
	Text( 1, bganswer1_13, JumpPage, 13)
	Text( 1, bganswer1_14, JumpPage, 14)
	Text( 1, bganswer1_15, JumpPage, 15)
	Text( 1, bganswer1_16, JumpPage, 16)
	Text( 1, bganswer1_17, JumpPage, 17)
------------------------------------------------------------------------------------------------------------------------
	--InitTrigger() --兑换摩力最新酷装１套
	--TriggerCondition( 1, HasItem, 3850, 3 )---------a
	--TriggerCondition( 1, HasItem, 3853, 1 )---------d
	--TriggerCondition( 1, HasItem, 3856, 1 )--------g
	--TriggerCondition( 1, HasItem, 3857, 1 )---------h
	--TriggerCondition( 1, HasItem, 3858, 1 )---------i
	--TriggerCondition( 1, HasItem, 3863, 1 )---------n
	--TriggerCondition( 1, HasItem, 3864, 1 )---------o	
	--TriggerCondition( 1, HasItem, 3872, 1 )---------w

        --TriggerAction( 1, TakeItem,   3850, 3 )
	--TriggerAction( 1, TakeItem,   3853, 1 )
	--TriggerAction( 1, TakeItem,   3856, 1 )
	--TriggerAction( 1, TakeItem,   3857, 1 )
	--TriggerAction( 1, TakeItem,   3858, 1 )
	--TriggerAction( 1, TakeItem,   3863, 1 )
	--TriggerAction( 1, TakeItem,   3864, 1 )
	--TriggerAction( 1, TakeItem,   3872, 1 )
	--TriggerAction( 1, GiveItem,227, 99,1 )
	--TriggerFailure( 1, JumpPage, 19 ) 
	--Talk( 18, "爬爬:本周的幸运词组是: haidaowang,可兑换守护精灵饲料99个")
	--Text(18, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)
	--Talk( 19, "爬爬:您身上似乎没有足够的卡片啊!请检查您的背包是否已锁定!")

--------------------------------------------------------------------------------------------------------------------------	
	Talk( 18, "爬爬:本周的幸运词组是: hdwshenguiqihang,可兑换70级boss装衣服1件")
	Text(18, "确认兑换",  GetChaName_6, 1)
-----------------------------------------------------------------------------------------------------------------
	--InitTrigger() --兑换加速成长果99个
	--TriggerCondition( 1, HasItem, 3858, 1 )---------i
	--TriggerCondition( 1, HasItem, 3864, 2 )---------o
	--TriggerCondition( 1, HasItem, 3861, 1 )--------l
	--TriggerCondition( 1, HasItem, 3862, 1 )---------m
	--TriggerCondition( 1, HasItem, 3874, 1 )---------y
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem,   3858, 1 )
	--TriggerAction( 1, TakeItem,   3864, 2 )
	--TriggerAction( 1, TakeItem,   3861, 1 )
	--TriggerAction( 1, TakeItem,   3862, 1 )
	--TriggerAction( 1, TakeItem,   3874, 1 )
	--TriggerAction( 1, GiveItem, 578 , 99,1 )
	--TriggerFailure( 1, JumpPage, 19 ) 
	--Talk( 18, "爬爬:本周的幸运词组是: moliyo,可兑换加速成长果99个")
	--Text(18, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)
	--Talk( 19, "爬爬:您身上似乎没有足够的卡片啊!请检查您的背包是否已锁定,而且要保证留有1个空格!")
--------------------------------------------------------------------------------------------------------------------------------------------
--	InitTrigger() --兑换摩力符石1个
--	TriggerCondition( 1, HasItem, 3850, 3 )--------a
--	TriggerCondition( 1, HasItem, 3853, 1 )---------d
--	TriggerCondition( 1, HasItem, 3856, 1 )-------g
--	TriggerCondition( 1, HasItem, 3857, 1 )--------h
--	TriggerCondition( 1, HasItem, 3858, 1 )---------i
--	TriggerCondition( 1, HasItem, 3863, 1 )-------n
--	TriggerCondition( 1, HasItem, 3864, 1 )--------o
--	TriggerCondition( 1, HasItem, 3872, 1 )--------w
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--
--	TriggerAction( 1, TakeItem,  3850, 3 )
--	TriggerAction( 1, TakeItem,  3853, 1 )
--	TriggerAction( 1, TakeItem,  3856, 1 )
--	TriggerAction( 1, TakeItem,  3857, 1 )
--	TriggerAction( 1, TakeItem,  3858, 1 )
--	TriggerAction( 1, TakeItem,  3863, 1 )
--	TriggerAction( 1, TakeItem,  3864, 1 )
--	TriggerAction( 1, TakeItem,  3872, 1 )
--	TriggerAction( 1, GiveItem, 1028 , 1,4 )
--	TriggerFailure( 1, JumpPage, 19 ) 
--	Talk( 18, "爬爬:本周的幸运词组是: haidaowang,可兑换摩力符石1个")
--	Text(18, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)
--	Talk( 19, "爬爬:您身上似乎没有足够的卡片啊!请检查您的背包是否已锁定,而且要保证留有1个空格!")
----------------------------------------------------------------------------------------------------------------------------------------------------------
	--InitTrigger() --兑换假期欢乐杂志1本
	--TriggerCondition( 1, HasItem, 3858, 2 )---------i
	--TriggerCondition( 1, HasItem, 3864, 1 )---------o
	--TriggerCondition( 1, HasItem, 3861, 1 )--------l
	--TriggerCondition( 1, HasItem, 3871, 1 )---------v
	--TriggerCondition( 1, HasItem, 3854, 2 )---------e
	--TriggerCondition( 1, HasItem, 3869, 1 )---------t
	--TriggerCondition( 1, HasItem, 3857, 1 )---------h
	--TriggerCondition( 1, HasItem, 3868, 1 )--------s
	--TriggerCondition( 1, HasItem, 3856, 1 )---------g
	--TriggerCondition( 1, HasItem, 3850, 1 )---------a
	--TriggerCondition( 1, HasItem, 3862, 1 )---------m
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem,   3858, 2 )
	--TriggerAction( 1, TakeItem,   3864, 1 )
	--TriggerAction( 1, TakeItem,   3861, 1 )
	--TriggerAction( 1, TakeItem,   3871, 1 )
	--TriggerAction( 1, TakeItem,   3854, 2 )
	--TriggerAction( 1, TakeItem,   3869, 1 )
	--TriggerAction( 1, TakeItem,   3857, 1 )
	--TriggerAction( 1, TakeItem,   3868, 1 )
	--TriggerAction( 1, TakeItem,   3856, 1 )
	--TriggerAction( 1, TakeItem,   3850, 1 )
	--TriggerAction( 1, TakeItem,   3862, 1 )
	--TriggerAction( 1, GiveItem, 0853 , 1,4 )
	--TriggerFailure( 1, JumpPage, 19 ) 
	--Talk( 18, "爬爬:本周的幸运词组是: ilovethisgame,可兑换假期欢乐杂志1本")
	--Text(18, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)
	--Talk( 19, "爬爬:您身上似乎没有足够的卡片啊!请检查您的背包是否已锁定,而且要保证留有1个空格!")
	
	
	Talk( 13, bgtalk13)
	Talk( 14, bgtalk14)
	Talk( 15, bgtalk15)
	Talk( 16, bgtalk16)
	Talk( 17, bgtalk17)
	
end
------------------------------------------------------------
-- 白银城-----屈原
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "屈原:路漫漫其修远兮,吾将上下而求索…………")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---沙岚城---宠物管理员·朗拿度
-----------------------------------------------------------
function e_talk01 ()
	Talk( 1, "宠物管理员·朗拿度:恶魔果实将决定新一代精灵的种类,而新精灵的种类将决定“精灵附体”技能给角色加哪种属性!结婚后父母精灵的等级也都会降4级,多了解点相关信息吧" )
	Text( 1, "新一代精灵的特点" ,JumpPage, 2)
	Text( 1, "孕育新一代精灵的条件", JumpPage, 3)
	Text( 1, "孕育精灵", OpenEidolonMetempsychosis )
	Talk( 2, "宠物管理员·朗拿度:新一代精灵可学习精灵自爆技能和精灵附体技能,力之精灵,体之精灵,专之精灵,精之精灵和敏之精灵分别可以向对应提升角色的力量,体质,专注,精神和敏捷属性,运之精灵和邪之精灵分别可以为角色提供更多的掉料和更多的经验,而摩豆小子二世不但身兼运之精灵和邪之精灵两者的功能于一身,而且可以提升自身其他的属性.")	
	Talk( 3, "宠物管理员·朗拿度:普通精灵的等级对精灵宝宝的影响是很大的,我这里有很多精灵结婚的信息,对什么感兴趣你自己瞧吧.")
	Text( 3, "孕育力之精灵的条件", JumpPage, 4  )
	Text( 3, "孕育体之精灵的条件", JumpPage, 5  )
	Text( 3, "孕育专之精灵的条件", JumpPage, 6  )
	Text( 3, "孕育精之精灵的条件", JumpPage, 7  )
	Text( 3, "孕育敏之精灵的条件", JumpPage, 8  )
	Text( 3, "孕育运之精灵的条件", JumpPage, 9 )
	Text( 3, "孕育邪之精灵的条件", JumpPage, 10 )
	Text( 3, "孕育摩豆小子二世的条件", JumpPage, 11 )	
	Talk(  4, "宠物管理员·朗拿度:孕育力之精灵的条件是:两只不低于20级的普通精灵,力量恶魔果实1颗,千万别忘了背包里要有10个阿拉伯珍珠碎片,10个泣灵武士骸骨和一定金额的海盗币")
	Talk(  5, "宠物管理员·朗拿度:孕育体之精灵的条件是:两只不低于20级的普通精灵,勇者恶魔果实1颗,千万别忘了背包里要有10个破碎的阿拉伯珍珠,10个废灵弓箭手骸骨和一定金额的海盗币")
	Talk(  6, "宠物管理员·朗拿度:孕育专之精灵的条件是:两只不低于20级的普通精灵,能量恶魔果实1颗,千万别忘了背包里要有10个鱼刺,10个泥浆块和一定金额的海盗币")
	Talk(  7, "宠物管理员·朗拿度:孕育精之精灵的条件是:两只不低于20级的普通精灵,智慧恶魔果实1颗,千万别忘了背包里要有10个蝌蚪尾巴,10个泣灵弓箭手骸骨和一定金额的海盗币")
	Talk(  8, "宠物管理员·朗拿度:孕育敏之精灵的条件是:两只不低于20级的普通精灵,奇异恶魔果实1颗,千万别忘了背包里要有10个鲨鱼背鳍,10个沼泽枯木和一定金额的海盗币")
	Talk(  9, "宠物管理员·朗拿度:孕育运之精灵的条件是:两只不低于20级的普通精灵,青涩恶魔果实1颗,千万别忘了背包里要有10个美味乌贼肉,10个废灵武士骸骨和一定金额的海盗币")
	Talk(  10, "宠物管理员·朗拿度:孕育邪之精灵的条件是:两只不低于20级的普通精灵,神秘恶魔果实1颗,千万别忘了背包里要有10个闪光的阿拉伯珍珠碎片,10个污泥块和一定金额的海盗币")
	Talk(  11, "宠物管理员·朗拿度:孕育摩豆小子二世的条件是:摩豆小子与摩豆小子结婚时100%产下摩豆小子二世,而与恶魔果实无关,摩豆小子与其它精灵结婚是否能产下摩豆小子二世则与两只精灵的等级相关")

-----------eleven
	AddNpcMission ( 5019 )
	AddNpcMission ( 5032 )

	--------------------1.7
	AddNpcMission ( 5080	)
	AddNpcMission ( 5081	)
	AddNpcMission ( 5082	)
	AddNpcMission ( 5083	)
	AddNpcMission (5117 )
	AddNpcMission (5142 )
	AddNpcMission (5149 )
end 

------------------------------寻找遗失的爱情
function el_talk01()
	Talk( 1, "鱼儿:你快回来!我一人承受不来……")	
	AddNpcMission ( 907 )
	AddNpcMission ( 911 )
	AddNpcMission ( 912 )
	AddNpcMission ( 917 )
end
function el_talk02()
	Talk( 1, "舞蝶:我是花瓣的朋友……")
	AddNpcMission ( 908 )
	AddNpcMission ( 909 )
	AddNpcMission ( 910 )
end
-----------------------------------------------------------
---白银---神秘婆婆
-----------------------------------------------------------
-------------------------------------爱情重生
function el_talk03()
	Talk( 1, "神秘老婆婆:真不明白大家为什么叫我神秘婆婆,我有那么神秘吗......")	
	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---春风镇---神秘的炉子
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1, "炼丹炉:看什么,没见过这么帅的炉子啊!" )
	Text( 1, "功能介绍", JumpPage, 2 )
	Text( 1, "年兽装黑龙装及70级BOSS装升级", OpenItemTiChun )
	Text( 1, "贝壳充电", OpenItemEnergy )
	Text( 1, "提取宝石", OpenGetStone )
	Text( 1, "修理生活工具", OpenItemFix )
	Talk( 2, "炼丹炉:我就不在这里罗嗦了,想要了解什么自己看吧!" )
	Text( 2, "年兽装黑龙装及70级BOSS装升级介绍", JumpPage, 3)
	Text( 2, "贝壳充电介绍", JumpPage, 4 )
	Text( 2, "提取宝石介绍", JumpPage, 5 )
	Text( 2, "修理生活工具介绍", JumpPage, 6)
	Talk( 3, "炼丹炉:此功能可以提升年兽装,将黑龙装提升为真黑龙装,将除帽子外的70级BOSS装提升为75级死神BOSS装,升级需要对应的道具,熔合的装备外观和相应的酷装强化会消失,但精炼属性会保留!" )
	Talk( 4, "炼丹炉:用电池给贝壳充电,普通充电电池每次最多能给贝壳充50到1000点电量,而高级充电电池能够固定充1500点电量;充电后电池会消失!" )
	Talk( 5, "炼丹炉:按照装备中镶嵌的宝石顺序,从上向下提取,提取后只获得原槽中相同等级的同类宝石一颗,被提取的宝石精炼等级减1,每次提取需消耗1个铁匠的钳子.")
	Text( 5, "提取宝石范例", JumpPage, 7 )
	Talk( 6, "炼丹炉:专门修理破损的水晶锅,黑洞水晶,反物质水晶和粒子流水晶,每次消耗一个修补工具,保证手工精美,价钱公道,童叟无欺!" )
	Talk( 7, "炼丹炉:以一把3槽的斩龙剑为例,按照从上到下的顺序其第一槽为3级炎玉,第二槽为2级烈焰石,第三槽为1级黑龙之瞳;提取后会拿到一颗3级炎玉,斩龙的第一槽变为2级炎玉,其余槽里宝石等级不变!注意:只会从道具最上面的宝石开始提取." )
end 
-----------------------------------------------------------
---白银---碰碰乐
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "碰碰乐:朋友我劝你最好把背包清空了再来玩,因为总是很容易有太多的惊喜" )
	Text( 1, "碰碰乐最新玩法介绍", JumpPage, 2 )
	Text( 1, "试试运气,玩一把先!", OpenTiger )
	Talk( 2, "碰碰乐:每注固定需要5个精灵硬币,可以在一行下注,也可以多行下注,我劝你还是每行都下,中大奖的机会高很多的!" )
end 
--------------------------------------血腥的高跟鞋
function el_talk04 ()
	
	Talk( 1, "瘦弱的打工仔:唉呦……唉呦……苍天啊,大地啊,哪位天使大姐为我出气啊……" )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---印第安纳·琼斯
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1, "印第安纳·琼斯:穿过新月型的峡谷,来到最后的神殿,以女神之名获得永生,我发现了魔方世界的另一个秘密,你想知道吗?" )
	Text( 1, "另一个秘密", JumpPage, 2)

	Talk( 2, "印第安纳·琼斯:传说世界是由两个层面组成的,也就是说,这里存在一个你,而遥远的某个地方还有另一个你,很幸运的,我发现了另一个魔方世界,同时也找到了一种新的解封武器的方法,我会让那群自以为是的考古学家知道研究不是那样做的,当然,如果你想尝试一下这种新的解封方法,我可以考虑下" )
	Text( 2, "解封", JumpPage, 3)
	
	Talk( 3, "印第安纳·琼斯:破除封印所需要的力量很强大,所以那群废物才会用许多不纯的能量石头来整合力量,但是这种整合过程所消耗的能量很多,说白了就是浪费,这群废物简直就是在暴殓天物,现在我只需要一块石头就能将封印破除,如果你有这种摩力符石,我可以帮你破除封印." )
	Text( 3, "迷法之杖", JumpPage, 6)
	Text( 3, "迷幻斗篷", JumpPage, 7)
	Text( 3, "迷幻之刺", JumpPage, 8)
	Text( 3, "迷之裁决", JumpPage, 9)
	Text( 3, "迷之长枪", JumpPage, 10)
	Text( 3, "迷之斗篷", JumpPage, 11)
	Text( 3, "迷之法袍", JumpPage, 12)
	Text( 3, "下一页", JumpPage, 4)

	Talk( 4, "印第安纳·琼斯:破除封印所需要的力量很强大,所以那群废物才会用许多不纯的能量石头来整合力量,但是这种整合过程所消耗的能量很多,说白了就是浪费,这群废物简直就是在暴殓天物,现在我只需要一块石头就能将封印破除,如果你有这种<r摩力符石>,我可以帮你破除封印." )
	Text( 4, "迷之利刃", JumpPage, 13)
	Text( 4, "迷之纹身", JumpPage, 14)
	Text( 4, "迷之战甲", JumpPage, 15)
	Text( 4, "迷咒法袍", JumpPage, 16)
	Text( 4, "迷咒法杖", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "印第安纳·琼斯:要解除迷法之杖的封印你必须给我以下物品:寒冰封印的迷法之杖、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 6, "解除迷法之杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "印第安纳·琼斯:要解除迷幻斗篷的封印你必须给我以下物品:寒冰封印的迷幻斗篷、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 7, "解除迷幻斗篷的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "印第安纳·琼斯:要解除迷幻之刺的封印你必须给我以下物品:寒冰封印的迷幻之刺、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 8, "解除迷幻之刺的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "印第安纳·琼斯:要解除迷之裁决的封印你必须给我以下物品:寒冰封印的迷之裁决、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 9, "解除迷之裁决的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "印第安纳·琼斯:要解除迷之长枪的封印你必须给我以下物品:寒冰封印的迷之长枪、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 10, "解除迷之长枪的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "印第安纳·琼斯:要解除迷之斗篷的封印你必须给我以下物品:寒冰封印的迷之斗篷、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 11, "解除迷之斗篷的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "印第安纳·琼斯:要解除迷之法袍的封印你必须给我以下物品:寒冰封印的迷之法袍、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 12, "解除迷之法袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "印第安纳·琼斯:要解除迷之利刃的封印你必须给我以下物品:寒冰封印的迷之利刃、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 13, "解除迷之利刃的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "印第安纳·琼斯:要解除迷之纹身的封印你必须给我以下物品:寒冰封印的迷之纹身、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 14, "解除迷之纹身的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "印第安纳·琼斯:要解除迷之战甲的封印你必须给我以下物品:寒冰封印的迷之战甲、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 15, "解除迷之战甲的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "印第安纳·琼斯:要解除迷咒法袍的封印你必须给我以下物品:寒冰封印的迷咒法袍、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 16, "解除迷咒法袍的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "印第安纳·琼斯:要解除迷咒法杖的封印你必须给我以下物品:寒冰封印的迷咒法杖、摩力符石1个,为了研究解除封印我付出了极大的代价,请支付给我80万海盗币作为解封费用" )
	Text( 17, "解除迷咒法杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "印第安纳·琼斯:很抱歉,你给我的物品不对,我无法为你解除封印." )

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<乱斗管理员
function kk_talk01 ()
	
	Talk( 1, "乱斗管理员:只有真正的强者才能在乱斗中活下来,只有真正的强者才能获得尊敬" )
	Text( 1, "申请兑换", JumpPage ,7)
	Text( 1, "查看乱斗排行榜", Garner2GetWiner)
	Text( 1, "申请加入排行榜", Garner2RequestReorder)
--	Text( 1, "得到乱斗天书", Change_FightingBook)
--	Text( 1, "关于乱斗天书", JumpPage ,2)
	Text( 1, "关于乱斗排行榜", JumpPage ,3)
	Text( 1, "关于乱斗白银城", JumpPage ,13)
	
	Talk( 2, "乱斗管理员:如果你身上没有过荣誉之证,这本乱斗天书将记录你以后所有的荣誉.如果你身上拥有荣誉之证,这本乱斗天书将取代你以前的荣誉之证来记录你所有的荣誉.你以前荣誉之证上的点数也不会消失,将被记录到你的乱斗天书上" )
	Text(2,"确定",Change_FightingBook)

	Talk( 3, "乱斗管理员:凡在白银城经过浴血乱斗的勇士均可申请进入乱斗排行榜,但只有前五强有资格榜上题名,上榜资格由勇者之证上的乱斗点数决定." )
	Text(3,"关于乱斗点数",JumpPage ,4)
	Text(3,"关于乱斗之装",JumpPage ,6)


	Talk( 4, "乱斗管理员:在乱斗白银城中击倒等级相近玩家即可获得乱斗点数,并记录在勇者之证上." )
	Talk( 6, "乱斗管理员:包括乱斗躯石、乱斗腕石、乱斗足石,该套装不但有很高的属性还有极其bt的特殊能量.该能量将根据玩家在榜上的名次,不同程度的被激活." )
	
	Talk( 7, "乱斗管理员:想要好东西就到我这里来换吧" )
	Text(7,"兑换中级乱斗点券",JumpPage ,8)
	Text(7,"兑换乱斗宝箱",JumpPage ,9)
	Text(7,"兑换乱斗之王徽章",JumpPage ,10)
	Text(7,"兑换指南书",SendExchangeXData)
	Text(7,"兑换荣誉的象征",JumpPage ,12)

	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchangeX()

	ExchangeDataX(	2608	,	100	,	2682	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2683	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2684	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2692	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2693	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2694	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2702	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2703	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2704	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2712	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2713	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2714	,	1	,	1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 8, "乱斗管理员:1个乱斗之星徽章就可以了" )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "乱斗管理员:1个乱斗之王徽章就可以了" )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "乱斗管理员:我需要5个乱斗之星徽章" )
	Text( 10, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "乱斗管理员:收齐东西后再来找我吧,还有你要保证你的背包至少有一个空格.且处在未锁定的状态" )
	
	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Talk( 12, "乱斗管理员:荣誉的象征就是闪耀之心,荣耀之心,辉煌之心,他们分别需要的荣誉点是200,2000,20000" )
	Text( 12, "得到乱闪耀之心", Change_shanyao)
	Text( 12, "得到乱荣耀之心", Change_rongyao)
	Text( 12, "得到乱辉煌之心", Change_huihuang)

	Talk( 13, "乱斗管理员:乱斗白银城将带给玩家全新战斗模式,体验全新的PK乐趣！入城至少需等级20级,荣誉值20点,声望值30点和金钱少许.入城后,可自由PK; 若PK双方等级差在15级之内,则被杀者失去1点荣誉值,杀人者得到1点乱斗点数.若被杀者等级高于杀人者15级,则被杀者失去2点荣誉值,杀人者得到2点乱斗点数;乱斗结束时,每个幸存者都将得到金钱奖励.如果幸存者在5个以内,每人还将得到1个乱斗之星徽章,如果只有一个幸存者,该幸存者除金钱外还将得到一个乱斗之王徽章.注意:当乱斗结束时请保持自己的背包或临时背包有1个空位." )
	
	---------奥运活动
	AddNpcMission	(6268)
	AddNpcMission	(6269)
	
end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 

function leo_talkaa()
	Talk( 1, "承接各式土木工程,手艺精湛,塌实肯干,质优价廉,绝无甲醛!" )
	Text( 1, "看看你的东西吧.", SendExchangeXData)

	
	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchangeX()

	ExchangeDataX(	3989	,	99	,	3999	,	20	,	1)
	ExchangeDataX(	3990	,	99	,	4000	,	20	,	1)
	ExchangeDataX(	3991	,	99	,	4001	,	20	,	1)
	ExchangeDataX(	3992	,	99	,	4002	,	20	,	1)
	ExchangeDataX(	3993	,	99	,	4003	,	20	,	1)
	ExchangeDataX(	3994	,	99	,	4004	,	20	,	1)
	ExchangeDataX(	3995	,	99	,	4005	,	20	,	1)
	ExchangeDataX(	3996	,	99	,	4006	,	20	,	1)
	ExchangeDataX(	3997	,	99	,	4007	,	20	,	1)
	ExchangeDataX(	3998	,	99	,	4008	,	20	,	1)

end

function leo_talkbb()
	Talk( 1, "卖石头,不买就走开!没钱就别来凑热闹!!" )
	Text( 1, "咱有的就是钱.", SendExchangeXData)

	
	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchangeX()

	ExchangeDataX(	4029	,	99	,	4039	,	20	,	1)
	ExchangeDataX(	4030	,	99	,	4040	,	20	,	1)
	ExchangeDataX(	4031	,	99	,	4041	,	20	,	1)
	ExchangeDataX(	4032	,	99	,	4042	,	20	,	1)
	ExchangeDataX(	4033	,	99	,	4043	,	20	,	1)
	ExchangeDataX(	4034	,	99	,	4044	,	20	,	1)
	ExchangeDataX(	4035	,	99	,	4045	,	20	,	1)
	ExchangeDataX(	4036	,	99	,	4046	,	20	,	1)
	ExchangeDataX(	4037	,	99	,	4047	,	20	,	1)
	ExchangeDataX(	4038	,	99	,	4048	,	20	,	1)
	ExchangeDataX(	1670	,	99	,	1671	,	20	,	1)
	ExchangeDataX(	1668	,	99	,	3368	,	20	,	1)
	ExchangeDataX(	1667	,	99	,	3360	,	20	,	1)
	ExchangeDataX(	1642	,	99	,	1643	,	20	,	1)
	ExchangeDataX(	4825	,	99	,	1638	,	20	,	1)
	ExchangeDataX(	1633	,	99	,	1641	,	20	,	1)
	ExchangeDataX(	1782	,	99	,	1769	,	20	,	1)
	ExchangeDataX(	2815	,	99	,	1775	,	20	,	1)
	ExchangeDataX(	1674	,	99	,	1767	,	20	,	1)
	ExchangeDataX(	4832	,	99	,	2901	,	20	,	1)

end

function leo_talkcc()
	Talk( 1, "千万不要到我旁边的黑市商人那里买东西,会坑死你的,不如到我这里来看看,包你满意" )
	Text( 1, "谢谢你的提醒,让我看看你的商品吧", SendExchangeXData)
	Text( 1, "99个精灵硬币=1个宝石兑换券", JumpPage, 2 )
	
	InitExchangeX()
	ExchangeDataX(	855	,	60	,	2617	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2619	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2622	,	1	,	1)
	ExchangeDataX(	2589	,	5	,	2624	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2640	,	1	,	1)
	ExchangeDataX(	855	,	60	,	2641	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2642	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2643	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2644	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2649	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1055	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1056	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1058	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1059	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1061	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1062	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1064	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1065	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2680	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2681	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2682	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2683	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2684	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2685	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2690	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2691	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2692	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2693	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2694	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2695	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2700	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2701	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2702	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2703	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2704	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2705	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2710	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2711	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2712	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2713	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2714	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2715	,	1	,	1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 0855, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 0855, 99 )
	TriggerAction( 1, GiveItem, 3886, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "黑市商人:年轻人,我在研制新产品。需要大量精灵硬币,你可以帮我收集吗?我用珍藏的宝贝跟你换。" )
	Text( 2, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "黑市商人:收齐东西后再来找我吧,还有你要保证你的背包至少有一个空格.且处在未锁定的状态" )
	Talk( 4, "黑市商人:谢谢你,勇士!这是给你的报酬!" )

end
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<合成介绍员
-----介绍员-蓝
function max_talka1()
	Talk( 1, "介绍员-蓝:您好,我是介绍员-蓝,我可以为您解决操作物质分解仪过程中遇到的任何问题,请问有什么可以为您服务的吗?" )
	Text( 1, "什么是物质分解仪?", JumpPage ,2)
	Text( 1, "我能使用物质分解仪吗", JumpPage ,7)
	Text( 1, "物质分解仪怎么操作?", JumpPage ,3)
	Text( 1, "物质分解仪能分解出什么东西?", JumpPage ,4)
	Text( 1, "我没什么问题,我是路过的!", JumpPage ,6)

	Talk( 2, "介绍员-蓝:物质分解仪是可以带您探索万物基础的神秘仪器,它可以将任务武器或装备重新分解为物质原本的形态." )
	Text( 2, "我还有其他问题", JumpPage ,1)
	Text( 2, "原来如此,我没问题了,谢谢!", CloseTalk)

	Talk( 3, "介绍员-蓝:首先您必须准备需要分解的物品、精灵、相应的工具以及适当的催化剂,打开仪器后,将这些物品放进仪器相应的位置,然后启动仪器,在仪器运行的过程中,您将可以在左侧显示屏中看到一个5位的数据,当右侧屏幕中的数据小于它时,恭喜您,您分解成功." )
	Text( 3, "失败的话有生命危险吗?", JumpPage ,5)
	Text( 3, "刚刚你提到工具?", JumpPage ,9)
	Text( 3, "我还有其他问题.", JumpPage ,1)
	Text( 3, "原来如此,我没问题了,谢谢!", CloseTalk)

	Talk( 4, "介绍员-蓝:物质分解仪可以将任何武器与装备物品,通过添加适当的催化剂,可以分解出物品最原始的形态,加入不同的催化剂,分解的结果是不同的.可能会出乎您的意料哦~~~~呵呵." )
	Text( 4, "怎样获得催化剂?", JumpPage ,8)
	Text( 4, "我还有其他问题", JumpPage ,1)
	Text( 4, "原来如此,我没问题了,谢谢!", CloseTalk)

	Talk( 5, "介绍员-蓝:哈哈..客人您还真可爱,我们的物质分解仪是相当安全的,绝对人畜无害~~~所以您以及您的精灵不会受到任何伤害,但是放进去的物品和适当的催化剂将因为物质分解失败而消失.")
	Text( 5, "我还有其他问题.", JumpPage ,1)
	Text( 5, "原来如此,我没问题了,谢谢!", CloseTalk)

	Talk( 6, "介绍员-蓝:祝您路过愉快~~~~!")
	Text( 6, "继续路过!", CloseTalk)

	Talk( 7, "介绍员-蓝:当然可以拉.不过您要先去杂货商人那里购买分解指南哦,学会里面的知识后,就可以实际操作了.")
	Text( 7, "我还有其他问题.", JumpPage ,1)
	Text( 7, "原来如此,我没问题了,谢谢!", CloseTalk)

	Talk( 8, "介绍员-蓝:您可以到我们商城选购您想要的催化剂." )
	Text( 8, "我还有其他问题.", JumpPage ,1)
	Text( 8, "原来如此,我没问题了,谢谢!", CloseTalk)

	Talk( 9, "介绍员-蓝:工具是增加成功率的神秘物品,值得注意的是,精灵相应制作技能的等级必须大于工具等级,才可以在过程中加入此工具." )
	Text( 9, "我还有其他问题.", JumpPage ,1)
	Text( 9, "原来如此,我没问题了,谢谢!", CloseTalk)

end

-----篝火婆婆
function max_talka2()
	Talk( 1, "篝火婆婆:年轻人你好,我是篝火婆婆,年轻的时候是这里最有名的厨师啊~~~呵呵,有什么可以帮你的吗?" )
	Text( 1, "我想知道去那里可以烹饪.", JumpPage ,2)
	Text( 1, "我能学习烹饪么?", JumpPage ,3)
	Text( 1, "可以教我烹饪么?", JumpPage ,4)
	Text( 1, "做出的东西很特别吗?", JumpPage ,5)
	Text( 1, "我是路过的~~", JumpPage ,6)

	Talk( 2, "篝火婆婆:在我身边的就是我们这个世界的珍惜资源—火.神,赐予了我们肉体,让我们感到饥饿,同时也给了我们神圣的力量之源,让我们可以烹饪出各种美味的佳肴." )
	Text( 2, "我还想请教其他问题", JumpPage ,1)
	Text( 2, "谢谢婆婆~我明白了~", CloseTalk)

	Talk( 3, "篝火婆婆:呵呵.当然可以拉.不过你要先去杂货商人那里购买一本我写的烹饪指南,学会里面的知识后,就可以实际操作了." )
	Text( 3, "我还想请教其他问题", JumpPage ,1)
	Text( 3, "谢谢婆婆~我明白了~", CloseTalk)

	Talk( 4, "篝火婆婆:烹饪可是一门伟大的艺术,使用神的力量应该要感谢我们的神,呵呵.首先你要拥有精灵,烹饪的配方,烹饪的工具,最后你要有原料.然后你要把这些东西放到篝火上相应的位置,记得不要放错啊~一切准备完了,就可以开始烹饪了.记得在烹饪过程中要控制火候,要在火候正好的时候起锅,不然东西会煮坏的哦.浪费粮食要被神惩罚的~~." )
	Text( 4, "火候正好的时候?", JumpPage ,7)
	Text( 4, "我还想请教其他问题", JumpPage ,1)
	Text( 4, "谢谢婆婆~我明白了~", CloseTalk)

	Talk( 5, "篝火婆婆:如果你的烹饪水平够高,烧出的东西一定是非常美味的,美味的食物不仅可以填饱肚子,更可能拥有特殊的一些效果~.据说远古的剑士们就是吃了御厨烧出的鳕鱼闷闷锅,才会那样神勇,拥有过人的力量!" )
	Text( 5, "我还想请教其他问题", JumpPage ,1)
	Text( 5, "谢谢婆婆~我明白了~", CloseTalk)

	Talk( 6, "篝火婆婆:祝您路过愉快~~~~!愿神保佑你~!")
	Text( 6, "我真的是路过的!", CloseTalk)

	Talk( 7, "篝火婆婆:就是底下进度条达到75%左右拉~~现在的年轻人那...一点求知意识都没有~!")
	Text( 7, "我还想请教其他问题", JumpPage ,1)
	Text( 7, "谢谢婆婆~我明白了~", CloseTalk)

end

-----熔炉技师·梅克
function max_talka3()
	Talk( 1, "熔炉技师·梅克:嗨~~哥们,来这有事么?" )
	Text( 1, "告诉我大熔炉能干什么", JumpPage ,2)
	Text( 1, "怎么使用大熔炉?", JumpPage ,3)
	Text( 1, "可以告诉我大熔炉的秘密么?", JumpPage ,4)
	Text( 1, "我是路过的.", JumpPage ,5)


	Talk( 2, "熔炉技师·梅克:哈哈,想自己铸造武器防具么?就要靠它了..这是我父亲留给我的遗产,据说他生前用它造了一个王国军的装备..哼哼~~很厉害吧?" )
	Text( 2, "我还想请教其他问题", JumpPage ,1)
	Text( 2, "原来如此~我明白了~", CloseTalk)

	Talk( 3, "熔炉技师·梅克:哈哈,想使用吗?哼哼~~告诉你,如果你能看懂杂货商人出售的那本深奥的“初级铸造指南”,我就免费让你使用!怎么样?看的懂吗?我可是全看懂了哦...哼哼,我很厉害吧?" )
	Text( 3, "我还想请教其他问题", JumpPage ,1)
	Text( 3, "原来如此~我明白了~", CloseTalk)

	Talk( 4, "熔炉技师·梅克:首先你要拥有精灵,然后你要找到制作图纸和相应的原料,把他们放到熔炉里,就可以开始铸造了.当你看到骰子在跳动时,你要猜出大小,如果猜错的话,铸造就失败了." )
	Text( 4, "怎样造出更好的东西呢?", JumpPage ,7)
	Text( 4, "原来如此~我明白了~", CloseTalk)

	Talk( 7, "熔炉技师·梅克:当然在制作过程中你可以加入一些含有魔力的东西,这样造出来的东西会更强大,不过魔力越大的物品,需要的精灵等级也越高." )
	Text( 7, "我还想请教其他问题", JumpPage ,1)
	Text( 7, "原来如此~我明白了~", CloseTalk)

	Talk( 5, "熔炉技师·梅克:…………你是响良牙么?路过到这里?")
	Text( 5, "我真的只是路过啊`~", CloseTalk)

end

-----研究生
function max_talka4()
	Talk( 1, "研究生:你好,请问有什么事?" )
	Text( 1, "你边上的是什么", JumpPage ,2)
	Text( 1, "我可以使用物质生成器么?", JumpPage ,3)
	Text( 1, "物质生成器怎么操作?", JumpPage ,4)
	Text( 1, "物质生成器能生成什么东西?", JumpPage ,5)
	Text( 1, "我是路过的.", JumpPage ,6)


	Talk( 2, "研究生:这是我们皇家学院最新的研究成果:物质生成器.通过它可以让人类重现炼金术!" )
	Text( 2, "我还想请教其他问题", JumpPage ,1)
	Text( 2, "原来如此~我明白了~", CloseTalk)

	Talk( 3, "研究生:请先去杂货商人那购买初级制造指南,当你阅读完基础后,相信就可以来进行实习了." )
	Text( 3, "我还想请教其他问题", JumpPage ,1)
	Text( 3, "原来如此~我明白了~", CloseTalk)

	Talk( 4, "研究生:为了确保物质生成器强大的力量得到控制,首先你要拥有精灵,接着把制作图纸与上面提到的各种原料放进物质生成器中,接下来就要由你亲手点击完成按钮来决定创造的结果." )
	Text( 4, "创造结果有很多种么?", JumpPage ,7)
	Text( 4, "我还想请教其他问题", JumpPage ,1)
	Text( 4, "原来如此~我明白了~", CloseTalk)

	Talk( 5, "研究生:因为是模拟炼金的一种方式,所以不可能与传说中的炼金术一样神奇,但是只要你有配方,严格按照配方去做,那生成器是绝对不会骗你的." )
	Text( 5, "我还想请教其他问题", JumpPage ,1)
	Text( 5, "原来如此~我明白了~", CloseTalk)

	Talk( 6, "研究生:看来你真的是响良牙··")
	Text( 6, "我真的就是路过啊~", CloseTalk)

	Talk( 7, "研究生:因为我们不是神,就算是神创造的东西都不一定是完美的,为了方便我们去辩识结果,生成机会使用10个等级来进行标示,现在我就将它们由低至高依次告诉你:                  Thankyou — 感谢参与,表示制造失败了!    Abysmal — 极差                           Terrible — 糟糕                          Bad — 差                                 Poor — 无价值                            Mediocre — 平庸                          Fair — 普通                              Good — 好                                Great — 优秀                             Superb — 极佳                            Perfect — 完美                           当然标示越高,东西就越好.如果能达到Perfect的境界,那你基本接近神了~~哈哈.")
	Text( 7, "我还想请教其他问题", JumpPage ,1)
	Text( 7, "原来如此~我明白了~", CloseTalk)
end

---------------------圣诞村的圣诞树
function el_talk05 ()
	
	Talk( 1, "圣诞树:Merry Christmas to you !一份祝福就是对心灵的一次美丽的守望" )
	Text( 1, "点播祝福语",JumpPage, 2  )
	
	Talk ( 2, "圣诞树:你要播放圣诞祝福吗?每次播发需要一张圣诞贺卡并要花费1000海盗币." )
	Text( 2, "第一条祝福",JumpPage, 3  )
	Text( 2, "第二条祝福",JumpPage, 4 )
	Text( 2, "第三条祝福",JumpPage, 5 )
	Text( 2, "第四条祝福",JumpPage, 6 )
	Text( 2, "第五条祝福",JumpPage, 7 )
	Text( 2, "第六条祝福",JumpPage, 8 )
	Text( 2, "第七条祝福",JumpPage, 9 )

	
	Talk( 3, "白雪飘飘,鹿铃霄霄,甜蜜的平安夜又来到,小手摆摆,舞姿曼曼,快乐的圣诞节日多美好.")
	Text(3,"确定播放此条祝福语",  GetChaName_0, 1)
	Text( 3, "返回",JumpPage, 2  )

	Talk( 4, "每一朵雪花飘下,每一个烟火燃起,每一秒时间流动,每一份思念传送,都代表着我想要送你的每一个祝福,圣诞快乐!")
	Text(4,"确定播放此条祝福语",  GetChaName_1, 1)
	Text( 4, "返回",JumpPage, 2  )

	Talk( 5, "我有一个美丽的愿望:以前的圣诞节,总是认为圣诞老人不会将最好的礼物降临给我,但今年的圣诞节不同,有你的到来,让我永远记住今天.")
	Text(5,"确定播放此条祝福语",  GetChaName_2, 1)
	Text( 5, "返回",JumpPage, 2  )

	Talk( 6, "圣诞节到了,向支持我的朋友和我所爱的朋友说声感谢,感谢你走进我的生活,我会尽我最大的努力给你无限的快乐!")
	Text(6,"确定播放此条祝福语",  GetChaName_3, 1)
	Text( 6, "返回",JumpPage, 2 )

	Talk( 7, "圣诞节都到了,能不能在下个圣诞节之前别再让我当乱斗之王,工会战不要次次都赢,上天,赐予我一个强劲的对手吧,阿门……")
	Text(7,"确定播放此条祝福语",  GetChaName_26, 1)
	Text( 7, "返回",JumpPage, 2 )

	Talk( 8, "哈里路亚,妈妈咪呀,主啊……赐我一个妞吧")
	Text(8,"确定播放此条祝福语",  GetChaName_27, 1)
	Text( 8, "返回",JumpPage, 2 )

	Talk( 9, "圣诞节到了,祝福自己好运天天交，生活步步高，彩票期期中，打牌次次赢，口味顿顿好，若敢把我忘，小心挨棍棒 ")
	Text(9,"确定播放此条祝福语",  GetChaName_28, 1)
	Text( 9, "返回",JumpPage, 2 )
---------------------------------------------------------------------------------------------------------------	
end



----------------------------------------霍金斯-------------------------
--------------------------------寂寞之塔6层(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1000 )
	TriggerCondition( 1, LvCheck, ">", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1000 )
	TriggerCondition( 1, NoRecord, 1001 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1, "霍金斯:我是杀人不眨眼的金牌海盗,业余时间客串慈善家,顺便也打听一些八婆的事~~顺便说一下,名声不到9999的和75级以下的不要和我说话!" )
	Text( 1, "你好!",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "霍金斯:想得到碎片回答我的几个问题先,下面哪项历史任务与走失的小男孩有关" )
	Text( 2, "全体食物中毒",JumpPage, 3  )
	Text( 2, "寻找丢失的工具",JumpPage, 4  )
	Text( 2, "疯狂的原因",JumpPage, 3  )---------
	Text( 2, "清理利齿菇",JumpPage, 32  )

	Talk( 3, "霍金斯:别得意,问你个八婆的问题,你能告诉我鲁娜儿的情人是谁吗?" )
	Text( 3, "海云",JumpPage, 4  )
	Text( 3, "周吴郑",JumpPage, 32  )
	Text( 3, "鱼儿",JumpPage,5  )
	Text( 3, "元彬",JumpPage, 2  )
	Text( 3, "裴永军",JumpPage, 4  )--------------
	Text( 3, "李秉宪",JumpPage, 4  )

	Talk( 4, "霍金斯:下面哪个是制造复原剂的原料" )
	Text( 4, "粘稠的透明蝌蚪血和纯净的水",JumpPage, 5  )
	Text( 4, "血色蝌蚪皮和醒神花茶",JumpPage, 5  )
	Text( 4, "邪恶蝌蚪之血和兴奋剂",JumpPage, 2  )
	Text( 4, "透明的蝌蚪血和纯净的水",JumpPage, 32 )
	Text( 4, "粗大的透明蝌蚪尾巴",JumpPage, 6  )
	Text( 4, "醒神花茶和兴奋剂",JumpPage, 19  )-----------
	Text( 4, "邪恶蝌蚪之血",JumpPage, 5  )


	Talk( 5, "霍金斯:神秘婆婆的爱情信物是什么?" )
	Text( 5, "水晶泪",JumpPage, 32  )
	Text( 5, "泪晶石",JumpPage, 6  )
	Text( 5, "朗拿度之石",JumpPage, 3  )
	Text( 5, "泪之琥珀",JumpPage, 22  )----------
	Text( 5, "伊甸园石",JumpPage, 7  )
	Text( 5, "卡拉的眼泪",JumpPage, 7  )
	Text( 5, "初恋之石",JumpPage, 32  )

	Talk( 6, "霍金斯:旺才一家和犬神的关系是什么?" )
	Text( 6, "父子关系",JumpPage, 4  )
	Text( 6, "祖孙关系",JumpPage, 8  )
	Text( 6, "兄弟关系",JumpPage, 7  )
	Text( 6, "恋人关系",JumpPage, 32  )
	Text( 6, "毫无关系",JumpPage, 32  )
	Text( 6, "旁系远亲",JumpPage, 32  )
	Text( 6, "表亲关系",JumpPage, 7  )-----------------
	Text( 6, "姐妹关系",JumpPage, 7  )

	Talk( 7, "霍金斯:恶魔果实变异后会是什么东东?" )
	Text( 7, "精灵宝宝",JumpPage, 32  )
	Text( 7, "普通的苹果",JumpPage, 8  )----------
	Text( 7, "恶魔",JumpPage, 9  )
	Text( 7, "会跑的恶魔果实",JumpPage, 5  )
	Text( 7, "化石",JumpPage, 32  )

	Talk( 8, "霍金斯:小金金改行后做什么?" )
	Text( 8, "屠夫",JumpPage, 3  )
	Text( 8, "电影明星",JumpPage, 32  )
	Text( 8, "面点师",JumpPage, 32  )
	Text( 8, "人体模特",JumpPage, 9  )--------
	Text( 8, "GM",JumpPage, 7  )
	Text( 8, "公司老板",JumpPage, 9  )

	Talk( 9, "霍金斯:下面哪个选项是最正确的？" )
	Text( 9, "你选我会后悔的",JumpPage, 4  )
	Text( 9, "裴永军是裴蒂的私生子",JumpPage, 10 )-----------
	Text( 9, "贝蒂不会做糕点",JumpPage, 32  )
	Text( 9, "裴蒂会比神秘婆婆活得久",JumpPage, 23 )
	Text( 9, "大神官从前做过海盗",JumpPage, 6  )

	Talk( 10, "霍金斯:黑市商人曾经很猖獗，那是" )
	Text( 10, "十年前",JumpPage, 5  )
	Text( 10, "半年前",JumpPage, 5  )
	Text( 10, "他倒卖古董时",JumpPage, 32 )
	Text( 10, "他刚来到冰狼堡时",JumpPage, 8  )
	Text( 10, "他还没爱上蒂娜时",JumpPage, 11  )-----------
	Text( 10, "他被蒂娜抛弃后",JumpPage, 32  )
	Text( 10, "他读黑市大学时",JumpPage, 8  )


	Talk( 11, "霍金斯:GM大揭秘，你认为现实生活中爬爬是什么样的人？不要太相信传言" )
	Text( 11, "25岁的帅哥",JumpPage, 32 )
	Text( 11, "温柔的少妇",JumpPage, 30  )
	Text( 11, "凶暴的男人婆",JumpPage, 13  )
	Text( 11, "可怕的结婚狂",JumpPage, 2  )
	Text( 11, "开朗美少女",JumpPage, 13  )---------------
	Text( 11, "妩媚万人迷",JumpPage, 32  )
	Text( 11, "没有正确选项",JumpPage, 28  )

	Talk( 30, "霍金斯:你对她有很深的误解"  )
	Text( 30, "下一步",JumpPage, 32  )
	Talk( 31, "霍金斯:不要让她知道你选了这个答案" )
	Text( 31, "下一步",JumpPage, 32  )



	--Talk( 12, "霍金斯:下面的描述哪个是错误的?" )
	--Text( 12, "米尔米莉是大神官的秘书",JumpPage, 32 )
	--Text( 12, "碰碰乐里可以转出黑龙装备",JumpPage, 3 )
	--Text( 12, "帝姆会制造忘情水",JumpPage,8 )
	--Text( 12, "罗森是大众情人",JumpPage, 10 )
	--Text( 12, "严罗塔认为马尔修斯是个很聪明的人",JumpPage, 13 )---------------
	--Text( 12, "恐怖的诅咒古尸在加纳(360,1340)附近",JumpPage, 5 )
	--Text( 12, "人鱼王子以前是只青蛙",JumpPage, 13 )
	--Text( 12, "米尔米莉以前是卡西斯的恋人",JumpPage, 13 )

	Talk( 13, "霍金斯:关于宝石提取下面哪个是错误的?" )
	Text( 13, "帮助提取的道具为铁匠钳子",JumpPage, 5 )
	Text( 13, "每件装备按照一定的顺序提取",JumpPage, 3 )
	Text( 13, "提取后装备的槽数不变而且钳子会消失",JumpPage, 32 )
	Text( 13, "提取费用=装备的精炼等级*1000海盗币",JumpPage, 14 )
	Text( 13, "每次只能从槽中提取一块",JumpPage, 10 )
	Text( 13, "提取出的宝石等级为原槽中宝石等级数减1",JumpPage, 14 )-----------------
	Text( 13, "第三项是正确的",JumpPage, 8 )

	Talk( 14, "霍金斯:谁知道太极石的秘密?" )
	Text( 14, "马尔休斯",JumpPage, 4 )
	Text( 14, "朗拿度和神秘婆婆",JumpPage, 32 )
	Text( 14, "人鱼王子和加纳海妖",JumpPage, 7 )
	Text( 14, "帝姆和神秘婆婆",JumpPage, 15 )
	Text( 14, "帝姆和朗拿度",JumpPage, 15 )-----------------
	Text( 14, "神秘婆婆和人鱼王子",JumpPage, 8 )
	Text( 14, "马尔休斯和人鱼王子",JumpPage, 12 )


	Talk( 15, "霍金斯:下面哪个药品有副作用?" )
	Text( 15, "复原剂",JumpPage,13 )
	Text( 15, "复活叶",JumpPage, 32 )
	Text( 15, "健忆胶囊",JumpPage, 16 )--------------
	Text( 15, "忘情水",JumpPage, 5 )
	Text( 15, "回魂汤",JumpPage, 4 )
	Text( 15, "魔力骨头粉",JumpPage, 16 )
	Text( 15, "防腐剂",JumpPage, 9 )

	Talk( 16, "霍金斯:谁在说谎?" )
	Text( 16, "神秘婆婆: 我爱朗拿度",JumpPage, 32 )
	Text( 16, "海军少将威尔斯:佐罗面具不在我这",JumpPage, 17 )-----------
	Text( 16, "朗拿度:我的心上人不是神秘婆婆",JumpPage, 17 )
	Text( 16, "爬爬:我变成企鹅前是美丽的女人!",JumpPage, 5 )
	Text( 16, "裴蒂:我会讲别人听不懂的话",JumpPage, 10 )
	Text( 16, "摩豆小子二世:我的父母不全是摩豆小子",JumpPage, 15 )

	Talk( 17, "霍金斯:海盗王这个游戏你喜欢吗?" )
	Text( 17, "我喜欢",JumpPage, 32 )
	Text( 17, "我很喜欢",JumpPage, 32 )
	Text( 17, "我非常喜欢",JumpPage, 32 )
	Text( 17, "我喜欢!",JumpPage, 32 )
	Text( 17, "我喜欢!!",JumpPage, 18 )-----------------
	Text( 17, "我喜欢!!!",JumpPage, 5 )
	Text( 17, "我还是喜欢",JumpPage, 15 )

	Talk( 18, "霍金斯:大神官有什么不良嗜好？" )
	Text( 18, "撕脚皮",JumpPage, 5 )
	Text( 18, "挖鼻子",JumpPage, 14 )
	Text( 18, "偷窥",JumpPage, 2 )
	Text( 18, "嗜酒如命",JumpPage, 9 )
	Text( 18, "大烟鬼",JumpPage, 12 )
	Text( 18, "赌鬼",JumpPage, 10 )
	Text( 18, "蹲茅厕",JumpPage, 12 )------------------
	Text( 18, "洗手",JumpPage, 4 )


	Talk( 19, "霍金斯:你确定刚才选的是正确的吗?" )
	Text( 19, "我确定",JumpPage, 21  )
	Text( 19, "我刚才选错了",JumpPage, 20  )
	Text( 19, "我还要考虑一下",JumpPage, 32  )

	Talk( 20, "霍金斯:老兄,你能不能坚定一点?" )
	Text( 20, "下一步",JumpPage, 3  )

	Talk( 21, "霍金斯:自信是海盗的美德!" )
	Text( 21, "确定",JumpPage, 5  )

	Talk( 22, "霍金斯:你确定刚才选的是正确的吗?" )
	Text( 22, "我确定",JumpPage, 24  )
	Text( 22, "我刚才选错了",JumpPage, 20  )
	Text( 22, "我还要考虑一下",JumpPage, 32  )


	Talk( 23, "霍金斯:你确定刚才选的是正确的吗?" )
	Text( 23, "我确定",JumpPage, 25  )
	Text( 23, "我刚才选错了",JumpPage, 8  )
	Text( 23, "我还要考虑一下",JumpPage, 32  )

	Talk( 24, "霍金斯:自信永远是海盗的美德!")
	Text( 24, "下一步",JumpPage, 6   )
	Talk( 25, "霍金斯:老兄,麻烦你动动脑筋,不要每次都选你确定,谁告诉你一定要相信我,我说的是自信!")
	Text( 25, "下一步",JumpPage, 32  )

	Talk( 26, "霍金斯:你确定刚才选的是正确的吗?" )
	Text( 26, "我确定",JumpPage, 28  )
	Text( 26, "我刚才选错了",JumpPage, 27  )
	Text( 26, "我还要考虑一下",JumpPage, 32  )

	Talk( 27, "霍金斯:这一举动为你节约了很多时间"   )
	Text( 27, "下一步",JumpPage, 12  )

	Talk( 28, "霍金斯:你过于自信了,这可不是海盗的美德"  )
	Text( 28, "下一步",JumpPage, 32  )



	InitTrigger()
	TriggerCondition( 1, HasMission, 1000 )
	TriggerCondition( 1, NoRecord, 1000 )
	TriggerAction( 1, SetRecord, 1001 )
	TriggerAction( 1, JumpPage, 29 )
	
	Talk( 12, "霍金斯:我认为这个智力问答游戏很有趣,你还要做一遍吗"  )
	Text( 12, "要",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12, "不要",JumpPage, 2  )

	Talk( 29, "霍金斯:恭喜你!你的勤劳智慧足以使你有资格参加碎片的争夺,现在去证明你的力量吧" )

	Talk(32, "霍金斯:你是笨蛋吗?" )
	Text( 32, "我不是,我要重来",JumpPage, 2  )
	Text( 32, "我是笨蛋,我不玩了",CloseTalk  )
	AddNpcMission	(6001)
	AddNpcMission	(6002)

	-------------霍金斯-------巨蟹
	AddNpcMission	(5823)
	AddNpcMission	(5824)
	
		
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<霍金斯



----------------------------------------托马斯·图图-------------------------
--------------------------------魔方世界二层(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "托马斯·图图:组团儿了!白冰魔三日游,团购可享九折优惠!" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1424 )
	TriggerCondition( 1, HasMission, 1414 )
	TriggerCondition( 1, NoRecord, 1424 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "回答问题",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 2, "这本书的名字是什么？注意你答错的话我会将你传走的。")
	Text( 2, "我的奋斗史",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 2, "我的倒霉史",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "我的重生史",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "我在看书，别来打扰我。")

	InitTrigger()
	TriggerAction( 1, JumpPage, 5)
	Talk( 4, "这本书的作者是谁？注意你答错的话我会将你传走的。")
	Text( 4, "汤姆·里德尔·马沃罗",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "汤姆·里德尔·马艾罗",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "汤姆·里得尔·马艾罗",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 5, "这本书一共有多少页？注意你答错的话我会将你传走的。")
	Text( 5, "5321页",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1429)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "5231页",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 5, "5132页",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "恭喜你全部答对了，看来你真是个细心的人！以后多看看书吧。")

	AddNpcMission ( 6095 )
	AddNpcMission ( 6096 )

	 
	 AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

	end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<托马斯·图图
	
	--神使
	
function Leo_talkQ()
	Talk(1,"秩序的化身,爱和正义的保护者;我是线上GM,为接受疑难申诉我在游戏里坚守自己的岗位,为帮助玩家而努力着......")
	Text(1,"关于线上GM",JumpPage,2)
	Text(1,"提交问题" , OpenGMSend)
	Text(1,"查看回复" , OpenGMRecv)
	
	Talk(2,"我是线上GM，在这里我负责将广大玩家的问题及时准确的反映给真实世界的GM，同时将他们的回复反馈给玩家，问题提交时请注意下面几点：    1，每个玩家只可以发送一条问题，等待GM回复后方可继续提交。                            2，所提交问题内容应遵循相关法律法规。     3，内容应限定在16到256个字符或者8到128个汉字之间。                                  4，请不要提与游戏不相关的问题。谢谢~")
	Text(2,"我知道了" , CloseTalk)
end


-------------------------bargi-----------------------------
function smzh_talk ()

	Talk( 1, "神秘的杂货商人：年轻人，不要轻易被眼前的幻象迷惑啊！！！" )
	Text( 1, "交易", BuyPage)
	Text( 1, "修理", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)


end 

function leo_talkzz()
	Talk(1,"您好，我是线上服务员，负责给玩家处理某些特殊的问题，请选择相应的选项继续下去")
	Text( 1,"乱斗点数混乱事件",JumpPage,2)
	Text( 1,"转生卡突变事件",JumpPage,3)
	 
	Talk(3, "朋友,你的转生卡是不是突然可以变成一块石头?那是受辐射损害导致的提前变异,为不影响你的转生请在这里将卡片还原")
	Text( 3, "确认还原",GetChaName_25, 1) 
	
	Talk(2,"如果您的乱斗点数出现了异常，请选择恢复乱斗点数，将会把您的乱斗点数清零")
	Text(2,"我的乱斗点数异常了，我要清零",PKPointToZero)
	Text(2,"不知道你在说什么",CloseTalk)
end
	



------------------------------------------------------------
----							--
----							--
----		沙岚城[教堂修女.梅拉达]			--
----							--
----		82271,353453				--
------------------------------------------------------------
-------------------------------------------------------------这里开始P话聊天
--function el_talk09 ()
--	
--	Talk( 1, "梅拉达:神爱世人，我以主的名义邀请你去圣地." )
--	Text( 1, "教堂竞拍", ListAuction)
--	Text( 1, "购买教堂参观门票", JumpPage,2 )
--	Text( 1, "购买请柬", JumpPage, 5)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasMoney,5000 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction(1, GiveItem, 3013, 1 , 4)
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk(2, "梅拉达:神圣典雅的教堂是幸福开始的地方,是爱情庄严的见证.欢迎持票参观,每张参观门票只需5000海盗币")
--	Text( 2, "确定购买",  MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk(3, "梅拉达:欢迎准时参观")
--	Talk(4, "梅拉达:您身上似乎没有足够的金钱啊!或者您的背包已锁定，请保证背包内留有一个空格")
--	
--	Talk( 5, "梅拉达:用教堂使用证书就可以购买对应教堂的请柬,每10张请柬为1组,每组5万海盗币.邀请您的朋友参加聚会吧!" )
--	Text( 5, "确定购买", ChangeItem, 1  )
--	
--	
--end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<梅拉达
	
-----------------------------怨念草
function ync_talk ()
	Talk( 1, "看什么看，再看揍你")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "回答问题",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "为什么...为什么老是要屠杀我们精灵草一族...你知道这个世界里一共有多少个杀我们精灵草和抢我们身上物品的任务吗？")
	Text( 2, "11个",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12个",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13个",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "我管你多少呢",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "我一定要报仇！你给我走远点。")

	AddNpcMission ( 6072 )
	AddNpcMission ( 6073 )
	AddNpcMission ( 6074 )
	AddNpcMission ( 6075 )
	AddNpcMission ( 6076 )
	AddNpcMission ( 6077 )

end

--------------------------------------重伤的无名战士

function Zs_Soldier ()
	Talk( 1, "小心朋友，别惊醒那只大蜥蜴。")


	AddNpcMission ( 6098 )
	AddNpcMission ( 6099 )
end
---------------------------------------------------------
--							--
--							--
--		地狱7层[拉瑞]			--
--							--
--		190, 181				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk11 ()
	
	Talk( 1, "拉瑞:欢迎造访地狱7层!地狱虽然恐怖,但也充满机遇,地狱是勇敢者的天堂." )
--	Text( 1, "请点击这里一下", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1154 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 3877, 1 , 4)
--	TriggerAction( 1, SetRecord, 1154 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "拉瑞:朋友,为了嘉奖你勇闯地狱的胆量,我将送给你一份礼物.只有一次机会哦!")
--	Text( 2, "我接受",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"谢了,我只是路过.",CloseTalk)
--
--	Talk(3, "拉瑞:勇敢者,不要客气,我的朋友地狱15层的希尔塔那有更大的惊喜等着你.千万不要错过哦!")
--	Talk(4, "拉瑞:请确定您的背包未锁定,并保证背包内留有一个空格.礼物只能领取一次哦!")
--	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<罗拉

---------------------------------------------------------
--							--
--							--
--		地狱15层[希尔塔]			--
--							--
--		314, 303				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk12 ()
	
	Talk( 1, "希尔塔:地狱15层曾经给无数人留下恶梦,只有真正的强者才能获得殊荣." )
--	Text( 1, "请点击这里一下", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1155 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 0853, 1 , 4)
--	TriggerAction( 1, SetRecord, 1155 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "希尔塔:朋友,到地狱15层挑战命运的人都有资格获得我的礼物.只有一次机会哦!")
--	Text( 2, "我接受",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"谢了,我只是路过.",CloseTalk)
--
--	Talk(3, "希尔塔:朋友,在探索地狱的道路上没有失败者,前进本来就是英雄的宿命.")
--	Talk(4, "希尔塔:请确定您的背包未锁定,并保证背包内留有一个空格.礼物只能领取一次哦!")
	
end 


---------------------------------------------------------
--							--
--							--
--		春风镇[月老]			--
--							--
--		3228,2508				--
----------------------------------------------------------
function amon_talk1 ()
	Talk( 1, "月老: 一根红线,两处情缘.道不完人间情事.")


	--AddNpcMission ( 5736 )
	--AddNpcMission ( 5737 )
end

---------------------------------------------------------
--							--
--							--
--		夏岛[牛郎]			--
--							--
--		3670,2636			--
----------------------------------------------------------
function amon_talk2 ()
	Talk( 1, "牛郎: 相聚短,银河长.悠悠鹊桥路,来人路,离人路.")


	--AddNpcMission ( 5738 )
	--AddNpcMission ( 5739 )
end

---------------------------------------------------------
--							--
--							--
--		天堂[织女]			--
--							--
--		1599,909			--
----------------------------------------------------------
function amon_talk3 ()
	Talk( 1, "织女: 相聚短,思念长.悠悠鹊桥路,离人路,来人路.")


	--AddNpcMission ( 5740 )
	
end
---------------------------------------------------------
--							--
--							--
--		白银[校长雷诺]			--
--							--
--		2232,2781			--
----------------------------------------------------------
function dina_talk01 ()
	Talk( 1, "校长雷诺: 暑假已经过去，两个月的长假之后，迎来了新的学期。")

	AddNpcMission ( 6127 )
	AddNpcMission ( 6128 )
	AddNpcMission ( 6129 )
	AddNpcMission ( 6130 )
	AddNpcMission ( 6131 )

		
end
-----------------------------------------------------------
----							--
----							--
----		沙岚[昂莉娜老师]			--
----							--
----		871,3581			--
------------------------------------------------------------
function dina_talk02 ()
	Talk( 1, "昂莉娜老师: 新学期，新开始，学无止境~")
	
	InitTrigger()
	TriggerCondition( 1, HasMission, 1458)
	TriggerCondition( 1, NoRecord, 1458)
	TriggerCondition( 1, NoRecord, 1461)
	TriggerCondition( 1, HasItem, 579, 1)
	TriggerAction( 1, JumpPage, 2)
	TriggerAction( 1, SetTestTime )
	TriggerFailure( 1, JumpPage, 20)
	Text( 1, "参加入学考试",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 2, "问题一:假期欢乐杂志是否可交易?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "可交易",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "不可交易",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "问题二:NPC克拉拉大师在那个补给站?")

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	TriggerAction( 1, RenewTestTime2)
	Text( 3, "冰都补给站",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 4)
	Text( 3, "冰极补给站",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 4, "问题三:雷贝与项链能不能同时装备?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "可以",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "不可以",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 5, "问题四:幻影三城每天开放几次?")
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "2次",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "4次",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 6, "问题五:圣光石可以镶嵌在鞋子上吗?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "可以",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "不可以",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 7, "问题六:100级的猎鹰护卫舰的航速是多少?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "623",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "632",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 8, "问题七:海盗王的职业技能中有几种技能是需要消耗道具才能施展的?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "3种",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "4种",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "问题八:冰狼堡一共有几只冰雕的狼?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "9只",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "10只",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 12, "你确定你就这样回答这些问题吗?")

	TriggerAction( 1, SetRecord, 1461)
	TriggerAction( 1, JumpPage, 13)
	Text( 12, "我确定",MultiTrigger, GetMultiTrigger(), 1  )

	Text( 12, "让我再想想", CloseTalk )
	
	Talk( 13, "回答完了就可以找我还任务了哦,别忘了.")
	Text( 13, "好的", CloseTalk )

	Talk( 20, "想参加入学考试吗?你有入学证书吗?没的话自己去找雷诺校长办一张吧")

	AddNpcMission ( 6132 )
	AddNpcMission ( 6133 )
	AddNpcMission ( 6134 )
	AddNpcMission ( 6135 )
	AddNpcMission ( 6136 )


end
-----------------------------------------------------------
----							--
----							--
--		冰极[库拉托斯1]			--
--							--
--		2646,671			--
----------------------------------------------------------
function dina_talk03 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 1)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		冰极[库拉托斯2]			--
--							--
--		2718,586			--
----------------------------------------------------------
function dina_talk04 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 2)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		冰极[库拉托斯3]			--
--							--
--		2714,699			--
----------------------------------------------------------
function dina_talk05 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 3)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")

	AddNpcMission ( 6137 )
end

---------------------------------------------------------
--							--
--							--
--		冰极[库拉托斯4]			--
--							--
--		2609,607			--
----------------------------------------------------------
function dina_talk06 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 0)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")
	AddNpcMission ( 6137 )

end

-----------------------读书系统
function reading_talk01 ()
	Talk( 1 , "小测验考官:我是驻守在白银城的小测验考官!想参加小测验的来找我就对了,不过考试前请先把学生证放入背包,之后你才能接到考试任务哦.")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3279, 1 )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerAction( 1, checkcytime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "交成绩单",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "参加小测验考试的条件是什么?" , JumpPage , 5)

	Text( 1, "小测验考试的过程是怎么样的?", JumpPage , 6)

	Talk( 4, "小测验考官:你的背包内没有成绩单和学生证哦!")

	Talk( 5, "小测验考官:参加考试的要求很严格,首先你必须有一张学生证在背包内.")

	Talk( 6, "小测验考官:首先你必须把学生证放在背包内,然后再接取测验任务,完成任务后你可以得到成绩单一张；然后我将根据你成绩单上的成绩来给你奖励哦")

	AddNpcMission ( 112 )
end

function reading_talk02 ()
	Talk( 1, "升级考考官:我是驻守在冰狼堡的升级考考官!来来来,升级考考卷大甩卖,想提升学历的来我这就对了")

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasNoItem, 3280 )
	TriggerCondition( 1, HasNoItem, 3281 )
	TriggerCondition( 1, HasNoItem, 3282 )
	TriggerAction( 1, AddChaItem7)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "我要领取考卷!",  MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, CheckKJNum )
	TriggerCondition( 1, HasItem, 3280, 1 )
	TriggerCondition( 1, HasItem, 3282, 1 )
	TriggerAction( 1 , AddChaItem8)
	TriggerAction( 1, TakeItem, 3282, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "我考完了,要领取成绩单!",  MultiTrigger, GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerCondition( 1, HasItem, 3281, 1 )
	TriggerAction( 1, checksjtime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "交成绩单,查看考试成绩!",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "参加升级考试的条件是什么?" , JumpPage , 5)

	Text( 1, "升级考试的过程是怎么样的?", JumpPage , 6)
	
	Talk( 2, "升级考考官:不符合要求,领取考卷失败,请查看参加考试的条件")

	Talk( 3, "升级考考官:你必须有且只有一张考卷和答卷在身上才可以领取成绩单")

	Talk( 4, "升级考考官:你身上没有成绩单哦")

	Talk( 5, "升级考考官:参加升级考试的要求很严格哦,首先你必须有一张学生证在背包内而且学生证内学分已满,其次,你的身上不可以有以前考试遗留下的考卷,答卷或者成绩单哦")

	Talk( 6, "升级考考官:首先你必须领取一张考卷,然后再接取升级考试任务,完成任务后你可以得到答卷一张；这样你拿着考卷以及答卷就可以在我这领取到自己这次考试的成绩单了；最后我将根据你成绩单上的成绩来给你奖励哦")
	
	AddNpcMission ( 6138 )

end


----------------------------------------------------------
--							--
--							--
--		沙岚城[教堂修女.梅拉达]			--
--							--
--		82271,353453				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk09 ()
	
	Talk( 1, "梅拉达:神爱世人,我以主的名义邀请你去圣地." )
	Text( 1, "关于教堂", JumpPage, 17)	

	Talk( 17, "梅拉达:你要租借教堂吗？今天正好有打折活动哦." )

	Text( 17, "征用教堂简介", JumpPage, 6)
	Text( 17, "教堂竞拍", ListAuction)
	Text( 17, "购买教堂参观门票", JumpPage,2 )
	Text( 17, "购买请柬", JumpPage, 5)




	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "梅拉达:神圣典雅的教堂是幸福开始的地方,是爱情庄严的见证.每周一晚17:00~17:10欢迎持票参观,每张参观门票只需5000游戏币")
	Text( 2, "确定购买",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "梅拉达:欢迎准时参观")
	Talk(4, "梅拉达:您身上似乎没有足够的金币啊!或者您的背包已锁定,请保证背包内留有一个空格")
	
	Talk( 5, "梅拉达:用教堂使用证书就可以购买对应教堂的请柬,每10枚请柬为1组,每组5万游戏币.邀请您的朋友参加聚会吧!" )
	Text( 5, "确定购买", ChangeItem, 1  )
	
	Talk( 6, "梅拉达:你想了解那一部分?" )
	Text( 6, "关于参观", JumpPage, 7)
	Text( 6, "关于教堂竞拍", JumpPage, 8)
	Text( 6, "关于教堂使用权", JumpPage, 9)
	Text( 6, "关于教堂使用证书", JumpPage, 10)

	Talk( 7, "梅拉达:购买参观门票的朋友于每周一晚17:00~17:10参观教堂.")
	Text( 7, "确定", CloseTalk)
	Text( 7, "返回", JumpPage, 6)

	Talk( 8, "梅拉达:竞拍时间:于每周一晚上18:00~20:30之间在我这里进行教堂竞拍.竞拍条件:携带教堂竞标卡1份.竞拍场次:教堂每星期出租两日,可承办四场典礼.星期六两场,礼拜天两场.每场2个小时,场次由竞拍时段决定.")
	Text( 8, "确定", CloseTalk)
	Text( 8, "返回", JumpPage, 6)

	Talk( 9, "梅拉达:共分4个时段竞拍,对应时段内出价最高的朋友将获得教堂使用权,为竞标成功者颁发教堂使用证书,还将赠送10枚请柬.")
	Text( 9, "确定", CloseTalk)
	Text( 9, "返回", JumpPage, 6)

	Talk( 10, "梅拉达:证书作用:凭该证书方可购买请柬;典礼时段内双击该证书进入教堂.在教堂使用证书上标示的时间后两小时,自动将所有在场人员传送回沙岚城.")
	Text( 10, "确定", CloseTalk)
	Text( 10, "返回", JumpPage, 6)
end 

----------------------------------------------------------
--							--
--							--
--		魔方1层兑换员[爱德华]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk13 ()
	Talk( 1, "爱德华:千年的历史被岁月尘埃所埋葬,曾经团结而富饶的加纳大陆已不复存在.谁还记得卡拉女神万年前为她爱人所留下的点点冰泪!")
	Text( 1, "兑换神泣宝箱", JumpPage, 2)
	
	Talk( 2, "爱德华:千年冰泪是守卫爱人的寸寸相思,朋友!如若你有心窥探女神丰富的精神世界,请带上1个情之殇和1个纳卡符石来兑换这迷失的神泣宝藏吧!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3827, 1)              -------------情之殇
	TriggerCondition( 1, HasItem, 3457, 1)              --------------纳卡符石
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3827, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0145, 1, 4)              ----------神泣宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "朋友,神灵不容亵渎,如若你身上还未有情之殇和纳卡符石或是你的背包格已满,请安静的离开.")

end

----------------------------------------------------------
--							--
--							--
--		魔方2层兑换员[德鲁克]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk14 ()
	Talk( 1, "德鲁克:嘿嘿,近来探寻大海盗王罗森遗留宝藏的人趋之若鹜,却不知魔方二层隐藏着一个惊天的秘密!这里的巨人首领身上流淌着摩尔克族人的血液,那些野蛮的家伙在分裂土地时,不知从王宫里盗了多少稀珍异宝!")
	
	Text( 1, "兑换霸王宝箱", JumpPage, 2)

	Talk( 2, "德鲁克:朋友,朋友!凶猛的魔尔克人没把你吓坏吧?什么?你说你有信心把他杀死?!真是佩服佩服!我妹妹最近在研制一柄火焰神器,急需这头巨人身上的1个巨人首领项链和1个纳卡符石做原料!如果你能把这两样东西找来,我将赠与你:我妹妹亲手锤炼的霸王宝箱,嘿嘿,里边的宝贝可是妹妹毕生收录的精华!!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3826, 1)             ------------巨人首领项链
	TriggerCondition( 1, HasItem, 3457, 1)             ------------纳卡符石
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3826, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0146, 1, 4)              ----------霸王宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "哎呀哎呀,你竟然还没收集到巨人首领项链和纳卡符石或是你背包太满了!那赶紧逃吧!!!摩尔克族巨人发起火来可是十分凶悍喔!")

end


---------------------------------------------------------
--							--
--							--
--		白银[魔法师夏天]			--
--							--
--		2229,2782			--
----------------------------------------------------------
function el_talk15 ()
	Talk( 1, "魔法师夏天: 我的朋友裴梦被魔王洛克残忍的杀害了。勇敢的战士,如果你能够为我找回代表我朋友灵魂的七个字母P-E-I-M-E-N-G。我将会把我收藏多年的魔法盒送给你。")
	
	Text( 1, "我想给我的戒指赋予魔力", JumpPage, 2)

	AddNpcMission ( 6139 )
	AddNpcMission ( 6161 )
	AddNpcMission ( 6166 )
		
	Talk( 2, "魔法师说道:请找到你的情人，并组好队伍，然后高声歌唱《找个好人就嫁了吧》。")
	InitTrigger()                                        
	TriggerCondition(1, HasItem, 2521, 1)               ---------商城买的情人节戒指 
	TriggerCondition(1, ValentinesRingJudge)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, ValentinesRing)
	TriggerFailure(1, JumpPage, 3)
	Text(2,"找个好人就嫁了吧,虽然不是我心里话……", MultiTrigger, GetMultiTrigger(), 1) 	
	Talk( 3, "哪里出问题了？检查一下条件是否满足吧")
	Text(3, "回到上一页", JumpPage, 2)
end


---------------------------------------------------------
--							--
--							--
--		加纳圣林[洛克家的守门人]			--
--							--
--		271，1775			--
----------------------------------------------------------
function el_talk16 ()
	
	Talk( 1, "洛克家的守门人: 我是洛克大人的忠实家仆,虽然他很残忍,但是这并不妨碍我欣赏他的能力和身材.")
	Text( 1, "我要去寂寞之塔1层！", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMission,1213 )
	TriggerAction( 1, GoTo, 352, 378, "lonetower")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "洛克家的守门人:寂寞之塔之所以寂寞是因为没有几个活人" )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "洛克家的守门人:朋友你还没接 守门人透露的信息 这个任务吧?" )
	AddNpcMission ( 6140 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔1层[洛克家的男佣]			--
--							--
--		260,257			--
----------------------------------------------------------
function el_talk17 ()
	Talk( 1, " 洛克家的男佣: 众所周知,一目了然,我比洛克帅,为什么他的情人们不这样想......")
	Text( 1, "我要去圣林！", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, 275, 1775, "garner")
	Talk( 2, "洛克家的男佣:有空常来玩,孤独的时候、快乐的时候和不知道是否快乐的时候..." )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )

	AddNpcMission ( 6141 )
	AddNpcMission ( 6142 )
	AddNpcMission ( 6143 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔2层[洛克家的女佣]			--
--							--
--		151，134			--
----------------------------------------------------------
function el_talk18 ()
	Talk( 1, "洛克家的女佣: 作为一个女佣不能不关注自己主人的私生活,否则日子会更加无聊.")


	AddNpcMission ( 6144 )
	AddNpcMission ( 6145 )
	AddNpcMission ( 6146 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔3层[洛克家的小秘]			--
--							--
--		63，311			--
----------------------------------------------------------
function el_talk19 ()
	Talk( 1, " 洛克家的小秘: 我知道我漂亮,不要垂涎我.")


	AddNpcMission ( 6147 )
	AddNpcMission ( 6148 )
	AddNpcMission ( 6149 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔4层[洛克家的守护者]			--
--							--
--		261，70			--
----------------------------------------------------------
function el_talk20 ()
	Talk( 1, "洛克家的守护者: 守护者是用来尊敬的.洛克什么时候才能明白这个道理呢")


	AddNpcMission ( 6150 )
	AddNpcMission ( 6151 )
	AddNpcMission ( 6152 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔5层[洛克家的管家]			--
--							--
--		542，54			--
----------------------------------------------------------
function el_talk21 ()
	Talk( 1, "洛克家的管家: 管家管家,主人不管就是我的家.")


	AddNpcMission ( 6153 )
	AddNpcMission ( 6154 )
	AddNpcMission ( 6155 )
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔6层[魔王洛克的情人]			--
--							--
--		541，268			--
----------------------------------------------------------
function el_talk22 ()
	Talk( 1, "魔王洛克的情人: 我可能不是Rock最美丽的情人,但一定是最花心的一个.")


	AddNpcMission ( 6156 )
	AddNpcMission ( 6157 )
	AddNpcMission ( 6158 )
	
end

---------------------------------------------------------
--							--
--							--
--		地狱4层[洛克家的旺财]			--
--							--
--		154,912			--
----------------------------------------------------------
function el_talk23 ()
	Talk( 1, "洛克家的旺财: 汪汪汪汪汪汪汪...你汪,我汪,大家汪!")


	AddNpcMission ( 6159 )
	AddNpcMission ( 6160 )

end

---------------------------------------------------------
--							--
--							--
--		秋岛[秋岛导游小姐]			--
--							--
--		2423,3186			--
----------------------------------------------------------
function el_talk24 ()
	Talk( 1, "秋岛导游小姐: 金秋组团游!欢迎来到秋岛,今天是我第一次导游,祝愿你在这里度过一段温馨美好的时光.谢谢!")


	AddNpcMission ( 6162 )
	AddNpcMission ( 6163 )
	AddNpcMission ( 6164 )
	AddNpcMission ( 6165 )
	
end

---------------------------------------------------------
--							--
--							--
--		冰狼[礼品派送专员]			--
--							--
--		1307,500			--
----------------------------------------------------------
function pre_talk()
	Talk( 1, "你好,我是礼品派送专员,专门负责派送礼品给大家的,希望你们能喜欢.")
	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1872 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1872, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "领取精灵硬币宝箱", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1570 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1570, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "领取精灵辉印宝箱", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1571 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1571, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "领取精灵王辉印宝箱", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 2, "你背包内已经有该种类型的宝箱了,不需要再领取,也有可能你的背包没空格了.")
end

-----------------------------------------------------------------------------
-- 白银城-----四艘小尖刀号、珊瑚号、巨鲸号（配合程序修改的船舱非法道具问题）
-----------------------------------------------------------------------------

function k_talk001()

	Talk( 1, "... ..." )

end


---------------------------------------------------------
--							--
--							--
--		夏岛[西门庆]			--
--							--
--		3734，2661			--
----------------------------------------------------------
function el_talk25 ()
	Talk( 1, "西门庆: 西门我其实是个正经人,爱一个人有什么错?如果有来生,我希望在所有男人之前遇到她.")

---------------------秋岛开发
	AddNpcMission ( 6176 )
	AddNpcMission ( 6178 )
	AddNpcMission ( 6181 )
	AddNpcMission ( 6183 )
	
end

---------------------------------------------------------
--							--
--							--
--		夏岛传送使·艾蒙			--
--							--
--		3714，2664			--
----------------------------------------------------------
function el_talk26 ()
	Talk( 1, " 夏岛传送使·艾蒙: 因为我爱上旅行,所以我做了传送使,送别人去旅行.")
	Text( 1, "我要去秋岛!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, 2414,3174, "darkblue")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "夏岛传送使·艾蒙:时刻享受人生的美景..." )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "夏岛传送使·艾蒙:朋友,你好歹也带500块出门啊!否则别人会认为你没面子" )
end

----------------------------------------------------------

	--圣诞村[斐谢特]		

--		221150,278125				
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk29 ()
	
	
	Talk( 1, "斐谢特:圣诞快乐!华丽温馨的圣诞节怎么可以没有美味的圣诞宴呢?" )		

	
	Text(1, "烹调美味的火鸡肉", JumpPage, 2)
	Text(1, "烹调圣诞大餐", JumpPage, 5)
	
	
---------------------烹调美味的火鸡肉
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4)
	Talk( 2, "斐谢特:我需要原材料10个火鸡肉,当然你还要支付给我10000海盗币的辛苦费")
	Text(2, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "斐谢特:这是我精心烹调的美味火鸡肉,赶快尝尝,味道怎么样?" )

	Talk( 5, "斐谢特:做圣诞大餐喽,每人只限三次哦!")
	Text(5, "第一次烹制圣诞大餐",  JumpPage, 6)
	Text(5, "第二次烹制圣诞大餐",  JumpPage, 7)
	Text(5, "第三次烹制圣诞大餐", JumpPage, 8)
	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 9 )
	Talk( 6, "要做圣诞大餐可不容易,我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我10000海盗币的辛苦费,而且只能为每人做3次")
	Text( 6, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk(7, "又来做圣诞大餐?我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我1百万海盗币的辛苦费,而且只能为每人做3次")
	Text( 7, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage,11 )
	Talk(8, "又来做圣诞大餐?我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我1千万海盗币的辛苦费,而且只能为每人做3次")
	Text( 8, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第一次做圣诞大餐吗?只能做3次.")
	Talk( 10, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第二次做圣诞大餐吗?只能做3次哦.")
	Talk( 11, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第三次做圣诞大餐吗?只能做3次哦.")
	Talk( 4, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!请确保您的背包未锁定,并且至少要有一个空格哦.")
	Talk(12, "斐谢特:这是我精心烹调的圣诞大餐,赶快尝尝,味道怎么样?" )
	AddNpcMission ( 6191 )
end 

------------------------------------------------------------
-- 圣诞村-----圣诞老人的洗衣机
------------------------------------------------------------
function el_talk30()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "圣诞快乐!这是一台古老的清洗机,在这里可以洗涤你的一切,你需要清洗么?每次200G." )
	Text( 1, "清洗污泥", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "清洗圣诞盒子", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "哇!好脏的盒子!清洗这么脏的盒子必须支付10000海盗币" )
	Text( 3, "确定清洗", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "好漂亮的盒子!打开会有惊喜吧" )
	Talk( 2, "清洗失败,没有支付足够的金钱或者没有需要清洗的物品" )
	AddNpcMission ( 6195 )
end


---------------------------------------------------------
--							--
--							--
--		冰狼堡[圣诞老人麦瑞]			--
--							--
--		（1216，550）			--
----------------------------------------------------------
function el_talk27 ()
	Talk( 1, "麦瑞: 圣诞快乐!愿你得到世上最真挚美好的祝福.想要拿到最诱人的圣诞礼物吗?去商城买一张圣诞护送资格证你就可以在我这里接取护送圣诞老人的任务了.")
	--------------护送圣诞老人
	AddNpcMission	(6185)
end


---------------------------------------------------------
--							--
--							--
--		冰极补给站[圣诞老人克瑞斯莫斯]		--
--							--
--		（2111，557）			--
----------------------------------------------------------
function el_talk28 ()
	Talk( 1, "克瑞斯莫斯: 圣诞快乐!你听说过圣诞村吗?那是一个充满快乐的天堂.")
	--------------护送圣诞老人
	AddNpcMission	(6186)

end

---------------------------------圣诞商人行会会长
function Xmas_talk01 ()
	Talk( 1, "圣诞商人行会会长:Merry Christmas~我为这个美丽的圣诞节准备了很多的货物哦,你有兴趣想看一下吗?")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "冰之力", JumpPage , 3)
	Text( 2, "雷之力", JumpPage , 4)
	Text( 2, "风之力", JumpPage , 5)
	Text( 2, "炎之力", JumpPage , 6)
	Text( 2, "雄狮药剂", JumpPage , 7)
	Text( 2, "鹰眼药剂", JumpPage , 8)
	Text( 2, "灵猴药剂", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "蛮牛药剂", JumpPage, 11)
	Text( 10, "圣灵药剂", JumpPage, 12)
	Text( 10, "28格背包", JumpPage, 13)
	Text( 10, "摩豆小子", JumpPage, 14)
	Text( 10, "组队经验果", JumpPage, 15)
	Text( 10, "替身宝宝", JumpPage, 16)
	Text( 10, "下一页", JumpPage , 17)

	Talk( 17, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 17, "上一页", JumpPage , 10)
	Text( 17, "初级精灵自爆", JumpPage, 18)
	Text( 17, "加速成长果", JumpPage, 19)
	Text( 17, "圣诞老人的馈赠", JumpPage, 20)

	Talk( 3, "兑换冰之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "兑换雷之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换风之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换炎之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换雄狮药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 897, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换鹰眼药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 894, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换灵猴药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 893, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换蛮牛药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 895, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换圣灵药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 896, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换28格背包的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 3088, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换摩豆小子的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 680, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换组队经验果的话总共需要面额80W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换替身宝宝的话总共需要面额55W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "兑换初级精灵自爆的话总共需要面额500W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 500 )
	TriggerAction( 1, GiveItem, 610, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 19, "兑换加速成长果的话总共需要面额20W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 578, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "兑换圣诞老人的馈赠的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 2877, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end

-------------------------------------------------------------------圣诞杂货商A
function Xmas_talk02 ()
	Talk( 1, "圣诞杂货商:圣诞节到拉~我为这个温馨的圣诞准备了很多货物,有兴趣看一下吗?你肯定会喜欢的!")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了，我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "高级伐木斧", JumpPage , 3)
	Text( 2, "高级矿镐", JumpPage , 4)
	Text( 2, "高级项链兑换券", JumpPage , 5)
	Text( 2, "高级贝壳兑换券", JumpPage , 6)
	Text( 2, "迷之锁", JumpPage , 7)
	Text( 2, "高级充电电池", JumpPage , 8)
	Text( 2, "气球游戏券", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "豪华礼花", JumpPage, 11)
	Text( 10, "菊型礼花", JumpPage, 12)
	Text( 10, "花球", JumpPage, 13)
	Text( 10, "金苹果", JumpPage, 14)
	Text( 10, "智慧果", JumpPage, 15)
	Text( 10, "神算草", JumpPage, 16)
	Text( 10, "邪恶土著酋长召唤券", JumpPage , 17)

	Talk( 3, "兑换高级伐木斧的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 207, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换高级矿镐的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 208, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换高级项链兑换券的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换高级贝壳兑换券的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 582, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换迷之锁的话总共需要面额15W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 2440, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换高级充电电池的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1024, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换气球游戏券的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3083, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换豪华礼花的话总共需要面额9W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3082, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换菊型礼花的话总共需要面额9W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3081, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换花球的话总共需要面额15W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 3080, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换金苹果的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 3291, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换智慧果的话总共需要面额20W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3290, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换神算草的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3336, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "兑换邪恶的土著酋长召唤券的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3013, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
	AddNpcMission ( 6197 )
end

-------------------------------------------------------------------圣诞杂货商B
function Xmas_talk03 ()
	Talk( 1, "圣诞礼品商:Merry Christmas~我为这个美丽的圣诞节准备了很多的货物哦,你有兴趣想看一下吗?")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "海盗船长零零发召唤券", JumpPage , 3)
	Text( 2, "蜥蜴战士统领召唤券", JumpPage , 4)
	Text( 2, "组队经验果", JumpPage , 5)
	Text( 2, "替身宝宝", JumpPage , 6)
	Text( 2, "高级怪物契约", JumpPage , 7)
	Text( 2, "中级怪物契约", JumpPage , 8)
	Text( 2, "初级怪物契约", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "石材催化剂", JumpPage, 11)
	Text( 10, "液体催化剂", JumpPage, 12)
	Text( 10, "食材催化剂", JumpPage, 13)
	Text( 10, "特殊催化剂", JumpPage, 14)
	Text( 10, "骨头催化剂", JumpPage, 15)
	Text( 10, "植物催化剂", JumpPage, 16)
	Text( 10, "毛皮催化剂", JumpPage , 17)

	Talk( 3, "兑换海盗船长零零发召唤券的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3014, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换蜥蜴战士统领召唤券的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3012, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换组队经验果的话总共需要面额80W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换替身宝宝的话总共需要面额55W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换高级怪物契约的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 2607, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换中级怪物契约的话总共需要面额200W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 200 )
	TriggerAction( 1, GiveItem, 2606, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换初级怪物契约的话总共需要面额60W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 60 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 60 )
	TriggerAction( 1, GiveItem, 2605, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换石材催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2625, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换液体催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2638, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换食材催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2630, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换特殊催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2634, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换骨头催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2635, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换植物催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2636, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "兑换毛皮催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2637, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end
-------------------------------------------------------------------圣诞商人·我行我酷
function Xmas_talk04 ()
	Talk( 1, "圣诞商人·我行我酷:来来来,买了我的东西今年的圣诞节你将无比幸福,不要犹豫啦,来看下吧~")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "圣诞情人烟花", JumpPage , 3)
	Text( 2, "圣诞狂欢烟花", JumpPage , 4)
	Text( 2, "心型I", JumpPage , 5)
	Text( 2, "心型LOVE", JumpPage , 6)
	Text( 2, "心型U", JumpPage , 7)
	Text( 2, "心型我", JumpPage , 8)
	Text( 2, "心型爱", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "心型你", JumpPage, 11)
	Text( 10, "玫瑰花", JumpPage, 12)
	Text( 10, "黑魔翅膀", JumpPage, 13)
	Text( 10, "甜蜜巧克力", JumpPage, 14)

	Talk( 3, "兑换圣诞情人烟花的话总共需要面额180W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 180 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 180 )
	TriggerAction( 1, GiveItem, 2870, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换圣诞狂欢烟花的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 2871, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换心型I的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3354, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换心型LOVE的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3355, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换心型U的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3356, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换心型我的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3359, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换心型爱的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3357, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换心型你的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3358, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换玫瑰花的话总共需要面额20W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3343, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换黑魔翅膀的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换甜蜜巧克力的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3077, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
	AddNpcMission ( 6199 )
end

-------------------------------------------------------------------圣诞商人·我酷我行
function Xmas_talk05 ()
	Talk( 1, "圣诞商人·我酷我行:你好呀,圣诞快乐!我很酷是吧,我的东西比我更酷,来看下吧~")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "青蝠翅膀", JumpPage , 3)
	Text( 2, "精灵之翼", JumpPage , 4)
	Text( 2, "红龙翅膀", JumpPage , 5)
	Text( 2, "<技·白痴>技能书", JumpPage , 6)
	Text( 2, "<技·鄙视>技能书", JumpPage , 7)
	Text( 2, "<技·大便>技能书", JumpPage , 8)
	Text( 2, "<技·金钱雨>技能书", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "<技·内裤>技能书", JumpPage, 11)
	Text( 10, "<技·骗子>技能书", JumpPage, 12)
	Text( 10, "<技·傻子>技能书", JumpPage, 13)
	Text( 10, "<技·胸罩>技能书", JumpPage, 14)

	Talk( 3, "兑换青蝠翅膀的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换精灵之翼的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换红龙翅膀的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换<技·白痴>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1130, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换<技·鄙视>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1131, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换<技·大便>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1037, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换<技·金钱雨>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1129, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换<技·内裤>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1038, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换<技·骗子>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1132, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换<技·傻子>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1133, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换<技·胸罩>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1039, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end

-------------------------------------------------------------------圣诞商人·学者
function Xmas_talk06 ()
	Talk( 1, "圣诞商人·学者:Merry Christmas~我为这个美丽的圣诞节准备了很多的货物哦,你有兴趣想看一下吗?")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "航海士高级读物", JumpPage , 3)
	Text( 2, "封印师高级读物", JumpPage , 4)
	Text( 2, "圣职者高级读物", JumpPage , 5)
	Text( 2, "狙击手高级读物", JumpPage , 6)
	Text( 2, "巨剑士高级读物", JumpPage , 7)
	Text( 2, "双剑士高级读物", JumpPage , 8)
	Text( 2, "航海士中级读物", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "封印师中级读物", JumpPage, 11)
	Text( 10, "圣职者中级读物", JumpPage, 12)
	Text( 10, "狙击手中级读物", JumpPage, 13)
	Text( 10, "巨剑士中级读物", JumpPage, 14)
	Text( 10, "双剑士中级读物", JumpPage, 15)
	Text( 10, "魔力催化", JumpPage, 16)
	Text( 10, "下一页", JumpPage , 17)

	Talk( 17, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 17, "上一页", JumpPage , 10)
	Text( 17, "海草清除剂", JumpPage, 18)
	Text( 17, "寒冰水晶", JumpPage, 19)
	Text( 17, "动力帆", JumpPage, 20)
	Text( 17, "冰灵护佑", JumpPage, 21)
	Text( 17, "魔法草", JumpPage, 22)

	Talk( 3, "兑换航海士高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3272, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换封印师高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3271, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换圣职者高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换狙击手高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换巨剑士高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换双剑士高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换航海士中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3266, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换封印师中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3265, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换圣职者中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3264, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换狙击手中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3263, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换巨剑士中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3262, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换双剑士中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3261, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换魔力催化的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3300, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "兑换海草清除剂的话总共需要面额25W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 25 )
	TriggerAction( 1, GiveItem, 3114, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "兑换寒冰水晶的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3463, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "兑换动力帆的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3046, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 21, "兑换冰灵护佑的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3301, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 22, "兑换魔法草的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3462, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end

----------------------------------------------------圣诞村科恩
function Xmas_talk07 ()
	Talk ( 1, "我讨厌这圣洁雪白的冬天.朋友，为什么不抛弃这些无聊的庆祝活动出去杀戮一番呢?白银,冰狼和沙岚城外有许多的火鸡,麋鹿和雪人,去干掉他们,然后把证据带回来，我不会亏待你的.")
--	Text ( 1, "我带来了一百个火鸡的羽毛", JumpPage, 2)
--	Text ( 1, "我带来了一百个麋鹿的尖角", JumpPage, 3)
--	Text ( 1, "我带来了一百个雪人的眼球", JumpPage, 4)
	Text ( 1, "我想去圣诞竞技场", JumpPage, 5)
	Text ( 1, "为什么我们要杀戮这些可怜的怪物呢?", JumpPage, 10)

--	Talk ( 2, "你确定要用这一百个火鸡的羽毛跟我换一个圣诞礼盒吗?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2879, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2879, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpHuojiNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 2, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 3, "你确定要用这一百个麋鹿的尖角跟我换一个圣诞礼盒吗?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2881, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2881, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpMiluNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 4, "你确定要用这一百个雪人的眼球我换一个圣诞礼盒吗?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2880, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2880, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpXuerenNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "我们一共有5个竞技场,你想去哪一个呢?")
	Text ( 5, "圣诞竞技场A", GoTosdBoss, 1 )
	Text ( 5, "圣诞竞技场B", GoTosdBoss, 2 )
	Text ( 5, "圣诞竞技场C", GoTosdBoss, 3 )
	Text ( 5, "圣诞竞技场D", GoTosdBoss, 4 )
	Text ( 5, "圣诞竞技场E", GoTosdBoss, 5 )

	Talk ( 6, "祝你有个快乐的圣诞")

	Talk ( 7, "你背包内好象没有足够的道具哦,也有可能你的背包已锁或者背包内没有空格.")

	Talk ( 10, "告诉你个秘密,如果你们能上缴足够数量的供品给我,那么我就能在圣诞竞技场中召唤出极其强大的黑暗BOSS,不过怎么才能击败它们就是你们该考虑的事啦!")

	AddNpcMission ( 6187 )
	AddNpcMission ( 6188 )
	AddNpcMission ( 6189 )
	AddNpcMission ( 6193 )
	AddNpcMission ( 6204 )
end

----------------------------------------------------圣诞村圣诞老人
function Xmas_talk08 ()
	Talk ( 1, "圣诞老人:呵呵~圣诞快乐~~我这里可以为大家兑换圣诞村专用的购物硬币,如果你想在这个圣诞村里Shopping的话那就找我好了.")

	Text ( 1, "我想兑换圣诞万元硬币", JumpPage, 2)
	Text ( 1, "我想兑换圣诞百万元硬币", JumpPage, 3)
	Text ( 1, "我想把圣诞万元硬币兑换回海盗币", JumpPage, 4)
	Text ( 1, "我想把圣诞百万元硬币兑换回海盗币", JumpPage, 5)
	Text ( 1, "我想回冰狼堡", JumpPage, 6)

	Talk ( 2, "兑换一个圣诞万元硬币需要10000的海盗币,你确认要兑换吗?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2962, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 2, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 3, "兑换一个圣诞百万元硬币需要100W的海盗币,你确认要兑换吗?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 2963, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 3, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 4, "你确定要把圣诞万元硬币换成10000海盗币吗?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2962, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2962,1 )
	TriggerAction( 1, AddMoney, 10000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 4, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "你确定要把圣诞百万元硬币换成100W海盗币吗?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2963, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2963,1 )
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 5, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, GoTo, 1318,510, "darkblue")
	Talk( 6, "你确定要离开这里回到冰狼堡吗?")
	Text( 6, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )

	Talk ( 9, "祝你有个快乐的圣诞节~")
	Talk ( 10, "你的钱不够哦,也有可能你的背包已锁定或者没有足够的空格.")
	Talk ( 11, "你没有此道具,也有可能你的背包已锁定.")
	AddNpcMission ( 6201 )
	AddNpcMission ( 6202 )
end

-----------------------------------------冰狼堡圣诞村传送使
function movexmas_talk()
	Talk ( 1, "圣诞村传送使:Merry Christmas~想去圣诞村吗？想去你就说啊,你不说我怎么知道呢?不可能说你不想去我偏偏送你去,也不可能你想去我偏偏不送你的!")
	Text ( 1, "我想去圣诞村", JumpPage, 2)
	Text ( 1, "这人好罗嗦,我还是走了", CloseTalk)


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, 144,136, "07xmas" )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, 144,136, "07xmas")
	TriggerFailure( 2, JumpPage, 3 )
	Talk( 2, "美丽的圣诞村现在正在开放期间,只要支付区区500海盗币我就可以送你过去,如果你是10级以下的新手的话我可以免费为你服务哦.")
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 3, "圣诞村传送使:没钱吗?那很抱歉不能为你服务了哦.")
	AddNpcMission ( 6190 )
	AddNpcMission ( 6192 )
	AddNpcMission ( 6194 )
	AddNpcMission ( 6196 )
	AddNpcMission ( 6198 )
	AddNpcMission ( 6200 )
end

---------------------------------------圣诞竞技场传送使
function movexmas_talk01 ()
	Talk ( 1, "圣诞快乐~你想回到圣诞村吗?不再多玩会了吗?那好,我这里的服务可是全免费的哦!")
	Text ( 1, "我想回圣诞村", JumpPage, 2)


	InitTrigger()
	TriggerAction( 1, GoTo, 144,136, "07xmas")
	Talk( 2, "准备好了吗?.")
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )
end

-------------------------------------以下为土著狂欢者--------bragi
function Xmas_talk09 ()
	Talk ( 1, "圣诞篝火在欢快的跳动着~")
	AddNpcMission ( 6203 )
end

function Xmas_talk10 ()
	Talk ( 1, "土著狂欢者:为了这美丽欢乐的节日,来和我们一起围着篝火跳舞吧!")
end

function Xmas_talk11 ()
	Talk ( 1, "土著狂欢者:雪花...舞蹈...篝火...火鸡...雪人...圣诞树...礼物...还有比这更完美的圣诞节吗?")
end

function Xmas_talk12 ()
	Talk ( 1, "土著狂欢者:还是围着篝火比较暖和啊!朋友，要不要来一起烤会火,跳个舞呢?")
end

function Xmas_talk13 ()
	Talk ( 1, "土著狂欢者:我还是觉得我的舞姿才是最棒的，你不这样认为吗?")
end

function Xmas_talk14 ()
	Talk ( 1, "土著狂欢者:今天的晚餐是什么呢?会有香喷喷的火鸡吗?好想念妈妈的手艺啊.")
end

function Xmas_talk15 ()
	Talk ( 1, "土著狂欢者:虽然不太喜欢这寒冷的天气,不过圣诞节的氛围真好啊!好开心啊!")
end

-------------------------------------以下为小动物群------bragi
function Xmas_talk16 ()
	Talk ( 1, "小鹿斑比:没来过圣诞村么?你真落伍,告诉你哈,圣诞村中间有棵很大的圣诞树,传说对这圣诞树许愿是很灵验的.快去试试吧~~~!哈哈,祝你圣诞快乐!")
end

function Xmas_talk17 ()
	Talk ( 1, "冰龙萨菲拉:别挤我啊!小心我发火揍你们哦!")
end

function Xmas_talk18 ()
	Talk ( 1, "小吉米:喂喂,别挡住我嘛,我也想要一份礼物!就一份,可以吗?")
end

function Xmas_talk19 ()
	Talk ( 1, "快乐的雪娃娃:波尔先生!你的口袋里都装了些什么啊?有甜甜的糖果吗?有漂亮的玩具吗?")
end

function Xmas_talk20 ()
	Talk ( 1, "小猫辛丝:叮叮当,叮叮当,铃儿响叮当~~~!哈哈.今年一定是个快乐的圣诞节,告诉你个秘密哦.据说圣诞节当天午夜12点的时候,神秘的逆转圣诞村入口会出现在村里.别忘了去看看哦~~记得多穿点.")
end

function Xmas_talk21 ()
	Talk ( 1, "飞熊猫派达:有巧克力味道的竹笋吗?给我一些!!")
end

function Xmas_talk22 ()
	Talk ( 1, "小路易丝:圣诞节咯!!你们看,这是我妈妈帮我新买的海军帽子,很漂亮吧!")
end

function Xmas_talk23 ()
	Talk ( 1, "波尔先生:好的好的孩子们,我这准备了很多礼物,每个人都会有的,不要挤哦!")
end

function Xmas_talk24 ()
	Talk ( 1, "小汤姆:有谁愿意和我一起去打雪仗的吗?不过先说好,我要做将军!!!终有一天我会超过科恩的,带着火鸡羽毛去找他证明我的实力,就是在圣诞村中下方喷泉上面的那个家伙.")
	AddNpcMission ( 6205 )
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[呆呆的呆呆]			--
--							--
--		3901, 4301			--
----------------------------------------------------------
function peter_talk01 ()
	Talk( 1, "呆呆的呆呆: 别看我叫呆呆，其实我一点也不呆，我的智商可是高达180哦！")

end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[游客·伊玛]			--
--							--
--		10802, 5602             		--
----------------------------------------------------------
function peter_talk02 ()
	Talk( 1, "游客·伊玛:过节的时候,放下所有的纷扰,来这里和大家一起过圣诞,是我一年中最轻松的事,嘘,不要告诉别人我是谁,一会我还要去扮成圣诞老人发奖品呢,到时候看你能不能认出我来,哈哈哈。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[西林的爸爸]		--
--							--
--		11803, 6103			        --
----------------------------------------------------------
function peter_talk03 ()
	Talk( 1, "西林的爸爸:告诉你的爸爸,就说我说的,圣诞节该给孩子们零花钱,因为你总买不全所有他们爱吃的糖果,当然,还有一句,看好自己的孩子,瞧,我的西林就跟丢了。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[游客·温努]			--
--							--
--		5904, 4704			--
----------------------------------------------------------
function peter_talk04 ()
	Talk( 1, "游客·温努: 嗨!圣诞快乐,你一定和我一样是来这里过圣诞的吧?哈哈,快去找圣诞商人,他们有好多很炫的东西呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[哈根大叔]			--
--							--
--		3001 ，11701			--
----------------------------------------------------------
function peter_talk05 ()
	Talk( 1, "哈根大叔: 哈哈!哈哈!圣诞节啊。哈哈,我一开心就只会`哈哈`哈哈哈。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[嘻哈小子]			--
--							--
--		7031, 4902			--
----------------------------------------------------------
function peter_talk06 ()
	Talk( 1, "嘻哈小子: come on!圣诞你该怎么炫?戴起墨镜来装酷?不不不,让我告诉你,穿一套圣诞老人的衣服才酷。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[卡利米船长]			--
--							--
--		3101, 11901			--
----------------------------------------------------------
function peter_talk07 ()
	Talk( 1, "卡利米船长: 你怀疑海上的孩子们收不到圣诞礼物?放心,圣诞老人会让孩子都满意的!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[船员艾尼]			--
--							--
--		4401, 8401			--
----------------------------------------------------------
function peter_talk08 ()
	Talk( 1, "船员艾尼: 船长真是大发慈悲了,往年的圣诞节我只能漂啊漂啊,这次终于带我来这里参加圣诞聚会了!太高兴了。")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[上尉卡里]			--
--							--
--		25801, 23101			--
----------------------------------------------------------
function peter_talk09 ()
	Talk( 1, "上尉卡里: 这里的节日气氛会让你忘记了冬天的存在,真想和孩子们一起玩啊,可是身为军人,我有自己的职责,祝你玩得开心!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[海军士兵]			--
--							--
--		19401, 3901			--
----------------------------------------------------------
function peter_talk10 ()
	Talk( 1, "海军士兵: 我敢保证,大家在这里都可以尽情的享受圣诞的快乐,绝对不会有不开心的事发生,你问为什么?没看见我手里的警棍么!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[游客·罗琳斯]			--
--							--
--		7301, 23601			        --
----------------------------------------------------------
function peter_talk11 ()
	Talk( 1, "游客·罗琳斯: 我喜欢圣诞节,我喜欢在这里玩,好多可爱的东东喔,你想买一件圣诞礼物送给我么?")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[小摊贩朱迪]			--
--							--
--		13901, 6101			--
----------------------------------------------------------
function peter_talk12 ()
	Talk( 1, "小摊贩朱迪: 如果游玩能够赚到钱,我也不用摆摊了,呵呵,但是我摆看到顾客买到称心的东西时开心的样子,我就觉得值。")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[小摊贩切尔]			--
--							--
--		3301, 21601			        --
----------------------------------------------------------
function peter_talk13 ()
	Talk( 1, "小摊贩切尔:你去过真爱岛么?如果你没去过,那一定要买买这个纪念品,你说你去过了?那就更该买这个做圣诞纪念品了啊!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛小摊贩罗门			--
--							--
--		8701, 20401			         --
----------------------------------------------------------
function peter_talk14 ()
	Talk( 1, "圣诞岛小摊贩罗门: 冬天的时候,只有节日礼品是所有人肯花钱的。")
end
 
--------------------------------------------------------
--							--
--							--
--		圣诞岛小摊贩耶亚			--
--							--
--		25501, 12401    			--
----------------------------------------------------------
function peter_talk15 ()
	Talk( 1, "圣诞岛小摊贩耶亚: 嗨!圣诞快乐!瞧我穿的这身衣服好看么?")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[篝火老人]			--
--							--
--		24801, 9801			        --
----------------------------------------------------------
function peter_talk16 ()
	Talk( 1, "篝火老人: 看那红红的火焰吧,整个圣诞的夜空将被它照亮,每当这时候我就想起了年轻时围着篝火跳舞的情景。要珍惜现在啊。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[白胡子鲁特]			--
--							--
--		13001,23601			--
----------------------------------------------------------
function peter_talk17 ()
	Talk( 1, "白胡子鲁特:你觉得我有多大?在圣诞老人面前我们都是孩子嘛,我可真是孩子哦,不信我们来打雪仗。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[老太太克拉]			--
--							--
--		23901, 22701	         		--
----------------------------------------------------------
function peter_talk18 ()
	Talk( 1, "老太太克拉: 嗨!嗨!该积极的帮助来过圣诞节的人们啊!我可是个热心肠,哪里的路你要是不知道就找我!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[红胡子雷顿]			--
--							--
--		24601, 19701			--
----------------------------------------------------------
function peter_talk19 ()
	Talk( 1, "红胡子雷顿: 呃?你要和我说话?唔,我很久没和人交谈了,上次和人说话是什么时候?……唔?你是谁?你要和我说话?…呃…我想问你什么来着…")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小摊贩尤卡丹]			--
--							--
--		23201, 20001			--
----------------------------------------------------------
function peter_talk20 ()
	Talk( 1, "小摊贩尤卡丹: HOoooo,圣诞节快乐!看你这么喜欢圣诞节,为什么不拿个气球呢?听说圣诞老人先给拿气球的孩子发礼物哦!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小淘气西林]			--
--							--
--		22801, 5401			--
----------------------------------------------------------
function peter_talk21 ()
	Talk( 1, "小淘气西林:呜…我要爸爸…我领到了圣诞老人的蛋糕,可是却找不到爸爸了…")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[短尾巴卡斯]			--
--							--
--		25601, 4301			--
----------------------------------------------------------
function peter_talk22 ()
	Talk( 1, "短尾巴卡斯:以前圣诞节就是收礼物,这回我要自己去找礼物,圣诞老人送的礼物总是和爸爸前两天偷偷买回家的一样,我都知道,厉害吧?")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小女孩西尔文]			--
--							--
--		21501, 4101			--
----------------------------------------------------------
function peter_talk23 ()
	Talk( 1, "小女孩西尔文:哟~~圣诞快乐!一起开心的过节吧!什么?你没烟花?嘿嘿,告诉你哦,可以去圣诞村中央下方的市场去购买~~~还有很多其他打折商品.记得去看看哦.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[欧米]			--
--							--
--		20601, 7601			--
----------------------------------------------------------
function peter_talk24 ()
	Talk( 1, "欧米:在古老的东方有一句名言,书中自有黄金屋,书中自有颜如玉.快点去学个读书技能试试吧!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[佐姆]			--
--							--
--		19401, 23501			--
----------------------------------------------------------
function peter_talk25 ()
	Talk( 1, "佐姆: 告诉你个秘密,快去那边,对,一堆气球的地方,那边有很多好东西卖呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[马克]			--
--							--
--		19401, 20101			--
----------------------------------------------------------
function peter_talk26 ()
	Talk( 1, "马克:看见游客我就会主动对他们说~嗨~~我是马克~。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[林克]			        --
--							--
--		17301, 23501		         	--
----------------------------------------------------------
function peter_talk27 ()
	Talk( 1, "林克: 有人说我不该从厨房里跑出来…我想这是圣诞老人的点子,看着大家在我周围笑的肚子痛,我也笑的直不起腰了,圣诞快乐!记住啊,今年的圣诞,你看见过矮冬瓜林克在街上!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[文娜]			--
--							--
--		15701, 23401			--
----------------------------------------------------------
function peter_talk28 ()
	Talk( 1, "文娜: 我长的矮么?我是圣诞老人最好的助手呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[圣诞雪人雷格林]			--
--							--
--		15101, 25901			        --
----------------------------------------------------------
function peter_talk29 ()
	Talk( 1, "圣诞雪人雷格林: 我不该说话,但是,还是祝你圣诞快乐!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[圣诞雪人卡格林]			--
--						 	--
--		6601, 8301			        --
----------------------------------------------------------
function peter_talk30 ()
	Talk( 1, "圣诞雪人卡格林: HELLO!!圣诞快乐,你知道曾经有个船长被石头跟踪的故事么?哈哈,还没听过啊?那今晚你可要抓着圣诞老人给你讲,晚上你会笑醒的!!")
end




--------------------------------------------------------
--							--
--							--
--		圣诞岛[圣诞村指导员]		--
--						 	--
--		                         	        --
----------------------------------------------------------
function Xmas_talk25 ()
	Talk( 1, "圣诞快乐!欢迎来到美丽的圣诞村,我可是这里的万事通,有什么不知道的尽管问我吧")
	Text( 1, "圣诞村的活动",JumpPage, 2  )
	Text( 1, "圣诞村可以买到什么",JumpPage, 3  )
	Text( 1, "圣诞竞技场",JumpPage, 4 )

	Talk( 2, "你的圣诞礼盒脏了吗?找清洗机(83,39)吧......你想吃火鸡大餐吗?找斐谢特(220,40)吧......你想点播祝福吗?请找圣诞树(144,158)吧......都了解了吗?快点返回吧....")
	Text( 2, "返回",JumpPage, 1  )

	Talk( 3, "你可以到(132,246)附近,那里有一个很大的集市,可以买到很多传说中的东东哦。不过你先要到圣诞老人(146,171)把海盗币换成圣诞硬币，我们的营业员可是不能直接收钱的……快去抢购吧")
	Text( 3, "返回",JumpPage, 1  )

	Talk( 4, "据说圣诞竞技场里有极其恐怖的BOSS,不过好象还没有足够的供品来召唤它们,你可以到(146,252)找科恩问问!")
	Text( 4, "返回",JumpPage, 1  )
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小乐尼]			--
--						 	--
--		9801, 23501			        --
----------------------------------------------------------
function peter_talk31 ()
	Talk( 1, "小乐尼:你有想过晚上在圣诞老人送礼物的时候把他抓住养在家里么?我就试过,可惜失败了,不过今晚我想的办法绝对能抓住他,想知道什么办法?到了明天才能告诉你! ")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[拿铁小子]			--
--						 	--
--		14501, 26802			        --
----------------------------------------------------------
function peter_talk32 ()
	Talk( 1, "拿铁小子:哦吼~圣诞老人给我带来了一大桶我最爱的拿铁,整个冬天我都是最幸福的啦!圣诞节万岁~")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[笨蛋约翰]			--
--						 	--
--		18101, 23903			        --
----------------------------------------------------------
function peter_talk33 ()
	Talk( 1, "笨蛋约翰:嗨~圣诞快乐~别人都叫我约翰,你可能也知道我的外号,但是我不笨的,我都知道小乐尼今晚有办法抓住圣诞老人的事呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[说笑话的麋鹿]			--
--						 	--
--		22201, 22804			        --
----------------------------------------------------------
function peter_talk34 ()
	Talk( 1, "说笑话的麋鹿:你听说了吗?我有一个同伴,它十分擅长奔跑,有一次它越跑越快,结果就变成了高速公路!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[米奇亚外婆]			--
--						 	--
--		24801, 8105			        --
----------------------------------------------------------
function peter_talk35 ()
	Talk( 1, "米奇亚外婆:圣诞节的晚上,你可一定要记得把袜子挂在圣诞树上哦,圣诞老人会给你送来礼物的.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[伊鲁森教士]			--
--						 	--
--		5501, 19506			        --
----------------------------------------------------------
function peter_talk36 ()
	Talk( 1, "伊鲁森教士:有一个真心朋友就足够了,有十个真正的朋友,你就天下无敌.耶酥保佑你,我的朋友.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[卡鲁]			--
--						 	--
--		11301, 23907			        --
----------------------------------------------------------
function peter_talk37 ()
	Talk( 1, "卡鲁: 每天晚上别抱着电视消磨时间啦~今晚换点花样,和朋友们一起聚会吧!一个人的圣诞节总是闹不起来,我就在尝试着改变呢.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[布奇]			--
--						 	--
--		26301, 17308			        --
----------------------------------------------------------
function peter_talk38 ()
	Talk( 1, "布奇: 你知道吗?据说有一种叫做万能宝石的东西,据说可以让使用者变的更强大,具体的情况你可以找冰狼的麦瑞问下!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[里纳多]			--
--						 	--
--		17401, 6009			        --
----------------------------------------------------------
function peter_talk39 ()
	Talk( 1, "里纳多:看着人们都在点播祝福,我也很想点播一句心里话：我要加公资!我要带薪放假!我要拿奖金!…还有,别让老板知道是我说的.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[克莱尔]			--
--						 	--
--		3401, 20011			        --
----------------------------------------------------------
function peter_talk40 ()
	Talk( 1, "克莱尔: 节日虽然快乐~但是也要注意安全哦!我可不想一大早就在医院里看到有病人在! ")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[迪可斯]			--
--						 	--
--		7401, 20511			        --
----------------------------------------------------------
function peter_talk41 ()
	Talk( 1, "迪可斯:好多的雪啊,难道这么大的地方都要我来扫吗?我希望这个圣诞节我能得到的礼物是一台除雪机!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[普罗]			--
--						 	--
--		20901, 21912			        --
----------------------------------------------------------
function peter_talk42 ()
	Talk( 1, "普罗: 从海上无尽的漂泊到现在站在你的面前,我懂得了生活要珍惜现在,能站在陆地上过圣诞节,实在是件值得庆祝的事,我会对每个人大声的祝福!享受现在的生活吧!圣诞快乐!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[温尼丽]			--
--						 	--
--		26401, 13813			        --
----------------------------------------------------------
function peter_talk43 ()
	Talk( 1, "温尼丽: 我一直想当一名航海家!我要让我的船开的比圣诞老人飞起来还要快!将来圣诞老人还要拜托我帮他运送礼物呢.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[加菲]			--
--						 	--
--		24801, 8114			        --
----------------------------------------------------------
function peter_talk44 ()
	Talk( 1, "加菲: 知道圣诞节该怎么过吗?我觉得坐在软软的沙发上,看电视,吃意大利千层面才是最棒的!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[问题小多多]			--
--						 	--
--		26101, 8915			        --
----------------------------------------------------------
function peter_talk45 ()
	Talk( 1, "问题小多多: 我从哪里来的?冬天的玫瑰花怎么来的?小雪人和小麋鹿宠物是怎么来的?唔,这些我都知道,我只是想听听你知不知道.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[奥斯卡]			--
--						 	--
--		19301, 4016			        --
----------------------------------------------------------
function peter_talk46 ()
	Talk( 1, "奥斯卡: 圣诞节到了,就算是作为最伟大的冒险家的我也应该停下来和孩子们打打雪仗,好好享受一下美味的火鸡了吧.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[彩颐]			--
--						 	--
--		19101, 8417			        --
----------------------------------------------------------
function peter_talk47 ()
	Talk( 1, "彩颐: 这就是圣诞节吗?我还是第一次过这个节日呢~不过那个圣诞老人胖乎乎的真可爱,还有那棵大大的圣诞树也好漂亮哦,你去看了吗?")
end

------------------------------------------------------------
-- 神秘的考古学家
------------------------------------------------------------
function dina_talk07()
	
	Talk( 1, "神秘的考古学家:竟然被你发现我了的存在!我其实是一名专职研究冰雪封印的考古学家。对了，如果你有被冰雪封印的武器，可以找我帮解封，当然不可能是免费的！" )
	Text( 1, "我要解冰雪封印", JumpPage, 2)

	Talk( 2, "神秘的考古学家:嗯,既然你找到我,那我就不推辞了,我可以解除这些封印,只要你给我找到解封所需的东西就可以了." )
	Text( 2, "冷凝轻剑", JumpPage, 4)
	Text( 2, "冷凝重剑", JumpPage, 5)
	Text( 2, "狂雪刀", JumpPage, 6)
	Text( 2, "圣雪盾", JumpPage, 7)
	Text( 2, "雪月刺", JumpPage, 8)
	Text( 2, "雪魔枪", JumpPage, 9)
	Text( 2, "寒魅弓", JumpPage, 10)
	Text( 2, "下一页", JumpPage, 3)
	
	Talk( 3, "神秘的考古学家:嗯,既然你找到我,那我就不推辞了,我可以解除这些封印,只要你给我找到解封所需的东西就可以了." )
	Text( 3, "寒羽之仗", JumpPage, 11)
	Text( 3, "鬼霜之杖", JumpPage, 12)
	

	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4274, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4274, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 4, "神秘的考古学家:要解除冷凝轻剑的封印你必须给我以下物品:冰雪封印的冷凝轻剑、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 4, "解除冷凝轻剑的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4275, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4275, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 5, "神秘的考古学家:要解除冷凝重剑的封印你必须给我以下物品:冰雪封印的冷凝重剑、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 5, "解除冷凝重剑的封印", MultiTrigger, GetMultiTrigger(), 1)
	
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4281, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4281, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 6, "神秘的考古学家:要解除狂雪刀的封印你必须给我以下物品:冰雪封印的狂雪刀、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 6, "解除狂雪刀的封印", MultiTrigger, GetMultiTrigger(), 1)
	

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4282, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4282, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 7, "神秘的考古学家:要解除圣雪盾的封印你必须给我以下物品:冰雪封印的圣雪盾、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 7, "解除圣雪盾的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4276, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4276, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 8, "神秘的考古学家:要解除雪月刺的封印你必须给我以下物品:冰雪封印的雪月刺、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 8, "解除雪月刺的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4277, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4277, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 9, "神秘的考古学家:要解除雪魔枪的封印你必须给我以下物品:冰雪封印的雪魔枪、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 9, "解除雪魔枪的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4278, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4278, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 10, "神秘的考古学家:要解除寒魅弓的封印你必须给我以下物品:冰雪封印的寒魅弓、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 10, "解除寒魅弓的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4279, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4279, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 11, "神秘的考古学家:要解除寒羽之仗的封印你必须给我以下物品:冰雪封印的寒羽之仗、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 11, "解除寒羽之仗的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4280, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4280, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 12, "神秘的考古学家:要解除鬼霜之杖的封印你必须给我以下物品:冰雪封印的鬼霜之杖、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 12, "解除鬼霜之杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "神秘的考古学家:很抱歉,你给我的物品不对,我无法为你解除封印." )

end

-------------------------------------------------------------------------------------------------------
----BOSS挑战登记员
-------------------------------------------------------------------------------------------------------
function bragi_talk01()
	Talk( 1, "背生双翅,叱咤风云,这就是转生的魅力!!想提高你的转生等级吗?找我就没错了.")
	Text( 1, "为什么我接不到提升转生等级的任务?", JumpPage, 2 )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1431)
	TriggerCondition( 1, NoMission, 1430)
	TriggerCondition( 1, NoMission, 1432)
	TriggerCondition( 1, NoMission, 1433)
	TriggerCondition( 1, NoMission, 1434)
	TriggerCondition( 1, NoMission, 1435)
	TriggerCondition( 1, NoMission, 1436)
	TriggerCondition( 1, NoMission, 1437)
	TriggerCondition( 1, NoMission, 1438)
	TriggerCondition( 1, NoMission, 1439)
	TriggerCondition( 1, NoMission, 1440)
	TriggerCondition( 1, NoMission, 1441)
	TriggerCondition( 1, NoMission, 1442)
	TriggerAction( 1, ClearRecord, 1431)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4)
	
	Text( 1, "我想修复中断后无法接取任务的问题", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "想要接到挑战BOSS,提高转生等级的任务,必须达成两个条件.首先,你必须先完成转生任务顺利转生,第二,你必须完成转生天使交给的'新的磨练'以及之后的一系列任务,达成这两个条件的话，你就可以到我这里来领取挑战BOSS,提升转生经验的任务了哦.")
	Text(2, "我知道了,再见", CloseTalk)
	
	Talk( 3, "修复成功")
	
	Talk( 4, "你肯定弄错了吧,我觉得你没必要修复")

	AddNpcMission	(6102)
	AddNpcMission	(6103)
	AddNpcMission	(6104)
	AddNpcMission	(6105)
	AddNpcMission	(6106)
	AddNpcMission	(6107)
	AddNpcMission	(6108)
	AddNpcMission	(6109)
	AddNpcMission	(6110)
	AddNpcMission	(6111)
	AddNpcMission	(6112)
	AddNpcMission	(6113)
end

------------------------------------------------------------
-- 白银之城:神秘帽商
------------------------------------------------------------

function dina_talk08()

	Talk( 1, "神秘帽商:听说帽子精炼系统开放了，我来赚上一票，哈哈哈~慢慢看，慢慢挑哦！" )
	Text( 1, "交易", BuyPage )

	InitTrade()
	Defence(	2553	)
	Defence(	2583	)
	Defence(	2584	)
	
end

------------------------------------------------------------
-- 天堂:教皇史昂
------------------------------------------------------------

function dina_talk10()

	Talk( 1, "教皇史昂:我的圣斗士们被冥王囚禁做了地狱守护者，我正发愁着如何把他们救出来。年轻人，如果你还没有做好准备，如果你还无法义无反顾，请回到美丽的白银城去吧。只有真正的海盗王才有胆量进入地狱那黑暗而危机四伏的领域。" )
	
	AddNpcMission	(6214)
	AddNpcMission	(6227)
end

------------------------------------------------------------
-- 天堂:小天使
------------------------------------------------------------

function dina_talk11()

	Talk( 1, "小天使:我在这里等待我们的海盗王，只要你拥有浴火重生石，就可以接受雅典娜的祝福，成为真真正正的海盗王！" )
	Text( 1, "我要接受雅典娜的祝福", JumpPage, 2)
	Text( 1, "我只是来看看", CloseTalk)
	
	Talk( 2, "小天使:雅典娜等了很多年，终于等到了你。您可以获得重生并能力提升。您想做哪个职业呢？" )
	Text( 2, "成为双剑士维护世界和平",  GetChaName1_born2, 1)
	Text( 2, "成为巨剑士保护无辜的人",  GetChaName2_born2, 1)
	Text( 2, "成为圣职者为大家救死扶伤",  GetChaName5_born2, 1)
	Text( 2, "成为航海士扬帆远航",  GetChaName3_born2, 1)
	Text( 2, "成为狙击手杀人于无形", GetChaName4_born2, 1)
	Text( 2, "成为封印师让所有BOSS臣服脚下", GetChaName6_born2, 1)
	Text( 2, "我再考虑一下", CloseTalk)
	
end



------------------------------------------------------------
-- 地狱5层:穆
------------------------------------------------------------

function dina_talk12()

	Talk( 1, "穆:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6215)
	
end

------------------------------------------------------------
-- 地狱6层:阿鲁狄巴
------------------------------------------------------------

function dina_talk13()

	Talk( 1, "阿鲁狄巴:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6216)
	
end

------------------------------------------------------------
-- 地狱7层:撒加
------------------------------------------------------------

function dina_talk14()

	Talk( 1, "撒加:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6217)
	
end

------------------------------------------------------------
-- 地狱8层:狄马斯
------------------------------------------------------------

function dina_talk15()

	Talk( 1, "狄马斯:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6218)
	
end

------------------------------------------------------------
-- 地狱10层:艾奥利亚
------------------------------------------------------------

function dina_talk16()

	Talk( 1, "艾奥利亚:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6219)
	
end

------------------------------------------------------------
-- 地狱11层:沙加
------------------------------------------------------------

function dina_talk17()

	Talk( 1, "沙加:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6220)
	
end

------------------------------------------------------------
-- 地狱12层:童虎
------------------------------------------------------------

function dina_talk18()

	Talk( 1, "童虎:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6221)
	
end

------------------------------------------------------------
-- 地狱13层:米罗
------------------------------------------------------------

function dina_talk19()

	Talk( 1, "米罗:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6222)
	
end

------------------------------------------------------------
-- 地狱14层:艾俄罗斯
------------------------------------------------------------

function dina_talk20()

	Talk( 1, "艾俄罗斯:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6223)
	
end

------------------------------------------------------------
-- 地狱15层:修罗
------------------------------------------------------------

function dina_talk21()

	Talk( 1, "修罗:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6224)
	
end

------------------------------------------------------------
-- 地狱16层:加妙
------------------------------------------------------------

function dina_talk22()

	Talk( 1, "加妙:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6225)
	
end

------------------------------------------------------------
-- 地狱17层:阿布罗狄
------------------------------------------------------------

function dina_talk23()

	Talk( 1, "阿布罗狄:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6226)
	
end

-------------------狱警
function prison_talk01 ()
	Talk ( 1, "其实在这监狱里待久了你也会喜欢上这的.")
	Text ( 1, "了解出狱的方法", JumpPage, 2)

	Talk ( 2, "想出狱的话有很多种途径,你想了解一下哪一种呢?")
	Text ( 2, "第一种方法", JumpPage, 3)
	Text ( 2, "第二种方法", JumpPage, 4)
	Text ( 2, "第三种方法", JumpPage, 5)

	Talk ( 3, "第一种方法:你可以找监狱长领取一张监狱记录卡,将此卡放置在背包第三格后在监狱乖乖待满一小时你就可以找监狱长出狱了.")
	Text ( 3, "返回", JumpPage, 2)
	Text ( 3, "离开", CloseTalk)

	Talk ( 4, "第二种方法:据说在监狱岛的一角有一个自立为王的监狱老大,他身上可能带着出狱证明,如果你能夺取过来的话就可以找监狱长出狱了.")
	Text ( 4, "返回", JumpPage, 2)
	Text ( 4, "离开", CloseTalk)

	Talk ( 5, "第三种方法:有一个神秘的商城里好象也有出狱证明的,那个商城叫什么来着...好象是摩力商城.")
	Text ( 5, "返回", JumpPage, 2)
	Text ( 5, "离开", CloseTalk)

	AddNpcMission	(6231)

end

--------------------监狱长
function prison_talk02 ()
	Talk ( 1, "到了我这一亩三分地,就要按这的规矩办事,是龙你得盘着,是虎你得卧着.")

	InitTrigger()
	TriggerCondition( 1, NoItem, 5724, 1 ) --监狱记录卡
	TriggerCondition( 1, HasRecord, 1280 ) --完成监狱指引任务
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 5724, 1, 4) --监狱记录卡
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 5)
	Text ( 1, "我要领取监狱记录卡", MultiTrigger, GetMultiTrigger(), 1)

	Text ( 1, "我要离开这里.", JumpPage, 4)

	Talk ( 2, "记住你要把这张监狱记录卡放在背包第三格才有效哦.")

	Talk ( 4, "只有你背包内有出狱证明,或者你的监狱记录卡上剩余时间为0时我才可以放你出去,你确定要里开这里吗?")
	
	InitTrigger()
	TriggerCondition( 1, Checkjlktime ) --检测监狱记录卡上剩余时间是否为0
	TriggerAction( 1, TakeItem, 5724, 1) --提取监狱记录卡
	TriggerAction( 1, Leaveprison ) --离开监狱岛
	TriggerCondition( 2, HasItem, 5723, 1) --出狱证明
	TriggerAction( 2, TakeItem, 5723, 1) --提取出狱证明
	TriggerAction( 2, Leaveprison ) --离开监狱岛
	TriggerFailure( 2, JumpPage, 6)

	Text ( 4, "确认离开", MultiTrigger, GetMultiTrigger(), 2)
	Text ( 4, "我再想想", CloseTalk)

	Talk ( 5, "你无法领取监狱记录卡,请确定你已完成了出狱之路这个任务!如果你已完成,尚未领到纪录卡很可能是因你的背包内已经有了一张记录卡,也有可能是你的背包没空格或者已锁导致的")

	Talk ( 6, "不符合出狱条件,你还是乖乖给我在监狱待着吧.")

	AddNpcMission	(6230)

end


----------------------------------------------------------
--							--
--							--
--		白银[加纳·罗伊]			--
--							--
--		2235,2785		--
----------------------------------------------------------
function dean_talk01 ()

	Talk( 1, "加纳·罗伊: 哦，我亲爱的朋友，欢迎你接受挑战,勇敢的你将获得丰厚的收获以及圣王传承的荣誉，你将得到整个海盗世界的关注！")
	Text( 1, "1级圣王宝藏", JumpPage, 2)
	Text( 1, "2级圣王宝藏钥匙", JumpPage, 7)
	Text( 1, "3级圣王宝藏钥匙", JumpPage, 9)
	Text( 1, "4级圣王宝藏钥匙", JumpPage, 11)
	Text( 1, "5级圣王宝藏钥匙", JumpPage, 13)
	
	Talk( 2, "加纳·罗伊: 1级圣王宝藏是圣王年轻时期就留下的财富，它是所有海盗都梦寐以求的，你愿意接受挑战吗？")
	Text( 2, "我接受", JumpPage, 3)
	Text( 2, "我不接受", CloseTalk)
	
	Talk( 3, "加纳·罗伊: 那就开始吧！选择一个适合你的迷宫出发吧！")
	
	Text( 3, "挑战废灵迷宫", JumpPage, 4)
	Text( 3, "挑战沼泽迷宫", JumpPage, 5)
	Text( 3, "挑战魔方迷宫", JumpPage, 6)
	
	Talk( 4, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5776, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 4, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "不知道你在说什么", CloseTalk)
	
	Talk( 5, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5791, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 5, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "不知道你在说什么", CloseTalk)
	
	Talk( 6, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5792, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 6, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "不知道你在说什么", CloseTalk)
	
	Talk( 7, "加纳·罗伊: 想要打开2级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 7, "我想知道，快告诉我吧", JumpPage, 8)
	Text( 7, "我可没兴趣知道", CloseTalk)
	
	Talk( 8, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5793, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 8, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "不知道你在说什么", CloseTalk)
	
	
	Talk( 9, "加纳·罗伊: 想要打开3级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 9, "我想知道，快告诉我吧", JumpPage, 10)
	Text( 9, "我可没兴趣知道", CloseTalk)
	
	Talk( 10, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5794, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 10, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "不知道你在说什么", CloseTalk)
	
	Talk( 11, "加纳·罗伊: 想要打开4级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 11, "我想知道，快告诉我吧", JumpPage, 12)
	Text( 11, "我可没兴趣知道", CloseTalk)
	
	Talk( 12, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5795, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 12, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "不知道你在说什么", CloseTalk)
	
	Talk( 13, "加纳·罗伊: 想要打开5级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 13, "我想知道，快告诉我吧", JumpPage, 14)
	Text( 13, "我可没兴趣知道", CloseTalk)
	
	Talk( 14, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5796, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 14, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "不知道你在说什么", CloseTalk)
	
	
	
	
	
	Talk( 22, "加纳·罗伊: 请确保你身上没有我给你的密函以及月光宝盒，背包也不能上锁或是满的！")
	Text( 22, "离开", CloseTalk)
	
end	
	
	
	
----------------------------------------------------------
--							--
--							--
--		雷霆堡[斯通纳]			--
--							--
--		730,1508		                     --
----------------------------------------------------------
function dean_talk03 ()

	Talk( 1, "斯通纳: 你好，找我有事吗？")
	Text( 1, "兑换一级圣王宝藏", JumpPage, 10 )
	Text( 1, "兑换二级圣王宝藏钥匙", JumpPage, 3 )
	Text( 1, "兑换三级圣王宝藏钥匙", JumpPage, 4 )
	Text( 1, "兑换四级圣王宝藏钥匙", JumpPage, 5 )
	Text( 1, "兑换五级圣王宝藏钥匙", JumpPage, 6 )
	
	
	Talk( 10,"请根据你挑战的迷宫来选择兑换，不要选错哦！")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------废旧的月光宝盒
	TriggerCondition(1, HasRecord, 1281)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1281)       --清除record 1281
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1级圣王宝藏
	TriggerFailure(1, JumpPage, 9)	
	Text( 10, "我挑战的是废灵迷宫", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------废旧的月光宝盒
	TriggerCondition(1, HasRecord, 1282)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1282)   	--清除record 1282
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1级圣王宝藏
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "我挑战的是沼泽迷宫", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------废旧的月光宝盒
	TriggerCondition(1, HasRecord, 1283)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1283)     --清除record 1283
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1级圣王宝藏
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "我挑战的是魔方迷宫", MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 10, "取消", CloseTalk)	
	
	
	Talk( 3,"兑换二级圣王宝藏钥匙需要一个能量为0的陈旧的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5787, 1)               ---------陈旧的月光宝盒
	TriggerCondition(1, HasRecord, 1284)
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, ClearRecord, 1284)    --清除record 1284
	TriggerAction(1, GiveItem, 5782, 1, 4)              ----------2级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 3, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "我不换", CloseTalk)
	
	Talk( 4,"兑换三级圣王宝藏钥匙需要一个能量为0的崭新的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5788, 1)               ---------崭新的月光宝盒
	TriggerCondition(1, HasRecord, 1285)
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, ClearRecord, 1285)   --清除record 1285
	TriggerAction(1, GiveItem, 5783, 1, 4)              ----------3级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 4, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "我不换", CloseTalk)
	
	Talk( 5,"兑换四级圣王宝藏钥匙需要一个能量为0的精致的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5789, 1)               ---------精致的月光宝盒
	TriggerCondition(1, HasRecord, 1286)
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, ClearRecord, 1286)    --清除record 1286
	TriggerAction(1, GiveItem, 5784, 1, 4)              ----------4级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 5, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "我不换", CloseTalk)
	
	Talk( 6,"兑换五级圣王宝藏钥匙需要一个能量为0的卓越的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5790, 1)               ---------卓越的月光宝盒
	TriggerCondition(1, HasRecord, 1287)
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, ClearRecord, 1287)     --清除record 1287
	TriggerAction(1, GiveItem, 5785, 1, 4)              ----------5级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 6, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "我不换", CloseTalk)
	
	
	Talk( 9, "请确定你选择了正确的迷宫并且身上只有一个并且是能量为0的月光宝贝盒哦")
	
	
	
	AddNpcMission	(6232)
	AddNpcMission	(6233)
	AddNpcMission	(6234)
	AddNpcMission	(6235)
	AddNpcMission	(6236)
	AddNpcMission	(6237)
	AddNpcMission	(6238)
end

----------------------------------------------------------
--							--
--							--
--		白银城[城户沙织]			--
--							--
--		2279,2757		                     --
----------------------------------------------------------
function sds_talk01 ()
	Talk( 1, "城户沙织: 好无聊啊,我想再看一遍圣斗士！")
	AddNpcMission	(6239)
	AddNpcMission	(6249)

end



----------------------------------------------------------
--							--
--							--
--		白银城[星矢]			--
--							--
--		2167,2511		                     --
----------------------------------------------------------
function sds_talk02 ()
	Talk( 1, "星矢: 燃烧吧！我的小宇宙！为了女神！战斗吧！")
	AddNpcMission	(6240)
	AddNpcMission	(6241)

end



----------------------------------------------------------
--							--
--							--
--		沙岚[紫龙]			--
--							--
--		1126,3416		                     --
----------------------------------------------------------
function sds_talk03 ()
	Talk( 1, "紫龙: 为了雅典娜,燃烧我的小宇宙。")
	Text( 1, "我要回答问题", JumpPage, 2 )
	
	
	Talk( 2, "你真要开始回答？")
	InitTrigger() 	
	TriggerCondition(1, HasRecord, 1294)
	TriggerAction(1, JumpPage, 4)
	TriggerFailure(1, JumpPage, 3)
	Text( 2, "确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "取消", CloseTalk )
	
	Talk( 3, "不好意思，你似乎还没接取任务。")
	
	
	Talk( 4, "1，	请问牧先生在隐居时所居住的帕米尔高原在哪个洲？")
	Text( 4, "亚洲", JumpPage, 5 )
	Text( 4, "欧洲", JumpPage, 9 )
	Text( 4, "南美洲", JumpPage, 9 )
	
	Talk( 5, "2，	请问在圣斗士里面，海王是干什么的？")
	Text( 5, "卖鱼的", JumpPage, 9 )
	Text( 5, "卖船的", JumpPage, 6 )
	Text( 5, "搞海洋运输的", JumpPage, 9 )
	
	Talk( 6, "3，	请问以下几个名字中，哪个在海盗王npc中没出现过")
	Text( 6, "梦裴", JumpPage, 9 )
	Text( 6, "哈哈大叔", JumpPage, 9 )
	Text( 6, "西门", JumpPage, 7 )
	
	
	Talk( 7, "4，	请问海盗王的圣斗士12宫起始npc在哪座城市？")
	Text( 7, "白银城", JumpPage, 9 )
	Text( 7, "雷霆堡", JumpPage, 8 )
	Text( 7, "冰狼堡", JumpPage, 9 )


	InitTrigger() 
	TriggerCondition(1, HasRecord, 1294)               
	TriggerAction(1, SetRecord, 1293)
	Talk( 8, "5，	以下哪个国家没举办过奥林匹克运动会")
	Text( 8, "荷兰", JumpPage, 9 )
	Text( 8, "新西兰", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 8, "加拿大", JumpPage, 9 )

	Talk( 9, "您答错了，请从头开始回答")



	AddNpcMission	(6242)
	AddNpcMission	(6243)

end

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰河]			--
--							--
--		1533,699		                     --
----------------------------------------------------------
function sds_talk04 ()

	
	
	Talk( 1, "冰河: 高贵的我,在这里,看着白皑皑的景色,生出高贵的心,妈妈,我想你......")
	Text( 1,"给我疯狂撒加召唤券吧!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1297)               
	TriggerCondition(1, HasItem, 3152, 99)               
	TriggerCondition(1, HasMoney, 100000) 
    TriggerAction(1, GiveItem, 5805,1,31) 	
	TriggerAction(1, TakeItem, 3152, 99)               
	TriggerAction(1, TakeMoney, 100000)               
	TriggerAction(1, SetRecord, 1298)               
	TriggerFailure(1, JumpPage, 3)

	
	Talk( 2, "冰河: 要疯狂撒加召唤券要100000和99个宠物饲料哦！")
	Text( 2, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "冰河: 你的东西不够啊！")
	
	AddNpcMission	(6244)
	AddNpcMission	(6245)

end
----------------------------------------------------------
--							--
--							--
--		加勒比[瞬]			--
--							--
--		619,965		                     --
----------------------------------------------------------
function sds_talk05 ()
	Talk( 1, "瞬: 哥哥......你为什么要去骷髅岛，为什么？啊，你来了。你是不是已经完成我伙伴的任务了呢？身上还有任务的话，我这里是什么也得不到的。")
	AddNpcMission	(6246)

end


----------------------------------------------------------
--							--
--							--
--		地狱一层[一辉]			--
--							--
--		336,174		                     --
----------------------------------------------------------
function sds_talk06 ()
	Talk( 1, "一辉: 瞬......你一定要坚强......")
	Text( 1,"给我邪恶教皇召唤券吧!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1303)               
	TriggerCondition(1, HasItem, 5807, 1)               
	TriggerCondition(1, HasItem, 5808, 1)               
	TriggerCondition(1, HasItem, 5809, 1)               
	TriggerCondition(1, HasItem, 5810, 1)               
	TriggerAction(1, TakeItem, 5807, 1)               
	TriggerAction(1, TakeItem, 5808, 1)               
	TriggerAction(1, TakeItem, 5809, 1)               
	TriggerAction(1, TakeItem, 5810, 1)               
	TriggerAction(1, GiveItem, 5811, 1,31)               
	TriggerAction(1, SetRecord, 1305)               
	TriggerFailure(1, JumpPage, 3)


	Talk( 2, "一辉: 要找邪恶教皇？你四张cosplay证书都收集好了没？如果你没有足够强的实力的话是无法挑战教皇的,实力必须达到55级以上")
	Text( 2, "确定", MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "一辉: 你的东西不够啊！")
	
	AddNpcMission	(6247)
	AddNpcMission	(6248)

end
----------------------------------------------------------
--		雷霆堡[艾米娜]			--
--		741,1505		                  --
----------------------------------------------------------
function aimina_talk01 ()
	Talk( 1, "你好啊，我最喜欢收集耐久为0的月光宝盒了，如果你有的话我愿意用一些材料与你交换！")
	Text( 1,"我想兑换", JumpPage, 2)
	Text( 1,"离开", CloseTalk)
	
	Talk( 2, "不同品质的月光宝盒的价值也是不一样的哦！让我看看你要用来兑换的是哪种呢？")
	Text( 2,"废旧的月光宝盒", JumpPage, 3)
	Text( 2,"陈旧的月光宝盒", JumpPage, 4)
	Text( 2,"崭新的月光宝盒", JumpPage, 5)
	Text( 2,"精致的月光宝盒", JumpPage, 6)
	Text( 2,"卓越的月光宝盒", JumpPage, 7)
	
	Talk( 3, "废旧的月光宝盒？你可以获得15个废灵武士骸骨,10个废灵弓箭手骸骨和15个泣灵武士骸骨")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5786, 1)               
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 3434, 15, 4)
	TriggerAction(1, GiveItem, 3435, 10, 4)
	TriggerAction(1, GiveItem, 3436, 15, 4)
	TriggerFailure(1, JumpPage, 15)
	Text( 3, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "离开", CloseTalk)
	
	
	
	Talk( 4, "陈旧的月光宝盒？你可以获得10个精灵辉印和99个精灵硬币")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5787, 1)               
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, Take_THSJ_Record)
	TriggerAction(1, GiveItem, 2588, 10, 4)
	TriggerAction(1, GiveItem, 0855, 99, 4)
	TriggerFailure(1, JumpPage, 16)
	Text( 4, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, "离开", CloseTalk)
	
	
	Talk( 5, "崭新的月光宝盒？你可以获得30个粘乎乎水草和99个精灵硬币")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5788, 1)               
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0)               
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, Take_THSJ_Record)
	TriggerAction(1, GiveItem, 4511, 30, 41)
	TriggerAction(1, GiveItem, 0855, 99, 4)	
	TriggerFailure(1, JumpPage, 14)
	Text( 5, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, "离开", CloseTalk)
	
	
	
	Talk( 6, "精致的月光宝盒？你可以获得1个黑龙祭坛,1个精灵王辉印和1个宝藏密钥")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5789, 1)               
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 0266, 1, 65)
	TriggerAction(1, GiveItem, 2589, 1, 31)
	TriggerAction(1, GiveItem, 3000, 1, 41)
	TriggerFailure(1, JumpPage, 13)
	Text( 6, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "离开", CloseTalk)
	
	
	Talk( 7, "卓越的月光宝盒？你可以获得5个精灵王辉印,2个青龙钥匙,1个宝藏密钥和5个精灵果汁")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5790, 1)               
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 4)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 2589, 5, 31)
	TriggerAction(1, GiveItem, 5703, 2, 41)
	TriggerAction(1, GiveItem, 3000, 1, 41)
	TriggerAction(1, GiveItem, 3122, 5, 31)
	TriggerFailure(1, JumpPage, 12)
	Text( 7, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, "离开", CloseTalk)
	
	Talk( 15, "请确认你身上有能量为0的废旧的月光宝盒！记得背包不要上锁并且留好3个空位哦！")
	Text( 15, "离开", CloseTalk)
	Talk( 16, "请确认你身上有能量为0的陈旧的月光宝盒！记得背包不要上锁并且留好2个空位哦！")
	Text( 16, "离开", CloseTalk)
	Talk( 14, "请确认你身上有能量为0的崭新的月光宝盒！记得背包不要上锁并且留好2个空位哦！")
	Text( 14, "离开", CloseTalk)
	Talk( 13, "请确认你身上有能量为0的精致的月光宝盒！记得背包不要上锁并且留好3个空位哦！")
	Text( 13, "离开", CloseTalk)
	Talk( 12, "请确认你身上有能量为0的卓越的月光宝盒！记得背包不要上锁并且留好4个空位哦！")
	Text( 12, "离开", CloseTalk)
end
----------------------------------------------------------
--							--
--							--
--		沙岚城 圣火传递大使		--
--							--
--		871,3580		                     --
----------------------------------------------------------
function ay_talk01 ()
	Talk( 1, "圣火传递大使: 伟大的圣火传递活动就要到来了，可是到现在我还没有看到圣火火炬出现在海盗王的世界中，难道是因为神圣的火种遗失了？年轻人，可以帮我查查这件事吗？")
	AddNpcMission	(6250)
	AddNpcMission	(6254)
	AddNpcMission	(6255)
	AddNpcMission	(6266)
	AddNpcMission	(6267)
	AddNpcMission	(6270)
	AddNpcMission	(6271)
	AddNpcMission	(6275)
	AddNpcMission	(6276)
	AddNpcMission	(6279)
	
end
----------------------------------------------------------
--							--
--							--
--		沙岚城 圣火台		          --
--							--
--		856,3707		                     --
----------------------------------------------------------
function ay_talk02 ()
	Talk( 1, "恭喜你通过了圣火传递的所有考验，你将会得到你所应得的奖励！")
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1324)
	TriggerCondition(1, HasItem, 5842, 1)
	TriggerCondition(1, HasItem, 5797, 1)
	TriggerCondition(1, HasItem, 5798, 1)
	TriggerCondition(1, HasItem, 5799, 1)
	TriggerCondition(1, HasItem, 5800, 1)
	TriggerCondition(1, HasItem, 5801, 1)
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5842, 1)
	TriggerAction(1, TakeItem, 5797, 1)
	TriggerAction(1, TakeItem, 5798, 1)
	TriggerAction(1, TakeItem, 5799, 1)
	TriggerAction(1, TakeItem, 5800, 1)
	TriggerAction(1, TakeItem, 5801, 1)
	TriggerAction(1, GiveItem, 5825, 1, 26)   --点燃的火炬
	TriggerAction(1, GiveItem, 5827, 1, 26)	  --心中的力量
	TriggerFailure(1, JumpPage, 2)
	Text( 1, "点燃火炬", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "只有完成五心考验的人才能点燃火炬！点燃火炬时记得不要把背包上锁并且留好2个空格")
	Text( 2, "离开",CloseTalk)
	AddNpcMission (6280)
end

----------------------------------------------------------
--							--
--							--
--		白银城[彩票贩卖员彼德]				--Peter
--							--
--		2315,2836				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function peter_talk001 ()



	
	Talk( 1, "彩票贩卖员彼德:嗨!从今天起你就是个职业彩民啦!先仔细阅读一下我们的彩票行规,然后咱们就来碰碰运气吧~祝你一注定乾坤!" )
	Text( 1, "彩票购买须知", JumpPage, 2)
	Text( 1, "我愿意花20万买一张空白彩票", JumpPage, 3)
	Text( 1, "我愿意花99个精灵硬币买一个数字球", JumpPage, 4)
	Text( 1, "我要填写彩票,别拦我中大奖!", OpenLottery)
	Text( 1, "我超想买一只存钱罐猪猪宠物", JumpPage, 5)	
        Text( 1, "离开", CloseTalk)
	
	
	Talk( 2, "彩票购买须知:请购买一张空彩票,并拥有6个号码球,然后点填写选项填入你需要的号码,并点击确定就可以生成一张有效的彩票了,我们的彩票销售时间是每周1的临晨0点开始出售至每周6的晚上8点停止,填写的彩票如不在下周进行兑奖会自动作废,空彩票不填写是一直有效的。另外注意0-3号码球可以从我这里直接购买,其他号码球的获得需要你想别的办法了哦" )
	Text( 2, "离开", CloseTalk)

	Talk( 3, "拿走我的20万吧!我要空彩票!我要中奖!")
	
        InitTrigger()                                                   --------兑换空彩票
        TriggerCondition(1, HasLeaveBagGrid,1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )            --背包未锁	
        TriggerCondition( 1, HasMoney, 200000)    ---有20万
        TriggerAction(1, TakeMoney, 200000)
	TriggerAction(1, GiveItem, 5828,1,4)              ----------空彩票
	TriggerFailure(1, JumpPage, 8)
	Text(3,"确定兑换",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "用一组精灵硬币可以兑换下边的任何一个号码球,请想好了选购!")
	InitTrigger()                                                   --------兑换号码球0
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁		
        TriggerAction(1, TakeItem, 0855, 99)                 ----一组精灵硬币
	TriggerAction(1, GiveItem, 5829,1,4)              ----------号码球0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球0",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------兑换号码球0
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁	
        TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5830, 1,4)              ----------号码球0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球1",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()      --------兑换号码球1
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁                                                 
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5831, 1,4)              ----------号码球1
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球2",  MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger()                             --------兑换号码球2
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁   
	TriggerAction(1, TakeItem, 0855, 99)           
	TriggerAction(1, GiveItem, 5832, 1,4)              ----------号码球2
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球3",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------兑换号码球3
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁   
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5833, 1,4)              ----------号码球3
	TriggerFailure(1, JumpPage, 8)
	Text( 4, "离开", CloseTalk)

	Talk(5, "这可是本次活动的限量版超酷宠物哦!当了这么多年海盗的你,会高兴的发狂的!!在我们的商城里,还有本次活动的酷炫宠物和技能供您选择!")   ---购买小猪宠物
        InitTrigger()                                                   --------兑换空彩票
        TriggerCondition(1, HasLeaveBagGrid,1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )            --背包未锁	
        TriggerCondition( 1, HasMoney, 100000)    ---有10万
        TriggerAction(1, TakeMoney,100000)
	TriggerAction(1, GiveItem, 5840,1,4)              ----------小猪宠物
	TriggerFailure(1, JumpPage, 8)
	Text(5,"我要买一只猪猪宝贝!10万块成交!",  MultiTrigger, GetMultiTrigger(), 1)
        Text( 5, "谢谢光临,下次再来!", CloseTalk)

	Talk(8, "嗨!朋友,你身上不仅要有足够的钱,还要有足够的包栏啊!")
        Text( 8, "离开", CloseTalk)

end 

-----彩票贩卖员彼德结束



----------------------------------------------------------
--							--
--							--
--		白银城[彩票兑换员帕查理]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function peter_talk002 ()

	Talk( 1, "彩票兑换员帕查理:我们的奖品可是非常让人眼红的呦!只需要一点点运气,你就能拥有!" )
	Text( 1, "彩票兑奖须知", JumpPage, 2)
	Text( 1, "奖品查询", JumpPage, 3)
	Text( 1, "彩票一开,奖品自来,我来兑奖,大家鼓掌!", JumpPage, 4)     
	Text( 1, "中奖号码查询",JumpPage, 5)
        Text( 1, "离开", CloseTalk)
	
	
	Talk( 2, "彩票兑换须知：请找我查询本期的中奖号码,把需要兑奖的彩票放在包栏的第一格。如果彩票号码全部正确为一等奖,连续五位与中奖号码相同为二等奖,连续四位与中奖号码相同为三等奖,连续三位与中奖号码相同为四等奖,连续二位与中奖号码相同为五等奖." )
	Text( 2, "离开", CloseTalk)

	Talk( 3, "我们的奖品可是有史以来最丰厚的!海盗们从今天起可以不用出海就打劫到好东东啦!不信请看奖品:五等奖奖品为很酷的存钱罐猪猪召唤券,四等奖奖品为假期欢乐杂志,三等奖为真龙钥匙,二等奖奖品为后死者的王冠,一等奖奖品为死神藏尸处!")
	Text( 3, "离开", CloseTalk)
	
	Talk( 4, "确定兑换的彩票放在包栏的第一格,然后兑换相应的奖品吧!看准了,我们提供给你兑换低等奖的权利,但是换了可别后悔哦!!" )

	InitTrigger()
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁		
	TriggerCondition(1, DuiHhuan1)	               ---兑换2等奖
  	TriggerAction(1, GiveItem, 2842,1,4)              ---------2等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换一等奖", MultiTrigger, GetMultiTrigger(), 1)       
	 
	InitTrigger()                                                   --------兑换2等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁		
	TriggerCondition(1, DuiHhuan2)	               ---兑换2等奖
  	TriggerAction(1, GiveItem, 2835,1,4)              ---------2等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
  	Text(4,"确定兑换二等奖", MultiTrigger, GetMultiTrigger(), 1)

        InitTrigger()                                                   --------兑换3等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁
        TriggerCondition(1, DuiHhuan3)                ---兑换3等奖
	TriggerAction(1, GiveItem, 5704,1,4)              ---------3等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换三等奖", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------兑换4等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁	
	TriggerCondition(1, DuiHhuan4)                   ---兑换4等奖
	TriggerAction(1, GiveItem, 0853,1,4)              ---------4等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换四等奖", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------兑换5等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁	
	TriggerCondition(1, DuiHhuan5)                     ---兑换5等奖
	TriggerAction(1, GiveItem, 5840,1,4)              ---------5等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换五等奖", MultiTrigger, GetMultiTrigger(), 1)
        Text( 4, "离开", CloseTalk)
	
        Talk(5, "每天的下午8点至9点半会有循环公布每一位中奖号码，9点半公布的是全部的中奖号码，记得来看系统公告哦!")            --------兑换查询
        Text( 5, "离开", CloseTalk)


	Talk(8, "请查询中奖号码,然后在开奖期间拿有效的彩票来找我兑奖")            --------兑换失败
	Text(8, "离开", CloseTalk)
end

	-----彩票兑换员帕查理结束

		----------------------------------------------------------
--							--
--							--
--		白银城[存钱罐猪猪]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function peter_talk003 ()
	Talk( 1, "哼哼~充满中国风的存钱罐猪猪就是偶!商城里还有一只我的兄弟!想知道它的摸样么?" )
        Text( 1, "离开", CloseTalk)
end
		----存钱罐猪猪结束
		
-----------------竞技场管理员 by Dean---------------------
function arena_talk01 ()
	Talk(1, "竞技场。。。。。。。。。。。。。。。。。。。。。。")
	Text(1, "报名参加的条件是什么？", JumpPage, 2)
	Text(1, "竞技场的比赛规则是什么？", JumpPage, 3)
	Text(1, "报名参加", JumpPage, 8)	
	Text(1, "离开", CloseTalk)
	
	Talk(2, "竞技场的报名条件为3人组队，并且是1个师傅带2个徒弟的形式，报名时必须师傅是队长。已经报名成功并获得参赛卡的队伍将无法重复报名！每个赛季接受队伍报名限额为64支.当报名队伍到达64支时将不再接受报名！")
	Text(2, "我已经清楚报名规则了", JumpPage, 1)
	Text(2, "离开", CloseTalk)
	
	Talk(3, "竞技场的规则分为时间规则，胜负规则，复活规则，观看规则...")
	Text(3, "时间规则", JumpPage, 4) 
	Text(3, "胜负规则", JumpPage, 5)
	Text(3, "复活规则", JumpPage, 6)
	Text(3, "观看规则", JumpPage, 7)
	Text(3, "离开", CloseTalk)
	
	Talk(4, "竞技场是以一个赛季为单位进行比赛的，每个月的第一周为报名时间，例:5月1日 00：00 ~ 5月7日 24:00这段时间为报名时间。单场比赛的规定时间为10分钟。在竞技场内无法使用任何道具。")
	Text(4, "我清楚了", JumpPage, 3) 
	Text(4, "离开", CloseTalk)
	
	Talk(5, "竞技场的胜负规则为：在比赛地图内的2支队伍中的任何一名成员生命值为0时则视为死亡，角色死亡后无法移动，无法回到重生点复活，可以被队友复活。当某一队伍的所有成员全部死亡时则视为失败。获胜的队伍可以直接晋级下一轮比赛，失败的队伍可以有机会通过玩家投票被复活而晋级。")
	Text(5, "我清楚了", JumpPage, 3) 
	Text(5, "离开", CloseTalk)
	
	Talk(6, "竞技场的复活规则为: 在比赛中失败的队伍将会在排行榜中显示出来，在其队伍名称后面有个投票按钮，玩家可通过商城购买的复活道具进行投票，票数最多的队伍将被复活直接晋级下一轮。")
	Text(6, "我清楚了", JumpPage, 3) 
	Text(6, "离开", CloseTalk)
	
	Talk(7, "竞技场的观看规则为: 玩家可通过竞技场参观券进入竞技场内观看比赛，观众只可在安全区域活动并不可使用任何道具和技能，在三个竞技场之间可以通过场内NPC互相传送和离开。")
	Text(7, "我清楚了", JumpPage, 3) 
	Text(7, "离开", CloseTalk)
	
	Talk(8, "我再次重申下，要报名参加竞技场比赛需要1个师傅带2个徒弟，3人组队后师傅必须为队长，由师傅来申请报名领取参赛卡，一旦报名成功在比赛中途将无法更换队员直到被淘汰或赢得总冠军。若需要更换队员的话只能解散队伍重新报名！你确定你要报名参加吗？")
	InitTrigger()                                                   
    TriggerCondition(1,CheckIsValidTeam)
	TriggerAction(1,GiveItem,5848,1,4)
	TriggerFailure(1,JumpPage,1)
	Text(8, "我确定", MultiTrigger, GetMultiTrigger(), 1) 
	Text(8, "离开", CloseTalk)
end
-----------------竞技场传送管理员 [ 2203,2902,garner ] by Dean---------------------
function arena_talk02 ()
	Talk(1, "你好，我是负责竞技场传送的管理员，只要你在准确的时间和条件下来找我，我就会把你和你的队友传送到比赛地图中。")
	Text(1, "传送条件都有哪些呢？", JumpPage, 2)
	Text(1, "准备开战", JumpPage, 3)		
	Text(1, "离开", CloseTalk)
	
	Talk(2, "首先你的队伍必须拥有参赛卡，并且参赛卡上的赛季号和场次时间要和当前赛季，当前场次相符。其次，参赛卡中的轮次号也要和当前比赛的轮次相符。最后就是你当前队伍中的队友和报名时的队友必须是同一个人，如果不能满足以上任何一个条件，那么很遗憾，我将无法为您服务！")
	Text(2, "我明白了", JumpPage, 1)
	Text(2, "离开", CloseTalk)
	
	Talk(3, "请确定您和您的队友已经做好了比赛的准备！当您和您的队友都通过确认框的确认后，您的队伍将随时可能被传入比赛地图，为了避免造成不可预估的后果，请您和您的队友在等待传送的期间不要进行其他操作。")
	--InitTrigger()
	--TriggerCondition(1,检测队伍条件是否满足) 
    --TriggerCondition(1, )      --- 检测赛季号是否相同
    --TriggerCondition(1, )      --- 检测轮次号是否相同 
	--TriggerCondition(1, )      --- 检测场次号是否相同                  
	--TriggerAction(1,)              
	--TriggerFailure(1, JumpPage, 8)
	Text(3, "我明白了", MultiTrigger, GetMultiTrigger(),  1)
	Text(3, "离开", CloseTalk)
	
	Talk(4, "请确定您已经满足了传送入竞技场的条件")
	Text(4, "传送条件都有哪些呢？", JumpPage, 2)
	Text(4, "离开", CloseTalk)
end
