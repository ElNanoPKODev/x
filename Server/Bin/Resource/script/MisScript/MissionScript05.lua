------------------------------------------------------------
--MissionScript05.lua Created by Robin 2005.05.27.
--
--区域任务
------------------------------------------------------------
print( "loading MissionScript05.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		区域任务	 				--
--							--
--							--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>主线任务开始
function AreaMission001()

-----------------------------------盗取蜂巢
	DefineMission( 600, "盗取蜂巢", 600 )
	
	MisBeginTalk( "<t>俗话说，射人先射马，擒贼先擒王。<n><t>这<r野蛮蜂>越来越猖獗，光是猎杀工蜂是没有用的。<n><t>麻烦你到<r野蛮蜂>的老巢偷5个<y蜂巢>。<n><t>看失了蜂巢它们还怎么嚣张。<n><t>（蜂巢就在野蛮蜂出没的地域附近，你要注意那里的树木，蜂巢就悬挂在某棵树上，找到后，用鼠标左键点击就能取得。）" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 600)
	MisBeginCondition(NoRecord, 600)
	MisBeginAction(AddMission, 600)
	MisBeginAction(AddTrigger, 6001, TE_GETITEM, 4085, 5 )
	MisCancelAction(ClearMission, 600)

	MisNeed(MIS_NEED_ITEM, 4085, 5, 10, 5)
		
	MisHelpTalk("<t><r野蛮蜂>叮人很痛的，偷<y蜂巢>的时候要小心防范！")
	MisResultTalk("<t>嘿，我的主意有用吧，辛苦你了！")
	MisResultCondition(NoRecord, 600)
	MisResultCondition(HasMission, 600)
	MisResultCondition(HasItem, 4085, 5)
	MisResultAction(TakeItem, 4085, 5)
	MisResultAction(ClearMission, 600)
	MisResultAction(SetRecord, 600)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4085 )	
	TriggerAction( 1, AddNextFlag, 600, 10, 5 )
	RegCurTrigger( 6001 )

-----------------------------------歼灭野蛮蜂
	DefineMission( 601, "歼灭野蛮蜂", 601 )
	
	MisBeginTalk( "<t>哎哟哎哟……唉，这<野蛮蜂>越来越放肆了，我不过路过它们采蜜的花圃，就被它们乱扎一气。<n><t>现在脸肿得根馒头似的，真气人！<n><t>麻烦你去灭掉10只<r野蛮蜂>，教训教训这些野蛮的家伙！<n><t>据说它们在 （1623,3139） 附近出没！" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(HasRecord, 600)
	MisBeginCondition(NoMission, 601)
	MisBeginCondition(NoRecord, 601)
	MisBeginAction(AddMission, 601)
	MisBeginAction(AddTrigger, 6011, TE_KILL, 139, 10 )
	MisCancelAction(ClearMission, 601)

	MisNeed(MIS_NEED_KILL, 139, 10, 10, 10)
	
	MisHelpTalk("<t>哎哟，脸真痛！你还没消灭那些<r野蛮蜂>吗？")
	MisResultTalk("<t>哼哼，这下<r野蛮蜂>可该知道了人类不是那么好欺负的！")
	MisResultCondition(NoRecord, 601)
	MisResultCondition(HasMission, 601)
	MisResultCondition(HasFlag, 601, 19 )
	MisResultAction(ClearMission, 601)
	MisResultAction(SetRecord, 601)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 139 )	
	TriggerAction( 1, AddNextFlag, 601, 10, 10 )
	RegCurTrigger( 6011 )

-----------------------------------扰人清梦
	DefineMission( 602, "扰人清梦", 602 )
	
	MisBeginTalk( "<t>啊，我正在找你呢！这两天我一躺下就听到“咕咕咕咕”的<r猫头鹰>叫声，吵得我不能入睡。<n><t>我年纪大了，可不能天天这么失眠，麻烦你杀掉10只<r猫头鹰>，让我睡个好觉吗？那些吵闹的家伙好象在 （1384,3065） 附近。" )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(HasRecord, 603)
	MisBeginCondition(NoMission, 602)
	MisBeginCondition(NoRecord, 602)
	MisBeginAction(AddMission, 602)
	MisBeginAction(AddTrigger, 6021, TE_KILL, 224, 10 )
	MisCancelAction(ClearMission, 602)

	MisNeed(MIS_NEED_KILL, 224, 10, 10, 10)
	
	MisHelpTalk("<t>你杀掉10只<r猫头鹰>就可以了。")
	MisResultTalk("<t>太感谢你了，我现在总算能睡个安稳觉啦。")
	MisResultCondition(NoRecord, 602)
	MisResultCondition(HasMission, 602)
	MisResultCondition(HasFlag, 602, 19 )
	MisResultAction(ClearMission, 602)
	MisResultAction(SetRecord, 602)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 224 )	
	TriggerAction( 1, AddNextFlag, 602, 10, 10 )
	RegCurTrigger( 6021 )


-----------------------------------学者猫头鹰
	DefineMission( 603, "学者猫头鹰", 603 )
	
	MisBeginTalk( "<t>我，我一定是眼花了……我昨天竟然看见<r猫头鹰>的爪子上抓了一本书，它难道是在看书吗？这太诡异了！<n><t>麻烦你取5个<y猫头鹰爪子>回来，让我研究研究这诡异的现象！<n><t><r猫头鹰>一般都在 （1384,3065） 附近出没。" )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 603)
	MisBeginCondition(NoRecord, 603)
	MisBeginAction(AddMission, 603)
	MisBeginAction(AddTrigger, 6031, TE_GETITEM, 4432, 5 )
	MisCancelAction(ClearMission, 603)

	MisNeed(MIS_NEED_ITEM, 4432, 5, 10, 5)
	
	MisHelpTalk("<t>只要5个<y猫头鹰爪子>，我就能分析出来。")
	MisResultTalk("<t>哎？这里的<r猫头鹰>和其他地方的一样嘛～～根本没什么特别，真奇怪，难道真是我眼花了？")
	MisResultCondition(NoRecord, 603)
	MisResultCondition(HasMission, 603)
	MisResultCondition(HasItem, 4432, 5)
	MisResultAction(TakeItem, 4432, 5 )
	MisResultAction(ClearMission, 603)
	MisResultAction(SetRecord, 603)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4432 )	
	TriggerAction( 1, AddNextFlag, 603, 10, 5 )
	RegCurTrigger( 6031 )

-----------------------------------奸诈的猫头鹰
	DefineMission( 604, "奸诈的猫头鹰", 604 )
	
	MisBeginTalk( "<t>对不起，可以耽误你一下吗？我前两天在外面看书时，一只<r猫头鹰>迎面扑来，抓了几页书就飞跑了。<n><t>这里的猫头鹰向来不怕人，我想它可能拿书页去垫窝了。<n><t>可这书对我很重要，你能帮我把这几页<y散落的书页>取回来吗？（你可以在猫头鹰的窝里找到“散落的书页”，仔细在有猫头鹰出没的地方找找，他们的窝可能就在某棵树上。）" )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 604)
	MisBeginCondition(NoRecord, 604)
	MisBeginAction(AddMission, 604)
	MisBeginAction(AddTrigger, 6041, TE_GETITEM, 4086, 5 )
	MisCancelAction(ClearMission, 604)

	MisNeed(MIS_NEED_ITEM, 4086, 5, 10, 5)
	
	MisHelpTalk("<t>快些取回我的书页吧！")
	MisResultTalk("<t>太好了，谢谢你。")
	MisResultCondition(NoRecord, 604)
	MisResultCondition(HasMission, 604)
	MisResultCondition(HasItem, 4086, 5)
	MisResultAction(TakeItem, 4086, 5 )
	MisResultAction(ClearMission, 604)
	MisResultAction(SetRecord, 604)
	MisResultAction(AddExp, 1100, 1100)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4086 )	
	TriggerAction( 1, AddNextFlag, 604, 10, 5 )
	RegCurTrigger( 6041 )

-----------------------------------烤猪尾的诱惑
	DefineMission( 605, "烤猪尾的诱惑", 605 )
	
	MisBeginTalk( "<t>这是我人生最大的请求！你一定要答应我！<n><t>真的？你答应了？那么请帮我截5段<y豪猪短尾>回来吧！我对着<r箭豪猪>天天流口水呢！<n><t><r箭豪猪>和它们的尾巴在（1384,3065） 附近等你哦！ " )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 605)
	MisBeginCondition(NoRecord, 605)
	MisBeginAction(AddMission, 605)
	MisBeginAction(AddTrigger, 6051, TE_GETITEM, 4433, 5 )
	MisCancelAction(ClearMission, 605)

	MisNeed(MIS_NEED_ITEM, 4433, 5, 10, 5)
	
	MisHelpTalk("<t><t>你答应我帮我取<y豪猪短尾>，不能反悔哦。")
	MisResultTalk("<t>嘿，真有你的！那些<r箭豪猪>该不会乖乖让你剪它们的尾巴吧，呵呵。")
	MisResultCondition(NoRecord, 605)
	MisResultCondition(HasMission, 605)
	MisResultCondition(HasItem, 4433, 5)
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(ClearMission, 605)
	MisResultAction(SetRecord, 605)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4433 )	
	TriggerAction( 1, AddNextFlag, 605, 10, 5 )
	RegCurTrigger( 6051 )

-----------------------------------箭豪猪的反抗
	DefineMission( 606, "箭豪猪的反抗", 606 )
	
	MisBeginTalk( "<t>我早上推开窗，吓了一跳，怎么这些<r箭豪猪>都跑到我院子里来捣乱了！<n><t>你看它们体形那么大，成天斜着眼跑到我院子里搞破坏，这怎么受得了！<n><t>麻烦你杀死10只捣乱的<r箭豪猪>好吗？他们正在 （1384,3065） 附近搞破坏呢！ " )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(HasRecord, 605)
	MisBeginCondition(NoMission, 606)
	MisBeginCondition(NoRecord, 606)
	MisBeginAction(AddMission, 606)
	MisBeginAction(AddTrigger, 6061, TE_KILL, 264, 10 )
	MisCancelAction(ClearMission, 606)

	MisNeed(MIS_NEED_KILL, 264, 10, 10, 10)
	
	MisHelpTalk("<t>你猎杀10只箭豪猪就可以了。")
	MisResultTalk("<t>嗯，这些我的院子里清净多了，谢谢")
	MisResultCondition(NoRecord, 606)
	MisResultCondition(HasMission, 606)
	MisResultCondition(HasFlag, 606, 19 )
	MisResultAction(ClearMission, 606)
	MisResultAction(SetRecord, 606)
	MisCancelAction(ClearMission, 607)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 264 )	
	TriggerAction( 1, AddNextFlag, 606, 10, 10 )
	RegCurTrigger( 6061 )

-----------------------------------除臭行动
	DefineMission( 607, "除臭行动", 607 )
	
	MisBeginTalk( "<t>嘿，朋友！你闻到一股奇怪的味道了吗？哦，肯定是附近的<r香草猪>散发出来的。<n><t>那些猪最近有些古怪，不再发出香草味道，而是散发出一股怪味，最好除掉他们。<n><t>麻烦你猎杀10只<r香草猪>好吗？据说<r香草猪>只生活在 （1414,2896） 附近。 " )
	MisBeginCondition(HasRecord, 608)
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 607)
	MisBeginCondition(NoRecord, 607)
	MisBeginAction(AddMission, 607)
	MisBeginAction(AddTrigger, 6071, TE_KILL, 295, 10 )
	MisCancelAction(ClearMission, 607)

	MisNeed(MIS_NEED_KILL, 295, 10, 10, 10)
	
	MisHelpTalk("<t>这么简单的任务你也完不成吗？快去猎杀10只<r香草猪>！")
	MisResultTalk("<t>你做得真不错！")
	MisResultCondition(NoRecord, 607)
	MisResultCondition(HasMission, 607)
	MisResultCondition(HasFlag, 607, 19 )
	MisResultAction(ClearMission, 607)
	MisResultAction(SetRecord, 607)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 295 )	
	TriggerAction( 1, AddNextFlag, 607, 10, 10 )
	RegCurTrigger( 6071 )

-----------------------------------奇特香囊
	DefineMission( 608, "奇特香囊", 608 )
	
	MisBeginTalk( "<t>我认为<r箭豪猪>突然发狂和那些突然散发出奇异味道的<r香草猪>有很多关系。<n><t>但我还缺少证据，你能去帮我收集5个<r香草猪>的<y奇特香囊>让我研究一下它们的结构吗？据说<r香草猪>只生活在 （1414,2896） 附近。 " )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 608)
	MisBeginCondition(NoRecord, 608)
	MisBeginAction(AddMission, 608)
	MisBeginAction(AddTrigger, 6081, TE_GETITEM, 4460, 5 )
	MisCancelAction(ClearMission, 608)

	MisNeed(MIS_NEED_ITEM, 4460, 5, 10, 5)
	
	MisHelpTalk("<t>找到5个<y奇特香囊>了吗？")
	MisResultTalk("<t>原来如此！是<奇特香囊>的味道使附近的<r箭豪猪>发狂了！")
	MisResultCondition(NoRecord, 608)
	MisResultCondition(HasMission, 608)
	MisResultCondition(HasItem, 4460, 5)
	MisResultAction(TakeItem, 4460, 5 )
	MisResultAction(ClearMission, 608)
	MisResultAction(SetRecord, 608)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4460 )	
	TriggerAction( 1, AddNextFlag, 608, 10, 5 )
	RegCurTrigger( 6081 )

-----------------------------------丢失的金币
	DefineMission( 609, "丢失的金币", 609 )
	
	MisBeginTalk( "<t>朋友，你是知道我的！我一向是个正经商人！可那些<r山贼>为什么偏偏盯上我的钱，把我的金币袋整个抢走！<n><t>朋友，我打不过那一伙商人，所以我只能求你到山贼窝里把我的<y金币袋>取回来了！<n><t>（据说那些山贼总是把他们抢来的东西藏在他们营地里的木箱里，你可要仔细找找看。）" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 609)
	MisBeginCondition(NoRecord, 609)
	MisBeginAction(AddMission, 609)
	MisBeginAction(AddTrigger, 6091, TE_GETITEM, 4087, 1 )
	MisCancelAction(ClearMission, 609)

	MisNeed(MIS_NEED_ITEM, 4087, 1, 10, 1)
	
	MisHelpTalk("<t><r山贼>可能把我的<y金币袋>藏在钱箱里了，你仔细找找。")
	MisResultTalk("<t>你是我的救命恩人啊。<n><t>没有你的帮忙，我可不知道该怎么活下去了")
	MisResultCondition(NoRecord, 609)
	MisResultCondition(HasMission, 609)
	MisResultCondition(HasItem, 4087, 1)
	MisResultAction(TakeItem, 4087, 1 )
	MisResultAction(ClearMission, 609)
	MisResultAction(SetRecord, 609)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,1394,1394)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4087 )	
	TriggerAction( 1, AddNextFlag, 609, 10, 1 )
	RegCurTrigger( 6091 )


-----------------------------------可恶的山贼
	DefineMission( 610, "可恶的山贼", 610 )
	
	MisBeginTalk( "<t>嘿，朋友！轮到你大展身手的时候了！一群凶恶的<r山贼>潜伏在这附近，伺机抢劫过路人的金币和货物！<n><t>快快缉拿10个<r山贼>回来，到我这里领赏吧！<n><t>那些该死的山贼在 （1043,3066） 附近出没。 " )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 610)
	MisBeginCondition(NoRecord, 610)
	MisBeginAction(AddMission, 610)
	MisBeginAction(AddTrigger, 6101, TE_KILL, 93, 10 )
	MisCancelAction(ClearMission, 610)

	MisNeed(MIS_NEED_KILL, 93, 10, 10, 10)
	
	MisHelpTalk("<t>快点除掉10个<r山贼>过来拿赏金吧！")
	MisResultTalk("<t>嘿！干得漂亮！这些钱是你应得的报酬！")
	MisResultCondition(NoRecord, 610)
	MisResultCondition(HasMission, 610)
	MisResultCondition(HasFlag, 610, 19 )
	MisResultAction(ClearMission, 610)
	MisResultAction(SetRecord, 610)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 93 )	
	TriggerAction( 1, AddNextFlag, 610, 10, 10 )
	RegCurTrigger( 6101 )


-----------------------------------妖娆曼陀罗
	DefineMission( 611, "妖娆曼陀罗", 611 )
	
	MisBeginTalk( "<t>据说<r曼陀罗>是种极有智慧的花，能随着音乐声轻歌曼舞。<n><t>我没见过这种场景，所以实在不敢相信这种传言。<n><t>麻烦你取回2个<y曼陀罗尖刺>，让我研究研究好吗？传闻中这种奇特的花生长在 （1414,2896） 附近。 " )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 611)
	MisBeginCondition(NoRecord, 611)
	MisBeginAction(AddMission, 611)
	MisBeginAction(AddTrigger, 6111, TE_GETITEM, 4088, 2 )
	MisCancelAction(ClearMission, 611)

	MisNeed(MIS_NEED_ITEM, 4088, 2, 10, 2)
	
	MisHelpTalk("<t>只要2个<y曼陀罗尖刺>就好。")
	MisResultTalk("<t>谢谢你！有了这个我就可以好好研究研究了")
	MisResultCondition(NoRecord, 611)
	MisResultCondition(HasMission, 611)
	MisResultCondition(HasItem, 4088, 2)
	MisResultAction(TakeItem, 4088, 2 )
	MisResultAction(ClearMission, 611)
	MisResultAction(SetRecord, 611)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4088 )	
	TriggerAction( 1, AddNextFlag, 611, 10, 2 )
	RegCurTrigger( 6111 )

-----------------------------------铲除妖花
	DefineMission( 612, "铲除妖花", 612 )
	
	MisBeginTalk( "<t>加纳大陆上的人们称呼<r曼陀罗>为妖花，因为它们面目狰狞，又能自由舞动带尖刺的花枝，样子十分骇人。<n><t>我希望你能帮忙除去20朵<t曼陀罗>，让这里的居民能够安心生活，传闻中这种奇特的花生长在 （1414,2896） 附近。 " )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 612)
	MisBeginCondition(NoRecord, 612)
	MisBeginAction(AddMission, 612)
	MisBeginAction(AddTrigger, 6121, TE_KILL, 85, 20 )
	MisCancelAction(ClearMission, 612)

	MisNeed(MIS_NEED_KILL, 85, 20, 10, 20)
	
	MisHelpTalk("<t>只要铲除20朵<r曼陀罗>就可以了。")
	MisResultTalk("<t>嘿，你干得不错！这里的居民都将感谢你。")
	MisResultCondition(NoRecord, 612)
	MisResultCondition(HasMission, 612)
	MisResultCondition(HasFlag, 612, 29 )
	MisResultAction(ClearMission, 612)
	MisResultAction(SetRecord, 612)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 612, 10, 20 )
	RegCurTrigger( 6121 )


-----------------------------------比武大赛
	DefineMission( 613, "比武大赛", 613 )
	
	MisBeginTalk( "<t>嘿，朋友！你来得正是时候！这里正在举办一场别开生面的比武大赛呢！<n><t>只要你打倒10只<r拳击袋鼠>就有奖金可以拿哦！<n><t>我们现在正缺人手，你自己去好吗？参赛地点在 （1117,2923） 附近。 " )
	MisBeginCondition(HasRecord, 614 )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 613)
	MisBeginCondition(NoRecord, 613)
	MisBeginAction(AddMission, 613)
	MisBeginAction(AddTrigger, 6131, TE_KILL, 76, 10 )
	MisCancelAction(ClearMission, 613)

	MisNeed(MIS_NEED_KILL, 76, 10, 10, 10)
	
	MisHelpTalk("<t>要打倒10只<r拳击袋鼠>才有奖金拿哦。")
	MisResultTalk("<t>哦，真不错！这些奖金都是你的了！")
	MisResultCondition(NoRecord, 613)
	MisResultCondition(HasMission, 613)
	MisResultCondition(HasFlag, 613, 19 )
	MisResultAction(ClearMission, 613)
	MisResultAction(SetRecord, 613)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 613, 10, 10 )
	RegCurTrigger( 6131 )

-----------------------------------拳击手套
	DefineMission( 614, "拳击手套", 614 )
	
	MisBeginTalk( "<t>朋友，可以帮我个忙吗？过几天就是我弟弟生日了，他想要一副<y拳击手套>作生日礼物。<n><t>可这荒山野岭哪有人卖这东西呢？没办法，我只好请你去抢一个<r拳击袋鼠>的<y拳击手套>回来。<n><t>你愿意帮我这个忙吗？听说那些<r拳击袋鼠>正在 （1117,2923） 附近打擂台赛呢，这可是个好机会哦！" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 614)
	MisBeginCondition(NoRecord, 614)
	MisBeginAction(AddMission, 614)
	MisBeginAction(AddTrigger, 6141, TE_GETITEM, 4435, 1 )
	MisCancelAction(ClearMission, 614)

	MisNeed(MIS_NEED_ITEM, 4435, 1, 10, 1)
	
	MisHelpTalk("<t>我只要一副<y拳击手套>就够了！")
	MisResultTalk("<t>谢谢你！真难为你为我还做了一次强盗。")
	MisResultCondition(NoRecord, 614)
	MisResultCondition(HasMission, 614)
	MisResultCondition(HasItem, 4435, 1)
	MisResultAction(TakeItem, 4435, 1 )
	MisResultAction(ClearMission, 614)
	MisResultAction(SetRecord, 614)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4435 )	
	TriggerAction( 1, AddNextFlag, 614, 10, 1 )
	RegCurTrigger( 6141 )

-----------------------------------草原龟的灾难
	DefineMission( 615, "草原龟的灾难", 615 )
	
	MisBeginTalk( "<t>我讨厌<r成年草原龟>！一看见那慢吞吞的庞然大物，我就起急。<n><t>它们简直就是在浪费时间！<n><t>我恨不能帮它们快点走！哦，这种生物根本就不该存在！<n><t>你这就去杀掉10只<r成年草原龟>！那些该死的家伙们都爬了半个世纪了，还在 （1198,3116） 附近逗留！ " )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 615)
	MisBeginCondition(NoRecord, 615)
	MisBeginAction(AddMission, 615)
	MisBeginAction(AddTrigger, 6151, TE_KILL, 135, 10 )
	MisCancelAction(ClearMission, 615)

	MisNeed(MIS_NEED_KILL, 135, 10, 10, 10)
	
	MisHelpTalk("<t>杀杀杀！杀光<r成年草原龟>！")
	MisResultTalk("<t>哦！这下我痛快多了，谢谢你哦！")
	MisResultCondition(NoRecord, 615)
	MisResultCondition(HasMission, 615)
	MisResultCondition(HasFlag, 615, 19 )
	MisResultAction(ClearMission, 615)
	MisResultAction(SetRecord, 615)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 135 )	
	TriggerAction( 1, AddNextFlag, 615, 10, 10 )
	RegCurTrigger( 6151 )

-----------------------------------偷窃龟卵
	DefineMission( 616, "偷窃龟卵", 616 )
	
	MisBeginTalk( "<t>嘿，朋友，我告诉你个秘密，<r成年草原龟>现在在市面上的价钱可高了！<n><t>不过，我可应付不了这庞然大物。<n><t>麻烦你去<r成年草原龟>产卵的地方偷10个<y龟卵>。<n><t>到时候挣了钱，我分你一半如何？据说他们正在 （1198,3116） 附近逗留！<n><t> （只要在成年草原龟生活的区域仔细找找，就一定能在草丛里找到它们的巢穴，龟卵都在里面呢。）" )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 616)
	MisBeginCondition(NoRecord, 616)
	MisBeginAction(AddMission, 616)
	MisBeginAction(AddTrigger, 6161, TE_GETITEM, 4089, 10 )
	MisCancelAction(ClearMission, 616)

	MisNeed(MIS_NEED_ITEM, 4089, 10, 10, 10)
	
	MisHelpTalk("<t>10个龟卵拿回来了吗？我要靠它赚钱哦。")
	MisResultTalk("<t>嘿嘿，这下可发财了！谢谢你帮忙，下次有这种差事，我还会找你哦！")
	MisResultCondition(NoRecord, 616)
	MisResultCondition(HasMission, 616)
	MisResultCondition(HasItem, 4089, 10)
	MisResultAction(TakeItem, 4089, 10 )
	MisResultAction(ClearMission, 616)
	MisResultAction(SetRecord, 616)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4089 )	
	TriggerAction( 1, AddNextFlag, 616, 10, 10 )
	RegCurTrigger( 6161 )

-----------------------------------走私龟甲
	DefineMission( 617, "走私龟甲", 617 )
	
	MisBeginTalk( "<t>前些日子，我用<r成年草原龟>的<y龟卵>养了不少草原龟，卖了大价钱。<n><t>现在市场上又在流行龟甲了。<n><t>麻烦你去收集5个<y完好的龟甲>回来好吗？我准备把它们走私到<p冰狼堡>去。<n><t>那些家伙也真够慢的，好象还在 （1198,3116） 附近。" )
	MisBeginCondition(HasRecord, 616)
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 617)
	MisBeginCondition(NoRecord, 617)
	MisBeginAction(AddMission, 617)
	MisBeginAction(AddTrigger, 6171, TE_GETITEM, 4465, 5 )
	MisCancelAction(ClearMission, 617)

	MisNeed(MIS_NEED_ITEM, 4465, 5, 10, 5)
	
	MisHelpTalk("<t>快集齐5个<y完好的龟甲>给我哦！")
	MisResultTalk("<t>嘿，你真有效率！谢谢啦！")
	MisResultCondition(NoRecord, 617)
	MisResultCondition(HasMission, 617)
	MisResultCondition(HasItem, 4465, 5)
	MisResultAction(TakeItem, 4465, 5 )
	MisResultAction(ClearMission, 617)
	MisResultAction(SetRecord, 617)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4465 )	
	TriggerAction( 1, AddNextFlag, 617, 10, 5 )
	RegCurTrigger( 6171 )

-----------------------------------邪恶的诅咒
	DefineMission( 618, "邪恶的诅咒", 618 )
	
	MisBeginTalk( "<t>嘿嘿，朋友，我偷偷告诉你，最近我和深蓝土著学了一种恶毒的诅咒，我要用它来诅咒我的仇人<b严罗塔>。<n><t>不过呢，我现在还少了一味<y锋利的獠牙>，麻烦你从<r野猪>身上拔10只<y锋利的獠牙>回来，助我完成诅咒！<n><t>这种<r野猪>只生活在 （910,2971） 附近。")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 618)
	MisBeginCondition(NoRecord, 618)
	MisBeginAction(AddMission, 618)
	MisBeginAction(AddTrigger, 6181, TE_GETITEM, 4443, 10 )
	MisCancelAction(ClearMission, 618)

	MisNeed(MIS_NEED_ITEM, 4443, 10, 10, 10)
	
	MisHelpTalk("<t>我要10只<y锋利的獠牙>，多一只少一只都不行。")
	MisResultTalk("<t>天雷！地火！变变变！哈哈！我做成了！<b严罗塔>，这回你死定了！")
	MisResultCondition(NoRecord, 618)
	MisResultCondition(HasMission, 618)
	MisResultCondition(HasItem, 4443, 10)
	MisResultAction(TakeItem, 4443, 10 )
	MisResultAction(ClearMission, 618)
	MisResultAction(SetRecord, 618)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4443 )	
	TriggerAction( 1, AddNextFlag, 618, 10, 10 )
	RegCurTrigger( 6181 )

-----------------------------------野猪独立日
	DefineMission( 619, "野猪独立日", 619 )
	
	MisBeginTalk( "<t>啊！我恨死<r野猪>了！那些家伙最近在搞什么独立日纪念运动。<n><t>纪念他们逃出屠宰场，重新为猪的光辉历程，一群一群地跑到街上来游行！<n><t>你快去杀掉10只<r野猪>，让这里安静一下吧！<n><t>现在他们正在 （910,2971） 附近集会呢！")
	MisBeginCondition(HasRecord, 618)
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoRecord, 619)
	MisBeginAction(AddMission, 619)
	MisBeginAction(AddTrigger, 6191, TE_KILL, 64, 10 )
	MisCancelAction(ClearMission, 619)

	MisNeed(MIS_NEED_KILL, 64, 10, 10, 10)
	
	MisHelpTalk("<t>赶紧杀掉那些搞独立纪念日的<r野猪>吧！")
	MisResultTalk("<t>哦，世界清净多了！谢谢你哦！")
	MisResultCondition(NoRecord, 619)
	MisResultCondition(HasMission, 619)
	MisResultCondition(HasFlag, 619, 19 )
	MisResultAction(ClearMission, 619)
	MisResultAction(SetRecord, 619)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 619, 10, 10 )
	RegCurTrigger( 6191 )

-----------------------------------挑战野猪
	DefineMission( 620, "挑战野猪", 620 )
	
	MisBeginTalk( "<t>朋友，你初来乍道，想不想向这里的人证明自己的实力呢？我有个好主意。<n><t>这里的人们都很讨厌那些四处游荡的<r野猪>，但是又害怕<r野猪>的蛮力，不敢驱逐它们。<n><t>你可以去杀死5只<r野猪>来证明自己的实力！<n><t>如果你觉得自己是英雄的话，就去 （911,2973） 附近给它们点颜色瞧瞧吧！")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoRecord, 620)
	MisBeginAction(AddMission, 620)
	MisBeginAction(AddTrigger, 6201, TE_KILL, 64, 5 )
	MisCancelAction(ClearMission, 620)

	MisNeed(MIS_NEED_KILL, 64, 5, 10, 5)
	
	MisHelpTalk("<t>要杀死5只<r野猪>才能向众人证明你的实力！")
	MisResultTalk("<t>嘿，朋友，你干得真不错！")
	MisResultCondition(NoRecord, 620)
	MisResultCondition(HasMission, 620)
	MisResultCondition(HasFlag, 620, 14 )
	MisResultAction(ClearMission, 620)
	MisResultAction(SetRecord, 620)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 620, 10, 5 )
	RegCurTrigger( 6201 )

-----------------------------------珍贵的药草
	DefineMission( 621, "珍贵的药草", 621 )
	
	MisBeginTalk( "t>唉，朋友，我在来这里的路上弄丢了一批珍贵的药材。<n><t>本来我应该马上把这批药材交到补给站去填补仓库的亏空。<n><t>可我现在拿什么去呢！<n><t>唉，就当你可怜可怜我，去<r草原鹿>出没的草原摘6株<y珍贵药草>好吗？那片草原在哪呢？…… 想起来了！<n><t>就在 （1360,2683） 附近！")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 621)
	MisBeginCondition(NoRecord, 621)
	MisBeginAction(AddMission, 621)
	MisBeginAction(AddTrigger, 6211, TE_GETITEM, 4090, 6 )
	MisCancelAction(ClearMission, 621)

	MisNeed(MIS_NEED_ITEM, 4090, 6, 10, 6)
	
	MisHelpTalk("<t>找到6株<y珍贵药草>了吗？")
	MisResultTalk("<t>喔，你的大恩大德我没齿难忘，真是太感谢你了！")
	MisResultCondition(NoRecord, 621)
	MisResultCondition(HasMission, 621)
	MisResultCondition(HasItem, 4090, 6)
	MisResultAction(TakeItem, 4090, 6 )
	MisResultAction(ClearMission, 621)
	MisResultAction(SetRecord, 621)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4090 )	
	TriggerAction( 1, AddNextFlag, 621, 10, 6 )
	RegCurTrigger( 6211 )

-----------------------------------草原鹿的秘密
	DefineMission( 622, "草原鹿的秘密", 622 )
	
	MisBeginTalk( "<t>我不明白，为什么这里的<r草原鹿>比别的地方的陆跑得都快，而且反应也灵敏许多呢？<n><t>麻烦你去收集5个<y坚硬鹿蹄>，让我去看看它到底和别的鹿有什么不同好吗？这种敏捷的动物好象生活在 （1360,2683） 附近！")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 622)
	MisBeginCondition(NoRecord, 622)
	MisBeginAction(AddMission, 622)
	MisBeginAction(AddTrigger, 6221, TE_GETITEM, 4372, 5 )
	MisCancelAction(ClearMission, 622)

	MisNeed(MIS_NEED_ITEM, 4372, 5, 10, 5)
	
	MisHelpTalk("<t>我要的5个<y坚硬鹿蹄>呢？怎么还没拿来？")
	MisResultTalk("<t>恩，我什么都没看出来，它看起来和别的鹿蹄一模一样……")
	MisResultCondition(NoRecord, 622)
	MisResultCondition(HasMission, 622)
	MisResultCondition(HasItem, 4372, 5)
	MisResultAction(TakeItem, 4372, 5 )
	MisResultAction(ClearMission, 622)
	MisResultAction(SetRecord, 622)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4372 )	
	TriggerAction( 1, AddNextFlag, 622, 10, 5 )
	RegCurTrigger( 6221 )

-----------------------------------鹿皮大衣
	DefineMission( 623, "鹿皮大衣", 623 )
	
	MisBeginTalk( "<t>嘿，朋友，不瞒你说，我以前是个不折不扣的大海盗，后来被黑杰克海盗团打败了才跑到这里来！<n><t>我现在想要穿<y上等鹿皮>缝制成的上等鹿皮大衣，我相信你会帮去取5张<y上等鹿皮>回来的。<n><t>为什么，因为你不去，我可就要狠狠教训你了！<n><t>去 （1360,2683） 附近杀掉<r草原鹿>就可以得到<y上等鹿皮>！快去！")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 623)
	MisBeginCondition(NoRecord, 623)
	MisBeginAction(AddMission, 623)
	MisBeginAction(AddTrigger, 6231, TE_GETITEM, 4091, 5 )
	MisCancelAction(ClearMission, 623)

	MisNeed(MIS_NEED_ITEM, 4091, 5, 10, 5)
	
	MisHelpTalk("<t>快去找5张<y上等鹿皮>！不然我揍你！")
	MisResultTalk("<t>呵呵，你的手脚还真利落，做得不错！")
	MisResultCondition(NoRecord, 623)
	MisResultCondition(HasMission, 623)
	MisResultCondition(HasItem, 4091, 5)
	MisResultAction(TakeItem, 4091, 5 )
	MisResultAction(ClearMission, 623)
	MisResultAction(SetRecord, 623)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4091 )	
	TriggerAction( 1, AddNextFlag, 623, 10, 5 )
	RegCurTrigger( 6231 )

-----------------------------------雪白猫头鹰
	DefineMission( 624, "雪白猫头鹰", 624 )
	
	MisBeginTalk( "<t>哦，我讨厌死<r雪白猫头鹰>了，大白天就没完没了地叫，吵得我头痛欲裂！<n><t>这样下去，我就要精神分裂了！麻烦你杀掉5只<r雪白猫头鹰>，让我耳边清净几天好吗？那些恶心的家伙生活在 （1360,2683） 附近。")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(NoMission, 624)
	MisBeginCondition(NoRecord, 624)
	MisBeginAction(AddMission, 624)
	MisBeginAction(AddTrigger, 6241, TE_KILL, 225, 5 )
	MisCancelAction(ClearMission, 624)

	MisNeed(MIS_NEED_KILL, 225, 5, 10, 5)
	
	MisHelpTalk("<t>你杀掉5只<r雪白猫头鹰>就可以了。")
	MisResultTalk("<t>太感谢你了，我现在能安静地过一下午了。")
	MisResultCondition(NoRecord, 624)
	MisResultCondition(HasMission, 624)
	MisResultCondition(HasFlag, 624, 14 )
	MisResultAction(ClearMission, 624)
	MisResultAction(SetRecord, 624)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,438,438)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 225 )	
	TriggerAction( 1, AddNextFlag, 624, 10, 5 )
	RegCurTrigger( 6241 )

-----------------------------------报复行为
	DefineMission( 625, "报复行为", 625 )
	
	MisBeginTalk( "<t>嘿，你来得正好，我有事要求你呢！你知道我前几天弄丢了一批的珍贵的药材，你知道为什么吗？那全是因为<r雪白猫头鹰>用他们<y锋利的鸟喙>啄开行李包，把里面的药材拿去垫窝了！<n><t>为了报复这些<r雪白猫头鹰>，我要求你杀掉他们，然后割下5只<y锋利的鸟喙>给我！<n><t>它们的老巢好象在 （1360,2683） 附近。")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(HasRecord, 621)
	MisBeginCondition(NoMission, 625)
	MisBeginCondition(NoRecord, 625)
	MisBeginAction(AddMission, 625)
	MisBeginAction(AddTrigger, 6251, TE_GETITEM, 4451, 5 )
	MisCancelAction(ClearMission, 625)

	MisNeed(MIS_NEED_ITEM, 4451, 5, 10, 5)
	
	MisHelpTalk("<t><y5个锋利的鸟喙>还没弄来吗？")
	MisResultTalk("<t>哈哈哈哈，这些我心里总算痛快了！")
	MisResultCondition(NoRecord, 625)
	MisResultCondition(HasMission, 625)
	MisResultCondition(HasItem, 4451, 5)
	MisResultAction(TakeItem, 4451, 5 )
	MisResultAction(ClearMission, 625)
	MisResultAction(SetRecord, 625)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,877,877)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4451 )	
	TriggerAction( 1, AddNextFlag, 625, 10, 5 )
	RegCurTrigger( 6251 )

-----------------------------------驱逐草原狼
	DefineMission( 626, "驱逐草原狼", 626 )
	
	MisBeginTalk( "<t><r草原狼>是种凶猛的生物，我从来没见过比它们更能威胁人类安全的生物！<n><t>我要求你杀死5只<r草原狼>，驱逐狼群，以确保这一地区的安全！<n><t>狼群似乎已经聚集到 （1143,2705） 附近了。<n><t>（注意，这些狼是群攻群守的，所以千万不要被包围了。）")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 626)
	MisBeginCondition(NoRecord, 626)
	MisBeginAction(AddMission, 626)
	MisBeginAction(AddTrigger, 6261, TE_KILL, 136, 5 )
	MisCancelAction(ClearMission, 626)

	MisNeed(MIS_NEED_KILL, 136, 5, 10, 5)
	
	MisHelpTalk("<t>还没有杀死5只<r草原狼>吗？要加把劲儿啦！")
	MisResultTalk("<t>嘿，你干得不错！")
	MisResultCondition(NoRecord, 626)
	MisResultCondition(HasMission, 626)
	MisResultCondition(HasFlag, 626, 14 )
	MisResultAction(ClearMission, 626)
	MisResultAction(SetRecord, 626)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 136 )	
	TriggerAction( 1, AddNextFlag, 626, 10, 5 )
	RegCurTrigger( 6261 )


-----------------------------------残忍的屠杀
	DefineMission( 627, "残忍的屠杀", 627 )
	
	MisBeginTalk( "<t>我说过以前是个无恶不作的海盗！现在我依然是个残暴的大坏蛋。<n><t>我最近看<r草原狼>很不顺眼，我要你杀掉这些狼，然后拿5只<y迅狼之爪>来给我装点卧室，哈哈哈哈哈。<n><t>据说狼群现在在 （1143,2705） 附近出没。")
	MisBeginCondition(HasRecord, 623)
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 627)
	MisBeginCondition(NoRecord, 627)
	MisBeginAction(AddMission, 627)
	MisBeginAction(AddTrigger, 6271, TE_GETITEM, 4469, 5 )
	MisCancelAction(ClearMission, 627)

	MisNeed(MIS_NEED_ITEM, 4469, 5, 10, 5)
	
	MisHelpTalk("<t>我要的5只<y迅狼之爪>呢！快去弄来！")
	MisResultTalk("<t>嘿，只有这种东西才配得上我的卧室！")
	MisResultCondition(NoRecord, 627)
	MisResultCondition(HasMission, 627)
	MisResultCondition(HasItem, 4469, 5)
	MisResultAction(TakeItem, 4469, 5 )
	MisResultAction(ClearMission, 627)
	MisResultAction(SetRecord, 627)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4469 )	
	TriggerAction( 1, AddNextFlag, 627, 10, 5 )
	RegCurTrigger( 6271 )

-----------------------------------惹事生非的袋鼠
	DefineMission( 628, "惹事生非的袋鼠", 628 )
	
	MisBeginTalk( "<t>等一等！求你帮我一个忙好吗？在我工作和家的必经之路上，来了一群<r爆击袋鼠>。<n><t>它们不分青红皂白见人就打，我怕死了，只能绕很远狠远的路回家。<n><t>求求你，帮我猎杀5只<r爆击袋鼠>，让我能平安到家好吗？那些暴力狂总在 （1161,2639） 附近游荡。")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 628)
	MisBeginCondition(NoRecord, 628)
	MisBeginAction(AddMission, 628)
	MisBeginAction(AddTrigger, 6281, TE_KILL, 80, 5 )
	MisCancelAction(ClearMission, 628)

	MisNeed(MIS_NEED_KILL, 80, 5, 10, 5)
	
	MisHelpTalk("<t>你除掉那些<r爆击袋鼠>了吗？")
	MisResultTalk("<t>谢谢！真是太感谢你了！")
	MisResultCondition(NoRecord, 628)
	MisResultCondition(HasMission, 628)
	MisResultCondition(HasFlag, 628, 14 )
	MisResultAction(ClearMission, 628)
	MisResultAction(SetRecord, 628)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 80 )	
	TriggerAction( 1, AddNextFlag, 628, 10, 5 )
	RegCurTrigger( 6281 )

-----------------------------------祈运魔法石
	DefineMission( 629, "祈运魔法石", 629 )
	
	MisBeginTalk( "<t>嘘，这是一个秘密，除了你和我，我不希望有第三个人知道！<n><t>告诉你，在<r爆击袋鼠>栖息的地方，有种神奇的<y祈运魔法石>，据说是很灵验的一种护身符哦！<n><t>你悄悄去那里取回3颗<y祈运魔法石>给我好吗？这种神奇的石头好象在 （1161,2639） 附近可以找到，就在那些草丛里闪光，仔细一点就能发现。")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 629)
	MisBeginCondition(NoRecord, 629)
	MisBeginAction(AddMission, 629)
	MisBeginAction(AddTrigger, 6291, TE_GETITEM, 4092, 3 )
	MisCancelAction(ClearMission, 629)

	MisNeed(MIS_NEED_ITEM, 4092, 3, 10, 3)
	
	MisHelpTalk("<t>要神不知鬼不觉地取3颗<y祈运魔法石>回来哦！")
	MisResultTalk("<t>哦，就是这种<y祈运魔法石>，谢谢你哦！")
	MisResultCondition(NoRecord, 629)
	MisResultCondition(HasMission, 629)
	MisResultCondition(HasItem, 4092, 3)
	MisResultAction(TakeItem, 4092, 3 )
	MisResultAction(ClearMission, 629)
	MisResultAction(SetRecord, 629)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4092 )	
	TriggerAction( 1, AddNextFlag, 629, 10, 3 )
	RegCurTrigger( 6291 )

-----------------------------------探究迟钝蜗牛
	DefineMission( 630, "探究迟钝蜗牛", 630 )
	
	MisBeginTalk( "<t>我觉得很神奇，为什么<r迟钝蜗牛>的行动那么迟缓，却在危机时刻总能避开危险呢？难道它们身上安了雷达不成？<n><t>麻烦你从<r迟钝蜗牛>身上取5个<y短短的蜗牛触角>回来让我仔细研究研究好吗？它们一般都在 （1227,2742） 附近出没。")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 630)
	MisBeginCondition(NoRecord, 630)
	MisBeginAction(AddMission, 630)
	MisBeginAction(AddTrigger, 6301, TE_GETITEM, 4473, 5 )
	MisCancelAction(ClearMission, 630)

	MisNeed(MIS_NEED_ITEM, 4473, 5, 10, 5)
	
	MisHelpTalk("<t>加油哦，快点集齐5个<y短短的蜗牛触角>哦！")
	MisResultTalk("<t>哦，原来这<y短短的蜗牛触角>就是它们的雷达呀！")
	MisResultCondition(NoRecord, 630)
	MisResultCondition(HasMission, 630)
	MisResultCondition(HasItem, 4473, 5)
	MisResultAction(TakeItem, 4473, 5 )
	MisResultAction(ClearMission, 630)
	MisResultAction(SetRecord, 630)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,923,923)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4473 )	
	TriggerAction( 1, AddNextFlag, 630, 10, 5 )
	RegCurTrigger( 6301 )

-----------------------------------慢吞吞的迟钝蜗牛
	DefineMission( 631, "慢吞吞的迟钝蜗牛", 631 )
	
	MisBeginTalk( "<t>我不喜欢慢吞吞的<r迟钝蜗牛>。<n><t>连看着它们都好象是在浪费生命一样！我真恨不得它们从这个世界上消失。<n><t>我知道这个念头很自私，可我是个分秒必争的商人，时间就是我的金钱！<n><t>哦，我觉得这种生物根本就不该存在。<n><t>只要你肯替我杀掉10只<r迟钝蜗牛>，我就给你高额的奖金！现在他们好象已经爬到 （1227,2742） 附近了吧。")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 631)
	MisBeginCondition(NoRecord, 631)
	MisBeginAction(AddMission, 631)
	MisBeginAction(AddTrigger, 6311, TE_KILL, 127, 10 )
	MisCancelAction(ClearMission, 631)

	MisNeed(MIS_NEED_KILL, 127, 10, 10, 10)
	
	MisHelpTalk("<t>杀杀杀！杀光<r迟钝蜗牛>！")
	MisResultTalk("<t>哦！这下我痛快多了，谢谢你哦！")
	MisResultCondition(NoRecord, 631)
	MisResultCondition(HasMission, 631)
	MisResultCondition(HasFlag, 631, 19 )
	MisResultAction(ClearMission, 631)
	MisResultAction(SetRecord, 631)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 127 )	
	TriggerAction( 1, AddNextFlag, 631, 10, 10 )
	RegCurTrigger( 6311 )


-----------------------------------堕落之道
	DefineMission( 632, "堕落之道", 632 )
	
	MisBeginTalk( "<t>这世界上的一切都源于女神卡拉的恩惠才得以繁衍，然而却有有些人违背了女神的教导，不顾精神的力量，只专注于技术的发展上。<n><t>我决定用诅咒的力量对惩罚这些悖逆女神意志的人，即使这样会让我也沦落堕落之道。<n><t>朋友，麻烦你去从泥浆怪身上取5支<y奇怪的蜡烛>，助我完成最后的仪式好吗？这些怪物生活在 （934,2747） 附近。")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 632)
	MisBeginCondition(NoRecord, 632)
	MisBeginAction(AddMission, 632)
	MisBeginAction(AddTrigger, 6321, TE_GETITEM, 4450, 5 )
	MisCancelAction(ClearMission, 632)

	MisNeed(MIS_NEED_ITEM, 4450, 5, 10, 5)
	
	MisHelpTalk("<t>我需要5支<y奇怪的蜡烛>才能完成最后的仪式。")
	MisResultTalk("<t>谢谢你为我做的一切！")
	MisResultCondition(NoRecord, 632)
	MisResultCondition(HasMission, 632)
	MisResultCondition(HasItem, 4450, 5)
	MisResultAction(TakeItem, 4450, 5 )
	MisResultAction(ClearMission, 632)
	MisResultAction(SetRecord, 632)
	MisResultAction(AddExp, 6800, 6800)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4450 )	
	TriggerAction( 1, AddNextFlag, 632, 10, 5 )
	RegCurTrigger( 6321 )

-----------------------------------刺刃翠鸟的挽歌
	DefineMission( 633, "刺刃翠鸟的挽歌", 633 )
	
	MisBeginTalk( "<t>嘿，朋友，听好，我这里有一个残忍的悬赏任务。<n><t>一位不肯透露姓名的大贵族养了一只<r刺刃翠鸟>，可他不希望在他笼子以外的地方还有<r刺刃翠鸟>出现，所以下重金歼灭<r刺刃翠鸟>。<n><t>只要你能杀死10只 （935,2687） 附近的 <r刺刃翠鸟>，就能得到天价的回报！<n><t>怎么样？你愿意接下这个任务吗？")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 633)
	MisBeginCondition(NoRecord, 633)
	MisBeginAction(AddMission, 633)
	MisBeginAction(AddTrigger, 6331, TE_KILL, 128, 10 )
	MisCancelAction(ClearMission, 633)

	MisNeed(MIS_NEED_KILL, 128, 10, 10, 10)
	
	MisHelpTalk("<t>你必须杀死10只<r刺刃翠鸟>才能拿到赏金。")
	MisResultTalk("<t>恩，干得不错，这就是你的酬劳，下次有事情再找你")
	MisResultCondition(NoRecord, 633)
	MisResultCondition(HasMission, 633)
	MisResultCondition(HasFlag, 633, 19 )
	MisResultAction(ClearMission, 633)
	MisResultAction(SetRecord, 633)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 128 )	
	TriggerAction( 1, AddNextFlag, 633, 10, 10 )
	RegCurTrigger( 6331 )

-----------------------------------突发奇想的斗篷
	DefineMission( 634, "突发奇想的斗篷", 634 )
	
	MisBeginTalk( "<t>我想做个羽毛斗篷！嘿，这个主意不错吧！<n><t>不过我当然不会自己去收集 羽毛，因为我以前是个鼎鼎大名的海盗，什么事情都靠手下去做！<n><t>所以虽然你笨手笨脚，我还是将就一下，派你去取5支<y闪烁光泽的羽毛>回来给我做斗篷吧！<n><t>你可以去 （935,2687） 找找看。")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 634)
	MisBeginCondition(NoRecord, 634)
	MisBeginAction(AddMission, 634)
	MisBeginAction(AddTrigger, 6341, TE_GETITEM, 4472, 5 )
	MisCancelAction(ClearMission, 634)

	MisNeed(MIS_NEED_ITEM, 4472, 5, 10, 5)
	
	MisHelpTalk("<t><y闪烁光泽的羽毛>只有<r刺刃翠鸟>身上才有呢！")
	MisResultTalk("<t>呵呵，又有新的斗篷穿了！")
	MisResultCondition(NoRecord, 634)
	MisResultCondition(HasMission, 634)
	MisResultCondition(HasItem, 4472, 5)
	MisResultAction(TakeItem, 4472, 5 )
	MisResultAction(ClearMission, 634)
	MisResultAction(SetRecord, 634)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4472 )	
	TriggerAction( 1, AddNextFlag, 634, 10, 5 )
	RegCurTrigger( 6341 )

-----------------------------------贩卖假化石
	DefineMission( 635, "贩卖假化石", 635 )
	
	MisBeginTalk( "<t>老实说，大部分商人都是昧着良心做生意的，我当然也不例外了。<n><t>最近有人向我定购了史前生物恐猪的化石蛋。<n><t>我可没地方去找这种东西的化石蛋。<n><t>麻烦你去找3个<y破碎的恐龟蛋>给我。<n><t>我加工一下，把它做成假化石蛋卖给那个冤大头，哈哈。<n><t>那些乌龟的聚集地在 （969,2587） 附近。")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 635)
	MisBeginCondition(NoRecord, 635)
	MisBeginAction(AddMission, 635)
	MisBeginAction(AddTrigger, 6351, TE_GETITEM, 4093, 3 )
	MisCancelAction(ClearMission, 635)

	MisNeed(MIS_NEED_ITEM, 4093, 3, 10, 3)
	
	MisHelpTalk("<t>找到3个<y破碎的恐龟蛋>了吗？")
	MisResultTalk("<t>呵呵，你真得很不错！这是你该得的一份钱，不过可不要把这事告诉别人哦。")
	MisResultCondition(NoRecord, 635)
	MisResultCondition(HasMission, 635)
	MisResultCondition(HasItem, 4093, 3)
	MisResultAction(TakeItem, 4093, 3 )
	MisResultAction(ClearMission, 635)
	MisResultAction(SetRecord, 635)
	MisResultAction(AddExp, 8500, 8500)
	MisResultAction(AddMoney,486,486)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4093 )	
	TriggerAction( 1, AddNextFlag, 635, 10, 3 )
	RegCurTrigger( 6351 )

-----------------------------------碧绿苔藓
	DefineMission( 636, "碧绿苔藓", 636 )
	
	MisBeginTalk( "<t>这天气热得我上了火，嘴里起了好多水泡，饭也吃不下去，真是讨厌。<n><t>能麻烦你帮忙去<r厚皮蜥蜴>的窝边采5个<y碧绿的苔藓>给我，让我做个苔藓药浆敷在水泡上败败火好吗？它们一般都在 （732,2697） 附近筑窝。")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 636)
	MisBeginCondition(NoRecord, 636)
	MisBeginAction(AddMission, 636)
	MisBeginAction(AddTrigger, 6361, TE_GETITEM, 4094, 5 )
	MisCancelAction(ClearMission, 636)

	MisNeed(MIS_NEED_ITEM, 4094, 5, 10, 5)
	
	MisHelpTalk("<t>我需要5个<y碧绿的苔藓>才能做苔藓药浆。")
	MisResultTalk("<t>谢谢你，我敷上苔藓药浆感觉好多了！")
	MisResultCondition(NoRecord, 636)
	MisResultCondition(HasMission, 636)
	MisResultCondition(HasItem, 4094, 5)
	MisResultAction(TakeItem, 4094, 5 )
	MisResultAction(ClearMission, 636)
	MisResultAction(SetRecord, 636)
	MisResultAction(AddExp, 9500, 9500)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4094 )	
	TriggerAction( 1, AddNextFlag, 636, 10, 5 )
	RegCurTrigger( 6361 )


-----------------------------------寻找光滑的石头
	DefineMission( 637, "寻找光滑的石头", 637 )
	
	MisBeginTalk( "<t>我的朋友<b马尔斯>是个很有艺术修养的人，他近来致力于将他在<p冰狼堡>的豪宅重新整修一番。<n><t>不过<p冰狼堡>天寒地冻，找不到他需要的材料。<n><t>我想<r岩石怪>身上的<y光滑的石头>可能符合他的要求，你能去<r岩石怪>身上拿5块<y光滑的石头>回来吗？据说这种凶恶的怪物出没在 （682,2592） 附近。")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 637)
	MisBeginCondition(NoRecord, 637)
	MisBeginAction(AddMission, 637)
	MisBeginAction(AddTrigger, 6371, TE_GETITEM, 4455, 5 )
	MisCancelAction(ClearMission, 637)

	MisNeed(MIS_NEED_ITEM, 4455, 5, 10, 5)
	
	MisHelpTalk("<t>我需要5块<y光滑的石头>！")
	MisResultTalk("<t>嘿，和我预想的一样。<n><t>这种石头应该就是<b马尔斯>需要的那种石头！")
	MisResultCondition(NoRecord, 637)
	MisResultCondition(HasMission, 637)
	MisResultCondition(HasItem, 4455, 5)
	MisResultAction(TakeItem, 4455, 5 )
	MisResultAction(ClearMission, 637)
	MisResultAction(SetRecord, 637)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4455 )	
	TriggerAction( 1, AddNextFlag, 637, 10, 5 )
	RegCurTrigger( 6371 )



-----------------------------------古怪的收藏家
	DefineMission( 638, "古怪的收藏家", 638 )
	
	MisBeginTalk( "<t>这世界千奇百怪，真是什么样的人都有。<n><t>我认识的一个朋友<b藏飞>就是个活体艺术收藏家。<n><t>他喜欢收集各种古怪的器官。<n><t>这不，他这回又要我帮忙收集5个<y长长的蜥蜴舌头>。<n><t>真是见鬼！我从哪里去找呢！朋友，你能帮我去找这5个<y长长的蜥蜴舌头>吗？你可以去 （892,3273） 附近看看，至少听说有人在那里找到过。")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 638)
	MisBeginCondition(NoRecord, 638)
	MisBeginAction(AddMission, 638)
	MisBeginAction(AddTrigger, 6381, TE_GETITEM, 4415, 5 )
	MisCancelAction(ClearMission, 638)

	MisNeed(MIS_NEED_ITEM, 4415, 5, 10, 5)
	
	MisHelpTalk("<t>我需要5个<y长长的蜥蜴舌头>才能向<b藏飞>交差。")
	MisResultTalk("<t>嘿，真的被你收集齐了，谢谢你哦！")
	MisResultCondition(NoRecord, 638)
	MisResultCondition(HasMission, 638)
	MisResultCondition(HasItem, 4415, 5)
	MisResultAction(TakeItem, 4415, 5 )
	MisResultAction(ClearMission, 638)
	MisResultAction(SetRecord, 638)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4415 )	
	TriggerAction( 1, AddNextFlag, 638, 10, 5 )
	RegCurTrigger( 6381 )

-----------------------------------捣鬼的跳跳蜥
	DefineMission( 639, "捣鬼的跳跳蜥", 639 )
	
	MisBeginTalk( "哦，朋友，我再也不能容忍那些<r跳跳蜥>了！它们在沙地里用自己的排泄物划分各自的领地，搞得到处散发着异味！<n><t>麻烦你猎杀10只<r跳跳蜥>好吗！我真的难以忍受了！那些肮脏的生物生活在 （892,3273） 附近。")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 639)
	MisBeginCondition(NoRecord, 639)
	MisBeginAction(AddMission, 639)
	MisBeginAction(AddTrigger, 6391, TE_KILL, 62, 10 )
	MisCancelAction(ClearMission, 639)

	MisNeed(MIS_NEED_KILL, 62, 10, 10, 10)
	
	MisHelpTalk("<t>这应该不是什么困难的事，请快点完成。")
	MisResultTalk("<t>谢谢你！太感谢了！")
	MisResultCondition(NoRecord, 639)
	MisResultCondition(HasMission, 639)
	MisResultCondition(HasFlag, 639, 19 )
	MisResultAction(ClearMission, 639)
	MisResultAction(SetRecord, 639)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,149,149)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 62 )	
	TriggerAction( 1, AddNextFlag, 639, 10, 10 )
	RegCurTrigger( 6391 )


-----------------------------------跳跳蜥的分泌物
	DefineMission( 640, "跳跳蜥的分泌物", 640 )
	
	MisBeginTalk( "<t>我发现沙地上散发的异味虽然来自<r跳跳蜥>，却并不是源自它们的排泄物。<n><t>具体情况我现在还不十分清楚，你能去<r跳跳蜥>出没的地方，带5瓶<y跳跳蜥的分泌物>回来让我分析一下吗？<n><t>那些家伙一般生活在 （892,3273） 附近。")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 640)
	MisBeginCondition(NoRecord, 640)
	MisBeginAction(AddMission, 640)
	MisBeginAction(AddTrigger, 6401, TE_GETITEM, 4095, 5 )
	MisCancelAction(ClearMission, 640)

	MisNeed(MIS_NEED_ITEM, 4095, 5, 10, 5)
	
	MisHelpTalk("<t>还没有收集到5瓶<y跳跳蜥的分泌物>吗？")
	MisResultTalk("<t>哦！原来<r跳跳蜥>是进入了发情期！那些异味是源自它们身上这独特的分泌物的！")
	MisResultCondition(NoRecord, 640)
	MisResultCondition(HasMission, 640)
	MisResultCondition(HasItem, 4095, 5)
	MisResultAction(TakeItem, 4095, 5 )
	MisResultAction(ClearMission, 640)
	MisResultAction(SetRecord, 640)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4095 )	
	TriggerAction( 1, AddNextFlag, 640, 10, 5 )
	RegCurTrigger( 6401 )


-----------------------------------驱逐小狼
	DefineMission( 641, "驱逐小狼", 641 )
	
	MisBeginTalk( "<t>我非常害怕<r小狼>，它们总是成群结伙的出现在沙漠上，令我感到恐惧。<n><t>你能想想办法，减少这些<r小狼>的数量吗？比如杀死10只<r小狼>。<n><t>嘿，就应该这么办，你帮我猎杀10只<r小狼>吧！<n><t>它们在 （687,3093） 附近出没。")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 641)
	MisBeginCondition(NoRecord, 641)
	MisBeginAction(AddMission, 641)
	MisBeginAction(AddTrigger, 6411, TE_KILL, 100, 10 )
	MisCancelAction(ClearMission, 641)

	MisNeed(MIS_NEED_KILL, 100, 10, 10, 10)
	
	MisHelpTalk("<t>你杀死10只<r小狼>了吗？可要加油哦！")
	MisResultTalk("<t>太谢谢你了！只要<r小狼>的数量持续减少，我就不用害怕一个人走在沙漠上了。")
	MisResultCondition(NoRecord, 641)
	MisResultCondition(HasMission, 641)
	MisResultCondition(HasFlag, 641, 19 )
	MisResultAction(ClearMission, 641)
	MisResultAction(SetRecord, 641)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,159,159)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 100 )	
	TriggerAction( 1, AddNextFlag, 641, 10, 10 )
	RegCurTrigger( 6411 )

-----------------------------------屠杀小狼
	DefineMission( 642, "屠杀小狼", 642 )
	
	MisBeginTalk( "<t>唉，我的朋友<b藏飞>是个肯花大价钱收集古怪器官的人，号称是活体艺术收藏家。<n><t>可我却不喜欢他这嗜好。<n><t>这不，他这次竟然出高价购买5只未成年的<r小狼>的<y小狼爪>，这是多么残忍的事呀！<n><t>我可做不出这种事来！但他出价很高，如果你有兴趣，我可以把这差事交给你。<n><t>这些可怜的家伙生活在 （687,3093） 附近。")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 642)
	MisBeginCondition(NoRecord, 642)
	MisBeginAction(AddMission, 642)
	MisBeginAction(AddTrigger, 6421, TE_GETITEM, 4096, 5 )
	MisCancelAction(ClearMission, 642)

	MisNeed(MIS_NEED_ITEM, 4096, 5, 10, 5)
	
	MisHelpTalk("<t>你需要收集到5只<r小狼>的<y小狼爪>。")
	MisResultTalk("<t>啊，你已经收集齐了 吗？好吧，这些就是你的报酬，请拿好。")
	MisResultCondition(NoRecord, 642)
	MisResultCondition(HasMission, 642)
	MisResultCondition(HasItem, 4096, 5)
	MisResultAction(TakeItem, 4096, 5 )
	MisResultAction(ClearMission, 642)
	MisResultAction(SetRecord, 642)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,339,339)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4096 )	
	TriggerAction( 1, AddNextFlag, 642, 10, 5 )
	RegCurTrigger( 6421 )

-----------------------------------铲除杀手仙人掌
	DefineMission( 643, "铲除杀手仙人掌", 643 )
	
	MisBeginTalk( "<t>异类！这肯定是个异类。<n><t>我是个流浪商人，刚搬来这里就看见许多会走路的<r杀手仙人掌>。<n><t>这太诡异了！我想不通，这植物怎么能走动呢？天哪，求你杀掉10只<r杀手仙人掌>，让我眼不见心为净吧。<n><t>这些怪物在 （884,3156） 附近游荡。")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 643)
	MisBeginCondition(NoRecord, 643)
	MisBeginAction(AddMission, 643)
	MisBeginAction(AddTrigger, 6431, TE_KILL, 43, 10 )
	MisCancelAction(ClearMission, 643)

	MisNeed(MIS_NEED_KILL, 43, 10, 10, 10)
	
	MisHelpTalk("<t>你杀掉10只<r杀手仙人掌>了吗？")
	MisResultTalk("<t>谢谢！我感觉好多了！")
	MisResultCondition(NoRecord, 643)
	MisResultCondition(HasMission, 643)
	MisResultCondition(HasFlag, 643, 19 )
	MisResultAction(ClearMission, 643)
	MisResultAction(SetRecord, 643)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 643, 10, 10 )
	RegCurTrigger( 6431 )



-----------------------------------良药苦口
	DefineMission( 644, "良药苦口", 644 )
	
	MisBeginTalk( "<t>沙漠干燥的气候常让人感觉不适，我这里有个祖传秘方，可以让远道而来的旅人感到舒服一点。<n><t>不过这味药需要用<r杀手仙人掌>的<y巨大的仙人掌球根>做药引。<n><t>我可没没本事打败那些大家伙，麻烦你取5个<y巨大的仙人掌球根>给我好吗？这些怪物总在 （884,3156） 附近晒太阳。")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 644)
	MisBeginCondition(NoRecord, 644)
	MisBeginAction(AddMission, 644)
	MisBeginAction(AddTrigger, 6441, TE_GETITEM, 4421, 5 )
	MisCancelAction(ClearMission, 644)

	MisNeed(MIS_NEED_ITEM, 4421, 5, 10, 5)
	
	MisHelpTalk("<t>要有5个<y巨大的仙人掌球根>我才能制药。")
	MisResultTalk("<t>谢谢你的帮忙，这下我可以帮助那些外来的朋友们了。")
	MisResultCondition(NoRecord, 644)
	MisResultCondition(HasMission, 644)
	MisResultCondition(HasItem, 4421, 5)
	MisResultAction(TakeItem, 4421, 5 )
	MisResultAction(ClearMission, 644)
	MisResultAction(SetRecord, 644)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4421 )	
	TriggerAction( 1, AddNextFlag, 644, 10, 5 )
	RegCurTrigger( 6441 )


-----------------------------------仙人掌的水囊
	DefineMission( 645, "仙人掌的水囊", 645 )
	
	MisBeginTalk( "<t>嘿，你看我发现了什么！<r杀手仙人掌>在沙漠中长久不喝水的秘密！<n><t>原来它们有一种<y仙人掌的水囊>，这种天然水囊密封性非常好，可以帮助<r杀手仙人掌>度过缺水的难关！<n><t>不过这种水囊的构造我还不特别清楚，你能帮我去找5个<y仙人掌的水囊>回来吗？<r杀手仙人掌>一般都在 （884,3156） 附近晒太阳。")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 645)
	MisBeginCondition(HasRecord, 644)
	MisBeginCondition(NoRecord, 645)
	MisBeginAction(AddMission, 645)
	MisBeginAction(AddTrigger, 6451, TE_GETITEM, 4097, 5 )
	MisCancelAction(ClearMission, 645)

	MisNeed(MIS_NEED_ITEM, 4097, 5, 10, 5)
	
	MisHelpTalk("<t>你什么时候才能给我那5个<y仙人掌的水囊>？")
	MisResultTalk("<t>这个研究说不定能成为本世纪最棒的研究呢！")
	MisResultCondition(NoRecord, 645)
	MisResultCondition(HasMission, 645)
	MisResultCondition(HasItem, 4097, 5)
	MisResultAction(TakeItem, 4097, 5 )
	MisResultAction(ClearMission, 645)
	MisResultAction(SetRecord, 645)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4097 )	
	TriggerAction( 1, AddNextFlag, 645, 10, 5 )
	RegCurTrigger( 6451 )

----------------------------------翻滚大仙人球
	DefineMission( 646, "翻滚大仙人球", 646 )
	
	MisBeginTalk( "<t>到底是谁种了那么多<r大仙人球>，搞得这一片沙漠都是<r大仙人球>滚来滚去的，真碍眼。<n><t>麻烦你除掉10只 （687,3093） 附近的<r大仙人球>好吗？")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 646)
	MisBeginCondition(NoRecord, 646)
	MisBeginAction(AddMission, 646)
	MisBeginAction(AddTrigger, 6461, TE_KILL, 294, 10 )
	MisCancelAction(ClearMission, 646)

	MisNeed(MIS_NEED_KILL, 294, 10, 10, 10)
	
	MisHelpTalk("<t>还没除掉10只<r大仙人球>吗？")
	MisResultTalk("<t>谢谢！你的身手真不错！")
	MisResultCondition(NoRecord, 646)
	MisResultCondition(HasMission, 646)
	MisResultCondition(HasFlag, 646, 19 )
	MisResultAction(ClearMission, 646)
	MisResultAction(SetRecord, 646)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 294 )	
	TriggerAction( 1, AddNextFlag, 646, 10, 10 )
	RegCurTrigger( 6461 )

-----------------------------------苦味多汁果
	DefineMission( 647, "苦味多汁果", 647 )
	
	MisBeginTalk( "<t><r大仙人球>的<y苦味多汁果>，味苦而汁多，还具有一点令人亢奋的作用。<n><t>近年来用它作成的饮料，在年轻人当中被广为流行。<n><t>我这里一上货就被卖断，麻烦你再去收集5个<y苦味多汁果>来。<n><t>你可以在 （687,3093） 附近的<r大仙人球>身上找到它们。")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 647)
	MisBeginCondition(NoRecord, 647)
	MisBeginAction(AddMission, 647)
	MisBeginAction(AddTrigger, 6471, TE_GETITEM, 4475, 5 )
	MisCancelAction(ClearMission, 647)

	MisNeed(MIS_NEED_ITEM, 4475, 5, 10, 5)
	
	MisHelpTalk("<t>还没有收集到5个<y苦味多汁果>吗？")
	MisResultTalk("<t>嘿，谢谢，这些钱是给你的报酬！")
	MisResultCondition(NoRecord, 647)
	MisResultCondition(HasMission, 647)
	MisResultCondition(HasItem, 4475, 5)
	MisResultAction(TakeItem, 4475, 5 )
	MisResultAction(ClearMission, 647)
	MisResultAction(SetRecord, 647)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4475 )	
	TriggerAction( 1, AddNextFlag, 647, 10, 5 )
	RegCurTrigger( 6471 )

----------------------------------鬼怪树传说
	DefineMission( 648, "鬼怪树传说", 648 )
	
	MisBeginTalk( "<t>相传<r鬼怪树>出没的地方就会有灾难出现。<n><t>虽然不知道这个传说可不可靠，但<r鬼怪树>的出现确实会使得人心惶惶。<n><t>我希望你能砍掉10只 （885,3027） 附近的<r鬼怪树>，让这里的居民能够安心生活。")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 648)
	MisBeginCondition(NoRecord, 648)
	MisBeginAction(AddMission, 648)
	MisBeginAction(AddTrigger, 6481, TE_KILL, 203, 10 )
	MisCancelAction(ClearMission, 648)

	MisNeed(MIS_NEED_KILL, 203, 10, 10, 10)
	
	MisHelpTalk("<t>只要砍死10个<r鬼怪树>就好了！")
	MisResultTalk("<t>嘿，你做得真不错！")
	MisResultCondition(NoRecord, 648)
	MisResultCondition(HasMission, 648)
	MisResultCondition(HasFlag, 648, 19 )
	MisResultAction(ClearMission, 648)
	MisResultAction(SetRecord, 648)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 203 )	
	TriggerAction( 1, AddNextFlag, 648, 10, 10 )
	RegCurTrigger( 6481 )


-----------------------------------枯木逢春
	DefineMission( 649, "枯木逢春", 649 )
	
	MisBeginTalk( "<t>告诉你一个在沙漠中生活的常识，<r鬼怪树>的<y鬼怪树根>遇水会膨胀，充分吸收水分，并锁住水分，以抵御沙漠的干燥。<n><t>我对这种现象很好奇，你能找5个<y鬼怪树根>给我分析一下吗？<r鬼怪树>一般生长在 （885,3027） 附近。")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 649)
	MisBeginCondition(NoRecord, 649)
	MisBeginAction(AddMission, 649)
	MisBeginAction(AddTrigger, 6491, TE_GETITEM, 4098, 5 )
	MisCancelAction(ClearMission, 649)

	MisNeed(MIS_NEED_ITEM, 4098, 5, 10, 5)
	
	MisHelpTalk("<t>我需要5个<y鬼怪树根>做研究。")
	MisResultTalk("<t>唉，这个树根的结构太复杂了，我分析不出来。")
	MisResultCondition(NoRecord, 649)
	MisResultCondition(HasMission, 649)
	MisResultCondition(HasItem, 4098, 5)
	MisResultAction(TakeItem, 4098, 5 )
	MisResultAction(ClearMission, 649)
	MisResultAction(SetRecord, 649)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4098 )	
	TriggerAction( 1, AddNextFlag, 649, 10, 5 )
	RegCurTrigger( 6491 )

-----------------------------------穷凶极恶
	DefineMission( 650, "穷凶极恶", 650 )
	
	MisBeginTalk( "<t>呜呜呜……我是一个手无束鸡的女人，可是这里的<r沙地窃贼>居然成群结伙的打劫了我！<n><t>他们抢走了我的<y翡翠手镯>！那是我祖母的祖母的祖母传下来给我的宝物，我不能丢掉它！<n><t>求求你，帮忙把它找回来！<r沙地窃贼>的巢穴好象在 （716,3290） 附近。<n><t>仔细找找看他们不是把我的宝贝藏在木箱里就是放在酒桶里了！")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 650)
	MisBeginCondition(NoRecord, 650)
	MisBeginAction(AddMission, 650)
	MisBeginAction(AddTrigger, 6501, TE_GETITEM, 4099, 1 )
	MisCancelAction(ClearMission, 650)

	MisNeed(MIS_NEED_ITEM, 4099, 1, 10, 1)
	
	MisHelpTalk("<t>呜呜，你找到我的<y翡翠手镯>了吗？")
	MisResultTalk("<t>哦！我真不知道该怎么感谢你了！以后如果你遇上麻烦，我一定会尽力帮你的！")
	MisResultCondition(NoRecord, 650)
	MisResultCondition(HasMission, 650)
	MisResultCondition(HasItem, 4099, 1)
	MisResultAction(TakeItem, 4099, 1 )
	MisResultAction(ClearMission, 650)
	MisResultAction(SetRecord, 650)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4099 )	
	TriggerAction( 1, AddNextFlag, 650, 10, 1 )
	RegCurTrigger( 6501 )


----------------------------------围剿窃贼
	DefineMission( 651, "围剿窃贼", 651 )
	
	MisBeginTalk( "<t>最近<r沙地窃贼>越来越猖狂了，他们不但打劫商旅，还抢劫小孩和妇女，这种行为是不值得原谅的。<n><t>我出高价悬赏能消灭<r沙地窃贼>的勇士，只要能干掉10个<r沙地窃贼>，我就给他赏金！<n><t><r沙地窃贼>出没于 （716,3290） 附近。")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 651)
	MisBeginCondition(NoRecord, 651)
	MisBeginAction(AddMission, 651)
	MisBeginAction(AddTrigger, 6511, TE_KILL, 131, 10 )
	MisCancelAction(ClearMission, 651)

	MisNeed(MIS_NEED_KILL, 131, 10, 10, 10)
	
	MisHelpTalk("<t>想领赏金得先干掉10个<r沙地窃贼>哦！")
	MisResultTalk("<t>干得漂亮，这是你应得的赏金！")
	MisResultCondition(NoRecord, 651)
	MisResultCondition(HasMission, 651)
	MisResultCondition(HasFlag, 651, 19 )
	MisResultAction(ClearMission, 651)
	MisResultAction(SetRecord, 651)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,256,256)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 131 )	
	TriggerAction( 1, AddNextFlag, 651, 10, 10 )
	RegCurTrigger( 6511 )

----------------------------------凶狠饿狼
	DefineMission( 652, "凶狠饿狼", 652 )
	
	MisBeginTalk( "<t>我正在招募讨伐<r饿狼>的勇士。<n><t>由于这附近<r饿狼>狼群出没频繁，许多居民为了生存都不得不搬走，再持续下去，这里也许就要荒废了呢！<n><t>我征集能与凶狠<r饿狼>对抗的人，只要能杀死10只 （718,2938） 附近的<r饿狼>，我就会奖励他高额赏金！")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 652)
	MisBeginCondition(NoRecord, 652)
	MisBeginAction(AddMission, 652)
	MisBeginAction(AddTrigger, 6521, TE_KILL, 101, 10 )
	MisCancelAction(ClearMission, 652)

	MisNeed(MIS_NEED_KILL, 101, 10, 10, 10)
	
	MisHelpTalk("<t>只要是能杀死10只<r饿>的勇士，我都将奖励他！")
	MisResultTalk("<t>你干得太漂亮了！这些奖金都犒劳你的，请拿去吧！")
	MisResultCondition(NoRecord, 652)
	MisResultCondition(HasMission, 652)
	MisResultCondition(HasFlag, 652, 19 )
	MisResultAction(ClearMission, 652)
	MisResultAction(SetRecord, 652)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 101 )	
	TriggerAction( 1, AddNextFlag, 652, 10, 10 )
	RegCurTrigger( 6521 )

----------------------------------沙地龟之乱
	DefineMission( 653, "沙地龟之乱", 653 )
	
	MisBeginTalk( "<t><r沙地龟>这两天不晓得受了刺激，在路上横冲直撞，撞倒不少路人。<n><t>如果它继续闹下去，可真让人吃不消。<n><t>麻烦你杀死10只 （1197,3270） 附近的<r沙地龟>好吗？")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 653)
	MisBeginCondition(NoRecord, 653)
	MisBeginAction(AddMission, 653)
	MisBeginAction(AddTrigger, 6531, TE_KILL, 134, 10 )
	MisCancelAction(ClearMission, 653)

	MisNeed(MIS_NEED_KILL, 134, 10, 10, 10)
	
	MisHelpTalk("<t>只要猎杀10只<r沙地龟>就行了！")
	MisResultTalk("<t>嘿，你做得真不错！")
	MisResultCondition(NoRecord, 653)
	MisResultCondition(HasMission, 653)
	MisResultCondition(HasFlag, 653, 19 )
	MisResultAction(ClearMission, 653)
	MisResultAction(SetRecord, 653)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 134 )	
	TriggerAction( 1, AddNextFlag, 653, 10, 10 )
	RegCurTrigger( 6531 )

-----------------------------------移动花圃
	DefineMission( 654, "移动花圃", 654 )
	
	MisBeginTalk( "<t><r沙地龟>行动迟缓，体积庞大，使得它坚硬的龟壳上成了一些弱小的沙漠植物的栖身之地。<n><t>我现在需要一些<y沙漠植物种子>来丰富我的花园物种，你能取5颗<r沙地龟>身上的<y沙漠植物种子>给我吗？你可以在 （1197,3270） 附近找到它们。")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 654)
	MisBeginCondition(NoRecord, 654)
	MisBeginAction(AddMission, 654)
	MisBeginAction(AddTrigger, 6541, TE_GETITEM, 4466, 5 )
	MisCancelAction(ClearMission, 654)

	MisNeed(MIS_NEED_ITEM, 4466, 5, 10, 5)
	
	MisHelpTalk("<t>快一点好吗？我需要5颗<r沙地龟>身上的<y沙漠植物种子>。")
	MisResultTalk("<t>哦，就是这些种子！谢谢你了！")
	MisResultCondition(NoRecord, 654)
	MisResultCondition(HasMission, 654)
	MisResultCondition(HasItem, 4466, 5)
	MisResultAction(TakeItem, 4466, 5 )
	MisResultAction(ClearMission, 654)
	MisResultAction(SetRecord, 654)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4466 )	
	TriggerAction( 1, AddNextFlag, 654, 10, 5 )
	RegCurTrigger( 6541 )

----------------------------------未雨绸缪
	DefineMission( 655, "未雨绸缪", 655 )
	
	MisBeginTalk( "<t>我即将运送一批货物到<p白银城>去。<n><t>但我十分不安，因为途中我将经过沙匪营地。<n><t>那些<r沙匪>非常强悍，如果他们起了歹心，想抢我的货物，我可没有招架之力。<n><t>所以我想雇佣你，先去沙匪营地歼灭10个 （1339,3300） 附近的<r沙匪>，让我上路时比较安全。")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 655)
	MisBeginCondition(NoRecord, 655)
	MisBeginAction(AddMission, 655)
	MisBeginAction(AddTrigger, 6551, TE_KILL, 45, 10 )
	MisCancelAction(ClearMission, 655)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	
	MisHelpTalk("<t>你去过沙匪营地和<r沙匪>交手了吗？")
	MisResultTalk("<t>谢谢，这些我可以放心去白银城做生意了。")
	MisResultCondition(NoRecord, 655)
	MisResultCondition(HasMission, 655)
	MisResultCondition(HasFlag, 655, 19 )
	MisResultAction(ClearMission, 655)
	MisResultAction(SetRecord, 655)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 655, 10, 10 )
	RegCurTrigger( 6551 )

-----------------------------------蘑菇浓汤
	DefineMission( 656, "蘑菇浓汤", 656 )
	
	MisBeginTalk( "<t>啊……一看到眼前蹦来蹦去的<r沙地菇>，我就自动把它们转换成冒着热气的蘑菇浓汤了！<n><t>我爱死那香浓可口的味道了！麻烦你去采5个<r沙地菇>的<y伞状蘑菇>回来，让我尝尝鲜吧！<n><t><r沙地菇>一般生长在 （1334,3438） 附近。")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 656)
	MisBeginCondition(NoRecord, 656)
	MisBeginAction(AddMission, 656)
	MisBeginAction(AddTrigger, 6561, TE_GETITEM, 4476, 5 )
	MisCancelAction(ClearMission, 656)

	MisNeed(MIS_NEED_ITEM, 4476, 5, 10, 5)
	
	MisHelpTalk("<t>这种独特的<y伞状蘑菇>只有<r沙地菇>才有哦。")
	MisResultTalk("<t>嘿！用这<y伞状蘑菇>做的蘑菇浓汤果然与众不同！太美味了！")
	MisResultCondition(NoRecord, 656)
	MisResultCondition(HasMission, 656)
	MisResultCondition(HasItem, 4476, 5)
	MisResultAction(TakeItem, 4476, 5 )
	MisResultAction(ClearMission, 656)
	MisResultAction(SetRecord, 656)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4476 )	
	TriggerAction( 1, AddNextFlag, 656, 10, 5 )
	RegCurTrigger( 6561 )

-----------------------------------逃跑的沙地菇
	DefineMission( 657, "逃跑的沙地菇", 657 )
	
	MisBeginTalk( "<t>我最喜欢摆弄自己花圃里的花草了。<n><t>这两天，我在花圃中散步，总觉得有哪里不对劲。<n><t>原来是我养的<r沙地菇>不见了！我不晓得它们跑去哪里了，可是我的花圃里不能一天没有<r沙地菇>，那样太不美观了。<n><t>麻烦你去生长<r沙地菇>的地方，找5个<y沙漠孢子>回来好吗？<r沙地菇>一般生长在 （1334,3438） 附近。<n><t>这些孢子很容易发现，一般就在草丛里，白白的一堆！")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 657)
	MisBeginCondition(NoRecord, 657)
	MisBeginAction(AddMission, 657)
	MisBeginAction(AddTrigger, 6571, TE_GETITEM, 4100, 5 )
	MisCancelAction(ClearMission, 657)

	MisNeed(MIS_NEED_ITEM, 4100, 5, 10, 5)
	
	MisHelpTalk("<t>我很需要5个<y沙漠孢子>！")
	MisResultTalk("<t>啊，太好了。<n><t>我的花圃里不久又能看见<r沙地菇>了！")
	MisResultCondition(NoRecord, 657)
	MisResultCondition(HasMission, 657)
	MisResultCondition(HasItem, 4100, 5)
	MisResultAction(TakeItem, 4100, 5 )
	MisResultAction(ClearMission, 657)
	MisResultAction(SetRecord, 657)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4100 )	
	TriggerAction( 1, AddNextFlag, 657, 10, 5 )
	RegCurTrigger( 6571 )

-----------------------------------泥浆的妙用
	DefineMission( 658, "泥浆的妙用", 658 )
	
	MisBeginTalk( "<t>嘿，朋友，你来得正好！沙漠上一年一度的打泥浆大赛就要开始了，能帮我从 （1438,3413） 附近的<r泥人>身上取5个<y浑浊的泥浆>好吗？泥浆大赛的战果对我很重要，这可是沙漠上最重要的节日之一呢！<n><t>我一定得准备足够多的泥浆来应战。")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 658)
	MisBeginCondition(NoRecord, 658)
	MisBeginAction(AddMission, 658)
	MisBeginAction(AddTrigger, 6581, TE_GETITEM, 4436, 5 )
	MisCancelAction(ClearMission, 658)

	MisNeed(MIS_NEED_ITEM, 4436, 5, 10, 5)
	
	MisHelpTalk("<t>还不够哦！我需要5个<y浑浊的泥浆>。")
	MisResultTalk("<t>愿荣誉也与你同在，嘿嘿，祝福我取得最后的胜利吧！")
	MisResultCondition(NoRecord, 658)
	MisResultCondition(HasMission, 658)
	MisResultCondition(HasItem, 4436, 5)
	MisResultAction(TakeItem, 4436, 5 )
	MisResultAction(ClearMission, 658)
	MisResultAction(SetRecord, 658)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4436 )	
	TriggerAction( 1, AddNextFlag, 658, 10, 5 )
	RegCurTrigger( 6581 )

----------------------------------贪婪的泥人
	DefineMission( 659, "贪婪的泥人", 659 )
	
	MisBeginTalk( "<t>呸，呸，看我这一身泥浆，都是<r泥人>从远处给打的！<n><t>这些可恶的<r泥人>不但霸占了沙漠上为数不多的水源，还在这里作威作福，攻击所有接近水源的人。<n><t>真是贪婪的家伙！你能不能教训教训这些泥人，猎杀10个 （1438,3413） 附近的<r泥人>呢！")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 659)
	MisBeginCondition(NoRecord, 659)
	MisBeginAction(AddMission, 659)
	MisBeginAction(AddTrigger, 6591, TE_KILL, 251, 10 )
	MisCancelAction(ClearMission, 659)

	MisNeed(MIS_NEED_KILL, 251, 10, 10, 10)
	
	MisHelpTalk("<t>抓紧时间，教训那些狂妄自大的<r泥人>吧。")
	MisResultTalk("<t>嘿，你做得真不错！")
	MisResultCondition(NoRecord, 659)
	MisResultCondition(HasMission, 659)
	MisResultCondition(HasFlag, 659, 19 )
	MisResultAction(ClearMission, 659)
	MisResultAction(SetRecord, 659)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 251 )	
	TriggerAction( 1, AddNextFlag, 659, 10, 10 )
	RegCurTrigger( 6591 )

----------------------------------危险沙骑士
	DefineMission( 660, "危险沙骑士", 660 )
	
	MisBeginTalk( "<t>凡是能成为<r沙骑士>的人都是争强好斗之士。<n><t>他们的存在对沙漠来说只会是一个巨大的威胁。<n><t>我恳求你，勇敢的年轻人，和这些<r沙骑士>决一死战吧。<n><t>让他们知难而退，离开这里！朋友，你只要战胜10个 （1027,3011） 附近的<r沙骑士>就可以了！")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 660)
	MisBeginCondition(NoRecord, 660)
	MisBeginAction(AddMission, 660)
	MisBeginAction(AddTrigger, 6601, TE_KILL, 49, 10 )
	MisCancelAction(ClearMission, 660)

	MisNeed(MIS_NEED_KILL, 49, 10, 10, 10)
	
	MisHelpTalk("<t>战胜10个<r沙骑士>不是件容易的事，但我相信你能够做到！")
	MisResultTalk("<t>勇敢的年轻人，祝贺你凯旋而归！")
	MisResultCondition(NoRecord, 660)
	MisResultCondition(HasMission, 660)
	MisResultCondition(HasFlag, 660, 19 )
	MisResultAction(ClearMission, 660)
	MisResultAction(SetRecord, 660)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 660, 10, 10 )
	RegCurTrigger( 6601 )

----------------------------------铲除食人蜘蛛
	DefineMission( 661, "铲除食人蜘蛛", 661 )
	
	MisBeginTalk( "<t>不……不……好了！我刚才在海滩附近游玩，忽然发现有一群巨大的紫色蜘蛛飞奔过来，挥动着长长的爪子，就想要抓住我吃呢！<n><t>太可怕了！求你救救我，快杀死岸边的10只 （1093,2948） 附近的<r食人蜘蛛>吧！")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 661)
	MisBeginCondition(NoRecord, 661)
	MisBeginAction(AddMission, 661)
	MisBeginAction(AddTrigger, 6611, TE_KILL, 210, 10 )
	MisCancelAction(ClearMission, 661)

	MisNeed(MIS_NEED_KILL, 210, 10, 10, 10)
	
	MisHelpTalk("<t>哦，那些<r食人蜘蛛>有一人高，太可怕了！")
	MisResultTalk("<t>你真是工夫了得，连那么恐怖的<r食人蜘蛛>都不是你的对手。")
	MisResultCondition(NoRecord, 661)
	MisResultCondition(HasMission, 661)
	MisResultCondition(HasFlag, 661, 19 )
	MisResultAction(ClearMission, 661)
	MisResultAction(SetRecord, 661)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 210 )	
	TriggerAction( 1, AddNextFlag, 661, 10, 10 )
	RegCurTrigger( 6611 )

-----------------------------------直立行走的狼
	DefineMission( 662, "直立行走的狼", 662 )
	
	MisBeginTalk( "<t>我很好奇，为什么有一种叫做<r暴狼>的生物可以像人类一样用两条腿直立行走呢？而且他们的毛皮又是红色的，很奇怪呢。<n><t>我怀疑这是一种普通狼变异后的产物。<n><t>麻烦你找5个 （1473,3295） 附近的<r暴狼>的<y巨大的狼爪>让我做进一步的研究。")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 662)
	MisBeginCondition(NoRecord, 662)
	MisBeginAction(AddMission, 662)
	MisBeginAction(AddTrigger, 6621, TE_GETITEM, 4439, 5 )
	MisCancelAction(ClearMission, 662)

	MisNeed(MIS_NEED_ITEM, 4439, 5, 10, 5)
	
	MisHelpTalk("<t>我要5个<y巨大的狼爪>才能继续研究。")
	MisResultTalk("<t>嘿，虽然我现在还找不出<r暴狼>变异的原因，但我现在可以确定，它们和普通狼族有着千丝万缕的联系。")
	MisResultCondition(NoRecord, 662)
	MisResultCondition(HasMission, 662)
	MisResultCondition(HasItem, 4439, 5)
	MisResultAction(TakeItem, 4439, 5 )
	MisResultAction(ClearMission, 662)
	MisResultAction(SetRecord, 662)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4439 )	
	TriggerAction( 1, AddNextFlag, 662, 10, 5 )
	RegCurTrigger( 6621 )

-----------------------------------金币蜘蛛
	DefineMission( 663, "金币蜘蛛", 663 )
	
	MisBeginTalk( "<t>朋友，你来得正好！我的<y钱袋>被<r食人蜘蛛>偷走了！我这个月的薪水还装在里面了呢！<n><t>真是的，这些蜘蛛好像有恋金癖，凡是金的都被偷走了，得给这些<r食人蜘蛛>一点教训！<n><t>朋友，麻烦你到（1093,2948）附近<r食人蜘蛛>的营地，把我的<y钱袋>找回来吧。<n><t>这些蜘蛛最近都在那个营地的木箱木桶里休息，所以我的钱袋一定也在那里。")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 663)
	MisBeginCondition(NoRecord, 663)
	MisBeginAction(AddMission, 663)
	MisBeginAction(AddTrigger, 6631, TE_GETITEM, 4101, 1 )
	MisCancelAction(ClearMission, 663)

	MisNeed(MIS_NEED_ITEM, 4101, 1, 10, 1)
	
	MisHelpTalk("<t>你拿到<r食人蜘蛛>偷走的<y钱袋>了吗？不要着急，他们可能把钱袋藏得很隐蔽。")
	MisResultTalk("<t>嘿嘿，谢谢你哦，终于找到我丢失的金币了，让我们平分了这些钱吧！")
	MisResultCondition(NoRecord, 663)
	MisResultCondition(HasMission, 663)
	MisResultCondition(HasItem, 4101, 1)
	MisResultAction(TakeItem, 4101, 1 )
	MisResultAction(ClearMission, 663)
	MisResultAction(SetRecord, 663)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4101 )	
	TriggerAction( 1, AddNextFlag, 663, 10, 1 )
	RegCurTrigger( 6631 )

-----------------------------------万能钥匙
	DefineMission( 664, "万能钥匙", 664 )
	
	MisBeginTalk( "<t>小声一点，朋友，我现在告诉你的话，你可不能再告诉别人了。<n><t>我的朋友正在和奈奈相恋，可她的父母却不答应他们的交往。<n><t>我朋友决定和奈奈私奔。<n><t>作为他们的朋友，我想送他们一份实用的礼物。<n><t>朋友，你能帮我从 （1255,2974） 附近的<r盾骑士>那里抢过2把<y万能钥匙>吗？我觉得在私奔的途中，<y万能钥匙>对他们十分重要。")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 664)
	MisBeginCondition(NoRecord, 664)
	MisBeginAction(AddMission, 664)
	MisBeginAction(AddTrigger, 6641, TE_GETITEM, 4478, 2 )
	MisCancelAction(ClearMission, 664)

	MisNeed(MIS_NEED_ITEM, 4478, 2, 10, 2)
	
	MisHelpTalk("<t>你拿到2把<y万能钥匙>了吗？要抓紧时间呀！")
	MisResultTalk("<t>谢谢你！朋友！")
	MisResultCondition(NoRecord, 664)
	MisResultCondition(HasMission, 664)
	MisResultCondition(HasItem, 4478, 2)
	MisResultAction(TakeItem, 4478, 2 )
	MisResultAction(ClearMission, 664)
	MisResultAction(SetRecord, 664)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4478 )	
	TriggerAction( 1, AddNextFlag, 664, 10, 2 )
	RegCurTrigger( 6641 )

----------------------------------擒贼擒王
	DefineMission( 665, "擒贼擒王", 665 )
	
	MisBeginTalk( "<t>俗话说，射人先射马，擒贼先擒王。<n><t>这<r沙匪>越来越猖獗，都是因为有<r沙匪首领>带领着他们，不然他们只是一群乌合之众，成不了气候！<n><t>麻烦你现在就去杀掉 （1170,3026） 附近的<r沙匪首领>，看那些沙匪失去首领，还怎么嚣张！")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 665)
	MisBeginCondition(NoRecord, 665)
	MisBeginAction(AddMission, 665)
	MisBeginAction(AddTrigger, 6651, TE_KILL, 106, 1 )
	MisCancelAction(ClearMission, 665)

	MisNeed(MIS_NEED_KILL, 106, 1, 10, 1)
	
	MisHelpTalk("<t><r沙匪首领>很聪明，也很厉害，你要小心哦。")
	MisResultTalk("<t>嘿，我的主意有用吧，辛苦你了！")
	MisResultCondition(NoRecord, 665)
	MisResultCondition(HasMission, 665)
	MisResultCondition(HasFlag, 665, 10 )
	MisResultAction(ClearMission, 665)
	MisResultAction(SetRecord, 665)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 106 )	
	TriggerAction( 1, AddNextFlag, 665, 10, 1 )
	RegCurTrigger( 6651 )

----------------------------------挑战盾骑士
	DefineMission( 666, "挑战盾骑士", 666 )
	
	MisBeginTalk( "<t>在沙漠里虽说沙骑士厉害，但是比他们更厉害的却是那些<r盾骑士>，你想展现自己的实力么？<n><t>去杀10个（1255,2974） 附近的<r盾骑士>给我瞧瞧～如果不行就算了，反正无所谓。")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 666)
	MisBeginCondition(NoRecord, 666)
	MisBeginAction(AddMission, 666)
	MisBeginAction(AddTrigger, 6661, TE_KILL, 200, 10 )
	MisCancelAction(ClearMission, 666)

	MisNeed(MIS_NEED_KILL, 200, 10, 10, 10)
	
	MisHelpTalk("<t>10个<r盾骑士>哟，你到底行不行啊朋友，我劝你还是快跑吧")
	MisResultTalk("<t>嗯……这个……勉勉强强啦，比起我当年是差多了，话虽如此，总的来说你还算不错的啦，这是给你的奖励，好好干哦")
	MisResultCondition(NoRecord, 666)
	MisResultCondition(HasMission, 666)
	MisResultCondition(HasFlag, 666, 19 )
	MisResultAction(ClearMission, 666)
	MisResultAction(SetRecord, 666)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 200 )	
	TriggerAction( 1, AddNextFlag, 666, 10, 10 )
	RegCurTrigger( 6661 )

-----------------------------------蜥蜴皇冠
	DefineMission( 667, "蜥蜴皇冠", 667 )
	
	MisBeginTalk( "<t>商人是最见风使舵的人，这我是从来不掩饰的。<n><t>虽然我很讨厌那些穿着俗艳的<r国王蜥蜴>，可最近商场上<y蜥蜴皇冠>的价钱看涨，我还是要找人帮我收集它。<n><t>朋友，你愿意帮我收集10个<y蜥蜴皇冠>吗？我会付你工钱的。<n><t><r国王蜥蜴>一般生活在（1507,2970）附近。<n><t>听说这个皇冠出的几率很小，所以也许你带几个财富增幅器会比较好，对，就是商城里有卖的那种。")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 667)
	MisBeginCondition(NoRecord, 667)
	MisBeginAction(AddMission, 667)
	MisBeginAction(AddTrigger, 6671, TE_GETITEM, 1757, 10 )
	MisCancelAction(ClearMission, 667)

	MisNeed(MIS_NEED_ITEM, 1757, 10, 10, 10)
	
	MisHelpTalk("<t>快一点好吗？现在是<y蜥蜴皇冠>最值钱的时候！<n><t>迟了我可就亏了！")
	MisResultTalk("<t>谢谢你，这些是你应得的工钱！")
	MisResultCondition(NoRecord, 667)
	MisResultCondition(HasMission, 667)
	MisResultCondition(HasItem, 1757, 10)
	MisResultAction(TakeItem, 1757, 10 )
	MisResultAction(ClearMission, 667)
	MisResultAction(SetRecord, 667)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1757 )	
	TriggerAction( 1, AddNextFlag, 667, 10, 10 )
	RegCurTrigger( 6671 )

-----------------------------------水兵帽
	DefineMission( 668, "水兵帽", 668 )
	
	MisBeginTalk( "<t>喂！等一下！能不能帮我个忙？我前天在附近看到一只肥嘟嘟的<r水兵企鹅>非常可爱！<n><t>特别是它的<y水兵企鹅帽>让我一见钟情，朝思慕想。<n><t>麻烦你从（995,365）附近的<y水兵企鹅>那里抢2个<y水兵企鹅帽>给我好吗？我实在太喜欢那帽子了！")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 668)
	MisBeginCondition(NoRecord, 668)
	MisBeginAction(AddMission, 668)
	MisBeginAction(AddTrigger, 6681, TE_GETITEM, 4102, 2 )
	MisCancelAction(ClearMission, 668)

	MisNeed(MIS_NEED_ITEM, 4102, 2, 10, 2)
	
	MisHelpTalk("<t>好想戴上<y水兵企鹅帽>看看呀。")
	MisResultTalk("<t>哇，果然好可爱！谢谢你哦。")
	MisResultCondition(NoRecord, 668)
	MisResultCondition(HasMission, 668)
	MisResultCondition(HasItem, 4102, 2)
	MisResultAction(TakeItem, 4102, 2 )
	MisResultAction(ClearMission, 668)
	MisResultAction(SetRecord, 668)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4102 )	
	TriggerAction( 1, AddNextFlag, 668, 10, 2 )
	RegCurTrigger( 6681 )

-----------------------------------精灵之心
	DefineMission( 669, "精灵之心", 669 )
	
	MisBeginTalk( "<t><r水精灵>是冰原上常见的低等精灵。<n><t>它们既不喜欢打扰别人也不喜欢被人打扰，总是独自修炼法术。<n><t>也因此，他们死后结成的<y精灵之心>能给人一种安静祥和的感觉。<n><t>我希望能拥有2颗<y精灵之心>以求得心灵上的平静，你能帮我收集到吗？<r水精灵>一般出没于 （1079,518） 附近。")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 669)
	MisBeginCondition(NoRecord, 669)
	MisBeginAction(AddMission, 669)
	MisBeginAction(AddTrigger, 6691, TE_GETITEM, 4418, 2 )
	MisCancelAction(ClearMission, 669)

	MisNeed(MIS_NEED_ITEM, 4418, 2, 10, 2)
	
	MisHelpTalk("<t>我只要2颗<y精灵之心>就足够了。")
	MisResultTalk("<t>谢谢你，这正是我要的<y精灵之心>。")
	MisResultCondition(NoRecord, 669)
	MisResultCondition(HasMission, 669)
	MisResultCondition(HasItem, 4418, 2)
	MisResultAction(TakeItem, 4418, 2 )
	MisResultAction(ClearMission, 669)
	MisResultAction(SetRecord, 669)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4418 )	
	TriggerAction( 1, AddNextFlag, 669, 10, 2 )
	RegCurTrigger( 6691 )

-----------------------------------完美水晶
	DefineMission( 670, "完美水晶", 670 )
	
	MisBeginTalk( "<t>由天然矿石提炼出来的水晶或多或少都会有瑕疵，然而不知道用了什么办法，<r水精灵>却能提炼出<y完美的水晶>，这些水晶在黑市上都价值连城。<n><t>只要你愿意为我打工，从它们的那里抢5块<y完美的水晶>，我就支付给你高额薪水！<n><t>你可以去（1079,518） 附近找找看。")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 670)
	MisBeginCondition(NoRecord, 670)
	MisBeginAction(AddMission, 670)
	MisBeginAction(AddTrigger, 6701, TE_GETITEM, 4103, 5 )
	MisCancelAction(ClearMission, 670)

	MisNeed(MIS_NEED_ITEM, 4103, 5, 10, 5)
	
	MisHelpTalk("<t><r水精灵>很会护着它们的宝物，要小心哦。")
	MisResultTalk("<t>哦！你看这光泽，不愧是号称没有瑕疵的<y完美的水晶>呀！")
	MisResultCondition(NoRecord, 670)
	MisResultCondition(HasMission, 670)
	MisResultCondition(HasItem, 4103, 5)
	MisResultAction(TakeItem, 4103, 5 )
	MisResultAction(ClearMission, 670)
	MisResultAction(SetRecord, 670)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4103 )	
	TriggerAction( 1, AddNextFlag, 670, 10, 5 )
	RegCurTrigger( 6701 )

----------------------------------麋鹿哀鸣
	DefineMission( 671, "麋鹿哀鸣", 671 )
	
	MisBeginTalk( "<t>我这个人有个怪癖，就喜欢听<t麋鹿>哀鸣的声音，它们叫得越凄惨，我越开心。<n><t>我现在花钱雇你去杀（885,333）附近的<r麋鹿>，只要你猎杀10只<r麋鹿>，让我听到他们的哀鸣，我就付钱给你，怎么样？这钱很容易赚吧！")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 671)
	MisBeginCondition(NoRecord, 671)
	MisBeginAction(AddMission, 671)
	MisBeginAction(AddTrigger, 6711, TE_KILL, 266, 10 )
	MisCancelAction(ClearMission, 671)

	MisNeed(MIS_NEED_KILL, 266, 10, 10, 10)
	
	MisHelpTalk("<t>怎么，你工作得很不上心哦，10只<r麋鹿>应该很容易猎杀嘛。")
	MisResultTalk("<t>你做得很不错，这是你的工钱！")
	MisResultCondition(NoRecord, 671)
	MisResultCondition(HasMission, 671)
	MisResultCondition(HasFlag, 671, 19 )
	MisResultAction(ClearMission, 671)
	MisResultAction(SetRecord, 671)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,169,169)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 266 )	
	TriggerAction( 1, AddNextFlag, 671, 10, 10 )
	RegCurTrigger( 6711 )

----------------------------------肥胖的小东西
	DefineMission( 672, "肥胖的小东西", 672 )
	
	MisBeginTalk( "<t>如果可能，我绝对不会让你赶走鹿角企鹅的。<n><t>因为那肥胖的小东西实在是太可爱了。<n><t>见过它的人都会忍不住爱上它！<n><t>可与它生活在同一区域的人却不得不把它归为不速之客，因为它总是破门而入，到人家的厨房里去翻东西吃。<n><t>麻烦你猎杀10只（885,333）附近的鹿角企鹅，警告那些企鹅不会再偷东西吃好吗？")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 672)
	MisBeginCondition(NoRecord, 672)
	MisBeginAction(AddMission, 672)
	MisBeginAction(AddTrigger, 6721, TE_KILL, 34, 10 )
	MisCancelAction(ClearMission, 672)

	MisNeed(MIS_NEED_KILL, 34, 10, 10, 10)
	
	MisHelpTalk("<t>你只要杀掉10只鹿角企鹅就好了，其实我真的很喜欢这种生物的。")
	MisResultTalk("<t>我想经过这次的事件，鹿角企鹅应该会收敛一点了吧。")
	MisResultCondition(NoRecord, 672)
	MisResultCondition(HasMission, 672)
	MisResultCondition(HasFlag, 672, 19 )
	MisResultAction(ClearMission, 672)
	MisResultAction(SetRecord, 672)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 34 )	
	TriggerAction( 1, AddNextFlag, 672, 10, 10 )
	RegCurTrigger( 6721 )

-----------------------------------相思成灾
	DefineMission( 673, "相思成灾", 673 )
	
	MisBeginTalk( "<t>在冰原大陆上，有这样一个传说，将<y蔻蔻头巾>悬挂与窗口，你思念的人在2年之内，就会出现。<n><t>我因为家人的反对，我与恋人很久不曾见面了。<n><t>你能帮我弄到2条<y蔻蔻头巾>，让我等待与恋人相见的那一日吗？你可以在（738,426）附近找找看。")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 673)
	MisBeginCondition(NoRecord, 673)
	MisBeginAction(AddMission, 673)
	MisBeginAction(AddTrigger, 6731, TE_GETITEM, 1839, 2 )
	MisCancelAction(ClearMission, 673)

	MisNeed(MIS_NEED_ITEM, 1839, 2, 10, 2)
	
	MisHelpTalk("<t>哪怕早一秒也好，让我早点拿到2条<y蔻蔻头巾>！")
	MisResultTalk("<t>谢谢你，我这就把<y蔻蔻头巾>挂到窗口去！")
	MisResultCondition(NoRecord, 673)
	MisResultCondition(HasMission, 673)
	MisResultCondition(HasItem, 1839, 2)
	MisResultAction(TakeItem, 1839, 2 )
	MisResultAction(ClearMission, 673)
	MisResultAction(SetRecord, 673)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1839 )	
	TriggerAction( 1, AddNextFlag, 673, 10, 2 )
	RegCurTrigger( 6731 )


----------------------------------麻烦的雪蝙蝠
	DefineMission( 674, "麻烦的雪蝙蝠", 674 )
	
	MisBeginTalk( "<t><r雪蝙蝠>靠超声波的反射来辨别方向，可是它们发出的超声波却会被<r雪巨人>接受到，引发<r雪巨人>的狂乱。<n><t>为了不招惹来可怕的<r雪巨人>，我希望你能猎杀10只 （743,358） 附近的<r雪蝙蝠>，以确保在这里生活的人们的安全。")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 674)
	MisBeginCondition(NoRecord, 674)
	MisBeginAction(AddMission, 674)
	MisBeginAction(AddTrigger, 6741, TE_KILL, 46, 10 )
	MisCancelAction(ClearMission, 674)

	MisNeed(MIS_NEED_KILL, 46, 10, 10, 10)
	
	MisHelpTalk("<t>你只要杀10只<r雪蝙蝠>就好了，不需要大开杀戒。")
	MisResultTalk("<t>我们为了保护自己而牺牲了<r雪蝙蝠>，不过这也是迫不得已的。")
	MisResultCondition(NoRecord, 674)
	MisResultCondition(HasMission, 674)
	MisResultCondition(HasFlag, 674, 19 )
	MisResultAction(ClearMission, 674)
	MisResultAction(SetRecord, 674)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 46 )	
	TriggerAction( 1, AddNextFlag, 674, 10, 10 )
	RegCurTrigger( 6741 )

-----------------------------------幻术材料
	DefineMission( 675, "幻术材料", 675 )
	
	MisBeginTalk( "<t>我在修炼一种幻术，修炼成功后能让自己看见未来自己的样子。<n><t>我已经修炼得差不多了，不过还差5颗<y蝙蝠牙齿>做修炼道具，你能帮我取5颗<y蝙蝠牙齿>来吗？<n><t>这种牙齿你可以在（743,358） 附近的<r雪蝙蝠>身上找到。")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 675)
	MisBeginCondition(NoRecord, 675)
	MisBeginAction(AddMission, 675)
	MisBeginAction(AddTrigger, 6751, TE_GETITEM, 4427, 5 )
	MisCancelAction(ClearMission, 675)

	MisNeed(MIS_NEED_ITEM, 4427, 5, 10, 5)
	
	MisHelpTalk("<t>我要的5颗<y蝙蝠牙齿>什么时候能给我呢？")
	MisResultTalk("<t>这下道具齐全了，我可以安心修炼了。")
	MisResultCondition(NoRecord, 675)
	MisResultCondition(HasMission, 675)
	MisResultCondition(HasItem, 4427, 5)
	MisResultAction(TakeItem, 4427, 5 )
	MisResultAction(ClearMission, 675)
	MisResultAction(SetRecord, 675)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4427 )	
	TriggerAction( 1, AddNextFlag, 675, 10, 5 )
	RegCurTrigger( 6751 )


----------------------------------帕帕的污染
	DefineMission( 676, "帕帕的污染", 676 )
	
	MisBeginTalk( "<t>最近<r海军帕帕>越来越不象话了，刷牙的时候一点都不注意我们这些住在下游的人们，每到清晨的时候整条河水都是黑色的墨汁，一直到下午才退去，好不容易他们又开始洗澡了，再这样下去我们没办法喝水了，跟他们说过很多次都没有用，看来只有先给他们点颜色瞧瞧了。<n><t>你去干掉10个 （657,411） 附近的<r海军帕帕>看他们会不会学乖点")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 676)
	MisBeginCondition(NoRecord, 676)
	MisBeginAction(AddMission, 676)
	MisBeginAction(AddTrigger, 6761, TE_KILL, 233, 10 )
	MisCancelAction(ClearMission, 676)

	MisNeed(MIS_NEED_KILL, 233, 10, 10, 10)
	
	MisHelpTalk("<t>干掉了吗？要10个哦，不然对他们不构成威胁")
	MisResultTalk("<t>呃唔，看来还是有点效果了哦，至少我们有水用了。<n><t>谢谢你，这个是给你的报酬。")
	MisResultCondition(NoRecord, 676)
	MisResultCondition(HasMission, 676)
	MisResultCondition(HasFlag, 676, 19 )
	MisResultAction(ClearMission, 676)
	MisResultAction(SetRecord, 676)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 233 )	
	TriggerAction( 1, AddNextFlag, 676, 10, 10 )
	RegCurTrigger( 6761 )

-----------------------------------帕帕帽子
	DefineMission( 677, "帕帕帽子", 677 )
	
	MisBeginTalk( "<t>哦，你可以说我是个贪心的人，我已经拥有了<y水兵企鹅帽>，却还想要拥有可爱的<y帕帕帽子>。<n><t>这种帽子也好可爱，肯定很适合戴在我头上呢。<n><t>所以，你愿意为我找来2顶<y帕帕帽子>吗？（657,411） 附近的<r海军帕帕>经常带戴着这种帽子。")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 677)
	MisBeginCondition(NoRecord, 677)
	MisBeginCondition(HasRecord, 668)
	MisBeginAction(AddMission, 677)
	MisBeginAction(AddTrigger, 6771, TE_GETITEM, 1840, 2 )
	MisCancelAction(ClearMission, 677)

	MisNeed(MIS_NEED_ITEM, 1840, 2, 10, 2)
	
	MisHelpTalk("<t>我要的<y帕帕帽子>呢？不要让我等太久哦。")
	MisResultTalk("<t>哦，这个<y帕帕帽子>果然如我想象般的可爱！")
	MisResultCondition(NoRecord, 677)
	MisResultCondition(HasMission, 677)
	MisResultCondition(HasItem, 1840, 2)
	MisResultAction(TakeItem, 1840, 2 )
	MisResultAction(ClearMission, 677)
	MisResultAction(SetRecord, 677)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,433,433)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1840 )	
	TriggerAction( 1, AddNextFlag, 677, 10, 2 )
	RegCurTrigger( 6771 )

----------------------------------铲除雪地菇
	DefineMission( 678, "铲除雪地菇", 678 )
	
	MisBeginTalk( "<t>我讨厌蘑菇，不管什么蘑菇我都讨厌！<n><t>我一见着蘑菇就想把它们千刀挖剐下油锅！这附近有一群<r雪地菇>，也让我十分倒胃口，麻烦你把它们除掉好吗？当然你也不需要杀得一只不剩，只要除掉10只 （952,550） 附近的<r雪地菇>，我就很感激你了！")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 678)
	MisBeginCondition(NoRecord, 678)
	MisBeginAction(AddMission, 678)
	MisBeginAction(AddTrigger, 6781, TE_KILL, 130, 10 )
	MisCancelAction(ClearMission, 678)

	MisNeed(MIS_NEED_KILL, 130, 10, 10, 10)
	
	MisHelpTalk("<t>除去10只<r雪地菇>应该是很容易完成的任务哦！")
	MisResultTalk("<t>谢谢你！现在我感觉舒服多了")
	MisResultCondition(NoRecord, 678)
	MisResultCondition(HasMission, 678)
	MisResultCondition(HasFlag, 678, 19 )
	MisResultAction(ClearMission, 678)
	MisResultAction(SetRecord, 678)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,229,229)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 130 )	
	TriggerAction( 1, AddNextFlag, 678, 10, 10 )
	RegCurTrigger( 6781 )

-----------------------------------雪地蘑菇
	DefineMission( 679, "雪地蘑菇", 679 )
	
	MisBeginTalk( "<t>人一上了年纪，牙口和胃口就都不太好了，一点油腻和坚硬的东西都吃不下。<n><t>还好（952,550） 附近有种<y雪地蘑菇>，，味道不错，又富含营养，你能帮我摘5个<y雪地蘑菇>回来吗？")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 679)
	MisBeginCondition(NoRecord, 679)
	MisBeginAction(AddMission, 679)
	MisBeginAction(AddTrigger, 6791, TE_GETITEM, 4104, 5 )
	MisCancelAction(ClearMission, 679)

	MisNeed(MIS_NEED_ITEM, 4104, 5, 10, 5)
	
	MisHelpTalk("<t>还没有拿到<y雪地蘑菇>吗？你是想饿死我这老头吗？")
	MisResultTalk("<t>嘿，味道真不错，我建议你有空也尝尝这个！")
	MisResultCondition(NoRecord, 679)
	MisResultCondition(HasMission, 679)
	MisResultCondition(HasItem, 4104, 5)
	MisResultAction(TakeItem, 4104, 5 )
	MisResultAction(ClearMission, 679)
	MisResultAction(SetRecord, 679)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4104 )	
	TriggerAction( 1, AddNextFlag, 679, 10, 5 )
	RegCurTrigger( 6791 )


----------------------------------迟钝的雪地蜗牛
	DefineMission( 680, "迟钝的雪地蜗牛", 680 )
	
	MisBeginTalk( "<t><r雪地蜗牛>爬得慢吞吞的，总是挡在我的路前方，好几次都险些将我绊倒呢。<n><t>我年纪大了，可受不了这个气，麻烦你帮忙杀掉10只 （657,334） 附近的<r雪地蜗牛>好吗？")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 680)
	MisBeginCondition(NoRecord, 680)
	MisBeginAction(AddMission, 680)
	MisBeginAction(AddTrigger, 6801, TE_KILL, 228, 10 )
	MisCancelAction(ClearMission, 680)

	MisNeed(MIS_NEED_KILL, 228, 10, 10, 10)
	
	MisHelpTalk("<t>快点去找<r雪地蜗牛>吧！")
	MisResultTalk("<t>谢谢你，这回没<r雪地蜗牛>挡路了！")
	MisResultCondition(NoRecord, 680)
	MisResultCondition(HasMission, 680)
	MisResultCondition(HasFlag, 680, 19 )
	MisResultAction(ClearMission, 680)
	MisResultAction(SetRecord, 680)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 228 )	
	TriggerAction( 1, AddNextFlag, 680, 10, 10 )
	RegCurTrigger( 6801 )

-----------------------------------花语石
	DefineMission( 681, "花语石", 681 )
	
	MisBeginTalk( "<t>在<r雪地蜗牛>的壳里，有种罕见的石头，名为<y花语石>。<n><t>这是卡拉女神为了让人类与植物沟通而留下的石头。<n><t>虽然现在已没有人知道怎么用这种石头了，但我不想放弃女神对人类的恩惠。<n><t>麻烦你去取5块<y花语石>回来，让我研究一下好吗？你可以在（657,334） 附近找到这种蜗牛。")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 681)
	MisBeginCondition(NoRecord, 681)
	MisBeginAction(AddMission, 681)
	MisBeginAction(AddTrigger, 6811, TE_GETITEM, 4105, 5 )
	MisCancelAction(ClearMission, 681)

	MisNeed(MIS_NEED_ITEM, 4105, 5, 10, 5)
	
	MisHelpTalk("<t>你找到5块<y花语石>了吗？它们在<r雪地蜗牛>的壳里！")
	MisResultTalk("<t>谢谢你！我这就开始着手研究！")
	MisResultCondition(NoRecord, 681)
	MisResultCondition(HasMission, 681)
	MisResultCondition(HasItem, 4105, 5)
	MisResultAction(TakeItem, 4105, 5 )
	MisResultAction(ClearMission, 681)
	MisResultAction(SetRecord, 681)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,513,513)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4105 )	
	TriggerAction( 1, AddNextFlag, 681, 10, 5 )
	RegCurTrigger( 6811 )

-----------------------------------蜗牛触角
	DefineMission( 682, "蜗牛触角", 682 )
	
	MisBeginTalk( "<t>林子大了什么鸟都有，这话一点没错。<n><t>我朋友的朋友<b藏飞>就是个活体艺术收藏家。<n><t>他喜欢收集各种古怪的器官。<n><t>这不，他这回又要我帮忙收集5<y冰凉的蜗牛触角>。<n><t>真是见鬼！我从哪里去找呢！朋友，你能帮我去找这5个<y冰凉的蜗牛触角>吗？<n><t>你可以在（657,334） 附近的<r雪地蜗牛>身上找到它们。")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 682)
	MisBeginCondition(NoRecord, 682)
	MisBeginAction(AddMission, 682)
	MisBeginAction(AddTrigger, 6821, TE_GETITEM, 4428, 5 )
	MisCancelAction(ClearMission, 682)

	MisNeed(MIS_NEED_ITEM, 4428, 5, 10, 5)
	
	MisHelpTalk("<t>我需要5个<y冰凉的蜗牛触角>才能向<b藏飞>交差。")
	MisResultTalk("<t>嘿，真的被你收集齐了，谢谢你哦！")
	MisResultCondition(NoRecord, 682)
	MisResultCondition(HasMission, 682)
	MisResultCondition(HasItem, 4428, 5)
	MisResultAction(TakeItem, 4428, 5 )
	MisResultAction(ClearMission, 682)
	MisResultAction(SetRecord, 682)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4428 )	
	TriggerAction( 1, AddNextFlag, 682, 10, 5 )
	RegCurTrigger( 6821 )

-----------------------------------寻找冰雪之心
	DefineMission( 683, "寻找冰雪之心", 683 )
	
	MisBeginTalk( "<t>朋友，你等一等！我的外甥患了冰原热病，生命危在旦夕，只有（1055,738）附近的<r纯情雪娃娃>身上的<y冰雪之心>能够救他一命。<n><t>拜托你收集5个<y冰雪之心>来好吗？我外甥的性命就全靠它来维系了！")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 683)
	MisBeginCondition(NoRecord, 683)
	MisBeginAction(AddMission, 683)
	MisBeginAction(AddTrigger, 6831, TE_GETITEM, 4431, 5 )
	MisCancelAction(ClearMission, 683)

	MisNeed(MIS_NEED_ITEM, 4431, 5, 10, 5)
	
	MisHelpTalk("<t>快去收集5个<y冰雪之心>来！")
	MisResultTalk("<t>哦，你可算回来了！谢谢你呀！")
	MisResultCondition(NoRecord, 683)
	MisResultCondition(HasMission, 683)
	MisResultCondition(HasItem, 4431, 5)
	MisResultAction(TakeItem, 4431, 5 )
	MisResultAction(ClearMission, 683)
	MisResultAction(SetRecord, 683)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4431 )	
	TriggerAction( 1, AddNextFlag, 683, 10, 5 )
	RegCurTrigger( 6831 )


----------------------------------纯情雪娃娃
	DefineMission( 684, "纯情雪娃娃", 684 )
	
	MisBeginTalk( "<t>听说<r纯情雪娃娃>会召唤来<r雪女>，给人们带来灾难。<n><t>虽然这种传说很可能是谣传，但也是有一定可信度的。<n><t>麻烦你杀掉周边的10个（1055,738）附近的<r纯情雪娃娃>，让人们能在这里安心生活吧。")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 684)
	MisBeginCondition(NoRecord, 684)
	MisBeginAction(AddMission, 684)
	MisBeginAction(AddTrigger, 6841, TE_KILL, 255, 10 )
	MisCancelAction(ClearMission, 684)

	MisNeed(MIS_NEED_KILL, 255, 10, 10, 10)
	
	MisHelpTalk("<t>你还没杀掉10个<r纯情雪娃娃>哦。")
	MisResultTalk("<t>谢谢你哦！你真值得信赖，下次有差事我还会找你的。")
	MisResultCondition(NoRecord, 684)
	MisResultCondition(HasMission, 684)
	MisResultCondition(HasFlag, 684, 19 )
	MisResultAction(ClearMission, 684)
	MisResultAction(SetRecord, 684)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 255 )	
	TriggerAction( 1, AddNextFlag, 684, 10, 10 )
	RegCurTrigger( 6841 )

----------------------------------幼熊出洞
	DefineMission( 685, "幼熊出洞", 685 )
	
	MisBeginTalk( "<t>按理说，熊这种动物在极寒之地应该冬眠的，可<r雪熊宝宝>却因为常年在这寒冷了大陆上生活，而慢慢进化得不再需要冬眠了。<n><t>它们的这种转变可苦了我们这些看管森林的人，每次巡视森林都会被活泼好动的<r雪熊宝宝>袭击，弄得疲惫不堪。<n><t>麻烦你去猎杀10只 （958,661） 附近的<r雪熊宝宝>，解决我们的麻烦好吗？")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 685)
	MisBeginCondition(NoRecord, 685)
	MisBeginAction(AddMission, 685)
	MisBeginAction(AddTrigger, 6851, TE_KILL, 142, 10 )
	MisCancelAction(ClearMission, 685)

	MisNeed(MIS_NEED_KILL, 142, 10, 10, 10)
	
	MisHelpTalk("<t>你楞在这里做什么？快去猎杀10只<r雪熊宝宝>呀。")
	MisResultTalk("<t>嘿，看不出你的身手这么厉害，一群<r雪熊宝宝>都不是你的对手。")
	MisResultCondition(NoRecord, 685)
	MisResultCondition(HasMission, 685)
	MisResultCondition(HasFlag, 685, 19 )
	MisResultAction(ClearMission, 685)
	MisResultAction(SetRecord, 685)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 142 )	
	TriggerAction( 1, AddNextFlag, 685, 10, 10 )
	RegCurTrigger( 6851 )

-----------------------------------雪之泪
	DefineMission( 686, "雪之泪", 686 )
	
	MisBeginTalk( "<t>我从广漠的沙漠而来，只为追寻<r雪女>的传说才只身来到这里。<n><t>传说中<r雪女>是卡拉女神按照自己的相貌制成，她们的眼泪能化成一片片<y完美的雪片>，冰封整个冰原大陆。<n><t>但是我来了这里2年，并不曾找到<r雪女>的踪迹。<n><t>朋友，你能帮我找到5片<y完美的雪片>来证明<r雪女>的存在吗？传闻中<r雪女>在（873,646）附近出没过。")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 686)
	MisBeginCondition(NoRecord, 686)
	MisBeginAction(AddMission, 686)
	MisBeginAction(AddTrigger, 6861, TE_GETITEM, 4438, 5 )
	MisCancelAction(ClearMission, 686)

	MisNeed(MIS_NEED_ITEM, 4438, 5, 10, 5)
	
	MisHelpTalk("<t>你找到5片<y完美的雪片>了吗？")
	MisResultTalk("<t>啊，这就是传说中的<y完美的雪片>吗？它们竟美得让人心醉。")
	MisResultCondition(NoRecord, 686)
	MisResultCondition(HasMission, 686)
	MisResultCondition(HasItem, 4438, 5)
	MisResultAction(TakeItem, 4438, 5 )
	MisResultAction(ClearMission, 686)
	MisResultAction(SetRecord, 686)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,601,601)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4438 )	
	TriggerAction( 1, AddNextFlag, 686, 10, 5 )
	RegCurTrigger( 6861 )


-----------------------------------冰雪晶石
	DefineMission( 687, "冰雪晶石", 687 )
	
	MisBeginTalk( "<t>嘿，朋友，你知道吗？现在在黑市上叫价最高的东西就是<r雪女>用来操控暴风雪<y冰雪晶石>了！<n><t>虽然我知道从<r雪女>那里偷东西不是件好事，不过有钱赚谁在乎呢！<n><t>我现在出高价请你去 （873,646） 附近的<r雪女>那里偷5颗<y冰雪水晶>，你愿意吗？（那些晶石就在雪女出没的树林里，看到了就赶快捡！）")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 687)
	MisBeginCondition(NoRecord, 687)
	MisBeginAction(AddMission, 687)
	MisBeginAction(AddTrigger, 6871, TE_GETITEM, 4106, 5 )
	MisCancelAction(ClearMission, 687)

	MisNeed(MIS_NEED_ITEM, 4106, 5, 10, 5)
	
	MisHelpTalk("<t>你要到<r雪女>那里才能拿到<y冰雪晶石>，可不是在这里哦！")
	MisResultTalk("<t>嘿，你做得真不错，完全不像个生手！")
	MisResultCondition(NoRecord, 687)
	MisResultCondition(HasMission, 687)
	MisResultCondition(HasItem, 4106, 5)
	MisResultAction(TakeItem, 4106, 5 )
	MisResultAction(ClearMission, 687)
	MisResultAction(SetRecord, 687)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4106 )	
	TriggerAction( 1, AddNextFlag, 687, 10, 5 )
	RegCurTrigger( 6871 )

----------------------------------幽怨雪女
	DefineMission( 688, "幽怨雪女", 688 )
	
	MisBeginTalk( "<t>朋友，你来得正好！你见过这附近的<r雪女>了吗？她们是一群妖怪呢！<n><t>她们流出的眼泪能形成冰封大陆的雪片，她们制造的<y冰雪晶石>能操控暴风雪。<n><t>当她们心情不好的时候，光是她们幽怨的眼神就能冻死人呢！<n><t>麻烦你去猎杀10个这种危险的<y雪女>！你可以在（873,646）附近找到她们。")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 688)
	MisBeginCondition(NoRecord, 688)
	MisBeginAction(AddMission, 688)
	MisBeginAction(AddTrigger, 6881, TE_KILL, 281, 10 )
	MisCancelAction(ClearMission, 688)

	MisNeed(MIS_NEED_KILL, 281, 10, 10, 10)
	
	MisHelpTalk("<t>只要杀掉10个<r雪女>就够了，你不需要太勉强自己！")
	MisResultTalk("<t>辛苦你了！这些是你应得的报酬！")
	MisResultCondition(NoRecord, 688)
	MisResultCondition(HasMission, 688)
	MisResultCondition(HasFlag, 688, 19 )
	MisResultAction(ClearMission, 688)
	MisResultAction(SetRecord, 688)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 281 )	
	TriggerAction( 1, AddNextFlag, 688, 10, 10 )
	RegCurTrigger( 6881 )

----------------------------------惩治雪地狼
	DefineMission( 689, "惩治雪地狼", 689 )
	
	MisBeginTalk( "<t>救命啊！我刚才被一群<r雪地狼>追！我险些被它们吃掉，这太可怕了。<n><t>朋友，救救我！快将（965,775）周围的10只<r雪地狼>杀掉！")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 689)
	MisBeginCondition(NoRecord, 689)
	MisBeginAction(AddMission, 689)
	MisBeginAction(AddTrigger, 6891, TE_KILL, 137, 10 )
	MisCancelAction(ClearMission, 689)

	MisNeed(MIS_NEED_KILL, 137, 10, 10, 10)
	
	MisHelpTalk("<t>你还没有去猎杀<r雪地狼>吗？")
	MisResultTalk("<t>哦，谢谢你，你是我的救命恩人！")
	MisResultCondition(NoRecord, 689)
	MisResultCondition(HasMission, 689)
	MisResultCondition(HasFlag, 689, 19 )
	MisResultAction(ClearMission, 689)
	MisResultAction(SetRecord, 689)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 137 )	
	TriggerAction( 1, AddNextFlag, 689, 10, 10 )
	RegCurTrigger( 6891 )

-----------------------------------营养龟苓膏
	DefineMission( 690, "营养龟苓膏", 690 )
	
	MisBeginTalk( "<t>嗨，朋友，你来得正好。<n><t>我最近很想吃龟苓膏，可是它们只在 （891,750） 附近的象龟身上才有！<n><t>那种庞然大物可不是我能应付的，你能帮忙取5个龟苓膏回来吗？")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 690)
	MisBeginCondition(NoRecord, 690)
	MisBeginAction(AddMission, 690)
	MisBeginAction(AddTrigger, 6901, TE_GETITEM, 4442, 5 )
	MisCancelAction(ClearMission, 690)

	MisNeed(MIS_NEED_ITEM, 4442, 5, 10, 5)
	
	MisHelpTalk("<t>嗨，你何时能带着龟苓膏过来呢？")
	MisResultTalk("<t>哦，这就是正宗龟苓膏的味道，太美味了。")
	MisResultCondition(NoRecord, 690)
	MisResultCondition(HasMission, 690)
	MisResultCondition(HasItem, 4442, 5)
	MisResultAction(TakeItem, 4442, 5 )
	MisResultAction(ClearMission, 690)
	MisResultAction(SetRecord, 690)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,697,697)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4442 )	
	TriggerAction( 1, AddNextFlag, 690, 10, 5 )
	RegCurTrigger( 6901 )

----------------------------------长鼻子乌龟
	DefineMission( 691, "长鼻子乌龟", 691 )
	
	MisBeginTalk( "<t>嗨，朋友，我在这里看到一种奇异的生物。<n><t>它们象是乌龟，可有长着大象一样的长鼻子，真是奇妙的生物。<n><t>听这里的人说，它们叫象龟，可我以前从未见过这种生物，所以感到很震惊，也很恐怖！<n><t>朋友，麻烦你杀掉 （891,750） 附近的10只象龟好吗？我觉得有些害怕它们呢！")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 691)
	MisBeginCondition(NoRecord, 691)
	MisBeginAction(AddMission, 691)
	MisBeginAction(AddTrigger, 6911, TE_KILL, 265, 10 )
	MisCancelAction(ClearMission, 691)

	MisNeed(MIS_NEED_KILL, 265, 10, 10, 10)
	
	MisHelpTalk("<t>嗨，你还没去猎杀象龟吗？")
	MisResultTalk("<t>哦，你真是个值得信赖的人，谢谢你哦！")
	MisResultCondition(NoRecord, 691)
	MisResultCondition(HasMission, 691)
	MisResultCondition(HasFlag, 691, 19 )
	MisResultAction(ClearMission, 691)
	MisResultAction(SetRecord, 691)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 265 )	
	TriggerAction( 1, AddNextFlag, 691, 10, 10 )
	RegCurTrigger( 6911 )

----------------------------------野蛮硬甲蟹
	DefineMission( 692, "野蛮硬甲蟹", 692 )
	
	MisBeginTalk( "<t>嘿，真是见鬼，我居然碰见了一群 野蛮的<r硬甲蟹>。<n><t>它们蛮横无理地用它们的大蟹钳抢走了我的货！<n><t>你得帮助我教训教训那些掠货的<r硬甲蟹>，它们越来越无法无天了！<n><t>只要猎杀10只 （994,857） 附近的<r硬甲蟹>就可以，你愿意吗？")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 692)
	MisBeginCondition(NoRecord, 692)
	MisBeginAction(AddMission, 692)
	MisBeginAction(AddTrigger, 6921, TE_KILL, 143, 10 )
	MisCancelAction(ClearMission, 692)

	MisNeed(MIS_NEED_KILL, 143, 10, 10, 10)
	
	MisHelpTalk("<t>你答应我猎杀的10只<r硬甲蟹>的哦，别忘记了哦？")
	MisResultTalk("<t>呵呵，这下<r硬甲蟹>不敢再肆意妄为了吧。")
	MisResultCondition(NoRecord, 692)
	MisResultCondition(HasMission, 692)
	MisResultCondition(HasFlag, 692, 19 )
	MisResultAction(ClearMission, 692)
	MisResultAction(SetRecord, 692)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 143 )	
	TriggerAction( 1, AddNextFlag, 692, 10, 10 )
	RegCurTrigger( 6921 )

-----------------------------------自制蟹卵酱
	DefineMission( 693, "自制蟹卵酱", 693 )
	
	MisBeginTalk( "<t>你知道我搬到这冰天雪地的地方之后，最爱吃的东西是什么？龟苓膏？不不！是<y硬甲蟹卵>做成的蟹卵酱。<n><t>不过<r硬甲蟹>把它们的卵保护得很好，你能帮我取5个<y硬甲蟹卵>回来吗？你可以在 （994,857） 附近找到之中螃蟹。")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 693)
	MisBeginCondition(NoRecord, 693)
	MisBeginAction(AddMission, 693)
	MisBeginAction(AddTrigger, 6931, TE_GETITEM, 4107, 5 )
	MisCancelAction(ClearMission, 693)

	MisNeed(MIS_NEED_ITEM, 4107, 5, 10, 5)
	
	MisHelpTalk("<t>我要的<y硬甲蟹卵>拿回来了吗？")
	MisResultTalk("<t>谢谢，你真个好人。")
	MisResultCondition(NoRecord, 693)
	MisResultCondition(HasMission, 693)
	MisResultCondition(HasItem, 4107, 5)
	MisResultAction(TakeItem, 4107, 5 )
	MisResultAction(ClearMission, 693)
	MisResultAction(SetRecord, 693)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4107 )	
	TriggerAction( 1, AddNextFlag, 693, 10, 5 )
	RegCurTrigger( 6931 )

-----------------------------------美食专家
	DefineMission( 694, "美食专家", 694 )
	
	MisBeginTalk( "<t>因为<r北地海螺>生活在冰原之上，所以它们死后海螺肉会立即冻住，形成<y冻住的海螺肉>。<n><t>那些外行人不懂这些海螺肉的妙处。<n><t>其实如果用小火墩<y冻住的海螺肉>是非常美味的。<n><t>啊！和你说了这些，我又想吃了！麻烦你去找5个<y冻住的海螺肉>好吗？听说<r北地海螺>在（802,750）附近出现过。")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 694)
	MisBeginCondition(NoRecord, 694)
	MisBeginAction(AddMission, 694)
	MisBeginAction(AddTrigger, 6941, TE_GETITEM, 4464, 5 )
	MisCancelAction(ClearMission, 694)

	MisNeed(MIS_NEED_ITEM, 4464, 5, 10, 5)
	
	MisHelpTalk("<t>嘿，我托你找5个<y冻住的海螺肉>呢！")
	MisResultTalk("<t>谢谢你！我正是要这些东西！")
	MisResultCondition(NoRecord, 694)
	MisResultCondition(HasMission, 694)
	MisResultCondition(HasItem, 4464, 5)
	MisResultAction(TakeItem, 4464, 5 )
	MisResultAction(ClearMission, 694)
	MisResultAction(SetRecord, 694)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4464 )	
	TriggerAction( 1, AddNextFlag, 694, 10, 5 )
	RegCurTrigger( 6941 )

-----------------------------------采集纯净之灵
	DefineMission( 695, "采集纯净之灵", 695 )
	
	MisBeginTalk( "<t>嘿，朋友，能耽误你些时间吗？我的朋友近来对神秘之物产生了兴趣，他托我收集5个雪灵的纯净之灵，你能帮我去收集5个回来吗？<n><t>你可以在（1060,805）附近的<r雪灵>身上找到这种雪灵。")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 695)
	MisBeginCondition(NoRecord, 695)
	MisBeginAction(AddMission, 695)
	MisBeginAction(AddTrigger, 6951, TE_GETITEM, 4481, 5 )
	MisCancelAction(ClearMission, 695)

	MisNeed(MIS_NEED_ITEM, 4481, 5, 10, 5)
	
	MisHelpTalk("<t><y纯净之灵>是<r雪灵>的灵魂。")
	MisResultTalk("<t>谢谢你，这年头像你这样的热心人不多了。")
	MisResultCondition(NoRecord, 695)
	MisResultCondition(HasMission, 695)
	MisResultCondition(HasItem, 4481, 5)
	MisResultAction(TakeItem, 4481, 5 )
	MisResultAction(ClearMission, 695)
	MisResultAction(SetRecord, 695)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,800,800)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4481 )	
	TriggerAction( 1, AddNextFlag, 695, 10, 5 )
	RegCurTrigger( 6951 )

----------------------------------恼人的雪娃娃
	DefineMission( 696, "恼人的雪娃娃", 696 )
	
	MisBeginTalk( "<t><r灵巧雪娃娃>的动作灵活，身手矫健。<n><t>可正因为它们这种特质，也给这里的住民带来了很大的麻烦。<n><t>不断有人投诉<r灵巧雪娃娃>给他们带来了麻烦。<n><t>请你猎杀10只（908,842）附近的<r灵巧雪娃娃>，给居民们带来安稳好吗？")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 696)
	MisBeginCondition(NoRecord, 696)
	MisBeginAction(AddMission, 696)
	MisBeginAction(AddTrigger, 6961, TE_KILL, 256, 10 )
	MisCancelAction(ClearMission, 696)

	MisNeed(MIS_NEED_KILL, 256, 10, 10, 10)
	
	MisHelpTalk("<t>我需要你猎杀10只<r灵巧雪娃娃>哟。")
	MisResultTalk("<t>嘿，你做得真不错，希望我们保持长期合作！")
	MisResultCondition(NoRecord, 696)
	MisResultCondition(HasMission, 696)
	MisResultCondition(HasFlag, 696, 19 )
	MisResultAction(ClearMission, 696)
	MisResultAction(SetRecord, 696)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 256 )	
	TriggerAction( 1, AddNextFlag, 696, 10, 10 )
	RegCurTrigger( 6961 )

----------------------------------原始雪人
	DefineMission( 697, "原始雪人", 697 )
	
	MisBeginTalk( "<t>嘿，朋友，想不想向众人展示你的身手？现在正有个机会哦。<n><t>这附近居住着从远古时代就存在的<r雪人>，他们体形庞大，攻击力很强，令人惴惴不安，生怕被他们攻击。<n><t>你愿意在这个时候当一回英雄，猎杀10只 （1495,667） 附近的<r雪人>吗？")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 697)
	MisBeginCondition(NoRecord, 697)
	MisBeginAction(AddMission, 697)
	MisBeginAction(AddTrigger, 6971, TE_KILL, 98, 10 )
	MisCancelAction(ClearMission, 697)

	MisNeed(MIS_NEED_KILL, 98, 10, 10, 10)
	
	MisHelpTalk("<t>放心，<r雪人>的智商很低，只要你跑得快，一定不会受伤的。")
	MisResultTalk("<t>嘿，你做得真不错，希望我们保持长期合作！")
	MisResultCondition(NoRecord, 697)
	MisResultCondition(HasMission, 697)
	MisResultCondition(HasFlag, 697, 19 )
	MisResultAction(ClearMission, 697)
	MisResultAction(SetRecord, 697)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 98 )	
	TriggerAction( 1, AddNextFlag, 697, 10, 10 )
	RegCurTrigger( 6971 )

-----------------------------------失踪事件
	DefineMission( 698, "失踪事件", 698 )
	
	MisBeginTalk( "<t>在<p冰狼堡下城>附近，最近频繁发生失踪事件。<n><t>我怀疑此事与（1495,667） 附近的<r雪人>有关，但目前还没有充分的证据。<n><t>我希望你能参与调查此事。<n><t>你只需带回5个<r雪人指甲>来，我会根据他们指甲里的残留物来证明我推断是否正确就可以了。")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 698)
	MisBeginCondition(NoRecord, 698)
	MisBeginAction(AddMission, 698)
	MisBeginAction(AddTrigger, 6981, TE_GETITEM, 4446, 5 )
	MisCancelAction(ClearMission, 698)

	MisNeed(MIS_NEED_ITEM, 4446, 5, 10, 5)
	
	MisHelpTalk("<t>这么简单的任务你还没有完成吗？")
	MisResultTalk("<t>奇怪，虽然<r雪人指甲>里的残留物有类似血液的迹象，但是好像不是人血，难道失踪事件真的与<r雪人>无关吗？")
	MisResultCondition(NoRecord, 698)
	MisResultCondition(HasMission, 698)
	MisResultCondition(HasItem, 4446, 5)
	MisResultAction(TakeItem, 4446, 5 )
	MisResultAction(ClearMission, 698)
	MisResultAction(SetRecord, 698)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4446 )	
	TriggerAction( 1, AddNextFlag, 698, 10, 5 )
	RegCurTrigger( 6981 )

----------------------------------争强好胜的猪
	DefineMission( 699, "争强好胜的猪", 699 )
	
	MisBeginTalk( "<t>哎哟，哎哟，你看到我脸上的伤了吗？这都是那些该死的<r战斗迷你猪>弄出来的。<n><t>它们太过争强好胜了，只要看见你拿着武器，哪怕只是一根棍子也会冲上来和你战斗的。<n><t>麻烦猎杀10只（1453,560）附近的<r战斗迷你猪>，不要再让其他路人遇上我这样的遭遇了。")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 699)
	MisBeginCondition(NoRecord, 699)
	MisBeginAction(AddMission, 699)
	MisBeginAction(AddTrigger, 6991, TE_KILL, 296, 10 )
	MisCancelAction(ClearMission, 699)

	MisNeed(MIS_NEED_KILL, 296, 10, 10, 10)
	
	MisHelpTalk("<t>快去猎杀10只<r战斗迷你猪>回来。")
	MisResultTalk("<t>干得漂亮！这些赏金是我嘉奖你的！")
	MisResultCondition(NoRecord, 699)
	MisResultCondition(HasMission, 699)
	MisResultCondition(HasFlag, 699, 19 )
	MisResultAction(ClearMission, 699)
	MisResultAction(SetRecord, 699)
	MisResultAction(AddExp, 3900, 3900)
	MisResultAction(AddMoney,431,431)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 296 )	
	TriggerAction( 1, AddNextFlag, 699, 10, 10 )
	RegCurTrigger( 6991 )

----------------------------------捣鬼的雪娃娃
	DefineMission( 800, "捣鬼的雪娃娃", 800 )
	
	MisBeginTalk( "<t>如你所见，我是冰狼堡商会会长，必须对全城的商人负责。<n><t>现在有种<r调皮雪娃娃>，专门给商旅队伍捣乱，害得不少商人都不敢到<p冰狼堡>来做生意了！<n><t>麻烦你猎杀10只（1746,530）附近的<r调皮雪娃娃>，维持<p冰狼堡>的正常商业贸易。")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 800)
	MisBeginCondition(NoRecord, 800)
	MisBeginAction(AddMission, 800)
	MisBeginAction(AddTrigger, 8001, TE_KILL, 257, 10 )
	MisCancelAction(ClearMission, 800)

	MisNeed(MIS_NEED_KILL, 257, 10, 10, 10)
	
	MisHelpTalk("<t>要猎杀10只<r调皮雪娃娃>才行哦。")
	MisResultTalk("<t>收拾了这些<r调皮雪娃娃>，通商的道路安全多了。")
	MisResultCondition(NoRecord, 800)
	MisResultCondition(HasMission, 800)
	MisResultCondition(HasFlag, 800, 19 )
	MisResultAction(ClearMission, 800)
	MisResultAction(SetRecord, 800)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 257 )	
	TriggerAction( 1, AddNextFlag, 800, 10, 10 )
	RegCurTrigger( 8001 )

-----------------------------------灵魂宝石
	DefineMission( 801, "灵魂宝石", 801 )
	
	MisBeginTalk( "<t><p冰狼堡下城>外失踪事件还在持续发生，他们大部分都消失在<r调皮雪娃娃>出没的地方，我怀疑这起事件和<r调皮雪娃娃>脱不了关系。<n><t>你能从（1746,530）附近的<r调皮雪娃娃>身上找5块<y灵魂宝石>给我，帮助我调查吗？")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 801)
	MisBeginCondition(NoRecord, 801)
	MisBeginAction(AddMission, 801)
	MisBeginAction(AddTrigger, 8011, TE_GETITEM, 4108, 5 )
	MisCancelAction(ClearMission, 801)

	MisNeed(MIS_NEED_ITEM, 4108, 5, 10, 5)
	
	MisHelpTalk("<t>你找到5块<y灵魂宝石>了吗？")
	MisResultTalk("<t>哎呀，原来那些失踪的人的灵魂都被吸到这<r灵魂宝石>里去了！<n><t>我得去警告大家不要靠近<r调皮雪娃娃>！")
	MisResultCondition(NoRecord, 801)
	MisResultCondition(HasMission, 801)
	MisResultCondition(HasItem, 4108, 5)
	MisResultAction(TakeItem, 4108, 5 )
	MisResultAction(ClearMission, 801)
	MisResultAction(SetRecord, 801)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4108 )	
	TriggerAction( 1, AddNextFlag, 801, 10, 5 )
	RegCurTrigger( 8011 )

----------------------------------滥杀无辜
	DefineMission( 802, "滥杀无辜", 802 )
	
	MisBeginTalk( "<t>我要你去猎杀（2165,462）附近的10只<r土象龟>！没有任何理由，只是我看不顺眼这些蠢笨的生物罢了。<n><t>当然，我不会让你白干的，等你做成了，我会发赏金给你的。")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 802)
	MisBeginCondition(NoRecord, 802)
	MisBeginAction(AddMission, 802)
	MisBeginAction(AddTrigger, 8021, TE_KILL, 141, 10 )
	MisCancelAction(ClearMission, 802)

	MisNeed(MIS_NEED_KILL, 141, 10, 10, 10)
	
	MisHelpTalk("<t>要领赏金等你杀掉10只<r土象龟>再说。")
	MisResultTalk("<t>嘿，不错！这是给你的赏金。")
	MisResultCondition(NoRecord, 802)
	MisResultCondition(HasMission, 802)
	MisResultCondition(HasFlag, 802, 19 )
	MisResultAction(ClearMission, 802)
	MisResultAction(SetRecord, 802)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 141 )	
	TriggerAction( 1, AddNextFlag, 802, 10, 10 )
	RegCurTrigger( 8021 )

-----------------------------------难以愈合的伤口
	DefineMission( 803, "难以愈合的伤口", 803 )
	
	MisBeginTalk( "<t>我前些日子遭到<r骷髅武士>的袭击，虽然不伤及性命，但直到现在伤口稍微受寒就会剧痛难忍。<n><t>我听说（2165,462）附近<r耐寒龟>身上的<y会发热的龟壳>对这种伤口的愈合很有疗效。<n><t>你能帮忙取5个<y会发热的龟壳>给我捂在伤口上吗？")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 803)
	MisBeginCondition(NoRecord, 803)
	MisBeginAction(AddMission, 803)
	MisBeginAction(AddTrigger, 8031, TE_GETITEM, 4468, 5 )
	MisCancelAction(ClearMission, 803)

	MisNeed(MIS_NEED_ITEM, 4468, 5, 10, 5)
	
	MisHelpTalk("<t>哎呀，伤口又在痛了，你什么时候能收集到5个<y会发热的龟壳>？")
	MisResultTalk("<t>恩，谢谢你，用上<y会发热的龟壳>后，我感觉好多了。")
	MisResultCondition(NoRecord, 803)
	MisResultCondition(HasMission, 803)
	MisResultCondition(HasItem, 4468, 5)
	MisResultAction(TakeItem, 4468, 5 )
	MisResultAction(ClearMission, 803)
	MisResultAction(SetRecord, 803)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4468 )	
	TriggerAction( 1, AddNextFlag, 803, 10, 5 )
	RegCurTrigger( 8031 )

----------------------------------堕落之羊
	DefineMission( 804, "堕落之羊", 804 )
	
	MisBeginTalk( "<t>嘿，你看到那些<r疯羊>了吗？听说它们是什么科技造就出来的变异生物，和女神卡拉造就的生物种类是完全不一样的！<n><t>也可以说它们就是邪恶的产物呀。<n><t>朋友，如果你也信仰女神卡拉，麻烦你帮忙铲除10只（2266,590）附近的<r疯羊>好吗？")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 804)
	MisBeginCondition(NoRecord, 804)
	MisBeginAction(AddMission, 804)
	MisBeginAction(AddTrigger, 8041, TE_KILL, 297, 10 )
	MisCancelAction(ClearMission, 804)

	MisNeed(MIS_NEED_KILL, 297, 10, 10, 10)
	
	MisHelpTalk("<t>你答应我猎杀10只<r疯羊>，怎么到现在还没有办到？")
	MisResultTalk("<t>谢谢你的协助！")
	MisResultCondition(NoRecord, 804)
	MisResultCondition(HasMission, 804)
	MisResultCondition(HasFlag, 804, 19 )
	MisResultAction(ClearMission, 804)
	MisResultAction(SetRecord, 804)
	MisResultAction(AddExp, 7700, 7700)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 297 )	
	TriggerAction( 1, AddNextFlag, 804, 10, 10 )
	RegCurTrigger( 8041 )

-----------------------------------猛蝎之毒
	DefineMission( 805, "猛蝎之毒", 805 )
	
	MisBeginTalk( "<t>朋友，你来得正好，我的女友<b娜娜>被<r猛蝎>蛰过之后，一直昏迷到现在！<n><t>我现在要看护她，抽不出身去配解药。<n><t>麻烦你去收集5个<y解毒蝎子血>给我。<n><t>我要以毒攻毒，救娜娜的性命！你可以到（2370,548）附近找到这种蝎子。")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 805)
	MisBeginCondition(NoRecord, 805)
	MisBeginAction(AddMission, 805)
	MisBeginAction(AddTrigger, 8051, TE_GETITEM, 4482, 5 )
	MisCancelAction(ClearMission, 805)

	MisNeed(MIS_NEED_ITEM, 4482, 5, 10, 5)
	
	MisHelpTalk("<t>事不宜迟，快收集5个<y解毒蝎子血>给我。")
	MisResultTalk("<t>太好了，<y解毒蝎子血>有效了！娜娜醒过来了。")
	MisResultCondition(NoRecord, 805)
	MisResultCondition(HasMission, 805)
	MisResultCondition(HasItem, 4482, 5)
	MisResultAction(TakeItem, 4482, 5 )
	MisResultAction(ClearMission, 805)
	MisResultAction(SetRecord, 805)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4482 )	
	TriggerAction( 1, AddNextFlag, 805, 10, 5 )
	RegCurTrigger( 8051 )

----------------------------------开路先锋
	DefineMission( 806, "开路先锋", 806 )
	
	MisBeginTalk( "<t>嘿，朋友，你来得正好！<n><t>我打算和我的女友<b娜娜>一起去<p冰狼堡>度假，但是我们的必经之路却被凶狠的<r极地熊>占据了。<n><t>你能猎杀10只（1981,530）附近的<r极地熊>，帮我们开出一条路来吗？")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 806)
	MisBeginCondition(NoRecord, 806)
	MisBeginAction(AddMission, 806)
	MisBeginAction(AddTrigger, 8061, TE_KILL, 259, 10 )
	MisCancelAction(ClearMission, 806)

	MisNeed(MIS_NEED_KILL, 259, 10, 10, 10)
	
	MisHelpTalk("<t>我需要你杀掉10只<r极地熊>。")
	MisResultTalk("<t>谢谢你！这回总算能够安心去度假了。")
	MisResultCondition(NoRecord, 806)
	MisResultCondition(HasMission, 806)
	MisResultCondition(HasFlag, 806, 19 )
	MisResultAction(ClearMission, 806)
	MisResultAction(SetRecord, 806)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 259 )	
	TriggerAction( 1, AddNextFlag, 806, 10, 10 )
	RegCurTrigger( 8061 )

-----------------------------------雪影剑
	DefineMission( 807, "雪影剑", 807 )
	
	MisBeginTalk( "<t>嘿，朋友，你见过这（2269,590）附近的<r雪剑猪>吧，你知道它们为什么一直徘徊在条件这么恶劣的地带吗？那是因为它们在守护一把叫做<y雪影剑>的宝剑。<n><t>我对这把剑很感兴趣，朋友，你愿意去帮我拿一趟吗？（我想这个剑很好找哦，就是一把插在石头里的剑，去把它拿来吧！）")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 807)
	MisBeginCondition(NoRecord, 807)
	MisBeginAction(AddMission, 807)
	MisBeginAction(AddTrigger, 8071, TE_GETITEM, 4109, 1 )
	MisCancelAction(ClearMission, 807)

	MisNeed(MIS_NEED_ITEM, 4109, 1, 10, 1)
	
	MisHelpTalk("<t>你还没有找到那把<y雪影剑>吗？")
	MisResultTalk("<t>嘿，这真是把绝世好剑！")
	MisResultCondition(NoRecord, 807)
	MisResultCondition(HasMission, 807)
	MisResultCondition(HasItem, 4109, 1)
	MisResultAction(TakeItem, 4109, 1 )
	MisResultAction(ClearMission, 807)
	MisResultAction(SetRecord, 807)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4109 )	
	TriggerAction( 1, AddNextFlag, 807, 10, 1 )
	RegCurTrigger( 8071 )

----------------------------------武士亡魂
	DefineMission( 808, "武士亡魂", 808 )
	
	MisBeginTalk( "<t>也许是我能看见常人所看不见的东西的缘故，我常能听到这附近武士亡魂的哀鸣声。<n><t>这是那些<r骷髅武士>受困于形骸之苦所发出的声音。<n><t>只要能粉碎他们的骷髅身体，就能解救他们的灵魂。<n><t>朋友，你愿意帮助我，猎杀10个（2269,470）附近的<r骷髅武士>，以解救他们的灵魂吗？")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 808)
	MisBeginCondition(NoRecord, 808)
	MisBeginAction(AddMission, 808)
	MisBeginAction(AddTrigger, 8081, TE_KILL, 268, 10 )
	MisCancelAction(ClearMission, 808)

	MisNeed(MIS_NEED_KILL, 268, 10, 10, 10)
	
	MisHelpTalk("<t>朋友，你答应我要猎杀10个<r骷髅武士>，可不能食言哦。")
	MisResultTalk("<t>谢谢，我想那些被解放的<r骷髅武士>也会感激你的。")
	MisResultCondition(NoRecord, 808)
	MisResultCondition(HasMission, 808)
	MisResultCondition(HasFlag, 808, 19 )
	MisResultAction(ClearMission, 808)
	MisResultAction(SetRecord, 808)
	MisResultAction(AddExp, 10600, 10600)
	MisResultAction(AddMoney,504,504)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 808, 10, 10 )
	RegCurTrigger( 8081 )

----------------------------------吸血的怪物
	DefineMission( 809, "吸血的怪物", 809 )
	
	MisBeginTalk( "<t>在<p银矿>里，有一种靠人的血液才能生存的怪物，它们的名字叫做<r吸血蝙蝠>。<n><t>由于它们的存在，很多矿工都会在工作时发生贫血现象。<n><t>这种状况真让人看不下去。<n><t>麻烦你猎杀10只矿洞2层的<r吸血蝙蝠>，让矿工们的日子好过点好吗？")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 809)
	MisBeginCondition(NoRecord, 809)
	MisBeginAction(AddMission, 809)
	MisBeginAction(AddTrigger, 8091, TE_KILL, 82, 10 )
	MisCancelAction(ClearMission, 809)

	MisNeed(MIS_NEED_KILL, 82, 10, 10, 10)
	
	MisHelpTalk("<t>你要杀掉10只<r吸血蝙蝠>才行哦。")
	MisResultTalk("<t>我感谢你为矿工做得一切！")
	MisResultCondition(NoRecord, 809)
	MisResultCondition(HasMission, 809)
	MisResultCondition(HasFlag, 809, 19 )
	MisResultAction(ClearMission, 809)
	MisResultAction(SetRecord, 809)
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 82 )	
	TriggerAction( 1, AddNextFlag, 809, 10, 10 )
	RegCurTrigger( 8091 )

-----------------------------------鼹鼠的安全帽
	DefineMission( 810, "鼹鼠的安全帽", 810 )
	
	MisBeginTalk( "<t>我想和朋友<b鲁鲁>想进到<p银矿>中去玩。<n><t>可是我们两个人都没有安全帽，大人不准我们进去。<n><t>你能帮我去银矿二层的<r铁爪鼹鼠>那里拿2顶<y鼹鼠的安全帽>吗？求你了，我们真的很想去<p银矿>玩！")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 810)
	MisBeginCondition(NoRecord, 810)
	MisBeginAction(AddMission, 810)
	MisBeginAction(AddTrigger, 8101, TE_GETITEM, 4448, 2 )
	MisCancelAction(ClearMission, 810)

	MisNeed(MIS_NEED_ITEM, 4448, 2, 10, 2)
	
	MisHelpTalk("<t>什么时候我才能拿到2顶<y鼹鼠的安全帽>呀？")
	MisResultTalk("<t>哦，太感谢你了！我和<b鲁鲁>可以放心去玩啦！")
	MisResultCondition(NoRecord, 810)
	MisResultCondition(HasMission, 810)
	MisResultCondition(HasItem, 4448, 2)
	MisResultAction(TakeItem, 4448, 2 )
	MisResultAction(ClearMission, 810)
	MisResultAction(SetRecord, 810)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4448 )	
	TriggerAction( 1, AddNextFlag, 810, 10, 2 )
	RegCurTrigger( 8101 )


-----------------------------------奇异的泥浆
	DefineMission( 811, "奇异的泥浆", 811 )
	
	MisBeginTalk( "<t>吓死我了！我刚迈进<p银矿>就发现一团泥浆向我扑来！天哪，我从来没想到，泥浆也会能有拥有生命的一天！<n><t>你能从它们的身上收集5团<y粘呼呼的泥巴>让我分析一下它们是怎么产生生命的好吗？那些奇怪的变异生物经常在（934,2747）出没。")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 811)
	MisBeginCondition(NoRecord, 811)
	MisBeginAction(AddMission, 811)
	MisBeginAction(AddTrigger, 8111, TE_GETITEM, 4363, 5 )
	MisCancelAction(ClearMission, 811)

	MisNeed(MIS_NEED_ITEM, 4363, 5, 10, 5)
	
	MisHelpTalk("<t>你收集到5团<y粘呼呼的泥巴>了吗？")
	MisResultTalk("<t>哦，这些<r泥浆怪>看起来虽然结构简单，可实际上却很复杂呢！")
	MisResultCondition(NoRecord, 811)
	MisResultCondition(HasMission, 811)
	MisResultCondition(HasItem, 4363, 5)
	MisResultAction(TakeItem, 4363, 5 )
	MisResultAction(ClearMission, 811)
	MisResultAction(SetRecord, 811)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4363 )	
	TriggerAction( 1, AddNextFlag, 811, 10, 5 )
	RegCurTrigger( 8111 )

----------------------------------报复泥浆怪
	DefineMission( 812, "报复泥浆怪", 812 )
	
	MisBeginTalk( "<t>呜呜，我昨天去<p银矿>里挖掘矿石，想要贴补家用。<n><t>可是一个<r泥浆怪>冲出来，把泥巴都喷在了我的新衣服上。<n><t>呜呜，我真咽不下这口气，你能替我猎杀10只（934,2747）附近的<r泥浆怪>报仇吗？")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 812)
	MisBeginCondition(NoRecord, 812)
	MisBeginAction(AddMission, 812)
	MisBeginAction(AddTrigger, 8121, TE_KILL, 253, 10 )
	MisCancelAction(ClearMission, 812)

	MisNeed(MIS_NEED_KILL, 253, 10, 10, 10)
	
	MisHelpTalk("<t>你还没杀那10只<r泥浆怪>吗？我等得很着急哦。")
	MisResultTalk("<t>谢谢你！谢谢你！")
	MisResultCondition(NoRecord, 812)
	MisResultCondition(HasMission, 812)
	MisResultCondition(HasFlag, 812, 19 )
	MisResultAction(ClearMission, 812)
	MisResultAction(SetRecord, 812)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 812, 10, 10 )
	RegCurTrigger( 8121 )


----------------------------------铁爪鼹鼠
	DefineMission( 813, "铁爪鼹鼠", 813 )
	
	MisBeginTalk( "<t>我在<p废矿>里探险时遭到了<r铁爪鼹鼠>的突然袭击。<n><t>它们用鼹鼠利爪狠狠地抓伤了我，到现在我的伤口还在隐隐作痛！<n><t>你能替我狠狠地教训一下那些<r铁爪鼹鼠>吗？只要你猎杀10只废矿二层的<r铁爪鼹鼠>就行！")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 813)
	MisBeginCondition(NoRecord, 813)
	MisBeginAction(AddMission, 813)
	MisBeginAction(AddTrigger, 8131, TE_KILL, 88, 10 )
	MisCancelAction(ClearMission, 813)

	MisNeed(MIS_NEED_KILL, 88, 10, 10, 10)
	
	MisHelpTalk("<t>你还没杀够10只<r铁爪鼹鼠>哦")
	MisResultTalk("<t>谢谢你，我心情舒畅多了！")
	MisResultCondition(NoRecord, 813)
	MisResultCondition(HasMission, 813)
	MisResultCondition(HasFlag, 813, 19 )
	MisResultAction(ClearMission, 813)
	MisResultAction(SetRecord, 813)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,469,469)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )	
	TriggerAction( 1, AddNextFlag, 813, 10, 10 )
	RegCurTrigger( 8131 )

-----------------------------------忍者手里剑
	DefineMission( 814, "忍者手里剑", 814 )
	
	MisBeginTalk( "<t><r忍者鼹鼠>所使用的武器很奇怪，它们用一种叫做<y忍者手里剑>的利器。<n><t>这种武器准确率高，杀伤力又极大，我非常感兴趣。<n><t>你能去<p废矿>里搜查<r忍者鼹鼠>，收集10把<y忍者手里剑>带给我看看吗！<n><t>你可以在废矿二层找到<r忍者鼹鼠>的踪迹。")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 814)
	MisBeginCondition(NoRecord, 814)
	MisBeginAction(AddMission, 814)
	MisBeginAction(AddTrigger, 8141, TE_GETITEM, 3935, 10 )
	MisCancelAction(ClearMission, 814)

	MisNeed(MIS_NEED_ITEM, 3935, 10, 10, 10)
	
	MisHelpTalk("<t>你找到10把<y忍者手里剑>了吗？")
	MisResultTalk("<t>哦，谢谢！我太中意这<y忍者手里剑>了！")
	MisResultCondition(NoRecord, 814)
	MisResultCondition(HasMission, 814)
	MisResultCondition(HasItem, 3935, 10)
	MisResultAction(TakeItem, 3935, 10 )
	MisResultAction(ClearMission, 814)
	MisResultAction(SetRecord, 814)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3935 )	
	TriggerAction( 1, AddNextFlag, 814, 10, 10 )
	RegCurTrigger( 8141 )

-----------------------------------考验
	DefineMission( 837, "考验", 837 )
	
	MisBeginTalk( "<t>年轻人，第一次来到卡尔加德吧，看你一副弱不经风的样子，一定不是战斗的料。<n><t>如果想证明你自己的话就去杀5个土著战士，他们就在卡尔加德的东南方向，不过，我想你一定不敢去的。")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 837)
	MisBeginCondition(NoRecord, 837)
	MisBeginAction(AddMission, 837)
	MisBeginAction(AddTrigger, 8371, TE_KILL, 248, 5 )
	MisCancelAction(ClearMission, 837)

	MisNeed(MIS_NEED_DESP, "请为萨南·格力德（646,2088）杀死5个土著战士")
	MisNeed(MIS_NEED_KILL, 248, 5, 10, 5)

	MisHelpTalk("5个土著战士而已，你还在犹豫什么，快去啊")
	MisResultTalk("很好，你获得了我的信任，不过，你仍旧需要更多的考验")
	MisResultCondition(NoRecord, 837)
	MisResultCondition(HasMission, 837)
	MisResultCondition(HasFlag, 837, 14)
	MisResultAction(ClearMission, 837)
	MisResultAction(SetRecord, 837)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 837, 10, 5 )
	RegCurTrigger( 8371 )


-----------------------------------考验
	DefineMission( 838, "考验", 838 )
	
	MisBeginTalk( "<t>经过上一次的战斗你成长了不少嘛，你虽然取得了我的信任，但是我还是想在考验你一下，毕竟5个土著战士对于一个人来说太简单了。<n><t>这次的目标是30个土著战士，如果你还能轻易完成的话，我将给与你更进一步的任务")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 837)
	MisBeginCondition(NoMission, 838)
	MisBeginCondition(NoRecord, 838)
	MisBeginAction(AddMission, 838)
	MisBeginAction(AddTrigger, 8381, TE_KILL, 248, 30 )
	MisCancelAction(ClearMission, 838)
	
	MisNeed(MIS_NEED_DESP, "请为萨南·格力德（646,2088）杀死30个土著战士")
	MisNeed(MIS_NEED_KILL, 248, 30, 10, 30)
	
	MisHelpTalk("目标是30个土著战士，如果怕了就现在放弃吧")
	MisResultTalk("你真是太棒了，拿去吧，这是你应得的奖励")
	MisResultCondition(NoRecord, 838)
	MisResultCondition(HasMission, 838)
	MisResultCondition(HasFlag, 838, 39)
	MisResultAction(ClearMission, 838)
	MisResultAction(SetRecord, 838)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 838, 10, 30 )
	RegCurTrigger( 8381 )


-----------------------------------真正的目的
	DefineMission( 839, "真正的目的", 839 )
	
	MisBeginTalk( "<t>不错，不错，孺子可教也，上两次战斗已经叫我看到了你的实力，我也该告诉你我真正的目的了。<n><t>我想你在战斗中也应该收集到一些土著盾牌了吧，如果你愿意把其中的12个给我，我会很愿意用手里这些金币与你交换的")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 839)
	MisBeginCondition(NoRecord, 839)
	MisBeginAction(AddMission, 839)
	MisBeginAction(AddTrigger, 8391, TE_GETITEM, 4914, 12 )
	MisCancelAction(ClearMission, 839)
	
	MisNeed(MIS_NEED_DESP, "请为萨南·格力德（646,2088）找回12个土著盾牌")
	MisNeed(MIS_NEED_ITEM, 4914, 12, 10, 12)
	
	MisHelpTalk("还在等什么，我需要12块土著盾牌，快去给我拿来")
	MisResultTalk("快看，这是什么，我心爱的土著盾牌啊，真难想象这个出自那么粗俗的土著之手，你可以走了，不要忘记了你的奖励。<n><t>让我再来看看这些美丽的东西，哦，哦……")
	MisResultCondition(NoRecord, 839)
	MisResultCondition(HasMission, 839)
	MisResultCondition(HasItem, 4914, 12)
	MisResultAction(TakeItem, 4914, 12)
	MisResultAction(ClearMission, 839)
	MisResultAction(SetRecord, 839)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4914 )	
	TriggerAction( 1, AddNextFlag, 839, 10, 12 )
	RegCurTrigger( 8391 )



-----------------------------------根雕爱好者
	DefineMission( 840, "根雕爱好者", 840 )
	
	MisBeginTalk( "<t>你好，我是一名根雕爱好者，最近正在构思一个大型根雕，但是，由于附近的树林都被怪物霸占着，我根本没有可以使用的树根。<n><t>如果，你不忙的话，能不能帮我到东边的树林里收集5根干枯的树枝，我会尽我所能的报答你的")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 840)
	MisBeginCondition(NoRecord, 840)
	MisBeginAction(AddMission, 840)
	MisBeginAction(AddTrigger, 8401, TE_GETITEM, 4915, 5 )
	MisCancelAction(ClearMission, 840)
	
	MisNeed(MIS_NEED_DESP, "帮海蓝·微风（622,2106）带回5个干枯的树根")
	MisNeed(MIS_NEED_ITEM, 4915, 5, 10, 5)
	
	MisHelpTalk("多谢你的帮忙，我需要5个干枯的树根，找到了记得来找我")
	MisResultTalk("我需要的就是这个，哦，我的灵感喷薄而出，真是太感谢你了，这是你的奖励，愿女神保佑你")
	MisResultCondition(NoRecord, 840)
	MisResultCondition(HasMission, 840)
	MisResultCondition(HasItem, 4915, 5)
	MisResultAction(TakeItem, 4915, 5)
	MisResultAction(ClearMission, 840)
	MisResultAction(SetRecord, 840)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 840, 10, 5 )
	RegCurTrigger( 8401 )

-----------------------------------采样
	DefineMission( 841, "采样", 841 )
	
	MisBeginTalk( "<t>你看，就像我说的一样，我已经知道了那种不灭蜡烛的配方，他是用一种独特的树根做成的，这种树根只有在补给站东边的树林里才能找到，但是，那边被枯木精占领着，你能到那边帮我找一根干枯的树根来让我做一下实验吗？<n><t>当然顺便再杀5个枯木精替补给站里的人们出口气")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 841)
	MisBeginCondition(NoRecord, 841)
	MisBeginAction(AddMission, 841)
	MisBeginAction(AddTrigger, 8411, TE_GETITEM, 4915, 1 )
	MisBeginAction(AddTrigger, 8412, TE_KILL, 107, 5 )
	MisCancelAction(ClearMission, 841)
	
	MisNeed(MIS_NEED_DESP, "杀死5个枯木精，并给賽·魔力（628,2095）带回一根干枯的树枝")
	MisNeed(MIS_NEED_ITEM, 4915, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 107, 5, 10, 5)
	
	MisHelpTalk("快去杀5个枯木精，拿1根干枯的树根给我")
	MisResultTalk("恩，我需要的就是这个，来，让我们看看它能给我们带来什么")
	MisResultCondition(NoRecord, 841)
	MisResultCondition(HasMission, 841)
	MisResultCondition(HasItem, 4915, 1)
	MisResultCondition(HasFlag, 841, 14)
	MisResultAction(TakeItem, 4915, 1)
	MisResultAction(ClearMission, 841)
	MisResultAction(SetRecord, 841)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 841, 20, 1 )
	RegCurTrigger( 8411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	107 )	
	TriggerAction( 1, AddNextFlag, 841, 10, 5 )
	RegCurTrigger( 8412 )

-----------------------------------不灭的蜡烛
	DefineMission( 842, "不灭的蜡烛", 842 )
	
	MisBeginTalk( "<t>嗨，朋友，在你的帮助下我已经彻底搞懂了不灭蜡烛的研制方法，现在就差大量的干枯的树根来批量生产了。<n><t>怎么样，帮我收集15根干枯的树根，我就把生产蜡烛后的获利分给你1/5")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 841)
	MisBeginCondition(NoMission, 842)
	MisBeginCondition(NoRecord, 842)
	MisBeginAction(AddMission, 842)
	MisBeginAction(AddTrigger, 8421, TE_GETITEM, 4915, 15 )
	MisCancelAction(ClearMission, 842)
	
	MisNeed(MIS_NEED_DESP, "为了量产蜡烛，帮賽·魔力（628,2095）带回15根干枯的树枝")
	MisNeed(MIS_NEED_ITEM, 4915, 15, 10, 15)
	
	MisHelpTalk("我需要15根干枯的树枝，你拿到多少了？")
	MisResultTalk("哈哈，有了这些我就可以制造大量的不灭蜡烛了，让女神祝福你，你让这个补给站从此远离了黑暗")
	MisResultCondition(NoRecord, 842)
	MisResultCondition(HasMission, 842)
	MisResultCondition(HasItem, 4915, 15)
	MisResultAction(TakeItem, 4915, 15)
	MisResultAction(ClearMission, 842)
	MisResultAction(SetRecord, 842)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 842, 10, 15 )
	RegCurTrigger( 8421 )

-----------------------------------黑色怪兽
	DefineMission( 843, "黑色怪兽", 843 )
	
	MisBeginTalk( "<t>最近，我忽然发现补给站外边多了很多头顶上插着蜡烛的黑色怪物，这种自虐的变态行为，我认为对补给站的小朋友们会造成不良影响。<n><t>麻烦你去帮我清理一下，顺便带根蜡烛回来，我对那个烧不尽的蜡烛很感兴趣。")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 843)
	MisBeginCondition(NoRecord, 843)
	MisBeginAction(AddMission, 843)
	MisBeginAction(AddTrigger, 8431, TE_GETITEM, 4823, 1 )
	MisBeginAction(AddTrigger, 8432, TE_KILL, 503, 5 )
	MisCancelAction(ClearMission, 843)
	
	MisNeed(MIS_NEED_DESP, "杀死5个黑色的泥浆怪，并给賽·魔力（628,2095）带回1根怪物头上的蜡烛")
	MisNeed(MIS_NEED_ITEM, 4823, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 503, 5, 10, 5)
	
	MisHelpTalk("黑色泥浆怪就在补给站北方，快去给我弄一根烧过的蜡烛来")
	MisResultTalk("恩，这个看起来太奇怪了，它在燃烧，却没有逐渐消失的迹象，这究竟是为什么，真是头痛")
	MisResultCondition(NoRecord, 843)
	MisResultCondition(HasMission, 843)
	MisResultCondition(HasItem, 4823, 1)
	MisResultCondition(HasFlag, 843, 14)
	MisResultAction(TakeItem, 4823, 1)
	MisResultAction(ClearMission, 843)
	MisResultAction(SetRecord, 843)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 843, 20, 1 )
	RegCurTrigger( 8431 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	503 )	
	TriggerAction( 1, AddNextFlag, 843, 10, 5 )
	RegCurTrigger( 8432 )

-----------------------------------蜡烛研究
	DefineMission( 844, "蜡烛研究", 844 )
	
	MisBeginTalk( "<t>哦，你还在这里啊，上次多亏了你帮忙，你给的那根蜡烛已经用完了，不是烧的，是试验中分解用掉的。<n><t>可是，我还是没有弄懂那个蜡烛的秘密，你能不能再帮我弄10根来，这次我一定能搞清它的结构，我发誓。")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 843)
	MisBeginCondition(NoMission, 844)
	MisBeginCondition(NoRecord, 844)
	MisBeginAction(AddMission, 844)
	MisBeginAction(AddTrigger, 8441, TE_GETITEM, 4823, 10 )
	MisCancelAction(ClearMission, 844)
	
	MisNeed(MIS_NEED_DESP, "帮賽·魔力（628,2095）弄到10根蜡烛继续他的研究")
	MisNeed(MIS_NEED_ITEM, 4823, 10, 10, 10)
	
	MisHelpTalk("我需要10根烧过的蜡烛继续我的研究，快去给我弄来")
	MisResultTalk("太好了，我又可以继续我的研究了，别离我这么近，我兴奋的时候是很危险的")
	MisResultCondition(NoRecord, 844)
	MisResultCondition(HasMission, 844)
	MisResultCondition(HasItem, 4823, 10)
	MisResultAction(TakeItem, 4823, 10)
	MisResultAction(ClearMission, 844)
	MisResultAction(SetRecord, 844)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 844, 10, 10 )
	RegCurTrigger( 8441 )


-----------------------------------岩石怪
	DefineMission( 845, "岩石怪", 845 )
	
	MisBeginTalk( "<t>最近，补给站北边的坚硬的岩石怪们好像异常的兴奋，补给站里好多人都被打伤了。<n><t>过路的旅人啊，你能不能帮我去那边去拆开几个岩石怪，看看他们究竟发生了什么，把结果带给我知道")
	MisBeginCondition(LvCheck, ">", 45 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 845)
	MisBeginCondition(NoRecord, 845)
	MisBeginAction(AddMission, 845)
	MisBeginAction(AddTrigger, 8451, TE_GETITEM, 4825, 1 )
	MisBeginAction(AddTrigger, 8452, TE_KILL, 505, 5 )
	MisCancelAction(ClearMission, 845)
	
	MisNeed(MIS_NEED_DESP, "干掉5个坚硬的岩石怪，带1个微光石头碎片回来给卡休·碎石（626,2100）")
	MisNeed(MIS_NEED_ITEM, 4825, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 505, 5, 10, 5)
	
	MisHelpTalk("你还没有找到坚硬的岩石怪吗？他们就在村子北方，越过了泥浆怪的领地后向东北方走就到了")
	MisResultTalk("这种微弱的光，我确认在那本书里见过，让我想想……")
	MisResultCondition(NoRecord, 845)
	MisResultCondition(HasMission, 845)
	MisResultCondition(HasItem, 4825, 1)
	MisResultCondition(HasFlag, 845, 14)
	MisResultAction(TakeItem, 4825, 1)
	MisResultAction(ClearMission, 845)
	MisResultAction(SetRecord, 845)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 845, 20, 1 )
	RegCurTrigger( 8451 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	505 )	
	TriggerAction( 1, AddNextFlag, 845, 10, 5 )
	RegCurTrigger( 8452 )

-----------------------------------微光石头的研究
	DefineMission( 846, "微光石头的研究", 846 )
	
	MisBeginTalk( "<t>对不起，我正忙着，没有看见你。<n><t>关于这个，你一定看出来了，就是你上回带回来的微光石头碎片，由于碎片的力量太小，我一时还无法获得足够的资料。<n><t>如果你现在有时间的话，能帮我再弄6个一样的东西吗？")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 845)
	MisBeginCondition(NoMission, 846)
	MisBeginCondition(NoRecord, 846)
	MisBeginAction(AddMission, 846)
	MisBeginAction(AddTrigger, 8461, TE_GETITEM, 4825, 6 )
	MisCancelAction(ClearMission, 846)
	
	MisNeed(MIS_NEED_DESP, "带6个微光石头碎片回来给卡休·碎石（626,2100）继续他的研究")
	MisNeed(MIS_NEED_ITEM, 4825, 6, 10, 6)
	
	MisHelpTalk("6块微光石头碎片你凑齐了吗？")
	MisResultTalk("有了这些我想我一定能想起些什么，对，一定能，我发誓，哦，对不起，忘记给你报酬了")
	MisResultCondition(NoRecord, 846)
	MisResultCondition(HasMission, 846)
	MisResultCondition(HasItem, 4825, 6)
	MisResultAction(TakeItem, 4825, 6)
	MisResultAction(ClearMission, 846)
	MisResultAction(SetRecord, 846)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 846, 10, 6 )
	RegCurTrigger( 8461 )


-----------------------------------验证
	DefineMission( 847, "验证", 847 )
	
	MisBeginTalk( "<t>我想，我已经找到了些线索，但是，还需要一些东西来验证一下。<n><t>本来不想麻烦你的，因为这毕竟不是什么安全的差事，但是，环顾了一下整个补给站，还是你去做最放心，那就是去补给站北边不灭武士聚集的地方，帮我弄一个不灭头盔回来，如果，你拒绝的话，我也不会怪你的")
	--MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 846)
	MisBeginCondition(NoMission, 847)
	MisBeginCondition(NoRecord, 847)
	MisBeginAction(AddMission, 847)
	MisBeginAction(AddTrigger, 8471, TE_GETITEM, 4917, 1 )
	MisBeginAction(AddTrigger, 8472, TE_KILL, 267, 5 )
	MisCancelAction(ClearMission, 847)
	
	MisNeed(MIS_NEED_DESP, "杀掉5个不灭武士，带他们的头盔回来给卡休·碎石（626,2100）")
	MisNeed(MIS_NEED_ITEM, 4917, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 267, 5, 10, 5)
	
	MisHelpTalk("再多杀几个不灭武士，拿到他们的头盔，他们就在补给站北面稍远一点的地方")
	MisResultTalk("啊，你做到了，我就说你一定行的，别站在那里了，快把它给我，让我验证一下我的理论吧")
	MisResultCondition(NoRecord, 847)
	MisResultCondition(HasMission, 847)
	MisResultCondition(HasItem, 4917, 1)
	MisResultCondition(HasFlag, 847, 14)
	MisResultAction(TakeItem, 4917, 1)
	MisResultAction(ClearMission, 847)
	MisResultAction(SetRecord, 847)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 847, 20, 1 )
	RegCurTrigger( 8471 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	267 )	
	TriggerAction( 1, AddNextFlag, 847, 10, 5 )
	RegCurTrigger( 8472 )


-----------------------------------不灭头盔
	DefineMission( 848, "不灭头盔", 848 )
	
	MisBeginTalk( "<t>你来得正好，快看这个头盔。<n><t>不认识了吧，这就是用你上回带给我的不灭头盔加上微光石头碎片打磨而成的，没想到微光石头碎片居然有这种功效，如果你愿意再帮我弄10个不灭头盔回来，我想我可以将生产头盔所得利益的一半分给你")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 848)
	MisBeginCondition(NoRecord, 848)
	MisBeginAction(AddMission, 848)
	MisBeginAction(AddTrigger, 8481, TE_GETITEM, 4917, 10 )
	MisCancelAction(ClearMission, 848)
	
	MisNeed(MIS_NEED_DESP, "带10个不灭头盔给卡休·碎石（626,2100）")
	MisNeed(MIS_NEED_ITEM, 4917, 10, 10, 10)
	
	MisHelpTalk("10个不灭头盔凑齐了吗？我等得好心急")
	MisResultTalk("有了这些，我就可以批量生产传说中的不灭头盔了，呵呵，怎么能让賽·魔力（628,2095）一个人赚钱呢")
	MisResultCondition(NoRecord, 848)
	MisResultCondition(HasMission, 848)
	MisResultCondition(HasItem, 4917, 10)
	MisResultAction(TakeItem, 4917, 10)
	MisResultAction(ClearMission, 848)
	MisResultAction(SetRecord, 848)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 848, 10, 10 )
	RegCurTrigger( 8481 )

-----------------------------------瓦解
	DefineMission( 849, "瓦解", 849 )
	
	MisBeginTalk( "<t>你是来雷霆堡参观的吗？如果是，那你真来的不是时候，现在这里正被怪围攻，特别是城西那群精英狼人战士，不停的骚扰居民，我想这可能是敌人的战术，但是，如果能杀死20个来犯的精英狼人战士，一定可以大大瓦解它们的士气。<n><t>怎么样，愿意帮帮我们吗？")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 849)
	MisBeginCondition(NoRecord, 849)
	MisBeginAction(AddMission, 849)
	MisBeginAction(AddTrigger, 8491, TE_KILL, 513, 20 )
	MisCancelAction(ClearMission, 849)

	MisNeed(MIS_NEED_DESP, "替海军总部参谋长·玛亚兹少校（653,1505）干掉20个精英狼人战士来证明你的实力")
	MisNeed(MIS_NEED_KILL, 513, 20, 10, 20)

	MisHelpTalk("杀死20个精英狼人战士，来证明你的勇敢")
	MisResultTalk("干得漂亮，你已经成功瓦解了敌人，也为你自己争得了荣誉，拿着，这是你应得的")
	MisResultCondition(NoRecord, 849)
	MisResultCondition(HasMission, 849)
	MisResultCondition(HasFlag, 849, 29)
	MisResultAction(ClearMission, 849)
	MisResultAction(SetRecord, 849)
	MisResultAction(AddExp,31809,31809)
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 513 )	
	TriggerAction( 1, AddNextFlag, 849, 10, 20 )
	RegCurTrigger( 8491 )

-----------------------------------血腥的锤子
	DefineMission( 850, "血腥的锤子", 850 )
	
	MisBeginTalk( "<t>看你的武器就知道你对武器没追求，我就不一样了，我是著名的武器收藏家，只有上等的武器才能进入我的房间。<n><t>最近，我看上了精英狼人战士的锤子，我知道那上面沾满了同胞的血，但是我还是义无反顾地迷恋上了它。<n><t>不管别人说什么，如果有人肯为我拿来10个血腥的锤子，我可以给他很高的报酬")
	MisBeginCondition(LvCheck, ">", 48 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 850)
	MisBeginCondition(NoRecord, 850)
	MisBeginAction(AddMission, 850)
	MisBeginAction(AddTrigger, 8501, TE_GETITEM, 4833, 10 )
	MisCancelAction(ClearMission, 850)
	
	MisNeed(MIS_NEED_DESP, "给道具商人·休布李维斯（741,1563）带10个血腥的锤子回来，满足他收藏的癖好")
	MisNeed(MIS_NEED_ITEM, 4833, 10, 10, 10)
	
	MisHelpTalk("我要10个血腥的锤子，快点拿给我")
	MisResultTalk("看哪，那完美的血色，只有从战场上收集的武器才具有价值，你说是吗？")
	MisResultCondition(NoRecord, 850)
	MisResultCondition(HasMission, 850)
	MisResultCondition(HasItem, 4833, 10)
	MisResultAction(TakeItem, 4833, 10)
	MisResultAction(ClearMission, 850)
	MisResultAction(SetRecord, 850)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)



	InitTrigger()
	TriggerCondition( 1, IsItem, 4833 )	
	TriggerAction( 1, AddNextFlag, 850, 10, 10 )
	RegCurTrigger( 8501 )


-----------------------------------第一种原料
	DefineMission( 851, "第一种原料", 851 )
	
	MisBeginTalk( "<t>没什么事请走开一点，我不想弄脏你的衣服，没人欣赏我的艺术，没人理解我的思维，唯一与我志同道合的人已经加入了亡灵的军团，现在，我又要找谁来讨论这个试验呢，唉，关键是，我还缺少几个至关重要的原料啊。<n><t>你还没走，那索性你为我弄来第一种原料吧？铁僵尸的僵尸的指甲，这就是我想要的第一种原料")
	MisBeginCondition(LvCheck, ">", 47 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 851)
	MisBeginCondition(NoRecord, 851)
	MisBeginAction(AddMission, 851)
	MisBeginAction(AddTrigger, 8511, TE_GETITEM, 4883, 8 )
	MisCancelAction(ClearMission, 851)
	
	MisNeed(MIS_NEED_DESP, "摩尔克人后裔·菲儿（651,1585）需要8个僵尸指甲进行实验，去帮他弄来")
	MisNeed(MIS_NEED_ITEM, 4883, 8, 10, 8)
	
	MisHelpTalk("8个僵尸的指甲，或者你留下来当我的原料")
	MisResultTalk("恩，快把你的手拿开，别弄脏了我的原料，你可以走了，顺便拿走你的奖励，我可不想人说我是赖账的人")
	MisResultCondition(NoRecord, 851)
	MisResultCondition(HasMission, 851)
	MisResultCondition(HasItem, 4883, 8)
	MisResultAction(TakeItem, 4883, 8)
	MisResultAction(ClearMission, 851)
	MisResultAction(SetRecord, 851)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4883 )	
	TriggerAction( 1, AddNextFlag, 851, 10, 8 )
	RegCurTrigger( 8511 )

-----------------------------------复仇
	DefineMission( 852, "复仇", 852 )
	
	MisBeginTalk( "<t>不要理我，我已经失去了活下去的勇气，那帮该死的僵尸，他们夺走了我妻儿的性命，我知道那不是它们的错，就想如果变成僵尸的妻子想要夺走我的性命我也会欣然接受一样。<n><t>但是，我还是痛恨那些僵尸，但我决不会自己出手的，谁知道哪个就是我的妻子呢，你能帮我出去杀15个铁僵尸，为我的妻儿报仇吗？")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 852)
	MisBeginCondition(NoRecord, 852)
	MisBeginAction(AddMission, 852)
	MisBeginAction(AddTrigger, 8521, TE_KILL, 41, 15 )
	MisCancelAction(ClearMission, 852)

	MisNeed(MIS_NEED_DESP, "替护卫长·迦略克（706,1465）杀死15个铁僵尸")
	MisNeed(MIS_NEED_KILL, 41, 15, 10, 15)

	MisHelpTalk("你有给那些该死的僵尸们以痛击吗？我等待你的好消息")
	MisResultTalk("谢谢，我想我的亲人们可以在地下安息了，再次感谢你，愿胜利之神与你同在")
	MisResultCondition(NoRecord, 852)
	MisResultCondition(HasMission, 852)
	MisResultCondition(HasFlag, 852, 24)
	MisResultAction(ClearMission, 852)
	MisResultAction(SetRecord, 852)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 41 )	
	TriggerAction( 1, AddNextFlag, 852, 10, 15 )
	RegCurTrigger( 8521 )

-----------------------------------第三种原料
	DefineMission( 853, "第三种原料", 853 )
	
	MisBeginTalk( "<t>我们已经不是第一次见面了，我也不要解释什么了，俄噢现在要第三种原料，巨大的曼陀罗刺，不用我告诉你去哪里找了吧，出城往西北，看见比人还大的曼陀罗的时候就到了")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 854)
	MisBeginCondition(NoMission, 853)
	MisBeginCondition(NoRecord, 853)
	MisBeginAction(AddMission, 853)
	MisBeginAction(AddTrigger, 8531, TE_GETITEM, 4834, 10 )
	MisCancelAction(ClearMission, 853)
	
	MisNeed(MIS_NEED_DESP, "巨大的曼陀罗针刺是摩尔克人后裔·菲儿（651,1585）进行实验的第三种原料，去帮他弄8个来")
	MisNeed(MIS_NEED_ITEM, 4834, 10, 10, 10)
	
	MisHelpTalk("拿10个巨大的曼陀罗针刺就那么难吗？")
	MisResultTalk("嘿嘿，快了，再有两种原料，只要再有两种，嘿嘿，嘿嘿，你还站在那里干什么，需要你的时候我会叫你的")
	MisResultCondition(NoRecord, 853)
	MisResultCondition(HasMission, 853)
	MisResultCondition(HasItem, 4834, 10)
	MisResultAction(TakeItem, 4834, 10)
	MisResultAction(ClearMission, 853)
	MisResultAction(SetRecord, 853)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4834 )	
	TriggerAction( 1, AddNextFlag, 853, 10, 10 )
	RegCurTrigger( 8531 )

-----------------------------------第二种原料
	DefineMission( 854, "第二种原料", 854 )
	
	MisBeginTalk( "<t>你上次的表现很好，就像我曾经跟你说过的一样，我需要的是几种原料，而僵尸的指甲不过是第一种原料，你愿意继续帮我吗？<n><t>我需要的第二种原料是僵尸的头发，而且，只要钢僵尸，不要搞错了")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 851)
	MisBeginCondition(NoMission, 854)
	MisBeginCondition(NoRecord, 854)
	MisBeginAction(AddMission, 854)
	MisBeginAction(AddTrigger, 8541, TE_GETITEM, 4884, 10 )
	MisCancelAction(ClearMission, 854)
	
	MisNeed(MIS_NEED_DESP, "摩尔克人后裔·菲儿（651,1585）有需要第二种原料了，这回是僵尸头发，他需要10根")
	MisNeed(MIS_NEED_ITEM, 4884, 10, 10, 10)
	
	MisHelpTalk("这次是10根僵尸头发，我不想再重复一遍了")
	MisResultTalk("别动，你的衣服上还有一根头发，对把它给我，少了一根我把你扔下锅")
	MisResultCondition(NoRecord, 854)
	MisResultCondition(HasMission, 854)
	MisResultCondition(HasItem, 4884, 10)
	MisResultAction(TakeItem, 4884, 10)
	MisResultAction(ClearMission, 854)
	MisResultAction(SetRecord, 854)
	MisResultAction(AddExp,35066,35066)
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4884 )	
	TriggerAction( 1, AddNextFlag, 854, 10, 10 )
	RegCurTrigger( 8541 )

-----------------------------------抵御亡灵
	DefineMission( 855, "抵御亡灵", 855 )
	
	MisBeginTalk( "<t>我心头的怒火已经平息了，我现在只求亲人们在天堂里幸福，但是，只要还有僵尸的存在就不会有安宁的日子，是时候给那帮僵尸一点教训了！<n><t>去帮我杀15个钢僵尸吧，我相信你的能力")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 852)
	MisBeginCondition(NoMission, 855)
	MisBeginCondition(NoRecord, 855)
	MisBeginAction(AddMission, 855)
	MisBeginAction(AddTrigger, 8551, TE_KILL, 42, 15 )
	MisCancelAction(ClearMission, 855)

	MisNeed(MIS_NEED_DESP, "替护卫长·迦略克（706,1465）杀死15个钢僵尸")
	MisNeed(MIS_NEED_KILL, 42, 15, 10, 15)

	MisHelpTalk("怎么样？那帮亡灵是不是吃到了苦头")
	MisResultTalk("你做到了，那帮该死的，不因该说该死不死的亡灵们都倒下了，你真勇敢，这是我的一点心意，收下吧")
	MisResultCondition(NoRecord, 855)
	MisResultCondition(HasMission, 855)
	MisResultCondition(HasFlag, 855, 24)
	MisResultAction(ClearMission, 855)
	MisResultAction(SetRecord, 855)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )	
	TriggerAction( 1, AddNextFlag, 855, 10, 15 )
	RegCurTrigger( 8551 )

-----------------------------------土著围城
	DefineMission( 856, "土著围城", 856 )
	
	MisBeginTalk( "<t>精英狼人战士已经老实了，现在我们该来教训一下在城外叫嚣的那帮土人了！<n><t>如果你仍旧保持着昂扬的斗志的话，去帮我干掉5个土著祭师和15个灵巧的土著人吧，让他们看看你的力量")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 856)
	MisBeginCondition(NoRecord, 856)
	MisBeginAction(AddMission, 856)
	MisBeginAction(AddTrigger, 8561, TE_KILL, 515, 15 )
	MisBeginAction(AddTrigger, 8562, TE_KILL, 38, 5 )
	MisCancelAction(ClearMission, 856)

	MisNeed(MIS_NEED_DESP, "收拾掉5个土著祭师和15个灵巧的土著人，然后回来跟海军总部参谋长·玛亚兹少校（653,1505）报告")
	MisNeed(MIS_NEED_KILL, 515, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 38, 5, 30, 5)

	MisHelpTalk("土著们还在城下叫嚣，你都在做什么？")
	MisResultTalk("哈哈，这下那帮土著人要收敛一阵子了，这都是你的功劳，我的勇士")
	MisResultCondition(NoRecord, 856)
	MisResultCondition(HasMission, 856)
	MisResultCondition(HasFlag, 856, 24)
	MisResultCondition(HasFlag, 856, 34)
	MisResultAction(ClearMission, 856)
	MisResultAction(SetRecord, 856)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 515 )	
	TriggerAction( 1, AddNextFlag, 856, 10, 15 )
	RegCurTrigger( 8561 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 38 )	
	TriggerAction( 1, AddNextFlag, 856, 30, 5 )
	RegCurTrigger( 8562 )

-----------------------------------战争的奖励
	DefineMission( 857, "战争的奖励", 857 )
	
	MisBeginTalk( "<t>你说你是击退精英狼人战士的英雄，还说你教训过城外的土人？<n><t>别说笑了，我这里正好准备了一些东西打算送给那位英雄当战争的奖励呢，如果你能拿出什么证据的话，这些就是你的了")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 857)
	MisBeginCondition(NoRecord, 857)
	MisBeginAction(AddMission, 857)
	MisBeginAction(AddTrigger, 8571, TE_GETITEM, 4919, 5 )
	MisBeginAction(AddTrigger, 8572, TE_GETITEM, 4835, 5 )
	MisCancelAction(ClearMission, 857)
	
	MisNeed(MIS_NEED_DESP, "护卫·尼松（711,1414）需要5个土著面具和5个奇怪的骨头，带给他，证明你的功绩")
	MisNeed(MIS_NEED_ITEM, 4919, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4835, 5, 20, 5)
	
	MisHelpTalk("走开，你还没有拿来我想要的东西")
	MisResultTalk("哦，我承认你是真的英雄，给你，这是你应得的战争的奖励")
	MisResultCondition(NoRecord, 857)
	MisResultCondition(HasMission, 857)
	MisResultCondition(HasItem, 4919, 5)
	MisResultCondition(HasItem, 4835, 5)
	MisResultAction(TakeItem, 4835, 5)
	MisResultAction(TakeItem, 4919, 5)
	MisResultAction(ClearMission, 857)
	MisResultAction(SetRecord, 857)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4919 )	
	TriggerAction( 1, AddNextFlag, 857, 10, 5 )
	RegCurTrigger( 8571 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4835 )	
	TriggerAction( 1, AddNextFlag, 857, 20, 5 )
	RegCurTrigger( 8572 )

-----------------------------------新的武器
	DefineMission( 858, "新的武器", 858 )
	
	MisBeginTalk( "<t>随着战争的继续，我们同怪物已经难分胜负了，现在急需要开发一种新型的武器，但是，我们手头的资料不足，而又没有人手去收集资料。<n><t>如果你愿意帮忙的话，请从守护天使和圣林猎手的手中分别取得折断的天使之杖和损坏的圣林之弓给我")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 858)
	MisBeginCondition(NoRecord, 858)
	MisBeginAction(AddMission, 858)
	MisBeginAction(AddTrigger, 8581, TE_GETITEM, 4918, 1 )
	MisBeginAction(AddTrigger, 8582, TE_GETITEM, 4921, 1 )
	MisCancelAction(ClearMission, 858)
	
	MisNeed(MIS_NEED_DESP, "海军总部参谋长·玛亚兹少校（653,1505）需要折断的天使之杖和损坏的圣林之弓来研究开发武器")
	MisNeed(MIS_NEED_ITEM, 4918, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4921, 1, 20, 1)
	
	MisHelpTalk("我需要折断的天使之杖和损坏的圣林之弓，快把他们带给我")
	MisResultTalk("虽然有些破损，不过仍旧能看出往日的辉煌，我们的研究员一定可以在这个的基础上做出上好的武器，愿战神祝福你")
	MisResultCondition(NoRecord, 858)
	MisResultCondition(HasMission, 858)
	MisResultCondition(HasItem, 4918, 1)
	MisResultCondition(HasItem, 4921, 1)
	MisResultAction(TakeItem, 4921, 1)
	MisResultAction(TakeItem, 4918, 1)
	MisResultAction(ClearMission, 858)
	MisResultAction(SetRecord, 858)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4918 )	
	TriggerAction( 1, AddNextFlag, 858, 10, 1 )
	RegCurTrigger( 8581 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4921 )	
	TriggerAction( 1, AddNextFlag, 858, 20, 1 )
	RegCurTrigger( 8582 )

-----------------------------------堕落天使
	DefineMission( 859, "堕落天使", 859 )
	
	MisBeginTalk( "<t>你见过城外的守护天使吗？那样也能叫做天使吗？<n><t>让这样的生物存在只能祸害人间，请你帮帮忙，让这些堕落的天使安息吧")
	MisBeginCondition(LvCheck, ">", 50 )
	--MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 859)
	MisBeginCondition(NoRecord, 859)
	MisBeginAction(AddMission, 859)
	MisBeginAction(AddTrigger, 8591, TE_KILL, 284, 12 )
	MisCancelAction(ClearMission, 859)

	MisNeed(MIS_NEED_DESP, "杀死12个守护天使，然后回到护卫·尼松（711,1414）那里")
	MisNeed(MIS_NEED_KILL, 284, 12, 10, 12)

	MisHelpTalk("快去让那些堕落的天使安息吧")
	MisResultTalk("哦，可怜的天使，但愿这样能让他们重新返回天国")
	MisResultCondition(NoRecord, 859)
	MisResultCondition(HasMission, 859)
	MisResultCondition(HasFlag, 859, 21)
	MisResultAction(ClearMission, 859)
	MisResultAction(SetRecord, 859)
	MisResultAction(AddExp,42522,42522)
	MisResultAction(AddMoney,1235,1235)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 859, 10, 12 )
	RegCurTrigger( 8591 )

-----------------------------------远征
	DefineMission( 860, "远征", 860 )
	
	MisBeginTalk( "<t>城堡附近的怪们已经开始溃败了，但是，深藏在圣雪山深处的敌人还在蠢蠢欲动，我们还没到放松的时候，最近，我们将组织一次远征活动，勇士阿，你愿意参加吗？<n><t>这次的敌人是堕落的不灭武士和骷髅神箭手")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 858)
	MisBeginCondition(NoMission, 860)
	MisBeginCondition(NoRecord, 860)
	MisBeginAction(AddMission, 860)
	MisBeginAction(AddTrigger, 8601, TE_KILL, 521, 8 )
	MisBeginAction(AddTrigger, 8602, TE_KILL, 541, 8 )
	MisCancelAction(ClearMission, 860)

	MisNeed(MIS_NEED_DESP, "干掉堕落的不灭武士和骷髅神箭手各8个，那正是海军总部参谋长·玛亚兹少校（653,1505）所需要的 ")
	MisNeed(MIS_NEED_KILL, 521, 8, 10, 8)
	MisNeed(MIS_NEED_KILL, 541, 8, 30, 8)

	MisHelpTalk("你还在这里干什么，远征的号角已经吹响了，消灭骷髅们，给这个世界以宁静")
	MisResultTalk("这次远征的结果不错，不仅打击了敌人，更为我们带回了可靠的情报，希望你永远能像这样骁勇善战，我的勇士")
	MisResultCondition(NoRecord, 860)
	MisResultCondition(HasMission, 860)
	MisResultCondition(HasFlag, 860, 17)
	MisResultCondition(HasFlag, 860, 37)
	MisResultAction(ClearMission, 860)
	MisResultAction(SetRecord, 860)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 521 )	
	TriggerAction( 1, AddNextFlag, 860, 10, 8 )
	RegCurTrigger( 8601 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )	
	TriggerAction( 1, AddNextFlag, 860, 30, 8 )
	RegCurTrigger( 8602 )

-----------------------------------堕落的头盔
	DefineMission( 861, "堕落的头盔", 861 )
	
	MisBeginTalk( "<t>听说过远征计划吗？<n><t>不知道你有没有参加，这次远征的目标之一堕落的不灭武士所佩戴的堕落的头盔，正是我向往的收藏品之一，要是谁能给我5个，我会感激不尽的")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 850)
	MisBeginCondition(NoMission, 861)
	MisBeginCondition(NoRecord, 861)
	MisBeginAction(AddMission, 861)
	MisBeginAction(AddTrigger, 8611, TE_GETITEM, 4837, 5 )
	MisCancelAction(ClearMission, 861)
	
	MisNeed(MIS_NEED_DESP, "替道具商人·休布李维斯（741,1563）收集5个堕落的头盔")
	MisNeed(MIS_NEED_ITEM, 4837, 5, 10, 5)
	
	MisHelpTalk("堕落的头盔，堕落的头盔，还需要我再重复吗？我要5个堕落的头盔")
	MisResultTalk("多么完美的曲线啊，快带上他让我看看")
	MisResultCondition(NoRecord, 861)
	MisResultCondition(HasMission, 861)
	MisResultCondition(HasItem, 4837, 5)
	MisResultAction(TakeItem, 4837, 5)
	MisResultAction(ClearMission, 861)
	MisResultAction(SetRecord, 861)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4837 )	
	TriggerAction( 1, AddNextFlag, 861, 10, 5 )
	RegCurTrigger( 8611 )


-----------------------------------第四种原料
	DefineMission( 862, "第四种原料", 862 )
	
	MisBeginTalk( "<t>第四种原料是完整的肋骨，至于产地吗，是一种叫做骷髅神箭手的怪物。<n><t>我可以告诉你，还没有几个人能活着带回他的肋骨，上回回来一个，不过肋骨是插在他背上的，你还想去吗？")
	MisBeginCondition(LvCheck, ">", 52 )
	MisBeginCondition(HasRecord, 853)
	MisBeginCondition(NoMission, 862)
	MisBeginCondition(NoRecord, 862)
	MisBeginAction(AddMission, 862)
	MisBeginAction(AddTrigger, 8621, TE_GETITEM, 4858, 8 )
	MisCancelAction(ClearMission, 862)
	
	MisNeed(MIS_NEED_DESP, "摩尔克人后裔·菲儿（651,1585）有需要原料了，8个完整的肋骨，多滑稽的原料阿")
	MisNeed(MIS_NEED_ITEM, 4858, 8, 10, 8)
	
	MisHelpTalk("空着手还敢回来，我看你的肋骨也不错的样子……")
	MisResultTalk("看来我要对你另眼相看了，完整的肋骨你都能拿到，不过，看上去你也很狼狈啊")
	MisResultCondition(NoRecord, 862)
	MisResultCondition(HasMission, 862)
	MisResultCondition(HasItem, 4858, 8)
	MisResultAction(TakeItem, 4858, 8)
	MisResultAction(ClearMission, 862)
	MisResultAction(SetRecord, 862)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4858 )	
	TriggerAction( 1, AddNextFlag, 862, 10, 8 )
	RegCurTrigger( 8621 )

-----------------------------------圣林考验
	DefineMission( 863, "圣林考验", 863 )
	
	MisBeginTalk( "<t>沐浴圣林的阳光，接受守林人的考验，你将获得神圣的力量，去吧，挑战10名圣林猎手，愿女神与你同在")
	MisBeginCondition(LvCheck, ">", 52 )
	--MisBeginCondition(HasRecord, 863)
	MisBeginCondition(NoMission, 863)
	MisBeginCondition(NoRecord, 863)
	MisBeginAction(AddMission, 863)
	MisBeginAction(AddTrigger, 8631, TE_KILL, 261, 10 )
	MisCancelAction(ClearMission, 863)

	MisNeed(MIS_NEED_DESP, "杀死10个圣林猎手来通过少女·辛蒂（740,1451）的考验 ")
	MisNeed(MIS_NEED_KILL, 261, 10, 10, 10)

	MisHelpTalk("你的心还有黑暗吗？现在放弃还来得及")
	MisResultTalk("祝贺你，你已经通过了圣林的考验，女神会时刻与你同在")
	MisResultCondition(NoRecord, 863)
	MisResultCondition(HasMission, 863)
	MisResultCondition(HasFlag, 863, 19)
	MisResultAction(ClearMission, 863)
	MisResultAction(SetRecord, 863)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 261 )	
	TriggerAction( 1, AddNextFlag, 863, 10, 10 )
	RegCurTrigger( 8631 )


-----------------------------------最后一种原料
	DefineMission( 864, "最后一种原料", 864 )
	
	MisBeginTalk( "<t>想在你想说放弃也来不及了，就只剩最后一种原料了，如果你放弃我现在就杀死你，如果你成功了，我允许你跟我一同永生，哈哈！<n><t>最后一种原料是尸骨碎片，叫诅咒古尸的家伙多的是")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 862)
	MisBeginCondition(NoMission, 864)
	MisBeginCondition(NoRecord, 864)
	MisBeginAction(AddMission, 864)
	MisBeginAction(AddTrigger, 8641, TE_GETITEM, 4886, 10 )
	MisCancelAction(ClearMission, 864)
	
	MisNeed(MIS_NEED_DESP, "10个尸骨碎片，摩尔克人后裔·菲儿（651,1585）最后的原料需求")
	MisNeed(MIS_NEED_ITEM, 4886, 10, 10, 10)
	
	MisHelpTalk("最后一个了，还要我再强调一次吗？我要10个尸骨碎片")
	MisResultTalk("没什么能阻挡我了，看着这是最后的原料，我将成为第一个永生的人")
	MisResultCondition(NoRecord, 864)
	MisResultCondition(HasMission, 864)
	MisResultCondition(HasItem, 4886, 10)
	MisResultAction(TakeItem, 4886, 10)
	MisResultAction(ClearMission, 864)
	MisResultAction(SetRecord, 864)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4886 )	
	TriggerAction( 1, AddNextFlag, 864, 10, 10 )
	RegCurTrigger( 8641 )

-----------------------------------幕后的阴影
	DefineMission( 865, "幕后的阴影", 865 )
	
	MisBeginTalk( "<t>几经调查我终于知道了指挥僵尸军团的幕后阴影，他们就是诅咒古尸，一群让人恶心的发疯的怪物。<n><t>发发善心，帮我干掉这最后的邪恶吧，让战火中的亡灵们安息")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 855)
	MisBeginCondition(NoMission, 865)
	MisBeginCondition(NoRecord, 865)
	MisBeginAction(AddMission, 865)
	MisBeginAction(AddTrigger, 8651, TE_KILL, 52, 10 )
	MisCancelAction(ClearMission, 865)

	MisNeed(MIS_NEED_DESP, "杀死10个诅咒古尸，回去跟护卫长·迦略克（706,1465）报告 ")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisHelpTalk("搞定幕后的阴影了吗？只有他们不在了，我的家人才能安息")
	MisResultTalk("最后的罪恶也消失了，愿所有战火中的亡灵安息，阿门")
	MisResultCondition(NoRecord, 865)
	MisResultCondition(HasMission, 865)
	MisResultCondition(HasFlag, 865, 19)
	MisResultAction(ClearMission, 865)
	MisResultAction(SetRecord, 865)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )	
	TriggerAction( 1, AddNextFlag, 865, 10, 10 )
	RegCurTrigger( 8651 )

-----------------------------------最后的敌人
	DefineMission( 866, "最后的敌人", 866 )
	
	MisBeginTalk( "<t>远征很成功，现在敌人剩下的据点只有西边海岸了，不过那里也集结着敌人最强大的火力，我不主张非军事人员前往，不过，如果你坚持的话，我们将无比欢迎。<n><t>这次的目标是骷髅武士队长，每人的任务份额是10个，听明白了吗？")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 866)
	MisBeginCondition(NoRecord, 866)
	MisBeginAction(AddMission, 866)
	MisBeginAction(AddTrigger, 8661, TE_KILL, 565, 10 )
	MisBeginAction(AddTrigger, 8662, TE_GETITEM, 4879, 1 )
	MisCancelAction(ClearMission, 866)

	MisNeed(MIS_NEED_DESP, "杀死10个骷髅武士队长，并给海军总部参谋长·玛亚兹少校（653,1505）带去1张武士队长之证，来证明你的勇敢 ")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4879, 1, 20, 1)

	MisHelpTalk("惧怕是当然的，现在回头还来得及，10个骷髅武士队长可不是闹着玩的")
	MisResultTalk("最后的敌人已经被你消灭了，你是当之无愧的战神，雷霆堡的居民将把你的功绩歌颂")
	MisResultCondition(NoRecord, 866)
	MisResultCondition(HasMission, 866)
	MisResultCondition(HasFlag, 866, 19)
	MisResultCondition(HasItem, 4879, 1)
	MisResultAction(TakeItem, 4879, 1)
	MisResultAction(ClearMission, 866)
	MisResultAction(SetRecord, 866)
	MisResultAction(AddExp,56496,56496)
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )	
	TriggerAction( 1, AddNextFlag, 866, 10, 10 )
	RegCurTrigger( 8661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4879 )	
	TriggerAction( 1, AddNextFlag, 866, 20, 1 )
	RegCurTrigger( 8662 )

-----------------------------------暗血考验
	DefineMission( 867, "暗血考验", 867 )
	
	MisBeginTalk( "<t>远离光明，释放心中的邪恶，没人比你拥有更强大的力量，接受暗血的洗礼，把你的生命与暗血猎手碰撞，你需要战胜15名暗血猎手以证明你比黑暗还恐怖的力量")
	MisBeginCondition(LvCheck, ">", 54 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 867)
	MisBeginCondition(NoRecord, 867)
	MisBeginAction(AddMission, 867)
	MisBeginAction(AddTrigger, 8671, TE_KILL, 666, 15 )
	MisCancelAction(ClearMission, 867)

	MisNeed(MIS_NEED_DESP, "干掉15个暗血猎手，这就是你在少女·辛蒂（740,1451）处需要完成的考验 ")
	MisNeed(MIS_NEED_KILL, 666, 15, 10, 15 )

	MisHelpTalk("你的心还存在光明吗？现在放弃还来得及")
	MisResultTalk("强者啊，你已经在暗血中受到了洗礼，在今后的路途上，你必将无往不胜")
	MisResultCondition(NoRecord, 867)
	MisResultCondition(HasMission, 867)
	MisResultCondition(HasFlag, 867, 24)
	MisResultAction(ClearMission, 867)
	MisResultAction(SetRecord, 867)
	MisResultAction(AddExp,62032,62032)
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )	
	TriggerAction( 1, AddNextFlag, 867, 10, 15 )
	RegCurTrigger( 8671 )

-----------------------------------暗之弓
	DefineMission( 868, "暗之弓", 868 )
	
	MisBeginTalk( "<t>血腥的锤子，堕落的头盔如果跟某样东西比起来不过都是垃圾，不要问我那是什么，如果一个人连暗之弓都没听说过，就失去了活着的价值了。<n><t>如果你能帮我弄来5把，我可以用一半的家产跟你换")
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 868)
	MisBeginCondition(NoRecord, 868)
	MisBeginAction(AddMission, 868)
	MisBeginAction(AddTrigger, 8681, TE_GETITEM, 4922, 5 )
	MisCancelAction(ClearMission, 868)
	
	MisNeed(MIS_NEED_DESP, "替道具商人·休布李维斯（741,1563）弄到5个暗之弓来增加他的收藏")
	MisNeed(MIS_NEED_ITEM, 4922, 5, 10, 5)
	
	MisHelpTalk("除了暗之弓，我别无所求，快去弄5把给我")
	MisResultTalk("这种神秘的黑暗，这种美丽的弧线，这正是我想要的收集品，你真是帮了我的大忙，这是你的报酬")
	MisResultCondition(NoRecord, 868)
	MisResultCondition(HasMission, 868)
	MisResultCondition(HasItem, 4922, 5)
	MisResultAction(TakeItem, 4922, 5)
	MisResultAction(ClearMission, 868)
	MisResultAction(SetRecord, 868)
	MisResultAction(AddExp,62032,62032)	
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4922 )	
	TriggerAction( 1, AddNextFlag, 868, 10, 5 )
	RegCurTrigger( 8681 )


-----------------------------------抵抗雪巨人
	DefineMission( 869, "抵抗雪巨人", 869 )
	
	MisBeginTalk( "<t>最近这里遭到了雪巨人的入侵，虽然以前也有过类似的现象，不过，这次更有组织性，不知道是不是有什么原因，你原因帮我们抵抗这些雪巨人吗？<n><t>当然，初期，我们只会让你去杀迟钝雪巨人，这些迟钝的家伙经常出现在（2471,502）附近，怎样，接受吗？")
	MisBeginCondition(LvCheck, ">", 35 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 869)
	MisBeginCondition(NoRecord, 869)
	MisBeginAction(AddMission, 869)
	MisBeginAction(AddTrigger, 8691, TE_KILL, 516, 15 )
	MisCancelAction(ClearMission, 869)

	MisNeed(MIS_NEED_DESP, "杀死15个迟钝雪巨人，然后向法迪尔（2680,657）报告 ")
	MisNeed(MIS_NEED_KILL, 516, 15, 10, 15 )

	MisHelpTalk("你还在这里干什么，雪巨人已经要打到补给站了")
	MisResultTalk("你在抵抗雪巨人的战斗中表现出色，希望你在以后的战斗中也能继续保持")
	MisResultCondition(NoRecord, 869)
	MisResultCondition(HasMission, 869)
	MisResultCondition(HasFlag, 869, 24)
	MisResultAction(ClearMission, 869)
	MisResultAction(SetRecord, 869)
	MisResultAction(AddExp,9170,9170)	
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 516 )	
	TriggerAction( 1, AddNextFlag, 869, 10, 15 )
	RegCurTrigger( 8691 )

-----------------------------------狼人入侵
	DefineMission( 870, "狼人入侵", 870 )
	
	MisBeginTalk( "<t>又到了狼人们活动的季节，看来这次又有人家的小孩要不保了，有谁可以站出来保卫我们的村庄呢，陌生人，你愿意吗？帮我们消灭一些狼人战士吧。<n><t>这群该死的狼人现在在（2580,553）附近游荡。")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 870)
	MisBeginCondition(NoRecord, 870)
	MisBeginAction(AddMission, 870)
	MisBeginAction(AddTrigger, 8701, TE_KILL, 271, 15 )
	MisCancelAction(ClearMission, 870)

	MisNeed(MIS_NEED_DESP, "替尼里艾亚·长发（2675,631）杀死15个狼人战士，证明你守卫村庄的决心 ")
	MisNeed(MIS_NEED_KILL, 271, 15, 10, 15 )

	MisHelpTalk("狼人们就在补给站西边，快去干掉他们")
	MisResultTalk("看来狼人们会老实一阵子了，你的存在让村子更加安全了，谢谢你")
	MisResultCondition(NoRecord, 870)
	MisResultCondition(HasMission, 870)
	MisResultCondition(HasFlag, 870, 24)
	MisResultAction(ClearMission, 870)
	MisResultAction(SetRecord, 870)
	MisResultAction(AddExp,10238,10238)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 271 )	
	TriggerAction( 1, AddNextFlag, 870, 10, 15 )
	RegCurTrigger( 8701 )

-----------------------------------收破烂
	DefineMission( 871, "收破烂", 871 )
	
	MisBeginTalk( "<t>别看我身边都是一些破烂，他们可是很值钱的，如果，你能帮我弄到生锈的大刀，破损的锤子，破烂的木棒每样5把，我一样会给你报酬！<n><t>你可以在（2580，553）附近的狼人，（2811,565）附近的迟钝的雪魔人，（2471,502）附近的迟钝的雪巨人身上找到它们。")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 871)
	MisBeginCondition(NoRecord, 871)
	MisBeginAction(AddMission, 871)
	MisBeginAction(AddTrigger, 8711, TE_GETITEM, 4836, 5 )
	MisBeginAction(AddTrigger, 8712, TE_GETITEM, 4907, 5 )
	MisBeginAction(AddTrigger, 8713, TE_GETITEM, 4838, 5 )
	MisCancelAction(ClearMission, 871)
	
	MisNeed(MIS_NEED_DESP, "替米开朗费罗（2662,648）从战场上收集生锈的大刀，破损的锤子，破烂的木棒各5个")
	MisNeed(MIS_NEED_ITEM, 4836, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4907, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4838, 5, 10, 5)
	
	MisHelpTalk("我要的都是一些垃圾，你居然还说弄不到，我真不知道谁什么好")
	MisResultTalk("哈哈，把这些东西拿给雷霆的道具商人·休布李维斯,又可以骗到一笔钱，哈哈哈")
	MisResultCondition(NoRecord, 871)
	MisResultCondition(HasMission, 871)
	MisResultCondition(HasItem, 4836, 5)
	MisResultCondition(HasItem, 4907, 5)
	MisResultCondition(HasItem, 4838, 5)
	MisResultAction(TakeItem, 4836, 5)
	MisResultAction(TakeItem, 4907, 5)
	MisResultAction(TakeItem, 4838, 5)
	MisResultAction(ClearMission, 871)
	MisResultAction(SetRecord, 871)
	MisResultAction(AddExp,10238,10238)	
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4836 )	
	TriggerAction( 1, AddNextFlag, 871, 10, 5 )
	RegCurTrigger( 8711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4907 )	
	TriggerAction( 1, AddNextFlag, 871, 20, 5 )
	RegCurTrigger( 8712 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4838 )	
	TriggerAction( 1, AddNextFlag, 871, 30, 5 )
	RegCurTrigger( 8713 )


-----------------------------------升级的战争
	DefineMission( 872, "升级的战争", 872 )
	
	MisBeginTalk( "<t>战争升级了，现在我们面对的将是更加强大的雪巨人，而不是笨拙的迟钝雪巨人，怎么样，还愿意继续这个刺激的任务吗？<n><t>敌人目前已经到了（2587,455）附近了。")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(HasRecord, 869)
	MisBeginCondition(NoMission, 872)
	MisBeginCondition(NoRecord, 872)
	MisBeginAction(AddMission, 872)
	MisBeginAction(AddTrigger, 8721, TE_KILL, 194, 15 )
	MisCancelAction(ClearMission, 872)

	MisNeed(MIS_NEED_DESP, "法迪尔（2680,657）希望你杀死15个雪巨人 ")
	MisNeed(MIS_NEED_KILL, 194, 15, 10, 15 )

	MisHelpTalk("战争已经升级，想保住性命就只努力杀敌了，你杀了几只雪巨人了？")
	MisResultTalk("你果然没有辜负我的希望，即使战争再怎么升级，我相信只要有你在我们一定可以取得胜利")
	MisResultCondition(NoRecord, 872)
	MisResultCondition(HasMission, 872)
	MisResultCondition(HasFlag, 872, 24)
	MisResultAction(ClearMission, 872)
	MisResultAction(SetRecord, 872)
	MisResultAction(AddExp,11413,11413)	
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 872, 10, 15 )
	RegCurTrigger( 8721 )

-----------------------------------巨人大刀
	DefineMission( 873, "巨人大刀", 873 )
	
	MisBeginTalk( "<t>还记得我吗？就是那个收破烂的，这次我不要破烂了，我要巨人大刀，给我弄来5把，我会给你很高的报酬！<n><t>当然，你可以从（2587,455）附近的雪巨人身上找到这些我想要的东西。")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 873)
	MisBeginCondition(NoRecord, 873)
	MisBeginAction(AddMission, 873)
	MisBeginAction(AddTrigger, 8731, TE_GETITEM, 4861, 5 )
	MisCancelAction(ClearMission, 873)
	
	MisNeed(MIS_NEED_DESP, "收集5把巨人大刀给米开朗费罗（2662,648）")
	MisNeed(MIS_NEED_ITEM, 4861, 5, 10, 5)
	
	MisHelpTalk("带给我5把巨人大刀，否则别来见我")
	MisResultTalk("这就是巨人的大刀吗，又可以捞一笔了")
	MisResultCondition(NoRecord, 873)
	MisResultCondition(HasMission, 873)
	MisResultCondition(HasItem, 4861, 5)
	MisResultAction(TakeItem, 4861, 5)
	MisResultAction(ClearMission, 873)
	MisResultAction(SetRecord, 873)
	MisResultAction(AddExp,11413,11413)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4861 )	
	TriggerAction( 1, AddNextFlag, 873, 10, 5 )
	RegCurTrigger(8731)

-----------------------------------抵抗雪魔人
	DefineMission( 874, "抵抗雪魔人", 874 )
	
	MisBeginTalk( "<t>你可能已经参与过抵抗雪巨人，但是，如果你把雪魔人当作雪巨人的话，你就死定了，即使最迟钝的雪魔人也比正常的雪巨人敏捷，小心才是长寿的秘方。<n><t>这次，我们要训练新人对抗雪魔人，目标是（2811,565）附近出没的迟钝的雪魔人，你要来吗？")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 874)
	MisBeginCondition(NoRecord, 874)
	MisBeginAction(AddMission, 874)
	MisBeginAction(AddTrigger, 8741, TE_KILL, 517, 12 )
	MisCancelAction(ClearMission, 874)

	MisNeed(MIS_NEED_DESP, "杀死12个迟钝的雪魔人，然后回去向法迪尔（2680,657）报告 ")
	MisNeed(MIS_NEED_KILL, 517, 12, 10, 12 )

	MisHelpTalk("雪魔人跟雪巨人可是不同的，不想死的就放弃吧")
	MisResultTalk("战胜了迟钝的雪魔人没什么好骄傲的，只有向更高目标看齐的人才能有进步")
	MisResultCondition(NoRecord, 874)
	MisResultCondition(HasMission, 874)
	MisResultCondition(HasFlag, 874, 21)
	MisResultAction(ClearMission, 874)
	MisResultAction(SetRecord, 874)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 517 )	
	TriggerAction( 1, AddNextFlag, 874, 10, 12 )
	RegCurTrigger( 8741 )

-----------------------------------捕猎蜗牛
	DefineMission( 875, "捕猎蜗牛", 875 )
	
	MisBeginTalk( "<t>这个补给站的日常用品都靠捕猎而来，但是，捕猎也不是一帆风顺的，怎么样，要不要试试，今天的内容是捕猎钢铁蜗牛，每人要捕杀20只才行哦。<n><t>准备好了就来吧，这些披着硬壳的家伙通常都在（2733,651）附近出没")
	MisBeginCondition(LvCheck, ">", 38 )
	--MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 875)
	MisBeginCondition(NoRecord, 875)
	MisBeginAction(AddMission, 875)
	MisBeginAction(AddTrigger, 8751, TE_KILL, 501, 20 )
	MisBeginAction(AddTrigger, 8752, TE_GETITEM, 4821, 6 )
	MisCancelAction(ClearMission, 875)

	MisNeed(MIS_NEED_DESP, "狩猎20个钢铁蜗牛，带6个它们的角给尼里艾亚·长发（2675,631） ")
	MisNeed(MIS_NEED_KILL, 501, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4821, 6, 40, 6 )

	MisHelpTalk("只是一些蜗牛而已，快带些它们的触角给我")
	MisResultTalk("不错哦，你已经证明了你有做猎人的天赋，继续努力")
	MisResultCondition(NoRecord, 875)
	MisResultCondition(HasMission, 875)
	MisResultCondition(HasFlag, 875, 29)
	MisResultCondition(HasItem, 4821, 6)
	MisResultAction(TakeItem, 4821, 6)
	MisResultAction(ClearMission, 875)
	MisResultAction(SetRecord, 875)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 501 )	
	TriggerAction( 1, AddNextFlag, 875, 10, 20 )
	RegCurTrigger( 8751 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4821 )	
	TriggerAction( 1, AddNextFlag, 875, 40, 6 )
	RegCurTrigger( 8752 )

-----------------------------------新的侵略者
	DefineMission( 876, "新的侵略者", 876 )
	
	MisBeginTalk( "<t>狼人战士刚刚有些收敛，却又有了新的侵略者，这次来袭的是不灭弓箭手，难道这个冰极真的受了诅咒，既然你曾经帮助过我们了，能不能再一次帮助我们，保卫我们的补给站呢？<n><t>现在这些该死的侵略者已经到了（2746,451）附近，给他们点颜色瞧瞧吧！")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 870)
	MisBeginCondition(NoMission, 876)
	MisBeginCondition(NoRecord, 876)
	MisBeginAction(AddMission, 876)
	MisBeginAction(AddTrigger, 8761, TE_KILL, 270, 12 )
	MisCancelAction(ClearMission, 876)

	MisNeed(MIS_NEED_DESP, "守卫村庄，杀死12个不灭弓箭手，然后去尼里艾亚·长发（2675,631）那里 ")
	MisNeed(MIS_NEED_KILL, 270, 12, 10, 12 )

	MisHelpTalk("小心那些不灭弓箭手，他们虽然没有眼睛，不过箭射的还是很准的")
	MisResultTalk("那帮不灭弓箭手逃跑的样子真滑稽，祝贺你，你又打了一次漂亮的胜仗")
	MisResultCondition(NoRecord, 876)
	MisResultCondition(HasMission, 876)
	MisResultCondition(HasFlag, 876, 21)
	MisResultAction(ClearMission, 876)
	MisResultAction(SetRecord, 876)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 270 )	
	TriggerAction( 1, AddNextFlag, 876, 10, 12 )
	RegCurTrigger( 8761 )

-----------------------------------骷髅装饰品
	DefineMission( 877, "骷髅装饰品", 877 )
	
	MisBeginTalk( "<t>不灭弓箭手的箭囊上似乎镶着很好看的骷髅，不管你是否愿意保卫补给站，请你一定要帮我弄到几个骷髅箭囊，我实在太想要了！<n><t>你可以在（2746,451）附近找到不灭弓箭手的踪影。")
	MisBeginCondition(LvCheck, ">", 39 )
	--MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 877)
	MisBeginCondition(NoRecord, 877)
	MisBeginAction(AddMission, 877)
	MisBeginAction(AddTrigger, 8771, TE_GETITEM, 4911, 10 )
	MisCancelAction(ClearMission, 877)
	
	MisNeed(MIS_NEED_DESP, "为塞维·朱尔（2678,631）收集10个骷髅箭囊")
	MisNeed(MIS_NEED_ITEM, 4911, 10, 10, 10)
	
	MisHelpTalk("我需要骷髅箭囊上的骷髅来装饰我的桌面，快去帮我弄些来")
	MisResultTalk("这些箭囊上的骷髅刚好可以用来装饰我的桌面，呵呵，太感谢你了")
	MisResultCondition(NoRecord, 877)
	MisResultCondition(HasMission, 877)
	MisResultCondition(HasItem, 4911, 10)
	MisResultAction(TakeItem, 4911, 10)
	MisResultAction(ClearMission, 877)
	MisResultAction(SetRecord, 877)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4911 )	
	TriggerAction( 1, AddNextFlag, 877, 10, 10 )
	RegCurTrigger(8771)

-----------------------------------继续深入
	DefineMission( 878, "继续深入", 878 )
	
	MisBeginTalk( "<t>新人的训练已经结束了，要进入正式的战争了，我们要继续深入，消灭掉真正的雪魔人，准备好了就出发吧！<n><t>目标是位于（2855,451）附近的雪魔人老巢！")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 874)
	MisBeginCondition(NoMission, 878)
	MisBeginCondition(NoRecord, 878)
	MisBeginAction(AddMission, 878)
	MisBeginAction(AddTrigger, 8781, TE_KILL, 195, 12 )
	MisCancelAction(ClearMission, 878)

	MisNeed(MIS_NEED_DESP, "干掉12个雪魔人，然后去法迪尔（2680,657）处领取奖励 ")
	MisNeed(MIS_NEED_KILL, 195, 12, 10, 12 )

	MisHelpTalk("这次的目标是雪魔人，准备好就出发吧")
	MisResultTalk("你深入到雪魔人的地盘的事迹已经得到了全村人的认同，我承认你是真的强者")
	MisResultCondition(NoRecord, 878)
	MisResultCondition(HasMission, 878)
	MisResultCondition(HasFlag, 878, 21)
	MisResultAction(ClearMission, 878)
	MisResultAction(SetRecord, 878)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 195 )	
	TriggerAction( 1, AddNextFlag, 878, 10, 12 )
	RegCurTrigger( 8781 )

-----------------------------------巨人木棒
	DefineMission( 879, "巨人木棒", 879 )
	
	MisBeginTalk( "<t>听说要去讨伐雪魔人了，不知道又会带回多少巨人木棒，我的心跳开始加速了，不如你也参加吧，为我带回10个巨人木棒，我还是会给你丰厚的报酬的，雪魔人一般都在（2855,451）附近出没。")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 879)
	MisBeginCondition(NoRecord, 879)
	MisBeginAction(AddMission, 879)
	MisBeginAction(AddTrigger, 8791, TE_GETITEM, 4862, 10 )
	MisCancelAction(ClearMission, 879)
	
	MisNeed(MIS_NEED_DESP, "为米开朗费罗（2662,648）收集10根巨人木棒")
	MisNeed(MIS_NEED_ITEM, 4862, 10, 10, 10)
	
	MisHelpTalk("弄到巨人木棒了吗？它就握在那些雪巨人的手里")
	MisResultTalk("这次是巨人木棒，哈哈，我看到了金光闪闪的东西流入我的口袋")
	MisResultCondition(NoRecord, 879)
	MisResultCondition(HasMission, 879)
	MisResultCondition(HasItem, 4862, 10)
	MisResultAction(TakeItem, 4862, 10)
	MisResultAction(ClearMission, 879)
	MisResultAction(SetRecord, 879)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4862 )	
	TriggerAction( 1, AddNextFlag, 879, 10, 10 )
	RegCurTrigger(8791)

-----------------------------------敌后
	DefineMission( 880, "敌后", 880 )
	
	MisBeginTalk( "<t>你已经帮了我们太多的忙了，真不应该再让你冒险，可是，补给站已经没有更多的兵力了，而精英骷髅弓箭手们正在某处集结，等待反击，请你深入敌后，消灭他们")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 876)
	MisBeginCondition(NoMission, 880)
	MisBeginCondition(NoRecord, 880)
	MisBeginAction(AddMission, 880)
	MisBeginAction(AddTrigger, 8801, TE_KILL, 502, 12 )
	MisCancelAction(ClearMission, 880)

	MisNeed(MIS_NEED_DESP, "尼里艾亚·长发（2675,631）要求你杀死12个精英骷髅弓箭手来削弱敌人的实力 ")
	MisNeed(MIS_NEED_KILL, 502, 12, 10, 12 )

	MisHelpTalk("年轻人，拿到断裂的肋骨了吗？对于我来说那可能是唯一的寄托了")
	MisResultTalk("看到这些让我记起了那些战场上的岁月，年轻人，小心些，不要让你的家人为你担心")
	MisResultCondition(NoRecord, 880)
	MisResultCondition(HasMission, 880)
	MisResultCondition(HasFlag, 880, 21)
	MisResultAction(ClearMission, 880)
	MisResultAction(SetRecord, 880)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 502 )	
	TriggerAction( 1, AddNextFlag, 880, 10, 12 )
	RegCurTrigger( 8801 )

-----------------------------------昔日辉煌
	DefineMission( 881, "昔日辉煌", 881 )
	
	MisBeginTalk( "<t>你见过精英骷髅弓箭手了吗？<n><t>当初那可是我手下的败将，可是，现在，英雄年暮，即使再想看一眼曾经最平常的战利品断裂的肋骨都难了，年轻人，能帮我带回来几个吗？")
	MisBeginCondition(LvCheck, ">", 41 )
	--MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 881)
	MisBeginCondition(NoRecord, 881)
	MisBeginAction(AddMission, 881)
	MisBeginAction(AddTrigger, 8811, TE_GETITEM, 4822, 8 )
	MisCancelAction(ClearMission, 881)
	
	MisNeed(MIS_NEED_DESP, "替凯文·狼（2688,628）带回8个断裂的肋骨来完成他的心愿")
	MisNeed(MIS_NEED_ITEM, 4822, 8, 10, 8)
	
	MisHelpTalk("年轻人，拿到断裂的肋骨了吗？对于我来说那可能是唯一的寄托了")
	MisResultTalk("看到这些让我记起了那些战场上的岁月，年轻人，小心些，不要让你的家人为你担心")
	MisResultCondition(NoRecord, 881)
	MisResultCondition(HasMission, 881)
	MisResultCondition(HasItem, 4822, 8)
	MisResultAction(TakeItem, 4822, 8)
	MisResultAction(ClearMission, 881)
	MisResultAction(SetRecord, 881)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4822 )	
	TriggerAction( 1, AddNextFlag, 881, 10, 8 )
	RegCurTrigger(8811)

----------------------------------捕猎冰龙幼崽
	DefineMission( 882, "捕猎冰龙幼崽", 882 )
	
	MisBeginTalk( "<t>上回的捕猎你做的不错，今天，我们要捕猎的对象是冰龙幼崽，这回可不是闹着玩了，掉以轻心的话，被捕猎的可能就是你")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 875)
	MisBeginCondition(NoMission, 882)
	MisBeginCondition(NoRecord, 882)
	MisBeginAction(AddMission, 882)
	MisBeginAction(AddTrigger, 8821, TE_KILL, 530, 10 )
	MisBeginAction(AddTrigger, 8822, TE_GETITEM, 4850, 1 )
	MisCancelAction(ClearMission, 882)

	MisNeed(MIS_NEED_DESP, "狩猎10个冰龙幼崽，并带1个冰晶之心碎片给尼里艾亚·长发（2675,631） ")
	MisNeed(MIS_NEED_KILL, 530, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4850, 1, 20, 1 )

	MisHelpTalk("冰龙幼崽的捕猎工作进行得如何了，记得要把冰晶之心的碎片带给我哦")
	MisResultTalk("好漂亮的碎片啊，我想塞维·朱尔说她最想要的东西一定就是这个")
	MisResultCondition(NoRecord, 882)
	MisResultCondition(HasMission, 882)
	MisResultCondition(HasFlag, 882, 19)
	MisResultCondition(HasItem, 4850, 1)
	MisResultAction(TakeItem, 4850, 1)
	MisResultAction(ClearMission, 882)
	MisResultAction(SetRecord, 882)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 530 )	
	TriggerAction( 1, AddNextFlag, 882, 10, 10 )
	RegCurTrigger( 8821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 882, 20, 1 )
	RegCurTrigger( 8822 )

-----------------------------------冰晶之谜
	DefineMission( 883, "冰晶之谜", 883 )
	
	MisBeginTalk( "<t>听说你参加过捕猎冰龙幼崽了，那你一定见到过冰晶之心的碎片了吧，你应该见识到它的魅力了吧。<n><t>如果有机会，你能帮我收集5个吗，实在感激不尽")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 883)
	MisBeginCondition(NoRecord, 883)
	MisBeginAction(AddMission, 883)
	MisBeginAction(AddTrigger, 8831, TE_GETITEM, 4850, 5 )
	MisCancelAction(ClearMission, 883)
	
	MisNeed(MIS_NEED_DESP, "给塞维·朱尔（2678,631）带去5个冰晶之心碎片")
	MisNeed(MIS_NEED_ITEM, 4850, 5, 10, 5)
	
	MisHelpTalk("你答应我给我5个冰晶之心的碎片，弄到了吗？")
	MisResultTalk("冰晶之心碎片，每次看到它好像整个人都被净化了，它实在太美了不是吗？")
	MisResultCondition(NoRecord, 883)
	MisResultCondition(HasMission, 883)
	MisResultCondition(HasItem, 4850, 5)
	MisResultAction(TakeItem, 4850, 5)
	MisResultAction(ClearMission, 883)
	MisResultAction(SetRecord, 883)
	MisResultAction(AddExp,17409,17409)	
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 883, 10, 5 )
	RegCurTrigger(8831)


-----------------------------------水晶心
	DefineMission( 884, "水晶心", 884 )
	
	MisBeginTalk( "<t>我听说过一个古老的传说，用冰晶之心的碎片和纯净水晶可以合成水晶心，而那个是被最伟大的诗人誉为世界上最美丽的东西！<n><t>帮人帮到底，去向水仙子要几个纯净水晶吧，万分感激")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 884)
	MisBeginCondition(NoRecord, 884)
	MisBeginAction(AddMission, 884)
	MisBeginAction(AddTrigger, 8841, TE_GETITEM, 4895, 5 )
	MisCancelAction(ClearMission, 884)
	
	MisNeed(MIS_NEED_DESP, "给塞维·朱尔（2678,631）带去5个纯净冰晶")
	MisNeed(MIS_NEED_ITEM, 4895, 5, 10, 5)
	
	MisHelpTalk("你答应我的纯净水晶呢，你可不能反悔哦")
	MisResultTalk("好了，这样我就可以制造水晶心了，虽然有些可惜，不过，你知道吗，水晶心才是这个世界上最美丽的东西")
	MisResultCondition(NoRecord, 884)
	MisResultCondition(HasMission, 884)
	MisResultCondition(HasItem, 4895, 5)
	MisResultAction(TakeItem, 4895, 5)
	MisResultAction(ClearMission, 884)
	MisResultAction(SetRecord, 884)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4895 )	
	TriggerAction( 1, AddNextFlag, 884, 10, 5 )
	RegCurTrigger(8841)

-----------------------------------捕猎极地熊
	DefineMission( 885, "捕猎极地熊", 885 )
	
	MisBeginTalk( "<t>接下来我说的话请大家认真听，在过去的捕猎极地熊行动中，总有人有去无回，我不希望这种现象再次发生，不想参加的请现在就退出，所有参与捕猎的请以安全为重，准备好了吗？")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 885)
	MisBeginCondition(NoRecord, 885)
	MisBeginAction(AddMission, 885)
	MisBeginAction(AddTrigger, 8851, TE_KILL, 504, 8 )
	MisBeginAction(AddTrigger, 8852, TE_GETITEM, 4824, 3 )
	MisCancelAction(ClearMission, 885)

	MisNeed(MIS_NEED_DESP, "杀死8头大型极地熊，并带3颗锋利的熊牙回去给尼里艾亚·长发（2675,631） ")
	MisNeed(MIS_NEED_KILL, 504, 8, 10, 8 )
	MisNeed(MIS_NEED_ITEM, 4824, 3, 20, 3 )

	MisHelpTalk("你见识过极地熊了吧，不要怕，它们只是虚有其表而已")
	MisResultTalk("快看这些锋利的熊牙，曾几何时，不少可怜的猎人就死在这锋利之下")
	MisResultCondition(NoRecord, 885)
	MisResultCondition(HasMission, 885)
	MisResultCondition(HasFlag, 885, 17)
	MisResultCondition(HasItem, 4824, 3)
	MisResultAction(TakeItem, 4824, 3)
	MisResultAction(ClearMission, 885)
	MisResultAction(SetRecord, 885)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )	
	TriggerAction( 1, AddNextFlag, 885, 10, 8 )
	RegCurTrigger( 8851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4824 )	
	TriggerAction( 1, AddNextFlag, 885, 20, 3 )
	RegCurTrigger( 8852 )

-----------------------------------巨人首领
	DefineMission( 886, "巨人首领", 886 )
	
	MisBeginTalk( "<t>与雪巨人的战争我想你还记忆犹新把，这次我们要对抗的敌人是巨人首领——恐怖雪巨人，我们今天所做的是历史上没人做到的。<n><t>勇士们，拿好武器，出发啦！")
	MisBeginCondition(LvCheck, ">", 44 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 886)
	MisBeginCondition(NoRecord, 886)
	MisBeginAction(AddMission, 886)
	MisBeginAction(AddTrigger, 8861, TE_KILL, 194, 16 )
	MisCancelAction(ClearMission, 886)

	MisNeed(MIS_NEED_DESP, "替法迪尔（2680,657）干掉16个雪巨人 ")
	MisNeed(MIS_NEED_KILL, 194, 16, 10, 16 )

	MisHelpTalk("你见到恐怖雪巨人了吗？不要对它们客气，杀光它们")
	MisResultTalk("最后的雪巨人也倒下了，你做到了这里任何人都没做到的事情，我以有你这样的朋友而自豪")
	MisResultCondition(NoRecord, 886)
	MisResultCondition(HasMission, 886)
	MisResultCondition(HasFlag, 886, 25)
	MisResultAction(ClearMission, 886)
	MisResultAction(SetRecord, 886)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 886, 10, 16 )
	RegCurTrigger( 8861 )

-----------------------------------恐怖巨人大刀
	DefineMission( 887, "恐怖巨人大刀", 887 )
	
	MisBeginTalk( "<t>又见到你，我也不想多说什么了。<n><t>如果你参与了巨人首领行动的话，那么带5把恐怖巨人大刀给我，报酬方面不用说了吧，我的价格一向合理")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 887)
	MisBeginCondition(NoRecord, 887)
	MisBeginAction(AddMission, 887)
	MisBeginAction(AddTrigger, 8871, TE_GETITEM, 4910, 5 )
	MisCancelAction(ClearMission, 887)
	
	MisNeed(MIS_NEED_DESP, "为米开朗费罗（2662,648）收集5把恐怖巨人大刀")
	MisNeed(MIS_NEED_ITEM, 4910, 5, 10, 5)
	
	MisHelpTalk("带给我5把恐怖巨人大刀，我可是付过钱的")
	MisResultTalk("恐怖巨人大刀，传说中的杀人利器，果然够锋利，怎么样，要不要拿你的手来试试，呵呵，说说而已，何必当真呢")
	MisResultCondition(NoRecord, 887)
	MisResultCondition(HasMission, 887)
	MisResultCondition(HasItem, 4910, 5)
	MisResultAction(TakeItem, 4910, 5)
	MisResultAction(ClearMission, 887)
	MisResultAction(SetRecord, 887)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4910 )	
	TriggerAction( 1, AddNextFlag, 887, 10, 5 )
	RegCurTrigger(8871)

-----------------------------------狼人弓箭手
	DefineMission( 888, "狼人弓箭手", 888 )
	
	MisBeginTalk( "<t>最近好像有一群狼人弓箭手聚集在了村子外面，不管他们的用意是什么，他们这种不请自来的做法都是令人讨厌的。<n><t>带上你的武器，帮我教训一下这群东西")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 880)
	MisBeginCondition(NoMission, 888)
	MisBeginCondition(NoRecord, 888)
	MisBeginAction(AddMission, 888)
	MisBeginAction(AddTrigger, 8881, TE_KILL, 272, 20 )
	MisBeginAction(AddTrigger, 8882, TE_GETITEM, 4916, 5 )
	MisCancelAction(ClearMission, 888)

	MisNeed(MIS_NEED_DESP, "杀死20个狼人弓箭手，带5把折断的狼人短弓给尼里艾亚·长发（2675,631）证明你的功绩 ")
	MisNeed(MIS_NEED_KILL, 272, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4916, 5, 40, 5 )

	MisHelpTalk("那些在村庄周围的狼人弓箭手怎么样了，你有没有向我说的那样教训他们")
	MisResultTalk("你又一次立下了奇功，成功打击了妄图偷袭补给站的敌人，我都不知道该怎么感谢你了")
	MisResultCondition(NoRecord, 888)
	MisResultCondition(HasMission, 888)
	MisResultCondition(HasFlag, 888, 29)
	MisResultCondition(HasItem, 4916, 5)
	MisResultAction(TakeItem, 4916, 5)
	MisResultAction(ClearMission, 888)
	MisResultAction(SetRecord, 888)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 272 )	
	TriggerAction( 1, AddNextFlag, 888, 10, 20 )
	RegCurTrigger( 8881 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4916 )	
	TriggerAction( 1, AddNextFlag, 888, 40, 5 )
	RegCurTrigger( 8882 )

-----------------------------------最终魔人
	DefineMission( 889, "最终魔人", 889 )
	
	MisBeginTalk( "<t>我们即将面对的是最强的魔人——恐怖雪魔人，至今还没有人在讨伐他的行动中活着回来过，而我们要打破这个先例。<n><t>有勇气的人，拿起武器跟我来")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 878)
	MisBeginCondition(NoMission, 889)
	MisBeginCondition(NoRecord, 889)
	MisBeginAction(AddMission, 889)
	MisBeginAction(AddTrigger, 8891, TE_KILL, 545, 15 )
	MisCancelAction(ClearMission, 889)

	MisNeed(MIS_NEED_DESP, "干掉15个恐怖雪魔人，然后去找法迪尔（2680,657）领取奖励 ")
	MisNeed(MIS_NEED_KILL, 545, 15, 10, 15 )

	MisHelpTalk("你还没去杀雪魔人吗？那我再给你一个忠告，如果现在退出还来得及")
	MisResultTalk("最后的魔人也倒下了，这个世界上还有什么事你不能征服的呢")
	MisResultCondition(NoRecord, 889)
	MisResultCondition(HasMission, 889)
	MisResultCondition(HasFlag, 889, 24)
	MisResultAction(ClearMission, 889)
	MisResultAction(SetRecord, 889)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 545 )	
	TriggerAction( 1, AddNextFlag, 889, 10, 15 )
	RegCurTrigger( 8891 )

-----------------------------------恐怖巨人木棒
	DefineMission( 890, "恐怖巨人木棒", 890 )
	
	MisBeginTalk( "<t>其实，你不用来找我的，如果你能活着回来的话，带着5把恐怖巨人木棒来找我好了，我会直接给你报酬，二话没有")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 887)
	MisBeginCondition(NoMission, 890)
	MisBeginCondition(NoRecord, 890)
	MisBeginAction(AddMission, 890)
	MisBeginAction(AddTrigger, 8901, TE_GETITEM, 4912, 5 )
	MisCancelAction(ClearMission, 890)
	
	MisNeed(MIS_NEED_DESP, "为米开朗费罗（2662,648）收集5根恐怖巨人木棒")
	MisNeed(MIS_NEED_ITEM, 4912, 5, 10, 5)
	
	MisHelpTalk("你有弄到恐怖巨人木棒吗？我都有些等不及了")
	MisResultTalk("最后的武器呢，最终魔人使用的武器，看来这次真是找对了人，我会永远记得你的")
	MisResultCondition(NoRecord, 890)
	MisResultCondition(HasMission, 890)
	MisResultCondition(HasItem, 4912, 5)
	MisResultAction(TakeItem, 4912, 5)
	MisResultAction(ClearMission, 890)
	MisResultAction(SetRecord, 890)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4912 )	
	TriggerAction( 1, AddNextFlag, 890, 10, 5 )
	RegCurTrigger(8901)

-----------------------------------为了荣誉而战
	DefineMission( 891, "为了荣誉而战", 891 )
	
	MisBeginTalk( "<t>接下来的战争对于某些和平主义者来说可能是毫无价值的了，因为，我们即将为了荣誉而战，我们要面对的敌人是精英骷髅武士，他们深藏在冰源的中心。<n><t>然而，我们将打败他，愿荣誉之神保护你")
	MisBeginCondition(LvCheck, ">", 46 )
	MisBeginCondition(HasRecord, 888)
	MisBeginCondition(NoMission, 891)
	MisBeginCondition(NoRecord, 891)
	MisBeginAction(AddMission, 891)
	MisBeginAction(AddTrigger, 8911, TE_KILL, 506, 10 )
	MisBeginAction(AddTrigger, 8912, TE_GETITEM, 4826, 1 )
	MisCancelAction(ClearMission, 891)

	MisNeed(MIS_NEED_DESP, "干掉10个精英骷髅武士，带着武士荣誉之证回去见尼里艾亚·长发（2675,631） ")
	MisNeed(MIS_NEED_KILL, 506, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4826, 1, 20, 1 )

	MisHelpTalk("有拿到武士荣誉之证吗？还没有，那就快去杀精英骷髅武士来证明你的实力")
	MisResultTalk("拿去，属于这个补给站最高的荣誉，你将成为这里传说中的人物，让后人传唱")
	MisResultCondition(NoRecord, 891)
	MisResultCondition(HasMission, 891)
	MisResultCondition(HasFlag, 891, 19)
	MisResultCondition(HasItem, 4826, 1)
	MisResultAction(TakeItem, 4826, 1)
	MisResultAction(ClearMission, 891)
	MisResultAction(SetRecord, 891)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 506 )	
	TriggerAction( 1, AddNextFlag, 891, 10, 10 )
	RegCurTrigger( 8911 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4826 )	
	TriggerAction( 1, AddNextFlag, 891, 20, 1 )
	RegCurTrigger( 8912 )


-----------------------------------捕猎蜥蜴人
	DefineMission( 892, "捕猎蜥蜴人", 892 )
	
	MisBeginTalk( "<t>其实我们的捕猎行动到捕猎极地熊就应该结束了，不过最近有一种叫蜥蜴人的怪物总是拿着斧子到处打劫，而我又最痛恨这种没有技术含量的行为。<n><t>于是，我今天发出通知，愿意捕猎蜥蜴人的可以在我这里领到丰厚的奖励")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 885)
	MisBeginCondition(NoMission, 892)
	MisBeginCondition(NoRecord, 892)
	MisBeginAction(AddMission, 892)
	MisBeginAction(AddTrigger, 8921, TE_KILL, 196, 15 )
	MisCancelAction(ClearMission, 892)

	MisNeed(MIS_NEED_DESP, "狩猎15个蜥蜴人，然后去找尼里艾亚·长发（2675,631） ")
	MisNeed(MIS_NEED_KILL, 196, 15, 10, 15 )

	MisHelpTalk("你有捕猎到足够的蜥蜴人吗？记住，要15只哦")
	MisResultTalk("连蜥蜴人也干掉了？终于有人能够教训一下那帮只会挥舞着斧子打劫的低级生物了，我最恨他们了，一点技术含量都没有")
	MisResultCondition(NoRecord, 892)
	MisResultCondition(HasMission, 892)
	MisResultCondition(HasFlag, 892, 24)
	MisResultAction(ClearMission, 892)
	MisResultAction(SetRecord, 892)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 196 )	
	TriggerAction( 1, AddNextFlag, 892, 10, 15 )
	RegCurTrigger( 8921 )

-----------------------------------蜥蜴人战斧
	DefineMission( 893, "蜥蜴人战斧", 893 )
	
	MisBeginTalk( "<t>我现在只缺少蜥蜴人战斧这样武器了，只要在有了这样就可以发货了，呵呵……<n><t>没什么，跟你没关系，你只要拿来蜥蜴人战斧就可以了，价钱方面照老规矩")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 890)
	MisBeginCondition(NoMission, 893)
	MisBeginCondition(NoRecord, 893)
	MisBeginAction(AddMission, 893)
	MisBeginAction(AddTrigger, 8931, TE_GETITEM, 4920, 5 )
	MisCancelAction(ClearMission, 893)
	
	MisNeed(MIS_NEED_DESP, "为米开朗费罗（2662,648）收集5把蜥蜴人战斧")
	MisNeed(MIS_NEED_ITEM, 4920, 5, 10, 5)
	
	MisHelpTalk("你答应我的5个蜥蜴人战斧呢，没看见东西我是不会给钱的")
	MisResultTalk("你是说你弄到了蜥蜴人战斧，快让我看看，我将会给你最丰厚的回报")
	MisResultCondition(NoRecord, 893)
	MisResultCondition(HasMission, 893)
	MisResultCondition(HasItem, 4920, 5)
	MisResultAction(TakeItem, 4920, 5)
	MisResultAction(ClearMission, 893)
	MisResultAction(SetRecord, 893)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4920 )	
	TriggerAction( 1, AddNextFlag, 893, 10, 5 )
	RegCurTrigger(8931)


	---------------------------------------------------------------
	--							     --
	--			加勒比海盗版本			     --
	--							     --
	---------------------------------------------------------------


----------------------------------------
--                                    --
--              海盗任务              --
--                                    --
----------------------------------------

--铁匠 >> 反侦查
	DefineMission(894, "反侦察", 894)
	MisBeginTalk("<t>嘿！陌生人！过来！对~就是你，我看你很面生啊？<n><t>如果你觉得无所事事的话，给我去海军基地把那几个该死的亡灵炮台给我毁了，看着那东西我连饭都吃不下！<n><t>别怪我没警告你，那可不是一般人能做到的！你最好做好心理准备。")
	
	MisBeginCondition(NoRecord, 894)
	MisBeginCondition(NoMission, 894)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 894)
	MisBeginAction(AddTrigger, 8941, TE_KILL, 801, 4)

	MisCancelAction(ClearMission, 894)

	MisNeed(MIS_NEED_KILL, 801, 4, 10, 4)
	

	MisHelpTalk("<t>你还在等什么！象个懦夫一样苟且偷生吗？我鄙视你！")
	MisResultTalk("<t>很好~看不出来你还真有两下子，如果我之前说了什么冒犯的话，请你原谅<n><t>我已经把你的事迹告诉了我的朋友杰克史派罗了，他对你很有点兴趣，你不妨去他那里看看")

	MisResultCondition(HasMission , 894)
	MisResultCondition(NoRecord, 894)
	MisResultCondition(HasFlag, 894, 13)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 894)
	MisResultAction(SetRecord, 894)

	MisResultAction(AddExp, 80000,80000)
	MisResultAction(AddMoney, 40000,40000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 801)
	TriggerAction(1, AddNextFlag, 894, 10, 4)
	RegCurTrigger(8941)
		

--杰克史派罗 >> 最强的海盗

	DefineMission(895, "最强的海盗", 895)
	MisBeginTalk("<t>我听铁匠说了，你小子把海军基地的哨塔毁了<n><t>我能想象出巴伯萨听到这个消息时的样子，一定会气得浑身骨头喳喳作响吧！<n><t>不过亡灵军队的实力还很强大，我们仍然不能轻敌，如果你能帮我们消灭30个亡灵士兵和15个亡灵军官<n><t>我想亡灵部队的实力一定会大打折扣的，怎么样？兄弟，我看好你哟~")
	
	MisBeginCondition(HasRecord, 894)
	MisBeginCondition(NoRecord, 895)
	MisBeginCondition(NoMission, 895)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 895)
	MisBeginAction(AddTrigger, 8951, TE_KILL, 808, 30)
	MisBeginAction(AddTrigger, 8952, TE_KILL, 817, 15)

	MisCancelAction(ClearMission, 895)

	MisNeed(MIS_NEED_KILL, 808, 30, 30, 30)
	MisNeed(MIS_NEED_KILL, 817, 15, 70, 15)
	

	MisHelpTalk("<t>真希望亡灵军队早点从这个世界消失掉。")
	MisResultTalk("<t>勇士！你的英勇让我看到了希望，不过我们还不能掉以轻心<n><t>决战的时刻来了，你应该先休息一下，更大的挑战还在等着我们。")

	MisResultCondition(HasMission ,895)
	MisResultCondition(NoRecord , 895)
	MisResultCondition(HasFlag, 895, 59)
	MisResultCondition(HasFlag, 895, 84)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 895)
	MisResultAction(SetRecord, 895)

	MisResultAction(AddExp, 200000,200000)
	MisResultAction(AddMoney, 150000,150000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 808)
	TriggerAction(1, AddNextFlag, 895, 30, 30)
	RegCurTrigger(8951)
		
	InitTrigger()
	TriggerCondition(1, IsMonster, 817)
	TriggerAction(1, AddNextFlag, 895, 70, 15)
	RegCurTrigger(8952)
	
	
-- 杰克史派罗 >> 将军的首级

	DefineMission(896, "将军的首级", 896)
	MisBeginTalk("<t>你准备好了吗，决战的时刻到了，我需要你干掉亡灵司令，并把他的头颅带回来！<n><t>我知道你有这个实力，所以请务必接受这个请求，当然，我是不会亏待你的")
	
	MisBeginCondition(HasRecord, 895)
	MisBeginCondition(NoRecord, 896)
	MisBeginCondition(NoMission, 896)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 896)
	MisBeginAction(AddTrigger, 8961, TE_KILL, 807, 1)
	MisBeginAction(AddTrigger, 8962, TE_GETITEM, 2387, 1)

	MisCancelAction(ClearMission, 896)

	MisNeed(MIS_NEED_KILL, 807, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2387, 1, 20, 1)
	

	MisHelpTalk("<t>等着吧，亡灵们！黎明的曙光会将你们变为灰烬！")
	MisResultTalk("<t>看吧！你做到了！我就知道你一定能行的，该死的亡灵司令，你也有今天！")

	MisResultCondition(HasMission, 896)
	MisResultCondition(NoRecord, 896)
	MisResultCondition(HasFlag, 896, 10)
	MisResultCondition(HasItem, 2387, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2387, 1)
	MisResultAction(ClearMission, 896)
	MisResultAction(SetRecord, 896)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 1000000,1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 807)
	TriggerAction(1, AddNextFlag, 896, 10, 1)
	RegCurTrigger(8961)
		
	InitTrigger()
	TriggerCondition(1, IsItem, 2387)
	TriggerAction(1, AddNextFlag, 896, 20, 1)
	RegCurTrigger(8962)




----------------------------------------
--                                    --
--              海军任务              --
--                                    --
----------------------------------------

-- 灵顿将军 >> 海盗的食物
	DefineMission(897, "海盗的食物", 897)

	MisBeginTalk("<t>骷髅岛上的亡灵海盗越来越嚣张了，据说他们的啤酒和烤肉中蕴涵丰富的能量<n><t>我命令你从那儿给我带回5瓶啤酒和5份烤肉，我要看看到底这些东西被施了什么魔法！")
	MisBeginCondition(NoRecord, 897)
	MisBeginCondition(NoMission,897)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 897)
	MisBeginAction(AddTrigger, 8971,TE_GETITEM, 2413, 5)
	MisBeginAction(AddTrigger, 8972,TE_GETITEM, 2414, 5)
	
	MisCancelAction(ClearMission, 897)

	MisNeed(MIS_NEED_ITEM, 2413, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 2414, 5, 20, 5)

	MisHelpTalk("<t>难道亡灵也需要粮食补给？")

	MisResultTalk("<t>干得不错~让我看看，恩？奇怪，这不就是普通的啤酒和烤肉吗？<n><t>看来谣言是不可信的，不过既然他们喜欢这东西，我们就不应该满足他们，拿去吧，这是你的奖赏~")
	
	MisResultCondition(HasMission, 897)
	MisResultCondition(NoRecord, 897)
	MisResultCondition(HasItem, 2413, 5)
	MisResultCondition(HasItem, 2414, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2413, 5)
	MisResultAction(TakeItem , 2414, 5)
	MisResultAction(ClearMission, 897)
	MisResultAction(SetRecord, 897)

	MisResultAction(AddExp ,200000, 200000)
	MisResultAction(AddMoney ,100000, 100000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2413)
	TriggerAction(1,AddNextFlag, 897, 10, 5)
	RegCurTrigger(8971)

	InitTrigger()
	TriggerCondition(1, IsItem, 2414)
	TriggerAction(1,AddNextFlag, 897, 20, 5)
	RegCurTrigger(8972)
	
-- 灵顿将军 >>  剿灭海盗
	DefineMission(898, "剿灭海盗", 898)

	MisBeginTalk("<t>嘿！军士，你在之前的任务中已经和海盗们打过交道了吧，现在新的任务又来了<n><t>我需要你去收集15个海盗的骨头，你问我有什么用，闭嘴吧，这是军事机密，你的任务就是执行这道命令！懂了吗？快去吧。")
	MisBeginCondition(HasRecord, 897)
	MisBeginCondition(NoRecord, 898)
	MisBeginCondition(NoMission,898)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 898)
	MisBeginAction(AddTrigger, 8981, TE_GETITEM, 2419, 15)
	
	MisCancelAction(ClearMission, 898)

	MisNeed(MIS_NEED_ITEM, 2419, 15, 30, 15)

	MisHelpTalk("<t>还没收集到30个海盗的骨头吗？那你还在这里等什么？")

	MisResultTalk("<t>恩，的确是这些骨头，看来有必要采取进一步行动了<n><t>拿着你的奖励去好好休息一下，之后回到我这里来，又有新的挑战了。")
	
	MisResultCondition(HasMission, 898)
	MisResultCondition(NoRecord, 898)
	MisResultCondition(HasItem, 2419, 15)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2419, 15)
	MisResultAction(ClearMission, 898)
	MisResultAction(SetRecord, 898)

	MisResultAction(AddExp ,250000, 250000)
	MisResultAction(AddMoney ,150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2419)
	TriggerAction(1,AddNextFlag, 898, 30, 15)
	RegCurTrigger(8981)


-- 灵顿将军 >> 被诅咒的黑珍珠号
	DefineMission(899, "被诅咒的黑珍珠号", 899)

	MisBeginTalk("<t>你准备好了吗？下面的任务你可要听仔细了<n><t>我们发现亡灵军团活动的命令都是由那艘被诅咒的“黑珍珠”号发出的，我要你去摧毁这艘船<n><t>同时把他们的船长令拿来给我，这样一来，相信外面的亡灵海盗们会因为没了指挥而象一群无头苍蝇般被我们干掉<n><t>记住，这次的任务很危险，你要做好心理准备。")
	MisBeginCondition(HasRecord, 898)
	MisBeginCondition(NoRecord, 899)
	MisBeginCondition(NoMission,899)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 899)
	MisBeginAction(AddTrigger, 8991,TE_KILL, 815, 1)
	MisBeginAction(AddTrigger, 8992,TE_GETITEM, 2429, 1 )
	
	MisCancelAction(ClearMission, 899)

	MisNeed(MIS_NEED_KILL, 815, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2429, 1, 20, 1)

	MisHelpTalk("<t>军队已经在结集中，一旦没了黑珍珠号，我们将发动总攻击，到时候，哼哼！")

	MisResultTalk("<t>上帝啊，你完成了这项艰巨的任务，来吧，不要客气，接受你应得的奖励。")
	
	MisResultCondition(HasMission, 899)
	MisResultCondition(NoRecord, 899)
	MisResultCondition(HasFlag, 899, 10)
	MisResultCondition(HasItem, 2429, 1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2429, 1)
	MisResultAction(ClearMission, 899)
	MisResultAction(SetRecord, 899)

	MisResultAction(AddExp ,500000, 500000)
	MisResultAction(AddMoney ,1000000, 1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 815, 1)
	TriggerAction(1,AddNextFlag, 899, 10,1)
	RegCurTrigger(8991)

	InitTrigger()
	TriggerCondition(1, IsItem, 2429, 1)
	TriggerAction(1,AddNextFlag, 899, 20,1)
	RegCurTrigger(8992)


end
AreaMission001()