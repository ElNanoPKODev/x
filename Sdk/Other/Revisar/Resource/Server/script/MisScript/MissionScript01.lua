--------------------------------------------------------------------------
--									--
--									--
--MissionScript01.lua Created by Robin 2004.12.27.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		白银城[药草商人——帝姆]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission003()

-----------------------------------药品店的问候
	DefineMission( 707, "药品店的问候", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你是初来乍道的吧？欢迎欢迎，我是这里的药材商人帝姆。<n><t>这几个苹果送给你，免费的哦！<n><t>现在你要在回到瑟安2223,2785那里去，她应该还会给你新的任务。<n><t>（帝姆送了你几个“苹果”，你可以从物品背包中将其拖拽到道具快捷栏里使用，快捷栏就在游戏界面的正下方，标有F1~F8的那些空格。）")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

--------------------------叶子收集
	DefineMission( 733, "叶子收集", 721 )

	MisBeginTalk( "<t>哦！你要帮我收集药材原料啊，太好了，我这里正好需要几种叶子，分别是10片<r枯萎叶子>和5片<r碧绿叶子>，请你帮我找一些来吧，城外的精灵草和精灵花身上就有，最近这阶段我都会比较需要这些材料！" )
	MisBeginCondition(NoMission, 721)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 721)
	MisBeginAction(SetFlag, 721, 1)
	MisBeginAction(AddTrigger, 7211, TE_GETITEM, 1573, 10 )
	MisBeginAction(AddTrigger, 7212, TE_GETITEM, 1574, 3 )
	MisCancelAction(ClearMission, 721)

	MisNeed(MIS_NEED_ITEM, 1573, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1574, 3, 20, 3)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>太好了，这下我又可以继续进行我的药草配制试验了。")
	MisHelpTalk("<t>怎么了，那些叶子还没收集齐吗？")
	MisResultCondition(HasMission, 721)
	MisResultCondition(HasItem, 1573, 10 )
	MisResultCondition(HasItem, 1574, 3 )
	MisResultAction(TakeItem, 1573, 10 )
	MisResultAction(TakeItem, 1574, 3 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 721)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1573)	
	TriggerAction( 1, AddNextFlag, 721, 10, 10 )
	RegCurTrigger( 7211 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1574)	
	TriggerAction( 1, AddNextFlag, 721, 20, 3 )
	RegCurTrigger( 7212 )

--------------------------灵感配方
	DefineMission( 738, "灵感配方", 726 )

	MisBeginTalk( "<t>昨天我忽然有个新的配方灵感，不过又得麻烦你再给我找一些原料来了，分别是2个<r玻璃杯>、2个<r花苞>和5个<r章鱼墨汁>，你可以从森灵、精灵花和小章鱼身上找到这些东西，找到后我会给你报酬的，快去吧，我现在满脑子都是这个配方，全靠你了，部成功的话，我也没有闲心来指派新的任务给你！" )
	MisBeginCondition(NoMission, 726)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 726)
	MisBeginAction(SetFlag, 726, 1)
	MisBeginAction(AddTrigger, 7261, TE_GETITEM, 1777, 2 )
	MisBeginAction(AddTrigger, 7262, TE_GETITEM, 1579, 2 )
	MisBeginAction(AddTrigger, 7263, TE_GETITEM, 1705, 5 )
	MisCancelAction(ClearMission, 726)

	MisNeed(MIS_NEED_ITEM, 1777, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1579, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 1705, 5, 30, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>很好，你终于收集到了这些东西，这样的话，我的新药配方就能进行试验了，如果成功的话，以后大家吃了这个药就会有灵感出现。")
	MisHelpTalk("<t>怎么了，还没收集齐？抓紧时间，乘我的灵感还没消失……")
	MisResultCondition(HasMission, 726)
	MisResultCondition(HasItem, 1777, 2 )
	MisResultCondition(HasItem, 1579, 2 )
	MisResultCondition(HasItem, 1705, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(TakeItem, 1579, 2 )
	MisResultAction(TakeItem, 1705, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 726)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 726, 10, 2 )
	RegCurTrigger( 7261 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1579)	
	TriggerAction( 1, AddNextFlag, 726, 20, 2 )
	RegCurTrigger( 7262 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705)	
	TriggerAction( 1, AddNextFlag, 726, 30, 5 )
	RegCurTrigger( 7263 )

--------------------------蘑菇蘑菇
	DefineMission( 739, "蘑菇蘑菇", 727 )

	MisBeginTalk( "<t>说起来，前些时候我在白银城外养了一些<b大嘴菇>，最近忙着测试配方的事情都把它们给忘了，想起来现在也是那它们派用场的时候了，请你帮我去取收集10个<r毒蘑菇>和5个<r蘑菇>吧。<n><t>呃……说起来，这个大嘴菇还有点凶，最好还是带上点回复品比较好……另外大嘴菇是在（2220,2564）的位置，你去看看吧，现在可是收获的最佳时机，都靠你了！" )
	MisBeginCondition(NoMission, 727)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 727)
	MisBeginAction(SetFlag, 727, 1)
	MisBeginAction(AddTrigger, 7271, TE_GETITEM, 3118, 5 )
	MisBeginAction(AddTrigger, 7272, TE_GETITEM, 1725, 10 )
	MisCancelAction(ClearMission, 727)

	MisNeed(MIS_NEED_ITEM, 3118, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1725, 10, 20, 10)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>太好了，你终于收集到了这些东西，没受伤吧，真是辛苦你了。")
	MisHelpTalk("<t>怎么了，还没收集齐？不会是被大嘴菇打得跑回来了吧？")
	MisResultCondition(HasMission, 727)
	MisResultCondition(HasItem, 3118, 5 )
	MisResultCondition(HasItem, 1725, 10 )
	MisResultAction(TakeItem, 3118, 5 )
	MisResultAction(TakeItem, 1725, 10 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 727)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3118)	
	TriggerAction( 1, AddNextFlag, 727, 10, 5 )
	RegCurTrigger( 7271 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725)	
	TriggerAction( 1, AddNextFlag, 727, 20, 10 )
	RegCurTrigger( 7272 )


end
RobinMission003() --定义任务后结束时必须调用该函数


----------------------------------------------------------
--							--
--							--
--		白银城[小山车]				--
--							--
--		219350,273050				--
----------------------------------------------------------
function RobinMission004()

-----------------------------------生存指南
	DefineMission( 748, "生存指南", 736 )
	
	MisBeginTalk( "<t>你是想来接受冒险者的试炼么？冒险者经常在野外独自一人遇到很多危险，如何生存下去是冒险者的入门知识，你要想得到<r生存指南>的话，你必须到<p白银城野外>打败5只<b沼泽森灵>（银矿东面）、10只<b海螺星>（海边）收集5个<b龟血>（从草原龟身上可以取得）回来。<n><t>如果你能做完这些，我将给你冒险者随身携带的<b生存指南>给你。<n><t>等你10级以后带上这指南来找我就职冒险者吧。" )
	MisBeginCondition(NoMission, 736)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginAction(AddMission, 736)
	MisBeginAction(SetFlag, 736, 1)
	MisBeginAction(AddTrigger, 7361, TE_KILL, 104, 5 )
	MisBeginAction(AddTrigger, 7362, TE_KILL, 39, 10 )
	MisBeginAction(AddTrigger, 7363, TE_GETITEM, 1844, 5 )
	MisCancelAction(ClearMission, 736)
	
	MisNeed(MIS_NEED_KILL, 104, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 39, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 1844, 5, 30, 5)

	MisPrize(MIS_PRIZE_ITEM, 3962, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>朋友，你做得真不错！<n><t>你通过我的测试了，这个就是就职冒险者所需要的<r生存指南>了。<n><t>你收好，等到达到<pLv10>的时候可以来找我就职冒险者。")
	MisHelpTalk("<t>你还没有达到我的要求哦，冒险者的生存指南可不是随便就能获得的。")
	MisResultCondition(HasMission, 736)
	MisResultCondition(HasFlag, 736, 14 )
	MisResultCondition(HasFlag, 736, 29 )
	MisResultCondition(HasItem, 1844, 5 )
	MisResultAction(TakeItem, 1844, 5)
	MisResultAction(ClearMission, 736)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 104 )	
	TriggerAction( 1, AddNextFlag, 736, 10, 5 )
	RegCurTrigger( 7361 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 39 )	
	TriggerAction( 1, AddNextFlag, 736, 20, 10 )
	RegCurTrigger( 7362 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 736, 30, 5 )
	RegCurTrigger( 7363 )


-----------------------------------航海士转职任务
	DefineMission( 758, "航海士转职任务", 742 )
	
	MisBeginTalk( "<t>既然你想成为<b航海士>，那么就必须好好的在大海上游历一番。<n><t>我早年在海上时就结识的一些好朋友，他们现在已经不再是普通的水手了，现在都在海上各地的码头供职。<n><t>我这里有些信，你把这些信交给他们，他们就会知道你是我推荐的，一定会对你另眼看待的。<n><t>这些人分别是<p海风岛>的<b布尔兹>；<p碎冰岛>的<b赛瑟尼>；<p雪贼岛>的<b肥鲸德拉德>；<p萨拉补给站>的<b温亚塔>。" )
	MisBeginCondition(NoRecord, 742)
	MisBeginCondition(NoMission, 742)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 4 )
	MisBeginCondition(CheckConvertProfession, MIS_VOYAGE )
	MisBeginAction(AddMission, 742)
	MisCancelAction(ClearMission, 742)

	MisNeed(MIS_NEED_DESP, "找布尔兹(3254,3278)聊聊")
	MisNeed(MIS_NEED_DESP, "找赛瑟尼(2279,1112)聊聊")
	MisNeed(MIS_NEED_DESP, "找肥鲸德拉德(3595,739)聊聊")
	MisNeed(MIS_NEED_DESP, "找温亚塔(3097,3530)聊聊")
	
	MisResultTalk("<t>哦！你回来了！这次出海收获很大吧！<n><t>恭喜你，你现在已经成为一个合格的<b航海士>了，出海去吧，这个世界上最有趣的就是航海了，有困难时就来找我吧，我会尽力帮助你的。")
	MisHelpTalk("<t>去吧，难道你还没听到大海的召唤吗？")
	MisResultCondition(HasMission, 742)
	MisResultCondition(HasFlag, 742, 20 )
	MisResultCondition(HasFlag, 742, 30 )
	MisResultCondition(HasFlag, 742, 40 )
	MisResultCondition(HasFlag, 742, 50 )
	MisResultAction(ClearMission, 742)
	MisResultAction(SetRecord, 742)
	MisResultAction(SetProfession, 16)



-----------------------------------航海士转职任务
	DefineMission( 760, "航海士转职任务", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>呵呵，你想当航海士啊，那要努力哦，这个职业还是很有前途的！")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 20)
	MisResultAction(SetFlag, 742, 20)


-----------------------------------航海士转职任务
	DefineMission( 761, "航海士转职任务", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>哼，小山车这家伙，现在才想起我来啊！")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 30)
	MisResultAction(SetFlag, 742, 30)

-----------------------------------航海士转职任务
	DefineMission( 762, "航海士转职任务", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>哦，新航海士啊，欢迎！<n><t>对了，看到小山车别忘了跟他说，他借了我50000金，都5年了，该还了。")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 40)
	MisResultAction(SetFlag, 742, 40)

-----------------------------------航海士转职任务
	DefineMission( 763, "航海士转职任务", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>海上危险重重，以后有需要的时候尽管说，当年小山车也给了我很多帮助的。")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 50)
	MisResultAction(SetFlag, 742, 50)

end
RobinMission004()


----------------------------------------------------------
--							--
--							--
--		白银城[小金金]				--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission007()

-----------------------------------铁匠的问候
	DefineMission( 703, "铁匠的问候", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你是新来的吧？我叫小金金，是白银城的铁匠，主要出售一些剑士的武器。<n><t>既然你有美女瑟安的推荐信，我一定会照顾你的！<n><t>你回去可别忘跟瑟安说，我都是看她的面子哦，哇哈哈哈。<n><t>现在你要在回到瑟安2223,2785那里去，她应该还会给你介绍其他人。<n><t>（小金金送了你一把“新手小刀”，你可以从物品背包中将其装备到右手部位。你可以用alt+E键来打开背包，也可以点击画面下方绿色包裹形象的按钮打开）")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(NoFlag, 701, 10)
	MisResultCondition(HasItem, 3950, 1)
	MisResultAction(TakeItem, 3950, 1)
	MisResultAction(SetFlag, 701, 10)
	MisResultBagNeed(1)
	

end
RobinMission007()


----------------------------------------------------------
--							--
--							--
--		沙岚城[大神官·甘地维拉]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission017()

-----------------------------------虔诚祷文
	DefineMission( 719, "虔诚祷文", 711 )
	
	MisBeginTalk( "<t>你是来领取虔诚祷文的么？这年头想靠药师赚钱的人很多，你必须向我证明你有资格获得药师的资格。<n><t>我才会发给你<r虔诚祷文>。<n><t>你现在去合成1个<r精灵果汁>，外带2片<r药用草叶>给我。<n><t>因为药师是辅佐战斗和救死扶伤的职业，所以对回复品一点要有足够的了解。<n><t>你可以去找<p沙岚城>的<b道具店主·欧翟>了解各种合成要求。<n><t>另外我还需要试试你的生存能力，去<r1184,3557>附近杀10只<b大蝎子>吧，如果你能做完这些，我将以卡拉女神的名义赐给你<r虔诚祷文>。" )
	MisBeginCondition(NoMission, 711)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginAction(AddMission, 711)
	MisBeginAction(SetFlag, 711, 1)
	MisBeginAction(AddTrigger, 7111, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7112, TE_GETITEM, 3129, 2 )
	MisBeginAction(AddTrigger, 7113, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 711)

	MisNeed(MIS_NEED_ITEM, 3122, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 20, 2)
	MisNeed(MIS_NEED_KILL, 247, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3954, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>朋友，你做得真不错！<n><t>你通过我的测试了，这个就是就职药师所需要的<r虔诚祷文>了。<n><t>你收好，等到达到<pLv10>的时候可以来找我就职药师。")
	MisHelpTalk("<t>你还没有达到我的要求哦，药师的资格可不是谁就能获得的。")
	MisResultCondition(HasMission, 711)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasItem, 3129, 2 )
	MisResultCondition(HasFlag, 711, 39 )
	MisResultAction(TakeItem, 3122, 1 )
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(ClearMission, 711)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 711, 10, 1 )
	RegCurTrigger( 7111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 711, 20, 2 )
	RegCurTrigger( 7112 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 711, 30, 10 )
	RegCurTrigger( 7113 )

-----------------------------------圣职者转职任务
	DefineMission( 751, "圣职者转职任务", 739 )
	
	MisBeginTalk( "<t>想要成为一名合格的<b圣职者>，必须就有一个奉献的心，我希望你能够时刻记得这句话。<n><t>我给你的转职考核很简单。<n><t>找到2片<y梦幻花瓣>、4瓶<y万能药>、另外再制作6瓶<y精灵果汁>，然后分别将他们送给冰都补给站的<b冬达米婆婆>和卡尔加德补给站里的<b旅行医生·瓦罗温妮>。<n><t>每人各给3瓶精灵果汁、2瓶万能药、1片梦幻花瓣。" )
	MisBeginCondition(NoRecord, 739)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_CLERGY )
	MisBeginAction(AddMission, 739)
	MisCancelAction(ClearMission, 739)

	MisNeed(MIS_NEED_DESP, "给冰都补给站的<b冬达米婆婆>（795,363）3瓶精灵果汁、2瓶万能药、1片梦幻花瓣")
	MisNeed(MIS_NEED_DESP, "给卡尔加德补给站的<b旅行医生·瓦罗温妮>（630,2091）3瓶精灵果汁、2瓶万能药、1片梦幻花瓣")
	
	MisResultTalk("<t>恭喜你！<n><t>你现在就已经成为一名合格的<b圣职者>了！<n><t>愿女神卡拉祝福你。")
	MisHelpTalk("<t>是什么原因让你的脚步停滞不前？记住，忍耐和探索将是你走上奉献之路的第一步。")
	MisResultCondition(HasMission, 739)
	MisResultCondition(HasFlag, 739, 10 )
	MisResultCondition(HasFlag, 739, 20 )
	MisResultAction(ClearMission, 739)
	MisResultAction(SetRecord, 739)
	MisResultAction(SetProfession, 13)
	
-----------------------------------圣职者转职任务
	DefineMission( 752, "圣职者转职任务", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("噢，这个是送给我的礼物吗？太谢谢你了，你真是个热心的人，我会向神官提起这件事的")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 10)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 10)

-----------------------------------圣职者转职任务
	DefineMission( 753, "圣职者转职任务", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("嗯～是大神官派你过来的吧，我这里正好缺少这些药材，你来得真及时，我会向神官提起这件事的")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 20)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 20)



-----------------------------------封印师转职任务
	DefineMission( 755, "封印师转职任务", 740 )
	
	MisBeginTalk( "<t>想要成为<b封印师>，那么你必须记住，如果你的左手拥有惩罚的力量，右手就必须准备好救赎的力量。<n><t>为了考核你的能力，我希望你去做这么几件事：<n><t>拿到3个<r疯羊>身上的<y山羊铃铛>；10个<r刺刃翠鸟>身上的<y危险的刃爪>，最后需要3个<r雪灵>的<y纯净之灵>。<n><t>将这些拿给<p沙岚旧城>的<b圣女·艾达>，让她用<y纯净之魂>净化其它物品。<n><t>其中除了<r刺刃翠鸟>你可以去<p加纳大陆>的森林里寻找外，其他的生物你都可以在<p冰狼堡>所在的冰原上找到。" )
	MisBeginCondition(NoRecord, 740)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_SEALER )
	MisBeginAction(AddMission, 740)
	MisCancelAction(ClearMission, 740)

	MisNeed(MIS_NEED_DESP, "将以上需求的3样物品<y纯净之灵>拿给<p沙岚旧城>的<b圣女·艾达>（862,3303），让她用<y纯净之魂>净化。")
	
	MisResultTalk("<t>恭喜你！<n><t>你现在就已经成为一名合格的<b封印师>了！<n><t>愿女神卡拉祝福你。")
	MisHelpTalk("<t>去吧，即便是虔诚的医者，也要拥有勇敢的决心和不屈不挠的意志。")
	MisResultCondition(HasMission, 740)
	MisResultCondition(HasFlag, 740, 10 )
	MisResultAction(ClearMission, 740)
	MisResultAction(SetRecord, 740)
	MisResultAction(SetProfession, 14)

-----------------------------------封印师转职任务
	DefineMission( 756, "封印师转职任务", 740, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>愿女神卡拉祝福你。<n><t>哦，你带来了这些需要净化的物品，很好，我会用我最虔诚的心来祈祷，然后它们就会被我供奉在女神的神殿中。<n><t>你可以回到沙岚城中的大神官那里去了，我还是喜欢一个人，这样能静静的感受女神的旨意。<n><t>愿女神卡拉祝福你。")
	MisResultCondition(NoRecord, 740)
	MisResultCondition(HasMission, 740)
	MisResultCondition(NoFlag, 740, 10)
	MisResultCondition(HasItem, 4471, 3)
	MisResultCondition(HasItem, 4385, 10)
	MisResultCondition(HasItem, 4481, 3)
	MisResultAction(TakeItem, 4471, 3)
	MisResultAction(TakeItem, 4385, 10)
	MisResultAction(TakeItem, 4481, 3)
	MisResultAction(SetFlag, 740, 10)


end
RobinMission017()

----------------------------------------------------------
--							--
--							--
--		沙岚城[铁匠·铜铜鼓]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission022()

---------------------------------------新手任务送小刀
	DefineMission( 713, "铁匠的问候", 707, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("哦！<n><t>拉丝碧让你来找我吗？你是新来的吧？我叫铜铜鼓，是沙岚城的铁匠，想买武器可以到我这里来哦，我便宜卖给你。<n><t>现在你要在回到拉丝碧876,3572那里去，她应该还会给你介绍其他人。<n><t>（铜铜鼓送了你一把“新手小刀”，你可以从物品背包中将其装备到右手部位。<n><t>你可以用alt+E键来打开背包，也可以点击画面下方绿色包裹形象的按钮打开）")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(NoFlag, 707, 10)
	MisResultCondition(HasItem, 3956, 1)
	MisResultAction(TakeItem, 3956, 1)
	MisResultAction(SetFlag, 707, 10)
	MisResultBagNeed(1)

end
RobinMission022()

----------------------------------------------------------
--							--
--							--
--		白银城[新手指导·瑟安]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission024()

-----------------------------------新人报道
	DefineMission( 701, "新人报道", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>欢迎您的到来！<n><t>您可以从我这了解到所有职业和属性加点的事情。<n><t>另外，我将告诉你如何在<p白银城>买到上好的武器。<n><t>哦，你现在升级了，你可以点击画面下方黄色按钮（快捷键alt+A）打开你的属性界面来调整你的属性，每次升级你都可以获得属性点，你可以将这些属性点按你的需要分配到不同属性上。<n><t>你有5个属性可以提升，分别是：力量，可以提升近程武器攻击力；敏捷，可以提升躲闪攻击的回避率；专注，可以提升攻击的命中率和远程武器的攻击力；精神，可以提升精神力（SP）最大值和法术性技能的攻击力；体质，可以提升物理防御力和生命值（HP）。")
	MisHelpTalk("<t>朋友，我是这个城里唯一的新手指导。<n><t>你如果不找我了解这个世界，可是没有办法独自生活下去哦。")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)
	--MisResultCondition(HasFlag, 700, 10)
	--MisResultCondition(HasFlag, 700, 20)
	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)
	
	--Add by lark.li
	MisResultAction(GiveNpcMission, 702, "新手指导·瑟安", 2)

-----------------------------------铁匠的问候
	DefineMission( 702, "铁匠的问候", 701 )
	
	MisBeginTalk( "<t>想在这个弱肉强食的世界里生活，赤手空拳可是不行哦。<n><t>拿着这封推荐信交给<p白银城><b铁匠小金金>（2193,2706），相信对你会有帮助的。<n><t>（使用画面右上角方地图下的雷达开关，就是那个向下的箭头打开搜索雷达，输入相应的坐标，就可以跟着箭头的指示走了）" )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p白银城><b铁匠·小金金>（2193,2706），之后再去找新手指导员瑟安（2223,2785）")
		
	MisResultTalk("<t>你已经见过<b小金金>啦，等你以后赚了钱，可以去托他打造更好的武器哦。")
	MisHelpTalk("<t>记得把信亲手交给小金金哦，他在白银城左上角，坐标是2193,2706。<n><t>你可以通过搜索雷达来找他。")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )

	--Add by lark.li
	MisResultAction(GiveNpcMission, 704, "新手指导·瑟安", 3)

-----------------------------------服装店的问候
	DefineMission( 704, "服装店的问候", 702 )
	
	MisBeginTalk( "<t>这里是第二封推荐信，您必须交给<p白银城><b服装店主尼萨婆婆>（坐标：2266,2705），顺便拜访一下那位和蔼的老人，以后她也会给你帮助的。" )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "该任务无法中断" )
	--MisCancelAction(ClearMission, 702 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p白银城><b服装店主·尼萨婆婆>（坐标：2267,2704），之后再去找新手指导员瑟安（2223,2785）")
		
	MisResultTalk("<t>哦，<b尼萨婆婆>特别为你定制了一副手套吗？看上去挺不错的噢，要好好珍惜哦。")
	MisHelpTalk("<t>去见过尼萨婆婆了吗？她在白银城上方，坐标是2267,2704，你可以通过搜索雷达来找到她。")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------药品店的问候
	DefineMission( 706, "药品店的问候", 703 )
	
	MisBeginTalk( "<t>现在，这里有最后一封推荐信，把信交给<p白银城><b药材商人·帝姆>（坐标：2250,2770），相信可以得到必须的帮助。" )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "该任务无法中断" )
	--MisCancelAction(ClearMission, 703 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p白银城><b药材商人·帝姆>（坐标：2250,2770），之后再去找新手指导员瑟安（2223,2785）")
		
	MisResultTalk("<t>哦，这些是<b帝姆>给你的<r苹果>吧.多吃<r苹果>对你有好处，另外它可以恢复少量的HP。")
	MisHelpTalk("<t>帝姆在白银城水池的右边，他的坐标是2250,2770，你可以通过搜索雷达来找到他。")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------战斗考核
	DefineMission( 708, "战斗训练", 704 )
	
	MisBeginTalk( "<t>恩，不错，现在你的装备已经齐全了，那就出城去尝试一下战斗作为我对你最后的考核吧，当然，别走太远了。<n><t>从这边往左走就能出城了。<n><t>打败5个森灵，再给我带回1片翅膀就行。<n><t>森灵在城门口就能找到，翅膀可以在森灵身上得到，完成后我会给你不错的奖励。<n><t>（只要用鼠标左键直接点击你想要攻击的目标就可进行战斗，注意，城市里是无法战斗的哦，拾取道具的话是使用鼠标左键点击，当然，你可以使用ctrl+A键来快速拾取。）" )
	MisBeginCondition(HasRecord, 703)
	MisBeginCondition(NoRecord, 704)
	MisBeginCondition(NoMission, 704)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 704)
	MisBeginAction(SetFlag, 704, 1)
	MisBeginAction(AddTrigger, 7041, TE_GETITEM, 1620, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 103, 5 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 1620, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 5, 20, 5)
	
	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>很好，你已经掌握了一些基本的战斗与收集道具的方法了，我已经没有什么好教你的了。<n><t>我有两个好朋友可以推荐你去找他们，有一个家伙叫<b马尔斯>，他是白银城的巡逻兵，如果你也跟他一样喜欢战斗的话就去找找他吧，他在（2065,2732）位置，从白银城左边出去笔直走，就可以看到他了。<n><t>另一位是我们白银城有名的药草商人<b帝姆>，他最喜欢收集一些花花草草的东西了，最近好像又在找人帮忙收集药材什么的，如果你感兴趣的话就去（2250,2770）找他，也就是中央水池的右边啦。<n><t>祝你好运！")
	MisHelpTalk("<t>别着急，等你打败5个<b森灵>，找到1片<r翅膀>再来找我。")
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 1620, 1)
	MisResultCondition(HasFlag, 704, 24)
	MisResultAction(TakeItem, 1620, 1)
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704)
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1620 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 704, 20, 5 )
	RegCurTrigger( 7042 )

	
end
RobinMission024()


----------------------------------------------------------
--							--
--							--
--		白银城[服装店主·尼萨婆婆]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission025()

-----------------------------------服装店的问候
	DefineMission( 705, "服装店的问候", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>以前没见过你呢，有趣的孩子。<n><t>欢迎到白银城来。<n><t>我是服装店主尼萨婆婆。<n><t>既然瑟安给了你推荐信，我就专门为你定制一副新手手套吧，以后也要常来噢，可以和我聊聊天。<n><t>现在你要在回到瑟安2223,2785那里去，她应该还会给你介绍其他人。（尼萨婆婆送了你一个“新手手套”，你可以从物品背包中将其装备到手套部位。）")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(NoFlag, 702, 10)
	MisResultCondition(HasFlag, 702, 1)
	MisResultCondition(HasItem, 3951, 1)
	MisResultAction(TakeItem, 3951, 1)
	MisResultAction(SetFlag, 702, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission025()

----------------------------------------------------------
--							--
--							--
--		白银城[守卫·比特]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission026()

-----------------------------------勇气证书
	DefineMission( 709, "勇气证书", 705 )
	
	MisBeginTalk( "<t>你是想来领取勇气证书的么？真有胆识呀。<n><t>不过光有胆识还不够，想领取<r勇气证书>你还必须证明自己有足够的勇气和实力。<n><t>你现在去<p白银城野外>打败10只<b厚绒山羊>（2057,2638）、10只<b射水贝>（北面海边）和10只<b迷你猪>（1950,2563）回来。<n><t>如果你能做完这些，我将承认你是个合格的战士而颁发<b勇气证书>给你。" )
	MisBeginCondition(NoMission, 705)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginAction(AddMission, 705)
	MisBeginAction(SetFlag, 705, 1)
	MisBeginAction(AddTrigger, 7051, TE_KILL, 237, 10 )
	MisBeginAction(AddTrigger, 7052, TE_KILL, 213, 10 )
	MisBeginAction(AddTrigger, 7053, TE_KILL, 125, 10 )
	MisCancelAction(ClearMission, 705)
	
	MisNeed(MIS_NEED_KILL, 237, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 213, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 125, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3953, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>朋友，你做得真不错！<n><t>你通过我的测试了，这个就是就职剑士所需要的<r勇气证书>了。<n><t>你收好，等到达到<pLv10>的时候可以来找我就职剑士。")
	MisHelpTalk("<t>你还没有达到我的要求哦，战士的资格可不是随便就能获得的。")
	MisResultCondition(HasMission, 705)
	MisResultCondition(HasFlag, 705, 19 )
	MisResultCondition(HasFlag, 705, 29 )
	MisResultCondition(HasFlag, 705, 39 )
	MisResultAction(ClearMission, 705)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 705, 10, 10 )
	RegCurTrigger( 7051 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 213 )	
	TriggerAction( 1, AddNextFlag, 705, 20, 10 )
	RegCurTrigger( 7052 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 125 )	
	TriggerAction( 1, AddNextFlag, 705, 30, 10 )
	RegCurTrigger( 7053 )
	

-----------------------------------双剑士转职任务
	DefineMission( 749, "双剑士转职任务", 737 )
	
	MisBeginTalk( "<t>嗯，看来你已经是一个卓越的剑士了，既然你想要成为更强的武者，转职成<b双剑士>的话，还是要经过考核的，当然，我就是你的考官。<n><t>在加纳大陆西北面的<p温拿补给站>南方的森林里，生活着一些<r厚皮蜥蜴>，从它们那里取得5张<y油亮的蜥蜴皮>，然后<前往冰狼堡东边的<p骷髅营地补给站>那里，打倒10个<r骷髅武士>，然后找到3个<y武士之证>。<n><t>最后，去买一套<y铁甲>来我这里就行了。" )
	MisBeginCondition(NoRecord, 737)
	MisBeginCondition(NoMission, 737)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_TWO_FENCER )
	MisBeginAction(AddMission, 737)
	MisBeginAction(AddTrigger, 7372, TE_KILL, 268, 10 )
	MisBeginAction(AddTrigger, 7373, TE_GETITEM, 4474, 5 )
	MisBeginAction(AddTrigger, 7374, TE_GETITEM, 4456, 3 )
	MisBeginAction(AddTrigger, 7375, TE_GETITEM, 295, 1 )
	MisCancelAction(ClearMission, 737)
	
	MisNeed(MIS_NEED_KILL, 268, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4474, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4456, 3, 40, 3)
	MisNeed(MIS_NEED_ITEM, 295, 1, 50, 1)
	
	MisResultTalk("<t>恭喜你！<n><t>你现在就已经成为一名合格的<b双剑士>了！<n><t>今后将有更严峻的战斗在等待着你。")
	MisHelpTalk("<t>虽然转职的要求复杂了点，但是我相信你一定可以办到的。")
	MisResultCondition(HasMission, 737)
	MisResultCondition(HasFlag, 737, 29 )
	MisResultCondition(HasItem, 4474, 5 )
	MisResultCondition(HasItem, 4456, 3 )
	MisResultCondition(HasItem, 295, 1 )
	MisResultAction(TakeItem, 4474, 5)
	MisResultAction(TakeItem, 4456, 3)
	MisResultAction(TakeItem, 295, 1)
	MisResultAction(ClearMission, 737)
	MisResultAction(SetRecord, 737)
	MisResultAction(SetProfession, 9)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 737, 20, 10 )
	RegCurTrigger( 7372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4474 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 5 )
	RegCurTrigger( 7373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4456 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 3 )
	RegCurTrigger( 7374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 295 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 1 )
	RegCurTrigger( 7375 )

-----------------------------------巨剑士转职任务
	DefineMission( 750, "巨剑士转职任务", 738 )
	
	MisBeginTalk( "<t>想要转职成<b巨剑士>？很好！<n><t>但是，你最少应该拥有下面几样东西，然后再来找我：<n><t>你至少应该有套像样的巨剑士的武器，去买一把<y十字剑>，再带给我<r忍者鼹鼠>的<y忍者面罩>；5个<r极地熊>的<y巨熊獠牙>5个；<r>身上的<y坚固的石头>5个。<n><t>这样，既证明了你确实有成为巨剑士的力量，也让我看到了你想成为巨剑士的诚意。<n><t>其中<r忍者鼹鼠>你可以在<p废矿>里去找找，<r岩石怪>则在<p赖安森林>里，但是极地熊你就必须到东方的冰狼堡去找找了。" )
	MisBeginCondition(NoRecord, 738)
	MisBeginCondition(NoMission, 738)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_LARGE_FENCER )
	MisBeginAction(AddMission, 738)
	MisBeginAction(AddTrigger, 7381, TE_GETITEM, 15, 1 )
	MisBeginAction(AddTrigger, 7382, TE_GETITEM, 4454, 1 )
	MisBeginAction(AddTrigger, 7383, TE_GETITEM, 4453, 5 )
	MisBeginAction(AddTrigger, 7384, TE_GETITEM, 4368, 5 )
	MisCancelAction(ClearMission, 738)

	MisNeed(MIS_NEED_ITEM, 15, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4454, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4453, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4368, 5, 40, 5)
	
	MisResultTalk("<t>恭喜你！<n><t>你现在就已经成为一名合格的<b巨剑士>了！<n><t>今后将有更严峻的战斗在等待着你。")
	MisHelpTalk("<t>怎么，还有什么不清楚的？<r忍者鼹鼠>你可以在<p废矿里去找找，<r岩石怪>则在<p赖安森利>里，极地熊你必须到东方的冰狼堡去找找了。")
	MisResultCondition(HasMission, 738)
	MisResultCondition(HasItem, 15, 1 )
	MisResultCondition(HasItem, 4454, 1 )
	MisResultCondition(HasItem, 4453, 5 )
	MisResultCondition(HasItem, 4368, 5 )
	MisResultAction(TakeItem, 15, 1)
	MisResultAction(TakeItem, 4454, 1)
	MisResultAction(TakeItem, 4453, 5)
	MisResultAction(TakeItem, 4368, 5)
	MisResultAction(ClearMission, 738)
	MisResultAction(SetRecord, 738)
	MisResultAction(SetProfession, 8)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 15 )	
	TriggerAction( 1, AddNextFlag, 738, 10, 1 )
	RegCurTrigger( 7381 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4454 )	
	TriggerAction( 1, AddNextFlag, 738, 20, 1 )
	RegCurTrigger( 7382 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4453 )	
	TriggerAction( 1, AddNextFlag, 738, 30, 5 )
	RegCurTrigger( 7383 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4368 )	
	TriggerAction( 1, AddNextFlag, 738, 40, 5 )
	RegCurTrigger( 7384 )



end
RobinMission026()





----------------------------------------------------------
--							--
--		沙岚城[新手指导·拉丝碧]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission027()

-----------------------------------新人报道
	DefineMission( 711, "新人报道", 2, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

		
	MisResultTalk("<t>啊！<n><t>又有新人来了，欢迎你。<n><t>想要了解所有职业和属性加点的事情都可以问我。<n><t>接下来，我将告诉你如何在<p沙岚城>买到上好的武器。<n><t>哦，你现在升级了，你可以点击画面下方黄色按钮（快捷键alt+A）打开你的属性界面来调整你的属性，每次升级你都可以获得属性点，你可以将这些属性点按你的需要分配到不同属性上。<n><t>你有5个属性可以提升，分别是：力量，可以提升近程武器攻击力；敏捷，可以提升躲闪攻击的回避率；专注，可以提升攻击的命中率和远程武器的攻击力；精神，可以提升精神力（SP）最大值和法术性技能的攻击力；体质，可以提升物理防御力和生命值（HP）。")
	MisHelpTalk("<t>朋友，我可是这个城里最热情好客的人哦。<n><t>你如果不问我如何在这个世界生活，可是会费力不讨好的哟。")
	MisResultCondition(NoRecord, 2)
	MisResultCondition(HasMission, 2)
	--MisResultCondition(HasFlag, 706, 10)
	--MisResultCondition(HasFlag, 706, 20)
	MisResultAction(ClearMission, 2)
	MisResultAction(SetRecord, 2)
	MisResultAction(AddExp, 6, 6)


-----------------------------------铁匠的问候
	DefineMission( 712, "铁匠的问候", 707 )
	
	MisBeginTalk( "<t>看看你呀，赤手空拳可不行，这样一出城就会被怪物吃掉哦。<n><t>这样吧，拿着这封信去找铁匠铜铜鼓（902,3495）。<n><t>顺便看看有什么合适的武器。（使用画面右上角方地图下的雷达开关，就是那个向下的箭头打开搜索雷达，输入相应的坐标，就可以跟着箭头的指示走了）" )
	MisBeginCondition(HasRecord, 2)
	MisBeginCondition(NoRecord, 707)
	MisBeginCondition(NoMission, 707)
	MisBeginAction(AddMission, 707)
	MisBeginAction(SetFlag, 707, 1)
	MisBeginAction(GiveItem, 3956, 1, 4)
	MisCancelAction(ClearMission, 707 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p沙岚城><b铁匠·铜铜鼓>（902,3495），之后再去找新手指导员拉丝碧（876,3572）")
		
	MisResultTalk("<t>你已经见过<b铜铜鼓>了吧，等你以后赚了钱，可以去托他打造更好的武器。")
	MisHelpTalk("<t>记得把信交给<b铜铜鼓>哦，他在<p沙岚城>右上角，坐标是902,3495。<n><t>你可以通过小地图来找他。")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(HasFlag, 707, 10)
	MisResultAction(ClearMission, 707)
	MisResultAction(SetRecord, 707)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------服装店的问候
	DefineMission( 714, "服装店的问候", 708 )
	
	MisBeginTalk( "<t>好，接下去去见见服装店主吧，有封介绍信的话就好了，把信交给<p沙岚城><b服装店主莫亚>（894,3602）那里，他不会亏待你的。" )
	MisBeginCondition(HasRecord, 707)
	MisBeginCondition(NoRecord, 708)
	MisBeginCondition(NoMission, 708)
	MisBeginAction(AddMission, 708)
	MisBeginAction(SetFlag, 708, 1)
	MisBeginAction(GiveItem, 3957, 1, 4)
	--MisCancelAction(ClearMission, 708 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p沙岚城><b服装店主·莫亚>（坐标：894,3602），之后再去找新手指导员拉丝碧（876,3572）")
		
	MisResultTalk("<t>哦？这是<b莫亚>送你的手套吗？看上去挺不错的噢，要好好珍惜哦。")
	MisHelpTalk("<t>一定要把信交给莫亚哦。<n><t>他的坐标是894,3602，你可以通过搜索雷达找他。")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(HasFlag, 708, 10)
	MisResultAction(ClearMission, 708)
	MisResultAction(SetRecord, 708)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------药材店的问候
	DefineMission( 716, "药材店的问候", 709 )
	
	MisBeginTalk( "<t>那么现在你也该去见见城里的<b药材商人·沙拉拉>了（坐标：903,3646），给，最后一封推荐信，快去吧。" )
	MisBeginCondition(HasRecord, 708)
	MisBeginCondition(NoRecord, 709)
	MisBeginCondition(NoMission, 709)
	MisBeginAction(AddMission, 709)
	MisBeginAction(SetFlag, 709, 1)
	MisBeginAction(GiveItem, 3958, 1, 4)
	MisCancelAction(SystemNotice, "该任务无法中断" )
	--MisCancelAction(ClearMission, 709 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p沙岚城><b药材商人·沙拉拉>（坐标：903,3646），之后再去找新手指导员拉丝碧（876,3572）")
		
	MisResultTalk("<t>哦，这些是<b沙拉拉>给你的<r苹果>吧.多吃<r苹果>对你有好处，它可以恢复少量的HP呢。")
	MisHelpTalk("<t>沙拉拉离这里不远，就在沙岚城中央喷泉那里，坐标是903,3646。<n><t>你可以通过小地图来找到她。")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(HasFlag, 709, 10)
	MisResultAction(ClearMission, 709)
	MisResultAction(SetRecord, 709)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------战斗训练
	DefineMission( 718, "战斗训练", 710 )
	
	MisBeginTalk( "恩，不错嘛。<n><t>现在你的装备已经齐全了，我要考核你一下吧，正好让你体会一下战斗，当然要注意安全哦。<n><t>你去消灭5个小蝎子，顺便找1个仙人绒球给我，回来我会给你奖励的。<n><t>小蝎子出城往右走一点就能看到，仙人绒球的话，可以从仙人球身上找到，当然，要注意安全哦！<n><t>（只要用鼠标左键直接点击你想要攻击的目标就可进行战斗，注意，城市里是无法战斗的哦，拾取道具的话是使用鼠标左键点击，当然，你可以使用ctrl+A键来快速拾取。）" )
	MisBeginCondition(HasRecord, 709)
	MisBeginCondition(NoRecord, 710)
	MisBeginCondition(NoMission, 710)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 710)
	MisBeginAction(SetFlag, 710, 1)
	MisBeginAction(AddTrigger, 7101, TE_GETITEM, 1691, 1 )
	MisBeginAction(AddTrigger, 7102, TE_KILL, 188, 5 )
	MisCancelAction(ClearMission, 710)

	MisNeed(MIS_NEED_ITEM, 1691, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 188, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>很好，你已经掌握了一些基本的战斗与收集道具的方法了，我已经没有什么好教你的了。<n><t>我有两个好朋友可以推荐你去找他们，有一个家伙叫<b迈克>，他是沙岚城的巡逻兵，如果你也跟他一样喜欢战斗的话就去找找他吧，他在（958,3549）位置。<n><t>另一位是我们沙岚城的药草商人<b沙拉拉>，她最近迷上了草药收藏，好像又在找人帮忙收集药材成分什么的，如果你感兴趣的话就去（903,3646）找她，也祝你好运！")
	MisHelpTalk("<t>别着急，等你打败5个<b小蝎子>，找到1个<r仙人绒球>再来找我。")
	MisResultCondition(NoRecord, 710)
	MisResultCondition(HasMission, 710)
	MisResultCondition(HasItem, 1691, 1)
	MisResultCondition(HasFlag, 710, 24)
	MisResultAction(TakeItem, 1691, 1)
	MisResultAction(ClearMission, 710)
	MisResultAction(SetRecord, 710)
	MisResultAction(AddExp, 75, 75 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 710, 10, 1 )
	RegCurTrigger( 7101 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 188 )	
	TriggerAction( 1, AddNextFlag, 710, 20, 5 )
	RegCurTrigger( 7102 )


end
RobinMission027()




----------------------------------------------------------
--							--
--							--
--		沙岚城[服装店主·莫亚]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission028()

-----------------------------------服装店的问候
	DefineMission( 715, "服装店的问候", 708, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>呵呵！呵呵！<n><t>是拉丝碧的推荐信呢。<n><t>好，按照惯例，这副手套作为我的礼物，送给你吧。<n><t>以后你到店里来买装备，我都会便宜卖给你的。<n><t>现在你要在回到拉丝碧876,3572那里去，她应该还会给你介绍其他人。<n><t>（莫亚送了你一个“新手手套”，你可以从物品背包中将其装备到手套部位。）")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(NoFlag, 708, 10)
	MisResultCondition(HasItem, 3957, 1)
	MisResultAction(TakeItem, 3957, 1)
	MisResultAction(SetFlag, 708, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission028()



----------------------------------------------------------
--							--
--		冰狼堡[新手指导·安琪露亚]		--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission030()

-----------------------------------新人报道
	DefineMission( 721, "新人报道", 3, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>啊，你是新手呢，想要了解所有职业和属性加点的事情都可以问我。<n><t>接下来，我将告诉你如何在<p冰狼堡>买到上好的武器。<n><t>哦，你现在升级了，你可以点击画面下方黄色按钮（快捷键alt+A）打开你的属性界面来调整你的属性，每次升级你都可以获得属性点，你可以将这些属性点按你的需要分配到不同属性上。<n><t>你有5个属性可以提升，分别是：力量，可以提升近程武器攻击力；敏捷，可以提升躲闪攻击的回避率；专注，可以提升攻击的命中率和远程武器的攻击力；精神，可以提升精神力（SP）最大值和法术性技能的攻击力；体质，可以提升物理防御力和生命值（HP）。")
	MisHelpTalk("<t>朋友，我是这个城里唯一的新手指导。<n><t>你如果不找我了解这个世界，可是没有办法独自生活下去哦。")
	MisResultCondition(NoRecord, 3)
	MisResultCondition(HasMission, 3)
	--MisResultCondition(HasFlag, 712, 10)
	--MisResultCondition(HasFlag, 712, 20)
	MisResultAction(ClearMission, 3)
	MisResultAction(SetRecord, 3)
	MisResultAction(AddExp, 6, 6)


-----------------------------------铁匠的问候
	DefineMission( 722, "铁匠的问候", 713 )
	
	MisBeginTalk( "<t>现在你连一件防身的武器都没有，拿着这封信交给冰狼堡铁匠·暴冰（1344,529），他会帮助你的。<n><t>（使用画面右上角方地图下的雷达开关，就是那个向下的箭头打开搜索雷达，输入相应的坐标，就可以跟着箭头的指示走了）" )
	MisBeginCondition(HasRecord, 3)
	MisBeginCondition(NoRecord, 713)
	MisBeginCondition(NoMission, 713)
	MisBeginAction(AddMission, 713)
	MisBeginAction(SetFlag, 713, 1)
	MisBeginAction(GiveItem, 3959, 1, 4)
	MisCancelAction(ClearMission, 713 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p冰狼堡><b铁匠·暴冰>（1344,529），之后回去找新手指导员安琪露亚(1315,507)")
		
	MisResultTalk("<t>你已经见过<b暴冰>了吧？他是不是又说自己还是未婚，还托你给他介绍女朋友？")
	MisHelpTalk("<t>记得把信交给<b暴冰>哦，他在<p冰狼堡>水池的右下角，坐标是1344,529。<n><t>你可以通过小地图来找他。")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(HasFlag, 713, 10)
	MisResultAction(ClearMission, 713)
	MisResultAction(SetRecord, 713)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------服装店的问候
	DefineMission( 724, "服装店的问候", 714 )
	
	MisBeginTalk( "<t>啊，这里还有封信，是给<p冰狼堡><b服装店主·翰娜>（坐标：1349,539）的，你交给她的话，一样也能获得帮助。" )
	MisBeginCondition(HasRecord, 713)
	MisBeginCondition(NoRecord, 714)
	MisBeginCondition(NoMission, 714)
	MisBeginAction(AddMission, 714)
	MisBeginAction(SetFlag, 714, 1)
	MisBeginAction(GiveItem, 3960, 1, 4)
	MisCancelAction(SystemNotice, "该任务无法中断" )
	--MisCancelAction(ClearMission, 714 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p冰狼堡><b服装店主·翰娜>（坐标：1349,539），之后回去找新手指导员安琪露亚(1315,507)")
		
	MisResultTalk("<t>哦，<b翰娜>特别为你定制了一副手套吗？看上去挺不错的噢，要好好珍惜哦。")
	MisHelpTalk("<t>今天一定要把信交给<b翰娜>哦。<n><t>她在<p冰狼堡>水池的右下方，坐标是1349,539。你可以通过小地图来找到她。")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(HasFlag, 714, 10)
	MisResultAction(ClearMission, 714)
	MisResultAction(SetRecord, 714)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------药品店的问候
	DefineMission( 726, "药品店的问候", 715 )
	
	MisBeginTalk( "<t>最后，要记住，药品也是战斗中很重要的哦，拿着这封介绍信，去认识一下<p冰狼堡><b药店老板·达赫>（坐标：1352,499）吧。" )
	MisBeginCondition(HasRecord, 714)
	MisBeginCondition(NoRecord, 715)
	MisBeginCondition(NoMission, 715)
	MisBeginAction(AddMission, 715)
	MisBeginAction(SetFlag, 715, 1)
	MisBeginAction(GiveItem, 3961, 1, 4)
	MisCancelAction(SystemNotice, "该任务无法中断" )
	--MisCancelAction(ClearMission, 715 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信交给<p冰狼堡><b药店老板·达赫>（坐标：1352,499），之后回去找新手指导员安琪露亚(1315,507)")
		
	MisResultTalk("<t>哦，这些是<b达赫>给你的<r苹果>吧。<n><t>多吃<r苹果>对你有好处，它可以恢复少量的HP。")
	MisHelpTalk("<t>达赫在<p冰狼堡>水池的右边，他的坐标是1352,499，你可以通过小地图来找到他。")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(HasFlag, 715, 10)
	MisResultAction(ClearMission, 715)
	MisResultAction(SetRecord, 715)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------战斗训练
	DefineMission( 728, "战斗训练", 716 )
	
	MisBeginTalk( "<t>恩，不错嘛。<n><t>现在你的装备已经齐全了，体会一下战斗，进行特训吧，现在你去城外杀5只雪原蔻蔻(1465,402)试试吧。<n><t>对了，顺便再收集1个种子来，雪原蔻蔻就在冰狼堡下方大门口的地方，种子可以在雪地精灵草身上得到，完成了以后再来找我！<n><t>（只要用鼠标左键直接点击你想要攻击的目标就可进行战斗，注意，城市里是无法战斗的哦，拾取道具的话是使用鼠标左键点击，当然，你可以使用ctrl+A键来快速拾取。）" )
	MisBeginCondition(HasRecord, 715)
	MisBeginCondition(NoRecord, 716)
	MisBeginCondition(NoMission, 716)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 716)
	MisBeginAction(AddTrigger, 7161, TE_GETITEM, 1597, 1 )
	MisBeginAction(AddTrigger, 7162, TE_KILL, 234, 5 )
	MisBeginAction(SetFlag, 716, 1)
	MisCancelAction(ClearMission, 716)
	
	MisNeed(MIS_NEED_ITEM, 1597, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 234, 5, 20, 5)


	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>很好，你已经掌握了一些基本的战斗与收集道具的方法了，我已经没有什么好教你的了。")
	MisHelpTalk("<t>记得，要消打败5个雪原蔻蔻，拿到1个种子才行哦")
	MisResultCondition(NoRecord, 716)
	MisResultCondition(HasMission, 716)
	MisResultCondition(HasItem, 1597, 1)
	MisResultCondition(HasFlag, 716, 24)
	MisResultAction(TakeItem, 1597, 1)
	MisResultAction(ClearMission, 716)
	MisResultAction(SetRecord, 716 )
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1597 )	
	TriggerAction( 1, AddNextFlag, 716, 10, 1 )
	RegCurTrigger( 7161 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 234 )	
	TriggerAction( 1, AddNextFlag, 716, 20, 5 )
	RegCurTrigger( 7162 )


	
end
RobinMission030()


----------------------------------------------------------
--							--
--							--
--		冰狼堡[铁匠·暴冰]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission031()

---------------------------------------新手任务送小刀
	DefineMission( 723, "铁匠的问候", 713, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你是新来的吧？我叫暴冰，是冰狼堡的铁匠，特长是制作猎人的武器，未婚！<n><t>现在你要在回到安琪露亚1315,507那里去，她应该还会给你介绍其他人。<n><t>（暴冰送了你一把“新手小刀”，你可以从物品背包中将其装备到右手部位。你可以用alt+E键来打开背包，也可以点击画面下方绿色包裹形象的按钮打开）")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(NoFlag, 713, 10)
	MisResultCondition(HasItem, 3959, 1)
	MisResultAction(TakeItem, 3959, 1)
	MisResultAction(SetFlag, 713, 10)
	MisResultBagNeed(1)

end
RobinMission031()


----------------------------------------------------------
--							--
--							--
--		冰狼堡[服装店主·翰娜]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission032()

-----------------------------------服装店的问候
	DefineMission( 725, "服装店的问候", 714, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你是新来的吧？呵呵，欢迎到冰狼堡来。<n><t>我是这里的服装店主·翰娜。谢谢你送信过来哦。<n><t>这个新手手套你拿去用吧，是我专门为你做的。<n><t>还有,回去的时候要记得告诉安琪露亚,信我收到了,叫她不要担心了。<n><t>现在你要在回到安琪露亚1315,507那里去，她应该还会给你介绍其他人。<n><t>（翰娜送了你一个“新手手套”，你可以从物品背包中将其装备到手套部位。）")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(NoFlag, 714, 10)
	MisResultCondition(HasItem, 3960, 1)
	MisResultAction(TakeItem, 3960, 1)
	MisResultAction(SetFlag, 714, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission032()


----------------------------------------------------------
--							--
--							--
--		冰狼堡[药材商人·达赫]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission033()

-----------------------------------药材店的问候
	DefineMission( 727, "药材店的问候", 715, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你是初来乍道的吧？欢迎欢迎，我是这里的药材商人·达赫。<n><t>一路上真是辛苦你了,这几个苹果送给你，谢谢你大老远跑来给我送信哦。<n><t>现在你要在回到安琪露亚1315,507那里去，她应该还会给你新的任务。<n><t>（达赫送了你几个“苹果”，你可以从物品背包中将其拖拽到道具快捷栏里使用，快捷栏就在游戏界面的正下方，标有F1~F8的那些空格。）")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(NoFlag, 715, 10)
	MisResultCondition(HasItem, 3961, 1)
	MisResultAction(TakeItem, 3961, 1)
	MisResultAction(SetFlag, 715, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

---------------------------------收集癖	
	DefineMission( 735, "收集癖", 723 )

	MisBeginTalk( "<t>最近我整理自己的收集品时发现，我居然没有<r章鱼触手>这样东西，现在就请你帮我去找一些吧，只要5个<r章鱼触手>就好了。<n><t>你可以在<b雪原蔻蔻>那里得到，它们一般会在城门口附近出现。<n><t>目前我就需要你替我做这件事！" )
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 723)
	MisBeginAction(SetFlag, 723, 1)
	MisBeginAction(AddTrigger, 7231, TE_GETITEM, 1704, 5 )
	MisCancelAction(ClearMission, 723)

	MisNeed(MIS_NEED_ITEM, 1704, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>太好了，这下我的收藏品又多了一点，好开心哦！<n><t>也要谢谢你，今后还会有需要你帮助的地方，你还要继续帮我哦！")
	MisHelpTalk("<t>怎么了，很难找吗？雪原蔻蔻就在城门口附近，快去吧。")
	MisResultCondition(HasMission, 723)
	MisResultCondition(HasItem, 1704, 5 )
	MisResultAction(TakeItem, 1704, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 723)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704)	
	TriggerAction( 1, AddNextFlag, 723, 10, 5 )
	RegCurTrigger( 7231 )


	---------------------------------收集癖	
	DefineMission( 746, "收集癖", 734 )

	MisBeginTalk( "<t>最近我发现，我的收藏里居然连根枯树枝都没有，太丢脸了，拜托你去（1179,475）附近从<b雪原帕帕>身上找到5根<r枯树枝>给我吧，快去吧，如果我的收藏不能让我满意的话，我也不能再给出新的任务给你！" )
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 734)
	MisBeginAction(SetFlag, 734, 1)
	MisBeginAction(AddTrigger, 7341, TE_GETITEM, 3372, 5 )
	MisCancelAction(ClearMission, 734)

	MisNeed(MIS_NEED_ITEM, 3372, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>哈哈哈，我的收藏又变丰富了")
	MisHelpTalk("<t>不会吧，枯树枝吔！<n><t>这么简单也找不到吗？冰狼堡出城就有<b雪原帕帕>，他们身上就有哦。")
	MisResultCondition(HasMission, 734)
	MisResultCondition(HasItem, 3372, 5 )
	MisResultAction(TakeItem, 3372, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 734)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3372)	
	TriggerAction( 1, AddNextFlag, 734, 10, 5 )
	RegCurTrigger( 7341 )


---------------------------------收集癖	
	DefineMission( 747, "收集癖", 735 )

	MisBeginTalk( "<t>最近收集了很多好东西，但是却没有地方存放了，看你现在的等级也算正好，那就请帮我个忙，去（1179,371）附近的<b冰原迷你猪>身上搞到5个<r药瓶>回来吧，对了，可能多带些回复品比较安全些。" )
	MisBeginCondition(NoMission, 735)
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 735)
	MisBeginAction(SetFlag, 735, 1)
	MisBeginAction(AddTrigger, 7351, TE_GETITEM, 1779, 5 )
	MisCancelAction(ClearMission, 735)

	MisNeed(MIS_NEED_ITEM, 1779, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>噢噢！<n><t>有药瓶了，这下又可以存放更多的收藏品了，哈哈，好高兴哦！")
	MisHelpTalk("<t>不就是几个药瓶嘛，全靠你了，快去吧。")
	MisResultCondition(HasMission, 735)
	MisResultCondition(HasItem, 1779, 5 )
	MisResultAction(TakeItem, 1779, 5 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 735)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 735, 10, 5 )
	RegCurTrigger( 7351 )



end
RobinMission033()

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡剑士·雷欧]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission034()

-----------------------------------猎人手册
	DefineMission( 729, "猎人手册", 717 )
	
	MisBeginTalk( "<t>你是想来领取猎人手册的么？真有胆识呀。<n><t>不过光有胆识还不够，想领取<r猎人手册>你还必须证明自己有足够的敏捷的身手。<n><t>你现在去<p冰狼堡野外>捕猎10只<b乖乖鹿>（1164，305）和10只<b白色乖乖鹿>（1325,305）回来。<n><t>另外，你还需要1瓶<r精灵果汁>。<n><t>因为猎人是长期在外单独狩猎，识别HP回复品的能力也是必须的。<n><t>你可以去找<p冰狼堡>的<b芭芭拉>了解如何获得精灵果汁。<n><t>如果你能做完这些，我将承认你是个合格的准猎人。" )
	MisBeginCondition(NoMission, 717)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginAction(AddMission, 717)
	MisBeginAction(SetFlag, 717, 1)
	MisBeginAction(AddTrigger, 7171, TE_KILL, 240, 10 )
	MisBeginAction(AddTrigger, 7172, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7173, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 717)

	
	MisNeed(MIS_NEED_KILL, 240, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3122, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 238, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3955, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>朋友，你做得真不错！<n><t>你通过我的测试了，这个就是就职猎人所需要的<r猎人手册>了。<n><t>你收好，等到达到<pLv10>的时候可以来找我就职猎人。")
	MisHelpTalk("<t>你还没有达到我的要求哦，猎人的资格可不是随便就能获得的。")
	MisResultCondition(HasMission, 717)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasFlag, 717, 19 )
	MisResultCondition(HasFlag, 717, 39 )
	MisResultAction(TakeItem, 3122, 1)
	MisResultAction(ClearMission, 717)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 717, 10, 10 )
	RegCurTrigger( 7171 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 717, 20, 1 )
	RegCurTrigger( 7172 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 717, 30, 10 )
	RegCurTrigger( 7173 )
	
-----------------------------------狙击手转职任务
	DefineMission( 757, "狙击手转职任务", 741 )
	
	MisBeginTalk( "<t>要成为<b狙击手>其实很简单。<n><t>去东边的<p骷髅营地补给站>，在那里有许多可怕的不死战士，去击败10个<r骷髅弓箭手>，并拿回5个<y老旧的箭袋>，去<p加纳大陆>的<P废矿>击败10个<r忍者鼹鼠>并拿回5个<r折断的忍者剑>回来给我就行了。" )
	MisBeginCondition(NoRecord, 741)
	MisBeginCondition(NoMission, 741)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 2 )
	MisBeginCondition(CheckConvertProfession, MIS_GUNMAN )
	MisBeginAction(AddMission, 741)
	MisBeginAction(AddTrigger, 7411, TE_KILL, 269, 10 )
	MisBeginAction(AddTrigger, 7412, TE_KILL, 243, 10 )
	MisBeginAction(AddTrigger, 7413, TE_GETITEM, 4362, 5 )
	MisBeginAction(AddTrigger, 7414, TE_GETITEM, 4367, 5 )
	MisCancelAction(ClearMission, 741)
	
	MisNeed(MIS_NEED_KILL, 269, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 243, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4362, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4367, 5, 40, 5)
	
	MisResultTalk("<t>恭喜你！<n><t>你现在就已经成为一名合格的<b狙击手>了！<n><t>记住，沉着冷静的作战是狙击手的必胜法宝。")
	MisHelpTalk("<t>怎么了？你对自己没信心吗？")
	MisResultCondition(HasMission, 741)
	MisResultCondition(HasFlag, 741, 19 )
	MisResultCondition(HasFlag, 741, 29 )
	MisResultCondition(HasItem, 4362, 5 )
	MisResultCondition(HasItem, 4367, 5 )
	MisResultAction(TakeItem, 4362, 5)
	MisResultAction(TakeItem, 4367, 5)
	MisResultAction(ClearMission, 741)
	MisResultAction(SetRecord, 741)
	MisResultAction(SetProfession, 12)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 269 )	
	TriggerAction( 1, AddNextFlag, 741, 10, 10 )
	RegCurTrigger( 7411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 243 )	
	TriggerAction( 1, AddNextFlag, 741, 20, 10 )
	RegCurTrigger( 7412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4362 )	
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4367 )	
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7414 )

end
RobinMission034()


----------------------------------------------------------
--							--
--							--
--		白银城[巡逻兵·马尔斯]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission035()

-----------------------------------十万火急
	DefineMission( 730, "十万火急", 718 )

	MisBeginTalk( "<t>啊，现在情况万分危急，因为有人投诉，说我的辖区里有太多的<b迷你蜂>，有好多人被蜇伤了，没办法，因为我都在忙着对付帕帕蔻蔻嘛，所以拜托你一定得帮我，<b迷你蜂>就在这附近可以找到，消灭10只<b迷你蜂>，这样我也好交差了，我一定会报答你的，快去快回哦！<n><t>这可是目前的首要任务，只要我们多清理几次，情况一定会改善的。" )
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 718)
	MisBeginAction(SetFlag, 718, 1)
	MisBeginAction(AddTrigger, 7181, TE_KILL, 206, 10 )
	MisCancelAction(ClearMission, 718)
	
	MisNeed(MIS_NEED_KILL, 206, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>太好了，你真是个好朋友，有你的帮助今天晚上我再也不会被罚清洗整个巡逻小队的袜子了……")
	MisHelpTalk("<t>怎么了，就是10只迷你蜂，你一定没问题的，快去快回！")
	MisResultCondition(HasMission, 718)
	MisResultCondition(HasFlag, 718, 19 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 718)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 718, 10, 10 )
	RegCurTrigger( 7181 )


-----------------------------------蘑菇泛滥
	DefineMission( 736, "蘑菇泛滥", 724 )

	MisBeginTalk( "<t>不知是哪个无聊的家伙，在城外放养了很多<b大嘴菇>，现在已经泛滥成灾了，虽然我也很喜欢喝蘑菇汤，可是没人愿意被那些大嘴菇咬得。<n><t>我这里的清理工作还未结束，又要麻烦你了，去（2220,2564）清理掉15个<b大嘴菇>就好了，拜托拜托，而其看上去，如果不把这些事做好，我们就无法腾出手来做其他任何事了。" )
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 724)
	MisBeginAction(SetFlag, 724, 1)
	MisBeginAction(AddTrigger, 7241, TE_KILL, 184, 15 )
	MisCancelAction(ClearMission, 724)
	
	MisNeed(MIS_NEED_KILL, 184, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>哦哦！<n><t>完成了吗？你真行啊！<n><t>这样就好了，有你的帮助，我的任务就变得轻松多了，如果不是还有清理小章鱼们的任务，我一定要请你去喝一杯呢。")
	MisHelpTalk("<t>怎样，是15个大嘴菇哦！<n><t>我全靠你了，加油！")
	MisResultCondition(HasMission, 724)
	MisResultCondition(HasFlag, 724, 24 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 724)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 724, 10, 15 )
	RegCurTrigger( 7241 )


-----------------------------------护绿行动
	DefineMission( 737, "护绿行动", 725 )

	MisBeginTalk( "<t>我的朋友，你有没有发现，最近白银城周围的绿化好象不知不觉地减少了，听队长说，是因为那些大胃口的<b草原龟>都聚集到城市附近来了，现在又要靠你了，帮我干掉10个草原龟，你应该可以在（2057,2564）找到它们。<n><t>我会答谢你的，顺便提醒你，这些草原龟虽然动作缓慢，但是防御力是很高的，虽然这个任务比起之前来算是有点难度了，但是你的级别也算是合适了！" )
	MisBeginCondition(NoMission, 725)
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 725)
	MisBeginAction(SetFlag, 725, 1)
	MisBeginAction(AddTrigger, 7251, TE_KILL, 119, 10 )
	MisCancelAction(ClearMission, 725)
	
	MisNeed(MIS_NEED_KILL, 119, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>搞定了啊！<n><t>好样的，虽然说这些草原龟也挺可怜的，但是为了大家共同生存的环境，不得不委屈他们了，要知道，听说现在我们整个加纳大陆上都开始资源匮乏了呢。")
	MisHelpTalk("<t>怎样，是10个草原龟哦！<n><t>你应该可以在（2057,2564）找到它们。")
	MisResultCondition(HasMission, 725)
	MisResultCondition(HasFlag, 725, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 725)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 725, 10, 10 )
	RegCurTrigger( 7251 )

	
end
RobinMission035()


----------------------------------------------------------
--							--
--							--
--		沙岚城[药材商人·沙拉拉]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission036()

-----------------------------------药材店的问候
	DefineMission( 717, "药材店的问候", 709, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>哦，你是新来的吗？怪不得我在沙岚城从来没见过你呢。<n><t>我是城里的药材商人·沙拉拉，不过现在开始卖回复品了。<n><t>欢迎你常来我这里哦。<n><t>这几个苹果送给你，下次就要收费了哦。<n><t>现在你要在回到拉丝碧876,3572那里去，她应该还会给你新的任务。<n><t>（沙拉拉送了你几个“苹果”，你可以从物品背包中将其拖拽到道具快捷栏里使用，快捷栏就在游戏界面的正下方，标有F1~F8的那些空格。）")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(NoFlag, 709, 10)
	MisResultCondition(HasItem, 3958, 1)
	MisResultAction(TakeItem, 3958, 1)
	MisResultAction(SetFlag, 709, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)


---------------------------------嫁接试验	
	DefineMission( 734, "嫁接试验", 722 )

	MisBeginTalk( "<t>你想不想看到仙人掌上开出精灵花？我是想做一下这种试验，所以拜托你帮我收集5个<r仙人绒球>和5个<r种子>吧。<n><t>这两样东西应该可以在仙人球和精灵草身上找到，当然，也许我还会需要更多，但，这次先替我找这些来吧，说不定就成功了呢！" )
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 722)
	MisBeginAction(SetFlag, 722, 1)
	MisBeginAction(AddTrigger, 7221, TE_GETITEM, 1691, 5 )
	MisBeginAction(AddTrigger, 7222, TE_GETITEM, 1597, 5 )
	MisCancelAction(ClearMission, 722)

	MisNeed(MIS_NEED_ITEM, 1691, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1597, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>很好，这下就能进行嫁接实验了，等到明年你来看吧，也许真的会成功哦！")
	MisHelpTalk("<t>咦？还没找到我要的东西吗？就是5个<r仙人绒球>和5个<r种子>。")
	MisResultCondition(HasMission, 722)
	MisResultCondition(HasItem, 1691, 5 )
	MisResultCondition(HasItem, 1597, 5 )
	MisResultAction(TakeItem, 1691, 5 )
	MisResultAction(TakeItem, 1597, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 722)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691)	
	TriggerAction( 1, AddNextFlag, 722, 10, 5 )
	RegCurTrigger( 7221 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1597)	
	TriggerAction( 1, AddNextFlag, 722, 20, 5 )
	RegCurTrigger( 7222 )


--------------------------------伪造礼物	
	DefineMission( 744, "伪造礼物", 732 )

	MisBeginTalk( "<t>听说冰狼堡那里的药店老板最近在收集动物汗水，我打算跟他开个玩笑，所以需要一些伪造的材料。<n><t>你帮我去收集5个<r混浊的水>和5个<r玻璃杯>来吧，这样一定可以骗到他的。<n><t>这些东西可以从（1184,3557）附近的<b小蝎子>那里得到，这个就算你这个级别的特别任务吧，哈哈！" )
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 732)
	MisBeginAction(SetFlag, 732, 1)
	MisBeginAction(AddTrigger, 7321, TE_GETITEM, 1648, 5 )
	MisBeginAction(AddTrigger, 7322, TE_GETITEM, 1777, 2 )
	MisCancelAction(ClearMission, 732)

	MisNeed(MIS_NEED_ITEM, 1648, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1777, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>唔唔，太好了，再找些盐来混合一下一定可以骗到那个有收集癖的家伙的，唔唔。")
	MisHelpTalk("<t>不会吧，还没找来吗？快点啦！")
	MisResultCondition(HasMission, 732)
	MisResultCondition(HasItem, 1648, 5 )
	MisResultCondition(HasItem, 1777, 2 )
	MisResultAction(TakeItem, 1648, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 732)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1648)	
	TriggerAction( 1, AddNextFlag, 732, 10, 5 )
	RegCurTrigger( 7321 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 732, 20, 2 )
	RegCurTrigger( 7322 )


	--------------------------------配药材料	
	DefineMission( 745, "配药材料", 733 )

	MisBeginTalk( "<t>这次我需要收集一些配药的材料了，特别是两样东西我这里奇缺，麻烦你帮我找5个<r仙人掌的花>和2个<r沙枣>给我吧，去（1031,3556）附近吧，那里的<b仙人掌>身上绝对有，你现在的级别对付仙人掌应该是没问题的。<n><t>对了，上次的伪造品成功的骗到了那个冰狼堡的药店老板了，呵呵呵，好好笑哦。" )
	MisBeginCondition(NoMission, 733)
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 733)
	MisBeginAction(SetFlag, 733, 1)
	MisBeginAction(AddTrigger, 7331, TE_GETITEM, 1692, 5 )
	MisBeginAction(AddTrigger, 7332, TE_GETITEM, 3117, 2 )
	MisCancelAction(ClearMission, 733)

	MisNeed(MIS_NEED_ITEM, 1692, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3117, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>唔唔，这次真是感谢你的帮忙，我终于可以开始配药了。")
	MisHelpTalk("<t>喔，天哪，我可就等着这些材料了，全靠你了！")
	MisResultCondition(HasMission, 733)
	MisResultCondition(HasItem, 1692, 5 )
	MisResultCondition(HasItem, 3117, 2 )
	MisResultAction(TakeItem, 1692, 5 )
	MisResultAction(TakeItem, 3117, 2 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 733)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692)	
	TriggerAction( 1, AddNextFlag, 733, 10, 5 )
	RegCurTrigger( 7331 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 733, 20, 2 )
	RegCurTrigger( 7332 )


end
RobinMission036()


----------------------------------------------------------
--							--
--							--
--		沙岚城[巡逻兵·迈克]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission037()

-----------------------------------抗击仙人掌
	DefineMission( 731, "抗击仙人掌", 719 )

	MisBeginTalk( "<t>啊，现在沙岚城周围的仙人掌实在是有点多了，我的辖区里还特别多，请你帮我一下吧，打倒15个<b仙人掌>就行了，它们应该在（1031,3556）位置，而且看起来，你的级别正合适来处理这个任务，快去吧！" )
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 719)
	MisBeginAction(SetFlag, 719, 1)
	MisBeginAction(AddTrigger, 7191, TE_KILL, 95, 15 )
	MisCancelAction(ClearMission, 719)
	
	MisNeed(MIS_NEED_KILL, 95, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>好极了，这些仙人掌以前常常找我麻烦，现在终于受到惩罚了！哈哈。")
	MisHelpTalk("<t>怎么了，15个仙人掌还是很好对付的，别怕！")
	MisResultCondition(HasMission, 719)
	MisResultCondition(HasFlag, 719, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 719)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 719, 10, 15 )
	RegCurTrigger( 7191 )


	-----------------------------------踢人怪兽
	DefineMission( 740, "踢人怪兽", 728 )

	MisBeginTalk( "<t>最近很多人都在抱怨说城外的沙漠里有一种踢人怪兽，很多人都被踢伤了，我调查过了，应该是<b奔奔驼>干的，你就帮我去惩罚它们一下吧，打倒10个<b奔奔驼>就行，你可以在城北野外找到它们，基于你现在的级别，相信你能够搞定的了，这也是我这边唯一适合你的任务。" )
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 728)
	MisBeginAction(SetFlag, 728, 1)
	MisBeginAction(AddTrigger, 7281, TE_KILL, 48, 10 )
	MisCancelAction(ClearMission, 728)
	
	MisNeed(MIS_NEED_KILL, 48, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>好极了，这下城市附近应该听不到什么抱怨声了吧。<n><t>这些奔奔驼还真是倔，好好的居然踢人。")
	MisHelpTalk("<t>怎么了，连你也拿那些奔奔驼没办法吗？还是再去试试吧。")
	MisResultCondition(HasMission, 728)
	MisResultCondition(HasFlag, 728, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 728)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 48)	
	TriggerAction( 1, AddNextFlag, 728, 10, 10 )
	RegCurTrigger( 7281 )
	
	-----------------------------------蝎子危机
	DefineMission( 741, "蝎子危机", 729 )

	MisBeginTalk( "<t>哦！你的级别提升了！<n><t>正好，我现在也有适合你现在能力的任务！<n><t>虽然现在奔奔驼伤人的事件变少了，可是忽然又不知从哪里冒出来好多大蝎子，它们比那些小蝎子厉害多了，被蜇伤的人可是会有生命危险的，拜托你去干掉10个<b大蝎子>好吗？你只要到（1184，3557）附近就能看到了，注意它们的动作很快，当心一点哦！" )
	MisBeginCondition(NoMission, 729)
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 729)
	MisBeginAction(SetFlag, 729, 1)
	MisBeginAction(AddTrigger, 7291, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 729)
	
	MisNeed(MIS_NEED_KILL, 247, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>哦！我果然没有找错人，这么快你就完成任务了，真是太好了。")
	MisHelpTalk("<t>怎么了，打不过大蝎子吗？记得多带点回复品。")
	MisResultCondition(HasMission, 729)
	MisResultCondition(HasFlag, 729, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 729)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 247)	
	TriggerAction( 1, AddNextFlag, 729, 10, 10 )
	RegCurTrigger( 7291 )

end
RobinMission037()


----------------------------------------------------------
--							--
--							--
--		冰狼堡[巡逻兵·小莫]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission038()

-----------------------------------顽皮帕帕
	DefineMission( 732, "顽皮帕帕", 720 )

	MisBeginTalk( "<t>最近那些雪原帕帕越来越顽皮了，居然乘我站岗打盹的时候偷袭我，你帮我去教训它们一下吧，打败15只<b雪原帕帕>就回来吧。<n><t>不要嫌这个任务简单哦！<n><t>我可是很清楚你目前的实力的！" )
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 720)
	MisBeginAction(SetFlag, 720, 1)
	MisBeginAction(AddTrigger, 7201, TE_KILL, 235, 15 )
	MisCancelAction(ClearMission, 720)
	
	MisNeed(MIS_NEED_KILL, 235, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>很好，这样它们就不会再那么调皮了吧，我也能睡个好觉了，只要不被队长发现就行了。")
	MisHelpTalk("<t>还没完成吗？这个对你来说应该不是问题啊，快去吧！")
	MisResultCondition(HasMission, 720)
	MisResultCondition(HasFlag, 720, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 720)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 720, 10, 15 )
	RegCurTrigger( 7201 )
	
-----------------------------------猪口夺粮
	DefineMission( 742, "猪口夺粮", 730 )

	MisBeginTalk( "<t>这段时间要拜托你做的任务是这样的，现在是冰狼堡的非常时期，大家都很艰苦，但是那些<b冰原迷你猪>太能吃了，一定要控制一下，你去（1179,371）附近清除掉10个<b冰原迷你猪>，这样就行了。" )
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 730)
	MisBeginAction(SetFlag, 730, 1)
	MisBeginAction(AddTrigger, 7301, TE_KILL, 239, 10 )
	MisCancelAction(ClearMission, 730)

	MisNeed(MIS_NEED_KILL, 239, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>喔，完成了，你真行，这些小猪还真是能吃呢，再这样下去，我就打算天天吃烤猪了。")
	MisHelpTalk("<t>哎呀，还没好么？要知道，这也算是生存的争夺呢。")
	MisResultCondition(HasMission, 730)
	MisResultCondition(HasFlag, 730, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 730)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 730, 10, 10 )
	RegCurTrigger( 7301 )

	-----------------------------------错误迁移
	DefineMission( 743, "错误迁移", 731 )

	MisBeginTalk( "<t>呵呵，有个好消息，有一群乖乖鹿好像错误的迁移到冰狼堡附近来了，这可是天赐的美食啊，这一阵我需要你尽快到（1164,305）附近猎取10头<b乖乖鹿>回来，这样我们晚上就有大餐吃了。" )
	MisBeginCondition(NoMission, 731)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 731)
	MisBeginAction(SetFlag, 731, 1)
	MisBeginAction(AddTrigger, 7311, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 731)
	
	MisNeed(MIS_NEED_KILL, 238, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>好啊！你果然完成了，真有你的！<n><t>想到那美味的烤鹿肉，我都不想站岗了。")
	MisHelpTalk("<t>怎么了，你连食物都打不过吗？快去吧！<n><t>我这边等着下锅呢！")
	MisResultCondition(HasMission, 731)
	MisResultCondition(HasFlag, 731, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 731)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 731, 10, 10 )
	RegCurTrigger( 7311 )

end
RobinMission038()


----------------------------------------------------------
--							--
--							--
--		新手任务					--
--							--
--							--
----------------------------------------------------------
function RobinMission039()

-----------------------------------送信给马尔斯
	DefineMission( 50, "送信给马尔斯", 50 )
	
	MisBeginTalk( "<t>现在，我已经没有什么可以帮助你的了。<n><t>不过我这里有封信，把这封信交给白银城外的<b巡逻兵·马尔斯>，他会给你新的任务的，他就在2065,2732附近。" )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 50)
	MisBeginCondition(NoMission, 50)
	MisBeginAction(AddMission, 50)
	MisBeginAction(GiveItem, 4111, 1, 4)
	MisCancelAction(ClearMission, 50 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信送给巡逻兵·马尔斯")

	MisHelpTalk("<t>马尔斯就在2065,2732附近快去吧。")
	MisResultCondition(AlwaysFailure )
-----------------------------------送信给帝姆
	DefineMission( 51, "送信给帝姆", 51 )
	
	MisBeginTalk( "<t>如果你喜欢收集多过战斗，那么，我这里有封给<b药草商人帝姆>的信，拿这封信给他，他一定会帮助你的，帝姆就在2250,2770那里。" )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 51)
	MisBeginCondition(NoMission, 51)
	MisBeginAction(AddMission, 51)
	MisBeginAction(GiveItem, 4112, 1, 4)
	MisCancelAction(ClearMission, 51  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信送给药草商人帝姆")

	MisHelpTalk("<t>怎么，还没将信交给帝姆？他离这里很近啊，就在2250,2770。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给马尔斯
	DefineMission( 52, "送信给马尔斯", 50, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，很好，你的到来一定能够帮助我的。<n><t>对了，战斗中一定要注意自己的生命值哦，在你头像旁边有一条代表你生命值的红条，那就是你的生命值，我们可以称为HP，当HP变为0时，你就会死亡了，千万小心！<n><t>除了通过吃“苹果”、“蛋糕”这类恢复生命值的道具，你还可以使用insert键来坐下或站起，在坐下状态，HP的恢复速度会加快哦！")
	MisResultCondition(NoRecord, 50)
	MisResultCondition(HasMission, 50)
	MisResultCondition(HasItem, 4111, 1)
	MisResultAction(TakeItem, 4111, 1)
	MisResultAction(ClearMission, 50)
	MisResultAction(SetRecord, 50)
	MisResultAction(AddExp, 50, 50)

-----------------------------------十万火急
	DefineMission( 53, "十万火急", 52 )

	MisBeginTalk( "<t>啊，现在情况万分危急，因为有人投诉，说我的辖区里有太多的<r迷你蜂>，有好多人被蜇伤了，没办法，因为我都在忙着对付帕帕蔻蔻嘛，所以拜托你一定得帮我，<r迷你蜂>就在这附近可以找到，消灭6只<r迷你蜂>，这样我也好交差了，我一定会报答你的，快去快回哦！" )
	MisBeginCondition(HasRecord, 50)
	MisBeginCondition(NoMission, 52)
	MisBeginCondition(NoRecord, 52)
	MisBeginAction(AddMission, 52)
	MisBeginAction(AddTrigger, 521, TE_KILL, 206, 6 )
	MisCancelAction(ClearMission, 52)
	

	MisNeed(MIS_NEED_DESP, "杀掉6只<r迷你蜂>然后找马尔斯谈谈")
	MisNeed(MIS_NEED_KILL, 206, 6, 10, 6)
	
	MisResultTalk("<t>太好了，你真是个好朋友，有你的帮助今天晚上我再也不会被罚清洗整个巡逻小队的袜子了……")
	MisHelpTalk("<t>怎么了，就是6只迷你蜂，你一定没问题的，快去快回！")
	MisResultCondition(HasMission, 52)
	MisResultCondition(HasFlag, 52, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 52)
	MisResultAction(SetRecord, 52)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 52, 10, 6 )
	RegCurTrigger( 521 )

-----------------------------------送信给斯克特
	DefineMission( 54, "送信给斯克特", 53 )
	
	MisBeginTalk( "<t>现在蜜蜂伤人事件有点好转了，我这里有封信，是一封关于这个事件的报告书，我需要有人帮我把它交给白银城的首席秘书<b斯克特>先生，向他报告目前的情况。<n><t>我相信你完全可以信赖，所以请你帮我走一趟吧，斯克特先生的办公室就在2219,2749。" )
	MisBeginCondition(HasRecord, 52)
	MisBeginCondition(NoRecord, 53)
	MisBeginCondition(NoMission, 53)
	MisBeginAction(AddMission, 53)
	MisBeginAction(GiveItem, 4113, 1, 4)
	MisCancelAction(ClearMission, 53  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城斯克特")

	MisHelpTalk("<t>怎么，你还没有动身吗？这可不行！<n><t>斯克特先生的办公室就在2219,2749。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给斯克特
	DefineMission( 55, "送信给斯克特", 53, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>嗯，这是马尔斯的报告啊，马尔斯在信上说，这次的任务，你有很大的功劳，不错不错。")
	MisResultCondition(NoRecord, 53)
	MisResultCondition(HasMission, 53)
	MisResultCondition(HasItem, 4113, 1)
	MisResultAction(TakeItem, 4113, 1)
	MisResultAction(ClearMission, 53)
	MisResultAction(SetRecord, 53)
	MisResultAction(AddExp, 80, 80)

-----------------------------------蘑菇泛滥
	DefineMission( 56, "蘑菇泛滥", 54 )

	MisBeginTalk( "<t>不知是哪个无聊的家伙，在城外放养了很多<b大嘴菇>，现在已经泛滥成灾了，虽然我也很喜欢喝蘑菇汤，可是没人愿意被那些大嘴菇咬得。<n><t>我这里的人手不足，看来要麻烦你了，去（2220,2564）清理掉8个<b大嘴菇>就好了，拜托拜托，而且看上去，如果不把这些事做好，我们就无法腾出手来做其他任何事了。" )
	MisBeginCondition(HasRecord, 53)
	MisBeginCondition(NoMission, 54)
	MisBeginCondition(NoRecord, 54)
	MisBeginAction(AddMission, 54)
	MisBeginAction(AddTrigger, 541, TE_KILL, 184, 8 )
	MisCancelAction(ClearMission, 54)
	

	MisNeed(MIS_NEED_DESP, "猎杀8个<r大嘴菇>然后找白银城斯克特谈谈")
	MisNeed(MIS_NEED_KILL, 184, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>哦哦！完成了吗？你真行啊！<n><t>这样就好了，有你的帮助，白银城的事务就变得轻松多了，如果不是还有清一些公务要处理，我一定要请你去喝一杯呢。")
	MisHelpTalk("<t>怎样，是8个大嘴菇哦！<n><t>我相信你，加油！")
	MisResultCondition(HasMission, 54)
	MisResultCondition(HasFlag, 54, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 54)
	MisResultAction(SetRecord, 54)
	MisResultBagNeed(1)	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 54, 10, 8 )
	RegCurTrigger( 541 )

-----------------------------------送信给小金金
	DefineMission( 57, "送信给小金金", 55 )
	
	MisBeginTalk( "<t>现在，我这里有一封公函需要你寄给白银城的铁匠<b小金金>先生。<n><t>你应该认识他，他就在2193,2706那里。" )
	MisBeginCondition(HasRecord, 54)
	MisBeginCondition(NoRecord, 55)
	MisBeginCondition(NoMission, 55)
	MisBeginAction(AddMission, 55)
	MisBeginAction(GiveItem, 4114, 1, 4)
	MisCancelAction(ClearMission, 55  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给铁匠小金金")

	MisHelpTalk("<t>怎么，你还没把信送去小金金那里吗？就在2193,2706。")
	MisResultCondition(AlwaysFailure )


-----------------------------------送信给小金金
	DefineMission( 58, "送信给小金金", 55, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！是斯克特的信啊！<n><t>怎么会请你来送的呢，他还真是会差遣人。")
	MisResultCondition(NoRecord, 55)
	MisResultCondition(HasMission, 55)
	MisResultCondition(HasItem, 4114, 1)
	MisResultAction(TakeItem, 4114, 1)
	MisResultAction(ClearMission, 55)
	MisResultAction(SetRecord, 55)
	MisResultAction(AddExp, 120, 120)

-----------------------------------护绿行动
	DefineMission( 59, "护绿行动", 56 )

	MisBeginTalk( "<t>我的朋友，你有没有发现，最近白银城周围的绿化好象不知不觉地减少了，听值勤的巡逻兵说，是因为那些大胃口的<b草原龟>都聚集到城市附近来了，你也算是白银城的一分子，去干掉12个草原龟应该也完全可以做到，你应该可以在（2057,2564）找到它们。<n><t>顺便提醒你，这些草原龟虽然动作缓慢，但是防御力是很高的，虽然这个任务比起之前来算是有点难度了，但是你的级别也算是合适了！" )
	MisBeginCondition(HasRecord, 55)
	MisBeginCondition(NoMission, 56)
	MisBeginCondition(NoRecord, 56)
	MisBeginAction(AddMission, 56)
	MisBeginAction(AddTrigger, 561, TE_KILL, 119, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "猎杀12个<r草原龟>然后找白银城小金金谈谈")
	MisNeed(MIS_NEED_KILL, 119, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>搞定了啊！好样的，虽然说这些草原龟也挺可怜的，但是为了大家共同生存的环境，不得不委屈他们了，要知道，听说现在我们整个加纳大陆上都开始资源匮乏了呢。")
	MisHelpTalk("<t>怎样，是12个草原龟哦！<n><t>你应该可以在（2057,2564）找到它们。")
	MisResultCondition(HasMission, 56)
	MisResultCondition(HasFlag, 56, 21 )
	MisResultAction(ClearMission, 56)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 56)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 56, 10, 12 )
	RegCurTrigger( 561 )


-----------------------------------送信给瑟安
	DefineMission( 60, "送信给瑟安", 57 )
	
	MisBeginTalk( "<t>虽然我们这些白银城的市民麻烦了你很多事，不过，你也成长了。<n><t>现在，你可以拿着这封信到白银城新手指导<b瑟安>那里，她会给你新的指导的。<n><t>她就在2223，2785。" )
	MisBeginCondition(HasRecord, 56)
	MisBeginCondition(NoRecord, 57)
	MisBeginCondition(NoMission, 57)
	MisBeginAction(AddMission, 57)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 57  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城新手指导瑟安")

	MisHelpTalk("<t>瑟安就在2223，2785，快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给瑟安
	DefineMission( 61, "送信给瑟安", 57, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>谢谢你给我的信，看来你很受白银城市民的欢迎哦。")
	MisResultCondition(NoRecord, 57)
	MisResultCondition(HasMission, 57)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 57)
	MisResultAction(SetRecord, 57)
	MisResultAction(AddExp, 200, 200)


-----------------------------------剑士转职任务
	DefineMission( 62, "剑士转职任务", 58 )
	
	MisBeginTalk( "<t>现在到了决定你职业的时候了，想要成为剑士的话，你得去找白银城城堡护卫比特，他就在2192,2767附近，把这封信交给比特，他会给你考验的。<n><t>剑士职业是战斗力最强的职业，剑士的二转职业有敏捷见长的双剑士，适合蓝崎，还有防御超强的巨剑士，适合卡西斯。")
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 58)
	MisBeginAction(GiveItem, 4116, 1, 4)
	MisCancelAction(ClearMission, 58  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城比特")

	MisHelpTalk("<t>决定成为剑士的话，就去找比特吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------猎人转职任务
	DefineMission( 63, "猎人转职任务", 59 )
	
	MisBeginTalk( "<t>现在到了决定你职业的时候了，想要成为猎人的话，你得去深蓝大陆的冰狼堡找雷欧，他就在冰狼堡1365,570附近，把这封信交给雷欧，他会给你考验的。<n><t>猎人职业是远程职业，通常使用弓箭或枪械，二转可以成为狙击手，适合蓝崎和菲丽尔。" )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 59)
	MisBeginAction(GiveItem, 4117, 1, 4)
	MisCancelAction(ClearMission, 59 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给冰狼堡雷欧")

	MisHelpTalk("<t>决定成为猎人的话，就去找雷欧吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------药师转职任务
	DefineMission( 64, "药师转职任务", 60 )
	
	MisBeginTalk( "<t>现在到了决定你职业的时候了，想要成为药师的话，你得去魔女之海的沙岚城找大神官甘地维拉，他就在沙岚城862,3500附近，把这封信交给甘地维拉，他会给你考验的。<n><t>药师职业是唯一拥有恢复能力的职业，二转可以成为恢复专精的圣职者和封印专精的封印师，适合菲丽尔和艾米。" )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 60)
	MisBeginAction(GiveItem, 4118, 1, 4)
	MisCancelAction(ClearMission, 60 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给沙岚城甘地维拉")

	MisHelpTalk("<t>决定成为药师的话，就去找甘地维拉吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------冒险者转职任务
	DefineMission( 65, "冒险者转职任务", 61 )
	
	MisBeginTalk( "<t>现在到了决定你职业的时候了，想要成为冒险者的话，你得去找小山车，他就在白银城2193,2730附近，把这封信交给小山车，他会给你考验的。<n><t>冒险者是可以使用自然之力的职业，二转可以成为航海士，在海上是最强的职业，适合蓝崎、菲丽尔和艾米。" )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 61)
	MisBeginAction(GiveItem, 4119, 1, 4)
	MisCancelAction(ClearMission, 61 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城小山车")

	MisHelpTalk("<t>决定成为冒险者的话，就去找小山车（2193,2730）吧。")
	MisResultCondition(AlwaysFailure )


-----------------------------------剑士转职任务
	DefineMission( 66, "剑士转职任务", 58, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>好，既然是新手指导推荐过来的人，那应该是不错的，你想成为剑士就必须完成我交给你的任务。")
	MisResultCondition(NoRecord, 58)
	MisResultCondition(HasMission, 58)
	MisResultCondition(HasItem, 4116, 1)
	MisResultAction(TakeItem, 4116, 1)
	MisResultAction(ClearMission, 58)
	MisResultAction(SetRecord, 58)

-----------------------------------剑士转职任务
	DefineMission( 67, "剑士转职任务", 62 )

	MisBeginTalk( "<t>你是想来成为剑士的么？真有胆识呀。<n><t>不过光有胆识还不够，想成为剑士你还必须证明自己有足够的勇气和实力。<n><t>你现在去<p白银城野外>打败12只<b迷你猪>（1950,2563）回来。<n><t>如果你能做到，那你的第一关考核就算成功通过了。" )
	MisBeginCondition(HasRecord, 58)
	MisBeginCondition(NoMission, 62)
	MisBeginCondition(NoRecord, 62)
	MisBeginAction(AddMission, 62)
	MisBeginAction(AddTrigger, 621, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 62)
	

	MisNeed(MIS_NEED_DESP, "猎杀12个<b迷你猪>然后找白银城比特谈谈")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>朋友，你做得真不错！<n><t>你通过我的测试了，这就是就职剑士所需要的第一关考核了。")
	MisHelpTalk("<t>你还没有达到我的要求哦，剑士的资格可不是随便就能获得的。")
	MisResultCondition(HasMission, 62)
	MisResultCondition(HasFlag, 62, 21 )
	MisResultAction(ClearMission, 62)
	MisResultAction(SetRecord, 62)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 62, 10, 12 )
	RegCurTrigger( 621 )


-----------------------------------剑士转职任务
	DefineMission( 68, "剑士转职任务", 63 )
	
	MisBeginTalk( "<t>现在，你必须向我的长官海军少将<b威尔斯>先生(2277,2831)证明你的实力，拿着这封信，这封信代表你已经通过了第一关，将它交给威尔斯，他会给你最终的考核。")
	MisBeginCondition(HasRecord, 62)
	MisBeginCondition(NoRecord, 63)
	MisBeginCondition(NoMission, 63)
	MisBeginAction(AddMission, 63)
	MisBeginAction(GiveItem, 4120, 1, 4)
	MisCancelAction(ClearMission, 63  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给海军少将威尔斯")

	MisHelpTalk("<t>快去吧，我相信你一定能通过考核的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------剑士转职任务
	DefineMission( 69, "剑士转职任务", 63, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！又一个想成为剑士的人出现了，很好。")
	MisResultCondition(NoRecord, 63)
	MisResultCondition(HasMission, 63)
	MisResultCondition(HasItem, 4120, 1)
	MisResultAction(TakeItem, 4120, 1)
	MisResultAction(ClearMission, 63)
	MisResultAction(SetRecord, 63)
	MisResultAction(AddExp, 100, 100)

-----------------------------------剑士转职任务
	DefineMission( 70, "剑士转职任务", 64 )

	MisBeginTalk( "<t>你想通过我的考验么？<n><t>去<p白银城野外>收集3个<r羊绒>回来就行。<n><t>做完这些，我将承认你是个合格的剑士。<n><t>对了，那些羊绒，你可以从2057,2638附近的厚绒山羊那里得到。")
	MisBeginCondition(HasRecord, 63)
	MisBeginCondition(NoMission, 64)
	MisBeginCondition(NoRecord, 64)
	MisBeginAction(AddMission, 64)
	MisBeginAction(AddTrigger, 641, TE_GETITEM, 1678, 3 )
	MisCancelAction(ClearMission, 64)

	MisNeed(MIS_NEED_DESP, "收集3个<r羊绒>然后回来找威尔斯谈谈")
	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	
	MisResultTalk("<t>你成功了！我真为你高兴，我果然没有看错你！")
	MisHelpTalk("<t>3个羊绒，一个都不能少。")
	MisResultCondition(HasMission, 64)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultAction(TakeItem, 1678, 3)
	MisResultAction(ClearMission, 64)
	MisResultAction(SetRecord, 64)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678 )	
	TriggerAction( 1, AddNextFlag, 64, 10, 3 )
	RegCurTrigger( 641 )

-----------------------------------剑士转职任务
	DefineMission( 71, "剑士转职任务", 65 )
	
	MisBeginTalk( "<t>你已经向海军证明了你的能力，你去跟比特说吧，我已经承认你可以转职成一名伟大的剑士了，这本<r勇气证书>就是证明。")
	MisBeginCondition(HasRecord, 64)
	MisBeginCondition(NoRecord, 65)
	MisBeginCondition(NoMission, 65)
	MisBeginAction(AddMission, 65)
	MisBeginAction(GiveItem, 3953, 1, 4)
	MisCancelAction(ClearMission, 65 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城比特(2192,2767)")

	MisHelpTalk("<t>怎么，要在犹豫什么？快去找比特吧。")
	MisResultCondition(AlwaysFailure )


-----------------------------------剑士转职任务
	DefineMission( 72, "剑士转职任务", 65, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>太好了，你居然可以拿到勇气证书，恭喜你，已经成为是剑士了！<n><t>（从现在起，你可以从比特这里领取剑士职业任务了。<n><t>另外，你可以到小金金那里购买剑士武器，在尼萨婆婆那里买到剑士装备，还可以到杂货商人·吉普立那里买到剑士的技能书哦，千万不要忘了哦）")
	MisResultCondition(NoRecord, 65)
	MisResultCondition(HasMission, 65)
	MisResultCondition(HasItem, 3953, 1)
	MisResultAction(TakeItem, 3953, 1)
	MisResultAction(ClearMission, 65)
	MisResultAction(SetRecord, 65)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 1)
	MisResultAction(GiveItem, 1, 1, 4)
	MisResultAction(GiveItem, 3164, 1, 4)
	MisResultBagNeed(2)

-----------------------------------送信给帝姆
	DefineMission( 73, "送信给帝姆", 51, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>啊，太好了，你的到来正好能够帮助我。")
	MisResultCondition(NoRecord, 51)
	MisResultCondition(HasMission, 51)
	MisResultCondition(HasItem, 4112, 1)
	MisResultAction(TakeItem, 4112, 1)
	MisResultAction(ClearMission, 51)
	MisResultAction(SetRecord, 51)
	MisResultAction(AddExp, 50, 50)


-----------------------------------灵感配方
	DefineMission( 74, "灵感配方", 66 )

	MisBeginTalk( "<t>昨天我忽然有个新的配方灵感，不过又得麻烦你再给我找一些原料来了，我需要3个<r章鱼墨汁>，你可以海边的小章鱼<r帕帕>身上找到这些东西，找到后我会给你报酬的，快去吧，我现在满脑子都是这个配方，全靠你了。")
	MisBeginCondition(HasRecord, 51)
	MisBeginCondition(NoMission, 66)
	MisBeginCondition(NoRecord, 66)
	MisBeginAction(AddMission, 66)
	MisBeginAction(AddTrigger, 661, TE_GETITEM, 1705, 3 )
	MisCancelAction(ClearMission, 66)
	
	MisNeed(MIS_NEED_DESP, "收集3个<r章鱼墨汁>然后找帝姆(2250,2770)谈谈")
	MisNeed(MIS_NEED_ITEM, 1705, 3, 10, 3)
	
	MisResultTalk("<t>很好，你终于收集到了这些东西，这样的话，我的新药配方就能进行试验了，如果成功的话，以后大家吃了这个药就会有灵感出现。")
	MisHelpTalk("<t>怎么了，还没收集齐？抓紧时间，乘我的灵感还没消失……")
	MisResultCondition(HasMission, 66)
	MisResultCondition(HasItem, 1705, 3 )
	MisResultAction(TakeItem, 1705, 3)
	MisResultAction(ClearMission, 66)
	MisResultAction(SetRecord, 66)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705 )	
	TriggerAction( 1, AddNextFlag, 66, 10, 3 )
	RegCurTrigger( 661 )

-----------------------------------送信给罗伊
	DefineMission( 75, "送信给罗伊", 67 )
	
	MisBeginTalk( "<t>我的实验还没有什么进展，看来也不能帮到你什么了。<n><t>这里有封信，你把它交给罗伊(2240,2752)，看看白银商会有什么事情没有。对了，以后有收集到任何对你没有用的道具，都可以卖给我的，而且，我这里还出售各种回复品，所以一定要经常来看看哦！")
	MisBeginCondition(HasRecord, 66)
	MisBeginCondition(NoRecord, 67)
	MisBeginCondition(NoMission, 67)
	MisBeginAction(AddMission, 67)
	MisBeginAction(GiveItem, 4121, 1, 4)
	MisCancelAction(ClearMission, 67 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城罗伊")

	MisHelpTalk("<t>罗伊是商会的助理，就在白银城2240,2752，她会帮助你的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给罗伊
	DefineMission( 76, "送信给罗伊", 67, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，是帝姆推荐你来的啊，好的，我知道了。")
	MisResultCondition(NoRecord, 67)
	MisResultCondition(HasMission, 67)
	MisResultCondition(HasItem, 4121, 1)
	MisResultAction(TakeItem, 4121, 1)
	MisResultAction(ClearMission, 67)
	MisResultAction(SetRecord, 67)
	MisResultAction(AddExp, 80, 80)

-----------------------------------蘑菇蘑菇
	DefineMission( 77, "蘑菇蘑菇", 68 )

	MisBeginTalk( "<t>说起来，前些时候我请帝姆在白银城外养了一些<b大嘴菇>，最近他都忙着测试配方的事情好像把它们给忘了，想起来现在也是拿它们派用场的时候了，请你帮我去取收集6个<r毒蘑菇>吧。<n><t>呃……说起来，这个大嘴菇还有点凶，最好还是带上点回复品比较好……另外大嘴菇是在（2220,2564）的位置，你去看看吧，现在可是收获的最佳时机，都靠你了！")
	MisBeginCondition(HasRecord, 67)
	MisBeginCondition(NoMission, 68)
	MisBeginCondition(NoRecord, 68)
	MisBeginAction(AddMission, 68)
	MisBeginAction(AddTrigger, 681, TE_GETITEM, 1725, 6 )
	MisCancelAction(ClearMission, 68)
	
	MisNeed(MIS_NEED_DESP, "收集6个<r毒蘑菇>然后找白银城罗伊(2240,2752)谈谈")
	MisNeed(MIS_NEED_ITEM, 1725, 6, 10, 6)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>太好了，你终于收集到了这些东西，没受伤吧，真是辛苦你了。")
	MisHelpTalk("<t>怎么了，还没收集齐？不会是被大嘴菇打得跑回来了吧？")
	MisResultCondition(HasMission, 68)
	MisResultCondition(HasItem, 1725, 6 )
	MisResultAction(TakeItem, 1725, 6)
	MisResultAction(ClearMission, 68)
	MisResultAction(SetRecord, 68)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725 )	
	TriggerAction( 1, AddNextFlag, 68, 10, 6 )
	RegCurTrigger( 681 )

-----------------------------------送信给海云
	DefineMission( 78, "送信给海云", 69 )
	
	MisBeginTalk( "<t>看上去你还蛮能干的，记得<b水手海云>上次托我帮他找个帮手，你一定行的，拿着这封信去找他吧。<n><t>海云就在白银码头(2219,2911)附近。")
	MisBeginCondition(HasRecord, 68)
	MisBeginCondition(NoRecord, 69)
	MisBeginCondition(NoMission, 69)
	MisBeginAction(AddMission, 69)
	MisBeginAction(GiveItem, 4122, 1, 4)
	MisCancelAction(ClearMission, 69 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给水手海云")

	MisHelpTalk("<t>怎么？我现在没空，去找海云吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给海云
	DefineMission( 79, "送信给海云", 69, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，是帝姆推荐你来的啊，好的，我知道了。")
	MisResultCondition(NoRecord, 69)
	MisResultCondition(HasMission, 69)
	MisResultCondition(HasItem, 4122, 1)
	MisResultAction(TakeItem, 4122, 1)
	MisResultAction(ClearMission, 69)
	MisResultAction(SetRecord, 69)
	MisResultAction(AddExp, 120, 120)

-----------------------------------损失的货物
	DefineMission( 80, "损失的货物", 70 )

	MisBeginTalk( "<t>上次我负责保管港口的一批货物时，不小心损失了2个<r龟血>，这可是个大麻烦啊！<n><t>请你务必帮我收集2个龟血回来，那可是性命攸关啊！<n><t>我记得从<r草原龟>(2057,2564)身上就可以得到的，全靠你了。")
	MisBeginCondition(HasRecord, 69)
	MisBeginCondition(NoMission, 70)
	MisBeginCondition(NoRecord, 70)
	MisBeginAction(AddMission, 70)
	MisBeginAction(AddTrigger, 701, TE_GETITEM, 1844, 2 )
	MisCancelAction(ClearMission, 70)
	
	MisNeed(MIS_NEED_DESP, "收集2个<r龟血>然后找白银城海云（2219,2911）谈谈")
	MisNeed(MIS_NEED_ITEM, 1844, 2, 10, 2)
	
	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>太好了，这下得救了！<n><t>你真是帮了我的大忙了！谢谢！谢谢！谢谢！")
	MisHelpTalk("<t>快点去吧！<n><t>在我的错误被发现之前，一定要帮我搞到那些龟血！")
	MisResultCondition(HasMission, 70)
	MisResultCondition(HasItem, 1844, 2 )
	MisResultAction(TakeItem, 1844, 2)
	MisResultAction(ClearMission, 70)
	MisResultAction(SetRecord, 70)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 70, 10, 2 )
	RegCurTrigger( 701 )

-----------------------------------送信给瑟安
	DefineMission( 81, "送信给瑟安", 71 )
	
	MisBeginTalk( "<t>虽然我们这些白银城的市民麻烦了你很多事，不过，你也成长了。<n><t>现在，你可以拿着这封信到白银城新手指导<b瑟安>那里，她会给你新的指导的。她就在2223，2785。")
	MisBeginCondition(HasRecord, 70)
	MisBeginCondition(NoRecord, 71)
	MisBeginCondition(NoMission, 71)
	MisBeginAction(AddMission, 71)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 71 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给白银城新手指导")

	MisHelpTalk("<t>瑟安就在2223，2785，快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给瑟安
	DefineMission( 82, "送信给瑟安", 71, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>谢谢你给我的信，看来你很受白银城市民的欢迎哦。")
	MisResultCondition(NoRecord, 71)
	MisResultCondition(HasMission, 71)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 71)
	MisResultAction(SetRecord, 71)
	MisResultAction(AddExp, 200, 200)

-----------------------------------送信给迈克
	DefineMission( 83, "送信给迈克", 72 )
	
	MisBeginTalk( "<t>现在，我已经没有什么可以帮助你的了。<n><t>不过我这里有封信，把这封信交给沙岚城外的<b巡逻兵·迈克>，他会给你新的任务的，他就在958,3549附近。")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 72)
	MisBeginCondition(NoMission, 72)
	MisBeginAction(AddMission, 72)
	MisBeginAction(GiveItem, 4123, 1, 4)
	MisCancelAction(ClearMission, 72 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信送给巡逻兵·迈克")

	MisHelpTalk("<t>迈克就在958,3549附近快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给艾墨
	DefineMission( 84, "送信给艾墨", 73 )
	
	MisBeginTalk( "<t>如果你喜欢收集多过战斗，那么，我这里有封给<b杂货商人艾墨>的信，拿这封信给他，他一定会帮助你的，艾墨就在840,3585那里。")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 73)
	MisBeginCondition(NoMission, 73)
	MisBeginAction(AddMission, 73)
	MisBeginAction(GiveItem, 4124, 1, 4)
	MisCancelAction(ClearMission, 73  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信送给杂货商人艾墨")

	MisHelpTalk("<t>怎么，还没将信交给艾墨？他离这里很近啊，就在840,3585。")
	MisResultCondition(AlwaysFailure )


-----------------------------------送信给迈克
	DefineMission( 85, "送信给迈克", 72, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，很好，你的到来一定能够帮助我的。<n><t>对了，战斗中一定要注意自己的生命值哦，在你头像旁边有一条代表你生命值的红条，那就是你的生命值，我们可以称为HP，当HP变为0时，你就会死亡了，千万小心！<n><t>除了通过吃“苹果”、“蛋糕”这类恢复生命值的道具，你还可以使用insert键来坐下或站起，在坐下状态，HP的恢复速度会加快哦！")
	MisResultCondition(NoRecord, 72)
	MisResultCondition(HasMission, 72)
	MisResultCondition(HasItem, 4123, 1)
	MisResultAction(TakeItem, 4123, 1)
	MisResultAction(ClearMission, 72)
	MisResultAction(SetRecord, 72)
	MisResultAction(AddExp, 50, 50)

-----------------------------------抗击仙人掌
	DefineMission( 86, "抗击仙人掌", 74 )

	MisBeginTalk( "<t>啊，现在沙岚城周围的仙人掌实在是有点多了，我的辖区里还特别多，请你帮我一下吧，打倒6个<b仙人掌>就行了，它们应该在（1031,3556）位置，而且看起来，你的级别正合适来处理这个任务，快去吧！")
	MisBeginCondition(HasRecord, 72)
	MisBeginCondition(NoMission, 74)
	MisBeginCondition(NoRecord, 74)
	MisBeginAction(AddMission, 74)
	MisBeginAction(AddTrigger, 741, TE_KILL, 95, 6 )
	MisCancelAction(ClearMission, 74)
	
	MisNeed(MIS_NEED_DESP, "杀掉6个<r仙人掌>然后找迈克谈谈")
	MisNeed(MIS_NEED_KILL, 95, 6, 10, 6)
	
	MisResultTalk("<t>好极了，这些仙人掌以前常常找我麻烦，现在终于受到惩罚了！哈哈。")
	MisHelpTalk("<t>怎么了，6个仙人掌还是很好对付的，别怕！")
	MisResultCondition(HasMission, 74)
	MisResultCondition(HasFlag, 74, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 74)
	MisResultAction(SetRecord, 74)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 74, 10, 6 )
	RegCurTrigger( 741 )

-----------------------------------送信给鹧鸪草
	DefineMission( 87, "送信给鹧鸪草", 75 )
	
	MisBeginTalk( "<t>我这里有封信，请你帮我把它交给我的好朋友<b鹧鸪草>，他是个有趣的家伙，一定能够帮助你的。<n><t>他就在沙岚城(867,3660)那里。")
	MisBeginCondition(HasRecord, 74)
	MisBeginCondition(NoRecord, 75)
	MisBeginCondition(NoMission, 75)
	MisBeginAction(AddMission, 75)
	MisBeginAction(GiveItem, 4125, 1, 4)
	MisCancelAction(ClearMission, 75  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给沙岚城鹧鸪草")

	MisHelpTalk("<t>快去吧，我这里还要巡逻呢！")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给鹧鸪草
	DefineMission( 88, "送信给鹧鸪草", 75, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！你是迈克的朋友啊！谢谢你送信来。")
	MisResultCondition(NoRecord, 75)
	MisResultCondition(HasMission, 75)
	MisResultCondition(HasItem, 4125, 1)
	MisResultAction(TakeItem, 4125, 1)
	MisResultAction(ClearMission, 75)
	MisResultAction(SetRecord, 75)
	MisResultAction(AddExp, 80, 80)

-----------------------------------踢人怪兽
	DefineMission( 89, "踢人怪兽", 76 )

	MisBeginTalk( "<t>你听说过城外的沙漠里有一种踢人怪兽吗？我在进城时就被踢伤了，其实是<b奔奔驼>干的，你就帮我去惩罚它们一下吧，打倒8个<b奔奔驼>就行，你可以在<r城北野外>找到它们，基于你现在的级别，相信你能够搞定的了，这也是我这边唯一适合你的任务。")
	MisBeginCondition(HasRecord, 75)
	MisBeginCondition(NoMission, 76)
	MisBeginCondition(NoRecord, 76)
	MisBeginAction(AddMission, 76)
	MisBeginAction(AddTrigger, 761, TE_KILL, 48, 8 )
	MisCancelAction(ClearMission, 76)

	MisNeed(MIS_NEED_DESP, "猎杀8个<r奔奔驼>然后找沙岚城鹧鸪草谈谈")
	MisNeed(MIS_NEED_KILL, 48, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>好极了，这下城市附近应该听不到什么抱怨声了吧。<n><t>这些奔奔驼还真是倔，好好的居然踢人。")
	MisHelpTalk("<t>怎么了，连你也拿那些奔奔驼没办法吗？还是再去试试吧。")
	MisResultCondition(HasMission, 76)
	MisResultCondition(HasFlag, 76, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 76)
	MisResultAction(SetRecord, 76)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 48 )	
	TriggerAction( 1, AddNextFlag, 76, 10, 8 )
	RegCurTrigger( 761 )

-----------------------------------送信给铜铜鼓
	DefineMission( 90, "送信给铜铜鼓", 77 )
	
	MisBeginTalk( "<t>我这里有封信，你可以拿着它去找铁匠<b铜铜鼓>(902,3495)，他会继续帮助你的。" )
	MisBeginCondition(HasRecord, 76)
	MisBeginCondition(NoRecord, 77)
	MisBeginCondition(NoMission, 77)
	MisBeginAction(AddMission, 77)
	MisBeginAction(GiveItem, 4126, 1, 4)
	MisCancelAction(ClearMission, 77  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给铁匠铜铜鼓")

	MisHelpTalk("<t>快去找铜铜鼓吧，记住告诉他，你是我的好朋友。")
	MisResultCondition(AlwaysFailure )


-----------------------------------送信给铜铜鼓
	DefineMission( 91, "送信给铜铜鼓", 77, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦!你是鹧鸪草给我找来的帮手啊，太好了，我这正缺人呢！哈哈哈哈！")
	MisResultCondition(NoRecord, 77)
	MisResultCondition(HasMission, 77)
	MisResultCondition(HasItem, 4126, 1)
	MisResultAction(TakeItem, 4126, 1)
	MisResultAction(ClearMission, 77)
	MisResultAction(SetRecord, 77)
	MisResultAction(AddExp, 120, 120)

-----------------------------------惧蝎证
	DefineMission( 92, "惧蝎证", 78 )

	MisBeginTalk( "<t>不瞒你说，我其他什么都不怕，就怕蝎子！<n><t>可是我的职业又让我常常要出城去采集矿石！<n><t>现在城外不知从哪里冒出来好多大蝎子，它们比那些小蝎子厉害多了，被蜇伤的人可是会有生命危险的，太可怕了！<n><t>拜托你去干掉12个<b大蝎子>好吗？你只要到（1184，3557）附近就能看到了，注意它们的动作很快，当心一点哦！")
	MisBeginCondition(HasRecord, 77)
	MisBeginCondition(NoMission, 78)
	MisBeginCondition(NoRecord, 78)
	MisBeginAction(AddMission, 78)
	MisBeginAction(AddTrigger, 781, TE_KILL, 247, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "猎杀12个<r大蝎子>然后找沙岚城铜铜鼓谈谈")
	MisNeed(MIS_NEED_KILL, 247, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>哦！我果然没有找错人，这么快你就完成任务了，你真是太勇敢了。")
	MisHelpTalk("<t>怎么了，打不过大蝎子吗？记得多带点回复品。")
	MisResultCondition(HasMission, 78)
	MisResultCondition(HasFlag, 78, 21 )
	MisResultAction(ClearMission, 78)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 78)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 78, 10, 12 )
	RegCurTrigger( 781 )


-----------------------------------送信给拉碧丝
	DefineMission( 93, "送信给拉碧丝", 79 )
	
	MisBeginTalk( "<t>虽然我们这些沙岚城的市民麻烦了你很多事，不过，你也成长了。<n><t>现在，你可以拿着这封信到沙岚城新手指导<b拉丝碧>那里，她会给你新的指导的。她就在876,3572。" )
	MisBeginCondition(HasRecord, 78)
	MisBeginCondition(NoRecord, 79)
	MisBeginCondition(NoMission, 79)
	MisBeginAction(AddMission, 79)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 79  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给沙岚城新手指导")

	MisHelpTalk("<t>拉丝碧就在876,3572，快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给拉碧丝
	DefineMission( 94, "送信给拉碧丝", 79, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>谢谢你给我的信，看来你很受沙岚城市民的欢迎哦。")
	MisResultCondition(NoRecord, 79)
	MisResultCondition(HasMission, 79)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 79)
	MisResultAction(SetRecord, 79)
	MisResultAction(AddExp, 200, 200)

-----------------------------------药师转职任务
	DefineMission( 95, "药师转职任务", 60, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("好，既然是新手指导推荐过来的人，那应该是不错的，你想成为药师就必须完成我交给你的任务。")
	MisResultCondition(NoRecord, 60)
	MisResultCondition(HasMission, 60)
	MisResultCondition(HasItem, 4118, 1)
	MisResultAction(TakeItem, 4118, 1)
	MisResultAction(ClearMission, 60)
	MisResultAction(SetRecord, 60)

-----------------------------------药师转职任务
	DefineMission( 96, "药师转职任务", 80 )

	MisBeginTalk( "<t>你想成为药师么？这年头想靠药师赚钱的人很多，你必须向我证明你有资格获得药师的资格。<n><t>我需要试试你的生存能力，去<r884,3156>附近杀2只<b杀手仙人掌>吧，如果你能做完这些，你就通过了第一关考核。" )
	MisBeginCondition(HasRecord, 60)
	MisBeginCondition(NoMission, 80)
	MisBeginCondition(NoRecord, 80)
	MisBeginAction(AddMission, 80)
	MisBeginAction(AddTrigger, 801, TE_KILL, 43, 2 )
	MisCancelAction(ClearMission, 80)
	

	MisNeed(MIS_NEED_DESP, "猎杀2只<b杀手仙人掌>然后找沙岚城甘地维拉(862,3500)谈谈")
	MisNeed(MIS_NEED_KILL, 43, 2, 10, 2)
	
	MisResultTalk("<t>看来你通过了这个考核，不错。")
	MisHelpTalk("<t>怎么，你在困难面前退缩了？")
	MisResultCondition(HasMission, 80)
	MisResultCondition(HasFlag, 80, 11 )
	MisResultAction(ClearMission, 80)
	MisResultAction(SetRecord, 80)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 80, 10, 2 )
	RegCurTrigger( 801 )


-----------------------------------药师转职任务
	DefineMission( 97, "药师转职任务", 81 )
	
	MisBeginTalk( "<t>这封信给你，将它交给海军办事处官员·艾微尔少校(865，3648)，她会明白的。")
	MisBeginCondition(HasRecord, 80)
	MisBeginCondition(NoRecord, 81)
	MisBeginCondition(NoMission, 81)
	MisBeginAction(AddMission, 81)
	MisBeginAction(GiveItem, 4128, 1, 4)
	MisCancelAction(ClearMission, 81  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给海军办事处官员·艾微尔少校")

	MisHelpTalk("<t>快去吧，我相信你一定能通过考核的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------药师转职任务
	DefineMission( 98, "药师转职任务", 81, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！你通过了第一关考核了，很不错哦！")
	MisResultCondition(NoRecord, 81)
	MisResultCondition(HasMission, 81)
	MisResultCondition(HasItem, 4128, 1)
	MisResultAction(TakeItem, 4128, 1)
	MisResultAction(ClearMission, 81)
	MisResultAction(SetRecord, 81)
	MisResultAction(AddExp, 100, 100)

-----------------------------------药师转职任务
	DefineMission( 99, "药师转职任务", 82 )

	MisBeginTalk( "<t>我这里是你想成为药师的第二次考核，如果成功了，你将很快成为药师。<n><t>我的要求是这样的，去收集到3个<b药用草叶>给我就可以了。<n><t>我记得城外的<r跳跳蜥>(892,3273)就有！")
	MisBeginCondition(HasRecord, 81)
	MisBeginCondition(NoMission, 82)
	MisBeginCondition(NoRecord, 82)
	MisBeginAction(AddMission, 82)
	MisBeginAction(AddTrigger, 821, TE_GETITEM, 3129, 3 )
	MisCancelAction(ClearMission, 82)

	MisNeed(MIS_NEED_DESP, "收集3个<b药用草叶>然后回来找艾微尔少校(865,3648)谈谈")
	MisNeed(MIS_NEED_ITEM, 3129, 3, 10, 3)
	
	MisResultTalk("<t>很好，你完成了，考核通过！")
	MisHelpTalk("<t>我知道蛮危险的，但是这就是考核内容。")
	MisResultCondition(HasMission, 82)
	MisResultCondition(HasItem, 3129, 3 )
	MisResultAction(TakeItem, 3129, 3)
	MisResultAction(ClearMission, 82)
	MisResultAction(SetRecord, 82)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 82, 10, 3 )
	RegCurTrigger( 821 )

-----------------------------------药师转职任务
	DefineMission( 150, "药师转职任务", 83 )
	
	MisBeginTalk( "<t>你已经向证明了你的能力，你去跟甘地维拉说吧，我已经承认你可以转职成一名伟大的药师了，这本<r虔诚祷文>就是证明。")
	MisBeginCondition(HasRecord, 82)
	MisBeginCondition(NoRecord, 83)
	MisBeginCondition(NoMission, 83)
	MisBeginAction(AddMission, 83)
	MisBeginAction(GiveItem, 3954, 1, 4)
	MisCancelAction(ClearMission, 83 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "找沙岚城的甘地维拉(862,3500)谈谈")

	MisHelpTalk("<t>干吗？还在磨蹭什么呢你？")
	MisResultCondition(AlwaysFailure )


-----------------------------------药师转职任务
	DefineMission( 151, "药师转职任务", 83, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>恭喜你，我的孩子，你已经是药师了，愿女神祝福你！<n><t>（从现在起，你可以从甘地维拉这里领取药师职业任务了。<n><t>另外，你可以到铜铜鼓那里购买药师武器，在莫亚那里买到药师装备，还可以到杂货商人·艾莫那里买到药师的技能书哦，千万不要忘了哦）")
	MisResultCondition(NoRecord, 83)
	MisResultCondition(HasMission, 83)
	MisResultCondition(HasItem, 3954, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(ClearMission, 83)
	MisResultAction(SetRecord, 83)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 5)
	MisResultAction(GiveItem, 3206, 1, 4)
	MisResultAction(GiveItem, 97, 1, 4)
	MisResultBagNeed(2)


-----------------------------------送信给艾墨
	DefineMission( 152, "送信给艾墨", 73, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>啊，太好了，你的到来正好能够帮助我。")
	MisResultCondition(NoRecord, 73)
	MisResultCondition(HasMission, 73)
	MisResultCondition(HasItem, 4124, 1)
	MisResultAction(TakeItem, 4124, 1)
	MisResultAction(ClearMission, 73)
	MisResultAction(SetRecord, 73)
	MisResultAction(AddExp, 50, 50)


-----------------------------------嫁接实验
	DefineMission( 153, "嫁接实验", 84 )

	MisBeginTalk( "<t>你想不想看到仙人掌上开出精灵花？我是想做一下这种试验，所以拜托你帮我收集6个<r仙人绒球>吧。<n><t>你应该可以在城门口的仙人球身上找到，当然，也许我还会需要更多，但，这次先替我找这些来吧，说不定就成功了呢！")
	MisBeginCondition(HasRecord, 73)
	MisBeginCondition(NoMission, 84)
	MisBeginCondition(NoRecord, 84)
	MisBeginAction(AddMission, 84)
	MisBeginAction(AddTrigger, 841, TE_GETITEM, 1691, 6 )
	MisCancelAction(ClearMission, 84)
	
	MisNeed(MIS_NEED_DESP, "收集6个<r仙人绒球>然后找艾墨（840,3585）谈谈")
	MisNeed(MIS_NEED_ITEM, 1691, 6, 10, 6)
	
	MisResultTalk("<t>很好，这下就能进行嫁接实验了，等到明年你来看吧，也许真的会成功哦！")
	MisHelpTalk("<t>咦？还没找到我要的东西吗？")
	MisResultCondition(HasMission, 84)
	MisResultCondition(HasItem, 1691, 6 )
	MisResultAction(TakeItem, 1691, 6)
	MisResultAction(ClearMission, 84)
	MisResultAction(SetRecord, 84)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 84, 10, 6 )
	RegCurTrigger( 841 )

-----------------------------------送信给莉娜
	DefineMission( 154, "送信给莉娜", 85 )
	
	MisBeginTalk( "<t>目前我的实验还没进展，这样吧，拿这封信给住在沙岚城的莉娜女士(883,3520)，她会帮助你的。<n><t>对了，以后有收集到任何对你没有用的道具，都可以卖给我的，而且，我这里还出售各种技能书，等你转了职，一定要经常来看看哦！")
	MisBeginCondition(HasRecord, 84)
	MisBeginCondition(NoRecord, 85)
	MisBeginCondition(NoMission, 85)
	MisBeginAction(AddMission, 85)
	MisBeginAction(GiveItem, 4129, 1, 4)
	MisCancelAction(ClearMission, 85 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给沙岚城莉娜")

	MisHelpTalk("<t>去吧，我现在没什么可以帮助你的了。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给莉娜
	DefineMission( 155, "送信给莉娜", 85, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，你是艾墨的朋友啊，你好！")
	MisResultCondition(NoRecord, 85)
	MisResultCondition(HasMission, 85)
	MisResultCondition(HasItem, 4129, 1)
	MisResultAction(TakeItem, 4129, 1)
	MisResultAction(ClearMission, 85)
	MisResultAction(SetRecord, 85)
	MisResultAction(AddExp, 80, 80)

-----------------------------------伪造物品
	DefineMission( 156, "伪造物品", 86 )

	MisBeginTalk( "<t>听说我的表亲，冰狼堡的药店老板达赫最近在收集动物汗水，我打算跟他开个玩笑，所以需要一些伪造的材料。<n><t>你帮我去收集3个<r混浊的水>吧，在（1184，3557）附近的<b小蝎子>那里可以得到，这个就算你是个特别任务吧，哈哈！")
	MisBeginCondition(HasRecord, 85)
	MisBeginCondition(NoMission, 86)
	MisBeginCondition(NoRecord, 86)
	MisBeginAction(AddMission, 86)
	MisBeginAction(AddTrigger, 861, TE_GETITEM, 1648, 3 )
	MisCancelAction(ClearMission, 86)
	
	MisNeed(MIS_NEED_DESP, "收集3个<r混浊的水>然后找沙岚城莉娜（883,3520）谈谈")
	MisNeed(MIS_NEED_ITEM, 1648, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>唔唔，太好了，再找些盐来混合一下一定可以骗到那个有收集癖的家伙的，唔唔。")
	MisHelpTalk("<t>不会吧，还没找来吗？快点啦！")
	MisResultCondition(HasMission, 86)
	MisResultCondition(HasItem, 1648, 3 )
	MisResultAction(TakeItem, 1648, 3)
	MisResultAction(ClearMission, 86)
	MisResultAction(SetRecord, 86)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1648 )	
	TriggerAction( 1, AddNextFlag, 86, 10, 3 )
	RegCurTrigger( 861 )

-----------------------------------送信给弗兰克
	DefineMission( 157, "送信给弗兰克", 87 )
	
	MisBeginTalk( "<t>我这里也有一封信，麻烦你交给<b船工弗兰克>，他是个热心的家伙，一定会帮助你的。<n><t>他就在沙岚城(901,3668)那里。")
	MisBeginCondition(HasRecord, 86)
	MisBeginCondition(NoRecord, 87)
	MisBeginCondition(NoMission, 87)
	MisBeginAction(AddMission, 87)
	MisBeginAction(GiveItem, 4130, 1, 4)
	MisCancelAction(ClearMission, 87 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给船工弗兰克")

	MisHelpTalk("<t>快去吧，那个热心的家伙绝对会帮你的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给弗兰克
	DefineMission( 158, "送信给弗兰克", 87, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，是莉娜女士的信啊，谢谢你。")
	MisResultCondition(NoRecord, 87)
	MisResultCondition(HasMission, 87)
	MisResultCondition(HasItem, 4130, 1)
	MisResultAction(TakeItem, 4130, 1)
	MisResultAction(ClearMission, 87)
	MisResultAction(SetRecord, 87)
	MisResultAction(AddExp, 120, 120)

-----------------------------------晕船药
	DefineMission( 159, "晕船药", 88 )

	MisBeginTalk( "<t>我需要收集一些防止晕船的药物材料，特别是一样东西我这里奇缺，麻烦你帮我找3个<r仙人掌的花>给我吧，去（1031,3556）附近吧，那里的<b仙人掌>身上绝对有，你现在的级别对付仙人掌应该是没问题的。<n><t>对了，我这个会晕船的秘密你可千万不要告诉别人哦。")
	MisBeginCondition(HasRecord, 87)
	MisBeginCondition(NoMission, 88)
	MisBeginCondition(NoRecord, 88)
	MisBeginAction(AddMission, 88)
	MisBeginAction(AddTrigger, 881, TE_GETITEM, 1692, 3 )
	MisCancelAction(ClearMission, 88)
	
	MisNeed(MIS_NEED_DESP, "收集3个<r仙人掌的花>然后找沙岚城弗兰克谈谈")
	MisNeed(MIS_NEED_ITEM, 1692, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>唔唔，这次真是感谢你的帮忙，我终于可以开始配药了。")
	MisHelpTalk("<t>喔，天哪，我可就等着这些材料了，全靠你了！")
	MisResultCondition(HasMission, 88)
	MisResultCondition(HasItem, 1692, 3 )
	MisResultAction(TakeItem, 1692, 3)
	MisResultAction(ClearMission, 88)
	MisResultAction(SetRecord, 88)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692 )	
	TriggerAction( 1, AddNextFlag, 88, 10, 3 )
	RegCurTrigger( 881 )

-----------------------------------送信给拉碧丝
	DefineMission( 160, "送信给拉碧丝", 89 )
	
	MisBeginTalk( "<t>虽然我们这些沙岚城的市民麻烦了你很多事，不过，你也成长了。<n><t>现在，你可以拿着这封信到沙岚城新手指导<b拉丝碧>那里，她会给你新的指导的。<n><t>她就在876,3572。")
	MisBeginCondition(HasRecord, 88)
	MisBeginCondition(NoRecord, 89)
	MisBeginCondition(NoMission, 89)
	MisBeginAction(AddMission, 89)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 89 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给沙岚城新手指导")

	MisHelpTalk("<t>拉丝碧就在876,3572，快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给拉碧丝
	DefineMission( 161, "送信给拉碧丝", 89, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>谢谢你给我的信，看来你很受沙岚城市民的欢迎哦。")
	MisResultCondition(NoRecord, 89)
	MisResultCondition(HasMission, 89)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 89)
	MisResultAction(SetRecord, 89)
	MisResultAction(AddExp, 200, 200)


---------------------------------送信给小莫
	DefineMission( 162, "送信给小莫", 90 )
	
	MisBeginTalk( "<t>现在，我已经没有什么可以帮助你的了。<n><t>不过我这里有封信，把这封信交给冰狼堡外的<b巡逻兵·小莫>，他会给你新的任务的，他就在冰狼堡1237,613附近。")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 90)
	MisBeginCondition(NoMission, 90)
	MisBeginAction(AddMission, 90)
	MisBeginAction(GiveItem, 4131, 1, 4)
	MisCancelAction(ClearMission, 90 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信送给巡逻兵·小莫")

	MisHelpTalk("<t>小莫就在1237,613附近快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给伯鲁
	DefineMission( 163, "送信给伯鲁", 91 )
	
	MisBeginTalk( "<t>如果你喜欢收集多过战斗，那么，我这里有封给<b杂货商人伯鲁>的信，拿这封信给他，他一定会帮助你的，伯鲁就在1356,483那里。")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 91)
	MisBeginCondition(NoMission, 91)
	MisBeginAction(AddMission, 91)
	MisBeginAction(GiveItem, 4132, 1, 4)
	MisCancelAction(ClearMission, 91  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将信送给杂货商人伯鲁")

	MisHelpTalk("<t>怎么，还没将信交给伯鲁？他离这里很近啊，就在1356,483。")
	MisResultCondition(AlwaysFailure )


-----------------------------------送信给迈克
	DefineMission( 164, "送信给迈克", 90, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，很好，你的到来一定能够帮助我的。<n><t>对了，战斗中一定要注意自己的生命值哦，在你头像旁边有一条代表你生命值的红条，那就是你的生命值，我们可以称为HP，当HP变为0时，你就会死亡了，千万小心！<n><t>除了通过吃“苹果”、“蛋糕”这类恢复生命值的道具，你还可以使用insert键来坐下或站起，在坐下状态，HP的恢复速度会加快哦！")
	MisResultCondition(NoRecord, 90)
	MisResultCondition(HasMission, 90)
	MisResultCondition(HasItem, 4131, 1)
	MisResultAction(TakeItem, 4131, 1)
	MisResultAction(ClearMission, 90)
	MisResultAction(SetRecord, 90)
	MisResultAction(AddExp, 50, 50)

-----------------------------------顽皮帕帕
	DefineMission( 165, "顽皮帕帕", 92 )

	MisBeginTalk( "<t>最近那些雪原帕帕越来越顽皮了，居然乘我站岗打盹的时候偷袭我，你帮我去教训它们一下吧，打败6只<b雪原帕帕>(1179,475)就回来吧。<n><t>不要嫌这个任务简单哦！<n><t>我可是很清楚你目前的实力的！")
	MisBeginCondition(HasRecord, 90)
	MisBeginCondition(NoMission, 92)
	MisBeginCondition(NoRecord, 92)
	MisBeginAction(AddMission, 92)
	MisBeginAction(AddTrigger, 921, TE_KILL, 235, 6 )
	MisCancelAction(ClearMission, 92)
	
	MisNeed(MIS_NEED_DESP, "杀掉6只<b雪原帕帕>然后找小莫谈谈")
	MisNeed(MIS_NEED_KILL, 235, 6, 10, 6)
	
	MisResultTalk("<t>很好，这样它们就不会再那么调皮了吧，我也能睡个好觉了，只要不被队长发现就行了。")
	MisHelpTalk("<t>还没完成吗？这个对你来说应该不是问题啊，快去吧！")
	MisResultCondition(HasMission, 92)
	MisResultCondition(HasFlag, 92, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 92)
	MisResultAction(SetRecord, 92)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 92, 10, 6 )
	RegCurTrigger( 921 )

-----------------------------------送信给雷欧
	DefineMission( 166, "送信给雷欧", 93 )
	
	MisBeginTalk( "<t>我这里没什么可以帮你的了，拿这封信给剑士<b雷欧>先生(1365,570)，他会帮助你的。")
	MisBeginCondition(HasRecord, 92)
	MisBeginCondition(NoRecord, 93)
	MisBeginCondition(NoMission, 93)
	MisBeginAction(AddMission, 93)
	MisBeginAction(GiveItem, 4133, 1, 4)
	MisCancelAction(ClearMission, 93  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给冰狼堡雷欧")

	MisHelpTalk("<t>雷欧就在1365,570附近快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给雷欧
	DefineMission( 167, "送信给雷欧", 93, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！你是小莫找来帮我的啊！很好！")
	MisResultCondition(NoRecord, 93)
	MisResultCondition(HasMission, 93)
	MisResultCondition(HasItem, 4133, 1)
	MisResultAction(TakeItem, 4133, 1)
	MisResultAction(ClearMission, 93)
	MisResultAction(SetRecord, 93)
	MisResultAction(AddExp, 80, 80)

-----------------------------------猪口夺粮
	DefineMission( 168, "猪口夺粮", 94 )

	MisBeginTalk( "<t>这段时间要拜托你做的任务是这样的，现在是冰狼堡的非常时期，大家都很艰苦，但是那些<b冰原迷你猪>太能吃了，一定要控制一下，你去（1179,371）附近清除掉8个<b冰原迷你猪>，这样就行了。")
	MisBeginCondition(HasRecord, 93)
	MisBeginCondition(NoMission, 94)
	MisBeginCondition(NoRecord, 94)
	MisBeginAction(AddMission, 94)
	MisBeginAction(AddTrigger, 941, TE_KILL, 239, 8 )
	MisCancelAction(ClearMission, 94)

	MisNeed(MIS_NEED_DESP, "猎杀8个<b冰原迷你猪>然后找冰狼堡雷欧(1365,570)谈谈")
	MisNeed(MIS_NEED_KILL, 239, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>喔，完成了，你真行，这些小猪还真是能吃呢，再这样下去，我就打算天天吃烤猪了。")
	MisHelpTalk("<t>哎呀，还没好么？要知道，这也算是生存的争夺呢。")
	MisResultCondition(HasMission, 94)
	MisResultCondition(HasFlag, 94, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 94)
	MisResultAction(SetRecord, 94)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 94, 10, 8 )
	RegCurTrigger( 941 )

-----------------------------------送信给翰娜
	DefineMission( 169, "送信给翰娜", 95 )
	
	MisBeginTalk( "<t>现在我正忙着分配食物，你拿这封信去找服装店主翰娜女士(1349,539)，看看能帮她什么忙？" )
	MisBeginCondition(HasRecord, 94)
	MisBeginCondition(NoRecord, 95)
	MisBeginCondition(NoMission, 95)
	MisBeginAction(AddMission, 95)
	MisBeginAction(GiveItem, 4134, 1, 4)
	MisCancelAction(ClearMission, 95  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给服装店主翰娜")

	MisHelpTalk("<t>还在等什么？快去吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给翰娜
	DefineMission( 170, "送信给翰娜", 95, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦，真感谢雷欧先生让你来帮我！真是太好了！")
	MisResultCondition(NoRecord, 95)
	MisResultCondition(HasMission, 95)
	MisResultCondition(HasItem, 4134, 1)
	MisResultAction(TakeItem, 4134, 1)
	MisResultAction(ClearMission, 95)
	MisResultAction(SetRecord, 95)
	MisResultAction(AddExp, 120, 120)

-----------------------------------错误迁移
	DefineMission( 171, "错误迁移", 96 )

	MisBeginTalk( "<t>呵呵，有个好消息，有一群乖乖鹿好像错误的迁移到冰狼堡附近来了，对于目前的冰狼堡来说这可是天赐的美食啊，这一阵我需要你尽快到（1164,305）附近猎取12头<b乖乖鹿>回来，这样我们晚上就有大餐吃了。")
	MisBeginCondition(HasRecord, 95)
	MisBeginCondition(NoMission, 96)
	MisBeginCondition(NoRecord, 96)
	MisBeginAction(AddMission, 96)
	MisBeginAction(AddTrigger, 961, TE_KILL, 238, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "猎杀12个<b乖乖鹿>然后找冰狼堡翰娜(1349,539)谈谈")
	MisNeed(MIS_NEED_KILL, 238, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>好啊！你果然完成了，真有你的！想到那美味的烤鹿肉，我都不想站岗了。")
	MisHelpTalk("<t>怎么了，你连食物都打不过吗？快去吧！我这边等着下锅呢！")
	MisResultCondition(HasMission, 96)
	MisResultCondition(HasFlag, 96, 21 )
	MisResultAction(ClearMission, 96)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 96)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 96, 10, 12 )
	RegCurTrigger( 961 )


-----------------------------------送信给安琪露亚
	DefineMission( 172, "送信给安琪露亚", 97 )
	
	MisBeginTalk( "<t>虽然我们这些冰狼堡的市民麻烦了你很多事，不过，你也成长了。<n><t>现在，你可以拿着这封信到冰狼堡新手指导<b安琪露亚>那里，她会给你新的指导的。<n><t>她就在1315,507。")
	MisBeginCondition(HasRecord, 96)
	MisBeginCondition(NoRecord, 97)
	MisBeginCondition(NoMission, 97)
	MisBeginAction(AddMission, 97)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 97  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给冰狼堡新手指导")

	MisHelpTalk("<t>安琪露亚就在1315,507，快去吧。")
	MisResultCondition(AlwaysFailure )


-----------------------------------送信给安琪露亚
	DefineMission( 173, "送信给安琪露亚", 97, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>谢谢你给我的信，看来你很受冰狼堡市民的欢迎哦。")
	MisResultCondition(NoRecord, 97)
	MisResultCondition(HasMission, 97)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 97)
	MisResultAction(SetRecord, 97)
	MisResultAction(AddExp, 200, 200)

-----------------------------------猎人转职任务
	DefineMission( 174, "猎人转职任务", 59, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("好，既然是新手指导推荐过来的人，那应该是不错的，你想成为<r猎人>就必须完成我交给你的任务。")
	MisResultCondition(NoRecord, 59)
	MisResultCondition(HasMission, 59)
	MisResultCondition(HasItem, 4117, 1)
	MisResultAction(TakeItem, 4117, 1)
	MisResultAction(ClearMission, 59)
	MisResultAction(SetRecord, 59)

-----------------------------------猎人转职任务
	DefineMission( 175, "猎人转职任务", 98 )

	MisBeginTalk( "<t>你是想来领取猎人手册的么？真有胆识呀。<n><t>不过光有胆识还不够，想领取<r猎人手册>你还必须证明自己有足够的敏捷的身手。<n><t>你现在去<p冰狼堡野外>捕猎12只<b白色乖乖鹿>（1325,305）回来。<n><t>如果你能做到这些，我将认为你通过了第一个考核。")
	MisBeginCondition(HasRecord, 59)
	MisBeginCondition(NoMission, 98)
	MisBeginCondition(NoRecord, 98)
	MisBeginAction(AddMission, 98)
	MisBeginAction(AddTrigger, 981, TE_KILL, 240, 12 )
	MisCancelAction(ClearMission, 98)
	

	MisNeed(MIS_NEED_DESP, "猎杀12个<b白色乖乖鹿>然后找冰狼堡雷欧(1365,570)谈谈")
	MisNeed(MIS_NEED_KILL, 240, 12, 10, 12)
	
	MisResultTalk("<t>我没有看错你，你通过第一关考核了。")
	MisHelpTalk("<t>怎么了，打算放弃了吗？")
	MisResultCondition(HasMission, 98)
	MisResultCondition(HasFlag, 98, 21 )
	MisResultAction(ClearMission, 98)
	MisResultAction(SetRecord, 98)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 98, 10, 12 )
	RegCurTrigger( 981 )


-----------------------------------猎人转职任务
	DefineMission( 176, "猎人转职任务", 99 )
	
	MisBeginTalk( "<t>考核的第二关很简单，你拿这封信去找小莫(1237,613)，他会告诉你考核内容的。")
	MisBeginCondition(HasRecord, 98)
	MisBeginCondition(NoRecord, 99)
	MisBeginCondition(NoMission, 99)
	MisBeginAction(AddMission, 99)
	MisBeginAction(GiveItem, 4136, 1, 4)
	MisCancelAction(ClearMission, 99  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给巡逻兵·小莫")

	MisHelpTalk("<t>小莫就在1237,613附近快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------猎人转职任务
	DefineMission( 177, "猎人转职任务", 99, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！你已经通过猎人考核的第一关了！恭喜你！")
	MisResultCondition(NoRecord, 99)
	MisResultCondition(HasMission, 99)
	MisResultCondition(HasItem, 4136, 1)
	MisResultAction(TakeItem, 4136, 1)
	MisResultAction(ClearMission, 99)
	MisResultAction(SetRecord, 99)
	MisResultAction(AddExp, 100, 100)

-----------------------------------猎人转职任务
	DefineMission( 178, "猎人转职任务", 150 )

	MisBeginTalk( "<t>让我来告诉你考核的第二关内容，你需要去收集3个<b药瓶>回来，这些药瓶从<r冰原迷你猪>（1179,371）身上最容易得到！")
	MisBeginCondition(HasRecord, 99)
	MisBeginCondition(NoMission, 150)
	MisBeginCondition(NoRecord, 150)
	MisBeginAction(AddMission, 150)
	MisBeginAction(AddTrigger, 1501, TE_GETITEM, 1779, 3 )
	MisCancelAction(ClearMission, 150)

	MisNeed(MIS_NEED_DESP, "收集3个<b药瓶>然后回来找小莫谈谈")
	MisNeed(MIS_NEED_ITEM, 1779, 3, 10, 3)
	
	MisResultTalk("<t>你成功了！我真为你高兴，我果然没有看错你！")
	MisHelpTalk("<t>怎么了，那些小猪可是很容易对付的啊！")
	MisResultCondition(HasMission, 150)
	MisResultCondition(HasItem, 1779, 3 )
	MisResultAction(TakeItem, 1779, 3)
	MisResultAction(ClearMission, 150)
	MisResultAction(SetRecord, 150)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 150, 10, 3 )
	RegCurTrigger( 1501 )

-----------------------------------猎人转职任务
	DefineMission( 179, "猎人转职任务", 151 )
	
	MisBeginTalk( "<t>我认为你已经是个合格的猎人了！这里有一本<r猎人手册>，拿着它们去找雷欧(1365,570)，你将成为真正的猎人！")
	MisBeginCondition(HasRecord, 150)
	MisBeginCondition(NoRecord, 151)
	MisBeginCondition(NoMission, 151)
	MisBeginAction(AddMission, 151)
	MisBeginAction(GiveItem, 3955, 1, 4)
	MisCancelAction(ClearMission, 151 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "找冰狼堡的雷欧谈谈")

	MisHelpTalk("<t>干吗？还在磨蹭什么呢你？")
	MisResultCondition(AlwaysFailure )


-----------------------------------猎人转职任务
	DefineMission( 180, "猎人转职任务", 151, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>太好了！你成为真正的猎人了！恭喜你！在冰狼堡最困难的日子了，有你的帮助，大家一定能渡过难关！<n><t>（从现在起，你可以从雷欧这里领取猎人职业任务了。<n><t>另外，你可以到暴冰那里购买猎人武器，在翰娜那里买到猎人装备，还可以到杂货商人·伯鲁那里买到猎人的技能书哦，千万不要忘了哦）")
	MisResultCondition(NoRecord, 151)
	MisResultCondition(HasMission, 151)
	MisResultCondition(HasItem, 3955, 1)
	MisResultCondition(PfEqual, 0 )
	MisResultAction(TakeItem, 3955, 1)
	MisResultAction(ClearMission, 151)
	MisResultAction(SetRecord, 151)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 2)
	MisResultAction(GiveItem, 3187, 1, 4)
	MisResultAction(GiveItem, 25, 1, 4)
	MisResultBagNeed(2)


-----------------------------------送信给伯鲁
	DefineMission( 181, "送信给伯鲁", 91, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>啊，太好了，你的到来正好能够帮助我。")
	MisResultCondition(NoRecord, 91)
	MisResultCondition(HasMission, 91)
	MisResultCondition(HasItem, 4132, 1)
	MisResultAction(TakeItem, 4132, 1)
	MisResultAction(ClearMission, 91)
	MisResultAction(SetRecord, 91)
	MisResultAction(AddExp, 50, 50)


-----------------------------------收集触手
	DefineMission( 182, "收集触手", 152 )

	MisBeginTalk( "<t>最近我整理自己的收集品时发现，我居然没有<r章鱼触手>这样东西，现在就请你帮我去找一些吧，只要3个<r章鱼触手>就好了。<n><t>你可以在<b雪原蔻蔻>(1465,402)那里得到，它们一般会在城门口附近出现。<n><t>目前我就需要你替我做这件事！")
	MisBeginCondition(HasRecord, 91)
	MisBeginCondition(NoMission, 152)
	MisBeginCondition(NoRecord, 152)
	MisBeginAction(AddMission, 152)
	MisBeginAction(AddTrigger, 1521, TE_GETITEM, 1704, 3 )
	MisCancelAction(ClearMission, 152)
	
	MisNeed(MIS_NEED_DESP, "收集3只<r章鱼触手>然后找伯鲁(1356,483)谈谈")
	MisNeed(MIS_NEED_ITEM, 1704, 3, 10, 3)
	
	MisResultTalk("<t>太好了，这下我的收藏品又多了一点，好开心哦！<n><t>也要谢谢你，今后还会有需要你帮助的地方，到是千万不要推辞哦！")
	MisHelpTalk("<t>怎么了，很难找吗？雪原蔻蔻就在城门口附近，快去吧。")
	MisResultCondition(HasMission, 152)
	MisResultCondition(HasItem, 1704, 3 )
	MisResultAction(TakeItem, 1704, 3)
	MisResultAction(ClearMission, 152)
	MisResultAction(SetRecord, 152)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704 )	
	TriggerAction( 1, AddNextFlag, 152, 10, 3 )
	RegCurTrigger( 1521 )

-----------------------------------送信给约瑟夫
	DefineMission( 183, "送信给约瑟夫", 153 )
	
	MisBeginTalk( "<t>那么我再麻烦你一件事，请帮我送封信给我的朋友约瑟夫(1290,540)，也希望他能给你帮助。")
	MisBeginCondition(HasRecord, 152)
	MisBeginCondition(NoRecord, 153)
	MisBeginCondition(NoMission, 153)
	MisBeginAction(AddMission, 153)
	MisBeginAction(GiveItem, 4137, 1, 4)
	MisCancelAction(ClearMission, 153 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给冰狼堡的约瑟夫(1290,540).")

	MisHelpTalk("<t>再见，我的朋友，我现在暂时不能再给你什么帮助了。")
	MisResultCondition(AlwaysFailure )

-----------------------------------送信给约瑟夫
	DefineMission( 184, "送信给约瑟夫", 153, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！你是伯鲁请来帮助我的啊！太好了。")
	MisResultCondition(NoRecord, 153)
	MisResultCondition(HasMission, 153)
	MisResultCondition(HasItem, 4137, 1)
	MisResultAction(TakeItem, 4137, 1)
	MisResultAction(ClearMission, 153)
	MisResultAction(SetRecord, 153)
	MisResultAction(AddExp, 80, 80)

-----------------------------------调料瓶
	DefineMission( 185, "调料瓶", 154 )

	MisBeginTalk( "<t>最近我的旅店里打碎了好多调料瓶！<n><t>那就请帮我个忙，去（1179,371）附近的<b冰原迷你猪>身上搞到2个<r药瓶>回来吧，这样我至少有个替代品，呵呵。")
	MisBeginCondition(HasRecord, 153)
	MisBeginCondition(NoMission, 154)
	MisBeginCondition(NoRecord, 154)
	MisBeginAction(AddMission, 154)
	MisBeginAction(AddTrigger, 1541, TE_GETITEM, 1779, 2 )
	MisCancelAction(ClearMission, 154)
	
	MisNeed(MIS_NEED_DESP, "收集2个<r药瓶>然后找冰狼堡的约瑟夫(964,422)谈谈")
	MisNeed(MIS_NEED_ITEM, 1779, 2, 10, 2)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>噢噢！这下我那些美味的调料又有地方存放了！")
	MisHelpTalk("<t>不就是两个药瓶嘛，全靠你了，快去吧。")
	MisResultCondition(HasMission, 154)
	MisResultCondition(HasItem, 1779, 2 )
	MisResultAction(TakeItem, 1779, 2)
	MisResultAction(ClearMission, 154)
	MisResultAction(SetRecord, 154)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 154, 10, 2 )
	RegCurTrigger( 1541 )

-----------------------------------送信给布丽娜
	DefineMission( 186, "送信给布丽娜", 155 )
	
	MisBeginTalk( "<t>这封信是给冰狼堡的<b布丽娜>的，她就在1360,519，是个出纳，麻烦你帮我教给她好吗？")
	MisBeginCondition(HasRecord, 154)
	MisBeginCondition(NoRecord, 155)
	MisBeginCondition(NoMission, 155)
	MisBeginAction(AddMission, 155)
	MisBeginAction(GiveItem, 4138, 1, 4)
	MisCancelAction(ClearMission, 155 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给冰狼堡的布丽娜")

	MisHelpTalk("<t>怎么了，想要住宿吗？我们熟归熟，住宿还是要收费的，不过我可以给你打个九九折。")
	MisResultCondition(AlwaysFailure )
-----------------------------------送信给布丽娜
	DefineMission( 187, "送信给布丽娜", 155, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>咦，那个旅店老板居然也会给别人写推荐信？看来你一定不错哦！")
	MisResultCondition(NoRecord, 155)
	MisResultCondition(HasMission, 155)
	MisResultCondition(HasItem, 4138, 1)
	MisResultAction(TakeItem, 4138, 1)
	MisResultAction(ClearMission, 155)
	MisResultAction(SetRecord, 155)
	MisResultAction(AddExp, 120, 120)

-----------------------------------眼泪
	DefineMission( 188, "眼泪", 156 )

	MisBeginTalk( "<t>听说用<b白色乖乖鹿>(1325,305)或者<b乖乖鹿>(1164,305)的眼泪制作的首饰能给人带来幸运！<n><t>我希望你能给我找1个来好吗？")
	MisBeginCondition(HasRecord, 155)
	MisBeginCondition(NoMission, 156)
	MisBeginCondition(NoRecord, 156)
	MisBeginAction(AddMission, 156)
	MisBeginAction(AddTrigger, 1561, TE_GETITEM, 1681, 1 )
	MisCancelAction(ClearMission, 156)
	
	MisNeed(MIS_NEED_DESP, "收集1个<b眼泪>然后找冰狼堡的布丽娜(1360,519)谈谈")
	MisNeed(MIS_NEED_ITEM, 1681, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>太好了，有了这些眼泪，我一定可以制作出位美丽的饰品！")
	MisHelpTalk("<t>难道连一滴眼泪你也收集不到吗？")
	MisResultCondition(HasMission, 156)
	MisResultCondition(HasItem, 1681, 1 )
	MisResultAction(TakeItem, 1681, 1)
	MisResultAction(ClearMission, 156)
	MisResultAction(SetRecord, 156)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1681 )	
	TriggerAction( 1, AddNextFlag, 156, 10, 1 )
	RegCurTrigger( 1561 )

-----------------------------------送信给安琪露亚
	DefineMission( 189, "送信给安琪露亚", 157 )
	
	MisBeginTalk( "<t>虽然我们这些冰狼堡的市民麻烦了你很多事，不过，你也成长了。<n><t>现在，你可以拿着这封信到冰狼堡新手指导<b安琪露亚>那里，她会给你新的指导的。<n><t>她就在1315,507。")
	MisBeginCondition(HasRecord, 156)
	MisBeginCondition(NoRecord, 157)
	MisBeginCondition(NoMission, 157)
	MisBeginAction(AddMission, 157)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 157 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给冰狼堡新手指导")

	MisHelpTalk("<t>安琪露亚就在1315,507，快去吧。")
	MisResultCondition(AlwaysFailure )
-----------------------------------送信给安琪露亚
	DefineMission( 190, "送信给安琪露亚", 157, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>谢谢你给我的信，看来你很受冰狼堡市民的欢迎哦。")
	MisResultCondition(NoRecord, 157)
	MisResultCondition(HasMission, 157)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 157)
	MisResultAction(SetRecord, 157)
	MisResultAction(AddExp, 200, 200)


-----------------------------------冒险者转职任务
	DefineMission( 191, "冒险者转职任务", 61, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("好，既然是新手指导推荐过来的人，那应该是不错的，你想成为<r冒险者>就必须完成我交给你的任务。")
	MisResultCondition(NoRecord, 61)
	MisResultCondition(HasMission, 61)
	MisResultCondition(HasItem, 4119, 1)
	MisResultAction(TakeItem, 4119, 1)
	MisResultAction(ClearMission, 61)
	MisResultAction(SetRecord, 61)

-----------------------------------冒险者转职任务
	DefineMission( 192, "冒险者转职任务", 158 )

	MisBeginTalk( "<t>你是想来接受冒险者的试炼么？冒险者经常在野外独自一人遇到很多危险，如何生存下去是冒险者的入门知识，你要想得到<r生存指南>的话，你必须到<p白银城野外>打败12只<b迷你猪>(1950,2563)，等你完成以后我会告诉你接下去要做什么的。")
	MisBeginCondition(HasRecord, 61)
	MisBeginCondition(NoMission, 158)
	MisBeginCondition(NoRecord, 158)
	MisBeginAction(AddMission, 158)
	MisBeginAction(AddTrigger, 1581, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 158)
	
	MisNeed(MIS_NEED_DESP, "猎杀12个<b迷你猪>然后找白银城小山车（2193,2730）谈谈")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>朋友，你做得真不错！<n><t>你通过我的测试了，下一步就是要再去接受最后的考核！")
	MisHelpTalk("<t>你还没有达到我的要求哦，冒险者的生存指南可不是随便就能获得的。")
	MisResultCondition(HasMission, 158)
	MisResultCondition(HasFlag, 158, 21 )
	MisResultAction(ClearMission, 158)
	MisResultAction(SetRecord, 158)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 158, 10, 12 )
	RegCurTrigger( 1581 )


-----------------------------------冒险者转职任务
	DefineMission( 193, "冒险者转职任务", 159 )
	
	MisBeginTalk( "<t><t>现在，你必须去找海军少将<b威尔斯>先生(2277,2831)证明你的实力，拿着这封信，这封信代表你已经通过了第一关，将它交给威尔斯，他会给你最终的考核。")
	MisBeginCondition(HasRecord, 158)
	MisBeginCondition(NoRecord, 159)
	MisBeginCondition(NoMission, 159)
	MisBeginAction(AddMission, 159)
	MisBeginAction(GiveItem, 4139, 1, 4)
	MisCancelAction(ClearMission, 159  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "送信给海军少将维尔斯")

	MisHelpTalk("<t>快去吧，我希望你能顺利完成！")
	MisResultCondition(AlwaysFailure )
-----------------------------------冒险者转职任务
	DefineMission( 194, "冒险者转职任务", 159, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>哦！又是一个充满了冒险梦想的年轻人，很好，但你也要做好心理准备哦。")
	MisResultCondition(NoRecord, 159)
	MisResultCondition(HasMission, 159)
	MisResultCondition(HasItem, 4139, 1)
	MisResultAction(TakeItem, 4139, 1)
	MisResultAction(ClearMission, 159)
	MisResultAction(SetRecord, 159)
	MisResultAction(AddExp, 100, 100)

-----------------------------------冒险者转职任务
	DefineMission( 195, "冒险者转职任务", 160 )

	MisBeginTalk( "<t>从<p银矿东北面>那里的<r沼泽森灵>身上收集到2个<b有毒的果实>回来，你就通过了考核！")
	MisBeginCondition(HasRecord, 159)
	MisBeginCondition(NoMission, 160)
	MisBeginCondition(NoRecord, 160)
	MisBeginAction(AddMission, 160)
	MisBeginAction(AddTrigger, 1601, TE_GETITEM, 1595, 2 )
	MisCancelAction(ClearMission, 160)

	MisNeed(MIS_NEED_DESP, "收集2个<b有毒的果实>然后回来找威尔斯(2277,2831)谈谈")
	MisNeed(MIS_NEED_ITEM, 1595, 2, 10, 2)
	
	MisResultTalk("<t>很不错，你成功了。<n><t>恭喜你，你的冒险旅程已经在前方等着你了，我唯一希望的，就是你不要成为一名海盗……")
	MisHelpTalk("<t>想放弃的话，请直接和我说。")
	MisResultCondition(HasMission, 160)
	MisResultCondition(HasItem, 1595, 2 )
	MisResultAction(TakeItem, 1595, 2)
	MisResultAction(ClearMission, 160)
	MisResultAction(SetRecord, 160)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1595 )	
	TriggerAction( 1, AddNextFlag, 160, 10, 2 )
	RegCurTrigger( 1601 )

-----------------------------------冒险者转职任务
	DefineMission( 196, "冒险者转职任务", 161 )
	
	MisBeginTalk( "<t>这本<r生存指南>给你，交给小山车（2193,2730），这代表你将成为一个合格的冒险者！")
	MisBeginCondition(HasRecord, 160)
	MisBeginCondition(NoRecord, 161)
	MisBeginCondition(NoMission, 161)
	MisBeginAction(AddMission, 161)
	MisBeginAction(GiveItem, 3962, 1, 4)
	MisCancelAction(ClearMission, 161 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "带着生存手册找白银城小山车（2193,2730）谈谈")

	MisHelpTalk("<t>快去吧！难道你不想成为冒险者了吗？")
	MisResultCondition(AlwaysFailure )

-----------------------------------冒险者转职任务
	DefineMission( 197, "冒险者转职任务", 161, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>恭喜恭喜！你现在是冒险者了！想想看，你的冒险足迹将遍布整个世界，多么令人期盼啊！<n><t>（从现在起，你可以从小山车这里领取冒险者职业任务了。<n><t>另外，你可以到小金金那里购买冒险者武器，在尼萨婆婆那里买到冒险者装备，还可以到杂货商人·吉普立那里买到冒险者的技能书哦，千万不要忘了哦）")
	MisResultCondition(NoRecord, 161)
	MisResultCondition(HasMission, 161)
	MisResultCondition(HasItem, 3962, 1)
	MisResultAction(TakeItem, 3962, 1)
	MisResultAction(ClearMission, 161)
	MisResultAction(SetRecord, 161)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 4)
	MisResultAction(GiveItem, 867, 1, 4)
	MisResultAction(GiveItem, 3227, 1, 4)
	MisResultBagNeed(2)


-----------------------------------初级贸易证任务
	DefineMission( 198, "初级贸易证任务", 162 )

	MisBeginTalk( "<t>我这里有一张初级贸易证，如果你想要就得帮我办件事，现在我这边需要一些木材，如果你能够带给我40根木头的话，我就把这本初级贸易证给你。<n><t>（想要得到木头的话，可以自己伐木也可以从其他玩家那里交易获得，想要自己伐木的话，先去各个城市的杂货商人处购买伐木技能书，学会伐木技能后，装备了伐木斧（铁匠那里有卖）就能到各个林区去伐木了。<n><t>伐木技能属于生活技能，需要生活技能点，生活技能点可以通过完成历史任务获得，历史任务在你等级达到10级后可以在各个城市的新手知道处接到。<n><t>对了，你可以在官网商城买到“高级伐木斧”，可以让你的伐木效率大大提高哦，你可以去看看。)")
	MisBeginCondition(NoMission, 162)
	MisBeginCondition(NoItem, 4605, 1)
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginAction(AddMission, 162)
	MisBeginAction(AddTrigger, 1621, TE_GETITEM, 4543, 40 )
	MisCancelAction(ClearMission, 162)

	MisNeed(MIS_NEED_DESP, "替沙岚城的西多夫(799,3659)砍40根木头")
	MisNeed(MIS_NEED_ITEM, 4543, 40, 10, 40)
	
	MisResultTalk("<t>好极了，既然你已经帮我把事情都办好了，那么这张初级贸易证就是你的了。")
	MisHelpTalk("<t>怎么你还没出发？难道你不想要这张贸易证了么？")
	MisResultCondition(HasMission, 162)
	MisResultCondition(HasItem, 4543, 40 )
	MisResultAction(TakeItem, 4543, 40 )
	MisResultAction(ClearMission, 162)
	MisResultAction(SetRecord, 162)
	MisResultAction(GiveItem, 4605, 1, 4)
	MisResultAction(SetTradeItemLevel, 1 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543 )	
	TriggerAction( 1, AddNextFlag, 162, 10, 40 )
	RegCurTrigger( 1621 )

-----------------------------------中级贸易证任务
	DefineMission( 199, "中级贸易证任务", 163 )

	MisBeginTalk( "<t>我这里有一张中级贸易证，如果你想要就得帮我办件事，现在我这边需要一些水晶矿，如果你能够带给我40个水晶矿石的话，我就把这本中级贸易证给你。<n><t>（想要得到矿石的话，可以自己挖矿也可以从其他玩家那里交易获得，想要自己挖矿的话，先去各个城市的杂货商人处购买挖矿技能书，学会挖矿技能后，装备上矿镐就能到各个矿点挖矿了。<n><t>挖矿技能属于生活技能，需要生活技能点，生活技能点可以通过完成历史任务获得，历史任务在你等级达到10级后可以在各个城市的新手知道处接到。<n><t>对了，你可以在官网商城买到“高级矿镐”，可以让你的挖矿效率大大提高哦，你可以去看看。)")
	MisBeginCondition(NoMission, 163)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 99 )
	MisBeginCondition(LvCheck, ">", 39)
	MisBeginCondition(TradeItemLevelCheck, "=", 1)
	MisBeginAction(AddMission, 163)
	MisBeginAction(AddTrigger, 1631, TE_GETITEM, 4546, 40 )
	MisCancelAction(ClearMission, 163)

	MisNeed(MIS_NEED_DESP, "替沙岚城的西多夫(799,3659)挖40个水晶矿石")
	MisNeed(MIS_NEED_ITEM, 4546, 40, 10, 40)
	
	MisResultTalk("<t>好极了，既然你已经帮我把事情都办好了，那么这张中级贸易证就是你的了。")
	MisHelpTalk("<t>怎么你还没出发？难道你不想要这张贸易证了么？")
	MisResultCondition(HasMission, 163)
	MisResultCondition(HasItem, 4546, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4546, 40)
	MisResultAction(ClearMission, 163)
	MisResultAction(SetRecord, 163)
	MisResultAction(SetTradeItemLevel, 2 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4546 )	
	TriggerAction( 1, AddNextFlag, 163, 10, 40 )
	RegCurTrigger( 1631 )


-----------------------------------高级贸易证任务
	DefineMission( 149, "高级贸易证任务", 164 )

	MisBeginTalk( "<t>我这里有一张高级贸易证，如果你想要就得帮我办件事，现在我这边需要一些水晶矿，如果你能够带给我40个能量矿石的话，我就把这本高级贸易证给你")
	MisBeginCondition(NoMission, 164)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 399 )
	MisBeginCondition(LvCheck, ">", 59)
	MisBeginCondition(TradeItemLevelCheck, "=", 2)
	MisBeginAction(AddMission, 164)
	MisBeginAction(AddTrigger, 1641, TE_GETITEM, 4544, 40 )
	MisCancelAction(ClearMission, 164)

	MisNeed(MIS_NEED_DESP, "替沙岚城的西多夫(799,3659)挖40个能量矿石")
	MisNeed(MIS_NEED_ITEM, 4544, 40, 10, 40)
	
	MisResultTalk("<t>好极了，既然你已经帮我把事情都办好了，那么这张高级贸易证就是你的了。")
	MisHelpTalk("<t>怎么你还没出发？难道你不想要这张贸易证了么？")
	MisResultCondition(HasMission, 164)
	MisResultCondition(HasItem, 4544, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4544, 40)
	MisResultAction(ClearMission, 164)
	MisResultAction(SetRecord, 164)
	MisResultAction(SetTradeItemLevel, 3 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4544 )
	TriggerAction( 1, AddNextFlag, 164, 10, 40 )
	RegCurTrigger( 1641 )

end
RobinMission039()




