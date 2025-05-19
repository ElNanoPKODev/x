-------------------------------------------------------------------
--									--
--									--
--NPCScript06.lua Created by Robin.Zeng 2005.9.22.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript06.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

--------------------------------------------------


--                 副本任务


--------------------------------------------
function DuplicateMission001()
-----------------------------------酒鬼的秘密
	DefineMission( 500, "酒鬼的秘密", 500 )
	
	MisBeginTalk( "呃..好久没酒喝了，脑子都不太好使了，你知道么年轻人，酒就是我的生命。<n><t>怎么样，帮我去白银酒吧买一瓶好酒来，我就告诉你一个天大的秘密。" )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 500)
	MisBeginCondition(NoRecord, 500)
	MisBeginAction(AddMission, 500)
	MisBeginAction(AddTrigger, 5001, TE_GETITEM, 3916, 1 )
	MisCancelAction(ClearMission, 500)

	MisNeed(MIS_NEED_DESP, "去白银城的酒吧帮酒鬼（2222,2889）买来1瓶椰果酒。")
	MisNeed(MIS_NEED_ITEM, 3916, 1, 10, 1)
		
	MisHelpTalk("怎么？那个小妮子不卖酒给你么？还是说你压根就没有去她那里啊？快点去，别惹我生气了什么都不告诉你了。")
	MisResultTalk("啧~~果然是好酒，哈哈，好久没有这么爽快地喝酒了，怎么样，年轻人要不要一起来喝一杯？呃…呃…ZZzzzZZZzzz")
	MisResultCondition(NoRecord, 500)
	MisResultCondition(HasMission, 500)
	MisResultCondition(HasItem, 3916, 1)
	MisResultAction(TakeItem, 3916, 1)
	MisResultAction(ClearMission, 500)
	MisResultAction(SetRecord, 500)
	MisResultAction(AddExp, 5000, 5000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3916 )	
	TriggerAction( 1, AddNextFlag, 500, 10, 1 )
	RegCurTrigger( 5001 )

-----------------------------------再来一杯
	DefineMission( 501, "再来一杯", 501 )
	
	MisBeginTalk( "<t>唉呦……酒就喝完啦！！<n><t>可是我酒性正浓呐～ 年轻人，好人做到底，你再帮我弄一瓶白银酒吧的百年招牌酒——“醉生梦死”吧，不然我可实在没心情说下去了。<n><t>快去吧，我在这里等你呢。<n><t>最好再加点生鱼片吧。<n><t>那种享受可真是,啧啧……" )
	MisBeginCondition(NoMission, 501)
	MisBeginCondition(NoRecord, 501)
	MisBeginCondition(HasRecord, 500)
	MisBeginAction(AddMission, 501)
	MisBeginAction(AddTrigger, 5011, TE_GETITEM, 3926, 1 )
	MisBeginAction(AddTrigger, 5012, TE_GETITEM, 1478, 20 )
	MisCancelAction(ClearMission, 501)

	MisNeed(MIS_NEED_DESP, "白银城的酒鬼（2222,2889）需要一瓶醉生梦死酒，还需要20个生鱼片")
	MisNeed(MIS_NEED_ITEM, 3926, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 1478, 20, 20, 20)
		
	MisHelpTalk("ZZZzzzZZZ……呼……呼……酒……我要酒！")
	MisResultTalk("啊……好酒啊！嘿，按照我们的约定，我将告诉你一个天大的秘密。<n><t>大概在我像你这么年轻的时候，曾追随着一伙经验丰富的航海士和冒险者一起远洋探险，一次偶然的机会我们打捞到一个刻满符文的古代罗盘，在罗盘的指引下我们到达了魔女之海的深处，在哪里一个奇异的巨大漩涡把我们和船带到了一个神秘的小岛......那似乎是一个被遗弃了的都市，历史久远的令我们无法考证。<n><t>在那里，我们发现了财宝！是的！一笔巨大的宝藏！<n><t>华丽的宝箱散落的到处都是，里面更是应有尽有。<n><t>然而我们之中没有一个人活着带着宝藏离开哪里，所有试图带走点什么的人都被从四面八方涌来的亡灵和骷髅杀死了！！<n><t>只有我和小山车能够再踏上这片土地。<n><t>什么？你要我带你去？NO！别让我再去想起那些可怕的恶灵们！<n><t>我不，不，我再也不要出海冒险了，去找小山车吧，他知道怎么去那个死亡之地。<n><t>我只要喝酒，酒...那才是我的生命...酒...zzzz")
	MisResultCondition(NoRecord, 501)
	MisResultCondition(HasMission, 501)
	MisResultCondition(HasItem, 3926, 1)
	MisResultCondition(HasItem, 1478, 20)
	MisResultAction(TakeItem, 3926, 1)
	MisResultAction(TakeItem, 1478, 20)
	MisResultAction(ClearMission, 501)
	MisResultAction(SetRecord, 501)
	MisResultAction(AddExp, 10000, 10000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3926 )	
	TriggerAction( 1, AddNextFlag, 501, 10, 1 )
	RegCurTrigger( 5011 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )	
	TriggerAction( 1, AddNextFlag, 501, 20, 20 )
	RegCurTrigger( 5012 )

-----------------------------------醉生梦死
	DefineMission( 502, "醉生梦死", 502 )
	
	MisBeginTalk( "<t>呃..醉生梦死？一定是那个酒鬼告诉你的吧，他还真会喝啊，这种酒很难酿制的，这需要曼陀罗花、五彩果和奇异果实，如果你能找齐这些材料的话我就可以帮你酿制，不过醉生梦死酒呢一定要用耐寒海螺壳装着才好喝。<n><t>所以呢别忘记了盛酒的耐寒海螺壳噢。<n><t>最后再给我2000G的酿酒钱就好了。" )
	MisBeginCondition(NoMission, 502)
	MisBeginCondition(NoRecord, 502)
	MisBeginCondition(HasRecord, 500)
	MisBeginCondition(HasMission, 501)
	MisBeginAction(AddMission, 502)
	MisBeginAction(AddTrigger, 5021, TE_GETITEM, 4377, 1 )
	MisBeginAction(AddTrigger, 5022, TE_GETITEM, 3121, 5 )
	MisBeginAction(AddTrigger, 5023, TE_GETITEM, 3131, 5 )
	MisBeginAction(AddTrigger, 5024, TE_GETITEM, 4352, 20 )
	MisCancelAction(ClearMission, 502)

	MisNeed(MIS_NEED_ITEM, 4377, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3121, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 3131, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4352, 20, 30, 20)

	MisPrize(MIS_PRIZE_ITEM, 3926, 1, 4)
	MisPrizeSelAll()
		
	MisHelpTalk("酿制“醉生梦死”这样的美酒，可是一味材料也不能少……")
	MisResultTalk("嗯～就是这些东西了，看来你还是挺有毅力的嘛，拿好了，这个就是酒鬼要的醉生梦死酒。")
	MisResultCondition(NoRecord, 502)
	MisResultCondition(HasMission, 502)
	MisResultCondition(HasItem, 4377, 1)
	MisResultCondition(HasItem, 3121, 5)
	MisResultCondition(HasItem, 3131, 5)
	MisResultCondition(HasItem, 4352, 20)
	MisResultCondition(HasMoney, 2000 )
	MisResultAction(TakeMoney, 2000 )
	MisResultAction(TakeItem, 4377, 1)
	MisResultAction(TakeItem, 3121, 5)
	MisResultAction(TakeItem, 3131, 5)
	MisResultAction(TakeItem, 4352, 20)
	MisResultAction(ClearMission, 502)
	MisResultAction(SetRecord, 502)
	MisResultAction(AddExp, 20000, 20000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4377 )	
	TriggerAction( 1, AddNextFlag, 502, 10, 1 )
	RegCurTrigger( 5021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3121 )	
	TriggerAction( 1, AddNextFlag, 502, 15, 5 )
	RegCurTrigger( 5022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 5 )
	RegCurTrigger( 5023 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4352 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 20 )
	RegCurTrigger( 5024 )

-----------------------------------废灵武士骸骨
	DefineMission( 503, "废灵武士骸骨", 503 )
	
	MisBeginTalk( "<t>既然是酒鬼叫你来的我也没什么好说的，那个地方我去过，我仔细研究过那个古代定位仪，相信只要你去带10个机械内核来，我就可以帮你搞定。<n><t>如果你能到达那个神秘的死亡之地，能否收集一些骸骨给我，我对这些亡灵生物很感兴趣，我很想研究一下他们的过去。" )
	MisBeginCondition(NoMission, 503)
	MisBeginCondition(NoRecord, 503)
	MisBeginCondition(HasRecord, 501)
	MisBeginAction(AddMission, 503)
	MisBeginAction(AddTrigger, 5031, TE_GETITEM, 3434, 10 )
	MisBeginAction(AddTrigger, 5032, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 5033, TE_GETITEM, 3436, 10 )
	MisBeginAction(AddTrigger, 5034, TE_GETITEM, 3437, 10 )
	MisCancelAction(ClearMission, 503)

	--MisNeed(MIS_NEED_DESP, "在废灵都市里找到一些废灵武士骸骨，一共是10个，把他们交给白银城的小山车（2193,2730）")
	MisNeed(MIS_NEED_ITEM, 3434, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 10, 30, 10)
	MisNeed(MIS_NEED_ITEM, 3437, 10, 40, 10)
		
	MisHelpTalk("唔……这的确是个危险而具有挑战性的任务，像你这样具有实力的人应该好好考虑下。")
	MisResultTalk("啊，这个就是那些亡灵生物的骸骨了吧！<n><t>我的思维强烈地感受到这些骸骨仿佛在不停的诉说！<n><t>那是什么？我要仔细地研究，我应该能从这些骸骨中知道些什么，或许那将揭开一个大秘密！！")
	MisResultCondition(NoRecord, 503)
	MisResultCondition(HasMission, 503)
	MisResultCondition(HasItem, 3434, 10)
	MisResultCondition(HasItem, 3435, 10)
	MisResultCondition(HasItem, 3436, 10)
	MisResultCondition(HasItem, 3437, 10)
	MisResultAction(TakeItem, 3434, 10)
	MisResultAction(TakeItem, 3435, 10)
	MisResultAction(TakeItem, 3436, 10)
	MisResultAction(TakeItem, 3437, 10)
	MisResultAction(ClearMission, 503)
	MisResultAction(SetRecord, 503)
	MisResultAction(AddExp, 80000, 80000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434 )	
	TriggerAction( 1, AddNextFlag, 503, 10, 10 )
	RegCurTrigger( 5031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435 )	
	TriggerAction( 1, AddNextFlag, 503, 20, 10 )
	RegCurTrigger( 5032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436 )	
	TriggerAction( 1, AddNextFlag, 503, 30, 10 )
	RegCurTrigger( 5033 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3437 )	
	TriggerAction( 1, AddNextFlag, 503, 40, 10 )
	RegCurTrigger( 5034 )

----------------------------------------
--                                    --
--        加勒比海盗主线任务          --
--                                    --
----------------------------------------

----------------------------------------
--                                    --
--              主线任务              --
--                                    --
----------------------------------------

-- 铁匠 >> 铁匠的担忧
	DefineMission(504,"铁匠的担忧",504)
	
	MisBeginTalk("<t>我最爱的女人被抢走了！我要去救她！该死的亡灵士兵！我要将你们碎尸万段！<n><t>抱歉，我的朋友，原谅我的暴躁，如果你碰到伊丽莎白，替我转告她，不要害怕，我一定会去救她的<n><t>即使需要我用生命来交换也再所不惜！")

	MisBeginCondition(NoRecord, 504)
	MisBeginCondition(NoMission, 504)

	MisBeginAction(AddMission, 504)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>马上就去救你！一定要等着我啊~")
	MisNeed(MIS_NEED_DESP, "找到伊丽莎白并向她转达铁匠的话")
	
	MisResultCondition(AlwaysFailure)

-- 铁匠 >> 铁匠的担忧
	DefineMission(505,"铁匠的担忧",504,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>噢~上帝呀！是威尔让你来的吗？<n><t>我太感动了，我也爱他！永远都深爱着！")
	MisResultCondition(HasMission, 504)
	MisBeginCondition(NoRecord, 504)
	
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 504)
	MisResultAction(SetRecord, 504)


-- 铁匠 >> 伊丽莎白的定情信物
	DefineMission(506,"伊丽莎白的定情信物",505)

	MisBeginTalk("<t>我想你帮我把这个定情项链转交给他……我的项链呢？<n><t>糟糕！一定是留在骷髅海盗船上了，那可是我和威尔的定情信物啊<n><t>天呐，你能帮我取回来吗？")

	MisBeginCondition(HasRecord, 504)
	MisBeginCondition(NoMission, 505)
	MisBeginCondition(NoRecord, 505)

	MisBeginAction(AddMission, 505)
	MisBeginAction(AddTrigger, 5051, TE_GETITEM, 2415, 1)
	
	MisNeed(MIS_NEED_ITEM, 2415, 1, 10, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>你找到定情项链了吗？")

	MisResultTalk("<t>就是这个项链，谢谢你帮我找到它。")

	MisResultCondition(HasMission, 505)
	MisResultCondition(HasItem, 2415, 1)
	MisResultCondition(NoRecord,505)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)
	MisResultAction(ClearMission, 505)
	MisResultAction(TakeItem, 2415,1)
	MisResultAction(SetRecord, 505)

	InitTrigger()
	TriggerCondition(1,IsItem, 2415)
	TriggerAction(1, AddNextFlag, 505, 10, 1)
	RegCurTrigger(5051)


-- 铁匠 >> 定情项链
	DefineMission(507,"定情项链",506)
	
	MisBeginTalk("<t>好了，我在这个项链里面写下了我想对他说的话<n><t>你能帮我把这个项链转交给威尔吗？愿上帝保佑你！")

	MisBeginCondition(HasRecord, 505)
	MisBeginCondition(NoRecord, 506)
	MisBeginCondition(NoMission, 506)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 506)
	MisBeginAction(GiveItem, 2415,1,4)

	MisHelpTalk("<t>愿上帝保佑你")
	MisNeed(MIS_NEED_DESP, "帮伊丽莎白将定情项链转交给铁匠威尔")

	MisCancelAction(SystemNotice, "该任务无法中断")

	MisResultCondition(AlwaysFailure)

-- 铁匠 >> 定情项链
	DefineMission(508,"定情项链",506, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>你找到伊丽莎白了！我现在就去救她<n><t>等等，我们的定情项链？我看看")
	MisResultCondition(HasMission, 506)
	MisResultCondition(NoRecord,506)
	MisResultCondition(HasItem, 2415, 1)

	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)

	MisResultAction(TakeItem, 2415, 1)
	MisResultAction(ClearMission, 506)
	MisResultAction(SetRecord, 506)

-- 铁匠 >> 铁匠的约定
	DefineMission(509,"铁匠的约定",507)
	
	MisBeginTalk("<t>想要解救我的女神，我们需要一把特殊的武器，你能帮我弄来吗？<n><t>这种特殊的武器只有亡灵军官身上才会佩带，相信对你来说应该是小菜一碟吧。")

	MisBeginCondition(HasRecord, 506)
	MisBeginCondition(NoRecord, 507)
	MisBeginCondition(NoMission, 507)

	MisBeginAction(AddMission, 507)
	MisBeginAction(AddTrigger, 5071, TE_GETITEM, 2384, 1)

	MisNeed(MIS_NEED_ITEM, 2384, 1, 10, 1)

	MisCancelAction(SystemNotice, "该任务无法中断")
	MisHelpTalk("<t>……就快好了，嗯？你还没找到特殊的武器吗？")

	MisResultTalk("<t>这把应该就是伊丽莎白说起的特殊的武器了吧，真够特殊的。")

	MisResultCondition(HasMission, 507)
	MisResultCondition(HasItem, 2384, 1)
	MisResultCondition(NoRecord, 507)

	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(AddExp, 200000, 200000)
	MisResultAction(AddMoney, 100000, 100000)

	MisResultAction(ClearMission, 507)
	MisResultAction(SetRecord, 507)

	InitTrigger()
	TriggerCondition(1, IsItem, 2384)
	TriggerAction(1, AddNextFlag, 507, 10, 1)
	RegCurTrigger(5071)

-- 铁匠 >> 特殊的武器
	DefineMission(573,"特殊的武器",508)
	
	MisBeginTalk("<t>这把武器好象还差点什么？我真的迷茫了，为什么总感觉挥舞起来力不从心呢？<n><t>唉，你能帮我把这把武器交给杰克史派罗吗？我想他应该能看出些端倪。")
	
	MisBeginBagNeed(1)
	MisBeginCondition(HasRecord, 507)
	MisBeginCondition(NoRecord, 508)
	MisBeginCondition(NoMission, 508)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 508)
	MisBeginAction(GiveItem, 2384, 1,4)

	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>杰克怎么说？你还没去吗？")
	MisNeed(MIS_NEED_DESP, "帮铁匠把特殊的武器转交给杰克史派罗")

	MisResultCondition(AlwaysFailure)


-- 杰克史派罗 >> 特殊的武器
	DefineMission(574,"特殊的武器", 508,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>让我看看！这把武器上面有着邪恶的诅咒<n><t>只有心存邪念的人们才有能力去挥舞它，威尔还是太过善良了.....")
	MisResultCondition(HasMission, 508)
	MisResultCondition(NoRecord, 508)
	MisResultCondition(HasItem, 2384, 1)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(ClearMission, 508)
	MisResultAction(SetRecord, 508)


-- 杰克史派罗 >> 海盗与海军
	DefineMission(575,"海盗与海军",509)
	
	MisBeginTalk("<t>我需要你跑一趟海军那边，告诉诺灵顿船长我们这边的情况<n><t>我想他会作出合适的判断的")

	MisBeginCondition(HasRecord, 508)
	MisBeginCondition(NoRecord, 509)
	MisBeginCondition(NoMission, 509)

	MisBeginAction(AddMission, 509)
	
	MisHelpTalk("<t>还没出发吗？你要抓紧时间啊")
	MisNeed(MIS_NEED_DESP, "帮杰克史派罗带话给诺灵顿将军")
	
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisResultCondition(AlwaysFailure)

-- 诺灵顿 >> 海盗与海军
	DefineMission(576, "海盗与海军", 509,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>杰克那小子还没死吗？这次胆敢向我求助？真是胆大包天！<n><t>哦？亡灵军官身上的船长信物？<n><t>看来在这条阵线上我们的利益是一致的，好吧，杰克的建议我会好好考虑的。")

	MisResultCondition(HasMission, 509)
	MisResultCondition(NoRecord, 509)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 509)
	MisResultAction(SetRecord, 509)

-- 诺灵顿 >> 将军的表白
	DefineMission(577,"将军的表白",510)
	
	MisBeginTalk("<t>该死的亡灵，我的求婚戒指被他们抢去了？<n><t>为什么要抢我的戒指？<n><t>鬼才知道，我那枚戒指可是用了好几十个金币打造成的，你能帮我把戒指抢回来吗？据说他们已经乘幽灵船准备离开了")

	MisBeginCondition(HasRecord, 509)
	MisBeginCondition(NoRecord, 510)
	MisBeginCondition(NoMission, 510)
	
	MisBeginAction(AddMission, 510)
	MisBeginAction(AddTrigger, 5101, TE_GETITEM, 2416, 1)
	MisNeed(MIS_NEED_ITEM, 2416, 1, 10, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>如果你不能抢回我的戒指，我将拒绝帮助杰克史派罗")

	MisResultTalk("<t>真好啊，戒指又回来了，这下我可以向伊丽莎白求婚啦！")

	MisResultCondition(HasMission, 510)
	MisResultCondition(NoRecord, 510)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddExp, 30000, 30000)
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 510)
	MisResultAction(SetRecord, 510)
	
	InitTrigger()
	TriggerCondition(1, IsItem, 2416)
	TriggerAction(1, AddNextFlag, 510, 10, 1)
	RegCurTrigger(5101)

-- 诺灵顿 >> 将军的表白
	DefineMission(578,"将军的表白",511)
	
	MisBeginTalk("<t>那个……怎么说好呢……我喜欢一个女孩……想向她求婚……<n><t>但我不好意思开口……你能帮我把这个戒指送给她……看看她的反应吗……<n><t>如果她能接受我的爱意……我一定会感谢你的……对了……那女孩叫伊丽莎白")

	MisBeginCondition(HasRecord, 510)
	MisBeginCondition(NoRecord, 511)
	MisBeginCondition(NoMission, 511)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 511)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>伊丽莎白……伊丽莎白…………")
	MisNeed(MIS_NEED_DESP, "<t>帮诺灵顿把求婚戒指送给伊丽莎白，并打探伊丽莎白的反应")

	MisCancelAction(SystemNotice, "该任务无法中断")

	MisResultCondition(AlwaysFailure)

-- 伊丽莎白 >> 将军的表白
	DefineMission(579, "将军的表白", 511,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	
	MisResultTalk("<t>诺灵顿将军………你这又是何苦呢？")
	MisResultCondition(HasMission, 511)
	MisResultCondition(NoRecord, 511)
	MisResultCondition(HasItem, 2416, 1)

	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(ClearMission, 511)
	MisResultAction(SetRecord, 511)

-- 伊丽莎白 >> 伊丽莎白的祈祷
	DefineMission(580,"伊丽莎白的祈祷",512)

	MisBeginTalk("<t>我感到很不安，好象有种奇怪的感觉<n><t>威尔那边好象出了些状况，我很担心他，你能替我去他那边看看吗？<n><t>而我将会在这边为他祈祷！")

	MisBeginCondition(HasRecord, 511)
	MisBeginCondition(NoRecord, 512)
	MisBeginCondition(NoMission, 512)
	
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginAction(AddMission, 512)
	MisHelpTalk("<t>万能的主啊，请保佑威尔平安…")
	MisNeed(MIS_NEED_DESP, "受伊丽莎白所托去帮助铁匠")

	MisResultCondition(AlwaysFailure)


-- 铁匠 >> 伊丽莎白的祈祷
	DefineMission(581, "伊丽莎白的祈祷", 512,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>是伊丽莎白要你来的吗？<n><t>她最近过得可好？我这边出了点小状况，没什么大问题的，希望她不要太为我担心")

	MisResultCondition(HasMission, 512)
	MisResultCondition(NoRecord, 512)
	
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 512)
	MisResultAction(SetRecord, 512)

-- 铁匠 >> 诅咒
	DefineMission(582,"诅咒",513)

	MisBeginTalk("<t>我们之前搜集的财宝被黑珍珠号上的亡灵们抢走了，并且下了极其恶心的诅咒<n><t>现在我需要你去把这批受了诅咒的财宝给我带回来，我将会把上面的诅咒一一解除<n><t>怎么样，没问题吧。<n><t>去吧，帮我猎杀黑珍珠号吧，我知道这个任务很困难，但是一旦你完成你的任务后，我一定会重重的奖励你的。")
	
	MisBeginCondition(HasRecord, 512)
	MisBeginCondition(NoRecord, 513)
	MisBeginCondition(NoMission, 513)
	
	MisBeginAction(AddMission, 513)
	MisBeginAction(AddTrigger, 5131,TE_GETITEM, 2417, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_ITEM, 2417, 1, 10, 1)

	MisHelpTalk("<t>你还没把财宝带回来吗？")

	MisResultTalk("<t>让我看看，不错，真是一种非常厉害的诅咒啊，让我试着解开这些恶毒的诅咒。<n><t>!^($……%*#·a2……1&s?~*#^%!……(铁匠又念起了奇怪的咒文，为什么要说又呢？)，太好了！我们成功了！")

	MisResultCondition(HasMission, 513)
	MisResultCondition(NoRecord, 513)
	MisResultCondition(HasItem, 2417, 1)
	
	MisResultAction(TakeItem, 2417, 1)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 800000, 800000)
	MisResultAction(ClearMission, 513)
	MisResultAction(SetRecord, 513)

	InitTrigger()
	TriggerCondition(1, IsItem, 2417)
	TriggerAction(1, AddNextFlag, 513, 10, 1)
	RegCurTrigger(5131)

-- 铁匠 >> 诅咒

	DefineMission(583,"诅咒",514)
	
	MisBeginTalk("<t>我们已经成功破除了亡灵海盗所热衷的财宝上的所有诅咒<n><t>可以想象，没有财宝，没有诅咒的力量，这些亡灵们还有什么力量和我们抗衡<n><t>现在是时候发动总攻击了，不过在这之前，请你帮我告诉我的好朋友杰克史派罗这些事好吗？")

	MisBeginCondition(HasRecord, 513)
	MisBeginCondition(NoRecord, 514)
	MisBeginCondition(NoMission, 514)

	MisBeginAction(AddMission, 514)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>你怎么还没出发？敌人现在正处在虚弱期，正是发起反攻的好时候")
	MisNeed(MIS_NEED_DESP, "帮铁匠告诉杰克史派罗诅咒已经被破解的事")

	MisResultCondition(AlwaysFailure)

-- 杰克史派罗 >> 诅咒
	DefineMission(584, "诅咒", 514,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>我知道了，我们马上展开攻击，你呢？我想你是不会错过这千载难逢的机会吧？")
	MisResultCondition(HasMission, 514)
	MisResultCondition(NoRecord, 514)

	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 514)
	MisResultAction(SetRecord, 514)

-- 杰克史派罗 >> 真真的船长
	DefineMission(585,"真正的船长",515)
	
	MisBeginTalk("<t>决战的时刻来了！来吧！巴伯萨！让我们把之前的恩恩冤冤都作个了解吧！<n><t>朋友，如果你能帮我干掉邪恶的巴伯萨把他的船长金牌拿回来，我一定会好好酬谢你的<n><t>就让实力来告诉他，谁才是黑珍珠号真正的船长！")
	MisBeginCondition(HasRecord, 514)
	MisBeginCondition(NoRecord, 515)
	MisBeginCondition(NoMission,515)
	
	MisBeginAction(AddMission, 515)
	MisBeginAction(AddTrigger, 5151, TE_KILL, 805, 1)
	MisBeginAction(AddTrigger, 5152, TE_GETITEM, 2428, 1)

	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2428, 1,20, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>该死的巴伯萨！你也有今天！")

	MisResultTalk("<t>太棒了！我才是黑珍珠号真正的船长！！！")

	MisResultCondition(HasMission, 515)
	MisResultCondition(HasFlag, 515, 10)
	MisResultCondition(HasItem, 2428,1)
	MisResultCondition(NoRecord, 515)

	MisResultAction(TakeItem, 2428, 1)
	MisResultAction(ClearMission, 515)
	MisResultAction(SetRecord, 515)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000,800000)

	InitTrigger()
	TriggerCondition(1,IsMonster, 805)
	TriggerAction(1,AddNextFlag, 515, 10, 1)
	RegCurTrigger(5151)

	InitTrigger()
	TriggerCondition(1, IsItem, 2428)
	TriggerAction(1, AddNextFlag , 515, 20, 1)
	RegCurTrigger(5152)


-- 杰克史派罗 >> 贺礼
	DefineMission(586,"贺礼",516)
	
	MisBeginTalk("<t>一切都结束了，听说威尔和伊丽莎白结婚了<n><t>真是喜上加喜呀~来来来，帮我把这份礼物送给伊丽莎白，为什么我不亲自送？<n><t>白痴！你见过NPC自己做任务的吗？")

	MisBeginCondition(HasRecord, 515)
	MisBeginCondition(NoRecord, 516)
	MisBeginCondition(NoMission, 516)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisBeginAction(AddMission, 516)
	MisBeginAction(GiveItem, 2433, 1,4)
	MisHelpTalk("<t>哥哥我坐船头噢噢~妹妹在岸上走哦哦~恩恩爱爱小船荡悠悠")
	MisNeed(MIS_NEED_DESP, "帮杰克送礼物给伊丽莎白，庆祝她和铁匠结婚")
	
	MisResultCondition(AlwaysFailure)

-- 杰克史派罗 >> 贺礼
	DefineMission(587,"贺礼",516,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>是杰克的礼物耶~快拆开看看！<n><t>什么嘛，一枚骷髅头勋章，真小气！")
	MisResultCondition(HasMission, 516)
	MisResultCondition(NoRecord, 516)
	MisResultCondition(HasItem, 2433, 1)
	
	MisResultAction(TakeItem, 2433, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 516)
	MisResultAction(SetRecord, 516)

-- 伊丽莎白 >> 心有所属
	DefineMission(588,"心有所属",517)
	
	MisBeginTalk("<t>你能好事做到底吗？<n><t>帮我把这枚戒指还给诺灵顿将军，我想他会体会到我的心情的。")

	MisBeginCondition(HasRecord, 516)
	MisBeginCondition(NoRecord, 517)
	MisBeginCondition(NoMission, 517)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisBeginAction(AddMission, 517)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>蜜月旅行去哪好呢？新马泰？夏维夷？加勒比海？")
	MisNeed(MIS_NEED_DESP, "帮伊丽莎白把结婚戒指还给诺灵顿")
	
	MisResultCondition(AlwaysFailure)

-- 诺灵顿 >> 心有所属
	DefineMission(589,"心有所属",517,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>既不回头，何必不忘<n><t>既然无缘，何须誓言<n><t>今日种种，似水无痕<n><t>明昔何夕，君已陌路……")
	MisResultCondition(HasMission, 517)
	MisResultCondition(NoRecord, 517)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 517)
	MisResultAction(SetRecord, 517)

-- 诺灵顿  >> 诺灵顿的祝福
	DefineMission(590,"诺灵顿的祝福",518)
	
	MisBeginTalk("<t>我想通了，我应该好好的祝福他们而不是在这里哀声叹气<n><t>这是我打算送给他们的礼物，你能帮我转交给他们吗？")

	MisBeginCondition(HasRecord, 517)
	MisBeginCondition(NoRecord, 518)
	MisBeginCondition(NoMission, 518)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisBeginAction(AddMission, 518)
	MisBeginAction(GiveItem, 2435, 1,4)
	MisHelpTalk("<t>伊丽莎白~希望来世我们有缘能够在一起。")
	MisNeed(MIS_NEED_DESP, "帮诺灵顿送结婚礼物给伊丽莎白")
	
	MisResultCondition(AlwaysFailure)

-- 伊丽莎白>> 诺灵顿的祝福
	DefineMission(591,"诺灵顿的祝福",518,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>诺灵顿将军……谢谢你能体谅我的心情<n><t>谢谢，谢谢……")
	MisResultCondition(HasMission, 518)
	MisResultCondition(NoRecord, 518)
	MisResultCondition(HasItem, 2435, 1)
	
	MisResultAction(TakeItem, 2435, 1)
	MisResultAction(AddMoney,300000, 300000)
	MisResultAction(ClearMission, 518)
	MisResultAction(SetRecord, 518)
	
end
DuplicateMission001()
























