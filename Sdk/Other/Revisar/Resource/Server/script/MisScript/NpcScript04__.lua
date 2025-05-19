--------------------------------------------------------------------------
--									--
--									--
--NPCScript04.lua Created by Robin 2006.1.21.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- 春风镇 铁匠·武鑫
------------------------------------------------------------

function b_talk1()


	Talk( 1, "铁匠·武鑫：“我左青龙，右白虎，老牛在腰间，龙头在胸口，人挡杀人，佛挡杀人。”" )
	Text( 1, "交易", BuyPage )
	Text( 1, "修理", OpenRepair)
	Text( 1, "有关精炼", JumpPage, 2)
	Text( 1, "有关合成", JumpPage, 3)

	Talk( 2, "武鑫：精炼？那种技术只有沙岚城的铁匠才会。" )

	Talk( 3, "武鑫：你想合成物品么？据我所知合成物品需要有一张相对应的合成公式卷轴，卷轴上面记载了所有合成所需要的材料，你可以找沙岚城的杂货商人·艾墨，他是这个世界上唯一会合成的人，我知道的就只有这些了。" )
	
	Talk( 4, "铁匠·武鑫：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )

	-------------铁匠·武鑫-------巨蟹
	AddNpcMission	(5817)
	AddNpcMission	(5818)
end


------------------------------------------------------------
-- 春风镇 客栈老板·龙女（卖回复品)
------------------------------------------------------------

function b_talk2()


	Talk( 1, "龙女：“客官里边请，本店南北大菜样样俱全，看看有什么适合您口味的？”")
	--Text( 1, "交易", BuyPage )
	
	Talk( 2, "龙女：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


   	InitTrade()
	Other(	1078	)
	Other(	1079	)
	Other(	1080	)
	Other(	1082	)  
	Other(	1083	)

	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
        AddNpcMission ( 569 )


	-------------客栈老板·龙女-------巨蟹
	AddNpcMission	(5819)
	AddNpcMission	(5820)
-------------客栈老板·龙女-------秋岛开发
	--AddNpcMission	(6174)
	--AddNpcMission	(6175)

end

------------------------------------------------------------
-- 春风镇 杂货商人·鲁娜儿(卖飞机票)
------------------------------------------------------------

function b_talk3()


	Talk( 1, "鲁娜儿：“最近好像有一款游戏用了我的名字，我正在考虑要不要去争取形象权。”" )
	Text( 1, "交易", BuyPage )
	Talk( 2, "鲁娜儿：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )



	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
	--AddNpcMission ( 535 )
        AddNpcMission ( 564 )

	-------------杂货商人·鲁娜儿-------巨蟹
	AddNpcMission	(5821)
	AddNpcMission	(5822)


end

------------------------------------------------------------
-- 春风镇 贸易商人·油李（航海贸易品
------------------------------------------------------------

function b_talk4()


	Talk( 1, "油李：“红警听过没？魔兽听过没？啥，都不知道？麻将总该打过吧？最讨厌你们这种没见过世面的小子了。”" )
	--Text( 1, "交易", BuyPage )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 )
	--Text( 1, "关于获得贸易证",JumpPage, 3)
	
	Talk( 2, "油李：对不起，你的船没有停在春风之港。无法交易。" )
	
	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)
	

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")
	Talk( 8, "油李：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )


	InitGoods()
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)

	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
        AddNpcMission ( 572 )

	-------------贸易商人·油李-------巨蟹
	AddNpcMission	(5825)
	AddNpcMission	(5826)


end

------------------------------------------------------------
-- 春风镇 传送使·春莉
------------------------------------------------------------

function b_talk5()
	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "我再考虑考虑..."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 7

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "春莉：“我最自豪的是从来没有把一个人留在天上。”" )
	Text( 1, "我要去白银城！", JumpPage, 2 )
	Text( 1, "我要去沙岚城！", JumpPage, 3 )
	Text( 1, "我要去冰狼堡！", JumpPage, 4 )
	Text( 1, "我要记录重生点", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "传送到白银城是吧，没问题！请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "我喜欢沙岚之城这个地方！请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 3, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "传送到冰狼堡是吧？请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 4, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "春莉：要记录在春风镇？对么？" )
	Text( 5, "是的，请记录吧", SetSpawnPos, "春风镇" )
	Text( 5, "不，不用了",CloseTalk )

	Talk( 6, "对不起，您的现金不足，无法传送。" )

	Talk( 7, "下次如果需要传送服务记得找我啊～", CloseTalk )
	Talk( 8, "春莉：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	 AddNpcMission ( 559 )
	MisListPage(8)

	------------- 传送使·春莉-------巨蟹
	AddNpcMission	(5827)
	AddNpcMission	(5828)	

end

------------------------------------------------------------
-- 春风镇 算命先生·算破天
------------------------------------------------------------

function b_talk6()


	Talk( 1, "算破天：“这位客官，我看你天庭饱满，地阁方圆，必是武神转世，战神再生，我这里正好有一本海盗秘籍，500块卖你如何？”" )
	Text( 1, "我要求一支事业签", JumpPage, 2 )
	Text( 1, "我要求一支财运签", JumpPage, 3 )
	Text( 1, "死神的交易", JumpPage, 6 )

	Talk( 6, "算破天:黑暗是死神的面具...你想兑换什么呢?")
	Text( 6, "死神的遗容",JumpPage,7)
	Text( 6, "诅咒系列", JumpPage,8)
	Text( 6, "魂魄系列", JumpPage,9)


	--InitTrigger() --兑换死神的遗容
	--TriggerCondition( 1, HasItem, 2846, 1 )
	--TriggerCondition( 1, HasItem, 2847, 1 )
	--TriggerCondition( 1, HasItem, 2848, 1 )
	--TriggerCondition( 1, HasItem, 2849, 1 )
	--TriggerCondition( 1, HasItem, 2850, 1 )
	--TriggerCondition( 1, HasItem, 2851, 1 )
	--TriggerCondition( 1, HasItem, 2852, 1 )
	--TriggerCondition( 1, HasItem, 2853, 1 )

       -- TriggerAction( 1, TakeItem,  2846, 1 )
	--TriggerAction( 1, TakeItem,  2847, 1 )
	--TriggerAction( 1, TakeItem,  2848, 1 )
	--TriggerAction( 1, TakeItem,  2849, 1 )
	--TriggerAction( 1, TakeItem,  2850, 1 )
	--TriggerAction( 1, TakeItem,  2851, 1 )
	--TriggerAction( 1, TakeItem,  2852, 1 )
	--TriggerAction( 1, TakeItem,  2853, 1 )
	--TriggerAction( 1, GiveItem,2934, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(7, "算破天:1个幻皇的惆怅+ 1个妖火的惆怅+ 1个邪兽的惆怅+ 1个霸狂的惆怅+ 1个凤凰的惆怅+ 1个绝望的惆怅+ 1个龙魂的惆怅+ 1个海刹的惆怅=1个死神的遗容")
	Text( 7, "确认兑换",GetChaName_7, 1) 

	Talk( 8, "算破天:子曾经曰过:善良的小孩从不会去诅咒别人也.")
	Text( 8, "哈迪斯的诅咒",JumpPage,11)
	Text( 8, "黑暗的诅咒", JumpPage,12)
	Text( 8, "地狱的诅咒", JumpPage,13)
	Text( 8, "幽冥的诅咒", JumpPage,14)
	Text( 8, "冥河的诅咒", JumpPage,15)
	Text( 8, "修罗的诅咒", JumpPage,16)



	--InitTrigger() --兑换哈迪斯的诅咒
	
	--TriggerCondition( 1, HasItem, 2854, 1 )
	--TriggerCondition( 1, HasItem, 2855, 1 )
	--TriggerCondition( 1, HasItem, 2856, 1 )
	--TriggerCondition( 1, HasItem, 2857, 1 )
	--TriggerCondition( 1, HasItem, 2927, 1 )
      
	--TriggerAction( 1, TakeItem,  2854, 1 )
	--TriggerAction( 1, TakeItem,  2855, 1 )
	--TriggerAction( 1, TakeItem,  2856, 1 )
	--TriggerAction( 1, TakeItem,  2857, 1 )
	--TriggerAction( 1, TakeItem,  2927, 1 )
	--TriggerAction( 1, GiveItem,2935, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(11, "算破天:1个死神的毛发+1个死神的牙齿+1个死神的眼球+1个死神的心脏+1个被封印的哈迪斯灵魂=1个哈迪斯的诅咒")
	Text( 11, "确认兑换",GetChaName_8, 1) 


--InitTrigger() --兑换黑暗的诅咒	
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2928, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2928, 1 )
--TriggerAction( 1, GiveItem,2936, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(12, "算破天:1个 死神的毛发+1个死神的牙齿+1个死神的眼球+1个死神的心脏+1个被封印的黑暗灵魂=1个黑暗的诅咒")
	Text( 12, "确认兑换",GetChaName_9, 1) 


--InitTrigger() --兑换地狱的诅咒

--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2929, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2929, 1 )
--TriggerAction( 1, GiveItem,2937, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(13, "算破天:1个死神的毛发+1个死神的牙齿+1个死神的眼球+1个死神的心脏+1个被封印的地狱灵魂=1个地狱的诅咒")
	Text( 13, "确认兑换",GetChaName_10, 1) 



--InitTrigger() --兑换幽冥的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2931, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2931, 1 )
--TriggerAction( 1, GiveItem,2939, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(14, "算破天:1个死神的毛发+1个死神的牙齿+1个死神的眼球+1个死神的心脏+1个被封印的幽冥灵魂=1个幽冥的诅咒")
	Text( 14, "确认兑换",GetChaName_11, 1) 

--	InitTrigger() --兑换冥河的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2932, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2932, 1 )
--TriggerAction( 1, GiveItem,2940, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(15, "算破天:1个死神的毛发+1个死神的牙齿+1个死神的眼球+1个死神的心脏+1个被封印的冥河灵魂=1个冥河的诅咒")
	Text( 15, "确认兑换",GetChaName_12, 1) 



--InitTrigger() --兑换修罗的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2930, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2930, 1 )
--TriggerAction( 1, GiveItem,2938, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(16, "算破天:1个 死神的毛发+1个死神的牙齿+1个死神的眼球+1个死神的心脏+1个被封印的修罗灵魂=1个修罗的诅咒")
	Text( 16, "确认兑换",GetChaName_13, 1) 


	Talk( 9, "算破天:我听说人的魂魄有0.1克重,不知道死神的魂魄怎么样?")
	Text( 9, "哈迪斯的魂魄",JumpPage,17)
	Text( 9, "黑暗的魂魄", JumpPage,18)
	Text( 9, "地狱的魂魄", JumpPage,19)
	Text( 9, "幽冥的魂魄", JumpPage,20)
	Text( 9, "冥河的魂魄", JumpPage,21)
	Text( 9, "修罗的魂魄", JumpPage,22)
	Text( 9, "黑龙的魂魄", JumpPage,23)


--InitTrigger() --兑换哈迪斯的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2935, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2935, 1 )
--TriggerAction( 1, GiveItem,2562, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(17, "算破天:1个死神的遗容 + 1个哈迪斯的诅咒=1个哈迪斯的魂魄")
	Text( 17, "确认兑换",GetChaName_14, 1) 
--
--
--InitTrigger() --兑换黑暗的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2936, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2936, 1 )
--TriggerAction( 1, GiveItem,2563, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(18, "算破天:1个死神的遗容 + 1个黑暗的诅咒=1个黑暗的魂魄")
	Text( 18, "确认兑换",GetChaName_15, 1) 



--InitTrigger() --兑换地狱的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2937, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2937, 1 )
--TriggerAction( 1, GiveItem,2564, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(19, "算破天:1个死神的遗容 + 1个地狱的诅咒=1个地狱的魂魄")
	Text( 19, "确认兑换",GetChaName_16, 1) 
--
--
--
--InitTrigger() --兑换幽冥的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2939, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--	TriggerAction( 1, TakeItem,  2939, 1 )
--TriggerAction( 1, GiveItem,2566, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(20, "算破天:1个死神的遗容 + 1个幽冥的诅咒=1个幽冥的魂魄")
	Text( 20, "确认兑换",GetChaName_17, 1) 
--
--
--InitTrigger() --兑换冥河的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2940, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2940, 1 )
--TriggerAction( 1, GiveItem,2567, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(21, "算破天:1个死神的遗容 + 1个冥河的诅咒=1个冥河的魂魄")
	Text( 21, "确认兑换",GetChaName_18, 1) 
--
--

--InitTrigger() --兑换修罗的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2938, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2938, 1 )
--TriggerAction( 1, GiveItem,2565, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(22, "算破天:1个死神的遗容 + 1个修罗的诅咒=1个修罗的魂魄")
	Text( 22, "确认兑换",GetChaName_19, 1) 
--
--InitTrigger() --兑换黑龙的魂魄
--TriggerCondition( 1, HasItem, 2562, 1 )
--TriggerCondition( 1, HasItem, 2563, 1 )
--TriggerCondition( 1, HasItem, 2564, 1 )
--TriggerCondition( 1, HasItem, 2565, 1 )
--TriggerCondition( 1, HasItem, 2566, 1 )
--TriggerCondition( 1, HasItem, 2567, 1 )
--TriggerCondition( 1, HasItem, 2933, 1 )
--TriggerCondition( 1, HasItem, 2934, 1 )
--
--TriggerAction( 1, TakeItem,  2562, 1 )
--TriggerAction( 1, TakeItem,  2563, 1 )
--TriggerAction( 1, TakeItem,  2564, 1 )
--TriggerAction( 1, TakeItem,  2565, 1 )
--TriggerAction( 1, TakeItem,  2566, 1 )
--TriggerAction( 1, TakeItem,  2567, 1 )
--TriggerAction( 1, TakeItem,  2933, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, GiveItem,2404, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(23, "算破天:1个黑暗的魂魄 + 1个修罗的魂魄 + 1个哈迪斯的魂魄 + 1个地狱的魂魄 + 1个幽冥的魂魄 + 1个冥河的魂魄 + 1个 死神的遗容 + 1个黑龙的微笑=1个黑龙的魂魄")
	Text( 23, "确认兑换",GetChaName_20, 1) 

	Talk( 10, "您背包里没有兑换所需的物品啊或者您的背包没有空位了.记得您的背包不要锁哦" )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "求事业签吗，先拿5000块！" )
	Text( 2, "好吧就给你5000块",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "求财运签吗，先拿5000块！" )
	Text( 3, "好吧就给你5000块",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "算破天：“………………^$&#&^%………………”" )

	Talk( 5, "您的背包没有空位或者钱不够哦！或者您的背包已锁定" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )
	
	AddNpcMission ( 520 )
        AddNpcMission ( 900 )
---------------------新历史任务
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)

	------------- 算命先生·算破天-------巨蟹
	AddNpcMission	(5829)
	AddNpcMission	(5830)	

end
------------------------------------------------------------
-- 春风镇 酒店老板·裴蒂
------------------------------------------------------------

function b_talk7()


	Talk( 1, "裴蒂：“楼上楼下的伙计们，出来迎接客人了!”" )
   	--Text( 1, "交易", BuyPage )
	
	Talk( 2, "裴蒂：“………………^$&#&^%………………”" )

	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
       AddNpcMission ( 558 )
       AddNpcMission ( 571 )
------------新增历史任务
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)

	------------- 酒店老板·裴蒂-------巨蟹
	AddNpcMission	(5831)
	AddNpcMission	(5832)

end

------------------------------------------------------------
-- 春风镇 港口指挥·霜奇
------------------------------------------------------------

function b_talk8()


	Talk( 1, "霜奇：“进港？出港？打捞？修理？补给？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	Talk( 7, "霜奇：“………………^$&#&^%………………”" )


	AddNpcMission ( 398 )
	AddNpcMission ( 565 )

	------------- 港口指挥·霜奇-------巨蟹
	AddNpcMission	(5833)
	AddNpcMission	(5834)

end

------------------------------------------------------------
-- 春风镇 银行总管·王墨
------------------------------------------------------------

function b_talk9()


	Talk( 1, "王墨：“你看起来有些眼熟啊？有没有什么多余的东西，我可以帮你保管。”" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "银行（每次200G）", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "对不起，您的现金不够，无法支付使用银行的费用。" )
	Talk( 3, "王墨：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
        AddNpcMission ( 570 )

	------------- 银行总管·王墨-------巨蟹
	AddNpcMission	(5839)
	AddNpcMission	(5840)
end

------------------------------------------------------------
-- 春风镇 卫兵·赵钱孙
------------------------------------------------------------

function b_talk10()


	Talk( 1, "赵钱孙：“好饿，啥时候开饭啊？”" )
	Talk( 2, "赵钱孙：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	------------- 卫兵·赵钱孙-------巨蟹
	AddNpcMission	(5835)
	AddNpcMission	(5836)

end

------------------------------------------------------------
-- 春风镇 卫兵·周吴郑
------------------------------------------------------------

function b_talk11()


	Talk( 1, "周吴郑：“1加1等于2？不等于2？等于2？其实我只是跟你研究一下，何必认真呢？等于2？不等于2……”" )
	Talk( 2, "周吴郑：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )

	------------- 卫兵·周吴郑-------巨蟹
	AddNpcMission	(5837)
	AddNpcMission	(5838)

end

------------------------------------------------------------
-- 春风镇 青年男子·流云
------------------------------------------------------------

function b_talk12()


	Talk( 1, "流云：“你已经见过水雾了吧？她是我女朋友~~”" )
	Talk( 2, "流云：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
         
	 AddNpcMission ( 533 )
	 AddNpcMission ( 563 )

	------------- 青年男子·流云-------巨蟹
	AddNpcMission	(5841)
	AddNpcMission	(5842)

end

------------------------------------------------------------
-- 春风镇 青年女子·水雾
------------------------------------------------------------

function b_talk13()


	Talk( 1, "水雾：“你已经见过流云了吧？他是我男朋友~~”" )
	Talk( 2, "水雾：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	------------- 青年女子·水雾-------巨蟹
	AddNpcMission	(5843)
	AddNpcMission	(5844)

end

------------------------------------------------------------
-- 春风镇 中年男子·比盖
------------------------------------------------------------

function b_talk14()


	Talk( 1, "比盖：“有事？没事？我一秒钟几百万上下，没事别打扰我！！”" )
	Talk( 2, "比盖：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

        AddNpcMission ( 568 )

	------------- 中年男子·比盖-------巨蟹

	AddNpcMission	(5847)
	AddNpcMission	(5848)
	------------中年男子·比盖-------奥运活动
	AddNpcMission	(6262)
	AddNpcMission	(6263)


end

------------------------------------------------------------
-- 春风镇 中年女子·王蓉
------------------------------------------------------------

function b_talk15()


	Talk( 1, "王蓉：“我不是黄蓉，我不会武功，啦啦啦~~”" )
	Talk( 2, "王蓉：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	------------- 中年女子·王蓉-------巨蟹
	AddNpcMission	(5845)
	AddNpcMission	(5846)

end

------------------------------------------------------------
-- 春风镇 东方海盗·铃佐田山
------------------------------------------------------------

function b_talk16()


	Talk( 1, "铃佐田山：“严肃点，没看见我们这正抢劫吗？”" )
	Talk( 2, "铃佐田山：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
-----------------东方海盗·铃佐田山---------金牛
	AddNpcMission	(5641)
	AddNpcMission	(5642)

	------------- 东方海盗·铃佐田山-------巨蟹
	AddNpcMission	(5849)
	AddNpcMission	(5850)

end

------------------------------------------------------------
-- 春风镇 潮流理发师
------------------------------------------------------------

function b_talk17()


	Talk( 1, "潮流理发师：“辫子……”" )
        Text( 1, "我要理发", JumpPage, 2)
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "潮流理发师：要转换头型了么？把你的理发券给我看看。")
	Text( 2, "是的，我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "算了，我还是想想吧", CloseTalk )

	Talk( 3, "潮流理发师：好像没有理发券哦，我不能给你理发的。")
	Talk( 4, "潮流理发师：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)


	-------------海港指挥·夏云-------巨蟹
	AddNpcMission	(5851)
	AddNpcMission	(5852)

end

------------------------------------------------------------
-- 春风镇 僵尸·裴永军
------------------------------------------------------------

function b_talk18()


	Talk( 1, "裴永军：“……”" )
	Talk( 2, "裴永军：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	
	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

------------------------------------------------------------
--黑龙巢穴 一层to二层
------------------------------------------------------------

function b_talk21()


	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "我再考虑考虑..."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 5

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴二层坐标
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "守护神雕像：“我乃女神的分身，奉命将死神封印于此。”" )
	Text( 1, "我要去黑龙巢穴二层！", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "传送到黑龙巢穴二层需要<犬神印记>，<尸王面具>，<永动机械>各一份！" )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "守护神雕像：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "对不起，这三种道具您好像没有收集全啊！" )

	Talk( 5, "下次如果需要传送服务记得找我", CloseTalk )
end

------------------------------------------------------------
--黑龙巢穴 二层to一层
------------------------------------------------------------

function b_talk22()


	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "我再考虑考虑..."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 4

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴三层坐标
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "守护神雕像：“我乃女神的分身，奉命将死神封印于此。”" )
	Text( 1, "我要去黑龙巢穴一层！", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "您确定要出去吗？" )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "守护神雕像：“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "下次如果需要传送服务记得找我", CloseTalk )



end

------------------------------------------------------------
--黑龙巢穴 二层to三层
------------------------------------------------------------

function b_talk23()

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴三层坐标
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	--TriggerAction( 1, TakeItem, 1091,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "守护神雕像：“吾乃女神分身，封印死神于此。”" )
	Text( 1, "我要去黑龙巢穴三层！", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "守护神雕像：“………………^$&#&^%………………”" )
	--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "雕像已被封印，解除此封印需要<龙纹钥匙>" )

--	Talk( 4, "雕像发出一股强大的力量挡住了我，似乎以我的力量无法超越她，看来我得想想其他办法了。" )


end

------------------------------------------------------------
--黑龙宝箱
------------------------------------------------------------

function b_talk24()

--	InitFuncList()
--	AddFuncList( GiveItem,	110	,	1	,	4)
--	AddFuncList( GiveItem,	112	,	1	,	4)
--	AddFuncList( GiveItem,	114	,	1	,	4)
--	AddFuncList( GiveItem,	116	,	1	,	4)
--	AddFuncList( GiveItem,	118	,	1	,	4)
--	AddFuncList( GiveItem,	120	,	1	,	4)
--	AddFuncList( GiveItem,	151	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "这是一个神秘的箱子，似乎被锁上了……." )
	Text( 1, "开锁", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "开锁失败，好像需要某种特定的钥匙才行" )

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  铁匠
------------------------------------------------------------

function l_talk01()
	Talk(1, "我和我朋友杰克史派罗来到这里已经一个月了，一直没走出这个迷宫，我心爱的女人也不知去向，我恨这个鬼地方！")

	AddNpcMission(894)
	AddNpcMission(487)
	AddNpcMission(504)
	AddNpcMission(508)
	AddNpcMission(509)
	AddNpcMission(573)
	AddNpcMission(581)
	AddNpcMission(582)
	AddNpcMission(583)

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  杰克史派罗
------------------------------------------------------------

function l_talk02()
	Talk(1, "听说巴伯萨因为诅咒的力量而变得异常强大，现在这里也不安全了，你们也要小心，这里的怪物可不是吃素长大的")

	AddNpcMission(895)
	AddNpcMission(896)
	AddNpcMission(482)
	AddNpcMission(485)
	AddNpcMission(486)
	AddNpcMission(574)
	AddNpcMission(575)
	AddNpcMission(584)
	AddNpcMission(585)
	AddNpcMission(586)

	----海港指挥·布纽--------杰克史派罗
	
	AddNpcMission	(5676)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  诺灵顿将军
------------------------------------------------------------

function l_talk03()
	Talk(1, "该死的杰克，如果不是因为他抢了我们的军舰，我也不会沦落到这个鸟不生蛋的地方")

	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  伊丽莎白
------------------------------------------------------------

function l_talk04()
	Talk(1, "这是哪？我…怎么会在…这里？威尔呢？呜呜呜呜~~")
	Text( 1, "交易", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)

	---------------白羊
	AddNpcMission	(5573)
	AddNpcMission	(5574)

	-----------------伊丽莎白---------金牛
	AddNpcMission	(5661)
	AddNpcMission	(5662)

	-----------------勇者试炼
	AddNpcMission( 6171 )
	AddNpcMission( 6172 )
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  藏宝海湾北海港指挥·彭尼
------------------------------------------------------------
function mmm_talk06()

	Talk( 1, "彭尼：“进港？出港？打捞？修理？补给？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	Talk( 7, "霜奇：“………………^$&#&^%………………”" )




end

------------------------------------------------------------
-- 加勒比海盗版本 -----  藏宝海湾南海港指挥·凯奇
------------------------------------------------------------
function mmm_talk05()

	Talk( 1, "凯奇：“进港？出港？打捞？修理？补给？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	Talk( 7, "凯奇：“………………^$&#&^%………………”" )




end
------------------------------------------------------------
-- 加勒比海盗版本 -----  骷髅海港指挥
------------------------------------------------------------
function mmm_talk07()
Talk( 1, "骷髅海港指挥：“进港？出港？打捞？修理？补给？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	Talk( 7, "骷髅海港指挥：“………………^$&#&^%………………”" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  神秘人出海人
------------------------------------------------------------
function mmm_talk08()
Talk( 1, "神秘人出海人：“进港？出港？打捞？修理？补给？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	Talk( 7, "神秘人出海人：“………………^$&#&^%………………”" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  海军基地海港指挥
------------------------------------------------------------
function mmm_talk09()
Talk( 1, "海军基地海港指挥：“进港？出港？打捞？修理？补给？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	Talk( 7, "海军基地海港指挥：“………………^$&#&^%………………”" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  打包人·戴普
------------------------------------------------------------
function mmm_talk10()
Talk( 1, "戴普：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送本港口" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包水晶", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "戴普：嘿～朋友，你的船没有停在本港口" )

end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱传送使
------------------------------------------------------------
function mmm_talk11()
	--地图名称信息
	local CurMapName = "jialebi" 

	--黑龙巢穴三层坐标
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "地狱传送使：嗯，想去地狱逛逛？你可要有心理准备噢。给我20个<金币>，15个<海盗的骨头>和15个<亡灵之魂>，我就会送你下去。" )
	Text( 1, "我要去地狱一层！", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "守护神雕像：“………………^$&#&^%………………”" )

--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "等你东西都收集齐了后再来找我吧" )

--	Talk( 4, "雕像发出一股强大的力量挡住了我，似乎以我的力量无法超越她，看来我得想想其他办法了。" )

---------------白羊
	AddNpcMission	(5593)
	AddNpcMission	(5594)
--------------奥运活动	
	AddNpcMission	(6264)
	AddNpcMission	(6265)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  天堂传送使
------------------------------------------------------------
function mmm_talk12()
--地图名称信息
	local CurMapName = "jialebi" 


	--黑龙巢穴三层坐标
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "天堂传送使：我是女神的使者，想要去天堂就必须得经过我。提醒你一下，天堂里的女神给你的奖励是需要你的荣誉值值的哦，如果你荣誉值很高的话，女神会给你很大的奖励的。" )
	Text( 1, "我经历过地狱的磨难", JumpPage, 2 )
	Text( 1, "我得到了女神的眷顾", JumpPage, 3 )
	Text( 1, "听说你还有些别的好东西", JumpPage, 7 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2488,1 )
	TriggerCondition( 1, HasItem, 2489,1 )
	TriggerCondition( 1, HasItem, 2490,1 )
	TriggerCondition( 1, HasItem, 2436,1 )
	TriggerAction( 1, TakeItem, 2488,1 )
	TriggerAction( 1, TakeItem, 2489,1 )
	TriggerAction( 1, TakeItem, 2490,1 )
	TriggerAction( 1, TakeItem, 2436,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "天堂传送使：要去天堂吗？你要帮我从地狱里面拿到木尸之骨,尸兵之魂,法王之心,当然还要给我一本圣经。这样的话,我就会带你去美丽的天堂。" )
	Text( 2, "我现在就想去天堂了", MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "天堂传送使： 你有女神的眷顾？我那现在就可以送你进去。" )
	Text( 3, "我现在就想去天堂了", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "关于女神的眷顾", JumpPage, 6 )
	


	Talk( 4, "等你东西都收集齐了后再来找我吧" )
	Talk( 5, "女神的眷顾可不是人人都能拿到的" )
	Talk( 6, "女神的眷顾是当年女神留在人间为了帮助弱者的物品，有了它就可以直接去天堂。只有等级低于60级的人才可能得到它。" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "天堂传送使：天使骰子是女神遗留在人间及其珍贵的物品,我需要你提供10个亡灵之魂和5个纳卡符石才能将它你" )
	Text( 7, "获得天使骰子", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "天堂传送使：等你东西全了之后才来找我吧" )
---------------白羊
	AddNpcMission	(5595)
	AddNpcMission	(5596)

	AddNpcMission ( 6056 )
	AddNpcMission ( 6057 )
	AddNpcMission ( 6058 )
	AddNpcMission ( 6059 )
	AddNpcMission ( 6060 )
----------天堂传送使-------双子-------------------04
	AddNpcMission	(5726)
	AddNpcMission	(5727)

end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员A
------------------------------------------------------------
function mmm_talk13()
	Talk( 1, "迷失的考古队成员A：你好，朋友，我迷失在这里已经很长时间了，我手上有一些好东西，你愿不愿意与我交换呢？" )
	Text( 1, "兑换隐秘套装", JumpPage, 2)

	Talk( 2, "迷失的考古队成员A：这些好东西有一个共同的名字，他们都叫“隐秘套装”！" )
	Text( 2, "兑换“隐秘之甲(蓝琦双剑士)”", JumpPage, 3)
	Text( 2, "兑换“隐秘手套(蓝琦双剑士)”", JumpPage, 4)
	Text( 2, "兑换“隐秘靴(蓝琦双剑士)”", JumpPage, 5)
	Text( 2, "兑换“游龙(蓝琦双剑士)”", JumpPage, 6)

	Talk(3,"要兑换“隐秘之甲”你必须给我1个伪装石，30个五彩果,20个动物皮毛，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "获取“隐秘之甲”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"要兑换“隐秘手套”你必须给我1个破隐石，30个五彩果,20个坚硬的壳，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "获取“隐秘手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"要兑换“隐秘靴”你必须给我1个幻彩石，30个五彩果,20个特效气体，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "获取“隐秘靴”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"要兑换“游龙”你必须给我1个魔化矿石，30个玛那石结晶,20个混合剂，10个魔力骨头，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "获取“游龙”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"很抱歉，您给的物品不对，我无法为您兑换")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员B
------------------------------------------------------------
function mmm_talk14()
	Talk( 1, "迷失的考古队成员B：你好，朋友，我迷失在这里已经很长时间，了我手上有一些好东西，你愿不愿意与我交换呢？" )
	Text( 1, "兑换灵神套装", JumpPage, 2)

	Talk( 2, "迷失的考古队成员B：这些好东西有一个共同的名字，他们都叫“灵神套装”！" )
	Text( 2, "兑换“灵神铠甲(卡西斯巨剑士)”", JumpPage, 3)
	Text( 2, "兑换“灵神手套(卡西斯巨剑士)”", JumpPage, 4)
	Text( 2, "兑换“灵神靴(卡西斯巨剑士)”", JumpPage, 5)
	Text( 2, "兑换“巨阙(卡西斯巨剑士)”", JumpPage, 6)

	Talk(3,"要兑换“灵神铠甲”你必须给我1个灵幻炎石，30个魔幻树枝,20个动物皮毛，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "获取“灵神铠甲”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"要兑换“灵神手套”你必须给我1个彩灵晶石，30个魔幻树枝,20个坚硬的壳，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "获取“灵神手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"要兑换“灵神靴”你必须给我1个灵气矿石，30个魔幻树枝,20个特效气体，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "获取“灵神靴”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"要兑换“巨阙”你必须给我1个冶子精石，30个玛那石结晶,20个混合剂，10个魔力骨头，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "获取“巨阙”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"很抱歉，您给的物品不对，我无法为您兑换")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员C
------------------------------------------------------------
function mmm_talk15()
	Talk( 1, "迷失的考古队成员C：你好，朋友，我迷失在这里已经很长时间了，我手上有一些好东西，你愿不愿意与我交换呢？" )
	Text( 1, "兑换瑞兽套装", JumpPage, 2)
	Text( 1, "兑换怒涛套装", JumpPage, 9)

	Talk( 2, "迷失的考古队成员C：这些好东西有一个共同的名字，他们都叫“瑞兽套装”！" )
	Text( 2, "兑换“瑞兽衣服(艾米航海士)”", JumpPage, 3)
	Text( 2, "兑换“瑞兽手套(艾米航海士)”", JumpPage, 4)
	Text( 2, "兑换“瑞兽靴(艾米航海士)”", JumpPage, 5)
	Text( 2, "兑换“瑞兽帽子(艾米航海士)”", JumpPage, 6)
	Text( 2, "兑换“断魂(艾米航海士)”", JumpPage, 7)

	Talk(3,"要兑换“瑞兽衣服”你必须给我1个兽皮精石，30个彩色玻璃杯,20个动物皮毛，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "获取“瑞兽衣服”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"要兑换“瑞兽手套”你必须给我1个兽牙石，30个彩色玻璃杯,20个坚硬的壳，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "获取“瑞兽手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"要兑换“瑞兽靴”你必须给我1个兽骨矿石，30个彩色玻璃杯,20个特效气体，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "获取“瑞兽靴”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"要兑换“瑞兽帽子”你必须给我1个兽丹石，30个彩色玻璃杯,20个小生命石，10个陨石，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "获取“瑞兽帽子”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"要兑换“断魂”你必须给我1个泪晶石，30个玛那石结晶,20个混合剂，10个魔力骨头，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "获取“断魂”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"很抱歉，您给的物品不对，我无法为您兑换")

	Talk( 9, "迷失的考古队成员C：这些好东西有一个共同的名字，他们都叫“怒涛套装”！" )
	Text( 9, "兑换“怒涛衣服(蓝琦、菲利尔航海士)”", JumpPage, 10)
	Text( 9, "兑换“怒涛手套(蓝琦、菲利尔航海士)”", JumpPage, 11)
	Text( 9, "兑换“怒涛靴(蓝琦、菲利尔航海士)”", JumpPage, 12)
	Text( 9, "兑换“断魂(蓝琦、菲利尔航海士)”", JumpPage, 7)

	Talk(10,"要兑换“怒涛衣服”你必须给我1个兽皮精石，30个玛那石结晶,20个动物皮毛，10个大地元素残片，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "获取“怒涛衣服”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"要兑换“怒涛手套”你必须给我1个羿心玉石，30个石英结晶，20个混合剂，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "获取“怒涛手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"要兑换“怒涛靴”你必须给我1个幻彩石，30个玛那石结晶，20个小生命石，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "获取“怒涛靴”", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员D
------------------------------------------------------------
function mmm_talk26()
	Talk( 1, "迷失的考古队成员D：你好，朋友，我迷失在这里已经很长时间了，我手上有一些好东西，你愿不愿意与我交换呢？" )
	Text( 1, "兑换鱼仙子套装", JumpPage, 2)
	Text( 1, "兑换飞天套装", JumpPage, 9)

	Talk( 2, "迷失的考古队成员D：这些好东西有一个共同的名字，他们都叫“鱼仙子套装”！" )
	Text( 2, "兑换“鱼仙子衣服(艾米圣职者)”", JumpPage, 3)
	Text( 2, "兑换“鱼仙子手套(艾米圣职者)”", JumpPage, 4)
	Text( 2, "兑换“鱼仙子靴(艾米圣职者)”", JumpPage, 5)
	Text( 2, "兑换“鱼仙子帽子(艾米圣职者)”", JumpPage, 6)
	Text( 2, "兑换“补天之杖(艾米圣职者)”", JumpPage, 7)

	Talk(3,"要兑换“鱼仙子衣服”你必须给我1个焚骨石，30个生命石碎片,20个动物皮毛，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "获取“鱼仙子衣服”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"要兑换“鱼仙子手套”你必须给我1个暗晶石，30个生命石碎片,20个坚硬的壳，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "获取“鱼仙子手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"要兑换“鱼仙子靴”你必须给我1个珍晶石，30个生命石碎片,20个特效气体，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "获取“鱼仙子靴”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"要兑换“鱼仙子帽子”你必须给我1个海胆石，30个生命石碎片,20个小生命石，10个陨石，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "获取“鱼仙子帽子”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"要兑换“补天之杖”你必须给我1个女娲泥石，30个玛那石结晶,20个混合剂，10个魔力骨头，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "获取“补天之杖”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"很抱歉，您给的物品不对，我无法为您兑换")

	Talk( 9, "迷失的考古队成员D：这些好东西有一个共同的名字，他们都叫“飞天套装”！" )
	Text( 9, "兑换“飞天衣服(菲利尔圣职者)”", JumpPage, 10)
	Text( 9, "兑换“飞天手套(菲利尔圣职者)”", JumpPage, 11)
	Text( 9, "兑换“飞天靴(菲利尔圣职者)”", JumpPage, 12)
	Text( 9, "兑换“补天之杖(菲利尔圣职者)”", JumpPage, 7)

	Talk(10,"要兑换“飞天衣服”你必须给我1个灵幻炎石，30个生命石碎片,20个小生命石，10个珍珠，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "获取“飞天衣服”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"要兑换“飞天手套”你必须给我1个暗晶石，30个玛那石结晶，20个动物皮毛，10个华丽的布匹，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "获取“飞天手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"要兑换“飞天靴”你必须给我1个嫦娥泪石，30个生命石碎片，20个小生命石，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "获取“飞天靴”", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员E
------------------------------------------------------------
function mmm_talk27()
	Talk( 1, "迷失的考古队成员E：你好，朋友，我迷失在这里已经很长时间了，我手上有一些好东西，你愿不愿意与我交换呢？" )
	Text( 1, "兑换神奇熊猫套装", JumpPage, 2)
	Text( 1, "兑换神士套装", JumpPage, 9)

	Talk( 2, "迷失的考古队成员E：这些好东西有一个共同的名字，他们都叫“神奇熊猫套装”！" )
	Text( 2, "兑换“神奇熊猫衣服(艾米封印师)”", JumpPage, 3)
	Text( 2, "兑换“神奇熊猫手套(艾米封印师)”", JumpPage, 4)
	Text( 2, "兑换“神奇熊猫靴(艾米封印师)”", JumpPage, 5)
	Text( 2, "兑换“神奇熊猫帽子(艾米封印师)”", JumpPage, 6)
	Text( 2, "兑换“试炼之杵(艾米封印师)”", JumpPage, 7)

	Talk(3,"要兑换“神奇熊猫衣服”你必须给我1个无光玉石，30个石英结晶,20个动物皮毛，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "获取“神奇熊猫衣服”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"要兑换“神奇熊猫手套”你必须给我1个神石，30个石英结晶,20个坚硬的壳，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "获取“神奇熊猫手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"要兑换“神奇熊猫靴”你必须给我1个留晶锌石，30个石英结晶,20个特效气体，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "获取“神奇熊猫靴”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"要兑换“神奇熊猫帽子”你必须给我1个天会彩石，30个石英结晶,20个小生命石，10个陨石，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "获取“神奇熊猫帽子”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"要兑换“试炼之杵”你必须给我1个磨矿石，30个玛那石结晶,20个混合剂，10个魔力骨头，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "获取“试炼之杵”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"很抱歉，您给的物品不对，我无法为您兑换")

	Talk( 9, "迷失的考古队成员E：这些好东西有一个共同的名字，他们都叫“神士套装”！" )
	Text( 9, "兑换“神士衣服(菲利尔封印师)”", JumpPage, 10)
	Text( 9, "兑换“神士手套(菲利尔封印师)”", JumpPage, 11)
	Text( 9, "兑换“神士靴(菲利尔封印师)”", JumpPage, 12)
	Text( 9, "兑换“试炼之杵(菲利尔封印师)”", JumpPage, 7)

	Talk(10,"要兑换“神士衣服”你必须给我1个无光玉石，30个石英结晶,20个坚硬的壳，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "获取“神士衣服”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"要兑换“神士手套”你必须给我1个彩灵晶石，30个生命石碎片,20个混合剂，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "获取“神士手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"要兑换“神士靴”你必须给我1个珍晶石，30个玛那石结晶,20个动物皮毛，10个魔力骨头，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "获取“神士靴”", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员F
------------------------------------------------------------
function mmm_talk28()
	Talk( 1, "迷失的考古队成员F：你好，朋友，我迷失在这里已经很长时间了，我手上有一些好东西，你愿不愿意与我交换呢？" )
	Text( 1, "兑换射日套装", JumpPage, 2)

	Talk( 2, "迷失的考古队成员F：这些好东西有一个共同的名字，他们都叫“射日套装”！" )
	Text( 2, "兑换“射日外套(蓝琦、菲利尔狙击手)”", JumpPage, 3)
	Text( 2, "兑换“射日手套(蓝琦、菲利尔狙击手)”", JumpPage, 4)
	Text( 2, "兑换“射日靴(蓝琦、菲利尔狙击手)”", JumpPage, 5)
	Text( 2, "兑换“落日(蓝琦、菲利尔狙击手)”", JumpPage, 6)

	Talk(3,"要兑换“射日外套”你必须给我1个河伯血石，30个透明水晶,20个动物皮毛，10个华丽的布匹，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "获取“射日外套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"要兑换“射日手套”你必须给我1个羿心玉石，30个透明水晶,20个坚硬的壳，10个大地元素残片，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "获取“射日手套”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"要兑换“射日靴”你必须给我1个嫦娥泪石，30个透明水晶,20个特效气体，10个珍珠，金钱50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "获取“射日靴”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"要兑换“落日”你必须给我1个海灵石，30个玛那石结晶,20个混合剂，10个魔力骨头，金钱100000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "获取“落日”", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"很抱歉，您给的物品不对，我无法为您兑换")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  陆地一层传送使
------------------------------------------------------------
function mmm_talk16()
	--地图名称信息
	local CurMapName = "jialebi"


	--海军码头坐标
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "想知道下面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "奸商！我服了你了，我付就是了", JumpPage, 2 )
	Text( 1, "算了！我钱不够，先不去了", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "下面是亡灵海军们的地下码头，你真的有勇气进去吗？" )
	Text( 2, "是的！我要进入地下码头！", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "穷鬼！一边凉快去" )
	Talk( 4, "你的钱好象不够噢", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人A
------------------------------------------------------------
function mmm_talk17()
	--地图名称信息
	local CurMapName = "jialebi"

	--实验室A坐标
	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName

	Talk( 1, "想知道里面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "奸商！我服了你了，我付就是了", JumpPage, 2 )
	Text( 1, "算了！我钱不够，先不去了", JumpPage, 3 )
	
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "里面是亡灵们的实验室，你真的有勇气进去吗？" )
	Text( 2, "是的！我要进入实验室A！", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "穷鬼！一边凉快去" )
	Talk( 4, "你的钱好象不够噢", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人B2386
------------------------------------------------------------
function mmm_talk18()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室B坐标
	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "想知道里面有什么吗？给我20个亡灵之魂吧，我就会带你进去！" )
	Text( 1, "带我进去", JumpPage, 2 )
	Text( 1, "算了！我不进去了", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "里面是实验室B，恐怖的亡灵司令就在里面，你确信你要进去吗？" )
	Text( 2, "是的！我要进入实验室B！", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "穷鬼！一边凉快去" )
	Talk( 4, "你还没收集齐20个亡灵之魂哦", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人C
------------------------------------------------------------
function mmm_talk19()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室C坐标
	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName

	Talk( 1, "想知道里面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "奸商！我服了你了，我付就是了", JumpPage, 2 )
	Text( 1, "算了！我钱不够，先不去了", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "里面是实验室C" )
	Text( 2, "是的！我要进入实验室C！", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "穷鬼！一边凉快去" )
	Talk( 4, "你的钱好象不够噢", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地下船坞守卫
------------------------------------------------------------
function mmm_talk20()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室坐标
	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName

	Talk( 1, "想知道里面有什么吗？" )
	Text( 1, "下面是什么？", JumpPage, 2 )
	Text( 1, "管他下面是什么，我不想知道", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)

	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)

	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "里面就是亡灵们的实验室了，不知道会有什么样的危险在等着你，想进去的话你必须集齐口令AB，BC，CD，DE，EF" )
	Text( 2, "是的！我要进入实验室！", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "......再见！" )
	Talk( 4, "您的口令没有收集齐噢", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱一层炼狱人
------------------------------------------------------------
function mmm_talk22()
	--地图名称信息
	local CurMapName = "jialebi"


	--地狱二层坐标
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "想知道里面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "奸商！我服了你了，我付就是了", JumpPage, 2 )
	Text( 1, "算了！我钱不够，先不去了", JumpPage, 3 )
	Text( 1, "听说你这里有好东西", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "你想到地狱二层去吗？" )
	Text( 2, "是的！我要进入地狱二层！", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "穷鬼！一边凉快去" )
	Talk( 4, "你的钱好象不够噢" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "地狱一层炼狱人:对的,我这里是有些好东西的,但是你可别想我能白送给你,如果你能给我1个纳卡符石的话,我到可是考虑考虑" )
	Text( 5, "获得炎之力", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "地狱一层炼狱人:等东西收齐后再来找我吧" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱二层炼狱人
------------------------------------------------------------
function mmm_talk23()
	--地图名称信息
	local CurMapName = "jialebi"


	--地狱一层坐标
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	--地狱三层坐标
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName


	Talk( 1, "想知道里面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "我要去地狱一层", JumpPage, 2 )
	Text( 1, "我要去地狱三层", JumpPage, 3 )
	Text( 1, "听说你这里有好东西", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "你想到地狱一层去吗？" )
	Text( 2, "是的！我要进入地狱一层！", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "你想到地狱三层去吗？" )
	Text( 3, "是的！我要进入地狱三层！", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "你的钱好象不够噢" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "地狱二层炼狱人:对的,我这里是有些好东西的,但是你可别想我能白送给你,如果你能给我1个纳卡符石的话,我到可是考虑考虑" )
	Text( 5, "获得风之力", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "地狱二层炼狱人:等东西收齐后再来找我吧" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱三层炼狱人
------------------------------------------------------------
function mmm_talk24()

	--地图名称信息
	local CurMapName = "jialebi"


	--地狱二层坐标
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	--地狱四层坐标
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "想知道里面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "我要去地狱二层", JumpPage, 2 )
	Text( 1, "我要去地狱四层", JumpPage, 3 )
	Text( 1, "听说你这里有好东西", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "你想到地狱二层去吗？" )
	Text( 2, "是的！我要进入地狱二层！", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "你想到地狱四层去吗？" )
	Text( 3, "是的！我要进入地狱四层！", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "你的钱好象不够噢" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "地狱三层炼狱人:对的,我这里是有些好东西的,但是你可别想我能白送给你,如果你能给我1个纳卡符石的话,我到可是考虑考虑" )
	Text( 5, "雷之力", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "地狱三层炼狱人:等东西收齐后再来找我吧" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱四层炼狱人
------------------------------------------------------------
function mmm_talk25()

		--地图名称信息
	local CurMapName = "jialebi"


	--地狱三层坐标
	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	--藏宝海湾坐标
	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName


	Talk( 1, "想知道里面有什么吗？只需要付我5000块，我就会带你进去！" )
	Text( 1, "我要回地狱三层", JumpPage, 2 )
	Text( 1, "我要离开这个鬼地方", JumpPage, 3 )
	Text( 1, "听说你这里有好东西", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "你想到地狱三层去吗？" )
	Text( 2, "是的！我要进入地狱三层！", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "你想出去吗？" )
	Text( 3, "是的！我要出去！", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "你的钱好象不够噢" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "地狱四层炼狱人:对的,我这里是有些好东西的,但是你可别想我能白送给你,如果你能给我1个纳卡符石的话,我到可是考虑考虑" )
	Text( 5, "冰之力", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "地狱四层炼狱人:等东西收齐后再来找我吧" )
end


------------------------------------------------------------
-- 藏宝海湾 传送使
------------------------------------------------------------

function mmm_talk29()
	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "我再考虑考虑..."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 7

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "传送使：“你真的想要离开美丽的藏宝海湾啊?”" )
	Text( 1, "我要去白银城！", JumpPage, 2 )
	Text( 1, "我要去沙岚城！", JumpPage, 3 )
	Text( 1, "我要去冰狼堡！", JumpPage, 4 )
	Text( 1, "我要记录重生点", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "传送到白银城是吧，没问题！请支付500G现金" )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "我喜欢沙岚之城这个地方！请支付500G现金" )
	Text( 3, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "传送到冰狼堡是吧？请支付500G现金" )
	Text( 4, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "对不起，您的现金不足，无法传送。" )

	Talk( 7, "下次如果需要传送服务记得找我啊～", CloseTalk )
	Talk( 8, "“………………^$&#&^%………………”" )



	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	

end


-- 女神
------------------------------------------------------------

	
function mmm_talk30()

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1	

	Talk( 1, "女神：既然你已经来到这里，那一定也经受过很多磨难了吧。要想我给你东西你得先回答我几个问题哦。记住，一定要诚实啊，否则后果自负。" )
	Text( 1, "我已经准备好了", JumpPage, 2 )
	Text( 1, "我还想要一些别的要求。", JumpPage, 17 )
	Text( 1, "我可不想回答你那些无聊的问题。", CloseTalk )
	--InitTrigger()
	--TriggerCondition( 1, HasRecord, 1322 )
	--TriggerAction ( 1, JumpPage, 25 )
	--TriggerFailure( 1, JumpPage, 26 )
	--Text( 1, "智慧之心", MultiTrigger, GetMultiTrigger() ,1 )    -------智慧之心-------
	
	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "我已经厌倦了这个地方，让我回到藏宝海湾吧。", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "女神：每个人只能选择与自己等级相同的奖励，请在下面的答案中选择你自己等级所处的阶段，记住，一定要诚实，否则，后果自负。" )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "15－40级",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "41－60级",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "60级以上",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "女神：看来你还是比较诚实的啊，现在我可以将你所有的荣誉转化为金钱或者经验，而如果你愿意将所有荣誉贡献给神，你可能会获得意想不到的收获。" )
	Text( 4, "我想用荣誉兑换金钱", JumpPage, 7 )
	Text( 4, "我想用荣誉兑换经验", JumpPage, 8 )
	Text( 4, "我想将荣誉献给神", JumpPage, 9 )


	Talk( 5, "女神：看来你还是比较诚实的啊，现在我可以将你所有的荣誉转化为金钱或者经验，而如果你愿意将所有荣誉贡献给神，你可能会获得意想不到的收获。" )
	Text( 5, "我想用荣誉兑换金钱", JumpPage, 10 )
	Text( 5, "我想用荣誉兑换经验", JumpPage, 11 )
	Text( 5, "我想将荣誉献给神", JumpPage, 12 )

	Talk( 6, "女神：看来你还是比较诚实的啊，现在我可以将你所有的荣誉转化为金钱或者经验，而如果你愿意将所有荣誉贡献给神，你可能会获得意想不到的收获。" )
	Text( 6, "我想用荣誉兑换金钱", JumpPage, 13 )
	Text( 6, "我想用荣誉兑换经验", JumpPage, 14 )
	Text( 6, "我想将荣誉献给神", JumpPage, 15 )

		InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "女神：你确定要用你所用的荣誉兑换金钱吗？这将清空你在过去战斗所得的所有荣誉。" )
	Text( 7, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "女神：你确定要用你所用的荣誉兑换经验吗？这将清空你在过去战斗所得的所有荣誉。" )
	Text( 8, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 6 )--对换钱
	Talk( 9, "女神：你确定要用你所用的荣誉献给神吗？这将清空你在过去战斗所得的所有荣誉，而且，你可能一无所获。" )
	Text( 9, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"让我再想想",JumpPage , 4 )


	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "女神：你确定要用你所用的荣誉兑换金钱吗？这将清空你在过去战斗所得的所有荣誉。" )
	Text( 10, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "女神：你确定要用你所用的荣誉兑换经验吗？这将清空你在过去战斗所得的所有荣誉。" )
	Text( 11, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 7 )--对换钱
	Talk( 12, "女神：你确定要用你所用的荣誉献给神吗？这将清空你在过去战斗所得的所有荣誉，而且，你可能一无所获。" )
	Text( 12, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "女神：你确定要用你所用的荣誉兑换金钱吗？这将清空你在过去战斗所得的所有荣誉。" )
	Text( 13, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "女神：你确定要用你所用的荣誉兑换经验吗？这将清空你在过去战斗所得的所有荣誉。" )
	Text( 14, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"让我再想想",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "女神：你确定要用你所用的荣誉献给神吗？这将清空你在过去战斗所得的所有荣誉，而且，你可能一无所获。" )
	Text( 15, "我确定兑换", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"让我再想想",JumpPage , 4 )

	Talk( 16, "女神：神会洞察人间的一切，不要试图欺骗神或愚弄神，那将是自取灭亡。现在，你有一次机会重新选择，不要再让我失望了。" )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "我坚持我的选择，我没说谎话。", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16,"请宽恕我的愚昧，容我重新选择。",JumpPage , 2 )

	
	Talk( 17, "女神：我这里有一些神奇的宝石，这些石头只要善加利用就会发挥出及其强大力量,希望你能用的上。对了,我的使者告诉我说她最近在凡间又发现了一些更强大的石头,相信过不久就可以带回来给我了, 如果你需要的话到时候再来找我吧。" )
	Text( 17, "戴维躯石(巨剑)", JumpPage, 18)
	Text( 17, "梅尔躯石(双剑)", JumpPage, 19)
	Text( 17, "马特躯石(狙击)", JumpPage, 20)
	Text( 17, "杰克躯石(航海)", JumpPage, 21)
	Text( 17, "伊丽躯石(圣职)", JumpPage, 22)
	Text( 17, "维克躯石(封印)", JumpPage, 23)  
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2530, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 18, "女神：如果你的等级在60级以上，并且你能给我5个纳卡符石的话，我可以将石头给你。" )
	Text( 18, "获得戴维躯石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2533, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 19, "女神：如果你的等级在60级以上，并且你能给我5个纳卡符石的话，我可以将石头给你。" )
	Text( 19, "获得梅尔躯石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2536, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 20, "女神：如果你的等级在60级以上，并且你能给我5个纳卡符石的话，我可以将石头给你。" )
	Text( 20, "获得马特躯石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2539, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 21, "女神：如果你的等级在60级以上，并且你能给我5个纳卡符石的话，我可以将石头给你。" )
	Text( 21, "获得杰克躯石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2542, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 22, "女神：如果你的等级在60级以上，并且你能给我5个纳卡符石的话，我可以将石头给你。" )
	Text( 22, "获得伊丽躯石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2545, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 23, "女神：如果你的等级在60级以上，并且你能给我5个纳卡符石的话，我可以将石头给你。" )
	Text( 23, "获得维克躯石", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 24, "女神：等你的等级到了60级并且有5个纳卡我才可以给你东西啊")
	
	
	Talk( 25, "女神：接下来你需要一口气回答下面所有的问题，只有当你全部正确回答之后才能通过考验")  ---------奥运活动相关对话----------
	Text( 25, "我准备好了，赶快开始吧！", JumpPage, 27)
	Text( 25, "我还没准备好呢", CloseTalk )
	
	Talk( 27, "女神：2008年奥运会是在哪个城市举办？")
	Text( 27, "雅典", JumpPage, 28)
	Text( 27, "北京", JumpPage, 29)                   --正确
	Text( 27, "上海", JumpPage, 28)
	Text( 27, "悉尼", JumpPage, 28)
	
	Talk( 29, "女神：请问海盗王online是在哪年哪天公测的呢？")
	Text( 29, "2004年8月8日", JumpPage, 28)
	Text( 29, "2005年8月8日", JumpPage, 28)
	Text( 29, "2004年8月6日", JumpPage, 28)
	Text( 29, "2005年8月6日", JumpPage, 30)          ---正确
	Text( 29, "2005年10月1日", JumpPage, 28)
	
	Talk( 30, "女神：请问奥运五环所代表的是什么含义？")
	Text( 30, "象征五大洋的力量", JumpPage, 28)
	Text( 30, "象征五种奥运精神", JumpPage, 28)
	Text( 30, "象征五大洲的团结", JumpPage, 31)      --正确
	Text( 30, "象征五大民族团结", JumpPage, 28)
	
	Talk( 31, "女神：请问在海盗王中海军处海港内有几艘船？")
	Text( 31, "1艘", JumpPage, 28)
	Text( 31, "2艘", JumpPage, 32)                     --正确
	Text( 31, "3艘", JumpPage, 28)
	Text( 31, "4艘", JumpPage, 28)
	
	Talk( 32, "女神：请问北京奥运会是历史上第几届奥运会？")
	Text( 32, "第26届", JumpPage, 28)
	Text( 32, "第27届", JumpPage, 28)
	Text( 32, "第28届", JumpPage, 28)
	Text( 32, "第29届", JumpPage, 33)                    --正确
	
	Talk( 33, "女神：请问以下哪个项目不是奥运会的比赛项目？")
	Text( 33, "击剑", JumpPage, 28)
	Text( 33, "彩票", JumpPage, 34)                      --正确
	Text( 33, "足球", JumpPage, 28)
	Text( 33, "跳伞", JumpPage, 34)                      --正确
	
	Talk( 34, "女神：恭喜你！都答对啦，最后让你猜猜我会给你什么奖品呢？")
	Text( 34, "海盗币", JumpPage, 28)
	Text( 34, "智慧之心", JumpPage, 35)
	Text( 34, "黑龙之瞳", JumpPage, 28)
	Text( 34, "经验值", JumpPage, 28)
	
	Talk( 35, "你已经完成了我们对你的考验，带上我给你的智慧之心和之前的奉献之心，无畏之心，仁爱之心和火炬回到圣火传递大使那里！")
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerAction( 1, ClearRecord, 1322 )
	TriggerAction( 1, GiveItem, 5801, 1, 4 )  --给予智慧之心
	--TriggerAction( 1, SetRecord, 1323 )
	TriggerFailure( 1, JumpPage, 26 )	
	Text( 35, "好的，我马上就去", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 35, "关闭", CloseTalk )
	
	
	Talk( 26, "女神：在你没完成我给你的任务之前我什么都不想和你说...")
	Text( 26, "离开", CloseTalk )
	Talk( 28, "女神：很遗憾，回答错误，等你找到正确答案再来继续吧")    ---回答错误
	Text( 28, "离开", CloseTalk )
	AddNpcMission(6000)
	----奥运
	AddNpcMission (6277)
	AddNpcMission (6278)
end

function dydz_talk()


	Talk( 1, "地狱渡者：“如果还想活命就赶快离开，你们这样的勇者我看多了，都快把海填平了？”" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "你在想什么？你已经没有可以使用的船了，想活命就赶快滚开！" )
	Talk( 4, "不要以为地狱修船就不要钱，要修理船先将船停在本港口，并带好1000G费用" )
	Talk( 5, "不要以为地狱补给就不要钱，要修理船先将船停在本港口，并带好200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，并需要交付1000G费用" )
	Talk( 7, "地狱渡者：“………………^$&#&^%………………”" )

end


function dysr_talk ()

	Talk( 1, "地狱商人：奉吾王死神之命，在此给与给与各位勇者帮助，并见证你们的死亡，哈哈哈哈！！！" )
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


function zsts_talk()
	Talk( 1, "转生天使：只有最优秀，最坚定的海军和海盗才可以得到转生的机会！")
	Text( 1, "我想了解下转生", JumpPage, 2)
	Text( 1, "我想转生", JumpPage, 6)

	Talk( 2, "转生天使: 你想知道点什么呢？")
	Text( 2, "关于转生后的职业", JumpPage, 3)
	Text( 2, "关于转生后的属性点技能点", JumpPage, 4)
	Text( 2, "关于转生的条件", JumpPage, 5)
	
	Talk( 3, "转生后玩家可以重新选择职业，蓝崎可以选择双剑、航海和狙击；卡西斯可以选择巨剑；菲利尔可以选择圣职、封印、航海、狙击；而艾米则可以选择圣职、封印、航海")
	Text( 3, "谢谢，我明白了", CloseTalk)

	Talk( 4, "转生后玩家的属性点将会重置为最初状态，角色当前等级拥有的属性点包括抽签及使用生日蛋糕的到的，会全部返还以供玩家重新分配，以适应新的职业；同时玩家所有的战斗技能被清空，所有技能点也将返还给玩家")
	Text( 4, "谢谢，我明白了", CloseTalk)

	Talk( 5, "想转生的话必须完成女神那里的凤凰涅磐任务，得到再生之石来找我，或者你也可以通过转生卡直接获得再生之石来找我哦，还有请注意转生之前你必须把全身装备放置在背包内。")
	Text( 5, "谢谢，我明白了", CloseTalk)

	Talk( 6, "女神:年轻人转生后你想干点啥啊" )
	Text( 6, "成为双剑士维护世界和平",  GetChaName1_born, 1)
	Text( 6, "成为巨剑士保护战友",  GetChaName2_born, 1)
	Text( 6, "成为航海士乘风破浪",  GetChaName3_born, 1)
	Text( 6, "成为狙击手猎杀敌人",  GetChaName4_born, 1)
	Text( 6, "成为圣职者给大家看病", GetChaName5_born, 1)
	Text( 6, "成为封印师能干啥就干点啥", GetChaName6_born, 1)

	AddNpcMission ( 6071 )

end

------------------------------------------------------------
--藏宝海湾 百慕大守护者（66900，106400）
------------------------------------------------------------

function k_talk002()


	Talk( 1, "百慕大守护者:“海的那边是更遥远的海,山的尽头是更苍翠的山,我早已忘却何年何月何日流落到此!来自远方的朋友,如果你能找到一个叫春风镇的地方,请捎上一枚思乡者的祝福.”" )
	Text( 1, "兑换百慕大宝箱", JumpPage, 2)

	Talk( 2, "百慕大守护者:我是百慕大的守护者,我流浪到这里已经很多年了,这么多年在岛上没有食物充饥,请给我一张“蛋糕品尝券”吧!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1097, 1)             ------------蛋糕品尝券
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 1097, 1)
	TriggerAction(1, GiveItem, 1104, 1, 4)              ----------百慕大宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "你连一个流浪者的心愿都不满足,我一定要!!要惩罚你!呜呜呜... ...年轻人,如果你背包格已满或是锁上了,我也无法品尝到美味的蛋糕!")

	Text( 1, "兑换10个成长快餐", JumpPage, 4)

	Talk( 4, "百慕大守护者:我是百慕大的守护者,我流浪到这里已经很多年了,这么多年在岛上没有可口的食物,请给我一个“超级寿司”品尝一下吧!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2989, 1)             ------------超级寿司
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2989, 1)
	TriggerAction(1, GiveItem, 0992, 10, 4)              ----------成长快餐10个
	TriggerFailure(1, JumpPage, 5)
	Text(4,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "现在的年轻人喔,咳咳... ...怎么身上一样好吃的也不带?请仔细检查下你的背包是否有空位或是背包已上锁!")

end

------------------------------------------------------------
--天堂 誉之神仆（175440,90279）
------------------------------------------------------------

function k_talk003()


	Talk( 1, "誉之神仆:“神之光芒普照加纳,神之祝福在你我心间传承,加纳女神的信仰者将得到永生!我是第110代誉之神仆索莉亚,非常高兴与您相会!" )
	Text( 1, "兑换无双宝箱", JumpPage, 2)

	Talk( 2, "誉之神仆:据说承载了真神圣衣的无双宝箱需要85级神装宝箱方可获得,远到而来的朋友您有兴趣兑换吗?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 5709, 1)             ------------85级神装宝箱
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5709, 1)
	TriggerAction(1, GiveItem, 5714, 1, 4)              ----------无双宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "请确认您的背包是否锁定或是您的背包格已满.")

	Text( 1, "兑换真龙宝箱", JumpPage, 4)

	Talk( 4, "誉之神仆:兑换真龙宝箱不仅需要您有一颗信仰女神的灵魂,还需要一张转生卡,您确定兑换吗?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2941, 1)             ------------转生卡
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2941, 1)
	TriggerAction(1, GiveItem, 5712, 1, 4)              ----------真龙宝箱
	TriggerFailure(1, JumpPage, 5)
	Text(4,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "请确认您的背包是否锁定或是您的背包格已满.")

end

















