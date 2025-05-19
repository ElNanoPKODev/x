-------------------------------------------------------------------
--									--
--									--
--NPCScript03.lua Created by Robin 2005.6.1.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript03.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


----------------------------------------------------------
--							--
--							--
--		白银城[交易员·郝洛甫]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk10 ()
	
	
	Talk( 1, "郝洛甫：嗨，朋友，我是港口交易员，有什么需要帮忙的吗？别客气，尽管开口。" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, TradeBerthList, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "关于获得贸易证",JumpPage, 3)
	
	Talk( 2, "郝洛甫：对不起，你的船没有停在白银之港。无法交易。" )
	
	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)
	

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(1)
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

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<交易员·郝洛甫



----------------------------------------------------------
--							--
--							--
--		雷霆堡[交易员·桑吉]			--
--							--
--		103877,127848				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk27 ()
	
	
	Talk( 1, "桑吉：Hi，Baby~~我是负责港口货物交易的交易员，也是女性的护花使者哦。" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, TradeBerthList, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)
	
	Talk( 2, "桑吉：对不起，你的船没有停在雷霆之港。无法交易。" )	
	
	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")
	
	
	
	InitGoods( 2)
	SaleGoodsData(	1	,	4597	,	480	,	436	,	97	)
	SaleGoodsData(	2	,	4598	,	300	,	472	,	105	)
	SaleGoodsData(	2	,	4599	,	240	,	508	,	113	)
	SaleGoodsData(	3	,	4600	,	60	,	571	,	127	)
	SaleGoodsData(	3	,	4601	,	40	,	643	,	143	)
	
	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4576	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4581	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4587	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4591	,	-1	,	880	,	195	)
	BuyGoodsData(0,	4593	,	-1	,	1029	,	229	)
	BuyGoodsData(0,	4595	,	-1	,	976	,	651	)
	BuyGoodsData(0,	4553	,	-1	,	826	,	183	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	450	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)
	BuyGoodsData(0,	3913	,	-1	,	1248	,	832 	)
	BuyGoodsData(0,	3912	,	-1	,	1395	,	930 	)
	BuyGoodsData(0,	3914	,	-1	,	1614	,	1077	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission	(1021)
	AddNpcMission	(1077)
	AddNpcMission	(1133)
	AddNpcMission	(1184)
----------交易员·桑吉-------双子	--------------03
	AddNpcMission	(5728)
	AddNpcMission	(5729)
end 

----------------------------------------------------------
--							--
--							--
--		沙岚城[船工·弗兰克]			--
--							--
--		90391,366735				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk60 ()
	
	Talk( 1, "弗兰克：你好，朋友，我是从白银城远道而来学习造船术的，名叫弗兰克。" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "船只数量已满，无法再造新船" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "建造船只", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只升级", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "弗兰克：你要造什么类型的船呢？我这里只有几种类型给你噢。从现在开始船只都有自己的等级了，要提升船只的等级才能完全发挥船只的性能，新船一般在性能上都要大打折扣的哦，你要提升船只的等级的话就要靠开船出海与海上战斗积累船只经验咯。" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "建造毒刺炮艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "建造追风者", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "建造箭鱼穿梭艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "建造龟甲运输船", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "建造炎浪战舰", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "建造女神", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "弗兰克：你的船没有停在这里吧？必须停在这里才能升级哦。船只等级越高船只的各项性能就越好，只有提高船只熟练度才能让船只升级，前期可以在海面上行驶升级，之后就要通过捕杀海上的怪兽来升级了。" )

	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<船厂工人·弗兰克

------------------------------------------------------------
-- 白银城-----海事所助理·罗拉娜
--           2247,2857
------------------------------------------------------------

function r_talk150()

	Talk( 1, "罗拉娜：你好！我是白银城事务所助理，我负责白银城相关的一些海事资源调配。有什么需求尽管来找我噢！" )

	Text( 1, "温情巨蟹宫(终极12宫专用任务)", JumpPage,2 )

	Talk( 2, "海事所助理·罗拉娜:请选择你要闯关的难度,从水手到船长难度依次加大,当然了难度越高奖励越丰厚.你想好了吗?只能选择一次,不可以后悔哦" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------巨蟹门票
	TriggerAction( 1, TakeItem, 1866, 1 )----------巨蟹门票
	TriggerAction( 1, SetRecord, 1466 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "水手",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------巨蟹门票
	TriggerAction( 1, TakeItem, 1866, 1 )----------巨蟹门票
	TriggerAction( 1, SetRecord, 1467 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "海盗",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, HasItem, 1866, 1 )--------巨蟹门票
	TriggerAction( 1, TakeItem, 1866, 1 )----------巨蟹门票
	TriggerAction( 1, SetRecord, 1468 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "船长",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "海事所助理·罗拉娜:希望您能够坚定自己的选择，不要放弃哦！我在这里祝福您..." )
	Talk( 4, "海事所助理·罗拉娜:挑战巨蟹宫的时候,难度只能选择一次.并确保您的背包里有巨蟹宫门票.")
	
	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)

------------罗拉娜
-----------------------巨蟹座
	AddNpcMission 	(5800)
	AddNpcMission 	(5801)
	AddNpcMission 	(5802)
	AddNpcMission 	(5803)
	AddNpcMission 	(5804)
	AddNpcMission 	(5805)
	AddNpcMission 	(5806)
	AddNpcMission 	(5807)
	AddNpcMission 	(5808)
	AddNpcMission 	(5809)
	AddNpcMission 	(5810)
	AddNpcMission 	(5811)
	AddNpcMission 	(5812)
	AddNpcMission 	(5813)
	AddNpcMission 	(5814)
	AddNpcMission 	(5815)
	AddNpcMission 	(5816)
	AddNpcMission 	(5857)
	AddNpcMission 	(5858)
	AddNpcMission 	(5862)
	AddNpcMission 	(5863)
	AddNpcMission 	(5864)

end

------------------------------------------------------------
-- 白银城-----船工·斯巴克
------------------------------------------------------------
function r_talk151 ()
		
	Talk( 1, "斯巴克：嘿伙计，你想出海么？没一艘好船可不行，我是这里最好的船工，想要什么船跟我说吧。" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "船只数量已满，无法再造新船" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "建造船只", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只升级", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "斯巴克：你要造什么类型的船呢？我这里只有几种类型给你噢。从现在开始船只都有自己的等级了，要提升船只的等级才能完全发挥船只的性能，新船一般在性能上都要大打折扣的哦，你要提升船只的等级的话就要靠开船出海与海上战斗积累船只经验咯。" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "建造毒刺炮艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "建造搬运者I型", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "建造飞鱼炮艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "建造箭鱼穿梭艇", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "斯巴克：你的船没有停在这里吧？必须停在这里才能升级哦。船只等级越高船只的各项性能就越好，只有提高船只熟练度才能让船只升级，前期可以在海面上行驶升级，之后就要通过捕杀海上的怪兽来升级了。" )
end 

------------------------------------------------------------
-- 白银城-----海港指挥·雪莉
------------------------------------------------------------

function r_talk152()

	Talk( 1, "雪莉：hi~!我是白银城的海港指挥员，所有停靠在白银城港口的船只都记录在我这里，你要出海的话必须来找我登记，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- 沙岚城-----海港指挥·马克
------------------------------------------------------------

function r_talk153()

	Talk( 1, "马克：hi~!我是沙岚城的海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须来找我登记，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )



end

------------------------------------------------------------
--冰狼堡-----船工·乔治
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "乔治：嘿伙计，你想出海么？没一艘好船可不行，我是这里最好的船工，想要什么船跟我说吧。" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "船只数量已满，无法再造新船" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "建造船只", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只升级", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "乔治：你要造什么类型的船呢？我这里只有几种类型给你噢。从现在开始船只都有自己的等级了，要提升船只的等级才能完全发挥船只的性能，新船一般在性能上都要大打折扣的哦，你要提升船只的等级的话就要靠开船出海与海上战斗积累船只经验咯。" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "建造搬运者I型", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "建造追风者", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "建造飞鱼炮艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "建造龟甲运输船", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "建造猎鹰护卫舰", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "乔治：你的船没有停在这里吧？必须停在这里才能升级哦。船只等级越高船只的各项性能就越好，只有提高船只熟练度才能让船只升级，前期可以在海面上行驶升级，之后就要通过捕杀海上的怪兽来升级了。" )
		
end 

------------------------------------------------------------
-- 冰狼堡-----海港指挥·席林
------------------------------------------------------------

function r_talk154()

	Talk( 1, "席林：hi~!我是冰狼堡的海港指挥员，所有停靠在冰狼堡港口的船只都记录在我这里，你要出海的话必须来找我登记，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- 海风岛-----海港指挥·路凡
------------------------------------------------------------

function r_talk178()

	Talk( 1, "路凡：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	
end

------------------------------------------------------------
-- 碎冰岛-----海港指挥·诺尔罗德
------------------------------------------------------------

function r_talk179()

	Talk( 1, "诺尔罗德：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )

end

------------------------------------------------------------
-- 雪贼岛-----海港指挥·鲁兹鲁伊
------------------------------------------------------------

function r_talk180()

	Talk( 1, "鲁兹鲁伊：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )

end

------------------------------------------------------------
-- 萨拉补给站-----海港指挥·温亚塔
------------------------------------------------------------

function r_talk181()

	Talk( 1, "温亚塔：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )


	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------吉尼斯---海港指挥·温亚塔--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	

end

------------------------------------------------------------
-- 阿尔补给站-----海港指挥·达耶达
------------------------------------------------------------

function r_talk182()

	Talk( 1, "达耶达：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------吉尼斯---海港指挥·达耶达--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
end

------------------------------------------------------------
-- 哈尔补给站-----海港指挥·瓦雷米
------------------------------------------------------------

function r_talk183()

	Talk( 1, "瓦雷米：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 
--Text( 1, "获得精灵之魂", JumpPage, 6 ) 
	
	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "瓦雷米：你好，要获得精灵之魂？你必须给我50个精灵果才行。" )
	Text( 6, "我有足够的精灵果", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "瓦雷米：嘿，我说过，你必须给我50个精灵果才行。" )


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------吉尼斯---海港指挥·瓦雷米--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	-----------------海港指挥·瓦雷米---------金牛
	AddNpcMission	(5655)
	AddNpcMission	(5656)

	

end

------------------------------------------------------------
-- 弗里敦补给站-----海港指挥·法第尔
------------------------------------------------------------

function r_talk184()

	Talk( 1, "法第尔：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------吉尼斯---海港指挥·法第尔--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- 海风岛-----交易员·布尔兹
------------------------------------------------------------

function r_talk185()

	Talk( 1, "布尔兹：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 5 )
	TriggerAction( 1, TradeBerthList, 5 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)	

	Talk( 2, "布尔兹：对不起，你的船没有停在海风之港。无法交易。" )	

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(5)
	SaleGoodsData(	0	,	4552	,	800	,	315	,	70	)
	SaleGoodsData(	1	,	4553	,	700	,	405	,	90	)
	SaleGoodsData(	1	,	4554	,	480	,	477	,	106	)

	BuyGoodsData(0,	4574	,	-1	,	697	,	155	)
	BuyGoodsData(0,	4578	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4580	,	-1	,	972	,	648	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4586	,	-1	,	895	,	199	)
	BuyGoodsData(0,	4588	,	-1	,	969	,	646	)
	BuyGoodsData(0,	4590	,	-1	,	725	,	161	)
	BuyGoodsData(0,	4592	,	-1	,	1017	,	226	)
	BuyGoodsData(0,	4594	,	-1	,	1071	,	238	)
	BuyGoodsData(0,	4598	,	-1	,	888	,	197	)
	BuyGoodsData(0,	4599	,	-1	,	955	,	213	)
	BuyGoodsData(0,	4601	,	-1	,	991	,	661	)
	BuyGoodsData(0,	4557	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4560	,	-1	,	1124	,	249	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4566	,	-1	,	763	,	169	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4572	,	-1	,	950	,	211	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



	AddNpcMission	(760)
		
end

------------------------------------------------------------
-- 碎冰岛-----交易员·赛瑟尼
------------------------------------------------------------

function r_talk186()

	Talk( 1, "赛瑟尼：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 6 )
	TriggerAction( 1, TradeBerthList, 6 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)

	Talk( 2, "赛瑟尼：对不起，你的船没有停在碎冰之港。无法交易。" )
	
	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(6)
	SaleGoodsData(	1	,	4555	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4556	,	300	,	468	,	104	)
	SaleGoodsData(	2	,	4557	,	240	,	522	,	116	)

	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4575	,	-1	,	780	,	173	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4586	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4594	,	-1	,	997	,	221	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4597	,	-1	,	855	,	190	)
	BuyGoodsData(0,	4600	,	-1	,	857	,	571	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4558	,	-1	,	828	,	184	)
	BuyGoodsData(0,	4559	,	-1	,	910	,	203	)
	BuyGoodsData(0,	4562	,	-1	,	819	,	183	)
	BuyGoodsData(0,	4563	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
		
	AddNpcMission	(761)

	-----------------交易员·赛瑟尼---------金牛
	AddNpcMission	(5643)
	AddNpcMission	(5644)
end

------------------------------------------------------------
-- 雪贼岛-----交易员·肥鲸德拉德
------------------------------------------------------------

function r_talk187()

	Talk( 1, "德拉德：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 7 )
	TriggerAction( 1, TradeBerthList, 7 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)

	Talk( 2, "德拉德：对不起，你的船没有停在雪贼之港。无法交易。" )	

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")


	InitGoods(7)
	SaleGoodsData(	2	,	4558	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4559	,	240	,	495	,	110	)
	SaleGoodsData(	3	,	4560	,	60	,	571	,	127	)

	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4587	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4599	,	-1	,	945	,	210	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4554	,	-1	,	1020	,	227	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4561	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4566	,	-1	,	876	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)



	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	AddNpcMission	(762)	
end

------------------------------------------------------------
-- 冰雪岛-----海港指挥·波尔
------------------------------------------------------------

function r_talk188()

	Talk( 1, "波尔：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	----------海港指挥·波尔-------双子--------03
	AddNpcMission	(5704)
	AddNpcMission	(5705)
end

------------------------------------------------------------
-- 鸣沙岛-----海港指挥·托玛
------------------------------------------------------------

function r_talk189()

	Talk( 1, "托玛：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
	
end

------------------------------------------------------------
-- 真爱岛-----海港指挥·夏德利
------------------------------------------------------------
function r_talk190()

	Talk( 1, "夏德利：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
end

------------------------------------------------------------
-- 苏港补给站-----海港指挥·鲁西
------------------------------------------------------------
function r_talk191()

	Talk( 1, "鲁西：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )
	 -------------吉尼斯--苏港补给站,海港指挥·鲁西(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )


end

------------------------------------------------------------
-- 埃弗里补给站-----海港指挥·布纽
------------------------------------------------------------
function r_talk192()

	Talk( 1, "布纽：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)

	----------------吉尼斯---海港指挥·布纽--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
	
end


------------------------------------------------------------
-- 拉古补给站-----海港指挥·多廉达
------------------------------------------------------------
function r_talk193()

	Talk( 1, "多廉达：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------吉尼斯---海港指挥·多廉达--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )


end

------------------------------------------------------------
-- 其索单补给站-----海港指挥·特巴齐尔
------------------------------------------------------------
function r_talk194()

	Talk( 1, "特巴齐尔：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

end

------------------------------------------------------------
-- 穆穆尔补给站-----海港指挥·巴奥
------------------------------------------------------------
function r_talk195()

	Talk( 1, "巴奥：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)

	


end

------------------------------------------------------------
-- 小肯补给站-----海港指挥·迪迪萨
------------------------------------------------------------
function r_talk196()

	Talk( 1, "迪迪萨：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )
	----------------吉尼斯---海港指挥·迪迪萨--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
end

------------------------------------------------------------
-- 肖沸补给站-----海港指挥·丹尼斯
------------------------------------------------------------
function r_talk197()

	Talk( 1, "丹尼斯：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------吉尼斯---海港指挥·丹尼斯--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
end

------------------------------------------------------------
-- 埃皮杜补给站-----海港指挥·索尔
------------------------------------------------------------
function r_talk198()

	Talk( 1, "索尔：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )
	----------------吉尼斯---海港指挥·索尔--03
	AddNpcMission (5517 )
	AddNpcMission (5518 )
end

------------------------------------------------------------
-- 冰雪岛-----交易员·西尔班
------------------------------------------------------------

function r_talk199()

	Talk( 1, "西尔班：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8 )
	TriggerAction( 1, TradeBerthList, 8 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)

	Talk( 2, "西尔班：对不起，你的船没有停在冰雪之港。无法交易。" )	

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(8)
	SaleGoodsData(	1	,	4561	,	480	,	400	,	89	)
	SaleGoodsData(	2	,	4562	,	300	,	436	,	97	)
	SaleGoodsData(	2	,	4563	,	240	,	468	,	104	)

	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4580	,	-1	,	1056	,	705	)
	BuyGoodsData(0,	4586	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4588	,	-1	,	1042	,	695	)
	BuyGoodsData(0,	4590	,	-1	,	673	,	149	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4594	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4596	,	-1	,	955	,	637	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4554	,	-1	,	1077	,	239	)
	BuyGoodsData(0,	4556	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4558	,	-1	,	837	,	186	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4566	,	-1	,	854	,	189	)
	BuyGoodsData(0,	4569	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	
end

------------------------------------------------------------
-- 鸣沙岛-----交易员·米索亚斯
------------------------------------------------------------

function r_talk200()

	Talk( 1, "米索亚斯：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9 )
	TriggerAction( 1, TradeBerthList, 9 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)

	Talk( 2, "米索亚斯：对不起，你的船没有停在鸣沙之港。无法交易。" )	
	
	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(9)
	SaleGoodsData(	0	,	4564	,	800	,	283	,	63	)
	SaleGoodsData(	1	,	4565	,	560	,	342	,	76	)
	SaleGoodsData(	1	,	4566	,	360	,	378	,	84	)

	BuyGoodsData(0,	4574	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4581	,	-1	,	531	,	119	)
	BuyGoodsData(0,	4582	,	-1	,	651	,	145	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4598	,	-1	,	982	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1105	,	737	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4554	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1268	,	281	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4567	,	-1	,	705	,	157	)
	BuyGoodsData(0,	4568	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4569	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)




	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


----------交易员·米索亚斯-------双子---03
	AddNpcMission	(5710)
	AddNpcMission	(5711)
end

------------------------------------------------------------
-- 真爱岛-----交易员·尤卡
------------------------------------------------------------

function r_talk201()

	Talk( 1, "尤卡：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 10 )
	TriggerAction( 1, TradeBerthList, 10 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)
	
	Talk( 2, "尤卡：对不起，你的船没有停在真爱之港。无法交易。" )	

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(10)
	SaleGoodsData(	1	,	4567	,	600	,	360	,	80	)
	SaleGoodsData(	2	,	4568	,	400	,	468	,	104	)
	SaleGoodsData(	2	,	4569	,	240	,	522	,	116	)

	BuyGoodsData(0,	4576	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4577	,	-1	,	999	,	223	)
	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4589	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4593	,	-1	,	904	,	201	)
	BuyGoodsData(0,	4595	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4557	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4563	,	-1	,	943	,	209	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4565	,	-1	,	666	,	149	)
	BuyGoodsData(0,	4570	,	-1	,	550	,	123	)
	BuyGoodsData(0,	4571	,	-1	,	842	,	187	)





	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

-----------------交易员·尤卡---------金牛
	AddNpcMission	(5633)
	AddNpcMission	(5634)
----------交易员·尤卡-------双子---------------------03
	AddNpcMission	(5716)
	AddNpcMission	(5717)
end

------------------------------------------------------------
-- 好运岛-----海港指挥·卢克
------------------------------------------------------------
function r_talk202()

	Talk( 1, "卢克：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
end

------------------------------------------------------------
-- 萨迪勒补给站-----海港指挥·乔尔乔尼
------------------------------------------------------------
function r_talk203()

	Talk( 1, "乔尔乔尼：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	-------奥运活动
	AddNpcMission (	6260 )
	AddNpcMission (	6261 )
	-----------------

	AddNpcMission(	1741	)
	AddNpcMission (	1937	)
	AddNpcMission (	1952	)
	------------------eleven
	AddNpcMission (	5063 )
	AddNpcMission (	5071 )
--------------------1.7
	AddNpcMission ( 5075	)
	AddNpcMission(	5091 )
	AddNpcMission (5105 )
	AddNpcMission (5106 )
	AddNpcMission (5107 )
	AddNpcMission (5108 )
	AddNpcMission (5115 )
	----------------吉尼斯---海港指挥·乔尔乔尼--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )
end

------------------------------------------------------------
-- 卡马赛补给站-----海港指挥·奥登
------------------------------------------------------------
function r_talk204()

	Talk( 1, "奥登：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )
	----------------吉尼斯---海港指挥·奥登--03
	AddNpcMission (5519 )
	AddNpcMission (5520 )
	-----------------海港指挥·奥登---------金牛
	AddNpcMission	(5635)
	AddNpcMission	(5636)
end

------------------------------------------------------------
-- 思思索补给站-----海港指挥·拉米修
------------------------------------------------------------
function r_talk205()

	Talk( 1, "拉米修：你好，我负责这里的船只补给，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "对不起，要修理船只交付1000G费用" )
	Talk( 5, "对不起，要补给船只交付200G费用" )

	-----------------海港指挥·拉米修---------金牛
	AddNpcMission	(5659)
	AddNpcMission	(5660)
	----------海港指挥·拉米修-------双子--------------03
	AddNpcMission	(5724)
	AddNpcMission	(5725)
end

------------------------------------------------------------
-- 好运岛-----交易员·帕德琉斯
------------------------------------------------------------

function r_talk206()

	Talk( 1, "帕德琉斯：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 11 )
	TriggerAction( 1, TradeBerthList, 11 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)

	Talk( 2, "帕德琉斯：对不起，你的船没有停在好运之港。无法交易。" )	

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(11)
	SaleGoodsData(	1	,	4570	,	560	,	270	,	60	)
	SaleGoodsData(	1	,	4571	,	360	,	405	,	90	)
	SaleGoodsData(	2	,	4572	,	200	,	432	,	96	)

	BuyGoodsData(0,	4577	,	-1	,	1059	,	235	)
	BuyGoodsData(0,	4578	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4579	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4584	,	-1	,	866	,	193	)
	BuyGoodsData(0,	4589	,	-1	,	537	,	119	)
	BuyGoodsData(0,	4591	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	1106	,	245	)
	BuyGoodsData(0,	4557	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4562	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4568	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()	


	

end

------------------------------------------------------------
-- 雷霆堡军港-----海港指挥·查可夫中尉
------------------------------------------------------------
function r_talk207()

	Talk( 1, "查可夫中尉：你好，我负责这里的港口指挥，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，要修理船只必须将船停在本港口，并交付1000G费用" )
	Talk( 5, "对不起，要补给船只必须将船停在本港口，并交付200G费用" )
	Talk( 6, "对不起，这里只打捞本港船只，另外需要并交付1000G费用" )
end

------------------------------------------------------------
-- 沙岚新城-----交易员·西多夫
------------------------------------------------------------

function r_talk208()

	Talk( 1, "西多夫：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)

	Talk( 2, "西多夫：对不起，你的船没有停在沙岚之港。无法交易。" )

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(3)
	SaleGoodsData(	0	,	4581	,	900	,	270	,	60	)
	SaleGoodsData(	0	,	4582	,	800	,	319	,	71	)
	SaleGoodsData(	1	,	4583	,	700	,	355	,	79	)
	SaleGoodsData(	1	,	4584	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4585	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4586	,	240	,	481	,	107	)
	SaleGoodsData(	3	,	4587	,	60	,	549	,	122	)
	SaleGoodsData(	3	,	4588	,	40	,	639	,	142	)

	BuyGoodsData(0,	4573	,	-1	,	560	,	125	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4552	,	-1	,	655	,	145	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1172	,	261	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4566	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4568	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4569	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4547	,	-1	,	200	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	360	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission(	104	)
	AddNpcMission 	(198)
	AddNpcMission 	(199)
	AddNpcMission 	(149)
	AddNpcMission(	105	)
	AddNpcMission(	106	)

end

------------------------------------------------------------
-- 冰狼堡-----交易员·佩鲁诺
------------------------------------------------------------

function r_talk209()

	Talk( 1, "佩鲁诺：你好，我负责这里的货物交易，请问有什么可以帮你的吗？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, TradeBerthList, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "关于获得贸易证",JumpPage, 3)
	
	Talk( 2, "佩鲁诺：对不起，你的船没有停在冰狼之港。无法交易。" )	

	Talk( 3, "你好，想要致富的话，一定要拥有“贸易证”哦！有了贸易证你才能经营更多的贸易品，同时也能降低你的成本。目前只有沙岚城的贸易所才有贸易证发放。")
	Text( 3, "有关税率",JumpPage, 7)
	Text( 3, "初级贸易证",JumpPage, 4)
	Text( 3, "中级贸易证",JumpPage, 5)
	Text( 3, "高级贸易证",JumpPage, 6)

	Talk( 4, "初级贸易证很容易就能得到，当你达到20级后去沙岚城的贸易所，完成一个简单的任务就可以得到。")
	Talk( 5, "当你级别达到40级并且将初级贸易证税率降低到20%以下时，就可以到沙岚城贸易所通过任务获得中级贸易证。")
	Talk( 6, "当你级别达到60级并且将初级贸易证税率降低到10%以下时，就可以到沙岚城贸易所通过任务获得高级贸易证。")
	Talk( 7, "查看你的贸易证就能看到你当前的税率，税率直接影响你出售贸易品时上交的金额比率，想要降低税率只有到沙岚城的贸易所完成一轮贸易任务才行。")

	InitGoods(4)
	SaleGoodsData(	0	,	4589	,	900	,	161	,	57	)
	SaleGoodsData(	0	,	4590	,	800	,	238	,	84	)
	SaleGoodsData(	1	,	4591	,	700	,	297	,	105	)
	SaleGoodsData(	1	,	4592	,	600	,	425	,	150	)
	SaleGoodsData(	2	,	4593	,	400	,	467	,	165	)
	SaleGoodsData(	2	,	4594	,	240	,	561	,	198	)
	SaleGoodsData(	3	,	4595	,	120	,	612	,	216	)
	SaleGoodsData(	1	,	4596	,	80	,	705	,	249	)

	BuyGoodsData(0,	4577	,	-1	,	750	,	643	)
	BuyGoodsData(0,	4578	,	-1	,	802	,	689	)
	BuyGoodsData(0,	4582	,	-1	,	471	,	403	)
	BuyGoodsData(0,	4584	,	-1	,	691	,	593	)
	BuyGoodsData(0,	4586	,	-1	,	737	,	633	)
	BuyGoodsData(0,	4597	,	-1	,	728	,	625	)
	BuyGoodsData(0,	4599	,	-1	,	1092	,	936	)
	BuyGoodsData(0,	4600	,	-1	,	1139	,	977	)
	BuyGoodsData(0,	4554	,	-1	,	844	,	725	)
	BuyGoodsData(0,	4557	,	-1	,	892	,	765	)
	BuyGoodsData(0,	4560	,	-1	,	992	,	851	)
	BuyGoodsData(0,	4561	,	-1	,	627	,	539	)
	BuyGoodsData(0,	4562	,	-1	,	649	,	557	)
	BuyGoodsData(0,	4563	,	-1	,	735	,	630	)
	BuyGoodsData(0,	4566	,	-1	,	569	,	487	)
	BuyGoodsData(0,	4568	,	-1	,	710	,	609	)
	BuyGoodsData(0,	4569	,	-1	,	761	,	653	)
	BuyGoodsData(0,	4571	,	-1	,	596	,	511	)
	BuyGoodsData(0,	4547	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

------------------------------------------------------------
-- 雷霆堡军港-----船工·阿憨
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "阿憨：嘿伙计，你想出海么？没一艘好船可不行，我是这里最好的船工，想要什么船跟我说吧。" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "船只数量已满，无法再造新船" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "建造船只", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只升级", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "阿憨：你要造什么类型的船呢？我这里只有几种类型给你噢。从现在开始船只都有自己的等级了，要提升船只的等级才能完全发挥船只的性能，新船一般在性能上都要大打折扣的哦，你要提升船只的等级的话就要靠开船出海与海上战斗积累船只经验咯。" )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "建造飞鱼炮艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "建造龟甲运输船", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "建造箭鱼穿梭艇", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "建造幽灵战舰", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "建造银甲海豚", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "建造大白鲨", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "阿憨：你的船没有停在这里吧？必须停在这里才能升级哦。船只等级越高船只的各项性能就越好，只有提高船只熟练度才能让船只升级，前期可以在海面上行驶升级，之后就要通过捕杀海上的怪兽来升级了。" )
end 

------------------------------------------------------------
-- 白银城-----海盗情报员·戈瓦撒
------------------------------------------------------------

function r_talk211()

	Talk( 1, "戈瓦撒：嘿！朋友～想知道世界上最强的海盗团吗？想加入海盗团成为其中的一员在海上自由驰骋吗？" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "查看海盗团", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "离开", CloseTalk)
	
	Talk( 2, "戈瓦撒：嘿！朋友～你好像是官家的人吧？我从来不跟你们这些当兵的打交道。" )

	Talk( 3, "戈瓦撒：嘿！朋友～想知道现在谁是最强的海盗？嘿嘿，我现在还不想告诉你。" )

		
end

------------------------------------------------------------
-- 白银城-----海军情报员·达隆丹
------------------------------------------------------------

function r_talk212()

	Talk( 1, "达隆丹：你好，我是光荣的海军情报员，在我这里可以查看所有海军部队的状况，同时我也很乐意介绍你加入我们的海军！" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerCondition( 3, HasItem, 4110, 1 )
	TriggerAction( 3, TakeItem, 4110, 1 )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "查看海军部队", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "离开", CloseTalk)
	
	Talk( 2, "达隆丹：没有海军的招募信是不让查看当前的海军部队的噢" )

	Talk( 3, "达隆丹：怎么看你都不象是我们海军的人吧，有关海军的情报我是不会告诉你的！" )

		
end

------------------------------------------------------------
-- 白银城-----海军募兵小姐·蕾绮尔
------------------------------------------------------------

function r_talk213()

	Talk( 1, "蕾绮尔：hi～, 光荣的海军需要你,如果你有足够的实力,请带上这份推荐信去最近的征兵站:白银港海军事务所!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4110, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerCondition( 3, IsGuildType, 1 )
	TriggerAction( 3, JumpPage, 5 )
	TriggerCondition( 4, HasLeaveBagGrid, 1 )
	TriggerCondition( 4, NoGuild )
	TriggerAction( 4, GiveItem, 4110, 1, 4 )
	TriggerFailure( 4, JumpPage, 3 )
	Text( 1, "好，给我一份推荐信吧",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "暂时还没有这个想法，再见。", CloseTalk)

	Talk( 2, "蕾绮尔：你手里不是有推荐信么，还想要啊，不给了。" )

	Talk( 3, "蕾绮尔：你已经加入了公会咯？再检查一下你的包啦，满了我就不能给你推荐信的咯" )

	Talk( 4, "蕾绮尔：你已经是海军了也，还问我要推荐信干什么，想要查询海军的状况，直接去找海军事务所的负责人就可以啦" )

	Talk( 5, "蕾绮尔：看起来你不是好人哦，我不能给你这个，这可是光荣的海军噢！" )

		
end

------------------------------------------------------------
-- 废矿补给站-----打包人·乎勒达
------------------------------------------------------------

function r_talk214()

	Talk( 1, "乎勒达：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送白银之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包水晶", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "乎勒达：嘿～朋友，你的船没有停在白银之港" )
	----------打包人·乎勒达-------双子-------------03
	AddNpcMission	(5720)
	AddNpcMission	(5721)	
end

------------------------------------------------------------
-- 雷霆堡军港-----打包人·费德索拉
------------------------------------------------------------

function r_talk215()

	Talk( 1, "费德索拉：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送雷霆之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "费德索拉：嘿～朋友，你的船没有停在雷霆之港" )
		
end

------------------------------------------------------------
-- 白银林区-----打包人·摩根
------------------------------------------------------------

function r_talk216()

	Talk( 1, "摩根：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送白银之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "摩根：嘿～朋友，你的船没有停在白银之港" )

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- 冰雪岛-----打包人·阿里西斯
------------------------------------------------------------

function r_talk217()

	Talk( 1, "阿里西斯：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送冰雪之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "阿里西斯：嘿～朋友，你的船没有停在冰雪之港" )
		
end

------------------------------------------------------------
-- 鸣沙岛-----打包人·伊加卡班
------------------------------------------------------------

function r_talk218()

	Talk( 1, "伊加卡班：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送鸣沙之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "伊加卡班：嘿～朋友，你的船没有停在鸣沙之港" )
		
end

------------------------------------------------------------
-- 沙岚新城-----打包人·安巴瓦而
------------------------------------------------------------

function r_talk219()

	Talk( 1, "安巴瓦而：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送沙岚之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包能量矿石", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "安巴瓦而：嘿～朋友，你的船没有停在沙岚之港" )
		
end

------------------------------------------------------------
-- 阿兰比斯补给站-----打包人·阿加恩布赖得
------------------------------------------------------------

function r_talk220()

	Talk( 1, "阿加恩布赖得：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送冰狼之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包铁矿石", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "阿加恩布赖得：嘿～朋友，你的船没有停在冰狼之港" )

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- 卡尔加德雪原-----打包人·坎贝尔
------------------------------------------------------------

function r_talk243()

	Talk( 1, "坎贝尔：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送雷霆之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "坎贝尔：嘿～朋友，你的船没有停在雷霆之港" )
		
end

------------------------------------------------------------
-- 德尔维平原-----打包人·索拉斯
------------------------------------------------------------

function r_talk244()

	Talk( 1, "索拉斯：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送白银之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "索拉斯：嘿～朋友，你的船没有停在白银之港" )

end



------------------------------------------------------------
-- 帕克荒漠-----打包人·安塞拉
------------------------------------------------------------

function r_talk245()

	Talk( 1, "安塞拉：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送沙岚之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "安塞拉：嘿～朋友，你的船没有停在沙岚之港" )
		
end


------------------------------------------------------------
-- 冰极-----打包人·阿加西
------------------------------------------------------------

function r_talk246()

	Talk( 1, "阿加西：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送冰狼之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "阿加西：嘿～朋友，你的船没有停在冰狼之港" )
	
end

------------------------------------------------------------
-- 迷之港口-----港口指挥◎迷
------------------------------------------------------------
function r_talk247()

	Talk( 1, "迷：你好，我可以帮你打捞所有在神秘之地沉没的船只，你需要帮助么？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
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
	Talk( 4, "对不起，我只修理迷之港口的船只，请交付1000G费用" )
	Talk( 5, "对不起，我只补给迷之港口的船只，请交付200G费用" )
	Talk( 6, "对不起，我只打捞迷之港口的船只，另外请交付1000G费用" )

end

------------------------------------------------------------
-- 迷之港口-----小花园北部商店海港指挥
------------------------------------------------------------
function r_talk248()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	

end

------------------------------------------------------------
-- 迷之港口-----小花园北部中央海港指挥
------------------------------------------------------------
function r_talk249()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	

end


------------------------------------------------------------
-- 迷之港口-----小花园东部海港指挥
------------------------------------------------------------
function r_talk250()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	

end

------------------------------------------------------------
-- 迷之港口-----小花园南部商店海港指挥
------------------------------------------------------------
function r_talk251()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )


end

------------------------------------------------------------
-- 迷之港口-----小花园北部下海海港指挥
------------------------------------------------------------
function r_talk257()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )


end

------------------------------------------------------------
-- 迷之港口-----小花园南部下海海港指挥
------------------------------------------------------------
function r_talk258()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )


end


------------------------------------------------------------
-- 迷之港口-----阴暗沼泽海港指挥
------------------------------------------------------------
function r_talk261()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
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
	Talk( 4, "对不起，我只修理迷之港口的船只，请交付1000G费用" )
	Talk( 5, "对不起，我只补给迷之港口的船只，请交付200G费用" )
	Talk( 6, "对不起，我只打捞迷之港口的船只，另外请交付1000G费用" )

end

------------------------------------------------------------
-- 迷之港口-----废灵之都海港指挥
------------------------------------------------------------
function r_talk262()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
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
	Talk( 4, "对不起，我只修理迷之港口的船只，请交付1000G费用" )
	Talk( 5, "对不起，我只补给迷之港口的船只，请交付200G费用" )
	Talk( 6, "对不起，我只打捞迷之港口的船只，另外请交付1000G费用" )

end

----------------------------------------------------------
--							--
--							--
--		竞技花园[神秘商人]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk259 ()
	
	
	Talk( 1, "神秘商人：嘿朋友，我这里有一些好东西噢，想不想看看啊？" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "交易", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "神秘商人：对不起，你的船没有停在神秘之港。无法交易。" )
	
	InitGoods(12)
	SaleGoodsData(	0	,	1861	,	500	,	5000	,	5000	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 52, TE_GAMETIME, TT_CYCLETIME, 15, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 



------------------------------------------------------------
-- 小花园-----药草商人
------------------------------------------------------------

function r_talk260()

	Talk( 1, "药草商人：你好，我这里有珍稀的药材，你要看看么？" )
	Text( 1, "交易", BuyPage )
	Text( 1, "没事，我随便逛逛",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- 沙岚新城-----神秘海港指挥
------------------------------------------------------------
function r_talk263()

	Talk( 1, "神秘海港指挥：你好朋友，我可以打捞神秘港口的船只，无论是迷宫还是竞技花园我都可以帮你找到你的船，你有需要我帮忙的么？" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 3, "对不起，我只修理迷之港口的船只，请交付1000G费用" )
	Talk( 4, "对不起，我只补给迷之港口的船只，请交付200G费用" )
	Talk( 5, "对不起，我只打捞迷之港口的船只，另外请交付1000G费用" )

end

----------------------------------------------------
--擂主公会特殊贸易品
----------------------------------------------------
--军火商


function r_talk264()
	Talk( 1, "军火商：你好，我是专门为雷霆堡军港提供军火的军火商，我手里正好有一批军火需要运送，你可以高价出售给雷霆堡的交易员，不过不是所有人我都可以信任的，只有在公会排行榜上第一名的公会才能运送哦！" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "购买", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "军火商：只有第一名的公会成员才能购买，而且你必须有船停在沙岚之港。" )

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

--精密仪器供应商	

function r_talk265()
	Talk( 1, "精密仪器供应商：你好，我是专门为雷霆堡军港提供军用仪器的商人，我手里正好有一批精密仪器需要运送，你可以高价出售给雷霆堡的交易员，不过不是所有人我都可以信任的，只有在公会排行榜上第二名的公会才能运送哦！" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 2 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "精密仪器供应商：只有第二名的公会成员才能购买，而且你必须有船停在沙岚之港。" )


	InitGoods(3)
	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


--稀有金属供应商

function r_talk266()
	Talk( 1, "稀有金属供应商：你好，我是专门为雷霆堡军港提供稀有金属的商人，我手里正好有一批稀有金属需要运送，你可以高价出售给雷霆堡的交易员，不过不是所有人我都可以信任的，只有在公会排行榜上第三名的公会才能运送哦！" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "货物交易", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "稀有金属供应商：只有第三名的公会成员才能购买，而且你必须有船停在沙岚之港。" )


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end



------------------------------------------------------------
-- 沙岚新城-----打包人·阿里七七
------------------------------------------------------------

function m_talk001()

	Talk( 1, "阿里七七：嘿～我是这里的打包人，我可以帮你把原料全部打包好直接送到港口的船上，不过我只送沙岚之港" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "打包木材", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "阿里七七：嘿～朋友，你的船没有停在沙岚之港" )
		
end


------------------------------------------------------------
-- 夏岛北港-----海港指挥·夏青
------------------------------------------------------------
function b_talk19()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，我只修理夏岛北港的船只，请交付1000G费用" )
	Talk( 5, "对不起，我只补给夏岛北港的船只，请交付200G费用" )
	Talk( 6, "对不起，我只打捞夏岛北港的船只，另外请交付1000G费用" )


	------------- 海港指挥·夏青-------巨蟹
	AddNpcMission	(5853)
	AddNpcMission	(5854)


end


------------------------------------------------------------
-- 夏岛南港-----海港指挥·夏云
------------------------------------------------------------
function b_talk20()

	Talk( 1, "海港指挥：你好，你需要出海么？也许我可以帮你" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "船只修理", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "船只补给", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "船只打捞", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "对不起，你的船不在此港口或者已经沉没，请打捞船只后再出海！" )
	Talk( 4, "对不起，我只修理夏岛南港的船只，请交付1000G费用" )
	Talk( 5, "对不起，我只补给夏岛南港的船只，请交付200G费用" )
	Talk( 6, "对不起，我只打捞夏岛南港的船只，另外请交付1000G费用" )

	------------- 海港指挥·夏云-------巨蟹
	AddNpcMission	(5855)
	AddNpcMission	(5856)


end

-----------黑市商人
function leo_talk10()	

	Talk(1, "黑市商人：嘿嘿嘿，能找到我的，可不是一般的客人啊。嘿嘿嘿……客官，你想要干什么呢?")
	Text( 1, "听说你这里有东西可换？", JumpPage, 2 )
	Text( 1, "看看你的东西吧。", BuyPage)
	

	Talk(2,"黑市商人：嘿嘿嘿，您消息可真灵通啊...客人，您想怎么换呢？")
	Text(2,"先让我看看你的东西！", SendExchangeData )

	--兑换所需物品 ID，数量，兑换所得物品数量，赋予的值
	InitExchange()

	--加载8个道具信息，在ScriptSDK里


	
	DoExchange()

	InitTrade()
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 240, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end

function rand()	--黑市随机装备列表
	local tabunknow = {}
	tabunknow[	1	] =	0088
	tabunknow[	2	] =	0089
	tabunknow[	3	] =	3302
	tabunknow[	4	] =	3303
	tabunknow[	5	] =	3304
	tabunknow[	6	] =	3305
	tabunknow[	7	] =	3306
	tabunknow[	8	] =	3307
	tabunknow[	9	] =	3308
	tabunknow[	10	] =	3309
	tabunknow[	11	] =	3310
	tabunknow[	12	] =	3311
	tabunknow[	13	] =	3312
	tabunknow[	14	] =	3313
	tabunknow[	15	] =	3314
	tabunknow[	16	] =	3315
	tabunknow[	17	] =	3316
	tabunknow[	18	] =	3317
	tabunknow[	19	] =	3318
	tabunknow[	20	] =	3319
	tabunknow[	21	] =	3320
	tabunknow[	22	] =	3321
	tabunknow[	23	] =	3322
	tabunknow[	24	] =	3323
	tabunknow[	25	] =	3324
	tabunknow[	26	] =	3325
	tabunknow[	27	] =	3326
	tabunknow[	28	] =	3327
	tabunknow[	29	] =	3328
	tabunknow[	30	] =	3329
	tabunknow[	31	] =	3330
	tabunknow[	32	] =	3331
	tabunknow[	33	] =	3332
	tabunknow[	34	] =	3333
	tabunknow[	35	] =	3334

	return tabunknow[math.floor(math.random(1,35))]
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零零
------------------------------------------------------------
function star_talk001()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零一
------------------------------------------------------------
function star_talk002()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零二
------------------------------------------------------------
function star_talk003()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零三
------------------------------------------------------------
function star_talk004()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零四
------------------------------------------------------------
function star_talk005()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零五
------------------------------------------------------------
function star_talk006()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零六
------------------------------------------------------------
function star_talk007()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零七
------------------------------------------------------------
function star_talk008()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺零
------------------------------------------------------------
function star_talk009()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end

------------------------------------------------------------
-- 圣战-----海港指挥·幺幺一
------------------------------------------------------------
function star_talk010()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺二
------------------------------------------------------------
function star_talk011()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺三
------------------------------------------------------------
function star_talk012()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺四
------------------------------------------------------------
function star_talk013()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺五
------------------------------------------------------------
function star_talk014()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺六
------------------------------------------------------------
function star_talk015()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺七
------------------------------------------------------------
function star_talk016()
	Talk( 1, "海港指挥：hi~!我是圣战海港指挥员，所有停靠在沙岚城港口的船只都记录在我这里，你要出海的话必须把船停靠在沙岚，否则不让你下海。" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "船只出海", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "对不起，你的船不在此港口" )
end


------------------------------------------------------------
-- 圣战----海军前线指挥官--Roico
------------------------------------------------------------
function roico_talk001()
  Talk( 1, "海军前线指挥官：战斗已经开始，在这里的每个人都是英雄，牢记心中的信念，齐心协力击退敌人的攻击是我们唯一的出路！" )
  Text( 1, "战斗指导" ,JumpPage, 2)
  --Text( 1, "设置圣战复活点", SetSpawnPos, "圣战")
  Text( 1, "换取战斗物资", JumpPage, 3)
  Text( 1, "捐献建设资源", JumpPage, 4)
  Text( 1, "使用《海军令》", JumpPage, 13)
  --Text( 1, "继续战斗", JumpPage, 5)
  Talk( 2, "目标：破坏敌人基地内的雕像，如果先破坏掉他们的军火库和粮仓，将大大削弱他们的实力。采集到的资源可以提升我方防御设施的属性或者换取战斗用物资。请谨慎使用海军令，可以让敌人受到意想不到的突袭。")
  Talk( 3, "海军前线指挥官：可以从敌人身上搜刮到有用的东西噢！")
  Text( 3, "雕像机票" ,JumpPage, 6)
  Text( 3, "随机属性" ,JumpPage, 7)
  Talk( 4, "海军前线指挥官:捐献的战斗物资可以提升雕像和防御塔的属性，增加我方的实力。")
  Text( 4, "提高雕像20点物理防御，1点物理抵抗" ,JumpPage, 8)
  Text( 4, "提高高级箭塔25点物理攻击" ,JumpPage, 9)
  Text( 4, "雕像3分钟内免疫任何攻击" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2859, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2859,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "海军前线指挥官:给我25个眼罩,我会给你一张直接回雕像的机票！")
	Text( 6, "确定",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "海军前线指挥官:拿好，当雕像有危险的时候，你可以使用机票回来！" )
	Talk( 12, "海军前线指挥官:你身上似乎没有的物品，还有背包至少要有一个空格噢！")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "海军前线指挥官:给我20个眼罩,我会随机给予你一种能力属性！")
	Text( 7, "确定", GetChaName1_guildwar, 1)
	Talk( 8, "海军前线指挥官:提升雕像的防御需要30个水晶矿石，你可以在左右2边的岛上找到丰富的矿源！")
	Text( 8, "我有30个水晶矿石", GetChaName2_guildwar, 1)
	Talk( 9, "海军前线指挥官:雕像没有攻击力全靠箭塔的保护，你可以在周围的海域寻找12条射水暴鱼和12个鱼骨头给我，提升25点箭塔攻击力！")
	Text( 9, "我有足够的材料", GetChaName4_guildwar, 1)
	Talk( 10, "海军前线指挥官:只需要4个坚硬龟甲和9个月尾绮鳝(去对方的基地附近找找吧),我就能让雕像就立刻获得3分钟无敌时间！")
	Text( 10, "我有足够的材料", GetChaName3_guildwar, 1)
	Talk( 13, "海军前线指挥官:当你收集到足够数量的《海军令》，就能发动一次突袭，请妥善使用！")
	Text( 13, "有15个", JumpPage, 14)
	Text( 13, "有30个", JumpPage, 15)
	Text( 13, "有45个", JumpPage, 16)
	Talk( 14, "海军前线指挥官:使用15个《海军令》，调用3个海军突袭队员，请选择突袭地点！")
	Text( 14, "敌方雕像周围", GetChaName5_guildwar, 1)
	Text( 14, "敌方军火库周围", GetChaName6_guildwar, 1)
	Text( 14, "敌方粮仓周围", GetChaName7_guildwar, 1)
	Text( 14, "我方雕像周围", GetChaName8_guildwar, 1)
	Text( 14, "我方军火库周围", GetChaName9_guildwar, 1)
	Text( 14, "我方粮仓周围", GetChaName10_guildwar, 1)
	--Text( 14, "战场中路", GetChaName11_guildwar, 1)
	Talk( 15, "海军前线指挥官:使用30个《海军令》，调用7个海军突袭队员，请选择突袭地点！")
	Text( 15, "敌方雕像周围", GetChaName11_guildwar, 1)
	Text( 15, "敌方军火库周围", GetChaName12_guildwar, 1)
	Text( 15, "敌方粮仓周围", GetChaName13_guildwar, 1)
	Text( 15, "我方雕像周围", GetChaName14_guildwar, 1)
	Text( 15, "我方军火库周围", GetChaName15_guildwar, 1)
	Text( 15, "我方粮仓周围", GetChaName16_guildwar, 1)
	--Text( 15, "战场中路", GetChaName18_guildwar, 1)
	Talk( 16, "海军前线指挥官:使用45个《海军令》，调用11个海军突袭队员，请选择突袭地点！")
	Text( 16, "敌方雕像周围", GetChaName17_guildwar, 1)
	Text( 16, "敌方军火库周围", GetChaName18_guildwar, 1)
	Text( 16, "敌方粮仓周围", GetChaName19_guildwar, 1)
	Text( 16, "我方雕像周围", GetChaName20_guildwar, 1)
	Text( 16, "我方军火库周围", GetChaName21_guildwar, 1)
	Text( 16, "我方粮仓周围", GetChaName22_guildwar, 1)

end
------------------------------------------------------------
-- 圣战----海盗前线指挥官--Roico
------------------------------------------------------------
function roico_talk002()
Talk( 1, "海盗前线指挥官：破坏，掠夺，杀戮，没有什么可以阻挡我们，让敌人知道恐惧的真谛吧！" )
  Text( 1, "战斗指导" ,JumpPage, 2)
  --Text( 1, "设置圣战复活点", SetSpawnPos, "圣战")
  Text( 1, "换取战斗物资", JumpPage, 3)
  Text( 1, "捐献建设资源", JumpPage, 4)
  Text( 1, "使用《海盗令》", JumpPage, 13)
  --Text( 1, "继续战斗", JumpPage, 5)
  Talk( 2, "目标：破坏敌人基地内的雕像，如果先破坏掉他们的军火库和粮仓，将大大削弱他们的实力。采集到的资源可以提升我方防御设施的属性或者换取战斗用物资。请谨慎使用海盗令，可以让敌人受到意想不到的突袭。")
  Talk( 3, "海盗前线指挥官：可以从敌人身上搜刮到有用的东西噢！")
  Text( 3, "雕像机票" ,JumpPage, 6)
  Text( 3, "随机属性" ,JumpPage, 7)
  Talk( 4, "海盗前线指挥官:捐献的战斗物资可以提升雕像和防御塔的属性，增加我方的实力。")
  Text( 4, "提高雕像20点物理防御，1点物理抵抗" ,JumpPage, 8)
  Text( 4, "提高高级箭塔25点物理攻击" ,JumpPage, 9)
  Text( 4, "雕像3分钟内免疫任何攻击" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2858, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2858,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "海盗前线指挥官:给我25个鼻烟,我会给你一张直接回雕像的机票！")
	Text( 6, "确定",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "海盗前线指挥官:拿好，当雕像有危险的时候，你可以使用机票回来！" )
	Talk( 12, "海盗前线指挥官:你身上似乎没有的物品，还有背包至少要有一个空格噢！")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "海盗前线指挥官:给我20个鼻烟,我会随机给予你一种能力属性！")
	Text( 7, "确定", GetChaName23_guildwar, 1)
	Talk( 8, "海盗前线指挥官:提升雕像的防御需要30个水晶矿石，你可以在左右2边的岛上找到丰富的矿源！")
	Text( 8, "我有30个水晶矿石", GetChaName24_guildwar, 1)
	Talk( 9, "海盗前线指挥官:雕像没有攻击力全靠箭塔的保护，你可以在周围的海域寻找12条射水暴鱼和12个鱼骨头给我，提升25点箭塔攻击力！")
	Text( 9, "我有足够的材料", GetChaName26_guildwar, 1)
	Talk( 10, "海盗前线指挥官:只需要4个海滩潜水贝和9个龟甲碎片(去对方的基地附近找找吧),我就能让雕像就立刻获得3分钟无敌时间！")
	Text( 10, "我有足够的材料", GetChaName25_guildwar, 1)
	Talk( 13, "海盗前线指挥官:当你收集到足够数量的《海盗令》，就能发动一次突袭，请妥善使用！")
	Text( 13, "有15个", JumpPage, 14)
	Text( 13, "有30个", JumpPage, 15)
	Text( 13, "有45个", JumpPage, 16)
	Talk( 14, "海盗前线指挥官:使用15个《海盗令》，调用3个海盗突袭队员，请选择突袭地点！")
	Text( 14, "敌方雕像周围", GetChaName27_guildwar, 1)
	Text( 14, "敌方军火库周围", GetChaName28_guildwar, 1)
	Text( 14, "敌方粮仓周围", GetChaName29_guildwar, 1)
	Text( 14, "我方雕像周围", GetChaName30_guildwar, 1)
	Text( 14, "我方军火库周围", GetChaName31_guildwar, 1)
	Text( 14, "我方粮仓周围", GetChaName32_guildwar, 1)
	--Text( 14, "战场中路", GetChaName11_guildwar, 1)
	Talk( 15, "海盗前线指挥官:使用30个《海盗令》，调用7个海盗突袭队员，请选择突袭地点！")
	Text( 15, "敌方雕像周围", GetChaName33_guildwar, 1)
	Text( 15, "敌方军火库周围", GetChaName34_guildwar, 1)
	Text( 15, "敌方粮仓周围", GetChaName35_guildwar, 1)
	Text( 15, "我方雕像周围", GetChaName36_guildwar, 1)
	Text( 15, "我方军火库周围", GetChaName37_guildwar, 1)
	Text( 15, "我方粮仓周围", GetChaName38_guildwar, 1)
	--Text( 15, "战场中路", GetChaName18_guildwar, 1)
	Talk( 16, "海盗前线指挥官:使用45个《海盗令》，调用11个海盗突袭队员，请选择突袭地点！")
	Text( 16, "敌方雕像周围", GetChaName39_guildwar, 1)
	Text( 16, "敌方军火库周围", GetChaName40_guildwar, 1)
	Text( 16, "敌方粮仓周围", GetChaName41_guildwar, 1)
	Text( 16, "我方雕像周围", GetChaName42_guildwar, 1)
	Text( 16, "我方军火库周围", GetChaName43_guildwar, 1)
	Text( 16, "我方粮仓周围", GetChaName44_guildwar, 1)
end

function roico_talk()
        Talk( 1, "圣战管理员：想进入圣战，请先到我这里换取《生死令》，她代表了您的决心和精神！另外我这里有一些您可能感兴趣的东西，不过我只将他们交给战场的英雄！" )
        Text( 1, "换70级BOSS装备",JumpPage, 2 )
	Text( 1, "换称号勋章",JumpPage, 16 )
	Text( 1, "兑换血盟令",JumpPage, 28 )
	Text( 1, "荣誉换生死令",JumpPage, 29 )

	Talk( 2, "圣战管理员：请选择您要的装备！" )
        Text( 2, "戴维足石(巨剑)", JumpPage, 3)
	Text( 2, "梅尔足石(双剑)", JumpPage, 4)
	Text( 2, "马特足石(狙击)", JumpPage, 5)
	Text( 2, "杰克足石(航海)", JumpPage, 6)
	Text( 2, "伊丽足石(圣职)", JumpPage, 7)
	Text( 2, "维克足石(封印)", JumpPage, 8)
	Text( 2, "下一页", JumpPage, 9)
	Talk( 9, "圣战管理员：请选择您要的装备！" )
	Text( 9, "戴维腕石(巨剑)", JumpPage, 10)
	Text( 9, "梅尔腕石(双剑)", JumpPage, 11)
	Text( 9, "马特腕石(狙击)", JumpPage, 12)
	Text( 9, "杰克腕石(航海)", JumpPage, 13)
	Text( 9, "伊丽腕石(圣职)", JumpPage, 14)
	Text( 9, "维克腕石(封印)", JumpPage, 15)
	Text( 9, "上一页", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 3, "获得戴维足石", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 4, "获得梅尔足石", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 5, "获得马特足石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 6, "获得杰克足石", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 7, "获得伊丽足石", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 8, "获得维克足石", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 10, "获得戴维腕石", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 11, "获得梅尔腕石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 12, "获得马特腕石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 13, "获得杰克腕石", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 14, "获得伊丽腕石", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "圣战管理员：如果你的等级在65级以上，并且你能给我300个血之契约的话，我可以将石头给你。" )
	Text( 15, "获得维克腕石", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "圣战管理员：请选择您要的称号饰品！" )
        Text( 16, "侦察兵", JumpPage, 17)
	Text( 16, "特攻三等兵", JumpPage, 18)
	Text( 16, "少副", JumpPage, 19)
	Text( 16, "大副", JumpPage, 20)
	Text( 16, "士官长", JumpPage, 21)
	Text( 16, "下一页", JumpPage, 30)

	Talk( 30, "圣战管理员：请选择您要的称号饰品！" )
	Text( 30, "铁血百夫长", JumpPage, 22)
	Text( 30, "白银少校", JumpPage, 23)
	Text( 30, "王牌上校", JumpPage, 24)
	Text( 30, "金尊少将", JumpPage, 25)
	Text( 30, "弑神上将", JumpPage, 26)
	Text( 30, "上一页", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "圣战管理员：你能给我20个血之契约的话，我可以将此等级勋章给你。" )
	Text( 17, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "圣战管理员：你能给我50个血之契约和一级勋章的话，我可以将此等级勋章给你。" )
	Text( 18, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "圣战管理员：你能给我100个血之契约和二级勋章的话，我可以将此等级勋章给你。" )
	Text( 19, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "圣战管理员：你能给我250个血之契约和三级勋章的话，我可以将此等级勋章给你。" )
	Text( 20, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "圣战管理员：你能给我400个血之契约和四级勋章的话，我可以将此等级勋章给你。" )
	Text( 21, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "圣战管理员：你能给我650个血之契约和五级勋章的话，我可以将此等级勋章给你。" )
	Text( 22, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "圣战管理员：你能给我55个血盟令和六级勋章的话，我可以将此等级勋章给你。" )
	Text( 23, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "圣战管理员：你能给我80个血盟令和七级勋章的话，我可以将此等级勋章给你。" )
	Text( 24, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "圣战管理员：你能给我110个血盟令和八级勋章的话，我可以将此等级勋章给你。" )
	Text( 25, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "圣战管理员：你能给我155个血盟令和九级勋章的话，我可以将此等级勋章给你。" )
	Text( 26, "获得勋章", MultiTrigger, GetMultiTrigger(), 1)
        Talk( 27, "圣战管理员：请查看您的背包是否有空格子或者您的物品不齐，我不能和您换！" )




	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "圣战管理员：20个《血之契约》可以换取1个《血盟令》噢！" )
	Text( 28, "确定", MultiTrigger, GetMultiTrigger(), 1)


	
	Talk( 29, "圣战管理员：15点荣誉可以兑换1张生死令，生死令只有在圣战死亡才会消失！")
	Text( 29, "确定", GetChaName45_guildwar, 1)

end

