--------------------------------------------------------------------------
--									--
--									--
--MissionScript02.lua Created by Robin 2005.03.31.			--
--									--
--									--
--------------------------------------------------------------------------
print( "loading MissionScript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		历史任务	 				--
--							--
--		227725,276925				--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>历史任务开始
function HistoryMission001()

----------------------------首席秘书的口信
	DefineMission( 200, "首席秘书的口信", 200 )
	
	MisBeginTalk( "<t>啊!你来得真巧，我这里正好有白银城首席秘书——<b斯克特>先生的口信转达给你，你的名声已经渐渐的传到了首席秘书先生那里，他想见见你，有空的话就去（2219,2749）找他吧。" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "找白银城的首席秘书——斯克特先生（2219,2749）谈谈")
	
	MisHelpTalk("<t>你还没去拜访斯克特先生吗？快去吧！")
	MisResultCondition(AlwaysFailure )

	



----------------------------首席秘书的口信
	DefineMission( 201, "首席秘书的口信", 201 )
	
	MisBeginTalk( "<t>啊!你来得真巧，我这里正好有白银城首席秘书——<b斯克特>先生的口信转达给你，你的名声已经渐渐的传到了首席秘书先生那里，他想见见你，有空的话就去（2219,2749）找他吧。" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "找白银城的首席秘书——斯克特先生（2219,2749）谈谈")
	
	MisHelpTalk("<t>你还没去拜访斯克特先生吗？快去吧！")
	MisResultCondition(AlwaysFailure )


----------------------------首席秘书的口信
	DefineMission( 202, "首席秘书的口信", 202 )
	
	MisBeginTalk( "<t>啊!你来得真巧，我这里正好有白银城首席秘书——<b斯克特>先生的口信转达给你，你的名声已经渐渐的传到了首席秘书先生那里，他想见见你，有空的话就去（2219,2749）找他吧。" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "找白银城的首席秘书——斯克特先生（2219,2749）谈谈")
	
	MisHelpTalk("<t>你还没去拜访斯克特先生吗？快去吧！")
	MisResultCondition(AlwaysFailure )


-----------------------------------首席秘书的口信
	DefineMission( 203, "首席秘书的口信", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦！你来了，很高兴见到你，我听说了一些你的事，看起来你象是个具有冒险精神的人，我这有些事需要拜托你去做。")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)



-----------------------------------首席秘书的口信
	DefineMission( 204, "首席秘书的口信", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦！你来了，很高兴见到你，我听说了一些你的事，看起来你象是个具有冒险精神的人，我这有些事需要拜托你去做。")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


-----------------------------------首席秘书的口信
	DefineMission( 205, "首席秘书的口信", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦！你来了，很高兴见到你，我听说了一些你的事，看起来你象是个具有冒险精神的人，我这有些事需要拜托你去做。")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------小小的考验
	DefineMission( 206, "小小的考验", 203 )
	
	MisBeginTalk( "<t>其实，我想要拜托你调查加纳大陆上一些奇怪的事情。<n><t>但是，在此之前，还是得对你进行小小的考验。<n><t>去<p白银码头>（2277,2831）找<b海军少将·威尔斯>吧，他会给你任务的。" )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "去<p白银码头>找<b海军少将·威尔斯>（2277,2831）谈谈")
	
	MisHelpTalk("<t>怎么，还有什么问题吗？先去>找<b海军少将·威尔斯>吧，他会给你任务的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------小小的考验
	DefineMission( 207, "小小的考验", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哼…斯克特这家伙真奇怪，居然找个新手来，真是看不起我们海军……<n><t>好吧，你准备准备，我要考验一下你的能力。")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)
	MisResultAction(AddExpAndType,2,875,875)



-------------------------------------------------海军的伙食配料
	DefineMission( 208, "海军的伙食配料", 204 )

	MisBeginTalk( "<t>你这种新手也做不了什么任务……这样吧，你就去替我们采集一些海军的伙食配料吧。<n><t>配料包括5份<y射水贝肉>、10片<y海螺肉>和10颗<y精灵果>，清楚了吗？" )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--射水贝肉
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--海螺肉
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>嗯……你的手脚倒不算慢……当然，比起我们海军还是有差距的。")
	MisHelpTalk("<t>怎么了？你连这么简单的任务都完成不了？记住！<n><t>是5份<y射水贝肉>、10片<y海螺肉>和10颗<y精灵果>！")
	MisResultCondition(HasMission, 204)
	MisResultCondition(HasItem, 3963, 5 )
	MisResultCondition(HasItem, 3964, 10 )
	MisResultCondition(HasItem, 3116, 10 )
	MisResultAction(TakeItem, 3963, 5 )
	MisResultAction(TakeItem, 3964, 10 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(ClearMission, 204)
	MisResultAction(SetRecord, 204 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3963)	
	TriggerAction( 1, AddNextFlag, 204, 10, 5 )
	RegCurTrigger( 2041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3964)	
	TriggerAction( 1, AddNextFlag, 204, 20, 10 )
	RegCurTrigger( 2042 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 204, 30, 10 )
	RegCurTrigger( 2043 )

----------------------------走失的唐德
	DefineMission( 209, "走失的唐德", 205 )
	
	MisBeginTalk( "<t>既然你来了，总得给你个比较正式的任务去完成，正好我这里接到市民的求助，说一个叫<b唐德>的孩子不见了，曾经有人看到他出城往<p银矿>方向去了，去把他找到。" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "找到少年·唐德（1962,2694）")
	
	MisHelpTalk("<t>曾经有人看到<b唐德>出城往<p银矿>方向去了，你快去把他找到。")
	MisResultCondition(AlwaysFailure )

-----------------------------------走失的唐德
	DefineMission( 210, "走失的唐德", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>咦？你是来找我的吗？我只是到这里来看奇怪的山羊打架的！")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------向少将回报
	DefineMission( 211, "向少将回报", 206 )
	
	MisBeginTalk( "<t>想不到我跑到这里来还给海军少将先生添了麻烦，请帮我谢谢他，另外，请替我把这封信交给他吧，我还在这里看一会儿就回家了。" )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--唐德的信
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "将信交给海军少将·威尔斯（2277,2831）")
	
	MisHelpTalk("<t>你还有事吗？我看一会就回去了")
	MisResultCondition(AlwaysFailure )

-----------------------------------向少将回报
	DefineMission( 212, "向少将回报", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>呃……你找到……唐德了……不……不错……哎哟……我……我……")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--唐德的信
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------全体食物中毒
	DefineMission( 213, "全体食物中毒", 207 )

	MisBeginTalk( "<t>呃……呃……真……真不好意思……吃了今天的午……午餐后……海军全……全体食物中毒……拜托……带上这个……这个……<y午餐样本>……去……（2250,2770）<b药商帝姆>那……找解药来吧……快！" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--午餐样本
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--射水贝肉
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>啊……这下好了，喔哈哈哈，你这人真不错，我喜欢！")
	MisHelpTalk("<t>解药……还……还没拿来吗？")
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3967, 1 )
	MisResultAction(TakeItem, 3967, 1 )
	MisResultAction(ClearMission, 207)
	MisResultAction(SetRecord, 207 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3967)	
	TriggerAction( 1, AddNextFlag, 207, 10, 1 )
	RegCurTrigger( 2071 )

-----------------------------------全体食物中毒
	DefineMission( 214, "全体食物中毒", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦！海军全体食物中毒！<n><t>让我先研究一下这个午餐的样品……嗯，海军的伙食不错嘛！")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--唐德的信
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
-------------------------------------------------解药原料
	DefineMission( 215, "解药原料", 208 )

	MisBeginTalk( "<t>我研究了这份午餐，问题出在这个射水贝肉上，我可以做出解药，但是需要足够的原料。<n><t>我还缺少3撮<y羊绒>；3根<y小猪尾巴>；3个<y坚硬的壳>，你能帮我把这些原料弄来吗？" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--羊绒
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--小猪尾巴
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--坚硬的壳
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)

	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>太好了，你等一下，我马上把解药做好！<n><t>……………………喏，就是这个了，你拿好咯。")
	MisHelpTalk("<t>我需要3撮<y羊绒>；3根<y小猪尾巴>；3个<y坚硬的壳>，怎么样，找齐了吗？")
	MisResultCondition(HasMission, 208)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultCondition(HasItem, 3968, 3 )
	MisResultCondition(HasItem, 1614, 3 )
	MisResultAction(TakeItem, 1678, 3 )
	MisResultAction(TakeItem, 3968, 3 )
	MisResultAction(TakeItem, 1614, 3 )
	MisResultAction(ClearMission, 208)
	MisResultAction(SetRecord, 208 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 208, 10, 3 )
	RegCurTrigger( 2081 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3968)	
	TriggerAction( 1, AddNextFlag, 208, 20, 3 )
	RegCurTrigger( 2082 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1614)	
	TriggerAction( 1, AddNextFlag, 208, 30, 3 )
	RegCurTrigger( 2083 )

----------------------------唐德的委托
	DefineMission( 216, "唐德的委托", 209 )
	
	MisBeginTalk( "<t>先前<b唐德>给我寄来了信，说白银城附近的羊群中出现了好斗凶猛的山羊，这也是斯克特想要拜托你调查的事件之一。<n><t>奇怪的山羊，有毒的射水贝，这些都是我不了解的东西，但你可以先去和（2250,2770）的<b药商帝姆>聊聊。" )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "向帝姆（2250,2770）询问关于残暴山羊的事")
	
	MisHelpTalk("<t>怎么了，向帝姆询问过残暴山羊的事了吗？")
	MisResultCondition(AlwaysFailure )

-----------------------------------唐德的委托
	DefineMission( 217, "唐德的委托", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>关于残暴的山羊，我也听说了，估计和有毒的珍珠贝肉一样是属于生物变异，但具体原因还要调查。")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------疯狂的原因
	DefineMission( 218, "疯狂的原因", 210 )

	MisBeginTalk( "<t>嗯，我考虑过了，我们先调查一下<r残暴山羊>吧。<n><t>从（1968,2697）附近的<r残暴山羊>那里拿5个<y残暴山羊的口水>给我，然我看看它们到底吃了些什么？" )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--残暴山羊的口水
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>很好，要知道，口水里的学问可大了，这样我就可以查一下是什么影响了这些山羊。")
	MisHelpTalk("<t>怎么了，还没有拿到5个<y残暴山羊的口水>吗？")
	MisResultCondition(HasMission, 210)
	MisResultCondition(HasItem, 3969, 5 )
	MisResultAction(TakeItem, 3969, 5 )
	MisResultAction(ClearMission, 210)
	MisResultAction(SetRecord, 210 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3969)	
	TriggerAction( 1, AddNextFlag, 210, 10, 5 )
	RegCurTrigger( 2101 )

-------------------------------------------------深入调查
	DefineMission( 219, "深入调查", 211 )

	MisBeginTalk( "<t>我的研究表明，确实是有些奇怪的元素存在于这些变异了的山羊的食物表内，但是我还不能确定。<n><t>这样吧，在<p白银城的以北>的海岸线（2048,2514）附近有一只奇怪的<r射水贝王>，去拿到它的<y贝王珠>，让我再做进一步的研究。" )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--残暴山羊的口水
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t>太好了，你拿到<y贝王珠>，你看，这种奇怪的光泽，一定是变异引起的，我要好好的研究一下。")
	MisHelpTalk("<t>怎么，对付不了<r射水贝王>？实在不行的话，就找些朋友一起去吧。")
	MisResultCondition(HasMission, 211)
	MisResultCondition(HasItem, 3970, 1 )
	MisResultAction(TakeItem, 3970, 1 )
	MisResultAction(ClearMission, 211)
	MisResultAction(SetRecord, 211 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3970)	
	TriggerAction( 1, AddNextFlag, 211, 10, 1 )
	RegCurTrigger( 2111 )

----------------------------帝姆的报告书
	DefineMission( 220, "帝姆的报告书", 212 )
	
	MisBeginTalk( "<t>噢！这个研究看来还要花费我一些时间。<n><t>这样吧，我先简单的写一份报告书，你把这份<y报告书>交给（2219,2749）的<b首席秘书·斯克特>先生吧。" )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "将报告书交给白银城首席秘书（2219,2749）")
	
	MisHelpTalk("<t>怎么了，快去吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------帝姆的报告书
	DefineMission( 221, "帝姆的报告书", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>嗯，这是帝姆的报告书，很好，看来有了你的参与，调查有些进展了。")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,350,350)
	MisResultAction(AddMoney,1500,1500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------新任务
	DefineMission( 222, "新任务", 213 )
	
	MisBeginTalk( "<t>谣传<p废矿补给站>麻烦不断，拿着这份推荐信去那里向（1909,2820）的<b矿区治安官里卡尔>报到，那里有新的任务在等着你。" )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "将推荐信交给矿区治安官里卡尔（1909,2820）")
	
	MisHelpTalk("<t>怎么了，快去<p废矿补给站>吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------新任务
	DefineMission( 223, "新任务", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你就是斯克特先生派来的人，很好，我正等你呢。")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,400,400)
	MisResultAction(AddMoney,1500,1500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------寻找丢失的工具
	DefineMission( 224, "寻找丢失的工具", 214 )

	MisBeginTalk( "<t>最近矿区里很多矿工的工具不见了，麻烦你在矿区周围周边找找工具箱，那些丢失的工具应该就在里面。" )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--被盗的铁锹
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--被盗的安全帽
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--被盗的矿灯
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>太好了，工具都找回来了，你果然很能干！")
	MisHelpTalk("<t>怎么了，找不到吗？你只要围绕矿区周围转个几圈，看看有没有什么可以的人或者怪物。")
	MisResultCondition(HasMission, 214)
	MisResultCondition(HasItem, 3973, 5 )
	MisResultCondition(HasItem, 3974, 3 )
	MisResultCondition(HasItem, 3975, 5 )
	MisResultAction(TakeItem, 3973, 5 )
	MisResultAction(TakeItem, 3974, 3 )
	MisResultAction(TakeItem, 3975, 5 )
	MisResultAction(ClearMission, 214)
	MisResultAction(SetRecord, 214 )
	MisResultAction(AddExp,450,450)
	MisResultAction(AddMoney,1600,1600)	
	MisResultAction(AddExpAndType,2,3402,3402)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3973)	
	TriggerAction( 1, AddNextFlag, 214, 10, 5 )
	RegCurTrigger( 2141 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3974)	
	TriggerAction( 1, AddNextFlag, 214, 20, 3 )
	RegCurTrigger( 2142 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3975)	
	TriggerAction( 1, AddNextFlag, 214, 30, 5 )
	RegCurTrigger( 2143 )

-------------------------------------------------清理利齿菇
	DefineMission( 225, "清理利齿菇", 215 )

	MisBeginTalk( "<t>我负责的最重要的工作就是剿灭附近的山贼，但是讨厌的<r利齿菇>是肃清山贼最讨厌的障碍，必须清理掉。<n><t>现在就派你去将（1594,2689）附近的利齿菇清理掉！" )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--利齿菇
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>太好了，解决了利齿菇，我们就能对付那些山贼了！")
	MisHelpTalk("<t>你要当心哦，那些<r利齿菇>可是会咬人的！！")
	MisResultCondition(HasMission, 215)
	MisResultCondition(HasFlag, 215, 19 )
	MisResultAction(ClearMission, 215)
	MisResultAction(SetRecord, 215 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,3403,3403)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 252)	
	TriggerAction( 1, AddNextFlag, 215, 10, 10 )
	RegCurTrigger( 2151 )

-------------------------------------------------帝姆的委托
	DefineMission( 226, "帝姆的委托", 216 )

	MisBeginTalk( "<t>刚收到白银药商帝姆的来信，他的研究似乎遇到了一些麻烦，他需要你替他搞到<y蟹王的胃结石>继续研究。<n><t>这个<r铁甲蟹王>我知道，从矿区一直向北走，快到海边之前，你就能找到它，至于坐标嘛...好象是（1783,2507）" )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--蟹王的胃结石
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>哦！你拿到帝姆需要的东西了！我马上就替你寄去！")
	MisHelpTalk("<t>还没有去找<r铁甲蟹王>吗？从矿区一直向北走，快到海边之前，你就能找到它。")
	MisResultCondition(HasMission, 216)
	MisResultCondition(HasItem, 3976, 1 )
	MisResultAction(TakeItem, 3976, 1)
	MisResultAction(ClearMission, 216)
	MisResultAction(SetRecord, 216 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,9000,9000)	
	MisResultAction(AddExpAndType,2,3404,3404)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3976 )	
	TriggerAction( 1, AddNextFlag, 216, 10, 1 )
	RegCurTrigger( 2161 )

-------------------------------------------------山贼势力图
	DefineMission( 227, "山贼势力图", 217 )

	MisBeginTalk( "<t>谣传附近有神秘人在兜售山贼的活动地图，这份地图对我们太有用了，你要想办法搞到！你可以去（2217,2547）附近找找看" )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--山贼势力图
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>你真的拿到了！真有你的！这下这些山贼跑不掉了。")
	MisHelpTalk("<t>没有头绪吗？我也一样啊！去问问周围的人吧，也许会有帮助的。")
	MisResultCondition(HasMission, 217)
	MisResultCondition(HasItem, 3977, 1 )
	MisResultAction(TakeItem, 3977, 1)
	MisResultAction(ClearMission, 217)
	MisResultAction(SetRecord, 217 )
	MisResultAction(AddExp,750,750)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,11833,11833)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3977 )	
	TriggerAction( 1, AddNextFlag, 217, 10, 1 )
	RegCurTrigger( 2171 )

-------------------------------------------------突袭山贼团
	DefineMission( 228, "突袭山贼团", 218 )

	MisBeginTalk( "<t>根据这份山贼地图，，他们在<p古里咯利补给站>以西较远的地方聚集，我希望你能先试探性攻击一次，消灭一些（1043,3066）<r山贼>，拿到3个<y山贼的项链>后来向我报告。" )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--山贼的项链
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>很好！这是我们对那群无法无天的家伙的第一记重拳！")
	MisHelpTalk("<t>怎么了，还没有收集齐<y山贼的项链>吗？")
	MisResultCondition(HasMission, 218)
	MisResultCondition(HasItem, 1841, 3 )
	MisResultAction(TakeItem, 1841, 3 )
	MisResultAction(ClearMission, 218)
	MisResultAction(SetRecord, 218 )
	MisResultAction(AddExp,1000,1000)
	MisResultAction(AddMoney,2200,2200)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1841 )	
	TriggerAction( 1, AddNextFlag, 218, 10, 3 )
	RegCurTrigger( 2181 )

-------------------------------------------------悬赏令
	DefineMission( 229, "悬赏令", 219 )

	MisBeginTalk( "<t>据我所知，这伙山贼的首领是一个叫做<r“蝰蛇”>的家伙，这是个非常残忍狡猾的坏蛋，总是躲在暗处。<n><t>找到（1052,3037）附近的山贼的大本营去大闹一番，一定能够引出这个家伙的，然后，打倒他！" )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--山贼首领·蝰蛇
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>很好，打倒了山贼的首领，这群山贼就不足为虑了，你的勇敢和智慧真是令我钦佩！")
	MisHelpTalk("<t>你在害怕吗？没关系，较上你的朋友们，一起去战斗吧！")
	MisResultCondition(HasMission, 219)
	MisResultCondition(HasFlag, 219, 10 )
	MisResultAction(ClearMission, 219)
	MisResultAction(SetRecord, 219 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,10000,10000)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )	
	TriggerAction( 1, AddNextFlag, 219, 10, 1 )
	RegCurTrigger( 2191 )

----------------------------去沙漠
	DefineMission( 230, "去沙漠", 220 )
	
	MisBeginTalk( "<t>我再次接到了<b斯科特>先生的信件，拿着这封<y首席秘书的信>，去远在魔女之海的沙岚城的（898,3640）找睿智的沙族<b氏族长·李>，向他了解更多的关于变异生物的事情吧。" )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "去沙岚城找氏族长（898,3640）聊聊")
	
	MisHelpTalk("<t>虽然我也很希望你能留在这里帮我，但是，你真的该走了，后会有期！")
	MisResultCondition(AlwaysFailure )

-----------------------------------去沙漠
	DefineMission( 231, "去沙漠", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦，欢迎你，远道而来的客人，斯科特先生信上说派你来是为了了解变异生物的事情的，相信这也是卡拉女神的旨意，我一定会尽量帮助你的。")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,1100,1100)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------变异的原因
	DefineMission( 232, "变异的原因", 221 )
	
	MisBeginTalk( "<t>听说我们这座城市的港口附近有一只会说话的羊，好像叫什么<b小羊·威利>，虽然我没见过，不过估计就是所谓的变异生物吧。<n><t>这样吧，你先去看看，然后再来找我，那只奇怪的羊好象在（898,3683）附近" )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "找小羊·威利（898,3683）谈谈，然后回去找氏族长·阿布多罗.李（898,3640）")
	
	MisResultTalk("<t>噢！你已经和小羊威利谈过了，呵呵，它可是我们沙岚城制定旅游项目哦！")
	MisHelpTalk("<t>你和<b小羊·威利>聊过了吗？放心，它会说话。")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------变异的原因
	DefineMission( 233, "变异的原因", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>咩，你好，我就是小羊威利！<n><t>想知道我是怎么会说话的？<n><t>好吧，那还是在很久以前，有一天我去海边散步，你知道，羊也是有格调的，咩！<n><t>记得好像是看到一个圆圆的像蛋一样的东西，被海浪冲到了岸边，看上去很可口美味的样子，于是我就吃了它！<n><t>看！我是多么的勇于尝试啊！结果，在一阵奇怪的酥麻感之后，我发现我忽然能够使用你们人类的语言了！<n><t>自从我会说话以后，好心的<b氏族长>给我在沙岚城里安排了一个家，下次你去见他时，别忘了替我向他问好，咩~")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------罗森的笔记本
	DefineMission( 234, "罗森的笔记本", 222 )
	
	MisBeginTalk( "<t>唔，自大海漂来的<y奇怪的蛋>啊……嗯，我记得我曾经在哪本文献中有过记载，让我想想……对了！<n><t>是<b海盗王罗森>的<y航海日记>！<n><t>我们沙岚城大图书馆里曾经保存有一本海盗王罗森早年的航海日记……不过很可惜，就在你来之前，大图书馆被抢劫了！<n><t>很多与航海有关的文献都被抢走了，罗森的航海日记也在里面……当然！<n><t>还有我们李氏家族的族谱！<n><t>关于这次抢劫，我们正在积极地调查，目前的负责人好像是<b巡逻兵·迈克>，他应该就在城外（958,3549），如果你能帮助他调查一下的话，也许还能找到哪本<y航海日记>。" )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "去向迈克（958,3549）了解一下抢劫事件的调查进度")
	
	MisHelpTalk("<t><b迈克>应该就在城门口，快去吧，记住还要找找我的族谱！")
	MisResultCondition(AlwaysFailure )

-----------------------------------罗森的笔记本
	DefineMission( 235, "罗森的笔记本", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>啊！你好，我就是迈克。<n><t>关于这桩抢劫案真是疑点重重啊！有谁会去抢图书馆啊？尤其是这样精心策划，神不知鬼不觉地行动，我觉得如果是去抢沙岚银行也会成功的！<n><t>可是这些家伙居然只是抢了几本书！真是太奇怪了！")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------线索
	DefineMission( 236, "线索", 223 )
	
	MisBeginTalk( "<t>根据我现在调查得到的线索来看，这件事肯定是有人联合城外那些危险的<r沙匪>们干的！<n><t>这是这片沙漠最有组织的一伙不法份子！<n><t>这样吧，我这里正好认识一个奇怪的沙匪，他自称<b闪光侠八世>，似乎对他们现任的首领不满，他就在<p巴布补给站>西北方的<p混乱绿洲>里的（1080,3086），去向他了解一下吧。" )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "找到闪光侠八世（1080,3086）询问其详情")
	
	MisHelpTalk("<t>放心，这个<b闪光侠八世>不像其他沙匪，一般不会对你出手的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------线索
	DefineMission( 237, "线索", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哟！你居然能找到我！真不简单啊！<n><t>我猜是为了那个沙岚城里的图书馆的事吧，呵呵，与我无关哦，真的!我看你还是算了吧，你调查这件事有什么好处呢？再说，我可是个沙匪哦！<n><t>你不怕我干掉你？")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,600,600)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------内奸
	DefineMission( 238, "内奸", 224 )

	MisBeginTalk( "<t>好吧好吧，看你这么有诚意的样子，我就告诉你吧，我确实是知道一点抢劫的秘密。<n><t>不过……我也不能白白告诉你啊，我也要有点好处是不是？<n><t>其实我现在很苦恼一件事，就是那些傻瓜沙匪们都不相信我，我在他们之中很没有威信啊！<n><t>这是多没面子的事啊，如果你能帮我成为这些家伙的领袖的话，那我就将我知道的告诉你！<n><t>现在，你第一步要做的是证明你有这个实力为我办事，去打败10个<r沙匪>和5个<r沙骑士>，办得到的话，再来找我吧。" )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--沙匪
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--沙骑士
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>唷唷，我果然没看错你，你确认有这个实力，几个沙匪对你来说，根本不是什么障碍！")
	MisHelpTalk("<t>看来你不行哦，我倒是很想将秘密透露给你，要知道，一个人有太多秘密不能告诉被人知道的时候，也会憋得很难受的。")
	MisResultCondition(HasMission, 224)
	MisResultCondition(HasFlag, 224, 19 )
	MisResultCondition(HasFlag, 224, 24 )
	MisResultAction(ClearMission, 224)
	MisResultAction(SetRecord, 224 )
	MisResultAction(AddExp,1400,1400)
	MisResultAction(AddMoney,2550,2550)	
	MisResultAction(AddExpAndType,2,5000,5000)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 224, 10, 10 )
	RegCurTrigger( 2241 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 224, 20, 5 )
	RegCurTrigger( 2242 )

-------------------------------------------------战斗的沙漠
	DefineMission( 239, "战斗的沙漠", 225 )

	MisBeginTalk( "<t>你知道，我们这群沙匪，有个首领，人们都叫他<r绞刑>，这个家伙只是个嗜血好杀的白痴！<n><t>对我给他的很多很好的建议都当作耳边风，他根本就不信任我，既然这样，我看我只有取代他成为新的沙匪首领了，但是，我真的打不过他，毕竟，他的肌肉比他的大脑发达多了！<n><t>现在，我希望你替我去打败他！<n><t>并将他身上的<y沙漠王者之证>拿来给我，要找<r沙匪首领·绞刑>的话，从这里一直向北走，很快就能找到他的营地。<n><t>之后，我得到了我想要的，你也会知道你想知道的。" )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--沙漠王者之证
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>哈哈哈，哈哈哈，现在，你知道我是谁了吗？我就是统治这片沙漠上实力最强的沙匪的首领！哈哈哈！")
	MisHelpTalk("<t>怎么，你还没有动手吗？快去吧，我在这里等着你呢！")
	MisResultCondition(HasMission, 225 )
	MisResultCondition(HasItem, 3979, 1 )
	MisResultAction(TakeItem, 3979, 1 )
	MisResultAction(ClearMission, 225 )
	MisResultAction(SetRecord, 225 )
	MisResultAction(AddExp,669,669)
	MisResultAction(AddMoney,1275,1275)	
	MisResultAction(AddExpAndType,2,5000,5000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3979 )	
	TriggerAction( 1, AddNextFlag, 225, 10, 1 )
	RegCurTrigger( 2251 )

----------------------------真相
	DefineMission( 240, "真相", 226 )
	
	MisBeginTalk( "<t>我这个人还是说话算话的，既然你帮助我成为了沙匪的领袖，那么我就告诉你关于抢劫图书馆的事。<n><t>其实整件事就是我们沙匪和潜伏在沙岚城里的海盗合伙干的！<n><t>你也许不知道，在沙岚城附近的海域，有一支非常有名的海盗团，叫做<r“杰克海盗团”>，他们想要得到<b海盗王罗森>的航海日记，查看里面是否有罗森的宝藏的秘密。<n><t>现在这些文献已经被海盗团的成员带走了，你可以去告诉那个调查此事的迈克，告诉他，这件事就是我<b闪光侠>做的，有本事就来找我吧！" )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "将事情的真相告诉迈克（958,3549）")
	
	MisHelpTalk("<t>我已经把我知道的都告诉你了，我已经没有什么可以帮你的了。")
	MisResultCondition(AlwaysFailure )

-----------------------------------真相
	DefineMission( 241, "真相", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>唉，原来事情果然是<b闪光侠>做的，真糟糕。<n><t>而且现在他已经是沙匪的首领了，我更拿他没办法了，不过这样也能给氏族长大人一个交待了，还是得谢谢你的协助的。")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2650,2650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------海盗的消息
	DefineMission( 242, "海盗的消息", 227 )
	
	MisBeginTalk( "<t>虽然我拿那个<b闪光侠>没办法，但是还是可以调查一下海盗团的事情的，不过我现在必须先去向氏族长大人汇报……<n><t>这样吧，你可以去沙岚城港口附近找（867,3660）的<b港卫队员·鹧鸪草>问问，记得他比较了解附近出没的海盗团的消息。" )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "去找鹧鸪草（867,3660）谈谈")
	
	MisHelpTalk("<t>要找<b港卫队员·鹧鸪草>，你可以到沙岚城港口附近去看看。")
	MisResultCondition(AlwaysFailure )

-----------------------------------海盗的消息
	DefineMission( 243, "海盗的消息", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>想知道海盗团的消息，嗯，你算是找对人了，我确实知道很多喔。<n><t>比如<b海盗王罗森>的海盗团的传奇故事，总是和雷霆堡过不去的<b樱花海盗团>的事情，还有我们这里有名的<r杰克海盗团>的事，甚至是遥远的冰狼堡那里的<b北方海盗团>的事，我都知道！想知道什么就尽管问吧！")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,749,749)
	MisResultAction(AddMoney,1333,1333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------杰克海盗团
	DefineMission( 244, "杰克海盗团", 228 )
	
	MisBeginTalk( "<t>哦，原来你想知道那个<r杰克海盗团>的事啊，没错，前段时间开始，这伙海盗团的成员就频繁的出现在城里，但是因为他们并没有惹事生非，所以我们岗位队也没有拿他们怎样，倒是听说他们最近还经常出现在南部沙漠里，这就比较奇怪了。<n><t>到底沙漠还是沙匪们的地盘啊！<n><t>难道他们打算改行做山贼了吗？哈哈哈哈……<n><t>沙漠里的事，可能要找（1118,3611）附近的神奇的指引者<b梅利西亚·猫眼>问问，她总是神奇的知道一些秘密，谣传她还是雷霆堡和沙岚城之间的秘密使者，去问问看吧，出城后，沿着海岸向东，在一艘沉船附近你就能看到她。" )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "找猫眼（1118,3611）聊聊")
	
	MisHelpTalk("去吧，沿着海岸向东，在一艘沉船附近你就能找到<b梅利西亚·猫眼>（1118,3611）。")
	MisResultCondition(AlwaysFailure )

-----------------------------------黑杰克海盗团
	DefineMission( 245, "杰克海盗团", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你想要知道<r杰克海盗团>的事啊？嗯，这个海盗团也是我最近比较关注的，他们的活动有些过于频繁了，让人担心会有什么事即将发生。")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,1700,1700)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------费克船长
	DefineMission( 246, "费克船长", 229 )

	MisBeginTalk( "<t>虽然我很想帮你，但是这支海盗团行事很诡秘，总是让人无法准确探知他们的意图。<n><t>我曾经见过他们的首领<r费克船长>，看他的样子完全是个粗鲁无知的自大狂，我估计在他背后一定还有一个我们不知道的指使者。<n><t>见过费克船长的人都说他总是随身带着一个神秘的<y小包>，而且总是保管的很严密，如果你有办法把<y费克的小包>弄到手的话，一定可以让我看出些蛛丝马迹。<n><t>沿着这条海岸线一直向东去，你一定能够找到他的。" )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--费克的小包
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>这个就是<r费克船长>随身携带的小包吗？太好了，谢谢你。<n><t>现在让我来检查一下，看看有什么有用的东西。")
	MisHelpTalk("<t>怎么，没有找到<r费克船长>吗？只要沿着海岸线走，一定能够看见的。")
	MisResultCondition(HasMission, 229 )
	MisResultCondition(HasItem, 3980, 1 )
	MisResultAction(TakeItem, 3980, 1 )
	MisResultAction(ClearMission, 229 )
	MisResultAction(SetRecord, 229 )
	MisResultAction(AddExp,4680,4680)
	MisResultAction(AddMoney,7075,7075)	
	MisResultAction(AddExpAndType,2,5000,5000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3980 )	
	TriggerAction( 1, AddNextFlag, 229, 10, 1 )
	RegCurTrigger( 2291 )

----------------------------寻找收信人
	DefineMission( 247, "寻找收信人", 230 )
	
	MisBeginTalk( "<t>我已经检查过费克的小包了，最令我在意的是这封标明收件人“J”的信，这封信里<r费克船长>使用了很多敬语，并将<r杰克海盗团>最近的一些活动的情况详细汇报给了这个<r代号“J”>的人，我几乎已经可以肯定，这个代号“J”的人才是<r杰克海盗团>真正的首领。<n><t>但是现在没人知道他是谁？<n><t>我有一个主意，首先让我们把这封信封好，然后，希望你能带着这份<y“捡到的”信>去大陆上转转，虽然希望渺茫，但说不定真的可以找到那个代号“J”的神秘人哦！" )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "找到收信人代号“J”")
	
	MisHelpTalk("<t>虽然这个要求有点过分，但是我相信，你是个感觉敏锐的人，听从自己的直觉，你一定能够找到那个收件人的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻找收信人
	DefineMission( 248, "寻找收信人", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>咦？你是怎么得到这封信的？捡来的？！<n><t>我就是那个“J”啦！<n><t>为什么我是“J”，这个……一时也解释不清啦……你实在想知道的话，我可以让我手下那些沙匪和你谈谈……哦？你现在不想知道了，很好很好，哈哈哈。<n><t>对了，虽然这封信并不是很重要，但是我还是要问一下，你没拆开来看过吧，毕竟，这是我的私人信件……没看过？太好了，我也是这样想的，谢谢你的热心咯。")
	MisResultCondition(NoRecord, 230 )
	MisResultCondition(HasMission, 230 )
	MisResultCondition(HasItem, 3981, 1 )
	MisResultAction(TakeItem, 3981, 1 )
	MisResultAction(ClearMission, 230 )
	MisResultAction(SetRecord, 230 )
	MisResultAction(ObligeAcceptMission, 5 )
	MisResultAction(AddExp,936,936)
	MisResultAction(AddMoney,1415,1415)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------汇报收信人
	DefineMission( 249, "汇报收信人", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>真是想不到，原来收信人会是<b闪光侠八世>，这个人总是出现在各种事件里，看来我得重视起来了，虽然我还没见过这个人，但是已经听说了很多他的传闻。")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------去北方
	DefineMission( 250, "去北方", 232 )
	
	MisBeginTalk( "<t>既然这样，有关海盗的事情就先交给我处理吧，听说你受白银城斯克特先生的指派在调查关于生物变异的事件，也许我可以给你一些小小的帮助。<n><t>你去过冰狼堡吗？那是个终年积雪的地方，最近好像也是麻烦不断。<n><t>尤其是不久前大量的不死生物不知为何攻击了那里，现在整个城市都沦为了一片废墟，贵族们居住的冰狼堡上城甚至完全沦陷了。<n><t>如果你不惧怕危险的话，去冰狼堡（1365,570）找一个叫做<b雷欧>的剑士，也许可以令你的调查有所进展吧。" )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "去北方找雷欧（1365,570）继续调查有关生物变异的事情")
	
	MisHelpTalk("<t>快去吧，快去把，时间不等人。")
	MisResultCondition(AlwaysFailure )

-----------------------------------去北方
	DefineMission( 251, "去北方", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>对不起，我没有什么可以帮助你的，冰狼堡现在本身就陷入了建城以来最大的危机之中，我没有什么闲工夫来跟你讨论那些生物的变异问题！<n><t>我也不认为调查这些事能够改变冰狼堡的现状。")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------冰狼堡的危机
	DefineMission( 252, "冰狼堡的危机", 233 )
	
	MisBeginTalk( "<t>唉，我为我之前对待你这位远道而来的客人的态度表示歉意，最近我的神经是在是有些紧张过头了。<n><t>等这次的事件忙完了，我一定要到一个没有雪的地方去好好度个假……<n><t>对不起，我现在的头脑好像有点不够清醒，也许很难向你解释目前的状况，你还是去找我们的领导者<b马尔修斯>大人谈谈吧，他是唯一留下来和我们同甘共苦的贵族,他在（1346,451）那儿。" )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "请去冰狼堡贵族·马尔修斯（1346,451）询问关于冰狼堡的危机的事")
	
	MisHelpTalk("<t><b马尔修斯>大人很平易近人的，去找他吧，我现在想要休息一下，但是却还要守在这里。")
	MisResultCondition(AlwaysFailure )

-----------------------------------去北方
	DefineMission( 253, "冰狼堡的危机", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>非常欢迎你，远来的客人，请原谅我无法拿出什么好东西来款待你，要知道，现在的冰狼堡可以说是处在一个生死存亡的关键时刻！<n><t>我们曾经富丽堂皇的上城已经被那些可怕的生物给侵占，甚至还有大量的不死生物混杂在那里！<n><t>尽管如此，我们还是会坚持下去，相信有一天我们一定会夺回我们的家园的！")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------补给
	DefineMission( 254, "补给", 234 )
	
	MisBeginTalk( "<t>但是现在有些麻烦事使我们的处境变得更加艰苦了，之前有一批来自雷霆堡的援助物资在路上遭到袭击，因此没有送达，没想到之后来自白银城的补给物资也被袭击了，现在我们唯一的希望就寄托在最后一批来自沙岚城的补给物资了……可是，到现在这批物资都没有送达。<n><t>如果可以的话，请你替我去城外找（1237,613）的<b巡逻兵·小莫>问问，我派他去迎接补给队了。" )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "找小莫（1237,613）聊聊有关补给的事情")
	
	MisHelpTalk("<t>你有问过<b巡逻兵·小莫〉了吗？拜托了！")
	MisResultCondition(AlwaysFailure )

-----------------------------------补给
	DefineMission( 255, "补给", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b马尔修斯>大人派你来的吗？很抱歉，我到现在还没有看到补给队，我担心这最后一支补给队也遇上了麻烦了！")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------寻找补给队
	DefineMission( 256, "寻找补给队", 235 )
	
	MisBeginTalk( "<t>我不确定补给队会不会真的遇上了麻烦，如果可能，我会到西面（1028,649）的<p阿兰比斯补给站>去察看一下，但是我又担心会错过了补给队。<n><t>所以，你能不能替我到那里去察看一下呢？如果你遇到沙岚城补给队的话，不要忘了告诉补给队长<b奎赛斯·狂沙>，我们都在期待着他。" )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "找到补给队长奎赛斯·狂沙（1028,649）了解情况")
	
	MisHelpTalk("<t>希望你能够找到补给队，记住，从这向西，略向南一点，<p阿兰比斯补给站>就在那边。")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻找补给队
	DefineMission( 257, "寻找补给队", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>完了……全完了……我的补给队全军覆没了……")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------补给品夺回
	DefineMission( 258, "补给品夺回", 236 )

	MisBeginTalk( "<t>我们的补给队眼看就要到达阿兰比斯补给站时，忽然被大量的雪人包围了，在我们还没有搞清楚怎么回事之前，那些无比高大的凶猛怪物就嘶吼着冲到了我们的队伍面前。<n><t>令人惊讶的是，这些强壮的怪物是如此的聪明，其中的一部分故意吸引我们的注意力，补给品却被忽然出现的另一队雪人抢走了！<n><t>我们一直追着它们向南跑，在快要看到海岸线的时候，忽然出现了一只更加巨大恐怖的雪人！<n><t>很快我们就被打散了，我也是好不容易才逃回了补给站……<n><t>虽然没有什么希望了，但是如果可能的话，你可以替我找回<y被抢的补给品>吗？" )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--被抢的补给品
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>天啊！你是怎么办到的？！这些补给品都被你夺回来了！太好了！太好了！")
	MisHelpTalk("<t>如果你一直向南去，你一定会遇到那些可怕的<r雪人>的！记住！如果打不过的话，就跑吧！")
	MisResultCondition(HasMission, 236 )
	MisResultCondition(HasItem, 3982, 15 )
	MisResultAction(TakeItem, 3982, 15 )
	MisResultAction(ClearMission, 236 )
	MisResultAction(SetRecord, 236 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3982 )	
	TriggerAction( 1, AddNextFlag, 236, 10, 15 )
	RegCurTrigger( 2361 )


----------------------------护送补给品
	DefineMission( 259, "护送补给品", 237 )
	
	MisBeginTalk( "<t>既然是你把这些补给品夺回来的，那么不如就请你好事做到底，帮我把这些<y夺回的补给品>送到冰狼堡那里吧，记得交接人是（1365,570）的<b剑士·雷欧>。" )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "将补给品护送到冰狼堡，交给剑士·雷欧（1365,570）")
	
	MisHelpTalk("<t>快点出发吧，冰狼堡的居民们应该正等着这些补给品呢。")
	MisResultCondition(AlwaysFailure )

-----------------------------------护送补给品
	DefineMission( 260, "护送补给品", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>这真是天大的好消息啊！补给品终于运来了！<n><t>真是这些天来最让我开心地事情了！我真不知道该如何感谢你啊！")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,2300,2300)
	MisResultAction(AddMoney,2900,2900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------事件调查
	DefineMission( 261, "事件调查", 238 )
	
	MisBeginTalk( "<t>听你这么一说，想不到事情真的和变异的生物有些关系。<n><t>我记得冰原上（1141,575）那儿有个研究员叫做<b艾伦娜>，她对雪原上的生物最有研究，沿着通往阿兰比斯补给站的大路走，很快拟就能找到她的。" )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "找艾伦娜（1141,575）了解雪原生物的情况")
	
	MisHelpTalk("<b艾伦娜>就在通往阿兰比斯补给站的路上。")
	MisResultCondition(AlwaysFailure )

-----------------------------------事件调查
	DefineMission( 262, "事件调查", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>说起最近这段时期的雪原生物，确实有些诡异，它们的智力似乎变得越来越高了，但是相对的，它们也变得越来越不安分了，如果你可以帮助我，我想我可以进行更进一步的调查和研究。")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------雪原生物
	DefineMission( 263, "雪原生物", 239 )

	MisBeginTalk( "<t>在这片冰原大陆上，除了（1495,667）附近的雪人，还有几种比较典型的生灵，还有（1746,530）附近的<b调皮雪娃娃>和（873,646）附近的<b雪女>，然而它们现在也已经不像过去那样好相处了，也许某种影响了雪人的事物也正在逐渐影响其它的生物。<n><t>现在我去要你帮助我取得一些必要的研究物，分别是5个<y雪娃娃的记忆石>、5个<y雪女的记忆石>和5个<y雪人的记忆石>。<n><t>研究这些记忆石可以让我了解到这些生物最近有什么不寻常的经历。" )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--雪娃娃的记忆石
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--雪女的记忆石
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--雪人的记忆石
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>这些就是我需要的全部研究材料了，让我看看……噢！<n><t>这是多么奇怪的现象啊，这些记忆石是我从没见过的……")
	MisHelpTalk("<t>你收集到足够的记忆石了吗？赶快去吧，我想你一定能办到的。")
	MisResultCondition(HasMission, 239 )
	MisResultCondition(HasItem, 3984, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultAction(TakeItem, 3984, 5 )
	MisResultAction(TakeItem, 4069, 5 )
	MisResultAction(TakeItem, 4070, 5 )
	MisResultAction(ClearMission, 239 )
	MisResultAction(SetRecord, 239 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3000,3000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3984 )	
	TriggerAction( 1, AddNextFlag, 239, 10, 5 )
	RegCurTrigger( 2391 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4069 )	
	TriggerAction( 1, AddNextFlag, 239, 20, 5 )
	RegCurTrigger( 2392 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4070 )	
	TriggerAction( 1, AddNextFlag, 239, 30, 5 )
	RegCurTrigger( 2393 )

-------------------------------------------------寻找雪人王
	DefineMission( 264, "寻找雪人王", 240 )

	MisBeginTalk( "<t>我对这些记忆石进行了分析，种种迹象表明，主要还是雪人受到了比较大的影响，而其他生物只是因为雪人的变化而感到不安罢了，关键是那些雪人，它们变得比以前有组织性了，这说明，它们有一个首领，去找到它们的首领，看看它到底是什么样。<n><t>当然，我可以肯定这个<r雪人王>一定会比普通的雪人更强壮、危险，但是，如果能够得到<y雪人王的记忆石>，那一定可以告诉我更多的信息。" )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--雪娃娃的记忆石
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t>哇！这就是雪人王的记忆石！果真是和其他的记忆石很不一样，让我好好看看，我真是迫不及待了。")
	MisHelpTalk("<t>不可否认，<r雪人王>一定是十分危险的生物，但是，我也完全相信你的能力，我相信你一定能够打败它的！")
	MisResultCondition(HasMission, 240 )
	MisResultCondition(HasItem, 4071, 1 )
	MisResultAction(TakeItem, 4071, 1 )
	MisResultAction(ClearMission, 240 )
	MisResultAction(SetRecord, 240 )
	MisResultAction(AddExp,16000,16000)
	MisResultAction(AddMoney,16000,16000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4071 )	
	TriggerAction( 1, AddNextFlag, 240, 10, 1 )
	RegCurTrigger( 2401 )

----------------------------白银城的智者
	DefineMission( 265, "白银城的智者", 241 )
	
	MisBeginTalk( "<t>我仔细的研究这个<y雪人王的记忆石>，我能够断定，原本它只是一只极其普通的雪人，不知道它吃了什么奇怪的食物，令它产生了所谓的突变，可以说，它已经不是雪人了，从体格到智力，它都远远的高与其他的雪人，所以才会成为雪人之王的。<n><t>另外有一点可以肯定的是，这种使雪人变异的食物，绝对不是产自本地，而你之前的调查也显示，除了冰原大陆，加纳大陆以及魔女之海的沙岚城都有类似的事件发生。<n><t>记得早年我的导师<b糊涂山人>曾经对我提起过，有种神奇的海洋宝藏还是某种蛋什么的东西，吃了的人就会得到神奇的力量，但当时我只当是某种神化传说而已，所以根本没放在心上。<n><t>现在看起来，一定是真有这种传说中的食物存在了。<n><t>我的导师就住在<p白银城>内的（2272,2700），如果你想要继续调查的话，那么不如去请教他吧。" )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "与糊糊涂山人（2272,2700）谈谈有关雪人的事情")
	
	MisHelpTalk("<t><b糊涂山人>就住在白银城，虽然是个古怪的老头，但只要你能够讨他的喜欢，他就一定会尽力帮助你的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------白银城的智者
	DefineMission( 266, "白银城的智者", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>嗯……啥，糊涂山人……我不认识啊……他是个很英俊的老头子吗？我想一定是的。")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------糊涂山人
	DefineMission( 267, "糊涂山人", 242 )

	MisBeginTalk( "<t>什么神奇的食物？我没听说过啊……是我自己说的？……没印象哦……<n><t>唉，如果现在有一瓶白银酒吧的小姑娘<b蒂娜>酿制的<y山珍八宝酒>的话，嘿嘿……也许我还能记起来一些皮皮毛毛的。" )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--雪娃娃的记忆石
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>啊~好香的酒味啊，果然还是蒂娜酿制的这酒最对我的胃口！好！好！")
	MisHelpTalk("<t>你给我带酒来了吗？是<y山珍八宝酒>哦！")
	MisResultCondition(HasMission, 242 )
	MisResultCondition(HasItem, 4072, 1 )
	MisResultAction(TakeItem, 4072, 1 )
	MisResultAction(ClearMission, 242 )
	MisResultAction(SetRecord, 242 )
	MisResultAction(AddExp,7000,7000)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,9035,9035)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4072 )	
	TriggerAction( 1, AddNextFlag, 242, 10, 1 )
	RegCurTrigger( 2421 )

-----------------------------------糊涂山人
	DefineMission( 268, "糊涂山人", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>需要要我酿酒可以，但需要的材料必须你自己备齐哦。")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------山珍八宝酒
	DefineMission( 269, "山珍八宝酒", 243 )

	MisBeginTalk( "<t>做<y山珍八宝酒>的基本材料有四样：在（969,2587）附近的<r恐龟>活动区域找到<y恐龟蛋>2个；从（910,2971）附近的<r野猪>那得到<y野猪的腱子肉>2份；从（1414,2896）的<r曼陀罗>那里得到<y曼陀罗的藤蔓>2根；在（1900,2643）的矿硐里找到<r吸血蝙蝠>搞到<y矿物的结晶粉末>2份怎么样，很简单吧，找齐这些再来找我吧。" )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--恐龟蛋
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--野猪的腱子肉
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--曼陀罗的藤蔓
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--矿物的结晶粉末
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t>真没想到，你真的能将这些材料全部搞到手了！<n><t>不过，这些只是基本原料，想要酿出好酒可没这么简单。")
	MisHelpTalk("<t>怎么了，材料收集不到那，那我就无能为力了。")
	MisResultCondition(HasMission, 243 )
	MisResultCondition(HasItem, 4073, 2 )
	MisResultCondition(HasItem, 4074, 2 )
	MisResultCondition(HasItem, 4075, 2 )
	MisResultCondition(HasItem, 4076, 2 )
	MisResultAction(TakeItem, 4073, 2 )
	MisResultAction(TakeItem, 4074, 2 )
	MisResultAction(TakeItem, 4075, 2 )
	MisResultAction(TakeItem, 4076, 2 )
	MisResultAction(ClearMission, 243 )
	MisResultAction(SetRecord, 243 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)
	MisResultAction(AddExpAndType,2,9035,9035)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4073 )	
	TriggerAction( 1, AddNextFlag, 243, 10, 2 )
	RegCurTrigger( 2431 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4074 )	
	TriggerAction( 1, AddNextFlag, 243, 12, 2 )
	RegCurTrigger( 2432 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4075 )	
	TriggerAction( 1, AddNextFlag, 243, 14, 2 )
	RegCurTrigger( 2433 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4076 )	
	TriggerAction( 1, AddNextFlag, 243, 16, 2 )
	RegCurTrigger( 2434 )


----------------------------陈年旧事
	DefineMission( 270, "陈年旧事", 244 )
	
	MisBeginTalk( "<t>既然你那么有诚意，那么我就先透露一点点消息给你吧。<n><t>白银城<b商会会长>以前就曾经拥有过一枚传说中神奇的果实！<n><t>不信的话，你就去问问他！那家伙在（2241,2748）" )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "找商会会长（2241,2748）了解情况")
	
	MisHelpTalk("<t>好酒……好酒！")
	MisResultCondition(AlwaysFailure )

-----------------------------------陈年旧事
	DefineMission( 271, "陈年旧事", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你在说什么？这种陈芝麻烂谷子的事情谁还记得！什么，是那个糊涂老让你来问的！你回去告诉他，有问题让他自己来问！哼！")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "获得任务“询问未果”" )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------询问未果
	DefineMission( 272, "询问未果", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>哈哈哈哈，我倒忘了，这件事算是那个家伙最丢脸的事情了，他当然不愿提起了，不要紧不要紧，我们再想办法。")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------会长的把柄
	DefineMission( 273, "会长的把柄", 246 )
	
	MisBeginTalk( "<t>要<b商会会长>那个老顽固合作，我们还是要抓住他的把柄，嗯，有些事我也不方便说。<n><t>这样吧，你知道（2277,2831）海军少将·威尔斯吧，去和他谈谈，一定对你很有帮助。" )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "找海军少将（2277,2831）聊聊")
	
	MisHelpTalk("<t>去吧去吧，别妨碍我品酒。")
	MisResultCondition(AlwaysFailure )

-----------------------------------会长的把柄
	DefineMission( 274, "会长的把柄", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哈哈哈哈，那个坏老头，不但自己得罪人，还要拖我下水，好家伙！<n><t>不过调查的任务是首席秘书给的，你又帮过我大忙，咳……咳，我一定配合！")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------废矿探索
	DefineMission( 275, "废矿探索", 247 )

	MisBeginTalk( "<t>我就给你一个提示吧……从白银城西门出去，一直向西走，很快就能找到一座银矿，绕着银矿走，你会发现有一个被废弃的矿硐入口，那就是很多年前被封掉的废矿。<n><t>那里有种奇怪的生物叫做<r泥浆怪>，它们什么都吃，但是似乎消化系统又不怎么好，尤其是白银商会印制的某种纸片，更是很难消化的，去那里找到那些<y破旧的纸片>回来，我一定让你抓到商会会长的把柄。" )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--破旧的纸片
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>对！这些纸片就是我要你去找的。<n><t>现在我们把这些纸片粘起来，看看上面到底写了些什么，哈哈。")
	MisHelpTalk("<t>怎么还没去啊，记住，那些<y破旧的纸片>一定还在<r泥浆怪>的肚子里。")
	MisResultCondition(HasMission, 247 )
	MisResultCondition(HasItem, 4081, 10 )
	MisResultAction(TakeItem, 4081, 10 )
	MisResultAction(ClearMission, 247 )
	MisResultAction(SetRecord, 247 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4081 )	
	TriggerAction( 1, AddNextFlag, 247, 10, 10 )
	RegCurTrigger( 2471 )

----------------------------纸片的秘密
	DefineMission( 276, "纸片的秘密", 248 )
	
	MisBeginTalk( "<t>现在你也看到了，这些纸片，是一张<y古老的悬赏令>，看看发布人，就是<b商会会长>大人哦！<n><t>拿着它，去问问这张<y悬赏令>还能兑现吗？<n><t>我真想和你一起去看看，真不知道那家伙会是一个什么脸色……" )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "带着古老的悬赏令去找商会会长（2241,2748）")
	
	MisHelpTalk("<t>哈哈，我已经在想象那家伙的表情了，你快去吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------纸片的秘密
	DefineMission( 277, "纸片的秘密", 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你怎么又来了！啊！这张悬赏令你是哪来的？你……你到底想要知道什么？")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------逃跑的巨兽
	DefineMission( 278, "逃跑的巨兽", 249 )
	
	MisBeginTalk( "<t>好吧好吧，我就跟你说一下吧……当年，我远航到遥远的秋之岛，在那里捕获了一只奇异的<r巨兽>，后来又从一个神秘的商人那里买到了所谓中的神奇食物。<n><t>当时我为了避人耳目，将装有神奇食物的箱子随便的放在了关巨兽的笼子旁，甚至都没有看过那个宝物到底是什么样的……没想到的是，当我的船队抵达白银港开始卸货时，那个箱子被打翻了，在有人注意到之前，那个该死的巨兽竟然……竟然将价值连城的传奇食物给吃了！<n><t>然后，在我们发现之前，它居然聪明的逃走了！<n><t>最后，它躲到了城外西面的银矿里，甚至攻击了那里的矿工们！<n><t>我不得不发出悬赏令，希望有人能够抓住这个家伙，可是竟然没有一个人做的到！<n><t>这件事，你也可以去问问城门口的（2192,2767）<b比特>，当年他也参加了追捕那只巨兽的行动，一定也记得的。" )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "找比特（2192,2767）了解巨兽的情况")
	
	MisHelpTalk("<t><b比特>就在白银城西门附近，他块头很大，很好认的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------逃跑的巨兽
	DefineMission( 279, "逃跑的巨兽", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哇，你是问废矿里的那只可怕的巨兽吗？那个家伙可是很危险的！而且还很聪明呢！<n><t>记得当年我们去围剿它时，找来找去都找不到它！老是被他骗得团团转！")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------古老的悬赏令
	DefineMission( 280, "古老的悬赏令", 250 )

	MisBeginTalk( "<t>既然你找到了这张悬赏令，那么我也不会食言，这张悬赏依然有效，只要你能干掉废矿里的<r巨兽>，拿它身上的<y镣铐>来，我一定兑现奖金！<n><t>不过……我看你也没有这个本事吧！" )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--镣铐x1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)

	MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>天啊！真是不得了！你竟然真的打倒了那只怪兽！<n><t>……好吧好吧，我会兑现我的诺言的，虽然心疼……但是请拿好，这是你的奖赏！")
	MisHelpTalk("<t>怎么了，不敢去吗？哈哈，我的钱可不是那么好赚的哦！")
	MisResultCondition(HasMission, 250 )
	MisResultCondition(HasItem, 4083, 1 )
	MisResultCondition(HasItem, 4082, 1 )
	MisResultAction(TakeItem, 4083, 1 )
	MisResultAction(TakeItem, 4082, 1 )
	MisResultAction(ClearMission, 250 )
	MisResultAction(SetRecord, 250 )
	MisResultAction(AddExp,13245,13245)
	MisResultAction(AddExpAndType,2,9035,9035)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4083 )	
	TriggerAction( 1, AddNextFlag, 250, 10, 1 )
	RegCurTrigger( 2501 )

----------------------------可怕的怪物
	DefineMission( 281, "可怕的怪物", 251 )
	
	MisBeginTalk( "<t>说起来也很奇怪，这个怪兽似乎很喜欢<b老奶奶·贝蒂>做的<y秘制糕点>，当时我们中有许多人都是在吃<y秘制糕点>时受到了它的攻击，不但受了重伤，而且连身上的<y秘制糕点>也被抢走了……呃……我也一样……" )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "找老奶奶贝蒂（2277,2769）聊聊")
	
	MisHelpTalk("<t>一提起贝蒂奶奶的糕点，我的肚子就开始叫了，要不是我还有工作，真想马上就去拜访一下她老人家呢。")
	MisResultCondition(AlwaysFailure )

-----------------------------------可怕的怪物
	DefineMission( 282, "可怕的怪物", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>说起来，我做的糕点还真是受欢迎呢，所有的人都喜欢吃，所以我常常做很多的。<n><t>看着大家幸福的品尝我的糕点，我就觉得到了这把年纪我还是有用的哟，对了对了，听说连那只躲在废矿里的可怜怪物也很喜欢我的糕点呢！")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------老奶奶的糕点
	DefineMission( 283, "老奶奶的糕点", 252 )
	
	MisBeginTalk( "<t>哎呀，今天就很可惜了，因为银矿那里的小伙子<b矿工大肚腩>刚来过，把我今天做的糕点都拿走了，所以你今天是没办法尝到我的手艺了。<n><t>不过那个大肚腩的胃口虽然好，但他带了那么多，一定不可能马上吃完的，如果你去银矿找他的话，说不定还赶得上。" )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "找矿工大肚腩（296,57）谈谈")
	
	MisHelpTalk("<t>我做的糕点可是很好吃的喔，如果去晚了，说不定<b大肚腩>就吃完了。")
	MisResultCondition(AlwaysFailure )

-----------------------------------老奶奶的糕点
	DefineMission( 284, "老奶奶的糕点", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哎呀，你是来要贝蒂奶奶做得糕点的？太可惜了，已经没有了……连我都没有吃到几个呢……")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------被夺走的便当
	DefineMission( 285, "被夺走的便当", 253 )

	MisBeginTalk( "<t>今天本来真是个开心的日子，贝蒂奶奶松了我那么多秘制糕点，我带着装这些可爱的草莓饼的便当盒高高兴兴地来上班，谁知道，才一转眼的工夫，我的便当盒被偷了！<n><t>是一只<r忍者鼹鼠>！我看见了，可是它已经逃到废矿里去了，那个地方太恐怖了，我不敢去！<n><t>请你帮帮我吧，把我的便当盒夺回来！不然……我连干活的力气都没了……这种讨厌的家伙经常出没于（229,28）一带" )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --暂时不许重复接
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--便当x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>哇~你真是我的大恩人啊！<n><t>我的便当！我的便当！啊！你有没有觉得我复活了！这可太好了！<n><t>来！这个<y草莓饼干>给你！记住，千万别到<p废矿二层>去吃，特别是那里某个角落了，有个看上去像什么怪物的巢穴一样的地方，听说只要在那里吃好吃的糕点，就会被恐怖的怪物袭击的！！！")
	MisHelpTalk("<t>唉……你觉得我是不是变得有些瘦了？我真是太可怜了……我的便当啊……")
	MisResultCondition(HasMission, 253 )
	MisResultCondition(HasItem, 4084, 1 )
	MisResultAction(TakeItem, 4084, 1 )
	MisResultAction(ClearMission, 253 )
	MisResultAction(SetRecord, 253 )
	MisResultAction(ObligeAcceptMission, 4 )
	MisResultAction(AddTrigger, 109, TE_KILL, 99, 1 )
	--MisResultAction(AddTrigger, 108, TE_GAMETIME, TT_MULTITIME, 60, 1 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4084 )	
	TriggerAction( 1, AddNextFlag, 253, 10, 1 )
	RegCurTrigger( 2531 )
	InitTrigger()
	TriggerCondition( 1, NoMisssionFailure, 4 )
	TriggerCondition( 1, IsMonster, 99 )
	TriggerAction( 1, AddNextFlag, 4, 10, 1 )
	RegCurTrigger( 109 )
	--InitTrigger()
	--TriggerCondition( 1, NoFlag, 4, 10 )
	--TriggerAction( 1, SystemNotice, "任务时间计时已到，引诱巨兽任务失败！" )
	--TriggerAction( 1, SetMissionFailure, 4 )
	--RegCurTrigger( 108 )

-------------------------------------------------海上补给站
	DefineMission( 286, "海上补给站", 254 )

	MisBeginTalk( "<t>当年，我组建了一支强大的商船队，出航到秋岛冒险，在那里我们发现了一种奇异的生物，呃……就是废矿里的那个……我想把它带回白银城展览的话，一定又能给我带来不小的财富。<n><t>在回航的路上，我的船队经过一个小小的海上补给站，嗯，那个补给站好像叫作<pT9补给站>，在那里，我遇到一个人，他自称自己是<b安德鲁·波波>，职业是向导。<n><t>他向我兜售一样神秘的物品，介绍说那就是当年航海史上的传奇人物<b海盗王罗森>曾经食用和提起过的神奇食物，服用的人会拥有神奇的力量，具体的称呼他倒是没说，因为当时我也不是很相信他的话……不过当时我身上正好有多余的十万银币，所以就买了下来……<n><t>后来的事，你也已经知道了，所以如果你想要了解那些吃了以后会让生物产生变异的食物的事情，就必须找那个那个<b安德鲁·波波>，不过那也得你找到T9补给站，嘿嘿，对了，去<p白银码头>的（2243,2826）问问那里的海港指挥·雪莉问问吧。" )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "向海港指挥·雪莉（2243,2826）询问<pT9补给站>的位置。")

	MisHelpTalk("<t>我告诉你的，已经是很久以前的事了，我可不肯定那个<b安德鲁·波波>是不是还在<pT9海上补给站>那里。")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------山珍八宝酒
	DefineMission( 288, "山珍八宝酒", 255 )

	MisBeginTalk( "<t>酿造<y山珍八宝酒>还需要以下四种重要材料：从（1655,2563）附近的<r飞熊猫>那得到它收集的<y竹叶上的露珠>2份；从（1817,2472）附近的<r珍珠贝>那得到<y养颜的珍珠粉>2份；再从（1624,3017）附近的<r走私犯>那里搞到<y走私香料>2份，最后再从（1161,2639）附近的<r爆击袋鼠>那里弄到<y袋鼠的私酿>3份就好了，这些就是酿造的关键。" )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--竹叶上的露珠
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--养颜的珍珠粉
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--走私香料
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--袋鼠的私酿
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)

	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>真没想到，你真的能将这些材料全部搞到手了！<n><t>好吧，现在我就露一手给你看看，我的调酒功夫可是一流的哦！")
	MisHelpTalk("<t>怎么了，材料收集不到那，那我就无能为力了。")
	MisResultCondition(HasMission, 255 )
	MisResultCondition(HasItem, 4077, 2 )
	MisResultCondition(HasItem, 4078, 2 )
	MisResultCondition(HasItem, 4079, 2 )
	MisResultCondition(HasItem, 4080, 3 )
	MisResultAction(TakeItem, 4077, 2 )
	MisResultAction(TakeItem, 4078, 2 )
	MisResultAction(TakeItem, 4079, 2 )
	MisResultAction(TakeItem, 4080, 3 )
	MisResultAction(ClearMission, 255 )
	MisResultAction(SetRecord, 255 )
	MisResultAction(AddExp,1595,1595)
	MisResultAction(AddMoney,1538,1538)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4077 )	
	TriggerAction( 1, AddNextFlag, 255, 18, 2 )
	RegCurTrigger( 2551 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4078 )	
	TriggerAction( 1, AddNextFlag, 255, 20, 2 )
	RegCurTrigger( 2552 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4079 )	
	TriggerAction( 1, AddNextFlag, 255, 22, 2 )
	RegCurTrigger( 2553 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4080 )	
	TriggerAction( 1, AddNextFlag, 255, 24, 3 )
	RegCurTrigger( 2554 )

-----------------------------------海上补给站
	DefineMission( 289, "海上补给站", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>咦，T9补给站？我当海港指挥也好几年了，但是从来也没有听说过这个补给站……对不起，看来我是帮不到你了。")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------航线活地图
	DefineMission( 290, "航线活地图", 256 )

	MisBeginTalk( "<t>虽然我不知道，但也许别人会知道的。<n><t>据我所知大海上的补给站有好多曾经遭到过海盗的袭击而被摧毁，所以重建的时候往往会改名。<n><t>记得我在白银海事学院进修的时候，曾听老师说在<p穆穆尔补给站>上有一位被称为“<r航线活地图>”的海港指挥，名字好象叫……六……七……八！<n><t>对！就是叫做<b巴奥>！也许你可以到去找他问问，不过海上风险比较大，你可要有心理准备。<n><t>对了，我这里有那个补给站的坐标，应该是在魔女之海的（2024,2752）附近，其它的我也帮不上你了，祝你好运！" )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "向<p穆穆尔补给站>的<b海港指挥·巴奥>（2024,2752）询问<pT9补给站>的位置。")

	MisHelpTalk("<t>海上的风险总是很大的，要出海找人的话，最好有万全的准备。<n><t>船只要修理好，补给要充足，尤其要注意不要迷失方向，如果使用雷达的话就会比较方便，但千万记得不要选错大陆哦！")
	MisResultCondition(AlwaysFailure )

-----------------------------------航线活地图
	DefineMission( 291, "航线活地图", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>嗯？你是谁？你怎么知道T9补给站这个名字？我可不是什么随便的人，也不会随便就把一些重要信息告诉不可靠的人！")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------挑战水母
	DefineMission( 292, "挑战水母", 257 )

	MisBeginTalk( "<t>如果想要从我这里知道什么消息的话，当然也要有些表示对吧。<n><t>也许你不知道，当年我除了“航线活地图”的称号外，还有一个更响亮的绰号，就是“雁过拔毛”！<n><t>当然，你也不用太紧张，我也不会很为难你，不过我还真的一时想不起T9补给站到底在那里了。<n><t>也许是因为我最近老是在操心自己健康状况的关系。<n><t>嗯……每次我身体不适的时候，就会什么也吃不下，唯一想吃的，就只有用<y暴风水母晶体>制作的海鲜羹，这样吧，你给我搞15个来，那时也许我就想起来了。<n><t>那些水母很好找的，就在这个补给站附近，快去快回啊！" )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--竹叶上的露珠
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "给<p穆穆尔补给站>的巴奥（2024,2752）带回来15个<y暴风水母晶体>。")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>呦……你不错嘛，这么快就办到了！嗯，看来你是很想知道那个什么什么补给站啰……这就好这就好……")
	MisHelpTalk("<t>你很没诚意哦！这么久我还没有把我想要的东西拿来，告诉你，我的口风可是很严的！")
	MisResultCondition(HasMission, 257 )
	MisResultCondition(HasItem, 4140, 15 )
	MisResultAction(TakeItem, 4140, 15 )
	MisResultAction(ClearMission, 257 )
	MisResultAction(SetRecord, 257 )
	MisResultAction(AddExp,5848,5848)
	MisResultAction(AddMoney,3422,3422)	
	MisResultAction(AddExpAndType,2,26625,26625)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4140 )	
	TriggerAction( 1, AddNextFlag, 257, 10, 15 )
	RegCurTrigger( 2571 )

-------------------------------------------------跑船
	DefineMission( 293, "跑船", 258 )

	MisBeginTalk( "<t>看你这么有诚意，那我也不能对你太过分了，算了我就不刁难你了，只要你再替我办一件事，我就告诉将你想要知道的实情告诉你，怎么样，我还是很通情达理的吧！<n><t>看你不作声，一定就是同意了！这次要你办的事很简单哦，你看，我这里有批货，急需运到深蓝大陆的冰狼码头。<n><t>嘿嘿……远是远了点，不过，值得！对不对！<n><t>要不是我路不熟，也不会让你去的！" )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "将<y巴奥的货物>交给冰狼码头的<b海港指挥·席林>（1214,681）")

	MisHelpTalk("<t>喂喂！你怎么还没动身！你可是已经把货物都拿去了，可不能反悔哦！")
	MisResultCondition(AlwaysFailure )

-----------------------------------跑船
	DefineMission( 294, "跑船", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你是给巴奥送货的吧，来的可真慢啊，巴奥的已经让一艘邮政快船捎信来了，我可等了不少时间呢。<n><t>不会是路上遇到麻烦了吧，最近海上可不太平哦！<n><t>对了，我这还有封<y巴奥的信>要交给你，等一下你自己看。")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------孪生兄弟
	DefineMission( 295, "孪生兄弟", 259 )

	MisBeginTalk( "<t>可爱的年轻人<n><t>如果你看到了这封信，说明你真的很有诚意的帮我把货物送到了。<n><t>那么我要对你说：<n><t>很抱歉，我欺骗了你，我并不是那个传说中的<r航线活地图>，当然，我确实是“雁过拔毛”，哈哈。<n><t>不过你也别生气，其实我也确实知道谁是真正的“航线活地图”，因为那个人就是我的兄弟，孪生兄弟！所以很多人都把我错当成他了。<n><t>不过既然你是那么的有诚意，我也不能真的欺骗你，所以我告诉你，我的兄弟他就住在<b冰狼堡>的（1320,585），他的名字叫做<b鲁格兰>，拿着我的信去找他，他一定不会拒绝的。<n><t>他很好找的，因为他长得和我一个样！" )
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "带着<y巴奥的信>去和冰狼堡的<b鲁格兰>（1320.585）谈谈。")

	MisHelpTalk("<t>货你已经送到了，信你也拿到了，我没什么可以帮你的了。")
	MisResultCondition(AlwaysFailure )

-----------------------------------孪生兄弟
	DefineMission( 296, "孪生兄弟", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哦，这是我弟弟的信，看来你是又一个受害者。<n><t>唉，这家伙，总是这样，老是要假冒我来捉弄别人，不过希望你也不要生气，巴奥只是喜欢恶作剧而已，他没有恶意的。")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------准备活动
	DefineMission( 297, "准备活动", 260 )

	MisBeginTalk( "<t>虽然我知道所谓的“T9补给站”到底在什么地方，但是如果我现在告诉你，你一定会急着赶过去的。<n><t>但是那个地方遍布着危险，所以，我希望你拥有足够的自保能力。<n><t>这样吧，如果你有信心的话，我希望你能够先做做准备活动。<n><t>如果你驾船从冰狼码头出发，一直向东航行，穿过巨蝌蚪和食腐鱼的地盘后继续向东，直到你到达了雾隐鱼出没的海域。<n><t>杀死那些雾隐鱼，给我带12块<y雾隐鱼的鳞片>回来，那样的话我能给你制作一件不错的饰品。")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "带回12块<y雾隐鱼的鳞片>交给冰狼堡的鲁格兰（1320.585）。")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>看来你成功了，祝贺你！<n><t>现在让我来把你带回来的鳞片制作成<r鱼鳞戒指>吧，带着这枚戒指的人，能够轻易的感受到大海那神秘莫测的力量。")
	MisHelpTalk("<t>如果你还没有准备好，也不用急着出发，毕竟在海上还是安全最重要。")
	MisResultCondition(HasMission, 260 )
	MisResultCondition(HasItem, 4143, 12 )
	MisResultAction(TakeItem, 4143, 12 )
	MisResultAction(GiveItem, 4144, 1, 4 )
	MisResultAction(ClearMission, 260 )
	MisResultAction(SetRecord, 260 )
	MisResultAction(AddExp,7110,7110)	
	MisResultAction(AddMoney,3548,3548)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4143 )	
	TriggerAction( 1, AddNextFlag, 260, 10, 12 )
	RegCurTrigger( 2601 )

-------------------------------------------------祝福之手
	DefineMission( 298, "祝福之手", 261 )

	MisBeginTalk( "<t>嗯……我做的这枚鱼鳞戒指虽然能够感受到大海的力量，但是像要能够真正使用到这种力量却需要更高明的手段才能引导出来，所以你现在还不能佩戴。<n><t>从冰狼堡往东走，穿过狭长地带后的你就能到达<b冰极补给站>，那里有位<b克拉拉大师>就拥有引导的力量，据说凡是被他的手触摸过的物品都会脱胎换骨成为拥有自然之力的极品，去吧，当你获得了大师的祝福后，再来找我吧。" )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "带着<y鱼鳞戒指>前往<b冰极补给站>请求<b克拉拉大师>（2664,654）的祝福。")

	MisHelpTalk("<t>你的戒指力量还没有被引导出来，快去吧，找到克拉拉大师，快去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------祝福之手
	DefineMission( 299, "祝福之手", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>年轻的冒险者，你是来寻找指引的吗？还是仅仅为了一枚戒指？无论如何，你找到我了。")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------心灵力量
	DefineMission( 300, "心灵力量", 262 )

	MisBeginTalk( "<t>很多人都曾经要求我为他们的物品祝福，但是事实上，只有很少的几个人如愿以偿了，那是因为我能做的只是引导，并不是我有什么特异功能，而是物品持有者的心灵力量使然。<n><t>所以我能够引导成功的，那么那个物品的持有者一定拥有一颗坚强的心灵。<n><t>如果你认为自己同样拥有一颗坚强的心的话，请证明给我看。<n><t>在这个营地站北方不远的地方，（2746,450）附近有着大量的不灭弓箭手，他们中的一个，生前曾经是冰极最著名的神射手，但他的死后的残躯被神秘的力量所控制，现在成为了可怕的行尸走肉。<n><t>如果你能够击倒他，也许可以使他的灵魂获得安宁，同时，也能证明你确实拥有一个坚强的心，去吧，只要能够带回一小片“灵魂的光辉”就可以了。")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "带回一片“灵魂的光辉”给冰极补给站的克拉拉（2664,654）。")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>你做到了，我相信你真的拥有一颗坚强的心灵。<n><t>现在我可以为你的戒指引导了，心往你能够永远保持住这颗坚定的心。")
	MisHelpTalk("<t>如果有坚定的心灵，那么你的力量也会变得强大，无论遇到什么挫折，相信你都不会退缩。")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "获得任务“返回冰狼”" )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------返回冰狼
	DefineMission( 302, "返回冰狼", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>尊敬的朋友，我知道你得到了祝福了。<n><t>现在你确实证明了自己的实力，同时相信你也准备好了。")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------前往t9
	DefineMission( 303, "前往t9", 264 )

	MisBeginTalk( "<t>你所说的T9补给站其实早已经不存在了，在10年前，一队海盗袭击了那里，当时有一队受海军保护的商船正在那里补给，所以爆发了激烈的海战，战斗的结果以海军全军覆没告终，T9补给站也因为受到波及而被摧毁。<n><t>后来虽然重建了，但是已经改名成<y埃弗里补给站>了，因为这已经是10年前的事了，所以几乎没人还记得T9补给站这个名字了。<n><t>如果你要去那里的话，千万小心，那里是海盗的地盘。<n><t>具体的坐标是在魔女之海的2042，635附近，如果你能安全到达那里的话，可以在那里的（2042,635）找到海港指挥<b海港指挥·布纽>，他会帮助你的。" )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "前往魔女之海的<y埃弗里补给站>同<b海港指挥·布纽>（2042,635）谈谈。")

	MisHelpTalk("<t>我认为你最好是找些同伴一起出发会比较安全。")
	MisResultCondition(AlwaysFailure )

-----------------------------------前往t9
	DefineMission( 304, "前往t9", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哦！想不到你居然是来寻找T9补给站的，这里就是10年前的T9补给站啊！")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------前往t9
	DefineMission( 305, "谁是安德鲁", 265 )

	MisBeginTalk( "<t>虽然这里就是以前的T9补给站，可是，由于T9当时是被海盗们摧毁的，而且直到现在海盗们还是常常附近的海域出没，所以原先在这里的人都离开了，现在这里的人也是经常地来了又走，只有我和海盗们混熟了，所以没什么好怕的。<n><t>但是我也是补给站重建以后才来的，所以我不知道有安德鲁这个人。<n><t>不过在这个补给站东面的冰雪岛上的（2362,657）有个叫做<r杰里米>的老海盗，我记得他说他很多年前就住在那座岛上了，说不定他知道，你倒是可以去问问看。" )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "向海盗杰里米（2362,657）询问安德鲁的去向。")

	MisHelpTalk("<t>我认为你最好是找些同伴一起出发会比较安全。")
	MisResultCondition(AlwaysFailure )

-----------------------------------前往t9
	DefineMission( 306, "谁是安德鲁", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>谁是安德路？我不知道！我和你不熟，别来烦我！！！")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------海军别动队
	DefineMission( 307, "海军别动队", 266 )

	MisBeginTalk( "<t>你真的很烦啊！如果你想要从我这知道什么，那就得帮我办件事！<n><t>据我所知，在这个岛的最北面，有支<r海军别动队>，他们说是海军，可是比我们海盗还黑心，根本不配称作海军！<n><t>岛上的海盗有很多都是洗手不干的老人，可是一旦被他们发现，都会被他们敲诈，最后还被流放到监狱岛！<n><t>去给他们一点教训，打倒5个<r海军别动队员>回来，那时我就和你好好谈谈。")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打败5个<r海军别动队员>再和杰里米（2362,657）谈谈。")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>嗬嗬，看不出你还有两下子嘛，你果然不是那种一看到海军就不敢吭声的胆小鬼，很好很好！")
	MisHelpTalk("<t>怎么了！怕了！没用的家伙，走开！")
	MisResultCondition(HasMission, 266 )
	MisResultCondition(HasFlag, 266 , 14)
	MisResultAction(ClearMission, 266 )
	MisResultAction(SetRecord, 266 )
	MisResultAction(AddExp,21776,21776)	
	MisResultAction(AddMoney,4436,4436)	
	MisResultAction(AddExpAndType,2,26625,26625)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 266, 10, 5 )
	RegCurTrigger( 2661 )

-------------------------------------------------又见杰克
	DefineMission( 308, "又见杰克", 267 )

	MisBeginTalk( "<t>小朋友，你真是很对我的胃口哦！居然不怕得罪雷霆堡的海军，好！<n><t>其实不久前那个安德鲁还在这座岛上，但是当时他已经改名了，他称自己为<r鲁得安>，所以几乎没人知道他就是安德鲁。<n><t>不过后来有一个年轻的海盗来到这里，一下子就猜出了鲁得安就是安德鲁，而且他说服安德鲁和他一起离开了，我记得那个海盗自称是杰克海盗团的首领！<n><t>嘿嘿，我早就觉得黑杰克海盗团的那个什么费克一副窝囊像，果然是个假冒的船长。<n><t>如果你想要找安德鲁的话，最好到杰克海盗团的大本营<y鸣沙岛>去看看。" )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "深入<y鸣沙岛>中部和杰克船长（1672,3777）谈谈。")

	MisHelpTalk("<t>如果以后想当海盗了，就来找我，我觉得我们一定很合得来。")
	MisResultCondition(AlwaysFailure )

-----------------------------------又见杰克
	DefineMission( 309, "又见杰克", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哦！我们又见面了！我相信你一定已经猜到我就是黑杰克海盗团真正的首领了吧！<n><t>不过你最好别到处乱说，我做人可是很低调的，你知道的吧……")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------稍后再来
	DefineMission( 310, "稍后再来", 268 )

	MisBeginTalk( "嗯，那个……我说……现在没有事情可以给你干，但希望下次你能来找我，兴许我就有事情交给你办！你先回去吧。" )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找杰克船长（1672,3777）再谈谈")

	MisHelpTalk("嗯……看样子你必须完成我的调查才行哦")
	MisResultCondition(AlwaysFailure )


-----------------------------------引诱巨兽
	DefineMission( 311, "引诱巨兽", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>真不敢相信，你居然把那个巨兽结果了，我好崇拜你啊，我太高兴了，以后我就可以安心的吃老奶奶的草莓饼干啦。")
	MisResultCondition(HasMission, 4 )
	MisResultCondition(NoRecord, 4 )
	MisResultCondition(NoMisssionFailure, 4 )
	MisResultCondition(HasFlag, 4, 10 )
	MisResultAction(ClearMission, 4 )
	MisResultAction(SetRecord, 4 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultAction(ClearTrigger, 108)


-------------------------------------------------“调查”
	DefineMission( 312, "“调查”", 269 )

	MisBeginTalk( "<t>你是那个谁来着，瞧我这记性，小布莱尼？还是林肯？<n><t>算了，名字并不重要，对吧，你说你来找人？找谁啊？安德鲁？安德鲁……好熟悉的名字，可能是前几天出海捕鱼一去不回的那个黑小子吧，你看，我有8000手下，哪能各个记着名字呢，不如，你自己去找找看吧，我的手下每个都有记录自己名字的<r徽记>，你向他们借来看看就知道了^_^!<n><t>这个人似乎隐瞒着什么，看来他是不见棺材不落泪了，就让我“借”几个<r徽记>来看看吧。")
	MisBeginCondition(NoRecord, 269)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 269)
	MisBeginCondition(HasMission, 268)
	MisBeginAction(AddMission, 269)
	MisBeginAction(ClearMission, 268 )
	MisBeginAction(SetRecord, 268 )
	MisBeginAction(AddTrigger, 2691, TE_GETITEM, 3790, 1)
	MisBeginAction(AddTrigger, 2692, TE_GETITEM, 3791, 1)
	MisBeginAction(AddTrigger, 2693, TE_GETITEM, 3792, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "找杰克的手下“借”一些<r徽记>，证明你确实“调查过”。")


	MisResultTalk("<t>你手上拿的好像是我手下的徽记啊，怎么样，我的手下配合吧，有什么收获吗？<n><t>等等，这个，这个徽章上面的血是怎么回事？<n><t>难道……，不会吧？<n><t>算了，你还是别调查了，我还想留点兄弟帮我干活呢，臭安德鲁，死了也不让我安生，我不干了，这个世界怎样干我屁事，等我把兄弟安抚好，你再来找我，我把一切都告诉你。")
	MisHelpTalk("<t>怎么样，我的管理制度不错吧，只要你一个一个查过来，一定能找到你要的人。")
	MisResultCondition(HasMission, 269 )
	MisResultCondition(HasItem, 3790 , 1)
	MisResultCondition(HasItem, 3791 , 1)
	MisResultCondition(HasItem, 3792 , 1)
	MisResultAction(TakeItem, 3790, 1 )
	MisResultAction(TakeItem, 3791, 1 )
	MisResultAction(TakeItem, 3792, 1 )
	MisResultAction(ClearMission, 269 )
	MisResultAction(SetRecord, 269 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3790 )
	TriggerAction( 1, AddNextFlag, 269, 10, 1 )
	RegCurTrigger( 2691 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3791 )
	TriggerAction( 1, AddNextFlag, 269, 11, 1 )
	RegCurTrigger( 2692 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3792)
	TriggerAction( 1, AddNextFlag, 269, 12, 1 )
	RegCurTrigger( 2693 )

-------------------------------------------------鲁德安的遗物
	DefineMission( 313, "鲁德安的遗物", 270 )

	MisBeginTalk( "<t>我想你应该知道，安德鲁在见到我之前就改名叫鲁德安了吧，不过是骗不到我杰克船长的，我一直不知道这样一个猥琐的走私犯，怎会成为海军秘密通缉的对象，当然，这个通缉你们是不会知道的，呵呵，海军总部中还有许多不为人知的事情呢，哦，对不起跑题了。<n><t>在我的威胁下，他很快加入了我的海盗团，但是不久，也就在你们来的半个月前，他得了一种很奇怪的传染病，为了不连累我们，在一个暴风雨的夜晚他自己坐船出海走了，你知道，在这附近有著名的莱格乌斯漩涡，又是那样一个黑暗的夜晚，我估计，你们要找的人现在已经是海洋的一部分了。<n><t>他好像是留下了一些东西，不过，你知道海盗的规矩，如果你活着所有的财富都是你的，如果你死了你所有的财富都是大家的，所以，你们想要<r鲁德安的遗物>的话，问我的兄弟们要吧，不过，最好温柔一点。")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找杰克的手下们“要”回<r鲁德安的遗物>")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>对，这个就是<r鲁德安的遗物>了，不过，我也不知道这究竟是个什么东西？你要是感兴趣的话不妨使用一下试试。")
	MisHelpTalk("<t>找到<r鲁德安的遗物>了吗，你们有没有虐待我的手下，算了，当我没说还不行吗？你继续找找吧")
	MisResultCondition(HasMission, 270 )
	MisResultCondition(HasItem, 4219 , 1)
	MisResultAction(TakeItem, 4219, 1 )
	MisResultAction(GiveItem, 4220, 1, 4 )
	MisResultAction(ClearMission, 270 )
	MisResultAction(SetRecord, 270 )
	MisResultAction(AddExp,30000,30000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1815,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4219 )
	TriggerAction( 1, AddNextFlag, 270, 10, 1 )
	RegCurTrigger( 2701 )


-----------------------------------海盗之血1
	DefineMission( 314, "海盗之血", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哦，这是一种叫做水手之心的东西，据说可以映照出水手的内心，而能够解答内心的疑问的人，就可以获得水手之心中保存的东西，但是，由于工艺复杂，已经失传好久了，你们是说这个就是鲁德安的遗物？<n><t>看来，你需要一些帮助了，但不是我，去（1346,451）找<b冰狼堡贵族·马尔修斯>吧，他应该知道怎么帮你")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------海军之魂1
	DefineMission( 315, "海军之魂", 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哦，这是一种叫做水手之心的东西，据说可以映照出水手的内心，而能够解答内心的疑问的人，就可以获得水手之心中保存的东西，但是，由于工艺复杂，已经失传好久了，你们是说这个就是鲁德安的遗物？<n><t>看来，你需要一些帮助了，但不是我，去（2277,2831）找<b海军少将·威尔斯>吧，他应该知道怎么帮你")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------无名之人1
	DefineMission( 316, "无名之人", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哦，这是一种叫做水手之心的东西，据说可以映照出水手的内心，而能够解答内心的疑问的人，就可以获得水手之心中保存的东西，但是，由于工艺复杂，已经失传好久了，你们是说这个就是鲁德安的遗物？<n><t>看来，你需要一些帮助了，但不是我，去（2219,2749）找<b白银城首席秘书·斯克特>吧，他应该知道怎么帮你")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------海盗之血2
	DefineMission( 317, "海盗之血", 271 )

	MisBeginTalk( "<t>海盗之血吗？好久没有人问这个了，看来，你是拿到了一个水手之心吧，所谓的海盗之血其实就是敌人的鲜血，只有混合敌人的鲜血与泪水才能造就一代不灭的海盗。<n><t>将敌人的血淋在水手之心上，你就会得到里面的东西。<n><t>正好位于（2389,575）附近的那帮<y海军别动队>最近很嚣张，你不妨拿他们做一下实验。")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "杀死30个<y海军别动队员>，然后回来找 <b冰狼堡贵族·马尔修斯>（1346,451）")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>你已经杀死足够的<b海军别动队员>了吗？那水手之心应该已经接受你的灵魂了<n><t><p（我将水手之心从背包中拿出的时候，水手之心已经皲裂开来，露出了里面的一把钥匙，而我的心似乎也镀上了一层血色。）>")
	MisHelpTalk("<t>怎么样？那帮<b海军别动队员>还算配合吗？")
	MisResultCondition(HasMission, 271 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasFlag, 271, 39)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 271 )
	MisResultAction(SetRecord, 271 )
	MisResultAction(AddExp,50000,50000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 271, 10, 30 )
	RegCurTrigger( 2711 )

-------------------------------------------------海军之魂2
	DefineMission( 318, "海军之魂", 272 )

	MisBeginTalk( "<t>海军之魂吗？已经好久没人提及这个词了，好怀念那个到处是飘扬着海军之魂的年代了，别用那种眼光看我，我不是通灵者，所谓的海军之魂，是30年前我们所使用的军旗，那是一个多么热血的年代阿，青春啊，让我们迎着落日奔跑吧……<n><t>先别忙着跑，难道你不想打开水手之心了？现在海军之魂只有总部的展览馆里有了，如果你愿意捐出<r200万>，我可以考虑让你使用一下海军之魂哦")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "带<r200万>给海军少将·威尔斯（2277,2831）")

	MisResultTalk("<t>不错，你还真拿来了<r200万>，看来你对海军的信念足够坚定了，其实根本没有什么海军之魂的军旗，你已经证明了你对海军的忠诚，拿出你的水手之心吧，我相信它已经接受你了。")
	MisHelpTalk("<t>瞧一瞧，看一看，正宗的海军之魂哦，只卖<r200万>啦。")
	MisResultCondition(HasMission, 272 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasMoney, 2000000 )
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 272 )
	MisResultAction(SetRecord, 272 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

-------------------------------------------------无名之人3
	DefineMission( 319, "无名之人", 273 )

	MisBeginTalk( "<t>无名之人？你拿到了水手之心？<n><t>快给我看看，恩，还是那么美丽，哦，咳咳，无名的人渴望一夜成名，而却缺少足够的勇气，其实，一个具有勇气的人，即使默默无名也是一代英雄。<n><t>现在为了证明你的勇气，穿过迷雾的海洋，到<p白银海域77，3971>坐标处去一趟吧，到那里使用一下水手之心，让他感受你的勇敢的灵魂。")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去 <p白银海域77，3971坐标>处使用<r鲁德安的遗物>,然后回来找白银城首席秘书·斯克特（2219,2749）")

	MisResultTalk("<t>你说水手之心为你修复了船只，还给你了满仓的补给，看来它已经接受你的勇敢的灵魂了。<n><t>至于里面的古老的钥匙，你自己查看一下，应该有新的线索。")
	MisHelpTalk("<t>你怎么还在这里，为了证明你的勇气，你必须到<p白银海域77，3971>那里去一次。")
	MisResultCondition(HasMission, 273 )
	MisResultCondition(HasMission, 14 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 273 )
	MisResultAction(SetRecord, 14 )
	MisResultAction(ClearMission, 14 )
	MisResultAction(SetRecord, 273 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultBagNeed(1)

-------------------------------------------------鲁德安的遗物
	DefineMission( 320, "雷霆银行", 274 )

	MisBeginTalk( "<t>这是……，请稍等，我核对一下……<n><t>对不起，我们暂时无法将里边的东西给你，根据银行的纪录，要取出里边的东西，需要得到<r冰狼堡贵族·马尔修斯>,<r海军少将·威尔斯>,<r白银城首席秘书·斯克特>,<r阿布多罗.李>这四位大人的的签名才可以，祝你好运，请走好，下一位……")
	MisBeginCondition(NoRecord, 274)
	MisBeginCondition(NoMission, 274)
	MisBeginCondition(HasMission, 15)
	MisBeginCondition(HasItem, 4222, 1)
	MisBeginAction(AddMission, 274)
	MisBeginAction(ClearMission, 15)
	MisBeginAction(SetRecord, 15)
	MisBeginAction(AddTrigger, 2741, TE_GETITEM, 4223, 1)
	MisBeginAction(AddTrigger, 2742, TE_GETITEM, 4224, 1)
	MisBeginAction(AddTrigger, 2743, TE_GETITEM, 4225, 1)
	MisBeginAction(AddTrigger, 2744, TE_GETITEM, 4226, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "拿到四位大人的签名回来给雷霆银行的出纳（743,1534）")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>你真的要来了签名？该不会是伪造的吧，我看看……，恩，恩，算你厉害，以后你一定要把你如何让沙岚那个迂腐老头就范的过程讲给我听。<n><t>至于现在吗，……，给你，你要的东西，真不知道这个羊皮纸到底有什么用，居然看守得这么紧。")
	MisHelpTalk("<t>没拿到四位大人的签名之前别来烦我，还有很多客人等着我呢")
	MisResultCondition(HasMission, 274 )
	MisResultCondition(HasItem, 4223 , 1)
	MisResultCondition(HasItem, 4224 , 1)
	MisResultCondition(HasItem, 4225 , 1)
	MisResultCondition(HasItem, 4226 , 1)
	MisResultCondition(HasItem, 4222 , 1)
	MisResultAction(TakeItem, 4222, 1 )
	MisResultAction(TakeItem, 4223, 1 )
	MisResultAction(TakeItem, 4224, 1 )
	MisResultAction(TakeItem, 4225, 1 )
	MisResultAction(TakeItem, 4226, 1 )
	MisResultAction(GiveItem, 4227, 1, 4 )
	MisResultAction(ClearMission, 274 )
	MisResultAction(SetRecord, 274 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4223 )
	TriggerAction( 1, AddNextFlag, 274, 10, 1 )
	RegCurTrigger( 2741 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4224 )
	TriggerAction( 1, AddNextFlag, 274, 20, 1 )
	RegCurTrigger( 2742 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4225 )
	TriggerAction( 1, AddNextFlag, 274, 30, 1 )
	RegCurTrigger( 2743 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4226 )
	TriggerAction( 1, AddNextFlag, 274, 40, 1 )
	RegCurTrigger( 2744 )

-------------------------------------------------海盗的朋友
	DefineMission( 321, "海盗的朋友", 275 )

	MisBeginTalk( "<t>年轻的朋友，你肩头上的徽章已经泄露了你的身份，这里不欢迎海军的人，你走吧，在我还没有改变决定之前。<n><t>什么？你说，你是海盗的朋友，难道……，你会是那个人，你用什么来证明你是我们的朋友<n><t>你说海军别动队吗？那的确是一个不错的选择，那帮腐败的家伙是时候收敛些了，如果你能杀死足够的<y海军别动队员>，我还可以考虑为你签名")
	MisBeginCondition(NoRecord, 275)
	MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "杀死30个<y海军别动队员>，然后回来找 <b冰狼堡贵族·马尔修斯>（1346,451）")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>你用敌人的鲜血证明了你的忠诚，从今以后，你就是冰狼堡的贵宾，所有海盗的朋友，而现在呢，拿出你的签名表吧，我会为你签上我的名字")
	MisHelpTalk("<t>你怎么还在这里，而且两手空空，萨斯特，劳尔，你们在干什么，怎么让这样一个家伙来到我的面前。")
	MisResultCondition(HasMission, 275 )
	MisResultCondition(HasFlag, 275, 39)
	MisResultAction(GiveItem, 4223, 1, 4 )
	MisResultAction(ClearMission, 275 )
	MisResultAction(SetRecord, 275 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 275, 10, 30 )
	RegCurTrigger( 2751 )

-----------------------------------我不是海军
	DefineMission( 322, "我不是海军", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你需要我的签名吗？只要不是海军，我很愿意帮你的忙。")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------脱离关系
	DefineMission( 323, "脱离关系", 277 )

	MisBeginTalk( "<t>你想要我的签名？除了罗杰还没有哪个海盗会厚颜无耻的要海军少将的签名？<n><t>除非……，不会的，你决不会是那个人，那个人一定在我们海军中诞生，一定，如果你想通了，与海盗脱离关系之后再来找我吧")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "杀死<r杰克海盗团的团员>，证明你与海盗脱离关系")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("<t>很好，我又看到了一个有为青年，拿去吧，我的签名，如果，你还能拿到其他的签名……绝对不会的……也不是不可能的")
	MisHelpTalk("<t>废柴就是废柴，永远是流落在海上的海盗，如果你无法与那些人划清关系，就不要到我这里来污染我的空气")
	MisResultCondition(HasMission, 277 )
	MisResultCondition(HasFlag, 277, 19)
	MisResultCondition(HasFlag, 277, 29)
	MisResultCondition(HasFlag, 277, 39)
	MisResultAction(GiveItem, 4224, 1, 4 )
	MisResultAction(ClearMission, 277 )
	MisResultAction(SetRecord, 277 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 277, 10, 10 )
	RegCurTrigger( 2771 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 277, 20, 10 )
	RegCurTrigger( 2772 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 277, 30, 10 )
	RegCurTrigger( 2773 )

-----------------------------------我不是海盗
	DefineMission( 324, "我不是海盗", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你需要我的签名吗？没想到你还是我的fans，给你，漂亮吧。")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------孤独的战士
	DefineMission( 325, "孤独的战士", 279 )

	MisBeginTalk( "<t>作为一个孤独的旅人，你必须独自面对所有的困难，任何迷惑都会使你丧命。<n><t>听好了，我在你这么大的时候也是孤身一人闯荡世界的，而我要告诉你，只有最强的人才可以享受孤独，去吧，证明你的强悍给我看，如果，你就是那个我们在等待的人，我会毫不犹豫地给你我的签名")
	MisBeginCondition(NoRecord, 279)
	MisBeginCondition(NoRecord, 280 )
	MisBeginCondition(NoMission, 279)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(NoGuild)
	MisBeginAction(AddMission, 279)
	MisBeginAction(AddTrigger, 2791, TE_KILL, 145, 5)
	MisBeginAction(AddTrigger, 2792, TE_KILL, 146, 5)
	MisBeginAction(AddTrigger, 2793, TE_KILL, 291, 5)
	MisBeginAction(AddTrigger, 2794, TE_KILL, 667, 5)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "杀死海军，杀死海盗，证明你是一个孤独而勇敢的战士")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>我在你的眼睛里还是能看见犹豫，看来你还是需要进一步的修炼，不过，既然你完成了一系列位大的壮举，我还是很乐意看到我的签名可以对你提供帮助")
	MisHelpTalk("<t>不要再犹豫，迷茫只会让你丧命，如果，你已经厌倦了孤独，找些朋友一起冒险吧，那将带给你更多的乐趣，当然，你也将失去孤独的权利")
	MisResultCondition(HasMission, 279 )
	MisResultCondition(HasFlag, 279, 14)
	MisResultCondition(HasFlag, 279, 24)
	MisResultCondition(HasFlag, 279, 34)
	MisResultCondition(HasFlag, 279, 44)
	MisResultAction(GiveItem, 4225, 1, 4 )
	MisResultAction(ClearMission, 279 )
	MisResultAction(SetRecord, 279 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 279, 10, 5 )
	RegCurTrigger( 2791 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 279, 20, 5 )
	RegCurTrigger( 2792 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 279, 30, 5 )
	RegCurTrigger( 2793 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 279, 40, 5 )
	RegCurTrigger( 2794 )

-----------------------------------强大的后盾
	DefineMission( 326, "强大的后盾", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>既然你有强大的公会作保障，我想你也不会做出什么有损我名誉的事情，我的签名就给你了。")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------洗刷罪恶
	DefineMission( 327, "洗刷罪恶", 281 )

	MisBeginTalk( "<t>神的面前人人平等，无论你是海盗还是海军，还是孤独的旅人，当你劳累时，请记住，女神永远祝福你们，而你现在要做的就是洗刷你过去罪恶，当你洗刷了所有的罪恶之后，我的签名自然会出现在你的手中。")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "用<y暗影美人鱼>之血洗刷过去的罪恶，回来报告沙岚城的“氏族长·阿布多罗.李”（898,3640）")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>愿女神永远祝福你纯洁的心，这里是签名，希望对你有所帮助，也希望你能永远保持这颗纯洁的心，为世人带来温暖。")
	MisHelpTalk("<t>你的罪恶还没有洗清，继续努力吧，神永远站在你的身边")
	MisResultCondition(HasMission, 281 )
	MisResultCondition(HasFlag, 281, 39)
	MisResultAction(GiveItem, 4226, 1, 4 )
	MisResultAction(ClearMission, 281 )
	MisResultAction(SetRecord, 281 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3885,1,4)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 620 )
	TriggerAction( 1, AddNextFlag, 281, 10, 30 )
	RegCurTrigger( 2811 )

-----------------------------------鲁德安的遗书
	DefineMission( 328, "鲁德安的遗书", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你怎么又来了，我的兄弟们已经没有什么可以提供的了，拜托你放过他们吧。<n><t>什么？你拿到了鲁德安的遗书？那个只有四位大人联合签名才能取出的东西？快给我看看")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------遗书的秘密
	DefineMission( 329, "遗书的秘密", 282 )
	
	MisBeginTalk( "<t>哈哈，安德鲁这个家伙还是那么……无聊，你是不是觉得上面的文字根本是垃圾，那就对了，这张羊皮被特殊处理过，别看我，我也解不开这个，我想能配制解药的在世上也就只有两三个人了。<n><t>其中，（2193,2730）<b小山车>可能是最好说话的，你去找他吧，当然，别说是我让你去的，否则，后果自负啊。" )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找<b小山车（2193,2730）>破解遗书的秘密")
	
	MisHelpTalk("<t>记住，千万别跟小山车说是我让你过去找他的，否则后果自负。")
	MisResultCondition(AlwaysFailure )

-----------------------------------遗书的秘密
	DefineMission( 330, "遗书的秘密", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>让我看看，这种味道，恩，没错，是提马拉混合隐形药水的味道，没想到世上还有人会制作这个药水，我可以为你制作解药，不过，你要先告诉我是谁跟你说我会制作解药的。")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------杰克介绍
	DefineMission( 331, "杰克介绍", 283 )
	
	MisBeginTalk( "<t>什么？？是那个卑鄙下流肮脏无耻的<b杰克>跟你说的，告诉他，让他去死吧，我不会帮助你的，我恨不得马上失忆让自己再也想不起来那个配方，离我远一点，我不想再看到你，滚回<b杰克>那里，告诉他小山车问候他全家。" )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找（1672,3777）的杰克谈一下今天发生的事情")
	
	MisHelpTalk("<t>你怎么还不消失，非要我用溶解液融了你才肯消失吗？滚回杰克那里去，快滚。")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------酒馆传闻
	DefineMission( 332, "酒馆传闻", 284 )

	MisBeginTalk( "<t>哦，从酒馆知道的吗?一定是我那天喝醉了自己说的，哎，祸从口出、红颜祸水啊。<n><t>算了，你能找到我，也算我们有缘，我就把配方告诉你吧，你要是能找来这些东西，我就帮你配置解药。<n><t>听清楚了我需要<r血腥的蝌蚪尾巴3个>，<r狂风水母之心5个>，<r脆鲨鱼软骨7个>和<r黄色海豚背鳍9个>，快去快回啊，趁我还没有改变主意。")
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 284)
	MisBeginAction(AddTrigger, 2841, TE_GETITEM, 1255, 3)
	MisBeginAction(AddTrigger, 2842, TE_GETITEM, 1291, 5)
	MisBeginAction(AddTrigger, 2843, TE_GETITEM, 1365, 7)
	MisBeginAction(AddTrigger, 2844, TE_GETITEM, 1292, 9)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给小山车（2193,2730）带回配制解药的原料")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>很好，我会马上让你看到羊皮上写了些什么，……就是这个，拿去吧，不过，由于太久没有做了，如果有什么副作用可别怨我。")
	MisHelpTalk("<t>你还没有搞到原料吗？嗜血蝌蚪、狂风水母、丝鲨和黄宝石海豚应该不难找啊，还是你的能力有限，看来我要改变主意了。")
	MisResultCondition(HasMission, 284 )
	MisResultCondition(HasItem, 1255, 3)
	MisResultCondition(HasItem, 1291, 5)
	MisResultCondition(HasItem, 1365, 7)
	MisResultCondition(HasItem, 1292, 9)
	MisResultAction(TakeItem, 1255, 3)
	MisResultAction(TakeItem, 1291, 5)
	MisResultAction(TakeItem, 1365, 7)
	MisResultAction(TakeItem, 1292, 9)
	MisResultAction(GiveItem, 4228, 1, 4)
	MisResultAction(SetRecord, 284 )
	MisResultAction(ClearMission, 284 )
	MisResultBagNeed(1)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1255 )
	TriggerAction( 1, AddNextFlag, 284, 10, 3 )
	RegCurTrigger( 2841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1291 )
	TriggerAction( 1, AddNextFlag, 284, 20, 5 )
	RegCurTrigger( 2842 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1365 )
	TriggerAction( 1, AddNextFlag, 284, 30, 7 )
	RegCurTrigger( 2843 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1292 )
	TriggerAction( 1, AddNextFlag, 284, 40, 9 )
	RegCurTrigger( 2844 )

----------------------------感情纠纷
	DefineMission( 333, "感情纠纷", 285 )
	
	MisBeginTalk( "<t>天哪，你居然无视我的忠告，我不是说过不要提我的名字吗？<n><t>算了，年轻人啊……，既然小山车已经暴走了，那么只有一个人可以阻止他了，去（2224,2887）找<p白银酒吧女·蒂娜>吧，她是唯一能帮助你的人了。<n><t>至于为什么……，你问了酒吧女·蒂娜就知道了。" )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找<b白银酒吧女·蒂娜>（2224,2887）帮忙")
	
	MisHelpTalk("<t>还在等什么，还不快去找酒吧女·蒂娜，万一小山车真的失忆了，麻烦可就大了。")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------感情纠纷
	DefineMission( 334, "感情纠纷", 286 )

	MisBeginTalk( "<t>什么，小山车又因为杰克暴走了吗？都这么多年了，他还是老样子，当年他们两个为了我在圣雪山上决斗，小山车被杰克打折了一条腿，自此便结下了仇恨，哎，美丽真是一种罪过。<n><t>事情既然因我而起，还是让我来化解这段恩怨吧，我知道小山车最近正在研究南瓜一族，如果你能从<y堕落的南瓜骑士>那里取来一颗<r可怕的南瓜头>，我想我还有办法帮你。")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给<p白银酒吧女·蒂娜>（2224,2887）带回一颗<r可怕的南瓜头>")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>呵呵，你看，多漂亮的南瓜头啊，我是说，他会这么认为的，如果在让我稍微加工一下的话就更好了，你稍等一下……，刻上这些字，他会抢着用隐形药水解药跟你换的")
	MisHelpTalk("<t>你还没拿到可怕的南瓜头吗？没有那个东西我也帮不了你。")
	MisResultCondition(HasMission, 286 )
	MisResultCondition(HasItem, 4735, 1)
	MisResultAction(TakeItem, 4735, 1)
	MisResultAction(GiveItem, 4229, 1, 4)
	MisResultAction(SetRecord, 286 )
	MisResultAction(ClearMission, 286 )
	MisResultAction(ObligeAcceptMission, 17 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4735 )
	TriggerAction( 1, AddNextFlag, 286, 10, 1 )
	RegCurTrigger( 2861 )

-----------------------------------感情纠纷
	DefineMission( 335, "感情纠纷", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我不是让你消失吗？你居然……，等等，你手里拿着的是什么？一颗可怕的南瓜头，而且上面还有蒂娜的亲笔签名，哦，能把它给我吗？我会用隐形药水解药跟你换的。<n><t>（蒂娜说的还真准阿，还好这场感情纠纷没有耽误我太长时间。）")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------海盗语言
	DefineMission( 336, "海盗语言", 287 )

	MisBeginTalk( "<t>哦，古老的诗句啊，已经没什么人相信这个传说了，如果你一定要知道，我就告诉你好了，传说中美丽的人鱼守护着一个神奇的骷髅，那个骷髅的眼睛总是看着宝藏的方向，而在宝藏的上方为骷髅淋上鲜血，它就会呼唤出传说中的宝藏，哎，还从来没看见什么人能拿到宝藏呢，你不妨去试试阿<n><t>（人鱼吗，那么多的人鱼，我要去找哪条啊，该不会是<y美人鱼女王>吧，我想杰克不会跟我开这种玩笑吧。<n><t>好，目标<r人鱼的骷髅>，人鱼们，等着我吧。）")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "按照杰克说的话去找（2822,1970）附近的<y美人鱼女王>拿到<r人鱼的骷髅>，然后再找杰克谈谈。")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>我就说你一定能找到人鱼的骷髅，你看过人鱼的骷髅了吗？上面一定有能够帮助你的线索。")
	MisHelpTalk("<t>你找到人鱼的骷髅了吗？找到了一定要给我看一下。")
	MisResultCondition(HasMission, 287 )
	MisResultCondition(HasItem, 4230, 1)
	MisResultAction(SetRecord, 287 )
	MisResultAction(ClearMission, 287 )
	MisResultAction(ObligeAcceptMission, 19 )
	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3463,10,4)
	MisResultAction(GiveItem,1092,5,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4230 )
	TriggerAction( 1, AddNextFlag, 287, 10, 1 )
	RegCurTrigger( 2871 )

-----------------------------------迷的日记
	DefineMission( 337, "迷的日记", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦，好怀念的文字啊，为什么你又出现在我的眼前，我本来以为再也看不见它了，年轻人，我是不会帮你翻译的，我曾经发过毒誓不会再替任何人翻译这种文字，你走吧，这是一种被诅咒的文字，跟它拉上关系的人都没有好下场的……<n><t>也许只有那帮所谓的女神追随者们才会怂恿人们去冒这种险吧")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------女神的追随者
	DefineMission( 338, "女神的追随者", 288 )
	
	MisBeginTalk( "<t>至于，女神的追随者吗，最知名的应该就是住在（898,3640）的<b氏族长·阿布多罗.李>吧……" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找<b氏族长·阿布多罗.李>（898,3640）聊一下日记")
	
	MisHelpTalk("<t>我想我已经把我知道的事情都告诉你了，你去找别人吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------女神的追随者
	DefineMission( 339, "女神的追随者", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>快把日记拿开，把那些魔鬼的文字从我的视线里拿开，不要玷污了我的眼睛。<n><t>我以为除了那个住在（862,3303）的<b圣女·艾达>，不会有人还执迷于这种魔鬼的文字，没想到还有人跟她一样，研究这种文字的人都不会有好下场的，愿女神惩罚你们。")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------圣女
	DefineMission( 340, "圣女", 289 )
	
	MisBeginTalk( "<t>我告诉你，你最好不要跟住在（862,3303）的<b圣女·艾达>扯上关系，否则，你将变成不受欢迎的人。<n><t>（这些老头子都怎么了，为什么看到这种文字都跟见到鬼一样，看氏族长·阿布多罗.李的意思，似乎那个<b圣女·艾达>对这种文字很有研究，不如，去找她碰碰运气吧）" )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找<b圣女·艾达>（862,3303）谈一下日记")
	
	MisHelpTalk("<t>再跟你强调一次，别跟艾达扯上关系，那是个不祥的人。")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------虔诚的证明
	DefineMission( 341, "虔诚的证明", 290 )

	MisBeginTalk( "<t>自从那件事发生以后，氏族长·阿布多罗.李已经全面禁止了关于这种语言的研究，如你所见，我也只有在这里才能继续我的研究。<n><t>我可以为你翻译里面的内容，不过，你要首先证明你对女神的忠诚，只有心地善良而坚强的人才可以知道文字的内容，否则，历史的悲剧将再次上演，至于方法吗，你去问问（862,3500）的<b大神官·甘地维拉>就知道了")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找<b大神官·甘地维拉>（862,3500）证明你的善良和坚强")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>很好，这本祷文是每个加入药师队伍的人必备的道具，能够拿到他，至少大神官·甘地维拉已经认同了你对女神的忠诚，而我呢，也会履行我的诺言，拿去，我已经翻译好了，希望你能好好利用里面的资料")
	MisHelpTalk("<t>你的心中还存在一丝疑惑，当你能够完全理解女神的真谛，并且绝对忠诚于女神之后再来找我吧")
	MisResultCondition(HasMission, 290 )
	MisResultCondition(HasItem, 3954, 1)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(TakeItem, 4231, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(GiveItem, 4232, 1, 4)
	MisResultAction(SetRecord, 290 )
	MisResultAction(ClearMission, 290 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3954 )
	TriggerAction( 1, AddNextFlag, 290, 15, 1 )
	RegCurTrigger( 2901 )


-----------------------------------虔诚的证明
	DefineMission( 342, "虔诚的证明", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>孩子，当你第一天成为药师的时候，我就预见了，你总有一天会来找我，你内心对女神的忠诚在你成为药师的一天就已经被证明了，给你，这就是你虔诚的证明，去做你应该做的事情吧。")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------虔诚的证明
	DefineMission( 343, "虔诚的证明", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>孩子，当你第一天成为药师的时候，我就预见了，你总有一天会来找我，你内心对女神的忠诚在你成为药师的一天就已经被证明了，给你，这就是你虔诚的证明，去做你应该做的事情吧。")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------虔诚的证明
	DefineMission( 344, "虔诚的证明", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>孩子，当你第一天成为药师的时候，我就预见了，你总有一天会来找我，你内心对女神的忠诚在你成为药师的一天就已经被证明了，给你，这就是你虔诚的证明，去做你应该做的事情吧。")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------虔诚的证明
	DefineMission( 345, "虔诚的证明", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>当你走上其他职业道路的时候，神就给了我提示，神说，你也是她的子民，终有一天会来找我解除心中的疑惑，请我指引你走上正确的道路，而且还为你们留下了10道考验。<n><t>如果你准备好了，就来找我，记住，接下来的考验中是不允许退出的。")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------女神的考验
	DefineMission( 346, "女神的考验", 291 )

	MisBeginTalk( "<t>我想你已经做好了心理准备，那么我们开始吧，首先是（440，1440）附近的<y钢僵尸>，让他们长眠吧")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第一道考验")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第一关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------女神的考验
	DefineMission( 347, "女神的考验", 292 )

	MisBeginTalk( "<t>恭喜你闯过第一关，接下来是（511,1721）附近的<y不灭武士>，让他们回归土地的怀抱吧")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第二道考验")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第二关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------女神的考验
	DefineMission( 348, "女神的考验", 293 )

	MisBeginTalk( "<t>第三关是（919，1581）附近的<y骷髅神箭手>，小心他的弓箭")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第三道考验")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第三关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------女神的考验
	DefineMission( 349, "女神的考验", 294 )

	MisBeginTalk( "<t>第四关是（360，1440）附近的<y骷髅武士队长>，被他杀死可是会永不超生的")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第四道考验")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第四关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------女神的考验
	DefineMission( 350, "女神的考验", 295 )

	MisBeginTalk( "<t>第五关是（360，1440）附近的<y诅咒古尸>，让邪恶的复生者快些安息吧")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第五道考验")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第五关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------女神的考验
	DefineMission( 351, "女神的考验", 296 )

	MisBeginTalk( "<t>第六关是（445，1571）附近的<y暗血猎手>，圣林安静的破坏者")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第六道考验")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第六关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------女神的考验
	DefineMission( 352, "女神的考验", 297 )

	MisBeginTalk( "<t>第七关是（360，1340）附近的<y恐怖的诅咒古尸>，不要把他们与诅咒古尸比较，否则，吃亏的是你自己")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第七道考验")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第七关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------女神的考验
	DefineMission( 353, "女神的考验", 298 )

	MisBeginTalk( "<t>第八关是（622,3518）附近的<y堕落的南瓜骑士>，邪恶的恶魔啊，快快退散吧")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第八道考验")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第八关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------女神的考验
	DefineMission( 354, "女神的考验", 299 )

	MisBeginTalk( "<t>倒数第二关是（662，2460）附近的<y恐怖的枯木精>，破坏生态平衡的家伙")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第九道考验")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>恭喜通过第九关，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------女神的考验
	DefineMission( 355, "女神的考验", 300 )

	MisBeginTalk( "<t>最后一关是<y犬神>，打破了女神神圣安息场所的罪人，惩罚他吧")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第十道考验")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>你已经用你的行动证明了你的忠诚，接受它吧，这是你应得的，愿你永远象今天这样忠于女神，女神与你同在。")
	MisHelpTalk("<t>努力吧，孩子，女神永远与你同在")
	MisResultCondition(HasMission, 300 )
	MisResultCondition(HasFlag, 300, 10)
	MisResultAction(SetRecord, 300 )
	MisResultAction(ClearMission, 300 )
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultAction(AddExp,350000,350000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3844,15,4)
	MisResultBagNeed(2)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 190 )
	TriggerAction( 1, AddNextFlag, 300, 10, 1 )
	RegCurTrigger( 3001 )


-----------------------------------神秘小镇
	DefineMission( 356, "神秘小镇", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你是说类似坐标的东西吗？<n><t>原文确实没有提及，就连那个春风镇的名字，要是我没听（2222,2889）的酒鬼·芬德内说过也翻译不出来呢。")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------春风小镇
	DefineMission( 357, "春风小镇", 301 )
	
	MisBeginTalk( "<t>不过，那个酒鬼有时候都是胡说的，谁知道他哪句是真的，那句是假的。<n><t>（圣女的意思好像是酒鬼·芬德内知道关于春风镇的事情，那个酒鬼吗？？我记得上次问他鲨鱼的坐标，他居然给了我一个冰极的地址，害得我差点长眠在冰层下，现在又要去找他，真不知道是福是祸。）" )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找<b酒鬼·芬德内>（2222,2889）谈谈春风镇")
	
	MisHelpTalk("<t><b酒鬼·芬德内>这个人好像在白银城的酒吧里吧")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------冒险精神
	DefineMission( 358, "冒险精神", 302 )

	MisBeginTalk( "<t>春风小镇！！你怎么知道这个名字的？不，你是绝对无法到达那个地方的，我再也不会告诉任何人关于春风小镇的任何情况了，我不想再看到悲剧的发生了，除非……，我是说除非，你能证明你的实力和你真正的冒险精神可以战胜海上的一切情况。<n><t>等你拿到冒险精神的证明再来找我吧，年轻人，多活几年不好吗？非要去送死，唉，不知道怎么想的。")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找<b小山车>（2193,2730）取得冒险精神的证明，交给酒鬼·芬德内（2222,2889）")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>你真的拿到了冒险精神的证明，咳咳，那个，其实，春风镇的名字我也是听别人说的，具体的事情我也不知道。<n><t>……等等，你要做什么，有话好好说，先把手里的酒瓶放下好吗？年轻人，何必这么激动呢，我又没说我什么都不知道，老奶奶·贝蒂你应该认识吧，有关春风镇的事情我都是听她说的，似乎，她和春风镇有很大的联系。")
	MisHelpTalk("<t>连冒险精神的证明都拿不到的家伙，即使告诉了你春风镇的情况又能怎样，还不是多一个倒霉的家伙，珍惜你的生命吧，年轻人。")
	MisResultCondition(HasMission, 302 )
	MisResultCondition(HasItem, 3962, 1 )
	MisResultCondition(HasItem, 4232, 1 )
	MisResultAction(TakeItem, 4232, 1 )
	MisResultAction(TakeItem, 3962, 1 )
	MisResultAction(SetRecord, 302 )
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 302 )
			
	InitTrigger()
	TriggerCondition( 1, IsItem, 3962 )
	TriggerAction( 1, AddNextFlag, 302, 10, 1 )
	RegCurTrigger( 3021 )

-----------------------------------冒险精神
	DefineMission( 359, "冒险精神", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>好久不见啦，你需要冒险精神的证明吗，那个东西你曾经拥有过，但是你用它来换了名誉，知道是什么了吗？<n><t>别猜了，给你，想想刚走上这条道路的热血吧，愿你永远具有冒险精神。")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------冒险精神
	DefineMission( 360, "冒险精神", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>好久不见啦，你需要冒险精神的证明吗，那个东西你曾经拥有过，但是你用它来换了名誉，知道是什么了吗？<n><t>别猜了，给你，想想刚走上这条道路的热血吧，愿你永远具有冒险精神。")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------冒险精神
	DefineMission( 361, "冒险精神", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>什么？你一个外行人想获得冒险精神的证明，那可是一个极其艰苦的过程啊，如果你确认有信心接受一切考验的话，再来找我吧。")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------冒险考验
	DefineMission( 362, "冒险考验", 303 )

	MisBeginTalk( "<t>让我看看你都为这次考验做了些什么，哦，恩，恩，好，恩，恩，根据你的表现，我已经想好对你的考验了，准备好你的武器，当然还有你的船，接受海的考验吧。<n><t>你的第一个敌人就是加纳海岸（1950,1286）附近的<y樱花13海盗突击船>，去消灭10个活动一下身体，还有，记住以后的考验都是要你消灭10个，我就不再提醒你了。")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第一环")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>好，第一关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------冒险考验
	DefineMission( 363, "冒险考验", 304 )

	MisBeginTalk( "<t>接下来是深蓝群岛（370,2317）附近的<y嗜血蝌蚪>，他们就只有头大而已，没什么难度")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第二环")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>好，第二关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------冒险考验
	DefineMission( 364, "冒险考验", 305 )

	MisBeginTalk( "<t>接下来是……深蓝群岛（441,2957）附近的<y狂风水母>，好像是它们自己起的名字，从来没看见它们刮起一丝风。")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第三环")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>好，第三关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------冒险考验
	DefineMission( 365, "冒险考验", 306 )

	MisBeginTalk( "<t>接下来是加纳海岸（3149,3836）附近的变态<y丝鲨>，不知道哪个给起的名字，从没看见他们吐出丝来。")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第四环")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>好，第四关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------冒险考验
	DefineMission( 366, "冒险考验", 307 )

	MisBeginTalk( "<t>接下来有点残忍，你的敌人是深蓝群岛里（2631,2048）附近可爱的<y黄宝石海豚>，不知道他们身上的黄宝石到底是不是真的。")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第五环")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>好，第五关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------冒险考验
	DefineMission( 367, "冒险考验", 308 )

	MisBeginTalk( "<t>接下来，哦，狂风水母的兄弟，深蓝群岛（1275,3634）附近的<y飓风水母>就是你的对手，被给我留情面，使劲地抽。")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第六环")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>好，第六关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------冒险考验
	DefineMission( 368, "冒险考验", 309 )

	MisBeginTalk( "<t>接下来，深蓝群岛（3785,1975）附近的<y成年宝石海豚>，又是可怜的生物阿，愿神原谅我。")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第七环")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>好，第七关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------冒险考验
	DefineMission( 369, "冒险考验", 310 )

	MisBeginTalk( "<t>接下来，加纳海岸（2790,1286）附近的<y樱花13海盗指挥舰>，这次的难度比较大，已经到这里了，坚持住啊。")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第八环")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>好，第八关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------冒险考验
	DefineMission( 370, "冒险考验", 311 )

	MisBeginTalk( "<t>接下来是深蓝群岛（370,2317）附近的<y有刺的骨鱼>，它们实在太有碍观瞻了，为了蔚蓝的星球，消灭他们。")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第九环")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>好，第九关你已经闯过了，我要继续了")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------冒险考验
	DefineMission( 371, "冒险考验", 312 )

	MisBeginTalk( "<t><t>最后，也该为政府做些事情了，恩，破坏位于魔女之海（2891,260）的<y北方海盗支援船>吧，真想看看那帮家伙不穿衣服是什么样子。")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "第十环")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>没想到你真的通过了所有的考验，你比有些冒险者都更加具有冒险精神呢，给你，你应得生存指南。")
	MisHelpTalk("<t>这么简单的考验都通不过？还想要冒险的证明？")
	MisResultCondition(HasMission, 312 )
	MisResultCondition(HasFlag, 312, 19)
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 312 )
        MisResultAction(GiveItem, 3962, 1, 4 )	
	MisResultAction(AddExp,250000,250000)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3845,6,4)
	MisResultBagNeed(2)

			
	InitTrigger()
	TriggerCondition( 1, IsMonster, 611 )
	TriggerAction( 1, AddNextFlag, 312, 10, 10 )
	RegCurTrigger( 3121 )

----------------------------贝蒂
	DefineMission( 372, "贝蒂", 313 )
	
	MisBeginTalk( "<t>我建议你去找（2277,2769）的<b老奶奶贝蒂>问问，她一定知道你想要的东西。" )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "与<b老奶奶贝蒂>（2277,2769）对话")
	
	MisHelpTalk("<t>向<b老奶奶贝蒂>打听春风镇的事情")
	MisResultCondition(AlwaysFailure )


----------------------------贝蒂
	DefineMission( 373, "贝蒂", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你在说什么，春风镇，春风镇，多亲切的名字啊，我想应该有30年了吧，我跟所有的人说春风镇的事情，他们都不理我，笑我在做梦，就这样从年轻到年老，终于我都要放弃了，你却出现在我的面前给我说春风镇，这就是命运吗？")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------家乡
	DefineMission( 374, "家乡", 315 )

	MisBeginTalk( "<t>对不起，我可能说了很多废话，可能你不会相信，我曾经是春风镇的居民。<n><t>本来我们一家四口，安乐的生活在春风镇里，直到有一天出海游玩的时候遇到了巨浪，我们乘坐的船毫无抵抗的沉没了，我被海军的舰队救起，自此与家人失去联系，由于没有生存能力，我最终被海军安排在白银城的孤儿院里，起初很担心我的家人，很想回去，但是，没有人相信我的说法，没有人肯冒险去那片未知的领域，日子就这样一天天过去，现在我老了，想回估计也回不去了，如果你要去那里冒险的话，请你帮我把一样东西带回去好吗？它就放在l雷霆的银行里，如果你答应我这个条件，我就告诉你春风镇的位置。")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "取回<b贝蒂>放在雷霆银行的东西")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>好孩子，我就知道你一定能拿到东西的，这个耳环是我遇难的时候带的，我的姐姐还有一个一模一样的，看见它就像看见我的姐姐，你帮我把这个带回春风镇吧，亲手交给我的姐姐，如果她还活着的话。<n><t>对了，这个是海轮，当你迷失方向的时候就看一眼吧。<n><t>如果我没记错的话春风镇的大概位置是在深蓝群岛的东南方，在他周围还有秋岛和夏岛，当你看到一个锚型岛屿的时候你离春风镇就不远了，祝你好运孩子。")
	MisHelpTalk("<t>我的东西就放在雷霆堡的银行里，快去快回啊，不知道我这把老骨头还能撑多久")
	MisResultCondition(HasMission, 315 )
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(GiveItem, 4237, 1 , 4)
	MisResultAction(SetRecord, 315 )
	MisResultAction(ClearMission, 315 )
	MisResultBagNeed(1)
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4235 )
	TriggerAction( 1, AddNextFlag, 315, 1, 1 )
	RegCurTrigger( 3151 )


-----------------------------------贝蒂的耳环
	DefineMission( 375, "贝蒂的耳环", 316 )

	MisBeginTalk( "<t>你的事情，贝蒂已经跟我说过了，这个东西是贝蒂最后的希望，我真不知道你这样一个弱不禁风的家伙凭什么有信心可以安全的把婆婆的东西送过去。<n><t>不管如何，即使被经理辞退也好，除非你能打破雷欧创下的连续杀死<y大型极地熊100只>的纪录，证明你的能力，否则别想拿到婆婆的东西。<n><t>这种大型动物一般生活在（3101,666）附近")
	MisBeginCondition(NoRecord, 316)
	MisBeginCondition(HasMission, 315)
	MisBeginCondition(NoMission, 316)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 316)
	MisBeginAction(AddTrigger, 3161, TE_KILL, 504, 100)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打破雷欧创下的纪录")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisResultTalk("<t>没想到你真的去了，而且还出色的完成了任务，看来，又有嘲笑雷欧的材料了，哈哈，给你，婆婆的东西，保管好哦，不然，我不会放过你的。<n><t>对了，雷霆军港酒吧服务员·米娜好像有一个花纹和这个很像的胸针，你要是有时间，不妨去看看她吧。")
	MisHelpTalk("<t>连续杀死<y大型极地熊100只>的纪录是不是太简单了，我正在考虑要不要给你增大难度。")
	MisResultCondition(HasMission, 316 )
	MisResultCondition(HasFlag, 316, 100)
	MisResultAction(SetRecord, 316 )
	MisResultAction(ClearMission, 316 )
        MisResultAction(GiveItem, 4235, 1, 4 )	
	MisResultBagNeed(1)
 		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )
	TriggerAction( 1, AddNextFlag, 316, 1, 100 )
	RegCurTrigger( 3161 )


-------------------------------------------------家乡
	DefineMission( 376, "家乡", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你的事情，贝蒂已经跟我说了，经过这么多年终于有人愿意帮助她了，你身上的伤痕也证明了你们的英勇，拿去吧，婆婆最后的希望，请妥善保管她，了却婆婆最后的心愿。<n><t>对了，雷霆军港酒吧服务员·米娜好像有一个花纹和这个很像的胸针，你要是有时间，不妨去看看她吧。")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 377, "家乡", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你的事情，贝蒂已经跟我说了，经过这么多年终于有人愿意帮助她了，你身上的伤痕也证明了你们的英勇，拿去吧，婆婆最后的希望，请妥善保管她，了却婆婆最后的心愿。<n><t>对了，雷霆军港酒吧服务员·米娜好像有一个花纹和这个很像的胸针，你要是有时间，不妨去看看她吧。")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 560, "家乡", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你的事情，贝蒂已经跟我说了，经过这么多年终于有人愿意帮助她了，你身上的伤痕也证明了你们的英勇，拿去吧，婆婆最后的希望，请妥善保管她，了却婆婆最后的心愿。<n><t>对了，雷霆军港酒吧服务员·米娜好像有一个花纹和这个很像的胸针，你要是有时间，不妨去看看她吧。")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 561, "家乡", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你的事情，贝蒂已经跟我说了，经过这么多年终于有人愿意帮助她了，你身上的伤痕也证明了你们的英勇，拿去吧，婆婆最后的希望，请妥善保管她，了却婆婆最后的心愿。<n><t>对了，雷霆军港酒吧服务员·米娜好像有一个花纹和这个很像的胸针，你要是有时间，不妨去看看她吧。")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 562, "家乡", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你的事情，贝蒂已经跟我说了，经过这么多年终于有人愿意帮助她了，你身上的伤痕也证明了你们的英勇，拿去吧，婆婆最后的希望，请妥善保管她，了却婆婆最后的心愿。<n><t>对了，雷霆军港酒吧服务员·米娜好像有一个花纹和这个很像的胸针，你要是有时间，不妨去看看她吧。")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------古老的胸针
	DefineMission( 378, "古老的胸针", 317 )

	MisBeginTalk( "<t>古老的胸针吗？我是有一个，对，就是和这个耳环一样花纹的，我记得好像是和我男朋友在沙滩上散步的时候捡到的。<n><t>什么，你想要？不行，我很喜欢的，别人出5000块我都没卖，什么，你愿意出1万块，不行，这个是我和男朋友爱情的象征，再多钱也不卖，5万？让我想想，最少10万，少一分也不行，行就成交，一手交钱，一手交货。")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "花10万买<b酒吧服务员·米娜>（990,1263）的胸针")
	
	MisResultTalk("<t>呵呵，10万算便宜你了，不过，既然说了就要算数，给你，要保管好哦，以后会有用的。")
	MisHelpTalk("<t>不够钱别来找我，我其实根本不想卖的，看在你求我的份上才肯卖的，你居然还想降价。")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 317 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(GiveItem, 4236, 1, 4 )
	MisResultAction(SetRecord, 317 )
	MisResultAction(ClearMission, 317 )
	MisResultAction(AddExp,180000,180000)
	MisResultAction(AddMoney,15000,15000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3848,30,4)
	MisResultBagNeed(2)
	

-----------------------------------命运之轮
	DefineMission( 379, "命运之轮", 318 )

	MisBeginTalk( "<t>由于地理位置偏僻，这里好久都没人经过了，你说你是被一个声音引导过来的？那你能站在这里真是幸运了。<n><t>这附近时常出没各种危险的生物，而比这些生物更危险的是樱花13海盗团，他们经常装作溺水的人，吸引过往的船只去救援，然后袭击这些船只，我想你刚才遇到的就是这些人吧，我们前几天的运输船就被袭击了。<n><t>既然你有能力来带到这里，不如帮我们把<r补给品>抢回来吧，我会将补给的一部分给你作为报酬。")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "帮补给站的人夺回<r补给品>")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>太好了，虽然不是全部的补给，但这样至少在下次补给到来之前不会饿死了，非常感谢你，这是答应给你的报酬。")
	MisHelpTalk("<t>帮帮我吧，没有那些补给我就要饿死在岛上了，我上有老下有小，中间还有一个等我回家的妻子，你忍心让这样一个可怜的生命消失吗？")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------命运之轮
	DefineMission( 380, "命运之轮", 319 )
	
	MisBeginTalk( "<t>我知道，你为我夺回补给已经很费心了，实在不应该继续麻烦你帮忙，但是，你看到了，现在补给线上都是海盗，下一次补给不知道什么时候会来，求你帮忙把这里的情况跟下一个补给站的兄弟说一下，叫他作好挨饿的准备。" )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "与海港指挥·瓦雷米（2041,1355）对话")
	
	MisHelpTalk("把补给品被劫的事情告诉<b哈尔补给站>的<b海港指挥·瓦雷米>。")
	MisResultCondition(AlwaysFailure )



-----------------------------------命运之轮
	DefineMission( 381, "命运之轮", 320 )

	MisBeginTalk( "<t>什么,你说什么,有没有搞错,又没有补给,第三次了,我真不想干了，工资又少，还要经常被海盗打劫，最惨的是三天两头没饭吃，还让不让人活了。<n><t>好心人啊，好事做到底，送佛送到西，你能不能帮我一个忙。<n><t>这附近有一个渔场，我没有粮食吃的时候都是到那里去打鱼吃的，不过，现在却被一群怪物霸占了，您看，象我们这种小人物，大概一辈子都打不过那些东西了，不过，你就不一样了，我相信你一定可以打败那些怪物，所以……，能不能帮我打些鱼回来，以后的一段时间我可能要靠这些鱼过日子了。")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "帮海港指挥·瓦雷米（2041,1355）带回20个<r生鱼片>")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>你看，我就说你一定做得到的，我这里已经没剩下什么可以给你的东西了，只有一条消息，也许你会很感兴趣。")
	MisHelpTalk("<t>什么？你没学打鱼的技能，哦，麦高德，看来我只有等死了。")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------命运之轮
	DefineMission( 382, "命运之轮", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>你知道吗？提炼海洋中各种怪物的油可以炼出一种特殊的药物，吃了这种药物的人，可以听懂，看懂各种语言文字，甚至与怪物交流。<n><t>别用那种眼光看着我，实话告诉你，我不知道怎么做，哎，别走啊，我知道有一个人知道配方，他就在下一个补给站的（3153,674）当海港指挥，你去问他好了，就说是我介绍的，别看我这么弱，我可还是他的救命恩人呢。")
	
	MisNeed(MIS_NEED_DESP, "到<b弗里敦补给站>与<b海港指挥·法第尔>（3153,674）交谈")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------命运之轮
	DefineMission( 383, "命运之轮", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>该死的家伙，他又在到处乱说了，要不是看在他救过我一次的份上，我才懒得理他。<n><t>至于万能翻译药吗，哦，我没跟你说过吗，这个药的名称叫万能翻译药，我的的确会做，不过，药的原料很难找的，如果你可以找到原料，我可以为你制作。")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------命运之轮
	DefineMission( 384, "命运之轮", 323 )

	MisBeginTalk( "<t>要制造万能药，你需要弄到带毛刺的鱼骨，粗壮的鱼骨，腐烂的鱼骨各30根，你那个眼神是什么意思，是药三分毒吗，我还能骗你不成。")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 30)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "为海港指挥·法第尔（3153,674）带回制作万能药的原料")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)

	MisResultTalk("<t>恩,恩,就是这些了,你等一下,我马上做给你(呵呵,这下能听懂附近的人鱼在说什么了^_^),咳咳,囊那么乃,囊那么乃,你慢慢等啊~~~")
	MisHelpTalk("<t>什么？你不知道哪种怪物身上有这些原料，I服了you，记住了，有刺的骨鱼，饥饿的骨鱼，食腐骨鱼，什么，你还想知道它们在哪里出没？到这里自己查去http://inews.moliyo.com/hdw_2/kop/kopmap.shtml")
	MisResultCondition(HasMission, 323 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultAction(TakeItem, 4938, 30 )
	MisResultAction(TakeItem, 4957, 30 )
	MisResultAction(TakeItem, 4976, 30 )
	MisResultAction(SetRecord, 323 )
	MisResultAction(ClearMission, 323 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 323, 1, 30 )
	RegCurTrigger( 3231 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 323, 31, 30 )
	RegCurTrigger( 3232 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 323, 61, 30 )
	RegCurTrigger( 3233 )



-----------------------------------命运之轮
	DefineMission( 385, "命运之轮", 324 )

	MisBeginTalk( "<t>啊……我快不行了……，看来这是报应啊，我不该偷吃你的药的，你看，……现在报应来了……，啊，好痛苦啊，让我死吧，不，等等，你真的就这么留下我一个人吗？<n><t>我不要啊，求求你，救救我吧，我的药方是从<p埃弗里补给站>（2042,635）的<b海港指挥·布纽>那里偷回来的，他一定知道怎么配制解药，你看，我什么都告诉你了，求你帮我一下吧。")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "从<p埃弗里补给站>的<b海港指挥·布纽>（2042,635）那里获得<r万能解药>")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t>啊~，好苦的药啊，要不是为了保命，就是死我也不会吃的，别介意啊，刚被救活的人都是没有逻辑的。<n><t>什么，你说什么还钱的，我听不清楚啊，我还忙，回见啊。")
	MisHelpTalk("<t>……，我已经没有力气说话了，后面的全靠你了")
	MisResultCondition(HasMission, 324 )
	MisResultCondition(HasMission, 325 )
	MisResultCondition(HasItem, 4254, 1)
	MisResultAction(TakeItem, 4254, 1)
	MisResultAction(SetRecord, 324 )
	MisResultAction(ClearMission, 324 )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4254 )
	TriggerAction( 1, AddNextFlag, 324, 1, 1 )
	RegCurTrigger( 3241 )

-----------------------------------命运之轮
	DefineMission( 386, "命运之轮", 325 )

	MisBeginTalk( "<t>什么，海港指挥·法第尔说自己会做万能翻译药，还偷吃了为你做的药？<n><t>他活该，让他去死吧，每次都到我这里来偷药方，抓药又不给钱，对了，他还欠我10万块钱呢，让他死之前把银行密码告诉我。<n><t>好了，好了，我这个人就是口硬心软，给你这是解药，快点带给海港指挥·法第尔，顺便跟他说我等着他还钱，恩，如果，你珍惜生命的话，别再相信那个人，还有那个万能……，算了，等你回来再说吧")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "把万能解药带给<b海港指挥·法第尔>（3153,674），并问他要回10万块欠款")

	MisResultTalk("<t>什么，那个家伙跟你装聋作哑不认账，好，下次用药毒哑他。<n><t>不说那个人了，让我们来谈一下万能翻译药的事情。")
	MisHelpTalk("<t>快去呀，可能再等一会我就要改变主意了~~")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------命运之轮
	DefineMission( 387, "命运之轮", 326 )

	MisBeginTalk( "<t>那个药方是我从海中的一个宝箱中捞出来的，初始我还不相信真的有用，直到我按照药方配出来的药被一只羊吃了之后居然能听懂人话，并在我要宰它的前一天晚上逃跑了，我才相信这是真的，但是，为时已晚，那个药方被那只疯羊咬碎了丢到海里，我现在手上只剩下三分之一不到，这就是为什么海港指挥·法第尔按照药方配药会中毒的原因。<n><t>如果，你肯为我找回失去的药方的话，我可以帮你尝试配置万能翻译药。")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找到万能翻译药的<r药方碎片>")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t>恩，恩，就是这些，让我来看看上面写了什么，恩，半斤这个，再加半斤这个……咦，这是怎么回事，最后一位药居然只写了一半，这要我怎么办啊，不管了，先都做出来再说，别怕，不管用哪个做出来的都不会死人的，你看，这就做好了，拿去，赶快尝尝。<n><t>你看，我说吃了没事吧，现在，你不管遇到哪里的人都可以听懂他们的话了。")
	MisHelpTalk("<t>还没凑齐碎片吗？哎，这么长时间了，难为你了。<n><t>如果我没猜错，加纳海妖和莉娜海妖的嫌疑最大。")
	MisResultCondition(HasMission, 326 )
	MisResultCondition(HasItem, 4255, 10)
	MisResultAction(TakeItem, 4255, 10 )
	MisResultAction(SetRecord, 326 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 326 )
	MisResultAction(AddExp,320000,320000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3846,1,4)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4255 )
	TriggerAction( 1, AddNextFlag, 326, 1, 10)
	RegCurTrigger( 3261 )

----------------------------语言问题
	DefineMission( 559, "语言问题", 387 )
	
	MisBeginTalk( "<t>这些人都在说什么？我怎么都听不懂？难道是另一种语言？<n><t>这可怎么办？对了，（2277,2769）的<b老奶奶贝蒂>是从这边过来的却能说我们的语言，他一定知道些什么。" )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "与<b老奶奶贝蒂>（2277,2769）对话")
	
	MisHelpTalk( "找<b老奶奶贝蒂>谈一下" )
	MisResultCondition( AlwaysFailure )

----------------------------语言问题
	DefineMission( 388, "语言问题", 327)
	
	MisBeginTalk( "<t>哦，小伙子，你去过春风镇了吗？<n><t>什么，你说你听不懂他们说什么？<n><t>难道你没有吃万能翻译药吗？<n><t>这些年轻人啊，不知道在想什么，老人的关心都当耳旁风，我再告诉你一次，听好了，（1310,530）的<b酒吧服务员·芭芭拉>知道一个配方，不过，好像要很多钱的样子，我的药是一个陌生人给我的，想我年轻的时候也是倾国倾城啊，那美妙的青春期啊~~" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "去找<b酒吧服务员·芭芭拉>（1310,530）聊一下万能翻译药")
	
	MisHelpTalk("与<b酒吧服务员·芭芭拉>对话")
	MisResultCondition(AlwaysFailure )



-----------------------------------语言问题
	DefineMission( 389, "语言问题", 328 )

	MisBeginTalk( "<t>你想要万能翻译药的药方吗？<n><t>找我好了，我这里专门出售各种药材的配方，价格合理，童叟无欺，话说这万能翻译药，上能翻译海军密码，下能翻译海盗宝藏，只要吃一颗就可以上天入地无所不能……，什么，你叫我闭嘴？叫这么可爱，纯洁，天真的姑娘闭嘴，你真是……这是什么？你说你愿意出10万块买我的药方和让我闭嘴，那太好了，我对你的敬仰真如滔滔江水……，别用那种眼光看着我，我闭嘴还不行吗？<n><t>看来我要拿10万块来换药方了，我到底要不要换呢？")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<r10万海盗币>")
	
	MisResultTalk("<t>果然慧眼识宝物，这个万能药的药方是你的了。")
	MisHelpTalk("<t>10万都拿不出来，还出来学人家当海盗，我就不说什么了，你拿到药方也没有用。")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
        MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------语言问题
	DefineMission( 391, "语言问题", 330 )

	MisBeginTalk( "<t>艾文吗，好久不见了，我不是说你，我是说那张药方，对，它叫艾文，500年前被人封印的可怜灵魂，要帮人配置5万份药才能解脱，不过，我想它已经忘记配过多少次了，这个可怜的家伙现在甚至以取笑需要配药的人为乐。<n><t>好了，不谈那个家伙了，为了这张药方你破费了不少吧，那个芭芭拉真是死要钱，既然你已经被人坑害了那么多，我也就不难为你了，配药我给你打个对折，只要<r5万>好了。<n><t>准备好钱再来找我，记得少于<r5万>不要来见我。")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "带齐配方药材外加<r5万海盗币>")

	MisResultTalk("<t>这么快？我是不是要太少了，不如再加5万块吧，……，你拿刀干什么？我只是开玩笑而已，何必当真呢，你看，药我已经准备好了，快把刀子放下，我晕刀。<n><t>这个就是万能翻译药，快吃吧<n><t>(汗，他吃了居然没有问题？）你已经获得万能翻译的功能了，再没有什么语言是你听不懂的了。")
	MisHelpTalk("<t>有钱有药，没钱没药，5万拿来，药方开开。")
	MisResultCondition(HasMission, 330 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultCondition(HasItem, 4974, 10)
	MisResultCondition(HasMoney, 50000 )
	MisResultAction(SetRecord, 30)
	MisResultAction(ClearMission, 30)
	MisResultAction(TakeItem, 4938, 30)
	MisResultAction(TakeItem, 4957, 30)
	MisResultAction(TakeItem, 4976, 30)
	MisResultAction(TakeItem, 4974, 10)
	MisResultAction(TakeMoney, 50000 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 330 )
      	MisResultAction(AddExp,550000,550000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3908,1,4)	
	MisResultAction(GiveItem,4708,1,4)
	MisResultBagNeed(3)

----------------------------远来是客
	DefineMission( 392, "远来是客", 331)
	
	MisBeginTalk( "<t>你好，年轻人，第一次来这里吧，不用拘束，把这里的每一个人都当作你的朋友就对了，我们这里有句老话，叫远来是客，你现在已经是我们所有人的客人了，让我把你引荐给这里的人吧。<n><t>拿着，这是客人的标志，带着这个和村子里的人对一下话吧，他们都会热情地招待你的。" )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "与镇子里的人聊一下，认识一下整个镇子")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>……恩，恩，你说你有我儿子的信息了吗？哦，你看我这眼神，我还以为是周吴郑呢，最近被我儿子的事……，唉，跟你说这个有什么用呢，你瞧我。<n><t>怎么样，和镇里的人还处得来吗，没有人难为你吧？")
	MisHelpTalk("<t>已经跟所有人都的都过招呼了吗？快去吧，有很多人都急着要见你呢。")
	MisResultCondition(HasMission, 331)
	MisResultCondition(HasItem, 4242, 7)
	MisResultAction(TakeItem, 4242, 7 )
	MisResultAction(SetRecord, 331 )
	MisResultAction(ClearMission, 331 )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4242 )
	TriggerAction( 1, AddNextFlag, 331, 10, 7)
	RegCurTrigger( 3311 )

----------------------------远来是客
	DefineMission( 393, "远来是客", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>小伙子，不错嘛，能够来到这里，证明你一定是一个有实力的家伙，以后武器出了什么问题都可以来找我，我一定尽最大努力帮助你。")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------远来是客
	DefineMission( 394, "远来是客", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你瞧，衣服都破成这样了，快让大妈来看看，你一定经历了非比寻常的冒险吧，以后冒险前记得来我这里看看，我的肉包子一定让你满意。")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------远来是客
	DefineMission( 395, "远来是客", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你好，远方的客人，不用客气，叫我娜儿好了，我这里别的没有，就是杂货多，如果你冒险中遇到困难，来找我好了，大家朋友一场，我尽量给你8折。")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------远来是客
	DefineMission( 396, "远来是客", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>呦，小朋友，新来的啊，想不想带点新鲜的商品回去，我这里有刚出炉的鱼翅和燕窝，你现在买，我算你便宜点，给你打个8折，怎么样？哦，不要啊，那你需要买贸易品的时候记得来找我啊，我这里什么都有。")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------远来是客
	DefineMission( 397, "远来是客", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>想离开春风镇吗？找我好了，至今还没有人投诉过我的传送技术。<n><t>别走啊，记得想离开岛的时候来找我啊。")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------远来是客
	DefineMission( 398, "远来是客", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>又见面了，想出海吗？")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------远来是客
	DefineMission( 399, "远来是客", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>IC，IP，IQ卡，统统告诉我密码，请注意，这不是打劫，如果你有什么东西存在我这里，只有出示以上的密码才能取出，切记切记。")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------画龙点睛
	DefineMission( 510, "画龙点睛", 339 )

	MisBeginTalk( "<t>好想要一个漂亮的胸针啊，如果你愿意给我一个<b古老的胸针>，我可以告诉你一个秘密。")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给<b银行总管·王墨>（3290,2512）一个<b古老的胸针>")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>既然你肯给我这么昂贵的道具，我这就告诉你我的秘密。")
	MisHelpTalk("<t>什么？你没有胸针？我明明刚刚还看到的，难道我眼花了。")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------画龙点睛
	DefineMission( 511, "画龙点睛", 340 )

	MisBeginTalk( "<t>秘密就是~~~~~哈哈，你被骗了，我只是想用这个胸针来做我正在画的龙的眼睛而已，多谢你支持我哦，我们这里有句老话，叫送佛送到西，不如，你再给我找些染料过来吧，我只差一点就可以完成“百龙图”了，拜托，拜托。")
	MisBeginCondition(NoRecord, 340)
	MisBeginCondition(HasRecord, 339)
	MisBeginCondition(NoMission, 340)
	MisBeginAction(AddMission, 340)
	MisBeginAction(AddTrigger, 3401, TE_GETITEM, 1787, 5)
	MisBeginAction(AddTrigger, 3402, TE_GETITEM, 1788, 5)
	MisBeginAction(AddTrigger, 3403, TE_GETITEM, 1789, 5)
	MisBeginAction(AddTrigger, 3404, TE_GETITEM, 1790, 5)
	MisBeginAction(AddTrigger, 3405, TE_GETITEM, 1791, 5)
	MisBeginAction(AddTrigger, 3406, TE_GETITEM, 1792, 5)
	MisBeginAction(AddTrigger, 3407, TE_GETITEM, 1793, 5)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<r红色染料>*5<r橙色染料>*5<r黄色染料>*<r绿色染料>*5<r青色染料>*5<r蓝色染料>*5<r紫色染料>*5")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>你怎么回来这么晚啊，你看，我的毛笔都干了，这下不好办了。")
	MisHelpTalk("<t>快去快回啊，别让我的毛笔干了，各色染料每样5个，别搞错了哦。")
	MisResultCondition(HasMission, 340)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1788, 5)
	MisResultCondition(HasItem, 1789, 5)
	MisResultCondition(HasItem, 1790, 5)
	MisResultCondition(HasItem, 1791, 5)
	MisResultCondition(HasItem, 1792, 5)
	MisResultCondition(HasItem, 1793, 5)
	MisResultAction(TakeItem, 1787, 5 )	
	MisResultAction(TakeItem, 1788, 5 )	
	MisResultAction(TakeItem, 1789, 5 )	
	MisResultAction(TakeItem, 1790, 5 )	
	MisResultAction(TakeItem, 1791, 5 )	
	MisResultAction(TakeItem, 1792, 5 )	
	MisResultAction(TakeItem, 1793, 5 )	
	MisResultAction(SetRecord, 340 )
	MisResultAction(ClearMission, 340 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1787 )
	TriggerAction( 1, AddNextFlag, 340, 1, 5 )
	RegCurTrigger( 3401 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1788 )
	TriggerAction( 1, AddNextFlag, 340, 6, 5 )
	RegCurTrigger( 3402 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1789 )
	TriggerAction( 1, AddNextFlag, 340, 11, 5 )
	RegCurTrigger( 3403 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1790 )
	TriggerAction( 1, AddNextFlag, 340, 16, 5 )
	RegCurTrigger( 3404 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1791 )
	TriggerAction( 1, AddNextFlag, 340, 21, 5 )
	RegCurTrigger( 3405 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1792 )
	TriggerAction( 1, AddNextFlag, 340, 26, 5 )
	RegCurTrigger( 3406 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1793 )
	TriggerAction( 1, AddNextFlag, 340, 31, 5 )
	RegCurTrigger( 3407 )

-----------------------------------画龙点睛
	DefineMission( 512, "画龙点睛", 341 )

	MisBeginTalk( "<t>你知道，画龙最重要的就是点睛了，现在毛笔干了，画出来的龙眼一定不够传神，要清洗这个毛笔最少需要30个纯净的水，要我到哪里去找啊，你要负责的，你要负责的，快给我找<r30瓶纯净的水>回来，要不我用毛笔把你的脸画花")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给<b银行总管·王墨>（3290,2512）带去<r30瓶纯净的水>")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>你怎么那么慢啊，毛笔干枯了这么久，笔芯都坏掉了，你陪我笔芯啊。")
	MisHelpTalk("<t>好啊，你居然空手回来，看我画花你的脸。")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------画龙点睛
	DefineMission( 513, "画龙点睛", 342 )

	MisBeginTalk( "<t>这支毛笔的笔芯是用狐狸尾巴处最敏感的毛做成的，最能反映画画人的心，现在什么灵气都没有了，要恢复这支笔，最少需要<r10个狐狸尾巴>，你让我一个柔弱的姑娘去哪里弄啊，你要赔给我，你要赔给我，要不然，我就用你的头发作画。<n><t>狐狸尾巴怎么弄？哼，去（3322,2460）找狐道士要吧。")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给<b银行总管·王墨>（3290,2512）带去<r10个狐狸尾巴>")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>好漂亮的狐狸尾巴啊，我等这个好久了，终于可以做狐狸围脖了，谢谢你啊。<n><t>不好意思骗你了这么久，这支毛笔不过是个摆设而已，早就不能画了，咱是实惠人，不会让你白帮忙的，这个给你，希望对你以后的冒险有帮助。")
	MisHelpTalk("<t>你还敢空手回来，看我剃光你的头发来祭我的毛笔。")
	MisResultCondition(HasMission, 342)
	MisResultCondition(HasItem, 165, 10)
	MisResultAction(TakeItem, 165, 10 )
	MisResultAction(SetRecord, 342 )
	MisResultAction(ClearMission, 342 )
	MisResultAction(AddExp,700000,700000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(GiveItem,3885,1,4)	
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 165 )
	TriggerAction( 1, AddNextFlag, 342, 1, 10 )
	RegCurTrigger( 3421 )


-----------------------------------失踪
	DefineMission( 514, "失踪", 343 )

	MisBeginTalk( "<t>既然你问了，我也就不隐瞒了。<n><t>在这个镇子的下面有个<p地下水道>，曾经是整个镇子的供水中心，后来一个轻微的地震打开了一个通往神秘的海底隧道的缺口，之后深埋在海底隧道中的恶魔在一瞬间吸干了这里生命的气息，所有在<p地下水道>的工作人员都变成了僵尸，而整个<p地下水道>从那天起就成了连接现实与地狱的通道。<n><t>我的儿子，你知道，所有的男孩子都向往着探险和宝藏，前几天与一群海盗一起去<p地下水道>探险，一去就再没有音讯，我几次想到下地水道去找他，都被大伙拦住了，可是我实在担心我的儿啊，如果你哪一天想去，我是真的不希望你去哪里探险的，但是我是说如果你想去的时候，帮我在里面找一下我的儿吧。")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到<p地下水道>中搜索<酒店老板·裴蒂>儿子的下落")

	MisResultTalk("<t>你说有个僵尸叫你带个口信给我吗？我想那一定是我可怜的儿了，我不用听也知道他说了什么，他一向很孝顺的，怎么偏偏就出了这种事情呢。")
	MisHelpTalk("<t>年轻人，你是我唯一的希望了，希望你能带给我好消息。")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------失踪
	DefineMission( 515, "失踪", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>哦，请等等，我还没有被完全感染，在我还有人性的时候请听我说最后一句吧，请你跟我的母亲说，我永远爱她，不孝儿不能回去孝敬她老人家了，让她保重，我会在天国祝福你的。<n><t>对了，我母亲的名字叫裴蒂，住在（3287,2501），谢谢你了。")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------失踪
	DefineMission( 516, "失踪", 345 )

	MisBeginTalk( "<t>据我所知，（3279,2501）的<r杂货商人·鲁娜儿>那里有可以克制僵尸化的<r灵符>，如果你有空的话，帮我跑一趟吧，其实我本想亲自去的，但是自从上次她跟我儿子的关系被我搞僵后，我实在没脸再去找她了。<n><t>你告诉她我儿子被困在地下水道里了，念旧情，她一定会帮忙的，拜托你了。")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找<b杂货商人·鲁娜儿>（3279,2501）配制<r灵符>")

	MisHelpTalk("<t>鲁娜儿肯帮忙了吗？希望还来得及。")
	MisResultCondition(AlwaysFailure )

-----------------------------------灵符
	DefineMission( 517, "灵符", 346 )

	MisBeginTalk( "<t>什么，裴永军被困在地下水道里了？怎么偏偏在这个时候，真是急死人了，明告诉你吧，制造灵符需要用到僵尸头上的<r鬼符>，只有用这些吸收了邪恶之气的<r鬼符>才能制造出具有回天效力的<r灵符>。<n><t>上次用来做<r灵符>的原料是几个月前来的一批海盗卖给我的，早就用光了，现在也没什么人下地下水道了，因此，也很久没有做过了，如果你可以尽快找来<r20张鬼符>，我想还来得及救裴永军。")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给<b杂货商人·鲁娜儿>（3279,2501）带回<r20张鬼符>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>快把鬼符给我，希望还来得及，急急如律令，护法现身，我哒~~~~~，给你，这个就是灵符，快去交给裴永军，让他贴在自己的头上。")
	MisHelpTalk("<t>抓紧时间，再晚了恐怕就来不及了，记住最少也要20张鬼符。")
	MisResultCondition(HasMission, 346 )
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262,20 )
	MisResultAction(GiveItem, 4244, 1, 4)
	MisResultAction(SetRecord, 346 )
	MisResultAction(ClearMission, 346 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 346, 1, 20 )
	RegCurTrigger( 3461 )

-----------------------------------灵符
	DefineMission( 518, "灵符", 347 )

	MisBeginTalk( "<t>……，这是哪里，我记得我已经彻底失去了意识啊？<n><t>怎么又醒过来了？这是什么，鲁娜儿的灵符吗？<n><t>我就知道她还想着我，可是，我已经回不去了，即使遏制住我身体的僵尸化，我这个身体也永远见不得阳光了，帮我跟鲁娜儿说，让她忘记我吧")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "把<b僵尸·裴永军>不能离开地下水道的消息告诉<b杂货商人·鲁娜儿>（3279,2501）")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------灵符
	DefineMission( 519, "灵符", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你说裴永军永远也离不开那个阴暗的下水道了吗？那不如我也去陪他吧，没有他在的日子，那些记忆就像把尖刀每天割着我的伤口，我不想这样的日子再继续了，让一切都结束吧。")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------爱的奇迹
	DefineMission( 520, "爱的奇迹", 349 )

	MisBeginTalk( "<t>年轻人，我看到你眼中的悲伤，你一定在为某对情侣伤心吧。<n><t>你相信爱吗？当爱存在的时候，可以创造一切奇迹，如果，你想帮助那两个人的话，你需要找到女神的眼泪，人鱼的心脏，飞鸟的羽毛这三样东西，他们都是爱的证明，如果，你能找到这些东西的话，我想我可以用一个古老的传说救活这两人。")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "带回<r女神的眼泪>,<r人鱼的心脏>,<r飞鸟的羽毛>")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>女神的眼泪为世人而流，是博爱的象征；人鱼的心脏是情人的眼泪，是情爱的象征；飞鸟的羽毛是父母的寄托，是慈爱的象征，当有人能够凑齐这三样东西的时候，爱就会引导奇迹的发生，这就是古老传说的内容，而将这三样东西融合在一起而成的这个胸针就是拯救这对情侣的关键，把他交给裴永军，只要带着这个他就可以像正常人一样在太阳下走动。")
	MisHelpTalk("<t>虔诚的女人，博学的老人，和勇敢的战士会给你指引，去找他们吧。")
	MisResultCondition(HasMission, 349 )
	MisResultCondition(HasItem, 4245, 1 )	
	MisResultCondition(HasItem, 4246, 1 )	
	MisResultCondition(HasItem, 4247, 1 )
	MisResultAction(TakeItem, 4245, 1 )	
	MisResultAction(TakeItem, 4246, 1 )	
	MisResultAction(TakeItem, 4247, 1 )
        MisResultAction(GiveItem, 4248, 1 ,4)	
	MisResultAction(SetRecord, 349 )
	MisResultAction(ClearMission, 349 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4245)	
	TriggerAction( 1, AddNextFlag, 349, 5, 1 )
	RegCurTrigger( 3491 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4246)	
	TriggerAction( 1, AddNextFlag, 349, 10, 1 )
	RegCurTrigger( 3492 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4247)	
	TriggerAction( 1, AddNextFlag, 349, 15, 1 )
	RegCurTrigger( 3493 )

-----------------------------------女神的眼泪
	DefineMission( 521, "女神的眼泪", 350 )

	MisBeginTalk( "<t>有多少年了，居然还有人记得这个传说，女神的眼泪不是别的东西，它就是只有在沙窟深处才有的<r最纯净的水晶沙>，只有最虔诚的人才能触碰它，只有怀着爱心的人才能拿走它，所有窥视它的盗贼都只有死亡的下场，你不妨去试试。")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到<p沙窟>深处带回<r最纯净的水晶沙>")

	MisResultTalk("<t>纯洁的心灵必然会得到自然的回报，最纯净的水晶沙已经在你的手里就是最好的证明。")
	MisHelpTalk("<t>记住，最纯净的水晶沙就在沙窟的尽头，梦魇守护的地方。")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------人鱼的心脏
	DefineMission( 522, "人鱼的心脏", 351 )

	MisBeginTalk( "<t>人鱼的心脏就是<r王后的皇冠>，没想到你这么年轻的人居然知道这个。<n><t>人鱼的心脏是威廉一世送给他妻子的一颗钻石，后来被镶在皇冠上，后来随着王宫的沦陷失去了踪迹，不过，传说它有人鱼的诅咒，所有到王宫遗址搜寻这颗钻石的盗贼都有去无返，你不妨去试试。")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到<p王宫遗址>带回<r王后的皇冠>")

	MisResultTalk("<t>你真的找到了王后的皇冠？太不可思议了，也许你真的可以完成那个传说。")
	MisHelpTalk("<t>我敢肯定王后的皇冠就在那片废墟之中，具体地点吗，就没有活人知道了。")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------飞鸟的羽毛
	DefineMission( 523, "飞鸟的羽毛", 352 )

	MisBeginTalk( "<t>飞鸟的羽毛吗，它曾经是众多勇士追逐的称号呢，那是作为猎人最高的称号，而得到他的方法吗，很简单，在被暴风雪眷属的地方有一个迷宫，迷宫的深处有许多宝箱，找到并活着拿回里面的<r冰晶羽毛>就可以了，我想你可以做得到的")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到<p魔方世界>深处带回<r冰晶羽毛>")

	MisResultTalk("<t>能带回冰晶羽毛的人，你是第三个，不好意思，由于某些原因，我不能告诉你前几个人的名字，不过，你早晚会知道的。")
	MisHelpTalk("<t>记住，迷宫并不是所有人都能找到的，而能活着带回冰晶羽毛的，到现在也没几个人。")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------爱的奇迹
	DefineMission( 524, "爱的奇迹", 353 )

	MisBeginTalk( "<t>你是说我只要带着这个胸针就可以回到地面的世界了吗？<n><t>实在太感谢了，我又可以见到鲁娜儿了，快去告诉她，我马上就去见她，我一刻也等不及了，可是这该死的腿看来还要适应一段时间。")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "将好消息告诉<b杂货商人·鲁娜儿>（3279,2501）")

	MisHelpTalk("<t>真是太感谢了，我真不知道怎样报答你，愿你能永远平安。")
	MisResultCondition(AlwaysFailure )

-----------------------------------爱的奇迹
	DefineMission( 525, "爱的奇迹", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你说什么？你实现了那个古老的传说？我的裴永军马上就能回来见我了？我，我该用什么来报答你呢？你看我这个不争气的眼睛，怎么在这个时候留下眼泪了呢？我也没什么能帮忙的，如果，你以后进地下水道的时候，我可以免费帮你配制抵御尸毒的护符，让这作为我们小小的报答吧。")
	MisResultCondition(NoRecord, 353)
	MisResultCondition(HasMission, 353)
	MisResultAction(SetRecord, 353)
	MisResultAction(ClearMission, 353)	
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3348,10,4)
	MisResultAction(GiveItem,3349,10,4)
	MisResultAction(GiveItem,3350,10,4)
	MisResultBagNeed(3)

-----------------------------------尸毒
	DefineMission( 526, "尸毒", 355 )

	MisBeginTalk( "<t>你中尸毒了吗？这种尸毒很麻烦的，我已经很久不做这种护符了，但是如果，你愿意收集材料，并且交足够的钱的话，我可以帮你做护符，每张护符5000块。<n><t>如果你愿意的话，去收集<r20张鬼符>回来，我就做给你，鬼符就是下水道僵尸头上的那种东西。")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集<r20张鬼符>制作抵御尸毒的<r护符>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>（赚到了，这么多鬼符可以做一打护符了），好了，既然你收集了足够的鬼符，我就帮你做吧，离远点，小心伤着你，还有不许偷看…………<n><t>算你本分，如果方才你偷看一眼，交易就破裂了，现在吗，给你，你的护符。<n><t>如果你以后还想做护符的话记得再来找我。")
	MisHelpTalk("<t>不就20个鬼符吗？想当初我自己进去也是一搞一打，没想到你这么废。")
	MisResultCondition(HasMission, 355)
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262, 20)
        MisResultAction(GiveItem, 4249, 12 ,4)	
 	MisResultAction(SetRecord, 355 )
	MisResultAction(ClearMission, 355 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 355, 1, 20 )
	RegCurTrigger( 3551 )

-----------------------------------失踪
	DefineMission( 527, "失踪", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>什么？我的儿再也回不来了吗？也好，只要他还活着就好，这件事已经给你添了太多的麻烦了，够了，就这样结束吧，这是，那个可怜的姑娘一定很伤心吧，我太对不起他们了。<n><t>不管怎样，你还是帮了我的大忙，春风镇的人会永远记着你的，如果，我有什么可以帮忙的话，请尽管开口。")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------失踪
	DefineMission( 528, "失踪", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你实现了爱的奇迹并最终救了我的儿吗？<n><t>太感谢你了，春风镇的人永远欢迎你，你的善良之心已经得到了全镇人的认同，你永远是春风镇的座上宾，相信我，你一定会一生幸福的，如果，我有什么可以帮忙的，请尽管提。")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------神奇果实
	DefineMission( 529, "神奇果实", 358 )

	MisBeginTalk( "<t>吃了会产生变异的神奇果实吗？<n><t>我没吃过，真的没吃过，不，我是说我没听过，真的没听过，什么变异啊，神奇啦，这些字眼听起来只能和（3196,2509）的<b油李>有关，怎么会和我扯上关系，其实就算是油李也是瞎胡诌，那些什么神奇的果实啦他也肯定没见过，就知道在那里吹牛，说得跟真的一样。")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "与<b油李>（3195,2506）谈一下神奇的果实")

	MisHelpTalk("<t>我都说不知道啦，我一个老太婆还能骗你娃不成。")
	MisResultCondition(AlwaysFailure )
-----------------------------------神奇果实
	DefineMission( 530, "神奇果实", 359 )

	MisBeginTalk( "<t>那个老太太又在说我吹牛，真气死我了，别说神奇的果实了，海盗王罗森我也见过啊。<n><t>什么？你不相信，我这就给你看证据，你看我胸口上这个伤疤，就是和罗森决斗的时候留下的，想当初……，什么，你说要几个神奇的果实看看，……这个……那个，你看这个金苹果也不错啊，还有那边那个麒麟果也不错，……，好吧，我承认，我已经好久没进过那种神奇的果实了，最后一次是一年前周吴郑卖给我的，叫我卖给了一个叫什么鲁的人。<n><t>你要是想要的话，可以去找（3298,2534）的<b周吴郑>问问。")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "与<b卫兵·周吴郑>（3298,2534）谈一下神奇的果实")

	MisHelpTalk("<t>你要是想要金苹果或者麒麟果的话随时可以来找我啊。")
	MisResultCondition(AlwaysFailure )

-----------------------------------神奇果实
	DefineMission( 531, "神奇果实", 360 )

	MisBeginTalk( "<t>神奇的果实~~，不，我没见过，没见过，你不要过来，我再也不敢了，请不要杀我，我这就离开这里，我什么也不要，我只是来参观的，您的卵绝对不是我偷的，让我离开吧，我再也不到<p海底隧道>去了，那里是地狱，我不要再想了，哈哈哈，没人可以活着回来，所有的人都死了，都死了~~~~<n><t><p海底隧道>吗？我记得在下水道里有一个缺口，应该是通往海底隧道的吧，我想到那里一定可以找到这个人疯疯颠颠的理由，这一定跟神秘的果实有关，一定。")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到<p海底隧道>调查一下")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>我是一只丑小鸭，咿呀咿呀哦~~~~")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------恶魔的果实
	DefineMission( 532, "恶魔的果实", 361 )

	MisBeginTalk( "<t>你手里那个东西好眼熟啊，别拿过来，就站在那边给我看，没错，就是站在那边，慢慢的举起手来，哦，不，快把它拿走，这该死的恶魔的果实，离我越远越好，你最好也不要再带着那东西，它会给你带来不幸的。<n><t>快把那些邪恶的东西拿走，我不想再看到它们，求你饶了我吧，我不想再看见地狱了，快把它拿走，拿走~~~~")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "销毁<p果实的残渣>后再来找 <p卫兵·周吴郑>（3298,2534）")

	MisResultTalk("<t>啊，现在感觉好多了，我希望你不要介意我刚才的激动表现，如果你遇到我曾经遇到的事情，你也会和我一样激动的。")
	MisHelpTalk("<t>快把那些邪恶的东西拿走，我不想再看到它们，求你饶了我吧，我不想再看见地狱了，快把它拿走，拿走~~~~")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------周吴郑的信
	DefineMission( 533, "周吴郑的信", 362 )

	MisBeginTalk( "<t>言归正传，你说海底隧道中已经没有那种……那种果实了是吧？<n><t>这可有些奇怪了，我需要回忆一下，看看是不是那个地方记错了，在我回忆的这段时间里，你帮我把这封信送给（3290,2512）的<b王墨>吧，千万不许偷看哦，送好之后再来找我，我会把想起来的事情都告诉你。")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "将<r粉红色的信>送给 <b王墨>（3290,2512）")

	MisResultTalk("<t>信已经送过去了？她看了吗？她说什么了吗？她……，哦，咳咳，恩，我想我已经想起来一些事情了，我们来说正事吧。")
	MisHelpTalk("<t>快把信送过去，要不我总想着这个事情，没办法集中注意力回忆了。")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------恶魔的果实
	DefineMission( 534, "恶魔的果实", 363 )

	MisBeginTalk( "<t>你在地下水道中应该见到过那只巨大的冰龙了吧，没见到也没关系，我只是想把使我疯颠的元凶介绍给你认识而已，它并不是我要说的重点的。<n><t>重点是你上次提及的神奇的果实，其实它有一种更加标准化的名字叫恶魔果实，传说吃了它的人会获得恶魔的能力，但会失去一生的幸福，说句实话，直到我有幸在海底隧道遇到那只冰龙之前，我都是不相信这个传说的。<n><t>对了，这里正好有个人可以证明那可怕的恶魔果实的能力，我想你也应该见过她了，别看她很老的样子，其实她的年龄比她的外貌老多了。<n><t>不过，她估计不会承认自己与恶魔果实有关，我所知道的都告诉你了，接下来怎么做就看你自己了。<n><t>我可没说她是酒店老板哦。")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "与<p酒店老板·裴蒂>（3287,2501）谈一下恶魔果实")

	MisHelpTalk("<t>我知道的已经都告诉你了，现在让我静一静吧，回忆了那么多可怕的事情，我的疯病又要发作了。")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------防腐剂
	DefineMission( 535, "防腐剂", 364 )

	MisBeginTalk( "<t>想要制作防腐剂吗，这个很有用的，当你去到海底隧道探险的时候你会发现他会为你节省很多时间和不必要的开支。<n><t>只要你收集3个火绒，3个咒骨，3个水芒，我就可以帮你做一只防腐剂，可以保证你15分钟内不受腐蚀的影响。")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "给<b杂货商人·鲁娜儿>（3279,2501）带回制作防腐剂的原料")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>没想到你这么快就收集了足够的原料，我这就给你制作防腐剂。")
	MisHelpTalk("<t>怎么？忘记原料了吗？记住，3个<r火绒>，3个<r咒骨>，3个<r水芒>。")
	MisResultCondition(HasMission, 364)
	MisResultCondition(HasItem, 4259, 3)
	MisResultCondition(HasItem, 4260, 3)
	MisResultCondition(HasItem, 4261, 3)
	MisResultAction(TakeItem, 4259, 3)
	MisResultAction(TakeItem, 4260, 3)
	MisResultAction(TakeItem, 4261, 3)
	MisResultAction(GiveItem, 4251, 1 ,4)	
 	MisResultAction(SetRecord, 364 )
 	MisResultAction(ClearMission, 364 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259 )
	TriggerAction( 1, AddNextFlag, 364, 1, 3 )
	RegCurTrigger( 3641 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4260 )
	TriggerAction( 1, AddNextFlag, 364, 5, 3 )
	RegCurTrigger( 3642 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261 )
	TriggerAction( 1, AddNextFlag, 364, 10, 3 )
	RegCurTrigger( 3643)

-----------------------------------龙之泪
	DefineMission( 536, "龙之泪", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>龙之泪吗？已经有好多年没有看见这种东西啦，而且还是这么大的一颗，你一定是见到那个孩子了，哎，可怜的孩子啊，算了，跟你说这些也没用了，都是些过去的事情了。<n><t>什么，你一定想知道？那这样吧，两种选择，一是把这颗宝石卖给我你就当什么事情都没发生过，二是我告诉你关于宝石的事情，你自己去解开宝石的秘密，你想好再来找我吧。")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------变卖龙之泪
	DefineMission( 537, "变卖龙之泪", 366 )

	MisBeginTalk( "<t>你把宝石给我，我给你<r20万块>，然后就当什么都没发生过，你已经决定了吗？别想啦，这不是明摆着吗？与其追求可能不能实现的事情，<r20万块>的奖励不是来得更加容易吗？")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "用<r龙之泪>在<b客栈老板·龙女>（3302,2501）那里换20万")

	MisResultTalk("<t>你终于想通了？这就对了，何必为了不知名的事情损失20万呢？嘿嘿，把龙之泪卖给我吧！")
	MisHelpTalk("<t>咿？！！你的龙之泪呢？难道你不打算把他卖给我了么？")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------龙之泪的传说
	DefineMission( 538, "龙之泪的传说", 367 )

	MisBeginTalk( "<t>你想知道龙之泪的秘密吗？我也只是知道一个传说而已。<n><t>我需要准备一下，因为这个传说是在太久了，我要整理一下我的思路，你过会再来找我吧")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "过会再找龙女聊聊")

	MisResultTalk("<t>你知道吗，为了解开宝石的秘密，你将损失20万，而可能解开秘密之后一无所得，你仍旧坚持吗？好，这样也好，既然你已经有了准备，那让我们开始吧。<n><t>传说中，冰龙在死亡的时候会流下一滴眼泪，这滴眼泪会在瞬间冻结成为宝石，这就是龙之泪，而真心祈祷的人，在龙之泪上染上自己的鲜血和伤心的眼泪就可以将所有的伤心化解。<n><t>但是，由于冰龙的强大，几乎没有人能够获得龙之泪，而第一个获得龙之泪的海盗就是海砂，一个拥有阳光般微笑的年轻海盗。<n><t>但是，谁都没有想到的是，在他将自己的鲜血和眼泪洒在龙之泪上后，悲剧发生了，伴随着龙之泪的蒸发，他居然变成了新的冰龙，我想，你在海底隧道遇到的应该就是他吧。<n><t>你将他杀掉，应该是对他的一种解脱吧，现在我把知道的都告诉你了，龙之泪也在你的手中，接下来怎么做就看你自己了。")
	MisHelpTalk("<t>咿？！！你的龙之泪呢？")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------龙之泪的秘密
	DefineMission( 539, "龙之泪的秘密", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你怎么会得到龙之泪的？幸好你没有盲目相信那个传说使用它，否则你就是下一个冰龙了。<n><t>传说确实是真的，只是里面有一个地方没有说明白，就是你的血和你的泪必须是为别人所流，否则就要接受神的惩罚。")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------圣水
	DefineMission( 540, "圣水", 369 )

	MisBeginTalk( "<t>痛苦也是神赐予人类的宝物，只有记住痛苦，人才能不断成长，但是，当一个人背负了太多别人的痛苦的时候就会影响到自己的脚步，神为了给这种人一个机会，才创造了冰龙，用它的眼泪来洗清人的痛苦，但是一旦有人违背神意，为了自己的痛苦使用龙之泪，它就会被惩罚成为新的冰龙，只有自身的罪恶被洗清或者洗清了他人的痛苦后，灵魂才能得到解脱。<n><t>我想，你这位朋友肯定是不知道这件事的，想要帮他解脱的话，你只有去魔女海域走一趟了，<p深蓝群岛3800，550>附近的海水由于女神的祝福可以洗去所有的罪恶，而你的任务就是把它带回来给我，我会告诉你怎么用的。")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到<p深蓝群岛3800，550>处用 <r玻璃瓶>带回一瓶海水")

	MisResultTalk("<t>恩，你还挺快的，让我看看你有没有拿错海水。")
	MisHelpTalk("<t>还有什么问题吗？记住只有<p深蓝群岛3800，550>这里的海水才可以，如果拿回来的海水不对的话，后果自负。")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------圣水
	DefineMission( 541, "赎罪", 370 )

	MisBeginTalk( "<t>用圣水帮你洗清你朋友罪恶，将他淋在龙之泪上就可将里面的灵魂解脱，愿你永远保持这种善良之心。")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "使用<r圣水>解救<r龙之泪>中的灵魂")

	MisHelpTalk("<t>使用圣水解救你的朋友吧。")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------海砂的存款
	DefineMission( 542, "海砂的存款", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>这笔存款已经好久没有动过了，你说他的主人把它转交给你？好吧，我们银行一向按规章办事，如果你能说出保险柜的密码的话，钱就是你的了。<n><t>我想了一下，然后在密码栏处输入“最能欺骗你的就是你的眼睛”，在我输入完最后一个字后，我按下了确认键，保险柜的门应声而开。")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
        MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)

-----------------------------------周吴郑的情书
	DefineMission( 543, "周吴郑的情书", 372 )

	MisBeginTalk( "<t>这是……，先别走，这封信你是不是~看~过~了？<n><t>沉默也没用，你头上的汗已经出卖你了，我本来是想杀人灭口的，先别跑，但看你人还算老实，就给你一个改过自新的机会，我听说（3195,2506）的<r油李>那边进了不少新货，你要是能帮我弄回一件我就饶了你。")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "为<b银行总管·王墨>从（3196,2509）的<b贸易商人·油李>那里弄到一件<r新潮服装>")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>哦，对，就是这件，看在衣服的份上，我这次就饶过你，不过你要是到外面乱说的话，看我不用毛笔戳死你。")
	MisHelpTalk("<t>什么？你还没去，看来我真的要杀人灭口了……")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------周吴郑的信
	DefineMission( 544, "周吴郑的信", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>……又来，这个家伙还真是……，我都不知道说什么好了。<n><t>哦，你别介意，不是说你，你回去跟他说，让他死心吧，对，就这一句，你跟他说了就明白了。")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------新货
	DefineMission( 545, "新货", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>你怎么知道我这里进新货了，看来你一定是个行家，本来这批货到了我应该高兴的，可是，同行出来的另一艘船到现在也没到，我实在是担心得高兴不起来啊，要是你肯替我出海打探一下的话，我可以免费给你一件我这最新的服装。")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------出海打探
	DefineMission( 546, "出海打探", 375 )

	MisBeginTalk( "<t>是吗，你答应替我出海打探了？太好了，你先到<p2500，2260>这里去看一下吧，这是望远镜，在这个地方应该可以看到我的船的。")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "到春风镇附近的<p2500，2260>使用<r望远镜>查看一下")

	MisResultTalk("<t>你已经发现我的船了吗？太好了，这下我的心可以落地了，给你，这是你的了，对了，把望远镜还我，这个也几万块呢。")
	MisHelpTalk("<t>忘记坐标了吗？<p2500，2260>，记住，快去快回，等你好消息。")
       	MisResultCondition(HasMission, 28)
	MisResultCondition(HasItem, 4258, 1)
	MisResultAction(TakeItem, 4258, 1)
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 375 )
 	MisResultAction(ClearMission, 375 )
 	MisResultAction(ClearMission, 28 )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

 -----------------------------------购买新衣
	DefineMission( 547, "购买新衣", 376 )

	MisBeginTalk( "<t>你不原意替我出海吗？那算了，我也不多要你，这件衣服给你打个8折，就10万块吧，我真的没多要你的钱，咱是实在人，哪能骗客户呢，你说是不？")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisResultTalk("<t>其实我还是挺希望你帮我出海看看的，不过，既然你肯出10万块，我也就认了。")
	MisHelpTalk("<t>10万块，少一分都不行。")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------恶魔的果实
	DefineMission( 548, "恶魔的果实", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>什么恶魔果实，我不是跟你说过我不知道吗？还有，其实我只有100岁，还是年轻的小姑娘呢，别听其他人胡言乱语。<n><t>你这个人怎么那么容易相信别人说的话，早知道不应该把你介绍给村里人认识，要不是看在你是我恩人的份上，我早就用扫把抽你了，我在说一次，我并不老，我只有100岁。")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------恶魔的果实
	DefineMission( 550, "恶魔的果实", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>怒，你要是再提什么恶魔果实的，可别怪我不客气了……，等等，你口袋里那个耳环是怎么回事，这个应该是在早些年海难中失踪的外孙女的耳环啊，怎么会在你身上？什么，她还活着吗？谢天谢地，真是太好了，什么，你说她已经150岁了？这个，那个，……算了，我承认我确实吃过一个恶魔果实，也正是由于这个果实的原因，我才能保持现在这个外貌，不过，我可没有一千岁那么老。<n><t>这个镇子上，确实曾经出现过大量的恶魔果实，我吃得那个果实就是在那个时候偷的，所以我一直不敢承认，你知道，一个恶魔果实的价格不是我们这种平民可以承受的。<n><t>但是，自从那个人，你们应该都知道的，罗森，伟大的海盗之王离开这个岛之后，恶魔果实就都消失不见了，没人知道恶魔果实是哪里来的，也没人知道为什么在一夜之间所有的恶魔果实都消失了。<n><t>所有人都说是海盗王带来的并最终带走了所有的恶魔果实，但也都是猜测罢了。")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(HasFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(TakeItem, 4235, 1)
	MisResultAction(SetRecord, 363)
	MisResultAction(ClearMission, 363)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3351,15,4)
	MisResultAction(GiveItem,3352,15,4)
	MisResultAction(GiveItem,3353,15,4)
	MisResultBagNeed(3)


 -----------------------------------罗森
	DefineMission( 551, "罗森", 380 )

	MisBeginTalk( "<t>你问罗森的事情吗？我想这个传奇的男人，在你们的世界中的传闻也不少了吧，在我们的村子，他可是所有姑娘的偶像，所有小伙子向往的目标呢。<n><t>你在看什么，我的脸很红吗？讨厌啦，人家和罗森还有一面之缘呢，你怎么那么八婆啊，打听人家的私事，<p等我把这些债讨回来再给你讲>，宝宝，乖啊。")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "等<b酒店老板·裴蒂>（3287,2501）处理完帐务")

	MisResultTalk("<t>呼，所有的帐都齐啦，来，婆婆继续给你讲罗森的故事。")
	MisHelpTalk("<t>我不是说了我现在要处理一些债务吗？等我处理好了我再跟你说。")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------悲剧
	DefineMission( 552, "悲剧", 381 )

	MisBeginTalk( "<t>你想知道为什么糊涂山人不给你翻译是吗？那是因为，他的孙子在看了他翻译的一篇文章后，离开白银城去寻找梦幻中的小镇，从此一去不回，而糊涂山人也不再给人翻译这种文字了。<n><t>那是个可爱的小男孩，曾经来过我这里，听说他所乘坐的船只在魔女海域3757，1248处失踪了，你能去帮我调查一下吗。<n><t>这里有一个水下探测器，可以帮助你搜索水中的东西。")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	
	MisNeed(MIS_NEED_DESP, "到魔女之海的3757，1248处调查一下")
	MisResultCondition(AlwaysFailure )


-----------------------------------悲剧
	DefineMission( 553, "悲剧", 382 )

	MisBeginTalk( "<t>没错，这个字体我认识，看来我们的朋友是遇到了那个海域最残忍的海盗了。<n><t>把这个帮我交给（2272,2700）的<b糊涂山人>吧，虽然可能对他打击很大，但是，每个人都有需要面对现实的一刻")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "把<r瓶中信>带给<b糊涂山人（2272,2700）>")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------悲剧
	DefineMission( 554, "悲剧", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>我早就知道是这个结果了，由你的手中将这封信交给我也算是对我的一点安慰。")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------悲剧
	DefineMission( 555, "悲剧", 383 )

	MisBeginTalk( "<t>虽然，我这年纪的人应该不再想着报仇这样的事情。<n><t>不过，如果，你能帮我教训一下魔女之海的那帮猖狂的海盗的话，我还是会很感激你的。")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "杰克海盗突击船*10（1950,3515）附近；杰克海盗支援船*5（2210,3769）附近；杰克海盗指挥舰*1（1966,3769）附近")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>多谢，实在太感谢了，我实在不知道该说些什么好，我想这个可能对你以后的冒险有些帮助，就让我的所有感谢寄托在这个道具的身上吧")
	MisHelpTalk("<t>如果，太为难你的话就算了，哪天我拼上这把老骨头跟那帮食人的家伙同归于尽。")
	MisResultCondition(HasMission, 383 )
	MisResultCondition(HasFlag, 383, 10)
	MisResultCondition(HasFlag, 383, 15)
	MisResultCondition(HasFlag, 383, 16)
 	MisResultAction(SetRecord, 383 )
 	MisResultAction(ClearMission, 383 )
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3878,1,4)
	MisResultAction(GiveItem,4715,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 594 )
	TriggerAction( 1, AddNextFlag, 383, 1, 10 )
	RegCurTrigger( 3831 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 593 )
	TriggerAction( 1, AddNextFlag, 383, 11, 5 )
	RegCurTrigger( 3832 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 656 )
	TriggerAction( 1, AddNextFlag, 383, 16, 1 )
	RegCurTrigger( 3833 )

-----------------------------------过去
	DefineMission( 556, "过去", 384 )

	MisBeginTalk( "<t>你想知道氏族长·阿布多罗.李为什么那么愤怒是吗？看看我脚下的废墟就知道了，多年以前，从海上漂来了几本写有这种文字的笔记，经过我祖先的翻译，人们了解了很多沙岚之外的世界，许多年轻人就在探索的热潮中去了外边的世界，然后是更多的人离开这座古城抛弃信仰，对女神的背叛最终导致了女神的愤怒，狂风将整个古城埋于沙土之下，你看，就在你我的脚下。<n><t>这个只有少数人还记得的历史就是氏族长·阿布多罗.李愤怒的原因，但并不是他将我放逐的原因，说实话，我很想知道那些笔记上写了什么，所以，我曾经多次偷入图书馆想“借”那几本笔记出来看看，于是，我就被要求在这里居住了。<n><t>听说图书馆失窃过，不知道那些笔记还在吗，如果你能帮我拿<r古老的笔记>过来，我可以给你些埋在沙土下的好东西")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "替<b圣女·艾达>（862,3303）找到<r古老的笔记>")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>对，就是这个，没想到你这么快就找到，我已经有点怀疑你就是那个偷图书的人了，不过，没关系，我只要这个笔记，其他的我才不管呢，对了，这是答应给你的东西。")
	MisHelpTalk("<t>图书馆被盗也不是一两天了，找不到就算了，也不用拿个假的来骗我啊。")
	MisResultCondition(HasMission, 384)
	MisResultCondition(HasItem,4234,1)
	MisResultAction(TakeItem, 4234,1 )
 	MisResultAction(SetRecord, 384 )
	MisResultAction(ClearMission, 384 )
	MisResultAction(AddExpAndType,2,60000,60000)
	
	MisResultAction(GiveItem,3878,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4234 )
	TriggerAction( 1, AddNextFlag, 384, 1, 1 )
	RegCurTrigger( 3841 )

-----------------------------------过去
	DefineMission( 557, "过去", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>古老的笔记吗？好像见过，不过，由于不是什么值钱的东西，分发给兄弟们了，去向他们要吧，不用客气，反正你也没客气过")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------讨债
      DefineMission(558,"讨债",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>什么？你要帮我讨债吗？那真是太好了，其实也没多少债，只有200万而已，给你，都记在这个本子上了，要是你能帮我把债讨回来，我就提前把我知道的事情讲给你。")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "该任务无法中断") 

      MisNeed(MIS_NEED_DESP, "帮裴蒂向<r龙女,鲁娜儿,油李,武鑫,流云,比盖和港口指挥霜奇>讨回他们所欠的债务") 
      
      MisHelpTalk("<t>我看你的脸色好像不太好啊，是不是那帮人不肯还钱啊，唉，我一个孤老婆子，儿子又不在身边……如果债要不全你就自己贴点行不？200万啊，200万！")
      
      MisResultTalk("<t>实在是太感谢你啦，正好200万一点都不差，他们没怎么为难你吧。<n><t>这点小小的礼物就当我答谢你的，你收好啊。")
    
      MisResultCondition(NoRecord,386)
      MisResultCondition(HasFlag,386, 100)
      MisResultCondition(HasFlag ,386, 101)
      MisResultCondition(HasFlag,386, 102)
      MisResultCondition(HasRecord,389)
      MisResultCondition(HasRecord,391)
      MisResultCondition(HasRecord,400)
      MisResultCondition(HasRecord,393)
	  MisResultCondition(HasItem,0948,1)
      MisResultCondition(HasMoney,2000000)
      MisResultAction(TakeMoney,2000000)
      MisResultAction(TakeItem,0948,1)
      MisResultAction(GiveItem,0189,1,4)
      MisResultBagNeed(1)
      MisResultAction(ClearMission,380)
      MisResultAction(ClearMission, 386 )
      MisResultAction(SetRecord, 380 )
      MisResultAction(SetRecord,386)

      ----------------------------------讨债      （武鑫）
      DefineMission(567,"讨债",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>你是帮婆婆来讨债的吗？正好，我正想送过去呢，这是10万本金，这是10万利息。<n><t>（汗，10万利息，这个婆婆究竟是干什么的？）")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------讨债
       DefineMission(568,"讨债",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>哦，你看我一个穷老头，哪有钱还啊，当年要不是为了给我老婆看病，我也不会欠下这么多债，您行行好，再宽限几天吧，要不，我这里只有10万块，你先拿去，剩下的你帮我垫一下好吗？也不多，就是利息的10万。")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------龙女的债务
      DefineMission(569,"龙女债务",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "该任务无法中断")

      MisBeginTalk("<t>你看我这记性，差点我就忘记了，我这边比较忙，你帮我去银行跑一趟吧，我这边通知一下王墨，我没记错的话，本金加利息是20万吧。")
      
      MisNeed(MIS_NEED_DESP, "到银行王墨（3290,2512）那去取20万")

      MisHelpTalk("<t>我已经和王墨说好了，你去取就可以了")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------龙女的债务
     DefineMission(570,"龙女的债务",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>你是来取龙女的钱的吧，给你，一共20万，对了，手续费需要你出，不多，200而已。")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------讨债
     DefineMission(563,"讨债",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>什么？这么快就要，原来不是说好3个月的吗？那可是我用来结婚的钱啊，你给我留点行不？什么，再过一个月要还30万，那还是算了吧， 这里是20万，拿去吧？")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------杂货商人的债务
      DefineMission(564,"杂货商人的债务",391)

      MisBeginTalk("<t>你看，现在的机票市场一片大好，但是我却没了制造机票的原料，你如果可以帮我到底下水道中弄点机票的原料来，我想我可以很快赚足还你的钱。")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--残缺的裹尸布
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--破损的裹尸布
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--完整的裹尸布
      MisCancelAction(SystemNotice, "该任务无法中断")
      
      MisNeed(MIS_NEED_DESP, "去底下水道中从僵尸身上拿到残缺的裹尸布3块，破损的裹尸布3块，完整的裹尸布3块")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>如果再不做出机票的话就错过商机了，我也就没钱还你了，到时候，我只有死路一条了。")  
      MisResultTalk("<t>哈哈，有了这些我又可以作机票了，拿去，这是我向银行贷的40万，我相信，我一定可以赚的比这多。<n><t>这2万是我私人给你的。")
      MisResultCondition(HasMission, 391 )
      MisResultCondition(HasItem, 0176, 3 )
      MisResultCondition(HasItem, 0177, 3 )
      MisResultCondition(HasItem, 0178, 3 )
      MisResultAction(TakeItem, 0176, 3 )
      MisResultAction(TakeItem, 0177, 3 )
      MisResultAction(TakeItem, 0178, 3 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 391 )
      MisResultAction(SetRecord, 391 )
      
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0176 )	
   TriggerAction( 1, AddNextFlag, 391, 10, 3 )
    RegCurTrigger(3911)
    
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0177 )	
   TriggerAction( 1, AddNextFlag, 391, 20, 3 )
    RegCurTrigger(3912) 
     
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0178 )	
   TriggerAction( 1, AddNextFlag, 391, 30, 3 )
    RegCurTrigger(3913)

--------------------------------------------------------港口指挥·霜奇的债务
     DefineMission(565,"港口指挥·霜奇的债务",392)

      MisBeginTalk("<t>再宽限几天好吗？我只要把这批药材运到雷霆堡的海军司令那里就可以赚上40万，我都打好包了，就等着下一次有人出海了，你看，我这里实在是没有别的值钱的东西了。<n><t>如果，你肯替我跑一趟的话，我可以在收到货款后，马上给你钱。")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "该任务无法中断")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "替药草商人运送药草给雷霆堡的海军司令（713,1416）")
      MisHelpTalk("<t>怎么样？货物送到了吗？他还满意吗？")
       
      MisResultTalk("<t>货物已经送到了是吗？太好了，钱应该马上就会打到我的帐户上，让我看看，恩，果然有了，你等等，我提出来给你。<n><t>给你，这是你婆婆的40万，还有这2万是答谢你的。" )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------港口指挥·霜奇的债务

  DefineMission(566,"港口指挥·霜奇的债务",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>哦，新面孔吗？不是应该由上次那个小伙子送来吗？算了，只要药材好就可以了，老规矩，看过货后我会把钱打到他的卡里，你可以回去了。")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------贸易商人·油李的债务

      DefineMission(572,"贸易商人·油李的债务",393)

      MisBeginTalk("<t>你看，我本来是可以马上给你钱的，不过，很不幸，别人托我保管的5个水晶球在前几天丢了，我正在存钱准备赔偿人家，如果，你肯替我找回丢失的水晶球，我可以马上还钱。<n><t>如果，我没猜错的话，水晶球一定是被门外的狐妖偷走了。")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "该任务无法中断")
      
      MisNeed(MIS_NEED_DESP, "从狐妖身上找到5个水晶球")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>如果拿不出水晶球，我就死定了。")  
      MisResultTalk("<t>你是我的救命恩人啊，这是40万，是我还给婆婆的，而这2万是我答谢你的，别嫌少，做我们这行也不容易啊。")
      MisResultCondition(HasMission, 393 )
      MisResultCondition(HasItem, 1864, 5 )
      MisResultAction(TakeItem, 1864, 5 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 393 )
      MisResultAction(SetRecord, 393)

	  InitTrigger() 
   TriggerCondition( 1, IsItem, 1864 )	
   TriggerAction( 1, AddNextFlag, 393, 10, 5 )
    RegCurTrigger(3931)

--------------------------------------------罗森
     DefineMission(571,"罗森",394)
     MisBeginTalk("<t>你看我一下多了200万在手上，这么多现金在身上也不方便啊。<n><t>你先让我这些钱存到银行里面再跟你讲罗森的事吧")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "该任务无法中断")

     MisNeed(MIS_NEED_DESP, "等<b酒店老板·裴蒂>（3287,2501）把钱存到银行里")
     MisHelpTalk("<t>钱还没存呢，你不要着急吗。")
      MisResultTalk("<t>人老了攒点钱容易嘛。")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------追忆
	 DefineMission(592,"追忆",395)
	
	MisBeginTalk( "<t>那是很久以前的事情了，是我生命中最不愿意回忆的往事之一。罗森是那个时期最伟大的海盗，迷人的微笑里藏满秘密……<n><t>哎呦！你看，我一回忆起那件事就会头疼，这样吧，这是一条神奇的<b项链>，带上它继续你的探险，你会一步步解开谜团的。去冰狼堡找<b药店老板·达赫>(1352,499)，或许会有一连串令你震惊的收获。" )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------莫邪项链	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找药店老板·达赫谈谈")
	
	MisHelpTalk("<t>你还没去找药店老板·达赫吗？快去吧！")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------追忆
	DefineMission(593, "追忆", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>上帝啊，我每晚都失眠！")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------达赫的恶梦
	DefineMission(594,"达赫的恶梦",396)
	
	MisBeginTalk( "<t>我最近经常做恶梦，夜夜难安，不知是吉是凶，真想卜一卦，不巧这几天正忙，你能帮我跟<b算命先生·算破天>(3262,2502)说一下吗？" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找算命先生·算破天说一下")
	
	MisHelpTalk("<t>你还没去找算命先生吗？快去吧！")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------达赫的恶梦
	DefineMission(5065,"达赫的恶梦",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>替达赫来算命？我早算到你今天会来！")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------狐道士作怪
	DefineMission(595,"狐道士作怪",397)

      MisBeginTalk("<t>照理说我一般不受理代他人算命的活，不过你有老太的项链作信物而且看你一片热心就为你破例吧。<n><t>###··**##%！是<y狐狸道士>作怪,去杀10只狐道士（3322,2460）吧")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------莫邪项链
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "该任务无法中断")
      MisNeed(MIS_NEED_DESP, "捕杀10只狐道士！")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>杀死春岛上10只狐狸道士。")  
      MisResultTalk("<t>你的表现很不错，我都想要收你为徒了。")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------为达赫解梦
	DefineMission(5066,"为达赫解梦",992)
	
	MisBeginTalk( "<t> 助人乃快乐之本，不用谢我。去冰狼堡找<b药店老板·达赫>(1352,499)。" )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找达赫为他解梦吧")
	
	MisHelpTalk("<t>我做好事不留名的，因为我是算破天！")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------为达赫解梦
	DefineMission(5067,"为达赫解梦",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>是吗？我今晚不用再受折磨了？！这些钱当作是酬谢吧，你真是有本事啊！")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,20000)

	------------------------------------------------------------布丽娜的恶梦
       DefineMission(596,"布丽娜的恶梦",398)
	
	MisBeginTalk( "<t>不如你好人做到底吧，我的漂亮邻居<b银行出纳·布丽娜>(1360,519)最近好像也有烦恼。" )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找银行出纳·布丽娜(1360,519)")
	
	MisHelpTalk("<t>你还没去找布丽娜吗？")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------布丽娜的恶梦
	 DefineMission(597,"布丽娜的恶梦",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>是药店老板·达赫告诉你的吗？太感动了，原来还有人关心我。")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------解救布丽娜
	 DefineMission(598,"解救布丽娜",399)
	
	MisBeginTalk( "<t>昨晚我一夜没睡好，现在一点力气都没有，你能帮我向算命先生(3262,2502)求签吗？<b记得回来告诉我原因>" )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找算命先生·算破天说一下")
	
	MisHelpTalk("<t>你还没去找算命先生吗？快去吧！")

	MisResultTalk("<t>谢谢你善良的人，这是我的一点谢意。我刚刚好像听说算命先生(3262,2502)正在找你，可能有重要的事")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------灵异水晶球
	DefineMission( 599, "灵异水晶球", 996 )

	MisBeginTalk( "<t>我替人算命是有条件的，我在制作传说中最灵异的水晶球，还缺2个<y蓝色水晶>在加纳大陆的<b凶猛的血蝌蚪>（2550,400）身上有，3个<y水晶纯石>在加纳的<b恐怖的诅咒古尸>(360,1340) 的身上有，你不会拒绝我吧。" )------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--蓝色水晶
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--水晶纯石
	MisCancelAction(SystemNotice, "该任务无法中断")

        MisNeed(MIS_NEED_DESP, "记住！拿回2个<y蓝色水晶>、3个<y水晶纯石>！")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>我算到你会顺利归来的，但没算到这么快。")
	MisHelpTalk("<t>怎么了？你连这么简单的任务都完成不了？")
	MisResultCondition(HasMission, 996)
	MisResultCondition(HasItem, 3366, 2 )
	MisResultCondition(HasItem, 1635, 3 )
	
	MisResultAction(TakeItem, 3366, 2 )
	MisResultAction(TakeItem, 1635, 3 )
	
	MisResultAction(ClearMission, 996)
	MisResultAction(SetRecord, 996 )---------------------set996
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	


	InitTrigger()
	TriggerCondition( 1, IsItem,3366)	
	TriggerAction( 1, AddNextFlag, 996, 10, 2 )
	RegCurTrigger( 9961 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1635)	
	TriggerAction( 1, AddNextFlag, 996, 20, 3 )
	RegCurTrigger(9962 )

	----------------------------------------------------------------------------狐妖作怪
	DefineMission( 5000, "狐妖作怪", 950 )

	MisBeginTalk( "<t>###··**##%！这次是春岛的<y狐妖>（3306,2444）作怪，别放过它们,杀5只！" )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------狐妖
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "杀5只狐妖回来！")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>回去通知布丽娜(1360,519)这个好消息吧。")
	MisHelpTalk("<t>怎么了？你怕了？杀5只都做不到？")
	MisResultCondition(HasMission,  950 )
	MisResultCondition(NoRecord,  950)
	MisResultCondition(HasFlag,  950, 14 )
	MisResultAction(ClearMission, 950 )
	MisResultAction(SetRecord,  950  )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 761)	
	TriggerAction( 1, AddNextFlag,   950 , 10,5)
	RegCurTrigger(   9501 )

---------------------------------------------------------------------狐仙作怪

	DefineMission( 5001, "狐仙作怪", 951 )

	MisBeginTalk( "<t>这种集体做恶梦并不是巧合，一定有一个大怪在后面，我算到是一个<y狐仙>（3135,2469），你去讨伐它吧，我不会亏待你的。杀1只！" )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------狐仙
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "杀狐仙1只")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>连狐仙都不是你的对手了，你的进步太大了！这是我代所有被噩梦缠绕的人给你的奖励。")
	MisHelpTalk("<t>小心春岛上的狐仙迷住你!")
	MisResultCondition(HasMission,  951)
	MisResultCondition(NoRecord,  951)
	MisResultCondition(HasFlag,  951, 10 )
	MisResultAction(ClearMission,  951 )
	MisResultAction(SetRecord,  951  )
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 776)	
	TriggerAction( 1, AddNextFlag,  951 , 10,1)
	RegCurTrigger(   9511 )

-----------------------------------------------------------------------重大秘密

	DefineMission( 5002, "重大秘密",952 )

	MisBeginTalk( "<t>年轻人，在你的眉宇之间隐藏着重大的秘密，我想替你占卜但遇到一些干扰，你帮我去把干扰因素魔女海岸的<y迅捷的暴风水母>(3750,1275)铲除1只吧。" )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----迅捷的暴风水母
	MisCancelAction(SystemNotice, "该任务无法中断")

	 MisNeed(MIS_NEED_DESP, "杀魔女海岸的迅捷的暴风水母1只！")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>稍等，我为你占卜一下。")
	MisHelpTalk("<t>干扰因素是迅捷的暴风水母(3750,1275)")
	MisResultCondition(HasMission,952 )
	MisResultCondition(HasFlag, 952, 10 )
	MisResultAction(ClearMission, 952 )
	MisResultAction(SetRecord,952 )
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 621)	
	TriggerAction( 1, AddNextFlag,  952 , 10,1)
	RegCurTrigger( 9521 )
------------------------------------------------------------------罗森精神

	DefineMission( 5003, "罗森精神", 953)
	
	MisBeginTalk( "<t>我很欣赏你这种善良果敢的人，我已为你卜过一卦，你的果敢不是偶然的，你就是继承罗森精神的年轻人，具体的情况我建议你去问春风镇的<b酒店老板·裴蒂>(3287,2501)。")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找到裴蒂询问罗森精神的事")
	MisHelpTalk("<t>她会帮助你的。")
	MisResultCondition(AlwaysFailure )

	---------------------------------------罗森精神

	DefineMission(5004,"罗森精神",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>怎么总有人在我面前提起海盗王罗森？头疼！")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------治疗裴蒂

	DefineMission( 5005, "治疗裴蒂", 954 )

	MisBeginTalk( "<t>我最近好像真得了什么病，浑身无力，可怜我这把老骨头已经走不动了，你能帮我找件<y治疗者衣服>回来吗？听说穿上可以舒筋活血，否则我什么都做不了。" )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "该任务无法中断")

	 MisNeed(MIS_NEED_DESP, "拿地精工兵身上的治疗者衣服1件回来")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>谢谢你肯帮我这个老太婆！")
	MisHelpTalk("<t>加纳大陆的地精工兵(546,2726)身上就有")-------------------+++++2
	MisResultCondition(HasMission,  954)
	MisResultCondition(NoRecord, 954)
	MisResultCondition(HasItem, 0376, 1 )
	MisResultAction(TakeItem,  0376, 1 )
	MisResultAction(ClearMission,  954)
	MisResultAction(SetRecord,  954 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,0376)	
	TriggerAction( 1, AddNextFlag,954, 10, 1 )
	RegCurTrigger( 9541 )

------------------------------------------------------------------魔力骨头粉

	DefineMission( 5006, "魔力骨头粉", 955 )

	MisBeginTalk( "<t>穿上这衣服感觉没有好太多，难道是你路上耽搁太久致使它失效了？你做事太不利了，害得我要自己加工，你马上找3块<y魔力骨头>回来,在<b骷髅神箭手>(919,1581)身上，我要磨成粉末喷在衣服上。" )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "该任务无法中断")

	 MisNeed(MIS_NEED_DESP, "在骷髅神箭手身上找到魔力骨头3块")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>这次速度还很快嘛！")
	MisHelpTalk("<t>魔力骨头在加纳大陆的骷髅神箭手(919,1581)身上就有")--------------------++++++3
	MisResultCondition(HasMission,  955)
	MisResultCondition(NoRecord, 955)
	MisResultCondition(HasItem, 1626, 3 )
	MisResultAction(TakeItem,  1626, 3 )
	MisResultAction(ClearMission,  955)
	MisResultAction(SetRecord,  955 )
	MisResultAction(AddExp,200000,200000)
	MisResultAction(AddMoney,700000,700000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1626)	
	TriggerAction( 1, AddNextFlag, 955, 10, 3 )
	RegCurTrigger( 9551 )
------------------------------------------------------------------------高级营养品

	DefineMission( 5007, "高级营养品", 956)

	MisBeginTalk( "<t>我的脸色是不是好多了？要是有人肯为我找到1个有高级营养成分的<y蝎狮角>（加纳的独角蝎狮662,2460身上有）我想我就能马上恢复过来并想起一些应该想起的事，你不愿意做这个人吗？" )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "带回独角蝎狮身上的蝎狮角1个")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>这还差不多，有前途！")
	MisHelpTalk("<t>今年过节不收礼,收礼还收蝎狮角！")
	MisResultCondition(HasMission,  956)
	MisResultCondition(NoRecord, 956)
	MisResultCondition(HasItem, 4783, 1)
	MisResultAction(TakeItem,  4783, 1 )
	MisResultAction(ClearMission,  956)
	MisResultAction(SetRecord,  956)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,4783)	
	TriggerAction( 1, AddNextFlag, 956, 10, 1 )
	RegCurTrigger( 9561 )
---------------------------------------------------------------------------遗忘的过去
	 DefineMission(5008,"遗忘的过去",957)
	
	MisBeginTalk( "<t>既然算命先生让你来找我，说明许多尘封的往事该让你知道了。每个人都有忘记的过去，你也不例外，不要看着我，记忆不能是别人转加给你的，要你自己去寻找回来。沙岚新城的大神官甘地维拉（862，3500）应该可以给你一点启示, <b得到结果后回来找我>啊！" )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找沙岚新城的大神官甘地维拉（862，3500）得到启示")
	
	MisHelpTalk("<t>甘地维拉(862，3500)总有深刻的主张，去问他吧")
		
	MisResultTalk("<t>找回记忆似乎没有让你感到开心，我看得出你的迷茫，其实解决之道很简单，不过你要为我做件事情我才可以告诉你。")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------克隆之回魂汤（1）

	DefineMission(5009,"回魂汤",958)
	
	MisBeginTalk( "<t>你想找到曾经遗忘的过去吗？其实过去还沉睡在你的大脑里，你需要喝<b回魂汤>唤醒记忆。回魂汤的制作方法很怪异，更怪异的是据说只有<b人鱼王子>（1254，3491）知道制作方法,<b得到制作方法后回来找我>。" )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找人鱼王子得到回魂汤的制作方法。")
	
	MisHelpTalk("<t>美丽的人鱼王子就在海边（1254，3491）")
	MisResultTalk("<t>闭上眼睛喝下去吧。<n><t>你是在恶魔岛诞生的男神维尔的完美克隆体。生物再现试用机一号由于寂寞创造了你。在抚养自己多年的魔族为保护自己而被同族残忍杀害后你爆发了真正的能量。觉醒后的你闯入恶魔岛火山内部，不顾守卫阻拦，进入真理之门。在那里你得知了所有的事实，同时也因迷失了自我而沉睡，一百年后因女魔术师柠檬的到来而苏醒，并开始和柠檬一起周游世界，寻找宝藏。二年后，你们分道扬镳，柠檬继续寻找宝藏，而你还在现实中寻找理想。<n><t>回去找春风镇的<b酒店老板·裴蒂>（3287,2501）吧，愿神保佑你。")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------回魂汤
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------血石（1）

	DefineMission(5010,"血石",959)
	
	MisBeginTalk( "<t>回魂汤的做法是我们家族的秘方，不能轻易外传，除非你能帮我找到我寻觅已久的血石。前几日我得到消息，血石在<b闪光侠八世>(1080,3086)那里。<b拿到血石再回来找我>!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找闪光侠八世得到血石。")
	
	MisHelpTalk("<t>闪光侠八世是魔女之海的狡猾沙匪.")
	

	MisResultTalk("<t>闪光侠八世这个傻瓜，他根本就不懂宝石，还开什么展览会？这块石头很有价值的，是鸡血石中的上品…算了，和你说这些也没有用。")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------邀请函（1）

	DefineMission( 5011, "邀请函", 960 )
	
	MisBeginTalk( "<t>人鱼王子的面子我是一定要给的，不过我对这块石头不感兴趣，让我送给朱迪斯（906，3539）了，正好我有一个宝石展览会想邀请他，你帮我送邀请函，我在邀请函中会提及此事的，如果他不讨厌你会帮忙的。" )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------邀请函	
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "将邀请函交给魔女之海的银行出纳朱迪斯")
	
	MisHelpTalk("<t>还不快走？")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------邀请函（1）

	DefineMission(5012,"邀请函",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>给人家的东西还要回去！岂有此理！我也不稀罕！看你的样子没我帅就顺便帮你吧")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 1040, 1,4)--------------血石
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------回魂汤药方(1) 
	DefineMission(5014, "回魂汤药方", 961 )

	MisBeginTalk( "<t>回魂汤的配料很简单，深蓝群岛的夜行舞水（3289，1746）身上的<y阿拉伯夜明珠碎片>10个，魔女海岸的潜行巨蝌蚪(900,1308)身上的<y粗大的透明蝌蚪尾巴>1个，只是制作需要特殊技巧，你去找来吧，我帮你配好。" )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "该任务无法中断")

	 MisNeed(MIS_NEED_DESP, "找到粗大的透明蝌蚪尾巴1条和阿拉伯夜明珠碎片10片")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>配方的事不许外传，否则小心你的小命！回去找大神官吧，交给他 。")
	MisHelpTalk("<t>以你的身手很容易的！")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 1043, 1, 4)-------回魂汤
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1234)	
	TriggerAction( 1, AddNextFlag, 961, 10, 10 )
	RegCurTrigger(9611 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1260)	
	TriggerAction( 1, AddNextFlag, 961, 20, 1 )
	RegCurTrigger(9612 )
	
	
------------------------------------------------------降温黑珍珠(1) 

	DefineMission( 5015, "降温黑珍珠", 962 )

	MisBeginTalk( "<t>真没想到人鱼王子居然这么容易就给了你回魂汤，哟！我差点忘记了最重要的，回魂汤是很热的，要降温才可以喝，所以你需要有强大降温效果的<y黑珍珠>1颗" )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------黑珍珠		
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "拿到有强大降温效果的黑珍珠1颗")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>黑珍珠的作用至关重要，你的冒险精神令人钦佩！")
	MisHelpTalk("<t>好像春岛的狐道士和狐妖身上都有你去找找看，它们在（3322,2460）附近")-------------------++++++++4
	MisResultCondition(HasMission,  962)
	MisResultCondition(NoRecord,962)
	MisResultCondition(HasItem, 3362, 1 )
	MisResultAction(TakeItem,  3362, 1 )
	MisResultAction(ClearMission,  962)
	MisResultAction(SetRecord,  962)
	MisResultAction(AddExp,500000,500000)
	MisResultAction(AddMoney,200000,200000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3362)	
	TriggerAction( 1, AddNextFlag, 962, 10, 1 )
	RegCurTrigger( 9621 )



------------------------------------------------------------------女神的基因之健忆胶囊（2）
	DefineMission(5017,"健忆胶囊",963)
	
	MisBeginTalk( "<t>你想找到曾经遗忘的过去吗？其实过去还沉睡在你的大脑里，你需要吃一粒<y健忆胶囊>唤醒记忆。这种稀有的药物不是哪里都有卖，你可以去问问白银城的<b神秘老婆婆>（2159，2792），她的消息总是来源很奇特而且准确,<b得到建议胶囊后回来找我>。" )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----菲利尔
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找神秘老婆婆得到健忆胶囊的消息。")
	
	MisHelpTalk("<t>神秘老婆婆在白银城（2159，2792）")
	MisResultTalk("<t>就是这个！你这么容易就拿到了。我已经为你做了祈祷，闭上眼睛喝下去吧。<n><t>你是贵族出身的天才水手，受着良好的海洋知识教育，再加上10岁觉醒的女神基因，你轻松获得了雷霆堡举办的水手大赛，但是由于中途使用了违禁的弹药，导致整个评委台倒塌而被取消了资格。你所有的这种秀豆，好吃懒做，爱美成性，做事不管后果的性格其实都是为了一个事实，你的寿命只有30年，而在恶魔之岛上略带伤感的一句:正因为寿命短才要拼命作自己的想做的事情，哪有时间考虑后果.更为你指明了前进的方向。<n><t>回去找春风镇的<b酒店老板·裴蒂>（3287,2501）吧，愿神保佑你。") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------健忆胶囊
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------泪之琥珀（2）
	DefineMission(5018," 泪之琥珀",964)
	
	MisBeginTalk( "<t>年轻人，健忆胶囊的事是很重要的信息，只有真正善良美好的人才可以知道。<n><t>你看我样貌衰老，其实我年轻的时候很漂亮，有王子追求过我呢。可是我一直喜欢沙岚城的<b朗拿度>，说起来好久没见过他了，你能帮我送个小礼物泪之琥珀给他吗？" )
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "帮神秘老婆婆送泪之琥珀给沙岚城的朗拿度（852，3549）。")
	
	MisHelpTalk("<t>真不明白你为什么非要找回记忆，有时候我真的宁愿自己什么都不记得，活得快乐些。")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------泪之琥珀（2）
	DefineMission(5019,"泪之琥珀",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>谢谢你，我也知道她的心意，可惜物是人非。别说泪结成石就算石化成泪，恐怕我和她今生也难结缘。<b捎口信>告诉她一切顺其自然吧。")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------补钙（２）


	DefineMission( 5020, "补钙", 965)

	MisBeginTalk( "<t>就算他这样说也无所谓，有些人是值得一生守候的。不知道是不是心情低落的缘故，我觉得最近缺钙比较严重，腰也直不起来，如果你愿意帮我打1片魔女海岸的<b紫水晶海豚>（900,2000）身上的<y紫色海豚背鳍>补钙，我想我就能安心的帮你的忙了" )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "拿紫色海豚背鳍给神秘老婆婆补钙！")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>你真是勇敢的孩子！")
	MisHelpTalk("<t>腰酸背痛腿抽筋,上楼也没有劲儿了!")
	MisResultCondition(HasMission,965)
	MisResultCondition(NoRecord, 965)
	MisResultCondition(HasItem, 1296, 1 )
	MisResultAction(TakeItem,  1296, 1)
	MisResultAction(ClearMission,  965)
	MisResultAction(SetRecord,  965)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1296)	
	TriggerAction( 1, AddNextFlag,965, 10, 1 )
	RegCurTrigger( 9651 )

--------------------------------------------------复活叶（２）
	DefineMission(5021, "复活叶", 966 )

	MisBeginTalk( "<t>虽然你帮过我，但是我仍然不希望关于我的事有其他的知情人，而只有死人不会泄露秘密！<n><t>别怕，我说过你帮过我，所以你还有个机会，去拿到1片<y复活叶>,地精长老（1381,3134）那好像就有，如果你活着回来我就不杀你还告诉你健忆胶囊的下落。"  )
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "该任务无法中断")

        MisNeed(MIS_NEED_DESP, "拿复活叶回来救自己的命！")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>看来你命不该绝！")
	MisHelpTalk("<t>去拿到1片复活叶,魔女海岸的地精长老（1381,3134）那有")-----------------------++++++++6
	MisResultCondition(HasMission,  966 )
	MisResultCondition(NoRecord, 966 )
	MisResultCondition(HasItem, 3143, 1 )
	MisResultAction(TakeItem,  3143,1 )
	MisResultAction(ClearMission,  966 )
	MisResultAction(SetRecord, 966 )
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3143)	
	TriggerAction( 1, AddNextFlag, 966 , 10, 1 )
	RegCurTrigger( 9661 )

--------------------------------------------------------------------------------------副作用(2)
	DefineMission( 5022, "副作用", 967 )

	MisBeginTalk( "<t>既然你把握住了机会，我就告诉你实话，其实我这就有健忆胶囊，但吃了会有记起过去，忘记现在的副作用，为了避免副作用，我建议你去找1份魔女海岸的<b潜行巨蝌蚪>（900,1308）的<y粘稠的透明蝌蚪血>给我帮你浸泡一下。" )------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "用粘稠的透明蝌蚪血消除健忆胶囊的副作用！")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>做好了，你拿回去交给大神官吧。我这个人很低调的，别把我的事情告诉别人！")
	MisHelpTalk("<t>找1份粘稠的透明蝌蚪血")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 1050, 1, 4)-------健忆胶囊
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------混血儿之美丽过往(3) 
	DefineMission(5024,"美丽过往",968)
	
	MisBeginTalk( "<t>你想找到曾经遗忘的过去吗？其实过去还沉睡在你的大脑里，你的回忆要从爱情开始唤醒。还记得<b米尔米莉>（1244，3186）吗？她那里有你想要的回忆，<b找到能唤醒你记忆的东西回来找我>。" )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找米尔米莉寻到美丽回忆。")
	
	MisHelpTalk("<t>米尔米莉在魔女之海")
	MisResultTalk("<t>但愿米莉的心伤已复原。你喝下这一半吧，闭上眼睛回想.<n><t>你是人和魔族的混血儿，父亲是祝福日中的幸存者，母亲是一名渔村姑娘。你12岁的时候，父亲魔族的身份暴露被村民们烧死，母亲也随后殉情，之后你带着父亲写有不要仇恨人类的遗书开始冒险，不过人魔混血的身份使你到处受到歧视，没有哪艘船愿意雇用你，空有对大海的热情和对未知挑战精神。在你父亲去世后，米尔米莉曾是你发誓要今生共老的爱人，你连这个都忘了，难怪她伤心。<n><t>回去找春风镇的<b酒店老板·裴蒂>（3287,2501）吧，愿神保佑你。") 
	MisResultCondition(NoRecord, 968)
	MisResultCondition(HasMission, 968)
	MisResultCondition(HasRecord, 972)
	MisResultCondition(HasItem, 1042, 1 )
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 968)
	MisResultAction(SetRecord,  968 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
---------------------------------------------------烧过的蜡烛(3)
	DefineMission(5025, "烧过的蜡烛", 969 )

	MisBeginTalk( "<t>你是来找我问你的过去吗？对不起，我的记忆也随那支<y烧过的蜡烛>燃光了。如果你有本事打死加纳大陆的<b黑色泥浆怪>，夺过那支蜡烛就还有商量。" )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去黑色泥浆怪那拿到米尔米莉要的烧过的蜡烛！")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>算你有本事！")
	MisHelpTalk("<t>找1支烧过的蜡烛")
	MisResultCondition(HasMission, 969)
	MisResultCondition(NoRecord, 969)
	MisResultCondition(HasItem, 4823, 1 )
	MisResultAction(TakeItem,  4823,1)
	MisResultAction(ClearMission,  969)
	MisResultAction(SetRecord,  969)
	MisResultAction(AddExp,80000,80000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4823)	
	TriggerAction( 1, AddNextFlag, 969, 10, 1 )
	RegCurTrigger( 9691 )

---------------------------------------------------------复原往事(3)
	DefineMission(5026,"复原往事",970)
	
	MisBeginTalk( "<t>可惜往事已去，蜡烛找到了，上面刻着的誓言不见了，如果你真的要知道就去请求<b帝姆>要<y复原剂>吧。<b讨得到复原剂再回来找我>" )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找帝姆要复原剂。")
	
	MisHelpTalk("<t>帝姆当然在白银城（2250，2770）了")
	MisResultTalk("<t>我倒了一半在蜡烛上。誓言：执子之手，与子偕老。<n><t>你有印象了吗？我曾是你的爱人……一切都是旧梦，我不想再说什么了，另一半你带回去给<b甘地维拉>吧。")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------复原剂
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------复原剂原料(3)

	DefineMission( 5027, "复原剂原料", 971 )

	MisBeginTalk( "<t>我真的没有复原剂了，而且最近已经很忙了，没空采药，除非你自己去找3份<y兴奋剂>（加纳的草原乖乖鹿（1503,2698）身上有），3份<y醒神花茶>（加纳的不灭武士（511,1721）身上有）和1份魔女海岸的潜行巨蝌蚪（900,1308）的<y粘稠的透明蝌蚪血>来作原料。" )-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找到粘稠的透明蝌蚪血1份，兴奋剂3个，醒神花茶3个给帝姆")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>这么快就找齐了，看来你是真的很急用，我就加班为你赶制复原剂吧 ，等一下就好！")
	MisHelpTalk("<t>加班还末有加班费")
	MisResultCondition(HasMission, 971)
	MisResultCondition(NoRecord, 971)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,  3147, 3)
	
	MisResultAction(TakeItem, 1351, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,  3147, 3 )
	
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultAction(ClearMission, 971)
	MisResultAction(SetRecord, 971 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 971, 10, 1 )
	RegCurTrigger(9711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 971, 20, 3 )
	RegCurTrigger(9712 )
	InitTrigger()
	TriggerCondition( 1, IsItem,  3147)	
	TriggerAction( 1, AddNextFlag, 971, 30, 3 )
	RegCurTrigger(9713 )
	--------------------------------------------------------------释放爱情(3)
	DefineMission( 5028, "释放爱情", 972)
	
	MisBeginTalk( "<t><b米尔米莉>一定因你很伤心，你真的很残忍，如果你的快乐是建立在她的痛苦之上的话，我不愿意帮助你，我这里有一支忘忧草，如果注定前缘难续，不如让她彻底忘记。" )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "将忘忧草给米尔米莉")
	
	MisHelpTalk("<t>米尔米莉在魔女之海(1244，3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------释放爱情(3)
	DefineMission(5029, "释放爱情", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>以释放我的方式拯救你，我愿意。") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------诞生之太极石(4)

	DefineMission(5031,"太极石",973)
	
	MisBeginTalk( "<t>你想找到曾经遗忘的过去吗？其实过去还沉睡在你的大脑里。你需要找到<y两颗太极石>，两颗太极石放在一起可以产生特殊的人体磁场，刺激大脑折射沉睡的记忆。太极石的藏处我建议你去问一下沙岚城的<b朗拿度>，据说他曾见过。<b得到太极石回来找我>。" )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找沙岚城的朗拿度打听太极石的下落。")
	
	MisHelpTalk("<t>朗拿度在(852，3549)")
	MisResultTalk("<t>你是海卵王降生的海卵生物，天生具有人类小孩的外貌，而且永远不会衰老也不会长大，由于是纯基因构建出来的生物，使你对所有的自然科学都有天生的接受能力，可以跟动物甚至是怪物沟通，可以轻松的治愈伤口，更可以制造独一无二的道具。但是由于天生的基因体质，你成了所有人类追逐的对象，12岁那年你终于无法忍受人类的追捕发动了海啸，导致整个追捕舰队毁灭，至此再没有人敢随便追捕你，而你也成了通缉要犯，最后加入菲利尔的海盗团一起进行海上冒险。<n><t>回去找春风镇的<b酒店老板·裴蒂>（3287,2501）吧，愿神保佑你。") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------阴石
	MisResultCondition(HasItem, 1048, 1)-----------阳石
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------诚信藏宝图
	DefineMission(5032,"诚信藏宝图",974)
	
	MisBeginTalk( "<t>你是来问我关于太极石的事吗？那是好多年前的事了，由于影响很大所以是高级机密，所以你不可能轻易知道，除非你能快速的帮我把这张<y藏宝图>交给魔女之海的<b人鱼王子>(1254,3491)。" )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------诚信藏宝图
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "该任务无法中断")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "把藏宝图交给人鱼王子")
	
	MisHelpTalk("<t>听说人鱼王子以前是只青蛙!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------诚信藏宝图

	DefineMission(5033,"诚信藏宝图",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>其实他给你的不是什么藏宝图，而是一张普通的作了标记的纸，你没有打开过，可见你是值得相信的人，我就把秘密告诉你：太极石分<y阴石>和<y阳石>，在这个世界上知道太极石秘密的人只有三个，我这里有一块<y阴石>，送给你吧。")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 1045, 1, 4)--------阴石
	MisResultBagNeed(1)
	--------------------------------------------------阳石的下落
	DefineMission(5034,"阳石的下落",975)
	
	MisBeginTalk( "<t>还不走，那好吧，看你这样执著我就透漏一点给你，阳石的事你去打听资深药商<b帝姆>吧。为使他能够相信你，带这封<y推荐信>给他作为证明。" )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------推荐信
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "去打听资深药商帝姆。")
	
	MisHelpTalk("<t>帝姆(2250,2770)在白银城！")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------阳石的下落
	DefineMission(5035,"阳石的下落",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>这世上知道太极石秘密的人很少，他们两个是不会轻易相信别人的，恭喜你通过了他们的考验。")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------养眼水

	DefineMission( 5036, "养眼水", 976 )

	MisBeginTalk( "<t>既然他们都肯相信你，我就不刁难你了。<r它藏在白银城首席执行官斯克特的密室里>，只是阳石是一种很耀眼的石头，肉眼看会被刺伤，所以我需要为你配制一种叫养眼水的保护药水，但你必须找到3个<y醒神花茶>加纳的不灭武士（511,1721）身上有，1个深蓝群岛的凶猛的水晶海豚（2140,3787）的<y强光背鳍>和10个<y纯净的水>魔女海岸沙地龟（1197,3270）身上有。" )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找到3个醒神花茶，1个强光背鳍和10个纯净的水制作养眼水")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>已经做好药水了，你可以<r去白银城找首席执行官斯克特寻找阳石了>，让他帮你涂上药水。")
	MisHelpTalk("<t>去找养眼水的配料吧，我免费做给你就能<r去白银城找首席执行官斯克特寻找阳石>了")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 1047, 1, 4)------------- 养眼水
	MisResultAction(ClearMission, 976 )
	MisResultAction(SetRecord, 976  )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1362)	
	TriggerAction( 1, AddNextFlag, 976, 10, 1 )
	RegCurTrigger(9761 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 976 , 20, 3 )
	RegCurTrigger(9762 )
	InitTrigger()
	TriggerCondition( 1, IsItem,1649)	
	TriggerAction( 1, AddNextFlag, 976 , 30, 10 )
	RegCurTrigger(9763 )

--------------------------------------------------------------------------岁月之尘
	DefineMission(5037, "岁月之尘", 977)

	MisBeginTalk( "<t>好多年没有人找过阳石了，阳石在我的密室里已蒙上了有特殊化学成份的岁月之尘，一时间发挥不了作用，据我的经验需要一块<b地狱二层的地狱木尸乙>带有的<y裹尸布>上的化学物质与之反应。" )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "在地狱二层的地狱木尸乙身上找到裹尸布")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>阳石擦亮之后真是漂亮啊，舍不得送你了，当时真不该答应你，拿去找<b甘地维拉>吧。")
	MisHelpTalk("<t>地狱二层的地狱木尸乙身上有哦")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 1048, 1, 4)------------- 阳石
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------魔咒

	DefineMission( 5043, "魔咒", 978)

	MisBeginTalk( "<t>我有个不争气的兄弟中了不知名的魔咒，凡事都与别人颠倒，用脚吃饭，用手走路，我很烦恼，听说冰狼堡贵族<b马尔修斯>(1346,451)的亲信也中过魔咒，你帮我讨个药方好吗？<b得到解救的方法来找我>" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisNeed(MIS_NEED_DESP, "找马尔修斯谈谈")

	MisResultTalk("<t>啊……这下好了，我的兄弟有救了，谢谢你！")
	MisHelpTalk("<t>还没搞定吗？")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------圣灵护符
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------土著长矛
	DefineMission( 5045, "土著长矛", 979 )

	MisBeginTalk( "<t>记得我最亲近的一位牧师中了魔咒后，竟然不祷告，还辱骂上帝，魔咒解除后他觉得愧对耶稣就改信伊斯兰教了。真是个大笑话，哈哈……魔咒的解除方法很奇怪，可是我答应过严罗塔不能透漏他可以解除魔咒。<n><t>哦！……罪过！我好像说漏了！<n><t>你先帮我去找到藏身在寂寞之塔1层的疯狂的土著祭师的<y尖锐的土著长矛>1只，我先和严罗塔商量一下。" )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--长矛
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "在疯狂的土著祭师身上找到尖锐的土著长矛")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>严罗塔狠狠地斥责了我，一点也不照顾贵族的尊严。")
	MisHelpTalk("<t>1只疯狂的土著祭师的尖锐的土著长矛")
	MisResultCondition(HasMission, 979)
	MisResultCondition(NoRecord, 979 )
	MisResultCondition(HasItem, 4739, 1 )
	MisResultAction(TakeItem, 4739, 1 )

	MisResultAction(ClearMission, 979)
	MisResultAction(SetRecord, 979)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 979, 10, 1)
	RegCurTrigger( 9791 )
----------------------------------------------------讨伐恐怖的诅咒古尸

	DefineMission(5046, "讨伐古尸", 980 )

	MisBeginTalk( "<t>严罗塔说要你去杀死1只<y恐怖的诅咒古尸>，成功后来找我 ")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>欢迎勇士归来！")
	MisHelpTalk("<t>恐怖的诅咒古尸在加纳（360,1340)附近")----------------+++++11
	MisResultCondition(HasMission,  980)
	MisResultCondition(HasFlag, 980, 10 )
	MisResultAction(ClearMission,   980)
	MisResultAction(SetRecord,   980 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster,508)	
	TriggerAction( 1, AddNextFlag,  980, 10, 1 )
	RegCurTrigger(  9801 )

----------------------------------------------------佐罗面具

	DefineMission(5047,"佐罗面具",981)
	
	MisBeginTalk( "<t><b严罗塔>告诉我，你能成功讨伐恐怖的诅咒古尸就可以去找他（1894,2798）了。这是证明你完成任务的信物佐罗面具，这个东西日后会至关重要的。" )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------佐罗面具
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "去找严罗塔聊聊。")
	
	MisHelpTalk("<t>严罗塔在加纳大陆。")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------佐罗面具
	DefineMission(5048,"佐罗面具",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你我的相见是某个蠢货带给我的意外，但愿你不会让我太失望")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------终极密码
	DefineMission( 5049, "终极密码", 982 )

	MisBeginTalk( "<t>佐罗死后这枚面具丢失了，传说经过一些特殊操作就会具有神奇的魔力，现在有一群邪恶的海盗也在找它，为了海上的平静我们必须抢先拿到。首先找到一串终极密码，以解开面具的下一步需求。传说密码写在<y水芒>上" )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--水芒
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "拿到被诅咒的水仙子身上的水芒")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>你是海盗的骄傲！")
	MisHelpTalk("<t>海底隧道的被诅咒的水仙子（486, 327）身上有")
	MisResultCondition(HasMission, 982 )
	MisResultCondition(NoRecord,982 )
	MisResultCondition(HasItem, 4261,1 )
	MisResultAction(TakeItem, 4261,1 )
	
	MisResultAction(ClearMission, 982 )
	MisResultAction(SetRecord, 982 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261)	
	TriggerAction( 1, AddNextFlag,  982 , 10,1)
	RegCurTrigger( 9821 )
-------------------------------------------------宿命之石

	DefineMission( 5050, "宿命之石", 983 )

	MisBeginTalk( "<t>面具上有字映出：得兽丹石，得我宿命.这是什么意思？先找到<y兽丹石>试试吧。" )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--兽丹石
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找到兽丹石了解面具的宿命含义")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>从地狱回来你一身的尸气啊！")
	MisHelpTalk("<t>地狱二层的地狱木尸甲身上有.")
	MisResultCondition(HasMission, 983)
	MisResultCondition(NoRecord, 983)
	MisResultCondition(HasItem, 2487,1 )
	MisResultAction(TakeItem, 2487,1 )
	MisResultAction(ClearMission,983)
	MisResultAction(SetRecord, 983)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2487)	
	TriggerAction( 1, AddNextFlag,  983, 10,1)
	RegCurTrigger(  9831 )

----------------------------------------------------------销毁面具

	DefineMission( 5051, "销毁面具", 984 )

	MisBeginTalk( "<t>原来这枚面具曾被黑暗的占星师占有过，注入了邪恶的宿命--毁灭！凡带此面具者都会有毁灭世界的野心和魔力，太危险了必须销毁面具。听说<b堕落的守护天使>(335,2121)那的<y破碎的天使光环>有销毁邪恶的功效。" )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--破碎的天使光环
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "从堕落的守护天使那得到破碎的天使光环")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>本以为可以得到神奇面具的力量，怕是空欢喜一场。")
	MisHelpTalk("<t>堕落的守护天使在加纳(335,2121).")
	MisResultCondition(HasMission, 984)
	MisResultCondition(NoRecord,  984)
	MisResultCondition(HasItem, 4738,1 )
	MisResultAction(TakeItem, 4738,1 )
	
	MisResultAction(ClearMission,  984)
	MisResultAction(SetRecord,  984)
	MisResultAction(AddMoney,300000,300000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4738)	
	TriggerAction( 1, AddNextFlag,   984, 10,1)
	RegCurTrigger(   9841 )

-------------------------------------------------------魔布口袋
	DefineMission( 5052, "魔布口袋", 985 )

	MisBeginTalk( "<t>虽然已解除了面具的邪恶，但佐罗面具太诡异了，不能让它轻易现世，唯一办法就是装进<y魔布口袋>，海军少将·威尔斯（2277，2831）会帮我这个忙的，我已经派人送信过去了，你把面具带给他吧。" )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------佐罗面具
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "找加纳的海军少将威尔斯保管佐罗面具")----------------++++13
	MisHelpTalk("<t>痴心，劳碌，贪心，计较，最后只是一场劳心劳神的笑话。这就是人生的常态吗？我要好好反省一下。")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------魔布口袋
	DefineMission( 5053, "魔布口袋", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>看来你的贪欲不强没有占有面具，有前途！这是严罗塔让我交给你的解除魔咒的<y圣灵护符>拿去给春风镇<b裴蒂>(3287,2501)复命吧。")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------灵符上的金粉

	DefineMission( 5054, "灵符上的金粉", 986 )

	MisBeginTalk( "<t>圣灵护符上的金色符文不清楚了！？可能是太久没人用了，我需要用10枚<y金币>磨成的金粉使它恢复效力，你介意帮我找吗？你介意也没有关系，不过你要的答案就会被我忘记。" )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--金币
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打到骷髅海盗船上的金币给裴蒂")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>你是个值得托付的人！")
	MisHelpTalk("<t>藏宝海湾里的骷髅海盗船上能打到金币哦")
	MisResultCondition(HasMission, 986)
	MisResultCondition(NoRecord,986)
	MisResultCondition(HasItem,2438,10 )
	MisResultAction(TakeItem, 2438,10 )
	MisResultAction(ClearMission, 986)
	MisResultAction(SetRecord,986)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2438)	
	TriggerAction( 1, AddNextFlag,  986, 10,10)
	RegCurTrigger( 9861 )
-------------------------------------------------------裴蒂的指点
	DefineMission(5055,"裴蒂的指点",987)
	
	MisBeginTalk( "<t>孩子，真相还要你自己去寻找，路在脚下，我可以告诉你一个重要信息：去找那个<b引导你走上职业道路的人>吧。" )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "该任务无法中断")
		
	MisNeed(MIS_NEED_DESP, "找职业介绍人谈谈")
	
	MisHelpTalk("<t>你还没去吗？快去吧！")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------裴蒂的指点（比特）
	DefineMission(5056, "裴蒂的指点", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>裴蒂那个老太婆总是给我找麻烦！")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

-----------------------------------------------------裴蒂的指点（雷欧）
	DefineMission(5057, "裴蒂的指点", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>裴蒂那个老太婆总是给我找麻烦！")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------裴蒂的指点（小山车）
	DefineMission(5058, "裴蒂的指点", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>裴蒂那个老太婆总是给我找麻烦！")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------裴蒂的指点(甘地维拉)
	DefineMission(5059, "裴蒂的指点", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>裴蒂那个老太婆总是给我找麻烦！")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)


-----------------------------------------------------职业介绍人的建议（if剑士）
	DefineMission( 5060, "比特的建议",988 )

	MisBeginTalk( "<t>快乐总被寂寞烧尽，即使人世繁华也有迷茫不知所措的时候。<n><t>每当此时我都会去潜心修行。你不妨也尝试一下。<n><t>杀死寂寞之塔1层的暴怒的蜥蜴人1只" )
	MisBeginCondition(NoRecord, 988)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 988 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 988 )
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--暴怒的蜥蜴人
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>你真的很出色，经过修行是不是内心豁达一些了！恭喜你！")
	MisHelpTalk("<t>这个蜥蜴人很凶，你要多加小心。")
	MisResultCondition(HasMission, 988 )
	MisResultCondition(HasFlag, 988, 10 )
	MisResultAction(ClearMission, 988 )
	MisResultAction(SetRecord, 988 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 524)	
	TriggerAction( 1, AddNextFlag,  988 , 10,1)
	RegCurTrigger(  9881 )

-----------------------------------------------------雷欧的建议（if猎人）
	DefineMission( 5061, "雷欧的建议", 989 )

	MisBeginTalk( "<t>笑容总被思念淹没，即使富贵荣华仍有时觉得迷茫不知所措。每当此时我都会去独自流浪漂泊。你不妨也尝试一下。<n><t>收集加纳的王殿护卫(435,1690)的<y王族近卫徽记> 1个，寂寞之塔1层的敏捷的圣林猎手的<y敏捷的圣林之心>1个" )
	MisBeginCondition(NoRecord, 989)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 989 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 989 )
	MisBeginAction(AddTrigger, 9891, TE_GETITEM, 4789, 1 )		
	MisBeginAction(AddTrigger, 9892, TE_GETITEM, 4741, 1 )	
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集王族近卫徽记1个,y敏捷的圣林之心1个")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>你是个出色的勇士，经过漂泊你是不是觉得豁达开朗了很多！")
	MisHelpTalk("<t>去磨炼自己的心智吧")
	MisResultCondition(HasMission,989 )
	MisResultCondition(HasItem, 4789,1 )
	MisResultCondition(HasItem,4741,1 )
	MisResultAction(TakeItem,  4789,1 )
	MisResultAction(TakeItem, 4741,1 )
	MisResultAction(ClearMission, 989 )
	MisResultAction(SetRecord, 989 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster,  4789)	
	TriggerAction( 1, AddNextFlag,  989 , 10,1)
	RegCurTrigger(  9891 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,4741)	
	TriggerAction( 1, AddNextFlag,  989 , 20,1)
	RegCurTrigger(  9892 )

---------------------------------------------------------------小山车的建议（if冒险者）
	DefineMission( 5062, "小山车的建议", 990 )

	MisBeginTalk( "<t>幸福总被疾风吹散，即使人前无数风光仍有时觉得迷茫不知所措。每当此时我都会去撑帆远航。你不妨也尝试一下。<n><t>去深蓝群岛萨迪勒补给站（194,1718） 远航吧，找海港指挥乔尔乔尼聊聊 。" )
	MisBeginCondition(NoRecord, 990)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 990 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 990 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisHelpTalk("<t>去深蓝群岛萨迪勒补给站（194,1718） 远航吧，找海港指挥乔尔乔尼聊聊")
	MisNeed(MIS_NEED_DESP, "找海港指挥乔尔乔尼聊聊")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------职业介绍人的建议
	DefineMission( 5063, "小山车的建议", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>你是个出色的勇士，经过远航你是不是觉得豁达开朗了很多！人生就是一次漫长的远航，欢迎你，远来的客人。这次远航会使你终生难忘的。")
	MisHelpTalk("<t>航海是勇士的职业。")
	MisResultCondition(NoRecord, 990)
	MisResultCondition(HasMission,990)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission, 990 )
	MisResultAction(SetRecord, 990 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	-------------------------------------------------------甘地维拉的建议（if药师）
	DefineMission( 5064, "甘地维拉的建议", 991 )

	MisBeginTalk( "<t>希望总被冷雨打湿，即使深知生前身后也有迷茫不知所措的时候。<n><t>米尔米莉(1244，3186)会告诉你怎么做。" )
	MisBeginCondition(NoRecord, 991)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 991 )
	MisBeginCondition(NoPfEqual,1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 991 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找米尔米莉聊聊。")
	MisHelpTalk("<t>米尔米莉在魔女之海(1244，3186)")
	MisResultCondition(AlwaysFailure)

-------------------------------甘地维拉的建议
	DefineMission( 5072, "甘地维拉的建议", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>我都快成大神官的秘书了。")
	MisHelpTalk("<t>你很勇敢。")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------石化的意志
	DefineMission( 5073, "石化的意志", 998 )

	MisBeginTalk( "<t>对自己使用一下石化皮肤功能。" )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "对自己使用一下石化皮肤功能。")
	MisHelpTalk("<t>坚强的意志是海盗的基本条件。")
	MisResultTalk("<t>每个人都是自己的英雄，你是否觉得自己坚强了很多！")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------智者的事
     DefineMission(5068,"智者的事",993)
     MisBeginTalk("<t>你的能力得到了充分的证明。<n><t>我在作一个非常重要的职业统计表，等一下跟你讲智者的事")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "该任务无法中断")

     MisNeed(MIS_NEED_DESP, "等白银城的比特作完统计表")
     MisHelpTalk("<t>统计表还没作完呢，你不要着急嘛。")
     MisResultTalk("<t>做统计表可不是一件轻松的事")
     MisResultCondition(NoRecord, 993)---------应改为NoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------智者的事
      DefineMission(5069,"智者的事",994)
     MisBeginTalk("<t>你的能力得到了充分的证明。<n><t>我在作一个非常重要的职业统计表，等一下跟你讲智者的事")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "该任务无法中断")

     MisNeed(MIS_NEED_DESP, "等冰狼堡的雷欧作完统计表")
     MisHelpTalk("<t>统计表还没作完呢，你不要着急嘛。")
      MisResultTalk("<t>做统计表可不是一件轻松的事")
     MisResultCondition(NoRecord, 994)---------应改为NoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------智者的事
      DefineMission(5070,"智者的事",995)
     MisBeginTalk("<t>你的能力得到了充分的证明。<n><t>我在作一个非常重要的统计表，等一下跟你讲智者的事")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "该任务无法中断")

     MisNeed(MIS_NEED_DESP, "等魔女之海的米尔米莉作完统计表")
     MisHelpTalk("<t>统计表还没作完呢，你不要着急嘛。")
      MisResultTalk("<t>做统计表可不是一件轻松的事.")
     MisResultCondition(NoRecord, 995)---------应改为NoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------智者的事
      DefineMission(5071,"智者的事",997)
     MisBeginTalk("<t>你的能力得到了充分的证明。<n><t>我在作一个非常重要的统计表，等一下跟你讲智者的事")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "该任务无法中断")

     MisNeed(MIS_NEED_DESP, "等海港指挥作完统计表")
     MisHelpTalk("<t>统计表还没作完呢，你不要着急嘛。")
      MisResultTalk("<t>做统计表可不是一件轻松的事")
     MisResultCondition(NoRecord, 997)---------应改为NoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------谁是智者-------------白银城商会会长·劳伦迪马斯
	DefineMission( 5167, "谁是智者", 1500 )

	MisBeginTalk( "<t>智者的身份很诡秘,我也不是很清楚,你可以找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人询问,时间紧你只能找一位哦." )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人聊.")
	MisHelpTalk("<t>朗拿度在(853,3549),白银城商会会长·劳伦迪马斯在(2242,2748),艾立克在(1294,498)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------谁是智者---------雷欧
	DefineMission( 5168, "谁是智者", 1501 )

	MisBeginTalk( "<t>智者的身份很诡秘,我也不是很清楚,你可以找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人询问,时间紧你只能找一位哦" )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人聊.")
	MisHelpTalk("<t>朗拿度在(853,3549),白银城商会会长·劳伦迪马斯在(2242,2748),艾立克在(1294,498)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------谁是智者------------米尔米莉
	DefineMission( 5074, "谁是智者", 1502 )

	MisBeginTalk( "<t>智者的身份很诡秘,我也不是很清楚,你可以找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人询问,时间紧你只能找一位哦" )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人聊.")
	MisHelpTalk("<t>朗拿度在(853,3549),白银城商会会长·劳伦迪马斯在(2242,2748),艾立克在(1294,498)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------谁是智者------------乔尔乔尼
	DefineMission( 5075, "谁是智者", 1503 )

	MisBeginTalk( "<t>智者的身份很诡秘,我也不是很清楚,你可以找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人询问,时间紧你只能找一位哦." )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找沙岚的朗拿度,白银城商会会长·劳伦迪马斯,冰狼的商会会长·艾立克其中的一个人聊聊.")
	MisHelpTalk("<t>朗拿度在(853,3549),白银城商会会长·劳伦迪马斯在(2242,2748),艾立克在(1294,498)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------谁是智者
	DefineMission( 5076, "谁是智者", 1500,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>每一个渴望成长的有志青年都想得到智者的点拨,我也曾经找过智者,寻找的道路是艰辛的,你要有心理准备啊.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------谁是智者
	DefineMission( 5077, "谁是智者", 1501,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>每一个渴望成长的有志青年都想得到智者的点拨,我也曾经找过智者,寻找的道路是艰辛的,你要有心理准备啊.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------谁是智者
	DefineMission( 5078, "谁是智者", 1502,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>每一个渴望成长的有志青年都想得到智者的点拨,我也曾经找过智者,寻找的道路是艰辛的,你要有心理准备啊.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------谁是智者
	DefineMission( 5079, "谁是智者", 1503,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>每一个渴望成长的有志青年都想得到智者的点拨,我也曾经找过智者,寻找的道路是艰辛的,你要有心理准备啊.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------谁是智者
	DefineMission( 5080, "谁是智者", 1500,COMPLETE_SHOW )----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>你想找智者?我先声明一下：IQ过低者禁止强求.哇哈哈哈……")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------谁是智者
	DefineMission( 5081, "谁是智者", 1501,COMPLETE_SHOW )-----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>你想找智者?我先声明一下：IQ过低者禁止强求.哇哈哈哈……")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------谁是智者
	DefineMission( 5082, "谁是智者", 1502,COMPLETE_SHOW )-----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>你想找智者?我先声明一下：IQ过低者禁止强求.哇哈哈哈……")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------谁是智者
	DefineMission( 5083, "谁是智者", 1503,COMPLETE_SHOW )-----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>你想找智者?我先声明一下：IQ过低者禁止强求.哇哈哈哈……")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------谁是智者
	DefineMission( 5084, "谁是智者", 1500,COMPLETE_SHOW )----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>朋友,其实我也智慧过人,我曾经研究出大神官为什么脱发和朗拿度为什么有脚气……")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------谁是智者
	DefineMission( 5085, "谁是智者", 1501,COMPLETE_SHOW )-----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>朋友,其实我也智慧过人,我曾经研究出大神官为什么脱发和朗拿度为什么有脚气……")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------谁是智者
	DefineMission( 5086, "谁是智者", 1502,COMPLETE_SHOW )-----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>朋友,其实我也智慧过人,我曾经研究出大神官为什么脱发和朗拿度为什么有脚气……")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------谁是智者
	DefineMission( 5087, "谁是智者", 1503,COMPLETE_SHOW )-----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>朋友,其实我也智慧过人,我曾经研究出大神官为什么脱发和朗拿度为什么有脚气……")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------金牌门徒-------------白银城商会会长·劳伦迪马斯
	DefineMission( 5088, "金牌门徒", 1507 )

	MisBeginTalk( "<t>智者是个奇怪的人,他只接见内心坚强技能高超的人.你去找向你透漏智者的事的人吧,他会替我对你进行几个小小的考验." )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找向你透漏智者的事的人.提示：乔尔乔尼、米尔米莉、雷欧、比特中的一位")
	MisHelpTalk("<t>米尔米莉在魔女之海(1244,3186),乔尔乔尼在深蓝群岛萨迪勒补给站（194,1718）")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------金牌门徒
	DefineMission( 5089, "金牌门徒", 1507,COMPLETE_SHOW )--------比特
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>白银城商会会长·劳伦迪马斯说对你的职业不熟悉,让我替他考验你是否是合格的金牌门徒.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1514)

	


	--------------------------------------------------------金牌门徒
	DefineMission( 5090, "金牌门徒", 1507,COMPLETE_SHOW )---------雷欧
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>白银城商会会长·劳伦迪马斯说对你的职业不熟悉,让我替他考验你是否是合格的金牌门徒.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1515)

--------------------------------------------------------金牌门徒
	DefineMission( 5091, "金牌门徒", 1507,COMPLETE_SHOW )---------乔尔乔尼
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>小山车先生最近忙得很,委托我替劳伦迪马斯考验你是否是合格的金牌门徒.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1516)

	--------------------------------------------------------金牌门徒
	DefineMission( 5092, "金牌门徒", 1507,COMPLETE_SHOW )---------米尔米莉
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我现在是大神官的专职秘书,代大神官考验你是否是合格的金牌门徒.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1517)

---------------------------------------------------------------------比特初级门徒

	DefineMission( 5093, "初级门徒", 1508 )

	MisBeginTalk( "<t>梦想的实现需要现实的磨炼.首先捕杀加纳的<b地精战士>（314,2641）5个" )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------地精战士
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀加纳的地精战士5只给比特")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>你是我合格的初级门徒了,再接再厉!")
	MisHelpTalk("<t>对付地精无需紧张.")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------比特二级门徒

	DefineMission( 5094, "二级门徒", 1509 )

	MisBeginTalk( "<t>我曾指导过一些门徒,他们连杀5只邪恶的不灭武士（580,2121）都搞不定,我把他们逐出师门了,你要尝试吗?" )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------邪恶的不灭武
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀加纳的邪恶的不灭武士5只给比特")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>你的表现还可以,至少不会被逐出师门了")
	MisHelpTalk("<t>要当心,一不小心完不成就可能被逐出师门.")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------比特三级门徒

	DefineMission( 5095, "三级门徒", 1510 )

	MisBeginTalk( "<t>再去挑战6只加纳邪恶的南瓜骑士(340,1581)" )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------邪恶的南瓜骑士
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀加纳邪恶的南瓜骑士6只给比特")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>你离梦想越来越近了!")
	MisHelpTalk("<t>想要快点找到智者就加快脚步吧.")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------比特高级门徒

	DefineMission( 5096, "高级门徒", 1511 )

	MisBeginTalk( "<t>想要成为我门下的金牌门徒还要去捕杀8只加纳的<b暗影猎手>(450,2121)" )
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------暗影猎手
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀加纳的暗影猎手8只给比特")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>你的内心和技能都通过了考验.")
	MisHelpTalk("<t>最后一个门徒资格考验了,不要放弃.")
	MisResultCondition(HasMission,  1511)
	MisResultCondition(NoRecord,  1511)
	MisResultCondition(HasFlag,  1511, 17 )
	MisResultAction(ClearMission,  1511 )
	MisResultAction(SetRecord,  1511  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 201)	
	TriggerAction( 1, AddNextFlag,  1511 , 10,8)
	RegCurTrigger(   15111 )


	
	---------------------------------------------------------------------雷欧初级门徒

	DefineMission( 5097, "初级门徒", 1512 )

	MisBeginTalk( "<t>冰狼堡越来越冷了,你不如去随便捕杀5只海底隧道的<b小冰龙>(348,436)热热身" )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------小冰龙
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀5只海底隧道的小冰龙给雷欧")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>我能感觉到你的体温在上升.")
	MisHelpTalk("<t>杀怪一直是我们家族密传的保温措施.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------雷欧二级门徒

	DefineMission( 5098, "二级门徒", 1513 )

	MisBeginTalk( "<t>继续热身!捕杀5只加纳境内的疯狂的土著人（561,2334）" )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------疯狂的土著人
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀5只加纳境内的疯狂的土著人给雷欧")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>我能感觉到你的体温又有所上升.")
	MisHelpTalk("<t>杀怪真的一直是我们家族密传的保温措施.")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------雷欧三级门徒

	DefineMission( 5099, "三级门徒", 1518 )

	MisBeginTalk( "<t>还要热身!捕杀6只加纳境内的狼人战士队长(472,2484)" )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------狼人战士队长
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀6只加纳境内的狼人战士队长给雷欧")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>我能感觉到你的体温一直在上升.")
	MisHelpTalk("<t>杀怪的确是我们家族密传的保温措施.")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------雷欧高级门徒

	DefineMission( 5100, "高级门徒", 1519 )

	MisBeginTalk( "<t>最后一次热身!捕杀8只加纳的<b巨型树人>(450,2121)" )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------巨型树人
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀8只加纳境内的巨型树人给雷欧")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>恭喜你短期内不必担心在冰狼堡感冒,并且成为我的金牌门徒.")
	MisHelpTalk("<t>不要忘记我们家族密传的保温措施.")
	MisResultCondition(HasMission,  1519)
	MisResultCondition(NoRecord,  1519)
	MisResultCondition(HasFlag,  1519, 17 )
	MisResultAction(ClearMission,  1519 )
	MisResultAction(SetRecord,  1519  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 511)	
	TriggerAction( 1, AddNextFlag,  1519 , 10,8)
	RegCurTrigger(   15191 )

	---------------------------------------------------------------------米尔初级门徒

	DefineMission( 5101, "初级门徒", 1520 )

	MisBeginTalk( "<t>最近经常有人投诉加纳的<b邪恶的不灭武士>(580,2121)面貌丑陋影响市容,现在我代大神官赋予你环卫战士的身份,去清理他们." )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------邪恶的不灭武士
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀5只加纳境内的邪恶的不灭武士给米尔米莉")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>虽然长得丑不是它们的错,但出来吓人就是他们的不对了.")
	MisHelpTalk("<t>出门杀怪要当心哦.")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------米尔二级门徒

	DefineMission( 5102, "二级门徒", 1521 )

	MisBeginTalk( "<t>我很看不惯魔女海岸的<b魔女海妖>（1014,2550）自以为很漂亮的态度,切!难道会比我漂亮?杀2只撮撮她们的锐气" )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀2只魔女海岸的魔女海妖给米尔米莉")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>有前途！")
	MisHelpTalk("<t>哦.......")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------米尔三级门徒

	DefineMission( 5103, "三级门徒", 1522 )

	MisBeginTalk( "<t>魔女海妖的表妹深蓝群岛的<b深蓝海妖>(1038,2317)扬言要替她们的姐妹报仇,压制住他们这种想法" )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀3只深蓝群岛的深蓝海妖给米尔米莉")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>看谁还在我面前炫耀美丽！")
	MisHelpTalk("<t>杀不了他们请你不要回来找我.")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------米尔高级门徒

	DefineMission( 5104, "高级门徒", 1523 )

	MisBeginTalk( "<t>鉴于你能够舍生忘死的捍卫真正的美丽,我决定奖励你一件好事:制服8个海盗零零喜我会替你炫耀你的超凡能力,而且是夸大的那种哦,以后你在这的日子会更好混……" )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀8个秋岛的海盗零零喜(2799,3010)给米尔米莉 ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>恭喜你成为大神官的金牌门徒!")
	MisHelpTalk("<t>都说我漂亮,其实没有那么夸张啦......")
	MisResultCondition(HasMission,  1523)
	MisResultCondition(NoRecord,  1523)
	MisResultCondition(HasFlag,  1523, 17 )
	MisResultAction(ClearMission,  1523 )
	MisResultAction(SetRecord,  1523  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 735)	
	TriggerAction( 1, AddNextFlag,  1523 , 10,8)
	RegCurTrigger(   15231 )


---------------------------------------------------------------------乔尔初级门徒

	DefineMission( 5105, "初级门徒", 1524 )

	MisBeginTalk( "<t>我想在海港两侧安放灯塔,可是这里离大陆太远无法通电.听说闪光的鱼骨架能够产生生物光波,你不妨去魔女海岸的凶猛的骨鱼（900,1308）身上找到2枚给我" )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集闪光的鱼骨架2枚给乔尔乔尼 ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>所有海上的行者都会感激你的义举")
	MisHelpTalk("<t>如果鱼骨有剩余,我还可以做条项链送给蒂娜,呵呵!")
	MisResultCondition(HasMission,  1524)
	MisResultCondition(NoRecord,  1524)
	MisResultCondition(HasItem, 1350, 2)
	MisResultAction(TakeItem,  1350, 2 )
	MisResultAction(ClearMission,  1524 )
	MisResultAction(SetRecord,  1524  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1350)	
	TriggerAction( 1, AddNextFlag, 1524, 10, 2 )
	RegCurTrigger( 15241 )

	---------------------------------------------------------------------乔尔二级门徒

	DefineMission( 5106, "二级门徒", 1525 )

	MisBeginTalk( "<t>还有一个问题,我可不希望那些海上的怪兽也看到这种光,它们会循着光躲在灯塔附近伏击过往船只.你能不能找到可以屏蔽掉部分波长光的<b魔女妖之结晶>." )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "在魔女海岸的魔女海妖(1014,2550)身上找到魔女妖之结晶2块给乔尔乔尼 ")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>对付妖怪就要用妖怪的东西，这个叫做......叫做......呵呵，不说这些了，谢谢你")
	MisHelpTalk("<t>其实是不应该随便杀怪的，毕竟它们也是为了生存，人和妖都是妈生的，人是人他妈生的，妖是妖它妈生的.......")
	MisResultCondition(HasMission,  1525)
	MisResultCondition(NoRecord,  1525)
	MisResultCondition(HasItem, 1295, 2)
	MisResultAction(TakeItem,  1295, 2 )
	MisResultAction(ClearMission,  1525 )
	MisResultAction(SetRecord,  1525  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1295)	
	TriggerAction( 1, AddNextFlag, 1525, 10, 2 )
	RegCurTrigger( 15251 )



---------------------------------------------------------------------乔尔三级门徒

	DefineMission( 5107, "三级门徒", 1526 )

	MisBeginTalk( "<t>由于你的热情帮助,使我产生了对你降低考验难度的决定,找99个精灵果给我,我要榨果汁喝." )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "从精灵草那里得到99个精灵果给乔尔乔尼 ")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>听说喝这种果汁可以长生不老，不要外传哦")
	MisHelpTalk("<t>不要小看这个任务哦")
	MisResultCondition(HasMission,  1526)
	MisResultCondition(NoRecord,  1526)
	MisResultCondition(HasItem, 3116, 99)
	MisResultAction(TakeItem,  3116, 99 )
	MisResultAction(ClearMission,  1526 )
	MisResultAction(SetRecord,  1526  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,3116)	
	TriggerAction( 1, AddNextFlag, 1526, 10, 99 )
	RegCurTrigger( 15261 )


	---------------------------------------------------------------------乔尔高级门徒

	DefineMission( 5108, "高级门徒", 1527 )

	MisBeginTalk( "<t>你的耐心和勇气已经得到了证明,接下来去证明你的力量吧,<b红胡子海盗团突击手>的身材比较健硕,你不如找他练练,带回<r红胡子海盗突击手徽记>才算击败了他." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 1 )----------------
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "从红胡子海盗团突击手身上得到1个红胡子海盗突击手徽记给乔尔乔尼 ")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>恭喜你成为小山车的金牌门徒")
	MisHelpTalk("<t>打败敌人当然要得到他的信物才能让人信服")
	MisResultCondition(HasMission,  1527)
	MisResultCondition(NoRecord,  1527)
	MisResultCondition(HasItem, 4802, 1)
	MisResultAction(TakeItem,  4802, 1 )
	MisResultAction(ClearMission,  1527 )
	MisResultAction(SetRecord,  1527  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4802)	
	TriggerAction( 1, AddNextFlag, 1527, 10, 1 )
	RegCurTrigger( 15271 )

-------------------------------------------------------合格的门徒--------比特
	DefineMission( 5109, "合格的门徒", 1528 )

	MisBeginTalk( "<t>你已经是我合格的门徒,去找白银城商会会长·劳伦迪马斯吧" )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找白银城商会会长·劳伦迪马斯聊聊")
	MisHelpTalk("<t>白银城商会会长·劳伦迪马斯在(2242,2748)")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------合格的门徒
	DefineMission( 5110, "合格的门徒", 1528,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你办事的效率令所有海盗妒忌!")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------合格的门徒--------雷欧
	DefineMission( 5111, "合格的门徒", 1529 )

	MisBeginTalk( "<t>你已经是我合格的门徒,去找白银城商会会长·劳伦迪马斯吧" )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找白银城商会会长·劳伦迪马斯聊聊")
	MisHelpTalk("<t>白银城商会会长·劳伦迪马斯在(2242,2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------合格的门徒
	DefineMission( 5112, "合格的门徒", 1529,COMPLETE_SHOW )------白银城商会会长·劳伦迪马斯(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你办事的效率令所有海盗妒忌!")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------合格的门徒--------米尔
	DefineMission( 5113, "合格的门徒", 1530 )

	MisBeginTalk( "<t>你已经是大神官的合格门徒了,去找白银城商会会长·劳伦迪马斯吧" )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找白银城商会会长·劳伦迪马斯聊聊")
	MisHelpTalk("<t>白银城商会会长·劳伦迪马斯在(2242,2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------合格的门徒
	DefineMission( 5114, "合格的门徒", 1530,COMPLETE_SHOW )------劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你办事的效率令所有海盗妒忌!")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------合格的门徒--------乔尔
	DefineMission( 5115, "合格的门徒", 1531 )

	MisBeginTalk( "<t>你已经是小山车先生合格的门徒,去找劳伦迪马斯吧" )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找白银城商会会长·劳伦迪马斯聊聊")
	MisHelpTalk("<t>白银城商会会长·劳伦迪马斯在(2242,2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------合格的门徒
	DefineMission( 5116, "合格的门徒", 1531,COMPLETE_SHOW )------劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你办事的效率令所有海盗妒忌！")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------伟大的神谕----------朗拿度
	DefineMission( 5117, "伟大的神谕", 1532 )

	MisBeginTalk( "<t>你去找8个神的仆人获得一些云山雾罩的启示，就可以回来找我了" )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>先去找白银的 <r服装店助理·蓓蓓>(2265,2704)")
	MisHelpTalk("<t>千万要对这些仆人恭敬，否则你会有意外发生")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------伟大的神谕
	DefineMission( 5118, "伟大的神谕", 1532,COMPLETE_SHOW )-------------服装店助理·蓓蓓
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的真实身份是<b水神>的仆人......")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------一重门

	DefineMission( 5119, "一重门", 1533 )

	MisBeginTalk( "<t>水神的指示在遥远的八重门，你先在我这第一重门接受神的考验吧." )------服装店助理·蓓蓓
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 2 )----------------凶猛的骨鱼
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀2只魔女海岸凶猛的骨鱼(900,1308)给服装店助理·蓓蓓")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>有水的地方就有水神对你的祝福.")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------告别一重门------------服装店助理·蓓蓓
	DefineMission( 5120, "告别一重门", 1534 )

	MisBeginTalk( "<t>你去找冰极补给站的<b克拉拉大师(2664,654)>吧" )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找冰极补给站的克拉拉大师(2664,654)")
	MisHelpTalk("<t>他对你的考验可没有我这里这么简单")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别一重门
	DefineMission( 5121, "告别一重门", 1534,COMPLETE_SHOW )-------------克拉拉大师
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你已经在不知不觉中走上了接近神的道路.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------二重门

	DefineMission( 5122, "二重门", 1535 )

	MisBeginTalk( "<t>一重门只是小小的热身,别得意.来试试我<r火神>仆人的这二重门的考验." )------克拉拉大师
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------凶猛的宝石海豚
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀2只魔女海岸凶猛的宝石海豚(866,2171)给克拉拉大师")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>有火种的地方,就有火神对你的眷顾.")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------告别二重门------------克拉拉大师
	DefineMission( 5123, "告别二重门", 1536 )

	MisBeginTalk( "<t>你去找沙泉补给站的<b马洛(789,3112)>吧" )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找沙泉补给站的<b马洛(789,3112)>")
	MisHelpTalk("<t>祝福你能够通过三重门")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别二重门
	DefineMission( 5124, "告别二重门", 1536,COMPLETE_SHOW )-------------马洛
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>过了前两门,还是普通人.")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------三重门

	DefineMission( 5125, "三重门", 1537 )

	MisBeginTalk( "<t>我是<b风神>的仆人,不晓得你怕不怕挑战." )------马洛
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 2 )----------------凶猛的宝石海豚
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀2只魔女海岸魔女海妖(1014,2550)给马洛")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>当轻风吹乱你的头发,别介意,是风神的爱抚")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------告别三重门------------马洛
	DefineMission( 5126, "告别三重门", 1538 )

	MisBeginTalk( "<t>你去骷髅营地补给站的<b修司(2138,545)>那吧" )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找骷髅营地补给站的<b修司(2138,545)>")
	MisHelpTalk("<t>勇敢的面对四重门吧.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别三重门
	DefineMission( 5127, "告别三重门", 1538,COMPLETE_SHOW )-------------修司
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>勇士,四重门可不像你想象的那么简单啊.")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------四重门

	DefineMission( 5128, "四重门", 1539 )

	MisBeginTalk( "<t>我的秘密身份是<b土神>的心腹,嘘!恭喜你闯过三重门,我这一关很容易的." )------修司
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 5 )----------------红胡子海盗团战斗员
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀5个深蓝群岛红胡子海盗团战斗员(1588,1708)给修司")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>大地之上,恩泽遍布.你是厉害的角色!")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------告别四重门------------修司
	DefineMission( 5129, "告别四重门", 1540 )

	MisBeginTalk( "<t>你去找雷霆堡的<b军医·玛沙(773,1549)>" )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找雷霆堡的<b军医·玛沙(773,1549)>")
	MisHelpTalk("<t>赶快走吧,我约了人一块去吗沙棘.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别四重门
	DefineMission( 5130, "告别四重门", 1540,COMPLETE_SHOW )-------------军医·玛沙
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>欢迎挑战五重门!")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------五重门

	DefineMission( 5131, "五重门", 1541 )

	MisBeginTalk( "<t>2088年的第一场雪比以往来得要晚一些,这是我<b雪神>贴身仆人的独家预测." )------军医·玛沙
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 2 )----------------海妖弓手
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀2只深蓝群岛海妖弓手(3634,3808)给军医·玛沙")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>居…居然过了五重门?!")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------告别五重门------------军医·玛沙
	DefineMission( 5132, "告别五重门", 1542 )

	MisBeginTalk( "<t>肖沸补给站的<b丹尼斯(136,3432)>在等你!" )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找肖沸补给站的<b丹尼斯(136,3432)>")
	MisHelpTalk("<t>丹尼斯很忙,不快一点就会错过他的.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别五重门
	DefineMission( 5133, "告别五重门", 1542,COMPLETE_SHOW )-------------丹尼斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>年轻人我劝你做人最好不要做坏事,早晚有一天会受到惩罚的!记得我少年的时候把熊宝宝的胸毛拔掉了,昨天我被怪物抓住被烧光了胸毛,呜呜呜......")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------六重门

	DefineMission( 5134, "六重门", 1543 )

	MisBeginTalk( "<t><r雷神>是我的主人,这里是第六重门.你的任务是杀6只寂寞之塔1层的白灵猫." )------丹尼斯
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------白灵猫
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀6只寂寞之塔1层的白灵猫给丹尼斯")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>我保证雷神发怒的时候劈歪一点,尽量避开你.")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------告别六重门------------丹尼斯
	DefineMission( 5135, "告别六重门", 1544 )

	MisBeginTalk( "<t>带上我的祝福去找阿兰比斯补给站的<b朱比(1037,671)>吧!" )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找阿兰比斯补给站的<b朱比(1037,671)>")
	MisHelpTalk("<t>燃烧你的热情吧.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别六重门
	DefineMission( 5136, "告别六重门", 1544,COMPLETE_SHOW )-------------朱比
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>过了第六门,也是一般人!")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------七重门

	DefineMission( 5137, "七重门", 1545 )

	MisBeginTalk( "<t>我主<y电神>宽恕世人,七重门才是游戏的开始." )------朱比
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------地精战士长
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀7只沙窟的地精战士长(1392,3066)给朱比")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>看来你也不是很一般.")
	MisHelpTalk("<t>注意保密我的身份.")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------告别七重门------------朱比
	DefineMission( 5138, "告别七重门", 1546 )

	MisBeginTalk( "<t>去找温拿补给站的<b琳达(515,2437)>那吧." )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找温拿补给站的<b琳达(515,2437)>")
	MisHelpTalk("<t>年轻人,我有预感你一定能够通过八重门.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别七重门
	DefineMission( 5139, "告别七重门", 1546,COMPLETE_SHOW )-------------琳达
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>包容和爱是征服世界的武器!")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------八重门

	DefineMission( 5140, "八重门", 1547 )

	MisBeginTalk( "<t>这里是<b爱神>的第八重门,过了这里才算是高手." )------琳达
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------亡灵士兵
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀8只加勒比亡灵士兵给琳达")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>你用努力换得了我对你的尊敬.爱是最纯美的东西,能用爱包容世界才是真正的高手.")
	MisHelpTalk("<t>它们应该在海军基地、地下码头附近.")
	MisResultCondition(HasMission,  1547)
	MisResultCondition(NoRecord,  1547)
	MisResultCondition(HasFlag,  1547, 17 )
	MisResultAction(ClearMission,  1547 )
	MisResultAction(SetRecord,  1547  )
	MisResultAction(AddExp,3000000,3000000)
	MisResultAction(AddMoney,1000000,1000000)	
	MisResultAction(AddExpAndType,2,120000,120000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 808)	
	TriggerAction( 1, AddNextFlag,  1547 , 10,8)
	RegCurTrigger(   15471 )

-------------------------------------------------------终结门的指示------------琳达
	DefineMission( 5141, "终结门的指示", 1548 )

	MisBeginTalk( "<t>这有一卷<r神谕>,拿回去给朗拿度要答案吧." )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------神谕
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>带着神谕去找朗拿度")
	MisHelpTalk("<t>你带着神的眷顾去找答案吧.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------终结门的指示
	DefineMission( 5142, "终结门的指示", 1548,COMPLETE_SHOW )-------------郎拿度
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>能得到神谕说明你做出过很多常人无可能及的努力.")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------神谕
	MisResultAction(TakeItem, 2917,1)-------------神谕
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------完美海盗任务

	DefineMission( 5143, "完美海盗任务", 1549 )

	MisBeginTalk( "<t>每个出色的海盗都是美貌与智慧并重,勇气与力量的象征.完成我交给你的任务来证明自己是完美海盗吧." )------艾立克
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------邪恶的南瓜骑士
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀10只加纳大陆的邪恶的南瓜骑士(340,1581)给艾立克")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>好.")
	MisHelpTalk("<t>不要打破他们的南瓜头哦......")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------完美海盗任务

	DefineMission( 5144, "完美海盗任务", 1550 )

	MisBeginTalk( "<t>虽然我是个从商的,但是我一直渴望成为维护王权和美女的英勇骑士,那个...你可不可以为我夺取2把传说中的<b王室佩剑>." )------艾立克
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------王室佩剑
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "夺取2把加纳大陆的王殿护卫(435,1690)身上的<b王室佩剑>给艾立克.")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>强.")
	MisHelpTalk("<t>我垂涎那把宝剑很久了,不要让我失望啊......")
	MisResultCondition(HasMission,  1550)
	MisResultCondition(NoRecord,  1550)
	MisResultCondition(HasItem, 4893, 2)
	MisResultAction(TakeItem, 4893, 2 )
	MisResultAction(ClearMission,  1550 )
	MisResultAction(SetRecord,  1550  )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 4893)	
	TriggerAction( 1, AddNextFlag,  1550 , 10,2)
	RegCurTrigger(   15501 )


---------------------------------------------------------------------完美海盗任务

	DefineMission( 5145, "完美海盗任务", 1551 )

	MisBeginTalk( "<t>我听说丹尼斯因为年少时作的一件亏心事,不久前胸毛被烧光了.想起来有些怕怕,我似乎在那些顽皮的年纪做了很多...那个...不该做的事.可是现在只想起我曾抓光一只小海妖的尾鳞......虽然是我不对,但还是要先下手为强......" )------艾立克
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------深蓝海妖
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀3只深蓝群岛的深蓝海妖(1038,2317)给艾立克")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>有了我的教训,你千万你不要做亏心事哦,尤其不要欺骗我.")
	MisHelpTalk("<t>别打扰我,我在思考.我还做过什么...不该做的呢......")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------完美海盗任务

	DefineMission( 5146, "完美海盗任务", 1552 )

	MisBeginTalk( "<t>我又想起一件事,记得许多年前我去海边玩耍,出于好奇我还偷了<b海妖弓手>的一块妖之结晶...惭愧!要不是听说丹尼斯的事,我肯定不会把这件有损身份的事说出来的." )------艾立克
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------海妖弓手
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "捕杀3只深蓝群岛的海妖弓手(3634,3808)给艾立克")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>谢谢你为我解除后顾之忧,但我奉劝你替我维护名誉.")
	MisHelpTalk("<t>崭草要除根!!")
	MisResultCondition(HasMission,  1552)
	MisResultCondition(NoRecord,  1552)
	MisResultCondition(HasFlag,  1552, 12 )
	MisResultAction(ClearMission,  1552 )
	MisResultAction(SetRecord,  1552  )
	MisResultAction(AddExp1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1552 , 10,3)
	RegCurTrigger(   15521 )

-------------------------------------------------------谜底揭晓------------劳伦迪马斯
	DefineMission( 5147, "谜底揭晓", 1553 )

	MisBeginTalk( "<t>很好!你已经具备了接受智者点拨的条件,智者就是<b怪叟爷爷>,这块<b蒙德石>是智者送我的,你拿给他他会给我面子的." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------蒙德石
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>带着蒙德石去找冰都补给站的怪叟爷爷(808,373)")
	MisHelpTalk("<t>别说我没提醒你,怪叟爷爷比传说中的还要难应付.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------谜底揭晓
	DefineMission( 5148, "谜底揭晓", 1553,COMPLETE_SHOW )-------------怪叟爷爷
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>别理我,烦着呢.谁的面子我都不给!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------蒙德石
	MisResultAction(TakeItem, 2918, 1 )-----蒙德石
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------谜底揭晓------------郎拿度
	DefineMission( 5149, "谜底揭晓", 1554 )

	MisBeginTalk( "<t>你已经具备了接受智者点拨的条件,智者就是<b怪叟爷爷>,这块<b蒙德石>是智者送我的,你拿给他他会给我面子的." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------蒙德石
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>带着蒙德石去找冰都补给站的怪叟爷爷(808,373)")
	MisHelpTalk("<t>别说我没提醒你,怪叟爷爷比传说中的还要难应付.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------谜底揭晓
	DefineMission( 5150, "谜底揭晓", 1554,COMPLETE_SHOW )-------------怪叟爷爷
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>别理我,烦着呢.谁的面子我都不给!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------蒙德石
	MisResultAction(TakeItem, 2918, 1 )-----蒙德石
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------谜底揭晓------------艾立克
	DefineMission( 5151, "谜底揭晓", 1555 )

	MisBeginTalk( "<t>以你现在的智商应该可以与智者交谈了,智者就是<b怪叟爷爷>,这块<b蒙德石>是智者送我的,你拿给他他会给我面子的." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------蒙德石
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>带着蒙德石去找冰都补给站的怪叟爷爷(808,373)")
	MisHelpTalk("<t>别说我没提醒你,怪叟爷爷比传说中的还要难应付.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------谜底揭晓
	DefineMission( 5152, "谜底揭晓", 1555,COMPLETE_SHOW )-------------怪叟爷爷
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>别理我,烦着呢.谁的面子我都不给!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------蒙德石
	MisResultAction(TakeItem, 2918, 1 )-----蒙德石
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------老朽们的纠纷------------怪叟爷爷
	DefineMission( 5169, "老朽们的纠纷", 1557 )

	MisBeginTalk( "<t>是谁惹了我?你去问冰都补给站的冬达米婆婆(795,363)吧." )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "<t>去找冬达米婆婆聊聊")
	MisHelpTalk("<t>冬达米是个麻烦又固执的老太婆.")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------老朽们的纠纷
	DefineMission( 5153, "老朽们的纠纷", 1557,COMPLETE_SHOW )-------------冬达米婆婆
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我为什么和他争吵?难道我年纪大了就不能捍卫真理了吗?选择<rHello>然后你来回答我一个问题")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------老太婆的智慧

	DefineMission( 5154, "老太婆的智慧", 1561 )

	MisBeginTalk( "<t>看你是个可塑之材,我再问你一个问题." )------冬达米婆婆
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "点击<r又Hello！>回答冬达米婆婆的问题")
	
	MisResultTalk("<t>多做智力题就会像婆婆这样聪明了.")
	MisHelpTalk("<t>思考是智者的共同爱好,当然我也有这个爱好")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------治疗传染病

	DefineMission( 5155, "治疗传染病", 1566 )-----冬达米婆婆

	MisBeginTalk( "<t>这么简单的问题你都答错,我看你是被怪叟传染了可怕的迟钝症.这种病要靠动手才能治愈,你去学习造手雷吧" )------冬达米婆婆
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "制造1个3级手雷给冬达米婆婆")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>做得不错,认为你得了传染病,可能是一场误会.")
	MisHelpTalk("<t>这是对你的惩罚")
	MisResultCondition(NoRecord, 1566)
	MisResultCondition(HasMission, 1566)
	MisResultCondition(HasItem, 2743, 1)
	MisResultAction(TakeItem,  2743, 1 )
	MisResultAction(ClearMission,1566)
	MisResultAction(SetRecord, 1566)
	MisResultAction(SetRecord, 1559)


	InitTrigger()
	TriggerCondition( 1, IsItem,2743)	
	TriggerAction( 1, AddNextFlag, 1566, 10, 1 )
	RegCurTrigger( 15661 )
---------------------------------------------------------------------手动治疗法

	DefineMission( 5156, "手动治疗法", 1567 )-----冬达米婆婆

	
	MisBeginTalk( "<t>这么简单的问题你都答错,我看你是被怪叟传染了可怕的迟钝症.这种病要靠动手才能治愈,你去学习造闪光弹吧" )------冬达米婆婆
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "制造1个3级闪光弹给冬达米婆婆")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>做得不错,认为你得了传染病,可能是一场误会.")
	MisHelpTalk("<t>这是对你的惩罚")
	MisResultCondition(NoRecord, 1567)
	MisResultCondition(HasMission, 1567)
	MisResultCondition(HasItem, 2744, 1)
	MisResultAction(TakeItem,  2744, 1 )
	MisResultAction(ClearMission,1567)
	MisResultAction(SetRecord, 1567)
	


	InitTrigger()
	TriggerCondition( 1, IsItem,2744)	
	TriggerAction( 1, AddNextFlag, 1567, 10, 1 )
	RegCurTrigger( 15671 )



-------------------------------------------------------真理守护者-----------------冬达米婆婆
	DefineMission( 5157, "真理守护者", 1568 )

	MisBeginTalk( "<t>你被伟大的冬达米赐封为真理守护者，不如你回去和怪老头谈谈，让他反省一下自己." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "<t>去找怪叟爷爷聊聊")
	MisHelpTalk("<t>快去吧,维护真理就靠你们这些年轻人了.")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------真理守护者
	DefineMission( 5158, "真理守护者", 1568,COMPLETE_SHOW )-------------怪叟
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你说冬达米她肯服输了，你没骗我吧？哇哈哈哈……由此看来，真理的确是掌握在我这种少数的智者手中啊。你被伟大的怪叟赐封为真理守护者")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------真理守护者-----------------冬达米婆婆
	DefineMission( 5159, "真理守护者", 1569 )

	MisBeginTalk( "<t>你被伟大的冬达米赐封为真理守护者，不如你回去和怪老头谈谈，让他反省一下自己." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "<t>去找怪叟爷爷聊聊")
	MisHelpTalk("<t>快去吧,维护真理就靠你们这些年轻人了.")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------真理守护者

	DefineMission( 5160, "真理守护者", 1569,COMPLETE_SHOW )-------------怪叟
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你说冬达米她肯服输了，你没骗我吧？哇哈哈哈……由此看来，真理的确是掌握在我这种少数的智者手中啊。你被伟大的怪叟赐封为真理守护者")
	MisResultCondition(NoRecord, 1569)
	MisResultCondition(HasMission, 1569)
	MisResultAction(ClearMission,1569)
	MisResultAction(SetRecord, 1569)
	MisResultAction(SetRecord, 1571)

	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,20000,20000)
-----------------------------------------------------神秘的咒语

	DefineMission( 5161, "神秘的咒语",1570 )

	MisBeginTalk( "<t>我看你也没什么事做,不如你帮个忙,我一直在研究有关古老神秘咒语的破解方法.据可靠消息,加勒比的亡灵炮艇上有写有神秘咒语的口令卡片,我想研究一下." )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--口令AB
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打到亡灵炮艇上的口令AB给怪叟")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>快给我看看!上面似乎没什么东西啊......难道是天书?")
	MisHelpTalk("<t>亡灵炮艇在海军基地有出没")
	MisResultCondition(HasMission, 1570)
	MisResultCondition(NoRecord,1570)
	MisResultCondition(HasItem,2408,1 )
	MisResultAction(TakeItem, 2408,1 )
	MisResultAction(ClearMission, 1570)
	MisResultAction(SetRecord,1570)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2408)	
	TriggerAction( 1, AddNextFlag,  1570, 10,1)
	RegCurTrigger( 15701 )

----------------------------------------------------神秘的咒语

	DefineMission( 5162, "神秘的咒语",1572 )

	MisBeginTalk( "<t>什么咒语啊?完全看不出有什么特别.既然有口令AB一定有口令BC,你不妨找来让我找些眉目" )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--口令BC
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打到亡灵快艇上的口令BC给怪叟")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>快拿给我,我有预感这次要有发现.")
	MisHelpTalk("<t>亡灵快艇在海军基地有出没")
	MisResultCondition(HasMission, 1572)
	MisResultCondition(NoRecord,1572)
	MisResultCondition(HasItem,2409,1 )
	MisResultAction(TakeItem, 2409,1 )
	MisResultAction(ClearMission, 1572)
	MisResultAction(SetRecord,1572)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2409)	
	TriggerAction( 1, AddNextFlag,  1572, 10,1)
	RegCurTrigger( 15721 )


	----------------------------------------------------神秘的咒语

	DefineMission( 5163, "神秘的咒语",1573 )

	MisBeginTalk( "<t>根据研究发现我还需要一个叫作口令CD的东东." )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--口令CD
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打到亡灵士兵身上的口令CD给怪叟")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>干嘛这样看着我,我这次真的有预感要有发现.")
	MisHelpTalk("<t>亡灵士兵在海军基地有出没")
	MisResultCondition(HasMission, 1573)
	MisResultCondition(NoRecord,1573)
	MisResultCondition(HasItem,2410,1 )
	MisResultAction(TakeItem, 2410,1 )
	MisResultAction(ClearMission, 1573)
	MisResultAction(SetRecord,1573)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2410)	
	TriggerAction( 1, AddNextFlag,  1573, 10,1)
	RegCurTrigger( 15731 )


----------------------------------------------------神秘的咒语

	DefineMission( 5164, "神秘的咒语",1574 )

	MisBeginTalk( "<t>你看起来也不傻啊,怎么就不知道把口令DE一起带回来呢?导致我没有查出头绪." )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--口令DE
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打到亡灵士兵身上的口令DE给怪叟")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>我能感觉到你对我有所不满.")
	MisHelpTalk("<t>亡灵士兵在海军基地有出没")
	MisResultCondition(HasMission, 1574)
	MisResultCondition(NoRecord,1574)
	MisResultCondition(HasItem,2411,1 )
	MisResultAction(TakeItem, 2411,1 )
	MisResultAction(ClearMission, 1574)
	MisResultAction(SetRecord,1574)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2411)	
	TriggerAction( 1, AddNextFlag,  1574, 10,1)
	RegCurTrigger( 15741 )


----------------------------------------------------神秘的咒语

	DefineMission( 5165, "神秘的咒语",1575 )

	MisBeginTalk( "<t>做到这里你应该知道下一步该拿什么回来了吧.原来那才是咒语研究的关键所在" )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--口令EF
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "打到亡灵军官身上的口令EF给怪叟")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>等一下告诉你我的研究结果......")
	MisHelpTalk("<t>亡灵军官在地下码头、地下军械库、地下实验室均有出没")
	MisResultCondition(HasMission, 1575)
	MisResultCondition(NoRecord,1575)
	MisResultCondition(HasItem,2412,1 )
	MisResultAction(TakeItem, 2412,1 )
	MisResultAction(ClearMission, 1575)
	MisResultAction(SetRecord,1575)
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,400000,400000)	
	MisResultAction(AddExpAndType,2,80000,80000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2412)	
	TriggerAction( 1, AddNextFlag,  1575, 10,1)
	RegCurTrigger( 15751 )


----------------------------------------咒语的研究结果
     DefineMission(5166,"咒语的研究结果",1576)
     MisBeginTalk("<t>等一下告诉你我的研究结果......")
     MisBeginCondition(NoRecord,1576)
      MisBeginCondition(NoMission, 1576)
     MisBeginCondition(HasRecord, 1575)
     MisBeginAction(AddMission, 1576)
     MisCancelAction(SystemNotice, "该任务无法中断")

     MisNeed(MIS_NEED_DESP, "等怪叟告诉你他的研究结果.")
     MisHelpTalk("<t>你不要着急嘛......")
      MisResultTalk("<t>原来咒语和这些卡片一点关系都没有,我被骗了.放心,我不会亏待你的.")
     MisResultCondition(HasRecord, 1576)---------应改为NoRecord
     MisResultCondition(HasMission, 1576)
     MisResultAction(ClearMission, 1576 )
     MisResultAction(SetRecord, 1576 )



end
HistoryMission001()