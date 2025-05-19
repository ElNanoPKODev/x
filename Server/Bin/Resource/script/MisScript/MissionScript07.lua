-------------------------------------------------------------------
--									--
--									--
--NPCScript07.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript07.lua" )



 ---------------------------------------------宠宠总动员(1)

	DefineMission( 900, "宠宠总动员", 900)

	MisBeginTalk( "<t>想要漂亮的宠宠不？那就必须要通过我给你的考验.<n><t>去城外杀10个狐道人再带上你的收妖铃来找我吧.<n><t>你会有机会获得漂亮的宠宠哦.")
	MisBeginCondition(LvCheck, ">", 59 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission, 900)
	MisBeginAction(AddMission, 900)
	MisBeginAction(AddTrigger, 9001, TE_KILL, 748, 10 )
	MisCancelAction(ClearMission, 900)

	MisNeed(MIS_NEED_DESP, "替算命先生杀掉10个狐道人 ")	
	MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)
	 
	MisHelpTalk("<t>快去快去啊,为了漂亮的宠宠哦")	
	MisResultTalk("<t>速度到还不慢嘛!<n><t>如果你运气好的话,宝箱里就会有你所要的宠宠哦")
	MisResultCondition(HasMission, 900)
	MisResultCondition(HasFlag, 900, 19 )
	MisResultCondition(HasItem,0844,1)
	MisResultAction(TakeItem, 0844,1)
	MisResultAction(ClearMission,900)
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1)
		
	InitTrigger() 
	TriggerCondition( 1, IsMonster, 748 )	
	TriggerAction( 1, AddNextFlag, 900, 10, 10 )
	RegCurTrigger(9001)



	-------------------------------------------------宠宠总动员(2)
	DefineMission(901,"宠宠总动员",901)

	MisBeginTalk("<t>想要漂亮的宠宠不？那就必须要通过我给你的考验.<n><t>如果你能去杀森灵20个、帕帕20个、泥浆怪10个、曼陀罗10个,拳击袋 鼠10个再带上你的收妖铃来找我的话,那你就会有机会获得漂亮的宠宠的")

	MisBeginCondition(LvCheck, "<", 60 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission,901)
	MisBeginAction(AddMission, 901) 
	MisBeginAction(AddTrigger, 9011, TE_KILL, 103, 20)
	MisBeginAction(AddTrigger, 9012, TE_KILL, 70, 20)
	MisBeginAction(AddTrigger, 9013, TE_KILL, 253, 10)
	MisBeginAction(AddTrigger, 9014, TE_KILL, 85, 10)
	MisBeginAction(AddTrigger, 9015, TE_KILL, 76, 10)
	MisCancelAction(ClearMission, 901)

	MisNeed(MIS_NEED_DESP, "替糊涂山人(2272,2700)干掉森灵20个、帕帕20个、泥浆怪10个、曼陀罗10个,拳击袋鼠10个 ")
	MisNeed(MIS_NEED_KILL, 103, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 70, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 253, 10, 50, 10)
	MisNeed(MIS_NEED_KILL, 85, 10, 60, 10)
	MisNeed(MIS_NEED_KILL, 76, 10, 70, 10)

	MisHelpTalk("<t>快去快去啊,为了漂亮的宠宠")
	MisResultTalk("<t>速度到还不慢嘛!<n><t>如果你运气好的话,宝箱里就会有你所要的宠宠哦")
	MisResultCondition(HasMission, 901)
	MisResultCondition(HasFlag, 901, 29)
	MisResultCondition(HasFlag, 901, 49)
	MisResultCondition(HasFlag, 901, 59)
	MisResultCondition(HasFlag, 901, 69)
	MisResultCondition(HasFlag, 901, 79)
	MisResultCondition(HasItem, 0844, 1)
	MisResultAction(TakeItem, 0844, 1)
	MisResultAction(ClearMission, 901)
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1) 

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 901, 10, 20 )
	RegCurTrigger(9011)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 70 )	
	TriggerAction( 1, AddNextFlag, 901, 30, 20 )
	RegCurTrigger(9012)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 901, 50, 10 )
	RegCurTrigger(9013)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 901, 60, 10 )
	RegCurTrigger(9014)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 901, 70, 10 )
	RegCurTrigger(9015)


	-------------------------------------------------端午佳节吃粽子 雄黄艾草辟百邪
	DefineMission( 902, "端午佳节吃粽子 雄黄艾草辟百邪", 902)

	MisBeginTalk("<t>惨了,汨罗江中的怪物蠢蠢欲动了,我需拿一些东西丢下江里,你可以帮我去搜集几样物品吗?")

	MisBeginCondition(LvCheck, ">",15  )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoRecord,902)
	MisBeginAction(AddMission,902)
	MisBeginAction(AddTrigger, 9021, TE_GETITEM, 3116, 10 )		--精灵果
	MisBeginAction(AddTrigger, 9022, TE_GETITEM, 3131, 10 )		--奇异果实
	MisBeginAction(AddTrigger, 9023, TE_GETITEM, 4419, 5 )		--坏掉的蜂蜜
	MisCancelAction(ClearMission, 902)

	MisNeed(MIS_NEED_DESP, "帮屈原找到精灵果10个、奇异果实10个,坏掉的蜂蜜5个")
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3131, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4419, 5, 30, 5)

	MisHelpTalk("<t>快点吧,我在等着你呢,记住是精灵果10个、奇异果实10个,坏掉的蜂蜜5个")
	MisResultTalk("<t>希望这些东西能喂饱它们才好,这样它们就不会出来作恶了.")
	MisResultCondition(HasMission, 902)
	MisResultCondition(NoRecord,902)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3131, 10 )
	MisResultCondition(HasItem, 4419, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3131, 10 )
	MisResultAction(TakeItem, 4419, 5 )
	MisResultAction(ClearMission, 902)
	MisResultAction(SetRecord, 902 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 902, 10, 10 )
	RegCurTrigger( 9021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131)	
	TriggerAction( 1, AddNextFlag, 902, 20, 10 )
	RegCurTrigger( 9022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4419)	
	TriggerAction( 1, AddNextFlag, 902, 30, 5 )
	RegCurTrigger( 9023 )

	-------------------------------------------------- 端午佳节吃粽子 雄黄艾草辟百邪
	DefineMission( 903, "端午佳节吃粽子 雄黄艾草辟百邪", 903)
	
	MisBeginTalk("<t>天啊!!那些东西居然不够,必须要再多找些物品来,可以再麻烦你帮我吗?")
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoMission,903)
	MisBeginCondition(HasRecord,902)
	MisBeginCondition(NoRecord,903)
	MisBeginAction(AddMission,903)
	MisBeginAction(AddTrigger, 9031, TE_GETITEM, 1779, 10 )		--药瓶 
	MisBeginAction(AddTrigger, 9032, TE_GETITEM, 1584, 20 )		--有毒的刺 
	MisBeginAction(AddTrigger, 9033, TE_GETITEM, 1650, 10 )		--有疗效的水
	MisCancelAction(ClearMission, 903)

	MisNeed(MIS_NEED_DESP, "再去帮屈原找到药瓶 10个、有毒的刺20个,有疗效的水10个")
	MisNeed(MIS_NEED_ITEM, 1779, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1584, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 1650, 10, 40, 10)

	MisHelpTalk("<t>唉, 汨罗江中的这些怪物啊!")
	MisResultTalk("<t>这次它们应该不会再出来作恶了吧.")
	MisResultCondition(HasMission, 903)
	MisResultCondition(NoRecord,903)
	MisResultCondition(HasItem, 1779, 10)
	MisResultCondition(HasItem, 1584, 20 )
	MisResultCondition(HasItem, 1650, 10 )
	MisResultAction(TakeItem, 1779, 10 )
	MisResultAction(TakeItem, 1584, 20 )
	MisResultAction(TakeItem, 1650, 10 )
	MisResultAction(ClearMission, 903)
	MisResultAction(SetRecord, 903 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 903, 10, 10 )
	RegCurTrigger( 9031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1584)	
	TriggerAction( 1, AddNextFlag, 903, 20, 20 )
	RegCurTrigger( 9032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 903, 40, 10 )
	RegCurTrigger( 9033 )


-------------------------------------------------- 端午佳节吃粽子 雄黄艾草辟百邪
	DefineMission( 904, "端午佳节吃粽子 雄黄艾草辟百邪", 904)

	MisBeginTalk("<t>唉!为了平息汨罗江的怪物,我花费了极大的心力,导致心力憔悴,染上病疾,虽然我知道什么药可以让我痊愈,但没办法自己去搜集原料,拜托你帮我采集原料回来,让我制作解药.")

	MisBeginCondition(NoMission,904)
	MisBeginCondition(NoRecord,904)
	MisBeginCondition(HasRecord,903)
	MisBeginAction(AddMission,904)
	MisBeginAction(AddTrigger, 9041, TE_GETITEM, 3129, 5 )		--药用草叶
	MisBeginAction(AddTrigger, 9042, TE_GETITEM, 1681, 5 )		--眼泪
	MisCancelAction(ClearMission, 904)

	MisNeed(MIS_NEED_DESP, "帮屈原找药用草叶5个、眼泪5个用于治病")
	MisNeed(MIS_NEED_ITEM, 3129, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1681, 5, 20, 5)

	MisHelpTalk("<t>哎,我这一身的疾病啊!")
	MisResultTalk("<t>谢谢你帮我这么多忙,为了报答你,这些物品你拿去吧")
	MisResultCondition(HasMission, 904)
	MisResultCondition(NoRecord,904)
	MisResultCondition(HasItem, 3129, 5)
	MisResultCondition(HasItem, 1681, 5 )
	MisResultAction(TakeItem, 3129, 5 )
	MisResultAction(TakeItem, 1681, 5 )
	MisResultAction(GiveItem, 263, 3, 4)
	MisResultAction(GiveItem, 264, 3, 4)
	MisResultAction(GiveItem, 265, 3 ,4)
	MisResultAction(ClearMission, 904)
	MisResultAction(SetRecord,  904 )
	MisResultBagNeed(3)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 904, 10, 5 )
	RegCurTrigger( 9041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1681)	
	TriggerAction( 1, AddNextFlag, 904, 20, 5 )
	 RegCurTrigger( 9042 )
	 
  -------------------------------------------------- 海盗王的生日
	DefineMission( 905, "海盗王的生日", 905)
	MisBeginTalk("<t> 你知道么？不止大肚腩,就连海盗王都爱吃“老奶奶·贝蒂”做的糕点,据说吃过老奶奶做的生日蛋糕以后可以得到强大的力量,属性增加3点哦～～知道海盗王为什么这么厉害了吧,呵呵.<n><t>怎么你也想尝尝？这蛋糕可不是什么人都能吃到的,你要准备一张“蛋糕品尝券”,然后到白银城“老奶奶·贝蒂”那里,她才会分给你一小块的.")
	MisBeginCondition(NoMission,905)
	MisBeginCondition(HasItem, 1097, 1 )
	MisBeginCondition(NoRecord,905)
	MisBeginAction(AddMission,905)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "去找老奶奶·贝蒂吧")
	MisHelpTalk("<t>快去找老奶奶啊,晚了就没有蛋糕啦!")
	
	MisResultCondition(AlwaysFailure )


	 -------------------------------------------------- 海盗王的生日
	DefineMission ( 906, "海盗王的生日", 905,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>是“会长助理·提司面包”介绍你来的啊,嗯～他最爱吃我做的面包了,呵呵.“蛋糕品尝券”我收下了,这一块蛋糕你拿去吧")
	MisResultCondition(HasMission,905)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(ClearMission, 905 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 3338, 1, 4 )
	MisResultAction(SetRecord, 905 )
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)	

	-------------------------------寻找遗失的爱情之鱼儿寻找花瓣
	DefineMission( 907, "寻找花瓣", 906)
	
	MisBeginTalk( "<t>我好想她!求你了,帮我找到她,真的求你了,我不能失去她.我知道她最后下线的坐标是在深蓝(1333,558).　你能帮我去那附近找找吗？")
	MisBeginCondition(NoRecord, 913 )
	MisBeginCondition(NoMission, 906 )
	MisBeginAction(AddMission, 906 )
	MisCancelAction(ClearMission, 906)
		
	MisNeed(MIS_NEED_DESP, "找到花瓣(1333,558)")
	MisHelpTalk("<t>她最后下线的坐标是在深蓝(1333,558).")
	MisResultCondition(AlwaysFailure )

	---------------------------------------寻找遗失的爱情之鱼儿寻找花瓣

	DefineMission(908,"寻找花瓣",906,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>你是鱼儿的朋友吧？我是他要找的人花瓣的好朋友!")
	MisResultCondition(HasMission, 906)
	MisBeginCondition(NoRecord, 913)
	MisResultAction(ClearMission, 906)
	MisResultAction(SetRecord, 913)

	----------------------------------寻找遗失的爱情之舞蝶喜欢吃月饼
	DefineMission ( 909, "月饼情结", 907)

	MisBeginTalk("<t>不过怎么才能够相信你是受鱼儿所托？这样吧,我最喜欢吃月饼了,你帮我找10个月饼吧.")
	MisBeginCondition(HasRecord,913)
	MisBeginCondition(NoMission,907)
	MisBeginCondition(NoRecord,907)
	MisBeginAction(AddMission,907)
	MisBeginAction(AddTrigger, 9071, TE_GETITEM, 3915, 10)
	MisCancelAction(ClearMission, 907)
	

	MisNeed(MIS_NEED_DESP, "去帮舞蝶找到10个月饼")
	MisNeed(MIS_NEED_ITEM, 3915, 10, 10, 10)

	MisHelpTalk("<t>要１０个月饼哦")
	MisResultTalk("<t>你这人真的很不错哦,我最喜欢吃月饼了,谢谢你!") 
	
	MisResultCondition(HasMission, 907)
	MisResultCondition(NoRecord,907)
	MisResultCondition(HasItem, 3915, 10)
	MisResultAction(TakeItem, 3915, 10 )
	MisResultAction(ClearMission, 907)
	MisResultAction(SetRecord, 907 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3915)	
	TriggerAction( 1, AddNextFlag, 907, 10, 10 )
	RegCurTrigger( 9071 )
	
-------------------------------------------------------	寻找遗失的爱情之花瓣的遗信
	DefineMission(910,"花瓣的遗信",908)
	
	MisBeginTalk("<t>好的,不错,我可以相信你了,你代我转告他,我朋友花瓣已经于前天因白血病医治无效而病逝,我有一封信,是花瓣临终前写的,让我转交于他,你交给他吧,让他节哀顺变.")

	MisBeginCondition(HasRecord, 907)
	MisBeginCondition(NoRecord, 908)
	MisBeginCondition(NoMission, 908)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 908)
	MisBeginAction(GiveItem, 1005,1,4)

	MisHelpTalk("<t>愿上帝保佑伤心的人,鱼儿在沙岚(917,3572)")
	MisNeed(MIS_NEED_DESP, "帮舞蝶将花瓣的遗信转交给鱼儿")

	MisCancelAction(ClearMission, 908)

	MisResultCondition(AlwaysFailure)




-----------------------------------寻找遗失的爱情之花瓣的遗信
	DefineMission( 911, "花瓣的遗信", 908, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>什么？真的是她给我的信.<n><t>信的内容如下:我的鱼儿,当你看到这封信的时候,我已经在另外一个世界凝视着你.我不想让你看见我苍白的脸,更不想让你为我哭泣、痛苦,惟有把你抛开才容易遗忘.既不回头,何必不忘,若是无缘,何需誓言,前事种种.似水无痕,明夕何夕.你唯一能做的只有把我永远地藏在你的心里.鱼,我会在另一个世界为你祝福的.青春散场,爱却永恒.悄悄的我走了,正如我悄悄的来,我挥一挥衣袖,不带走一片云彩.<n><t>老天为什么如此对我,唉..天长地久有时尽,此恨绵绵无绝期.")
	MisResultCondition(HasMission, 908)
	MisResultCondition(NoRecord,908)
	MisResultCondition(HasItem, 1005, 1)
	MisResultAction(TakeItem, 1005, 1)
	MisResultAction(GiveItem, 1006, 1, 4)
	MisResultAction(ClearMission, 908)
	MisResultAction(SetRecord, 908)

	
	-------------------------------------------------------------寻找遗失的爱情之鱼儿想忘情
	DefineMission ( 912, "忘情之水", 909)
	
	MisBeginTalk("<t>听说世间有种水叫忘情水,只有白银城的帝姆(2250,2770)知道配方,真想喝一口,一解千愁.")
	
	MisBeginCondition(HasRecord,908)
	MisBeginCondition(NoRecord,909)
	MisBeginCondition(NoMission,909)
	MisBeginAction(AddMission,909)
	MisCancelAction(ClearMission, 909)
	
	MisHelpTalk("<t>唉, 何以解忧？惟有忘情水")
	MisNeed(MIS_NEED_DESP, "再去帮鱼儿找到忘情水")


	MisResultCondition(AlwaysFailure)


------------------------------------------------------------------------寻找遗失的爱情之鱼儿想忘情



	DefineMission(913,"忘情之水", 909,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>你就是鱼儿的朋友啊？<n><t>我听说了他们的故事,很伤感,你真是热心人啊")
	MisResultCondition(HasMission, 909)
	MisResultCondition(NoRecord, 909)
	MisResultAction(ClearMission, 909)
	MisResultAction(SetRecord, 909)



	
	
	-------------------------------------------------------------寻找遗失的爱情之制造忘情水
	DefineMission ( 914, "制造忘情水", 910)
	
	MisBeginTalk("<t>你是来找忘情水的吧,忘情水的配方很繁复,先去采集1个纯净的水,1个精灵之心,2个药用草叶,3个有疗效的水,然后回来交给我.")
	
	MisBeginCondition(NoMission,910)
	MisBeginCondition(HasRecord,909)
	MisBeginCondition(NoRecord,910)
	MisBeginAction(AddMission,910)
	MisBeginAction(AddTrigger, 9101, TE_GETITEM, 1649, 1)
	MisBeginAction(AddTrigger, 9102, TE_GETITEM, 4418, 1)
	MisBeginAction(AddTrigger, 9103, TE_GETITEM, 3129, 2)
	MisBeginAction(AddTrigger, 9104, TE_GETITEM, 1650, 3)	
	MisCancelAction(ClearMission, 910)

	MisNeed(MIS_NEED_DESP, "需要纯净的水1个,精灵之心1个,药用草叶2个,有疗效的水3个")
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 30, 2)
	MisNeed(MIS_NEED_ITEM, 1650, 3, 40, 3)

	MisHelpTalk("<t>拜托找到纯净的水1个,精灵之心1个,药用草叶2个,有疗效的水3个哦")
	MisResultTalk("<t>很好,这些都是制作忘情水的配方物品.")
	MisResultCondition(HasMission, 910)
	MisResultCondition(NoRecord,910)
	MisResultCondition(HasItem, 1649, 1)
	MisResultCondition(HasItem, 4418, 1)
	MisResultCondition(HasItem, 3129, 2)
	MisResultCondition(HasItem, 1650, 3)
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 4418, 1)
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(TakeItem,1650, 3 )
	MisResultAction(ClearMission, 910)
	MisResultAction(SetRecord, 910 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 910, 10, 1 )
	RegCurTrigger( 9101 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 910, 20, 1 )
	RegCurTrigger( 9102 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 910, 30, 2 )
	RegCurTrigger( 9103 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 910, 40, 3 )
	RegCurTrigger( 9104 )
	
	
	-----------------------------------------------------------------寻找遗失的爱情之购买玉金瓶
	DefineMission ( 915, "购买玉金瓶", 911)
	
	MisBeginTalk("<t>不过忘情水是一种特殊的水,任何容器装载它后,它都会迅速蒸发完,只有玉金材质的容器才能避免忘情水的蒸发.去寻找一个玉金瓶吧,据我所知,摩力商城有出售.有了这个,就可以制成忘情水了.")

	MisBeginCondition(NoMission,911)
	MisBeginCondition(HasRecord,910)
	MisBeginCondition(NoRecord,911)
	MisBeginAction(AddMission,911)
	MisBeginAction(AddTrigger, 9111, TE_GETITEM, 1007, 1)
	MisCancelAction(ClearMission, 911)
	MisNeed(MIS_NEED_DESP, "需要玉金瓶一个")
	MisNeed(MIS_NEED_ITEM, 1007, 1, 80, 1)

	MisHelpTalk("<t>去商城购买玉金瓶吧!")
	MisResultTalk("<t>好的,有了玉金瓶,我就可以帮你制成忘情水了.")


	MisResultCondition(HasMission, 911)
	MisResultCondition(NoRecord,911)
	MisResultCondition(HasItem, 1007, 1)
	MisResultAction(TakeItem, 1007, 1 )
	MisResultAction(ClearMission, 911)
	MisResultAction(SetRecord,  911 )

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1007)	
	TriggerAction( 1, AddNextFlag, 911, 80, 1 )
	RegCurTrigger( 9111 )


-------------------------------------------------------------------寻找遗失的爱情之忘情水

DefineMission(916,"忘情",912)
	
	MisBeginTalk("<t>拿去吧,忘情水做好了,但愿能治愈鱼儿(917,3572)的伤痛,唉!")

	MisBeginCondition(HasRecord, 911)
	MisBeginCondition(NoRecord, 912)
	MisBeginCondition(NoMission, 912)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 912)
	MisBeginAction(GiveItem, 1008,1,4)

	MisHelpTalk("<t>快去挽救伤心的人吧!")
	MisNeed(MIS_NEED_DESP, "把治疗爱情之伤的忘情水交给鱼儿")

	MisCancelAction(ClearMission, 912)
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------------------寻找遗失的爱情之忘情水
	DefineMission( 917, "忘情", 912, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	
	MisResultTalk("<t>这就是传说中的忘情水,你真的找到了!谢谢你,这是象征真爱的纯真之心,送给你,以示感谢.<n><t>唉!忘情水,我真的能忘了她吗？")
	MisResultCondition(HasMission, 912)
	MisResultCondition(NoRecord,912)
	MisResultCondition(HasItem, 1008, 1)
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(GiveItem, 1009, 1 ,4)
	MisResultAction(ClearMission, 912)
	MisResultAction(SetRecord, 912 )
	MisResultAction(ClearRecord, 909)
	MisResultAction(ClearRecord, 910)
	MisResultAction(ClearRecord, 911)
	MisResultAction(ClearRecord, 912)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 912, 10, 1 )
	RegCurTrigger( 9121 ) 


	--------------------------------------------------------------------爱情重生

	DefineMission( 918, "爱情重生", 914 )
	MisBeginTalk("<t>孩子,当你的心枯竭之时,去寻找忘情水吧,我将使你的心获得重生.")
	MisBeginCondition(NoMission, 914)
	MisBeginCondition(HasItem,1010,1)------------有纯真之心使用后的枯竭之心
	MisBeginCondition(NoRecord,914)
	MisBeginAction(AddMission,914)
	MisBeginAction(AddTrigger, 9141, TE_GETITEM, 1008, 1)
	MisCancelAction(ClearMission, 914)

	MisNeed(MIS_NEED_DESP, "需要忘情水一个来浇灌枯竭之心")
	MisNeed(MIS_NEED_ITEM, 1008, 1, 10, 1)

	MisHelpTalk("<t>找到一个忘情水,回来连同枯竭之心一起交给神秘老婆婆")
	MisResultTalk("<t>很好,孩子.这就是忘情水,喝了它吧,你将勇敢的去面对重生.")

	MisResultCondition(HasMission, 914)
	MisResultCondition(NoRecord,914)
	MisResultCondition(HasItem, 1008, 1)
	MisResultCondition(HasItem, 1010, 1)------------有枯竭之心
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(TakeItem, 1010, 1 )
	MisResultAction(GiveItem, 1013,1,4)------------给重生之心
	MisResultAction(ClearMission, 914)
	MisResultAction(SetRecord, 914)
	MisResultAction(ClearRecord, 914)---------------可以反复接

	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 914, 10, 1 )
	RegCurTrigger( 9141 )
	
	
	-----------------------------------------------------------------------血腥的高跟鞋
	DefineMission( 919, "血腥的高跟鞋", 915)
	
	MisBeginTalk( "<t>唉呦……我被老板打破了头,看看这血窟窿,看到么？凶器是一双高跟鞋……什么？你不相信我说的？好吧,好吧,这是我的验伤单,你可以拿去找白银城的<b医护小姐·岚岚>(2244,2770),这伤口是她亲手包扎的.唉呦……唉呦……")
	MisBeginCondition(NoRecord, 915 )
	MisBeginCondition(NoMission, 915 )
	MisBeginAction(AddMission, 915 )
	MisBeginAction(GiveItem, 1026,1,4)------白银医院验伤单
	MisCancelAction(ClearMission, 915)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "找白银城的医护小姐·岚岚验证")
	MisHelpTalk("<t>医护小姐的坐标是2244,2770")
	MisResultCondition(AlwaysFailure )

------------------------------------------------------------------------------血腥的高跟鞋
	DefineMission( 920, "血腥的高跟鞋", 915, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>最近怎么总有人受伤!")
	MisResultCondition(HasMission, 915)
	MisResultCondition(NoRecord,915)
	MisResultCondition(HasItem, 1026, 1)
	MisResultAction(TakeItem, 1026, 1 )
	MisResultAction(ClearMission, 915)
	MisResultAction(SetRecord, 915 )
	 
-------------------------------------------------------------------------------向巡逻兵求证

	DefineMission( 921, "向巡逻兵求证", 916 )

	MisBeginTalk("<t>不错,这张验伤单是我这里出具的,当时从伤口来看像是被某种类似高跟鞋的物体击伤.受伤者好像是一个瘦瘦的男人……至于他怎么弄伤的我就不清楚了,大概是和女朋友打架吧,hoho～～开个玩笑,听说沙岚城<b巡逻兵·迈克>(959,3549)正在调查这件事情,你可以去问问他.")
	MisBeginCondition(NoMission, 916)
	MisBeginCondition(HasRecord,915)
	MisBeginCondition(NoRecord,916)
	MisBeginAction(AddMission, 916 )
	MisCancelAction(ClearMission, 916)
	MisResultCondition(AlwaysFailure )
	-------------------------------------------------------------------向巡逻兵求证
	DefineMission( 922, "向巡逻兵求证", 916, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>巡逻兵真不是好当啊,总有人闹事,工资还那么点点!")
	MisResultCondition(HasMission, 916)
	MisResultCondition(NoRecord,916)
	MisResultAction(ClearMission, 916)
	MisResultAction(SetRecord, 916 )

	 
	---------------------------------------------------------------高跟鞋案件调查
	DefineMission( 923, "高跟鞋案件调查", 917)
	
	MisBeginTalk( "<t>呃……你是说那件事情……不错,我调查了一段时间了,不过……嗯……这种事情不太好说啊……唉.事件双方都说自己是受害人,动手打人的是对方,麻烦的案件呃……看,这是女老板出具的验伤单,虽然字迹有些模糊,不过还是可以作为线索的.")
	MisBeginCondition(NoRecord, 917 )
	MisBeginCondition(NoMission, 917)
	MisBeginCondition(HasRecord, 916 )
	MisBeginAction(AddMission, 917 )
	MisBeginAction(GiveItem, 1027,1,4)------女老板的验伤单
	MisBeginAction(AddTrigger, 9171, TE_GETITEM, 1030, 1)
	MisBeginBagNeed(1)

	MisCancelAction(ClearMission, 917)
	MisNeed(MIS_NEED_ITEM, 1030, 1, 10, 1)

	MisResultTalk("<t>只有勇敢者敢于维护正义!")
	MisHelpTalk("<t>用验伤单召唤怪物,打败它")
	MisResultCondition(HasMission,  917)
	MisResultCondition(NoRecord , 917)
	MisResultCondition(HasItem,1030,1 )
	MisResultAction(TakeItem, 1030, 1 )-------
	MisResultAction(ClearMission,   917)
	MisResultAction(SetRecord,  917 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1030)	
	TriggerAction( 1, AddNextFlag, 917, 10, 1 )
	RegCurTrigger( 9171 )
-------------------------------------------------------------------------高跟鞋案件凶器--------------
	DefineMission( 924, "高跟鞋案件凶器", 918)------------

	MisBeginTalk( "<t>原来案件的凶器就是这个高跟鞋,真让人感到以外,为了不让它再危害群众,我现在将它交由你保管.谢谢!")---------------
	MisBeginCondition(NoRecord, 918 )
	--MisBeginCondition(NoMission, 918 )
	MisBeginCondition(HasRecord, 917 )
	--MisBeginAction(AddMission, 918 )
	MisBeginAction(GiveItem, 1029,1,4)----------
	MisBeginAction(AddExp,500,500)
	--MisBeginAction(ClearMission, 918 )
	MisBeginAction(SetRecord, 918 )
	MisCancelAction(ClearMission, 918)
	MisBeginBagNeed(1)---------------

	MisHelpTalk("<t>人间自有公道!")----------

	MisResultCondition(AlwaysFailure )---------


	--------------------------------------------------------------------艰难任务1

	DefineMission( 6000, "凤凰涅磐", 1000 )
	MisBeginTalk("<t>人类,是否听说过凤凰涅磐？凤凰每500年浴火重生一次.原本每个有抱负的海盗都有机会转生,可自从那次圣战之后,用于转生的再生之石不幸被打碎散落人间,由一些忠诚于神的人守护.如果你能集齐所有碎片我就施用法力使你转生.经我占星发现<r加纳大陆的某座高塔>很有可疑,你不妨去看个究竟.")
	MisBeginCondition(NoMission, 1000)
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,1000)
	MisBeginAction(AddTrigger, 10001, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 10002, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 10003, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 10004, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 10005, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 10006, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 10007, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 10008, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 1000)

	MisNeed(MIS_NEED_DESP, "带回再生之石的8片碎片.")
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk("<t>那八片碎片散落在世界各地,你要做好跋涉千里的心理准备")
	MisResultTalk("<t>你是上帝创造的奇迹,等待转生的伟大时刻吧.")

	MisResultCondition(HasMission, 1000)
	MisResultCondition(NoRecord,1000)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------给再生之石
	MisResultAction(ClearMission, 1000)
	MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1000)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 1000, 10, 1 )
	RegCurTrigger( 10001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 1000, 20, 1 )
	RegCurTrigger( 10002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 1000, 30, 1 )
	RegCurTrigger( 10003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 1000, 40, 1 )
	RegCurTrigger( 10004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 1000, 50, 1 )
	RegCurTrigger( 10005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 1000, 60, 1 )
	RegCurTrigger( 10006 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 1000, 70, 1 )
	RegCurTrigger( 10007 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 1000, 80, 1 )
	RegCurTrigger( 10008 )
	
-------------------------------------------------打雪仗	
	DefineMission (5500, "打雪仗", 818)
	
	MisBeginTalk("<t>今年圣诞节可真漂亮啊,漫天飞雪,在这样的日子里打雪仗可是再刺激不过了,你想试试吗?想的话你去消灭20个<b黄色精灵草>,我可以为你制作<r小雪球>,让你爽上一番.")

	MisBeginCondition(NoMission,818)
	MisBeginCondition(NoRecord,818)
	MisBeginAction(AddMission,818)
	MisBeginAction(AddTrigger, 8181, TE_KILL, 218, 20 )
	MisCancelAction(ClearMission, 818)
	
	--MisNeed(MIS_NEED_DESP, "消灭20个精灵草")
	MisNeed(MIS_NEED_KILL, 218, 20, 10, 20)

	MisHelpTalk("<t>飘雪的圣诞节马上就要开始了")
	MisResultTalk("<t>不错,你这么快就完成任务,一定是打雪仗的好手,这是我精心为你制作的小雪球,尽情享受这个圣诞吧.")


	MisResultCondition(HasMission, 818)
	MisResultCondition(NoRecord,818)
	MisResultCondition(HasFlag, 818, 29 )
	MisResultAction(ClearMission, 818)
	MisResultAction(SetRecord,  818 )
	MisResultAction(ClearRecord, 818)---------------可以反复接
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 218)	
	TriggerAction( 1, AddNextFlag, 818, 10, 20 )
	RegCurTrigger( 8181 )

	-------------------------------------------------打雪仗	
	DefineMission (5501, "打雪仗", 819)
	
	MisBeginTalk("<t>今年圣诞节可真漂亮啊,漫天飞雪,在这样的日子里打雪仗可是再刺激不过了,你想试试吗?想的话你去消灭20个<b精灵草>,我可以为你制作<r小雪球>,让你爽上一番.")

	MisBeginCondition(NoMission,819)
	MisBeginCondition(NoRecord,819)
	MisBeginAction(AddMission,819)
	MisBeginAction(AddTrigger, 8191, TE_KILL, 75, 20 )
	MisCancelAction(ClearMission, 819)
	
	--MisNeed(MIS_NEED_DESP, "消灭20个黄色精灵草")
	MisNeed(MIS_NEED_KILL, 75, 20, 10, 20)

	MisHelpTalk("<t>飘雪的圣诞节马上就要开始了")
	MisResultTalk("<t>不错,你这么快就完成任务,一定是打雪仗的好手,这是我精心为你制作的小雪球,尽情享受这个圣诞吧.")


	MisResultCondition(HasMission, 819)
	MisResultCondition(NoRecord,819)
	MisResultCondition(HasFlag, 819, 29 )
	MisResultAction(ClearMission, 819)
	MisResultAction(SetRecord,  819 )
	MisResultAction(ClearRecord, 819)---------------可以反复接
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 819, 10, 20 )
	RegCurTrigger( 8191 )

-------------------------------------------------打雪仗	
	DefineMission (5502, "打雪仗", 820)
	
	MisBeginTalk("<t>今年圣诞节可真漂亮啊,漫天飞雪,在这样的日子里打雪仗可是再刺激不过了,你想试试吗?想的话你去消灭20个<b雪地精灵草>,我可以为你制作<r小雪球>,让你爽上一番.")

	MisBeginCondition(NoMission,820)
	MisBeginCondition(NoRecord,820)
	MisBeginAction(AddMission,820)
	MisBeginAction(AddTrigger, 8201, TE_KILL, 216, 20 )
	MisCancelAction(ClearMission, 820)
	
	--MisNeed(MIS_NEED_DESP, "消灭20个雪地精灵草")
	MisNeed(MIS_NEED_KILL, 216, 20, 10, 20)

	MisHelpTalk("<t>飘雪的圣诞节马上就要开始了")
	MisResultTalk("<t>不错,你这么快就完成任务,一定是打雪仗的好手,这是我精心为你制作的小雪球,尽情享受这个圣诞吧.")


	MisResultCondition(HasMission, 820)
	MisResultCondition(NoRecord,820)
	MisResultCondition(HasFlag, 820, 29 )
	MisResultAction(ClearMission, 820)
	MisResultAction(SetRecord,  820 )
	MisResultAction(ClearRecord, 820)---------------可以反复接
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 216)	
	TriggerAction( 1, AddNextFlag, 820, 10, 20 )
	RegCurTrigger( 8201 )

-----------------------------------------------勇士的证明
	DefineMission(6001,"勇士的证明",1002)

      MisBeginTalk("<t> 用你的智慧和勇气从这个世界里删除那些该死的恶魔!敏捷的圣林猎手15只,敏捷的暗影猎手15只,堕落的地精长老15只,邪恶的守护天使15只,残忍的暗影猎手15只,残忍的圣林猎手15只.")

      MisBeginCondition(HasRecord,1001)
      MisBeginCondition(NoRecord,1002)
      MisBeginCondition(NoMission,1002)
      MisBeginCondition(HasCredit,9999 )
      MisBeginAction(TakeCredit, 9999 )
      MisBeginAction(AddMission,1002)
      MisBeginAction(AddTrigger, 10021, TE_KILL,525, 15)
      MisBeginAction(AddTrigger, 10022, TE_KILL,526, 15)
      MisBeginAction(AddTrigger, 10023, TE_KILL, 532, 15)
      MisBeginAction(AddTrigger, 10024, TE_KILL, 550, 15)
      MisBeginAction(AddTrigger, 10025, TE_KILL, 554, 15)
      MisBeginAction(AddTrigger, 10026, TE_KILL, 553, 15)
      MisCancelAction(ClearMission, 1002)

      MisNeed(MIS_NEED_DESP, "捕杀15只敏捷的圣林猎手,15只敏捷的暗影猎手,15只堕落的地精长老,15只邪恶的守护天使,15只残忍的暗影猎手,15只残忍的圣林猎手!")
      MisNeed(MIS_NEED_KILL, 525, 15, 10, 15)
      MisNeed(MIS_NEED_KILL, 526, 15, 30, 15)
      MisNeed(MIS_NEED_KILL, 532, 15, 50, 15)
      MisNeed(MIS_NEED_KILL, 550, 15, 70, 15)
      MisNeed(MIS_NEED_KILL, 554, 15, 90, 15)
      MisNeed(MIS_NEED_KILL, 553, 15, 110, 15)

      MisHelpTalk("<t>杀了它们,别给我面子.")  
      MisResultTalk("<t>你身手还不错,以后跟我混吧.这块代表智慧的碎片你拿去.希望你早日实现转生的梦想,据说转生后可以重选职业......")
      MisResultCondition(HasMission,1002 )
      MisResultCondition(NoRecord,1002)
      MisResultCondition(HasFlag, 1002, 24)
      MisResultCondition(HasFlag, 1002, 44)
      MisResultCondition(HasFlag, 1002, 64)
      MisResultCondition(HasFlag, 1002, 84)
      MisResultCondition(HasFlag, 1002, 104)
      MisResultCondition(HasFlag, 1002, 124)
      MisResultAction(GiveItem, 2228, 1, 4 )
      MisResultAction(ClearMission, 1002 )
      MisResultAction(SetRecord, 1002)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 525 )
      TriggerAction( 1, AddNextFlag, 1002, 10, 15 )
      RegCurTrigger( 10021 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 526 )
      TriggerAction( 1, AddNextFlag, 1002, 30, 15 )
      RegCurTrigger( 10022 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,532  )
      TriggerAction( 1, AddNextFlag, 1002, 50, 15 )
      RegCurTrigger( 10023 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 550 )
      TriggerAction( 1, AddNextFlag, 1002, 70, 15 )
      RegCurTrigger( 10024 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 554 )
      TriggerAction( 1, AddNextFlag, 1002, 90, 15 )
      RegCurTrigger( 10025 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,553)
      TriggerAction( 1, AddNextFlag, 1002, 110, 15 )
      RegCurTrigger( 10026 )




------------------------------------------------------小镇神秘人
	DefineMission( 6002, "小镇神秘人", 1003 )

	MisBeginTalk( "<t>以你这样的人品,那个遥远的东方小镇的胖家伙一定不会拒绝你……我可没说他那有碎片啊." )------------
	MisBeginCondition(NoRecord,   1003)
	MisBeginCondition(HasRecord, 1002)
	MisBeginCondition(NoMission,  1003)
	MisBeginAction(AddMission,  1003)
	MisCancelAction(ClearMission, 1003)
	MisNeed(MIS_NEED_DESP, "寻觅东方小镇的神秘守护者")
	MisHelpTalk("<t>我只能告诉你这么多了.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------小镇神秘人
	DefineMission( 6003, "小镇神秘人", 1003, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我都胖成这样了,还有人认得出我?!")
	MisResultCondition(NoRecord,  1003)
	MisResultCondition(HasMission,  1003)
	MisResultAction(SetRecord,  1003)
	MisResultAction(ClearMission,  1003)

------------------------------------------------------------简单任务
	DefineMission( 6004, "简单任务", 1004 )

	MisBeginTalk( "<t>我这个人最不喜欢为难别人,帮我找到30个<b巨大的曼陀罗花>,30个<b极品鱼子酱>,30个<b千克级压缩能源>作见面礼,嘿嘿......" )
	MisBeginCondition(NoRecord, 1004)
	MisBeginCondition(HasRecord, 1003)
	MisBeginCondition(NoMission, 1004)
	MisBeginAction(AddMission, 1004)
	MisBeginAction(AddTrigger, 10041, TE_GETITEM, 4730, 30 )
	MisBeginAction(AddTrigger, 10042, TE_GETITEM, 1358, 30 )
	MisBeginAction(AddTrigger, 10043, TE_GETITEM, 2619, 30 )
	MisCancelAction(ClearMission, 1004)
	
	MisNeed(MIS_NEED_ITEM, 4730, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 1358, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 2619, 30, 90, 30)

	MisResultTalk("<t>这些东西都是造茅台的必须原料啊!前段时间为了减肥彻底戒酒,连原料都送人了,失策啊!")
	MisHelpTalk("<t>我发现戒酒根本不能起到减肥效果,所以......")
	MisResultCondition(HasMission, 1004)
	MisResultCondition(HasItem, 4730, 30 )
	MisResultCondition(HasItem, 1358, 30 )
	MisResultCondition(HasItem, 2619, 30 )
	MisResultAction(TakeItem, 4730, 30 )
	MisResultAction(TakeItem, 1358, 30 )
	MisResultAction(TakeItem, 2619, 30 )
	MisResultAction(ClearMission, 1004)
	MisResultAction(SetRecord, 1004 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4730)	
	TriggerAction( 1, AddNextFlag, 1004, 10, 30 )
	RegCurTrigger( 10041 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1358)	
	TriggerAction( 1, AddNextFlag, 1004, 50, 30 )
	RegCurTrigger( 10042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2619)	
	TriggerAction( 1, AddNextFlag, 1004, 90, 30 )
	RegCurTrigger( 10043 )




------------------------------------------------------------戒酒记
	DefineMission( 6005, "戒酒记", 1005)

	MisBeginTalk( "<t>果然是好料出好酒,只是自己造太麻烦了.而且刚才喝得太快,没尝出什么味道就喝光了.我猜你不介意为我弄几瓶来过过瘾吧" )
	MisBeginCondition(NoRecord, 1005)
	MisBeginCondition(HasRecord, 1004)
	MisBeginCondition(NoMission, 1005)
	MisBeginAction(AddMission, 1005)
	MisBeginAction(AddTrigger, 10051, TE_GETITEM, 1087, 30 )		
	MisCancelAction(ClearMission, 1005)
	
	MisNeed(MIS_NEED_ITEM, 1087, 30, 10, 30)

	MisResultTalk("<t>好酒!好酒!")
	MisHelpTalk("<t>要快啊,等我没有喝酒的兴致了别怪我翻脸不认人")
	MisResultCondition(HasMission, 1005)
	MisResultCondition(HasItem, 1087, 30 )
	MisResultAction(TakeItem, 1087, 30 )
	MisResultAction(ClearMission, 1005)
	MisResultAction(SetRecord, 1005 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1005, 10, 30 )
	RegCurTrigger( 10051 )

------------------------------------------------------------戒酒记
	DefineMission( 6006, "戒酒记", 1006)

	MisBeginTalk( "<t>我记得有个名人说过,要想知道杜康的味道和茅台有什么不同就要亲口尝一尝.你一定不介意为我再弄几瓶杜康尝尝吧" )
	MisBeginCondition(NoRecord, 1006)
	MisBeginCondition(HasRecord, 1005)
	MisBeginCondition(NoMission, 1006)
	MisBeginAction(AddMission, 1006)
	MisBeginAction(AddTrigger, 10061, TE_GETITEM, 1088, 20 )		--
	MisCancelAction(ClearMission, 1006)
	
	MisNeed(MIS_NEED_ITEM, 1088, 20, 10, 20)

	MisResultTalk("<t>何以解忧?唯有杜康!")
	MisHelpTalk("<t>我劝你别拿些冒牌货给我,刚喝过酒的人什么事都做得出来")
	MisResultCondition(HasMission, 1006)
	MisResultCondition(HasItem, 1088, 20 )
	MisResultAction(TakeItem, 1088, 20 )
	MisResultAction(ClearMission, 1006)
	MisResultAction(SetRecord, 1006 )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1088)	
	TriggerAction( 1, AddNextFlag, 1006, 10, 20 )
	RegCurTrigger( 10061 )



------------------------------------------------------------戒酒记
	DefineMission( 6007, "戒酒记", 1007)

	MisBeginTalk( "<t>经过我反复品尝,觉得还是茅台比较适合我的口味,我认为我应该在酒窖中藏上20瓶以便不时之需.你也是这样认为的吧?" )
	MisBeginCondition(NoRecord, 1007)
	MisBeginCondition(HasRecord, 1006)
	MisBeginCondition(NoMission, 1007)
	MisBeginAction(AddMission, 1007)
	MisBeginAction(AddTrigger, 10071, TE_GETITEM, 1087, 20 )		--
	MisCancelAction(ClearMission, 1007)
	
	MisNeed(MIS_NEED_ITEM, 1087, 20, 10, 20)

	MisResultTalk("<t>酒是越陈越香,嗯.......啊......真香")
	MisHelpTalk("<t>永远不要与酒鬼争论,这是至理名言.")
	MisResultCondition(HasMission, 1007)
	MisResultCondition(HasItem, 1087, 20 )
	MisResultAction(TakeItem, 1087, 20 )
	MisResultAction(ClearMission, 1007)
	MisResultAction(SetRecord, 1007 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1007, 10, 20 )
	RegCurTrigger( 10071 )

------------------------------------------------------------戒酒记
	DefineMission( 6008, "戒酒记", 1008)

	MisBeginTalk( "<t>我要戒酒!可能最近喝酒太多,开始有胃出血的迹象.谁都不许阻止我,我要养胃!听说人参酒是养胃的佳品.嗯......你明白吧?" )
	MisBeginCondition(NoRecord, 1008)
	MisBeginCondition(HasRecord, 1007)
	MisBeginCondition(NoMission, 1008)
	MisBeginAction(AddMission, 1008)
	MisBeginAction(AddTrigger, 10081, TE_GETITEM, 1089, 15 )		--
	MisCancelAction(ClearMission, 1008)
	
	MisNeed(MIS_NEED_ITEM, 1089, 15, 10, 15)

	MisResultTalk("<t>貌似虎骨酒我也好久没有喝过了......")
	MisHelpTalk("<t>年轻人,喝酒不可贪杯,否则会误事的......")
	MisResultCondition(HasMission, 1008)
	MisResultCondition(HasItem, 1089, 15 )
	MisResultAction(TakeItem, 1089, 15 )
	MisResultAction(ClearMission, 1008)
	MisResultAction(SetRecord, 1008 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1089)	
	TriggerAction( 1, AddNextFlag, 1008, 10, 15 )
	RegCurTrigger( 10081 )


------------------------------------------------------寻访魔方导游
	DefineMission( 6009, "寻访魔方导游", 1009 )

	MisBeginTalk( "<t>为表示感谢,这块代表美德的碎片交给你吧也安全些,我这样醉醺醺的早晚误事.我恍惚记得魔方里有个家伙也有碎片,是谁了呢......仿佛......仿佛你要自己去好好找找,记得听说转生后技能点和属性点都可以重新分配...好像是..." )
	MisBeginCondition(NoRecord,   1009)
	MisBeginCondition(HasRecord, 1008)
	MisBeginCondition(NoMission,  1009)
	MisBeginAction(AddMission,  1009)
	MisBeginAction(GiveItem, 2227, 1, 4 )
	MisCancelAction(ClearMission, 1009)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "寻觅魔方的神秘守护者")
	MisHelpTalk("<t>我实在想不起来了")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------寻访魔方导游
	DefineMission( 6010, "寻访魔方导游", 1009, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我虽叫作魔方导游,其实我从不带队出游,只是为他人指路,因为我经常会迷路......")
	MisResultCondition(NoRecord,  1009)
	MisResultCondition(HasMission,  1009)
	MisResultAction(SetRecord,  1009)
	MisResultAction(ClearMission,  1009)
----------------------------------------------------------加勒比观光游
	DefineMission( 6011, "加勒比观光一日游", 1010 )
	MisBeginTalk("<t>那是很久以前的事了,这个碎片带给我无数噩梦.在我退休之前真想物归原处,只是我无力到达天堂.加勒比去玩过吗?我听说那风景秀丽,你顺便去挑衅亡灵司令,要是能活着回来我会考虑把碎片交给你.")
				
	MisBeginCondition(NoMission, 1010)
	MisBeginCondition(HasRecord, 1009)
	MisBeginCondition(NoRecord,1010)	
	MisBeginAction(AddMission,1010)
	MisBeginAction(AddTrigger, 10101, TE_KILL, 807, 1)--亡灵司令(807)  
	MisCancelAction(ClearMission, 1010)

	MisNeed(MIS_NEED_DESP, "捕杀亡灵司令")
	MisNeed(MIS_NEED_KILL, 807,1, 10, 1)
	
	
	MisResultTalk("<t>加岛风光无限好,只是怪太凶!")
	MisHelpTalk("<t>这个任务对你来说是毛毛雨吧")
	MisResultCondition(HasMission,  1010)
	MisResultCondition(HasFlag, 1010, 10)
	MisResultCondition(NoRecord , 1010)
	MisResultAction(ClearMission,  1010)
	MisResultAction(SetRecord,  1010 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 807)	
	TriggerAction( 1, AddNextFlag, 1010, 10, 1 )
	RegCurTrigger( 10101 )

	


----------------------------------------------------------加勒比观光游
	DefineMission( 6012, "加勒比观光次日游", 1011 )
	MisBeginTalk("<t>不知道是不是前世就结下了梁子,我对加勒比的有生命物体都很反感.甚至反感到觉得它们哭是错,笑是错,活着是错,死了也是错......当然它们死了我觉得稍微舒服点,尤其是巴伯萨")
				
	MisBeginCondition(NoMission, 1011)
	MisBeginCondition(NoRecord,1011)
	MisBeginCondition(HasRecord, 1010)
	MisBeginAction(AddMission,1011)
	MisBeginAction(AddTrigger, 10111, TE_KILL, 805, 1)--巴伯萨(805)
	MisCancelAction(ClearMission, 1011)

	MisNeed(MIS_NEED_DESP, "捕杀巴伯萨！")
	MisNeed(MIS_NEED_KILL, 805,1, 10, 1)
	

	MisResultTalk("<t>我就知道你喜欢在加勒比大开杀戒.")
	MisHelpTalk("<t>别留活口!")
	MisResultCondition(HasMission,  1011)
	MisResultCondition(HasFlag, 1011, 10)
	MisResultCondition(NoRecord , 1011)
	MisResultAction(ClearMission,  1011)
	MisResultAction(SetRecord,  1011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 1011, 10, 1 )
	RegCurTrigger( 10111 )
	
	----------------------------------------------------------加勒比观光游
	DefineMission( 6013, "加勒比观光再次游", 1012 )
	MisBeginTalk("<t>看得出来你觉得加勒比两日观光游并不过瘾,不用谢我,我已经为你申请了再次游,嘎嘎嘎......处理掉那只讨厌的八爪史前怪物")
				
	MisBeginCondition(NoMission, 1012)
	MisBeginCondition(NoRecord,1012)
	MisBeginCondition(HasRecord, 1011)
	MisBeginAction(AddMission,1012)
	MisBeginAction(AddTrigger, 10121, TE_KILL, 796, 1)---史前大章鱼
	
	MisCancelAction(ClearMission, 1012)

	MisNeed(MIS_NEED_DESP, "捕杀史前大章鱼!")
	MisNeed(MIS_NEED_KILL, 796,1, 10, 1)
	

	MisResultTalk("<t>世界从没如此美丽.你的能力折服了我,这片代表爱情的碎片你拿去吧,也祝愿你收获世间最纯美的爱情.")
	MisHelpTalk("<t>让那只八爪鱼彻底与世界告别吧!")
	MisResultCondition(HasMission,  1012)
	MisResultCondition(HasFlag, 1012, 10)
	MisResultCondition(NoRecord , 1012)
	MisResultAction(GiveItem, 2226, 1, 4 )
	MisResultAction(ClearMission,  1012)
	MisResultAction(SetRecord,  1012 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 796)	
	TriggerAction( 1, AddNextFlag, 1012, 10, 1 )
	RegCurTrigger( 10121 )
	
	------------------------------------------------------谁是守护者
	DefineMission( 6014, "谁是守护者", 1013 )

	MisBeginTalk( "<t>朋友,加快寻找的脚步吧,转生后便可以飞翔.我恍惚记得冰狼堡也有一个守护者......" )
	MisBeginCondition(NoRecord,   1013)
	MisBeginCondition(HasRecord, 1012)
	MisBeginCondition(NoMission,  1013)
	MisBeginAction(AddMission,  1013)
	MisCancelAction(ClearMission, 1013)
	

	MisNeed(MIS_NEED_DESP, "寻找下一个守护者")
	MisHelpTalk("<t>还不走?还要三日游吗?")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------情人节的礼物----------沙泉补给站找NPC菲菲对话：（男性角色）	
	DefineMission (5503, "情人节的礼物", 825)
	
	MisBeginTalk("<t>想要给你的情人留下美好的回忆吗?去帮我采集1个玫瑰花和10个精灵之心,我将会给你惊喜,你的情人一定喜欢的哦.")

	MisBeginCondition(NoMission,825)
	MisBeginCondition(NoRecord,825)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginAction(AddMission,825)
	MisBeginAction(AddTrigger, 8251, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8252, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 825)
	
	MisNeed(MIS_NEED_DESP, "采集1个玫瑰花、10个精灵之心")
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk("<t>今年的情人节会下雪吗?")
	MisResultTalk("<t>很好,这个是佳人动情礼盒,你将这个给你心爱的人,她一定会为你动情的!")


	MisResultCondition(HasMission, 825)
	MisResultCondition(NoRecord,825)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 825)
	MisResultAction(SetRecord,  825 )
	MisResultAction(GiveItem, 2904, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 825, 10, 1 )
	RegCurTrigger( 8251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 825, 20, 10 )
	RegCurTrigger( 8252 )

-------------------------------------------------情人节的礼物----------冰极补给站找NPC法迪尔对话：（女性角色）	
	DefineMission (5504, "情人节的礼物", 826)
	
	MisBeginTalk("<t>想要给你的情人留下美好的回忆吗?去帮我采集1个玫瑰花和10个精灵之心,我将会给你惊喜,你的情人一定喜欢的哦.")

	MisBeginCondition(NoMission,826)
	MisBeginCondition(NoRecord,826)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginAction(AddMission,826)
	MisBeginAction(AddTrigger, 8261, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8262, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 826)
	
	MisNeed(MIS_NEED_DESP, "采集1个玫瑰花、10个精灵之心")
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk("<t>今年的情人节会下雪吗?")
	MisResultTalk("<t>很好,这个是才俊动情礼盒,你将这个给你心爱的人,他一定会为你动情的!")


	MisResultCondition(HasMission, 826)
	MisResultCondition(NoRecord,826)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 826)
	MisResultAction(SetRecord,  826 )
	MisResultAction(GiveItem, 2905, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 826, 10, 1 )
	RegCurTrigger( 8261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 826, 20, 10 )
	RegCurTrigger( 8262 )


-----------------------------------------------七猪开泰---------玛拉依兰
	DefineMission(5505,"七猪开泰",827)

      MisBeginTalk("<t> 想要在新的一年获得猪神的眷顾吗?快去捕获冰原迷你猪、迷你猪、箭豪猪、香草猪、野猪、战斗迷你猪、雪剑猪各1个.")

      MisBeginCondition(NoRecord,827)
      MisBeginCondition(NoMission,827)
      MisBeginAction(AddMission,827)
      MisBeginAction(AddTrigger, 8271, TE_KILL,239, 1)
      MisBeginAction(AddTrigger, 8272, TE_KILL,237, 1)
      MisBeginAction(AddTrigger, 8273, TE_KILL, 264, 1)
      MisBeginAction(AddTrigger, 8274, TE_KILL, 295, 1)
      MisBeginAction(AddTrigger, 8275, TE_KILL, 64, 1)
      MisBeginAction(AddTrigger, 8276, TE_KILL, 296, 1)
      MisBeginAction(AddTrigger, 8277, TE_KILL, 144, 1)
      MisCancelAction(ClearMission, 827)

      MisNeed(MIS_NEED_DESP, "冰原迷你猪、迷你猪、箭豪猪、香草猪、野猪、战斗迷你猪、雪剑猪各1个!")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk("<t>喜迎新年、七猪开泰.")  
      MisResultTalk("<t>您完成得很好!")
      MisResultCondition(HasMission,827 )
      MisResultCondition(NoRecord,827)
      MisResultCondition(HasFlag, 827, 10)
      MisResultCondition(HasFlag, 827, 20)
      MisResultCondition(HasFlag, 827, 30)
      MisResultCondition(HasFlag, 827, 40)
      MisResultCondition(HasFlag, 827, 50)
      MisResultCondition(HasFlag, 827, 60)
      MisResultCondition(HasFlag, 827, 70)
      MisResultAction(GiveItem, 855, 10, 4 )
      MisResultAction(ClearMission, 827 )
      MisResultAction(SetRecord, 827)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 827, 10, 1 )
      RegCurTrigger( 8271 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 827, 20, 1 )
      RegCurTrigger( 8272 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 827, 30, 1 )
      RegCurTrigger( 8273 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 827, 40, 1 )
      RegCurTrigger( 8274 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 827, 50, 1 )
      RegCurTrigger( 8275 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 827, 60, 1 )
      RegCurTrigger( 8276 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 827, 70, 1 )
      RegCurTrigger( 8277 )

-------------------------------------------------幸运猪猪----------玛拉依兰	
	DefineMission (5506, "幸运猪猪", 828)
	
	MisBeginTalk("<t>不过没有幸运猪猪草,猪神是不会理你的!快去采集幸运猪猪草吧,<b商城可以找到>,这样你可是有机会获得玉、炎玉、鹰眼石、凤灵石、加纳之神、女神小包、一等奖等超级豪礼哦!当然您也不能忘了我,<r我将抽取您30000海盗币>.")

	MisBeginCondition(NoMission,828)
	MisBeginCondition(HasRecord,827)
	MisBeginCondition(NoRecord,828)
	MisBeginAction(AddMission,828)
	MisBeginAction(AddTrigger, 8281, TE_GETITEM, 2908, 1)
	MisCancelAction(ClearMission, 828)
	
	MisNeed(MIS_NEED_ITEM, 2908, 1, 10, 1)
	

	MisHelpTalk("<t>快去吧,惊喜不等人")
	MisResultTalk("<t>很好,这是猪神赐予您的神秘宝箱,赶快打开看一下吧!")

	MisResultCondition(HasMission, 828)
	MisResultCondition(NoRecord,828)
	MisResultCondition(HasItem, 2908, 1)
	MisResultCondition(HasMoney, 30000)
	MisResultAction(TakeItem, 2908, 1 )
	MisResultAction(TakeMoney,30000 )
	MisResultAction(ClearMission, 828)
	MisResultAction(SetRecord,  828 )
	MisResultAction(GiveItem, 2909, 1, 4)
	MisResultAction(ClearRecord, 828)---------------可以反复接
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2908)	
	TriggerAction( 1, AddNextFlag, 828, 10, 1 )
	RegCurTrigger( 8281 )

	
-----------------------------------------------海盗王压岁大礼---------白银商城新手指导
	DefineMission(5507,"压岁大礼",829)

      MisBeginTalk("<t> 猪年到了,可爱的猪猪是新一年的主角,去捕捉20只迷你猪,你将获得海盗王压岁包一个,据说里面藏着超级好东东哦!")

      MisBeginCondition(NoRecord,829)
      MisBeginCondition(NoMission,829)
      MisBeginCondition(LvCheck, ">",45)
      MisBeginAction(AddMission,829)
      MisBeginAction(AddTrigger, 8291, TE_KILL,237, 20)
      MisCancelAction(ClearMission, 829)

      MisNeed(MIS_NEED_DESP, "捕捉20只迷你猪!")
      MisNeed(MIS_NEED_KILL, 237, 20, 10, 20)
     
      MisHelpTalk("<t>时间不等人啊.")  
      MisResultTalk("<t>做的不错!这个就是海盗王猪年压岁包!只要在除夕之夜2月17日晚23:00--2月18日凌晨1点打开压岁包,你将有机会得到超级豪礼哦!")
      MisResultCondition(HasMission,829 )
      MisResultCondition(NoRecord,829)
      MisResultCondition(HasFlag, 829, 29)
      MisResultAction(GiveItem, 2910, 1, 4 )
      MisResultAction(ClearMission, 829 )
      MisResultAction(SetRecord, 829)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 829, 10, 20 )
      RegCurTrigger( 8291 )
       
-------------------------------------------------情为何物----------玛拉依兰	
	DefineMission (5508, "情为何物", 830)
	
	MisBeginTalk("<t>问世间情为何物?直教人生死相许!朋友,你若相信缘份,我可以帮你完成夙愿,给你一场梦幻般的邂逅!不过,在这之前,你必须接受我的考验,来证明你的英勇以及爱心! ")

	MisBeginCondition(NoMission,830)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoRecord,830)
	MisBeginAction(AddMission,830)
	MisBeginAction(AddTrigger, 8301, TE_GETITEM, 4418, 10 )
	MisCancelAction(ClearMission, 830)
	
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10 )
	

	MisHelpTalk("<t>不要让你的情人等得太久哦!")
	MisResultTalk("<t>很好!你完成的很好!我有理由将美好的缘分附注于你身上.这个是情缘宝盒,打开他,也许从今天起你就要结束自己的单身生涯哦!")

	MisResultCondition(HasMission, 830)
	MisResultCondition(NoRecord,830)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 830)
	MisResultAction(SetRecord,  830 )
	MisResultAction(GiveItem, 2916, 1, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 830, 10, 10 )
	RegCurTrigger( 8301 )


	-------------------------------------------------倾城之恋----------玛拉依兰	
	DefineMission (5509, "倾城之恋", 831)
	
	MisBeginTalk("<t>年轻人!去找寻属于你的倾城之恋吧!寻找和自己拥有<b相同爱情编码>的另一半,还要找到代表千里姻缘一线牵的<r红绳>.我在这里等你和情人带<r情缘符>一起来.")

	MisBeginCondition(NoMission,831)
	MisBeginCondition(NoMission,832)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginCondition(HasItem, 2902, 1)
	MisBeginAction(AddTrigger, 8311, TE_GETITEM, 2903, 1 )
	MisBeginAction(AddTrigger, 8312, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,831)
	MisCancelAction(ClearMission, 831)
	

	MisNeed(MIS_NEED_ITEM, 2903, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>记得带你的情人和你们具有<r相同编码的情缘符>一起来啊")
	MisResultTalk("<t>真是天生一对!恭喜你们!作为祝福我赠送你们两个礼服宝箱,每人只能打开一个,每个里面是一套结婚礼服,愿你们能真正的走到一起!")

	MisResultCondition(HasMission, 831)
	MisResultCondition(NoRecord,831)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 831)
	MisResultAction(SetRecord,  831 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2903)	
	TriggerAction( 1, AddNextFlag, 831, 10, 1 )
	RegCurTrigger( 8311 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 831, 20, 1 )
	RegCurTrigger( 8312 )
		-------------------------------------------------倾城之恋----------玛拉依兰	
	DefineMission (5536, "倾城之恋", 832)
	
	MisBeginTalk("<t>年轻人!去找寻属于你的倾城之恋吧!寻找和自己拥有<b相同爱情编码>的另一半,还要找到代表千里姻缘一线牵的<r红绳>.我在这里等你和情人带<r情缘符>一起来.")

	MisBeginCondition(NoMission,832)
	MisBeginCondition(NoMission,831)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginCondition(HasItem, 2903, 1)
	MisBeginAction(AddTrigger, 8321, TE_GETITEM, 2902, 1 )
	MisBeginAction(AddTrigger, 8322, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,832)
	MisCancelAction(ClearMission, 832)
	

	MisNeed(MIS_NEED_ITEM, 2902, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>记得带你的情人和你们具有<r相同编码的情缘符>一起来啊")
	MisResultTalk("<t>真是天生一对!恭喜你们!作为祝福我赠送你们两个礼服宝箱,每人只能打开一个,每个里面是一套结婚礼服,愿你们能真正的走到一起!")

	MisResultCondition(HasMission, 832)
	MisResultCondition(NoRecord,832)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 832)
	MisResultAction(SetRecord,  832 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2902)	
	TriggerAction( 1, AddNextFlag, 832, 10, 1 )
	RegCurTrigger( 8321 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 832, 20, 1 )
	RegCurTrigger( 8322 )



	-------------------------------------------------挑战吉尼斯1	
	DefineMission (5510, "挑战吉尼斯", 743)
	
	MisBeginTalk("<t>想成为海盗王第一勇士吗?想挑战自己的极限吗?那就来尝试体验一下海盗王07环球航线吧!你可以从白银城出发,到达第一站萨拉补给站,那里的指挥员会告诉你下一站.<r这本挑战书可以为你计时,现在保证你背包第一格要为空,记得挑战全程都要把这本书放在背包第一格,不要挪动>,拿去吧.")

	MisBeginCondition(NoMission,743)
	MisBeginCondition(NoRecord,743)
	MisBeginCondition(CheckBagEmp,0)
	MisBeginAction(AddMission,743)
	MisBeginAction(AddChaItem1, 2911)
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "第一站是萨拉补给站,海港指挥·温亚塔(3097,3530)是你要找的人.")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯1

	DefineMission(5511,"挑战吉尼斯",743,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>辛苦了,勇士!")
	MisResultCondition(HasMission, 743)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultCondition(NoRecord,743)
	MisResultAction(ClearMission, 743)
	MisResultAction(SetRecord,743 )
	


	-------------------------------------------------挑战吉尼斯2	
	DefineMission (5512, "挑战吉尼斯2", 744)
	
	MisBeginTalk("<t>你的速度不是很快啊,已经有人经过这里了.这是你的官方证明,赶快出发吧!肖沸补给站的海港指挥·丹尼斯在焦急的等你.")

	MisBeginCondition(NoMission,744)
	MisBeginCondition(HasRecord, 743)
	MisBeginCondition(NoRecord,744)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,744)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站是肖沸补给站,你要找到海港指挥·丹尼斯(136,3432)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯2

	DefineMission(5513,"挑战吉尼斯2",744,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>你的时间观念真的不是很强啊")
	MisResultCondition(HasMission, 744)
	MisResultCondition(NoRecord,744)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 744)
	MisResultAction(SetRecord,  744 )

	

	-------------------------------------------------挑战吉尼斯3	
	DefineMission (5514, "挑战吉尼斯3", 745)
	
	MisBeginTalk("<t>这是你的官方证明,快走吧!小肯补给站的海港指挥·迪迪萨恐怕也着急了")

	MisBeginCondition(NoMission,745)
	MisBeginCondition(HasRecord, 744)
	MisBeginCondition(NoRecord,745)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,745)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站是小肯补给站,你要找到海港指挥·迪迪萨(1544,3712)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯3

	DefineMission(5515,"挑战吉尼斯3",745,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>航程还顺利吗?")
	MisResultCondition(HasMission, 745)
	MisResultCondition(NoRecord,745)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 745)
	MisResultAction(SetRecord,  745 )



	-------------------------------------------------挑战吉尼斯4	
	DefineMission (5516, "挑战吉尼斯4", 746)
	
	MisBeginTalk("<t>最近我为接待远来的勇士,连约会的时间都没有.埃皮杜补给站的海港指挥·索尔的日子肯定也不好过.")

	MisBeginCondition(NoMission,746)
	MisBeginCondition(HasRecord, 745)
	MisBeginCondition(NoRecord,746)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,746)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站是埃皮杜补给站,你要找到海港指挥·索尔(3194,3507)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯4

	DefineMission(5517,"挑战吉尼斯4",746,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 这一路走来,你一定捞到不少宝贝吧,我听说泰坦尼克就是在这附近沉的.")
	MisResultCondition(HasMission, 746)
	MisResultCondition(NoRecord,746)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 746)
	MisResultAction(SetRecord,  746 )
	


	-------------------------------------------------挑战吉尼斯5	
	DefineMission (5518, "挑战吉尼斯5", 747)
	
	MisBeginTalk("<t>虽然海上风光无限好,但要抓紧时间赶路哦!黑龙套装只有一件!而且卡马塞补给站还很远呢.")

	MisBeginCondition(NoMission,747)
	MisBeginCondition(HasRecord,746)
	MisBeginCondition(NoRecord,747)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,747)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站是卡马塞补给站,你要找到海港指挥·奥登(738,3803)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯5

	DefineMission(5519,"挑战吉尼斯5",747,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 你的速度像沙地龟一样慢啊!")
	MisResultCondition(HasMission, 747)
	MisResultCondition(NoRecord,747)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 747)
	MisResultAction(SetRecord,  747 )
	


	-------------------------------------------------挑战吉尼斯6	
	DefineMission (5520, "挑战吉尼斯6", 748)
	
	MisBeginTalk("<t>附近的岛上可能会有妖媚的人鱼,我奉劝你向着萨迪勒补给站快速前进,听到美妙的歌声时就塞紧耳朵.")

	MisBeginCondition(NoMission,748)
	MisBeginCondition(HasRecord,747)
	MisBeginCondition(NoRecord,748)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,748)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站是萨迪勒补给站,你要找到海港指挥·乔尔乔尼(194,1715)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯6

	DefineMission(5521,"挑战吉尼斯6",748,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 帆布和勇气是航海的必备品")
	MisResultCondition(HasMission, 748)
	MisResultCondition(NoRecord,748)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 748)
	MisResultAction(SetRecord,  748 )
	


	-------------------------------------------------挑战吉尼斯7	
	DefineMission (5522, "挑战吉尼斯7", 749)
	
	MisBeginTalk("<t>加油年轻人!作航海英雄应该做的事!下一站：拉古补给站.")

	MisBeginCondition(NoMission,749)
	MisBeginCondition(HasRecord,748)
	MisBeginCondition(NoRecord,749)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,749)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站拉古补给站,你要找到海港指挥·多廉达(3498,923)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯7

	DefineMission(5523,"挑战吉尼斯7",749,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 听说决定挑战的人很多??可是……")
	MisResultCondition(HasMission, 749)
	MisResultCondition(NoRecord,749)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 749)
	MisResultAction(SetRecord,  749 )
	


	-------------------------------------------------挑战吉尼斯8	
	DefineMission (5524, "挑战吉尼斯8", 750)
	
	MisBeginTalk("<t>可是到拉古补给站的勇士不是很多,难道这些家伙都在海上遇难了???埃弗里补给站的海港指挥·布纽岂不是门庭更冷清!")

	MisBeginCondition(NoMission,750)
	MisBeginCondition(HasRecord,749)
	MisBeginCondition(NoRecord,750)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,750)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站埃弗里补给站,你要找到海港指挥·布纽(2042,635)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯8

	DefineMission(5525,"挑战吉尼斯8",750,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 看样子你的运气还不错,没有碰到磁漩涡也没有被海怪吃掉")
	MisResultCondition(HasMission, 750)
	MisResultCondition(NoRecord,750)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 750)
	MisResultAction(SetRecord,  750 )
	
	

	-------------------------------------------------挑战吉尼斯9	
	DefineMission (5526, "挑战吉尼斯9", 751)
	
	MisBeginTalk("<t>遥想当年我航海的时候……对不起,忘记了你很赶时间.海港指挥·鲁西在苏港补给站等你.")

	MisBeginCondition(NoMission,751)
	MisBeginCondition(HasRecord,750)
	MisBeginCondition(NoRecord,751)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,751)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站苏港补给站,你要找到海港指挥·鲁西(464,468)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯9

	DefineMission(5527,"挑战吉尼斯9",751,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>布纽那个白痴总喜欢浪费别人的时间,难道他不知道你的时间很宝贵吗?我最不欣赏这样的人.这样的人婆婆嘛嘛,唠唠叨叨,啰里啰唆,难道就不能学学我吗?我又干练又……不要打我,我说完了!")
	MisResultCondition(HasMission, 751)
	MisResultCondition(NoRecord,751)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 751)
	MisResultAction(SetRecord,  751 )
	



	-------------------------------------------------挑战吉尼斯10	
	DefineMission (5528, "挑战吉尼斯10", 752)
	
	MisBeginTalk("<t>下一站：弗里敦补给站。")

	MisBeginCondition(NoMission,752)
	MisBeginCondition(HasRecord,751)
	MisBeginCondition(NoRecord,752)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,752)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站弗里敦补给站,你要找到海港指挥·法第尔(3153,674)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯10

	DefineMission(5529,"挑战吉尼斯10",752,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 我不得不说你的速度要加快了.")
	MisResultCondition(HasMission, 752)
	MisResultCondition(NoRecord,752)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 752)
	MisResultAction(SetRecord,  752 )
	


	-------------------------------------------------挑战吉尼斯11	
	DefineMission (5530, "挑战吉尼斯11", 753)
	
	MisBeginTalk("<t>可能已经有人提前到达哈尔补给站了,你要加油!")

	MisBeginCondition(NoMission,753)
	MisBeginCondition(HasRecord,752)
	MisBeginCondition(NoRecord,753)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,753)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站哈尔补给站,你要找到海港指挥·瓦雷米(2041,1355)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯11

	DefineMission(5531,"挑战吉尼斯11",753,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 欢迎来到哈尔补给站!")
	MisResultCondition(HasMission, 753)
	MisResultCondition(NoRecord,753)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 753)
	MisResultAction(SetRecord,  753 )
	
	


	-------------------------------------------------挑战吉尼斯12	
	DefineMission (5532, "挑战吉尼斯12", 754)
	
	MisBeginTalk("<t>为了尊严和荣誉,你要争分夺秒了.到阿尔补给站去吧,那里离荣誉很近.")

	MisBeginCondition(NoMission,754)
	MisBeginCondition(HasRecord,753)
	MisBeginCondition(NoRecord,754)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,754)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站阿尔补给站,你要找到海港指挥·达耶达(1497,1707)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯12

	DefineMission(5533,"挑战吉尼斯12",754,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 你确定自己竭尽全力了?")
	MisResultCondition(HasMission, 754)
	MisResultCondition(NoRecord,754)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 754)
	MisResultAction(SetRecord,  754 )
	
	


	
	-------------------------------------------------挑战吉尼斯13	
	DefineMission (5534, "挑战吉尼斯13", 755)
	
	MisBeginTalk("<t>胜利女神在向你招手,义无反顾的冲向终点吧!")

	MisBeginCondition(NoMission,755)
	MisBeginCondition(HasRecord,754)
	MisBeginCondition(NoRecord,755)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,755)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed(MIS_NEED_DESP, "下一站雷霆军港,你要找到水手·迪奥(1083,1285)")
	
	MisHelpTalk("<t>每个想要黑龙套装的人都在争分夺秒哦")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯13

	DefineMission(5535,"挑战吉尼斯13",755,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t> 你真的很勇敢啊!你绝对是当海盗的料啊!你不当海盗真的很可惜啊!这本<r好汉书>上记录了你的全程所用时间,打开看看吧.别忘拿走你的奖励.")
	MisResultCondition(HasMission, 755)
	MisResultCondition(NoRecord,755)
	MisResultCondition(HasItem,2911,1)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(AddChaItem2, 2912)
	MisResultAction(ClearMission, 755)
	MisResultAction(SetRecord,  755 )
	MisResultBagNeed(2)
	MisResultAction(ClearRecord, 743)---------------可以反复接
	MisResultAction(ClearRecord, 744)---------------可以反复接
	MisResultAction(ClearRecord, 745)---------------可以反复接
	MisResultAction(ClearRecord, 746)---------------可以反复接
	MisResultAction(ClearRecord, 747)---------------可以反复接
	MisResultAction(ClearRecord, 748)---------------可以反复接
	MisResultAction(ClearRecord, 749)---------------可以反复接
	MisResultAction(ClearRecord, 750)---------------可以反复接
	MisResultAction(ClearRecord, 751)---------------可以反复接
	MisResultAction(ClearRecord, 752)---------------可以反复接
	MisResultAction(ClearRecord, 753)---------------可以反复接
	MisResultAction(ClearRecord, 754)---------------可以反复接
	MisResultAction(ClearRecord, 755)---------------可以反复接

	-------------------------------------------------乱斗英雄----------少女莘蒂	
	DefineMission (5536, "喋血白羊之乱斗英雄", 1060)
	
	MisBeginTalk("<t>闯关Hero肯定是乱斗高手,10点乱斗点数肯定难不倒你 ")

	MisBeginCondition(NoMission,1060)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1060)
	MisBeginAction(AddMission,1060)
	MisCancelAction(ClearMission, 1060)
	
	MisHelpTalk("<t>才10点乱斗点数呢，你要加油哦!")
	MisResultTalk("<t>我早就知道10点乱斗点数对你来说不构成难度")

	MisResultCondition(HasMission, 1060)
	MisResultCondition(NoRecord,1060)
	MisResultCondition(HasFightingPoint,10)
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1060)
	MisResultAction(SetRecord,  1060 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------少女莘蒂	
	DefineMission (5537, "喋血白羊之名声英雄", 1061)
	
	MisBeginTalk("<t>要作闯关英雄名声不足500怎么行?相信你一定知道很多提升名声的办法,比如收徒等等.. ")

	MisBeginCondition(NoMission,1061)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1061)
	MisBeginAction(AddMission,1061)
	MisCancelAction(ClearMission, 1061)
	
	MisHelpTalk("<t>快去吧,我还有重要的事要做!")
	MisResultTalk("<t>你果然很有办法")

	MisResultCondition(HasMission, 1061)
	MisResultCondition(NoRecord,1061)
	MisResultCondition(HasCredit,500 )
	MisResultAction(TakeCredit, 500 )
	MisResultAction(ClearMission, 1061)
	MisResultAction(SetRecord,  1061 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------少女莘蒂	
	DefineMission (5538, "喋血白羊之等级英雄", 1062)
	
	MisBeginTalk("<t>等级达到40是起码的标准,别说你不行哦 ")

	MisBeginCondition(NoMission,1062)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1062)
	MisBeginAction(AddMission,1062)
	MisCancelAction(ClearMission, 1062)
	
	MisHelpTalk("<t>等级不到40级你不好意思回来的吧?")
	MisResultTalk("<t>你好慢啊,再不来我要出去幽会了呢")

	MisResultCondition(HasMission, 1062)
	MisResultCondition(NoRecord,1062)
	MisResultCondition(LvCheck, ">", 39 )
	MisResultAction(ClearMission, 1062)
	MisResultAction(SetRecord,  1062 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------少女莘蒂	
	DefineMission (5539, "喋血白羊之荣誉英雄", 1063)
	
	MisBeginTalk("<t>荣誉是勇气和智慧的结晶,相信你不会让人失望的.100点荣誉刚刚好哦 ")

	MisBeginCondition(NoMission,1063)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1063)
	MisBeginAction(AddMission,1063)
	MisCancelAction(ClearMission, 1063)
	
	MisHelpTalk("<t>我有情书要看,你记得带着荣誉归来")
	MisResultTalk("<t>该怎么夸奖你呢?真想送你一个吻")

	MisResultCondition(HasMission, 1063)
	MisResultCondition(NoRecord,1063)
	MisResultCondition(HasHonorPoint,100 )
	MisResultAction(TakeHonorPoint, 100 )
	MisResultAction(ClearMission, 1063)
	MisResultAction(SetRecord,  1063 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------少女莘蒂	
	DefineMission (5540, "喋血白羊之采集大使", 1064)
	
	MisBeginTalk("<t>你知道吗,我的朋友我这有一枚采集勋章,如果你想要就做好出发的准备吧 ")

	MisBeginCondition(NoMission,1064)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1064)
	MisBeginAction(AddMission,1064)
	MisBeginAction(AddTrigger, 10641, TE_GETITEM, 3116, 15 )---------------精灵果15
	MisBeginAction(AddTrigger, 10642, TE_GETITEM, 1678, 15 )---------------羊绒15
	MisBeginAction(AddTrigger, 10643, TE_GETITEM, 4809, 15 )-------------南瓜头15
	MisBeginAction(AddTrigger, 10644, TE_GETITEM, 0855, 20 )---------------精灵硬币20
	MisBeginAction(AddTrigger, 10645, TE_GETITEM, 4503, 1 )---------------皇冠1个
	MisBeginAction(AddTrigger, 10646, TE_GETITEM, 1848, 50 )-------------面包50
	MisCancelAction(ClearMission, 1064)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 50, 67, 50 )

	MisHelpTalk("<t>这些东西都不难找到的,快去吧")
	MisResultTalk("<t>我甚至怀疑你可以采集到外星生物")

	MisResultCondition(HasMission, 1064)
	MisResultCondition(NoRecord,1064)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 50 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 50 )
	MisResultAction(ClearMission, 1064)
	MisResultAction(SetRecord,  1064 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1064, 1, 15 )
	RegCurTrigger( 10641 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1064, 16, 15 )
	RegCurTrigger( 10642 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1064, 31, 15 )
	RegCurTrigger( 10643 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1064, 46, 20 )
	RegCurTrigger( 10644 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1064, 66, 1 )
	RegCurTrigger( 10645 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1064, 67, 50 )
	RegCurTrigger( 10646 )

	----------------------------------------------------------沉睡的白羊----------少女莘蒂
	DefineMission( 5541, "喋血白羊之沉睡白羊", 1065 )
	MisBeginTalk("<t>不远处有个穿着白羊星座酷装的坏家伙,他不经常出没,但足以让我和真爱岛的居民怕怕,你能让他永远沉睡吗?")
				
	MisBeginCondition(NoMission, 1065)
	MisBeginCondition(HasRecord,836)
	MisBeginCondition(NoRecord,1065)
	MisBeginAction(AddMission,1065)
	MisBeginAction(AddTrigger, 10651, TE_KILL, 1009, 1)---白羊守护者
	
	MisCancelAction(ClearMission, 1065)

	MisNeed(MIS_NEED_DESP, "捕杀真爱岛的白羊守护者(2566,2454)!")
	MisNeed(MIS_NEED_KILL, 1009,1, 10, 1)
	

	MisResultTalk("<t>英雄救美的好事不是每天都会碰到的哦,况且他不经常出来.")
	MisHelpTalk("<t>是上帝赐予你的力量吗?你简直无人能敌.")
	MisResultCondition(HasMission,  1065)
	MisResultCondition(HasFlag, 1065, 10)
	MisResultCondition(NoRecord , 1065)
	MisResultAction(GiveItem, 2950, 1, 4 )
	MisResultAction(ClearMission,  1065)
	MisResultAction(SetRecord,  1065 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1009)	
	TriggerAction( 1, AddNextFlag, 1065, 10, 1 )
	RegCurTrigger( 10651 )






-------------------------------------------------乱斗英雄----------少女莘蒂	
	DefineMission (5542, "喋血白羊之乱斗英雄", 1066)
	
	MisBeginTalk("<t>闯关Hero肯定是乱斗高手,20点乱斗点数肯定难不倒你 ")

	MisBeginCondition(NoMission,1066)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1066)
	MisBeginAction(AddMission,1066)
	MisCancelAction(ClearMission, 1066)
	
	MisHelpTalk("<t>才20点乱斗点数呢,你要加油哦!")
	MisResultTalk("<t>我早就知道20点乱斗点数对你来说不构成难度")

	MisResultCondition(HasMission, 1066)
	MisResultCondition(NoRecord,1066)
	MisResultCondition(HasFightingPoint,20 )
	MisResultAction(TakeFightingPoint, 20 )
	MisResultAction(ClearMission, 1066)
	MisResultAction(SetRecord,  1066 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------少女莘蒂	
	DefineMission (5543, "喋血白羊之名声英雄", 1067)
	
	MisBeginTalk("<t>要作闯关英雄名声不足1000怎么行?相信你一定知道很多提升名声的办法,比如收徒等等.. ")

	MisBeginCondition(NoMission,1067)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1067)
	MisBeginAction(AddMission,1067)
	MisCancelAction(ClearMission, 1067)
	
	MisHelpTalk("<t>快去吧,我还有重要的事要做!")
	MisResultTalk("<t>你果然很有办法")

	MisResultCondition(HasMission, 1067)
	MisResultCondition(NoRecord,1067)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1067)
	MisResultAction(SetRecord,  1067 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------少女莘蒂	
	DefineMission (5544, "喋血白羊之等级英雄", 1068)
	
	MisBeginTalk("<t>等级达到45是起码的标准,别说你不行哦 ")

	MisBeginCondition(NoMission,1068)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1068)
	MisBeginAction(AddMission,1068)
	MisCancelAction(ClearMission, 1068)
	
	MisHelpTalk("<t>等级不到45级你不好意思回来的吧?")
	MisResultTalk("<t>你好慢啊,再不来我要出去幽会了呢")

	MisResultCondition(HasMission, 1068)
	MisResultCondition(NoRecord,1068)
	MisResultCondition(LvCheck, ">", 44 )
	MisResultAction(ClearMission, 1068)
	MisResultAction(SetRecord,  1068 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------少女莘蒂	
	DefineMission (5545, "喋血白羊之荣誉英雄", 1069)
	
	MisBeginTalk("<t>荣誉是勇气和智慧的结晶,相信你不会让人失望的.200点荣誉刚刚好哦 ")

	MisBeginCondition(NoMission,1069)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1069)
	MisBeginAction(AddMission,1069)
	MisCancelAction(ClearMission, 1069)
	
	MisHelpTalk("<t>我有情书要看,你记得带着荣誉归来")
	MisResultTalk("<t>该怎么夸奖你呢?真想送你一个吻")

	MisResultCondition(HasMission, 1069)
	MisResultCondition(NoRecord,1069)
	MisResultCondition(HasHonorPoint,200 )
	MisResultAction(TakeHonorPoint, 200 )
	MisResultAction(ClearMission, 1069)
	MisResultAction(SetRecord,  1069 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------少女莘蒂	
	DefineMission (5546, "喋血白羊之采集大使", 1070)
	
	MisBeginTalk("<t>你知道吗,我的朋友我这有一枚采集勋章,如果你想要就做好出发的准备吧 ")

	MisBeginCondition(NoMission,1070)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1070)
	MisBeginAction(AddMission,1070)
	MisBeginAction(AddTrigger, 10701, TE_GETITEM, 3116, 15 )---------------精灵果15
	MisBeginAction(AddTrigger, 10702, TE_GETITEM, 1678, 15 )---------------羊绒15
	MisBeginAction(AddTrigger, 10703, TE_GETITEM, 4809, 15 )-------------南瓜头15
	MisBeginAction(AddTrigger, 10704, TE_GETITEM, 0855, 20 )---------------精灵硬币20
	MisBeginAction(AddTrigger, 10705, TE_GETITEM, 4503, 1 )---------------皇冠1个
	MisBeginAction(AddTrigger, 10706, TE_GETITEM, 1848, 40 )-------------蛋糕40
	MisBeginAction(AddTrigger, 10707, TE_GETITEM, 2673, 10 )-------------幻影发生器LV1  10
	MisCancelAction(ClearMission, 1070)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )

	MisHelpTalk("<t>这些东西都不难找到的,快去吧")
	MisResultTalk("<t>我甚至怀疑你可以采集到外星生物")

	MisResultCondition(HasMission, 1070)
	MisResultCondition(NoRecord,1070)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(ClearMission, 1070)
	MisResultAction(SetRecord,  1070 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1070, 1, 15 )
	RegCurTrigger( 10701 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1070, 16, 15 )
	RegCurTrigger( 10702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1070, 31, 15 )
	RegCurTrigger( 10703 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1070, 46, 20 )
	RegCurTrigger( 10704 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1070, 66, 1 )
	RegCurTrigger( 10705 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1070, 67, 40 )
	RegCurTrigger( 10706 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1070, 107, 10 )
	RegCurTrigger( 10707 )

	



-------------------------------------------------乱斗英雄----------少女莘蒂	
	DefineMission (5547, "喋血白羊之乱斗英雄", 1071)
	
	MisBeginTalk("<t>闯关Hero肯定是乱斗高手,50点乱斗点数肯定难不倒你 ")

	MisBeginCondition(NoMission,1071)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1071)
	MisBeginAction(AddMission,1071)
	MisCancelAction(ClearMission, 1071)
	
	MisHelpTalk("<t>才50点乱斗点数呢，你要加油哦!")
	MisResultTalk("<t>我早就知道50点乱斗点数对你来说不构成难度")

	MisResultCondition(HasMission, 1071)
	MisResultCondition(NoRecord,1071)
	MisResultCondition(HasFightingPoint,50 )
	MisResultAction(TakeFightingPoint, 50 )
	MisResultAction(ClearMission, 1071)
	MisResultAction(SetRecord,  1071 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------少女莘蒂	
	DefineMission (5548, "喋血白羊之名声英雄", 1072)
	
	MisBeginTalk("<t>要作闯关英雄名声不足3000怎么行?相信你一定知道很多提升名声的办法,比如收徒等等.. ")

	MisBeginCondition(NoMission,1072)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1072)
	MisBeginAction(AddMission,1072)
	MisCancelAction(ClearMission, 1072)
	
	MisHelpTalk("<t>快去吧,我还有重要的事要做!")
	MisResultTalk("<t>你果然很有办法")

	MisResultCondition(HasMission, 1072)
	MisResultCondition(NoRecord,1072)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1072)
	MisResultAction(SetRecord,  1072 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------少女莘蒂	
	DefineMission (5549, "喋血白羊之等级英雄", 1073)
	
	MisBeginTalk("<t>等级达到50是起码的标准,别说你不行哦 ")

	MisBeginCondition(NoMission,1073)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1073)
	MisBeginAction(AddMission,1073)
	MisCancelAction(ClearMission, 1073)
	
	MisHelpTalk("<t>等级不到50级你不好意思回来的吧?")
	MisResultTalk("<t>你好慢啊,再不来我要出去幽会了呢")

	MisResultCondition(HasMission, 1073)
	MisResultCondition(NoRecord,1073)
	MisResultCondition(LvCheck, ">", 49 )
	MisResultAction(ClearMission, 1073)
	MisResultAction(SetRecord,  1073 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------少女莘蒂	
	DefineMission (5550, "喋血白羊之荣誉英雄", 1074)
	
	MisBeginTalk("<t>荣誉是勇气和智慧的结晶,相信你不会让人失望的.500点荣誉刚刚好哦 ")

	MisBeginCondition(NoMission,1074)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1074)
	MisBeginAction(AddMission,1074)
	MisCancelAction(ClearMission, 1074)
	
	MisHelpTalk("<t>我有情书要看,你记得带着荣誉归来")
	MisResultTalk("<t>该怎么夸奖你呢?真想送你一个吻")

	MisResultCondition(HasMission, 1074)
	MisResultCondition(NoRecord,1074)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1074)
	MisResultAction(SetRecord,  1074 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------少女莘蒂	
	DefineMission (5551, "喋血白羊之采集大使", 1075)
	
	MisBeginTalk("<t>你知道吗,我的朋友我这有一枚采集勋章,如果你想要就做好出发的准备吧 ")

	MisBeginCondition(NoMission,1075)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1075)
	MisBeginAction(AddMission,1075)
	MisBeginAction(AddTrigger, 10751, TE_GETITEM, 3116, 15 )---------------精灵果15
	MisBeginAction(AddTrigger, 10752, TE_GETITEM, 1678, 15 )---------------羊绒15
	MisBeginAction(AddTrigger, 10753, TE_GETITEM, 4809, 15 )-------------南瓜头15
	MisBeginAction(AddTrigger, 10754, TE_GETITEM, 0855, 20 )---------------精灵硬币20
	MisBeginAction(AddTrigger, 10755, TE_GETITEM, 4503, 1 )---------------皇冠1个
	MisBeginAction(AddTrigger, 10756, TE_GETITEM, 1848, 40 )-------------蛋糕40
	MisBeginAction(AddTrigger, 10757, TE_GETITEM, 2673, 10 )-------------幻影发生器LV1  10
	MisBeginAction(AddTrigger, 10758, TE_GETITEM, 0227, 4 )-------------守护精灵饲料  4
	MisCancelAction(ClearMission, 1075)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 4, 117, 4 )

	MisHelpTalk("<t>这些东西都不难找到的,快去吧")
	MisResultTalk("<t>我甚至怀疑你可以采集到外星生物")

	MisResultCondition(HasMission, 1075)
	MisResultCondition(NoRecord,1075)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )
	MisResultCondition(HasItem, 0227, 4 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(TakeItem, 0227, 4 )
	MisResultAction(ClearMission, 1075)
	MisResultAction(SetRecord,  1075 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1075, 1, 15 )
	RegCurTrigger( 10751 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1075, 16, 15 )
	RegCurTrigger( 10752 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1075, 31, 15 )
	RegCurTrigger( 10753 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1075, 46, 20 )
	RegCurTrigger( 10754 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1075, 66, 1 )
	RegCurTrigger( 10755 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1075, 67, 40 )
	RegCurTrigger( 10756 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1075, 107, 10 )
	RegCurTrigger( 10757 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1075, 117, 4 )
	RegCurTrigger( 10758 )


	

	----------------------------------------------------------社交大使----------少女莘蒂
	DefineMission( 5552, "喋血白羊之社交大使", 1076 )
	MisBeginTalk("<t>海盗是聪明人的职业,要到处都吃得开才行,所以你要去认识些看起来重要和不重要的人")
				
	MisBeginCondition(NoMission, 1076)
	MisBeginCondition(NoRecord,1076)
	MisBeginCondition(HasRecord, 836)
	MisBeginAction(AddMission,1076)
	MisCancelAction(ClearMission, 1076)

	MisNeed(MIS_NEED_DESP, "找沙岚的人鱼王子·哈沙特(1254,3491)聊聊")
	
	MisHelpTalk("<t>就算你们很熟也要去啊,这是任务")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使-----------------人鱼王子·哈沙特
	DefineMission(5553, "社交大使", 1076, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你知道吗?我是鱼群中最帅的人,也是人群中最快的泳者...")
	MisResultCondition(NoRecord, 1076)
	MisResultCondition(HasMission,1076)
	MisResultAction(ClearMission,1076)
	MisResultAction(SetRecord, 1076)

	----------------------------------------------------------社交大使1----------人鱼王子·哈沙特
	DefineMission( 5554, "社交大使2", 1077 )
	MisBeginTalk("<t>我在佛前求了五百年,只愿化作她每天经过的路口的一棵树,她真的每天经过那个路口,可我却被化作一只鱼...")
	MisBeginCondition(NoMission, 1077)
	MisBeginCondition(NoRecord,1077)
	MisBeginCondition(HasRecord, 1076)
	MisBeginAction(AddMission,1077)
	MisCancelAction(ClearMission, 1077)

	MisNeed(MIS_NEED_DESP, "找冰狼的草莓优优(1010,350)聊聊")
	
	MisHelpTalk("<t>我是一只鱼,水里的空气...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使1-------------草莓优优
	DefineMission(5555, "社交大使2", 1077, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好!我的大使!")
	MisResultCondition(NoRecord, 1077)
	MisResultCondition(HasMission,1077)
	MisResultAction(ClearMission,1077)
	MisResultAction(SetRecord, 1077)

	----------------------------------------------------------社交大使2----------草莓优优
	DefineMission( 5556, "社交大使3", 1078 )
	MisBeginTalk("<t>我看起来是那种不起眼的角色,但你如果真的这样认为..就祈祷主保佑你吧")
				
	MisBeginCondition(NoMission, 1078)
	MisBeginCondition(NoRecord,1078)
	MisBeginCondition(HasRecord, 1077)
	MisBeginAction(AddMission,1078)
	MisCancelAction(ClearMission, 1078)

	MisNeed(MIS_NEED_DESP, "找加纳的老者·糊涂山人(2272,2700)聊聊")
	
	MisHelpTalk("<t>那位可爱的老人有让上帝都嫉妒的才华呢")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使2--------老者·糊涂山人
	DefineMission(5557, "社交大使3", 1078, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>简单的人容易幸福...")
	MisResultCondition(NoRecord, 1078)
	MisResultCondition(HasMission,1078)
	MisResultAction(ClearMission,1078)
	MisResultAction(SetRecord, 1078)



	----------------------------------------------------------社交大使3----------老者·糊涂山人
	DefineMission( 5558, "社交大使4", 1079 )
	MisBeginTalk("<t>嫉妒我?谢谢!世界上最大的智慧是音乐创造的.不如你去请教一下乐器专家·沙梅洱,他比我更了解智慧.")
				
	MisBeginCondition(NoMission, 1079)
	MisBeginCondition(NoRecord,1079)
	MisBeginCondition(HasRecord, 1078)
	MisBeginAction(AddMission,1079)
	MisCancelAction(ClearMission, 1079)

	MisNeed(MIS_NEED_DESP, "找沙岚的乐器专家·沙梅洱(664,3093)聊聊")
	
	MisHelpTalk("<t>音乐是可以创造奇迹的,年轻人,记住这句话.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使3--------乐器专家·沙梅洱
	DefineMission(5559, "社交大使4", 1079, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>糊涂山人真是位谦虚的智者啊!")
	MisResultCondition(NoRecord, 1079)
	MisResultCondition(HasMission,1079)
	MisResultAction(ClearMission,1079)
	MisResultAction(SetRecord, 1079)


	----------------------------------------------------------社交大使4----------乐器专家·沙梅洱
	DefineMission( 5560, "社交大使5", 1080 )
	MisBeginTalk("<t>我的梦想是借助乐器,为平凡人构筑天堂.你也有梦想吧,是什么呢?和鲁鲁一样的吗?")
				
	MisBeginCondition(NoMission, 1080)
	MisBeginCondition(NoRecord,1080)
	MisBeginCondition(HasRecord, 1079)
	MisBeginAction(AddMission,1080)
	MisCancelAction(ClearMission, 1080)

	MisNeed(MIS_NEED_DESP, "找冰狼的鲁鲁(2668,634)聊聊")
	
	MisHelpTalk("<t>梦想是生活的影子,别让太阳在你的头顶没有顾盼.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使4--------鲁鲁
	DefineMission(5561, "社交大使5", 1080, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的梦想是每天都有棒棒糖吃.......")
	MisResultCondition(NoRecord, 1080)
	MisResultCondition(HasMission,1080)
	MisResultAction(ClearMission,1080)
	MisResultAction(SetRecord, 1080)


	----------------------------------------------------------社交大使5----------鲁鲁
	DefineMission( 5562, "社交大使6", 1081 )
	MisBeginTalk("<t>如果每天都有棒棒糖吃又能和邻居姐姐一起去遥远的加纳去看春天就更好了,在那里我有个从未见过面的朋友呢...")
				
	MisBeginCondition(NoMission, 1081)
	MisBeginCondition(NoRecord,1081)
	MisBeginCondition(HasRecord, 1080)
	MisBeginAction(AddMission,1081)
	MisCancelAction(ClearMission, 1081)

	MisNeed(MIS_NEED_DESP, "找加纳的古力果(526,2432)聊聊")
	
	MisHelpTalk("<t>请带去我对古力果的祝福.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使5--------古力果
	DefineMission(5563, "社交大使6", 1081, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你也是鲁鲁的朋友吗?鲁鲁他还好吗?")
	MisResultCondition(NoRecord, 1081)
	MisResultCondition(HasMission,1081)
	MisResultAction(ClearMission,1081)
	MisResultAction(SetRecord, 1081)



	----------------------------------------------------------社交大使6----------古力果
	DefineMission( 5564, "社交大使7", 1082 )
	MisBeginTalk("<t>我很喜欢交那种不见面的朋友,遥远而神秘,没有禁忌,当然也会有欺骗产生,比如说有个叫威利的总是对我说他是一只羊,你能帮我查证一下吗")
				
	MisBeginCondition(NoMission, 1082)
	MisBeginCondition(NoRecord,1082)
	MisBeginCondition(HasRecord, 1081)
	MisBeginAction(AddMission,1082)
	MisCancelAction(ClearMission, 1082)

	MisNeed(MIS_NEED_DESP, "找沙岚的小羊·威利(898,3683)聊聊")
	
	MisHelpTalk("<t>真希望威利是一个威武的骑士......")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使6--------小羊·威利
	DefineMission(5565, "社交大使7", 1082, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你怎么没告诉她呢,我一直都是一只羊,只是后来可以讲人类的话")
	MisResultCondition(NoRecord, 1082)
	MisResultCondition(HasMission,1082)
	MisResultAction(ClearMission,1082)
	MisResultAction(SetRecord, 1082)


	----------------------------------------------------------社交大使7----------小羊·威利
	DefineMission( 5566, "社交大使8", 1083 )
	MisBeginTalk("<t>你要作社交英雄吗?介绍给你一个难沟通的人类,这样才有挑战性,咩!")
				
	MisBeginCondition(NoMission, 1083)
	MisBeginCondition(NoRecord,1083)
	MisBeginCondition(HasRecord, 1082)
	MisBeginAction(AddMission,1083)
	MisCancelAction(ClearMission, 1083)

	MisNeed(MIS_NEED_DESP, "找加纳的旅行医生·米奈希尔(1004,2973)聊聊")
	
	MisHelpTalk("<t>祝你好运,人类!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使8--------旅行医生·米奈希尔
	DefineMission(5567, "社交大使8", 1083, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>人类误解我也就算了,因为人类总是说多过于观察体会,没想到连羊也这样看,看来人类的劣根性来自语言")
	MisResultCondition(NoRecord, 1083)
	MisResultCondition(HasMission,1083)
	MisResultAction(ClearMission,1083)
	MisResultAction(SetRecord, 1083)


	----------------------------------------------------------社交大使8----------旅行医生·米奈希尔
	DefineMission( 5568, "社交大使9", 1084 )
	MisBeginTalk("<t>我温和的一面总是不被发现,当然这也不能怪你,谁会像菲菲那样长着一双善于发现美的眼睛呢?说起她好久不见了,帮我问候她好吗?")
				
	MisBeginCondition(NoMission, 1084)
	MisBeginCondition(NoRecord,1084)
	MisBeginCondition(HasRecord, 1083)
	MisBeginAction(AddMission,1084)
	MisCancelAction(ClearMission, 1084)

	MisNeed(MIS_NEED_DESP, "找沙岚的菲菲(797,3129)聊聊")
	
	MisHelpTalk("<t>我要你彻底改变对我的印象．")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使8--------菲菲
	DefineMission(5569, "社交大使9", 1084, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>米奈希尔她是一个很难捉摸的人,但是个好人呢")
	MisResultCondition(NoRecord, 1084)
	MisResultCondition(HasMission,1084)
	MisResultAction(ClearMission,1084)
	MisResultAction(SetRecord, 1084)

	----------------------------------------------------------社交大使10----------菲菲
	DefineMission( 5572, "社交大使10", 1086 )
	MisBeginTalk("<t>不说她了,我现在最想见见一个叫伊丽莎白的女人,前几天在海边拣到一只漂流瓶,她邀请拾到的人参加舞会")
				
	MisBeginCondition(NoMission, 1086)
	MisBeginCondition(NoRecord,1086)
	MisBeginCondition(HasRecord, 1084)
	MisBeginAction(AddMission,1086)
	MisCancelAction(ClearMission, 1086)

	MisNeed(MIS_NEED_DESP, "找藏宝海湾的伊丽莎白(616,965)聊聊")
	
	MisHelpTalk("<t>浪漫的舞会啊......")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使10--------伊丽莎白
	DefineMission(5573, "社交大使10", 1086, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>真的有人拣到我的邀请函啊?!谢谢你告诉我这个消息．你一定会交好运的．")
	MisResultCondition(NoRecord, 1086)
	MisResultCondition(HasMission,1086)
	MisResultAction(ClearMission,1086)
	MisResultAction(SetRecord, 1086)

	----------------------------------------------------------社交大使11----------伊丽莎白
	DefineMission( 5574, "社交大使11", 1087 )
	MisBeginTalk("<t>你看我的舞会很快就要开始了,我还要去接王蓉,你能帮我邀请<海军总部指挥官·基.埃斯西准将>吗?")
				
	MisBeginCondition(NoMission, 1087)
	MisBeginCondition(NoRecord,1087)
	MisBeginCondition(HasRecord, 1086)
	MisBeginAction(AddMission,1087)
	MisCancelAction(ClearMission, 1087)

	MisNeed(MIS_NEED_DESP, "找雷霆堡的海军总部指挥官·基.埃斯西准将(808,1521)聊聊")
	
	MisHelpTalk("<t>我要结识东方的含蓄女子了...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使11--------海军总部指挥官·基.埃斯西准将
	DefineMission(5575, "社交大使11", 1087, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我从不拒绝美女的邀请,哈哈哈...")
	MisResultCondition(NoRecord, 1087)
	MisResultCondition(HasMission,1087)
	MisResultAction(ClearMission,1087)
	MisResultAction(SetRecord, 1087)

	----------------------------------------------------------社交大使12----------海军总部指挥官·基.埃斯西准将
	DefineMission( 5576, "社交大使12", 1088 )
	MisBeginTalk("<t>可是我答应写份诗稿送给沙岚的蘑蘑,你知道的我写诗歌很有一套的．你帮我告诉她我生病了,但也会很快将诗稿送过去的,嘿!其实作为军人我是不应该说谎的")
				
	MisBeginCondition(NoMission, 1088)
	MisBeginCondition(NoRecord,1088)
	MisBeginCondition(HasRecord, 1087)
	MisBeginAction(AddMission,1088)
	MisCancelAction(ClearMission, 1088)

	MisNeed(MIS_NEED_DESP, "找沙岚的蘑蘑(1209,3196)聊聊")
	
	MisHelpTalk("<t>一场浪漫的舞会对一位军人来说意味着无数的机会,哦,可爱的伊丽莎白...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使12--------蘑蘑
	DefineMission(5577, "社交大使12", 1088, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>他那么强壮的人都生病了?可怜的将军")
	MisResultCondition(NoRecord, 1088)
	MisResultCondition(HasMission,1088)
	MisResultAction(ClearMission,1088)
	MisResultAction(SetRecord, 1088)


	----------------------------------------------------------社交大使13----------蘑蘑
	DefineMission( 5578, "社交大使13", 1089 )
	MisBeginTalk("<t>其实是我的朋友很崇拜将军的才华,很想得到将军的手稿．如果你什么时候有空顺便帮我通知他吧,谢谢你")
				
	MisBeginCondition(NoMission, 1089)
	MisBeginCondition(NoRecord,1089)
	MisBeginCondition(HasRecord, 1088)
	MisBeginAction(AddMission,1089)
	MisCancelAction(ClearMission, 1089)

	MisNeed(MIS_NEED_DESP, "找加纳的淘淘(1893,2812)聊聊")
	
	MisHelpTalk("<t>淘淘会成为未来伟大的诗人呢")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使13--------淘淘
	DefineMission(5579, "社交大使13", 1089, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>原来会写诗歌的将军也是会生病的啊?")
	MisResultCondition(NoRecord, 1089)
	MisResultCondition(HasMission,1089)
	MisResultAction(ClearMission,1089)
	MisResultAction(SetRecord, 1089)

	----------------------------------------------------------社交大使14----------淘淘
	DefineMission( 5580, "社交大使14", 1090 )
	MisBeginTalk("<t>真希望将军能快点好起来．谢谢你．我介绍最漂亮的温莉·冰泉给你认识吧")
				
	MisBeginCondition(NoMission, 1090)
	MisBeginCondition(NoRecord,1090)
	MisBeginCondition(HasRecord, 1089)
	MisBeginAction(AddMission,1090)
	MisCancelAction(ClearMission, 1090)

	MisNeed(MIS_NEED_DESP, "找冰狼的温莉·冰泉(1380,523)聊聊")
	
	MisHelpTalk("<t>温莉·冰泉在冰狼住哦")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使14--------温莉·冰泉        
	DefineMission(5581, "社交大使14", 1090, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我在失恋前是很漂亮的．")
	MisResultCondition(NoRecord, 1090)
	MisResultCondition(HasMission,1090)
	MisResultAction(ClearMission,1090)
	MisResultAction(SetRecord, 1090)

	----------------------------------------------------------社交大使15----------温莉·冰泉
	DefineMission( 5582, "社交大使15", 1091 )
	MisBeginTalk("<t>我憔悴了很多,你能帮我带个口信给瑞得·皮戈吗?就说我真心求得他的原谅,如果你办得好我会在辛蒂那为你美言的")
				
	MisBeginCondition(NoMission, 1091)
	MisBeginCondition(NoRecord,1091)
	MisBeginCondition(HasRecord, 1090)
	MisBeginAction(AddMission,1091)
	MisCancelAction(ClearMission, 1091)

	MisNeed(MIS_NEED_DESP, "找加纳的瑞得·皮戈(1113,2779)聊聊")
	
	MisHelpTalk("<t>拜托你了,我真的很爱他")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使15-------- 瑞得·皮戈
	DefineMission(5583, "社交大使15", 1091, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的温莉憔悴了?这可怎么办啊?")
	MisResultCondition(NoRecord, 1091)
	MisResultCondition(HasMission,1091)
	MisResultAction(ClearMission,1091)
	MisResultAction(SetRecord, 1091)


	----------------------------------------------------------社交大使16----------瑞得·皮戈
	DefineMission( 5584, "社交大使16", 1092 )
	MisBeginTalk("<t>其实我早就原谅她了,只是一直在忙通灵者·月光眼的事,所以没有写信给她,你代我跟通灵者·月光眼说声抱歉,我过几天再联系他")
				
	MisBeginCondition(NoMission, 1092)
	MisBeginCondition(NoRecord,1092)
	MisBeginCondition(HasRecord, 1091)
	MisBeginAction(AddMission,1092)
	MisCancelAction(ClearMission, 1092)

	MisNeed(MIS_NEED_DESP, "找冰狼的通灵者·月光眼(2134,555)聊聊")
	
	MisHelpTalk("<t>我想月光眼会谅解我的")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使16-------- 通灵者·月光眼
	DefineMission(5585, "社交大使16", 1092, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>他做得对,如果当初我肯让步,就不会失去爱人.")
	MisResultCondition(NoRecord, 1092)
	MisResultCondition(HasMission,1092)
	MisResultAction(ClearMission,1092)
	MisResultAction(SetRecord, 1092)


	----------------------------------------------------------社交大使17----------通灵者·月光眼
	DefineMission( 5586, "社交大使17", 1093 )
	MisBeginTalk("<t>往事已去,现在我最关心的是好友榴莲的贪吃症有没有好转")
				
	MisBeginCondition(NoMission, 1093)
	MisBeginCondition(NoRecord,1093)
	MisBeginCondition(HasRecord, 1092)
	MisBeginAction(AddMission,1093)
	MisCancelAction(ClearMission, 1093)

	MisNeed(MIS_NEED_DESP, "找加纳的榴莲(1535,3071)聊聊")
	
	MisHelpTalk("<t>榴莲总像一个长不大的孩子,思维在海上漂荡")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使17-------- 榴莲
	DefineMission(5587, "社交大使17", 1093, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我很满意自己的病症,不要担心,而且身材保持得还不错呢")
	MisResultCondition(NoRecord, 1093)
	MisResultCondition(HasMission,1093)
	MisResultAction(ClearMission,1093)
	MisResultAction(SetRecord, 1093)

	----------------------------------------------------------社交大使18----------榴莲
	DefineMission( 5588, "社交大使18", 1094 )
	MisBeginTalk("<t>被太多人关心也很烦,有时候我真怀疑他们是不是嫉妒我生这样的病．如果你会路过冰都补给站捎口信给<b奈奈>说我很好")
				
	MisBeginCondition(NoMission, 1094)
	MisBeginCondition(NoRecord,1094)
	MisBeginCondition(HasRecord, 1093)
	MisBeginAction(AddMission,1094)
	MisCancelAction(ClearMission, 1094)

	MisNeed(MIS_NEED_DESP, "找冰狼的奈奈(798,369)聊聊")
	
	MisHelpTalk("<t>真希望有饱的感觉")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使18-------- 奈奈
	DefineMission(5589, "社交大使18", 1094, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>说实话我是很妒忌她的")
	MisResultCondition(NoRecord, 1094)
	MisResultCondition(HasMission,1094)
	MisResultAction(ClearMission,1094)
	MisResultAction(SetRecord, 1094)

	----------------------------------------------------------社交大使19----------奈奈
	DefineMission( 5590, "社交大使19", 1095 )
	MisBeginTalk("<t>最近一直在忙写书,我酷爱荷马的史诗,不过还是有很多不懂的地方,你能帮我捎口信给<b海蓝·微风>吗?他的皱纹里写满智慧．")
				
	MisBeginCondition(NoMission, 1095)
	MisBeginCondition(NoRecord,1095)
	MisBeginCondition(HasRecord, 1094)
	MisBeginAction(AddMission,1095)
	MisCancelAction(ClearMission, 1095)

	MisNeed(MIS_NEED_DESP, "找加纳的海蓝·微风(622,2106)聊聊")
	
	MisHelpTalk("<t>荷马是这世界上最伟大的诗人呢")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使19-------- 海蓝·微风
	DefineMission(5591, "社交大使19", 1095, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>呵呵呵...我的皱纹?呵呵呵...")
	MisResultCondition(NoRecord, 1095)
	MisResultCondition(HasMission,1095)
	MisResultAction(ClearMission,1095)
	MisResultAction(SetRecord, 1095)


		----------------------------------------------------------社交大使20----------海蓝·微风
	DefineMission( 5592, "社交大使20", 1096 )
	MisBeginTalk("<t>如果我的皱纹里有那么多智慧的话,就知道海底怪物当年为什么会找到我们的大船了.害得我欠了某人一个人情．应该告诉他我始终没有忘记那件事．你会帮我吧")
				
	MisBeginCondition(NoMission, 1096)
	MisBeginCondition(NoRecord,1096)
	MisBeginCondition(HasRecord, 1095)
	MisBeginAction(AddMission,1096)
	MisCancelAction(ClearMission, 1096)

	MisNeed(MIS_NEED_DESP, "找地狱传送使(690,1043)聊聊")
	
	MisHelpTalk("<t>谢谢你年轻人．去吧")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使20-------- 地狱传送使
	DefineMission(5593, "社交大使20", 1096, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>那是很多年前的事了,他还记得啊")
	MisResultCondition(NoRecord, 1096)
	MisResultCondition(HasMission,1096)
	MisResultAction(ClearMission,1096)
	MisResultAction(SetRecord, 1096)

		----------------------------------------------------------社交大使21----------地狱传送使
	DefineMission( 5594, "社交大使21", 1097 )
	MisBeginTalk("<t>想要我欠你一个人情吗?绝不是坏事哦．我很想念天堂传送使,更想念他借走我的钱,该催催他了")
				
	MisBeginCondition(NoMission, 1097)
	MisBeginCondition(NoRecord,1097)
	MisBeginCondition(HasRecord, 1096)
	MisBeginAction(AddMission,1097)
	MisCancelAction(ClearMission, 1097)

	MisNeed(MIS_NEED_DESP, "找天堂传送使(474,1054)聊聊")
	
	MisHelpTalk("<t>这年头儿,欠债的是大爷")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使21-------- 天堂传送使
	DefineMission(5595, "社交大使21", 1097, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>太小气了,那点钱它还记得呢,还请人来催?")
	MisResultCondition(NoRecord, 1097)
	MisResultCondition(HasMission,1097)
	MisResultAction(ClearMission,1097)
	MisResultAction(SetRecord, 1097)

	----------------------------------------------------------社交英雄22----------天堂传送使
	DefineMission( 5596, "社交英雄22", 1098 )
	MisBeginTalk("<t>恭喜你完成了漫长的社交任务．我听说<b辛蒂>在找你")
				
	MisBeginCondition(NoMission, 1098)
	MisBeginCondition(NoRecord,1098)
	MisBeginCondition(HasRecord, 1097)
	MisBeginAction(AddMission,1098)
	MisCancelAction(ClearMission, 1098)

	MisNeed(MIS_NEED_DESP, "找辛蒂(740,1451)聊聊")
	
	MisHelpTalk("<t>这年头儿,欠债的是大爷")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交英雄22------- 辛蒂
	DefineMission(5597, "社交英雄22", 1098, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你已经通过了社交考验,送给你一枚勋章")
	MisResultCondition(NoRecord, 1098)
	MisResultCondition(HasMission,1098)
	MisResultAction(ClearMission,1098)
	MisResultAction(SetRecord, 1098)
	MisResultAction(GiveItem, 2949, 1, 4)
	MisResultBagNeed(1)




	

	-------------------------------------------------特别任务	
	DefineMission (5600, "喋血白羊之特别行动", 1101)
	
	MisBeginTalk("<t>这个任务是白羊宫特别行动,你可以不参加,当然不参加的没有礼物拿.<b15分钟内砍倒99棵精灵草也不是很容易哦>")

	MisBeginCondition(NoMission,1101)
	MisBeginCondition(NoRecord,1101)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(HasRecord,1071)
	MisBeginCondition(HasRecord,1072)
	MisBeginCondition(HasRecord,1073)
	MisBeginCondition(HasRecord,1074)
	MisBeginCondition(HasRecord,1075)
	MisBeginCondition(HasRecord,1065)
	MisBeginCondition(HasRecord,1098)
	MisBeginAction(AddMission,1101)
	MisBeginAction(AddChaItem3, 2952)---------特别行动卡
	MisBeginAction(AddTrigger, 11011, TE_KILL, 75, 99 )
	MisCancelAction(ClearMission, 1101)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_KILL, 75, 99, 1, 99)

	MisHelpTalk("<t>快去吧,你只有15分钟哦")
	MisResultTalk("<t>还不错嘛.不会让你后悔的.")


	MisResultCondition(HasMission, 1101)
	MisResultCondition(NoRecord,1101)
	MisResultCondition(HasFlag, 1101, 99 )
	MisResultAction(AddChaItem4, 2952)----特别行动卡
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord,  1101 )
	MisResultAction(GiveItem, 2955, 1, 4)------------白羊船长酷装宝箱
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 1101, 1, 99 )
	RegCurTrigger( 11011 )





	----------------------------------------------------------愚人节的果实
	DefineMission( 5601, "愚人节的果实", 1102)

	MisBeginTalk( "<t> 今天是愚人节哦!我最喜欢捉弄人了,你敢不敢接受我的考验,或许我会因为你的可爱而给你某些奖励.好吧,第一个任务比较BT,您可要做好心理准备阿!去帮我搜集100个精灵果吧!" )
	MisBeginCondition(NoRecord, 1102)
	MisBeginCondition(NoMission, 1102)
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginAction(AddMission, 1102)
	MisBeginAction(AddTrigger, 11021, TE_GETITEM, 3116, 100 )		
	MisCancelAction(ClearMission, 1102)
	
	MisNeed(MIS_NEED_ITEM, 3116, 100, 10, 100)

	MisResultTalk("<t>你果真够憨直的,呵呵,应该是个好人,我送你一份愚人节的礼物")
	MisHelpTalk("<t>100个可爱的愚人节果实有什么用呢?我也不知道...")
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 3116, 100 )
	MisResultAction(TakeItem, 3116, 100 )
	MisResultAction(ClearMission, 1102)
	MisResultAction(SetRecord, 1102 )
	MisResultAction(GiveItem, 2953, 1, 4)------------愚人节的礼物
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1102, 10, 100 )
	RegCurTrigger( 11021 )



	------------------------------------------------------愚人节的慷慨
	DefineMission( 5602, "愚人节的慷慨", 1103)

	MisBeginTalk( "<t> 我想问你借点钱,相信憨直的您不会拒绝吧!最近我手头比较紧,我的兔宝宝要上学了,缺少一笔学费!您能借我100万吗?" )
	MisBeginCondition(NoRecord, 1103)
	MisBeginCondition(HasRecord, 1102)
	MisBeginCondition(NoMission, 1103)
	MisBeginAction(AddMission, 1103)	
	MisCancelAction(ClearMission, 1103)
	
	MisResultTalk("<t>你不是指望我还钱给你吧?!")
	MisHelpTalk("<t>你不要这么小气嘛,我有可能让你有惊喜呢")
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasMoney, 1000000 )
	MisResultAction(TakeMoney, 1000000 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )



	------------------------------------------------------愚人节的死神
	DefineMission( 5603, "愚人节的死神", 1104)

	MisBeginTalk( "<t> 你真是傻的可爱,连这个都信?哈哈!什么?让我还钱?不可能!除非...除非你去死个41次再来找我,我可以考虑把钱还给你" )
	MisBeginCondition(NoRecord, 1104)
	MisBeginCondition(HasRecord, 1103)
	MisBeginCondition(NoMission, 1104)
	MisBeginCondition(HaveNoItem, 2954)
	MisBeginAction(AddMission, 1104)	
	MisBeginAction(GiveItem, 2954, 1, 4)------------死亡证明
	MisCancelAction(ClearMission, 1104)
	MisBeginBagNeed(1)
	
	MisResultTalk("<t>你果真是海盗王最愚笨、可爱的人,我被你的傻劲所折服!算了,跟你点安慰.否则傻人发傻劲,我可吃不消!")
	MisHelpTalk("<t>什么是死神?百死而不悔视为神")
	MisResultCondition(HasMission, 1104)
	MisResultCondition(CheckPoint, 2954 )
	MisResultAction(TakeItem, 2954,1,4)
	MisResultAction(GiveItem, 0853,1,4)
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)


--------------------------------------------------谁是守护者--------路人·丁
	DefineMission( 6015, "谁是守护者", 1013, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>图图也真是的，老是给我找麻烦")
	MisResultCondition(NoRecord, 1013)
	MisResultCondition(HasMission, 1013)
	MisResultAction(SetRecord, 1013)
	MisResultAction(ClearMission, 1013)

--------------------------------------------------难？还是烦？-------路人·丁
	DefineMission( 6016, "难？还是烦", 1014)
	MisBeginTalk("<t>转生之路并不是那么简单的，去找氏族长·阿布多罗.李问问吧。")
	MisBeginCondition(NoRecord, 1014)
	MisBeginCondition(NoMission, 1014)
	MisBeginCondition(HasRecord, 1013)
	MisBeginAction(AddMission, 1014)
	MisBeginAction(ZSSTART)
	MisCancelAction(ClearMission, 1014)

	MisNeed(MIS_NEED_DESP, "<t>去找氏族长·阿布多罗.李去问下转生之路的问题吧")
	MisHelpTalk("<t>去找氏族长·阿布多罗.李吧，他就在沙岚之城。")

	MisResultCondition(AlwaysFailure)



---------------------------------------------------难？还是烦？----------氏族长·阿布多罗.李
	DefineMission( 6017, "难？还是烦？", 1014, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>选好了吗？如果以后你想换条路走走的话不妨回来找我，不过要付出不小的代价")
	MisResultCondition(NoRecord, 1014)
	MisResultCondition(HasMission, 1014)
	MisResultCondition(HasRecord, 1059)
	MisResultAction(ClearMission, 1014)
	MisResultAction(SetRecord, 1014)

---------------------------------------------------继续转生之路-----------氏族长·阿布多罗.李
	DefineMission( 6018, "继续转生之路", 1017)
	MisBeginTalk("<t>路是你自己选择的，现在回去找路人·丁吧，他会给你指引的。")
	MisBeginCondition(NoRecord, 1017)
	MisBeginCondition(NoMission, 1017)
	MisBeginCondition(HasRecord, 1014)
	MisBeginAction(AddMission, 1017)
	MisCancelAction(ClearMission, 1017)

	MisNeed(MIS_NEED_DESP, "<t>去找路人·丁")
	MisHelpTalk("<t>去找路人·丁吧。")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------继续转生之路---------------路人·丁
	DefineMission( 6019, "继续转生之路", 1017, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>选择了你喜欢的道路了吗？那么让我们继续吧！")
	MisResultCondition(NoRecord, 1017)
	MisResultCondition(HasMission, 1017)
	MisResultAction(ClearMission, 1017)
	MisResultAction(SetRecord, 1017)

---------------------------------------------------艰巨的任务---------路人·丁
	DefineMission( 6020, "艰巨的任务", 1018)
	MisBeginTalk("<t>既然你选择了困难之路，那我就指点指点你吧，不过这可是很难的哦.喏,这几个家伙我看他们不爽,帮我全部扁一次就行了.")
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasRecord,1017)
	MisBeginCondition(HasRecord,1015)
	MisBeginCondition(NoRecord,1018)
	MisBeginCondition(NoMission,1018)
	MisBeginAction(AddMission,1018)
	MisBeginAction(AddTrigger, 10181, TE_KILL,678, 1)
	MisBeginAction(AddTrigger, 10182, TE_KILL,679, 1)
	MisBeginAction(AddTrigger, 10183, TE_KILL,789, 1)
	MisCancelAction(ClearMission,1018)

	MisNeed(MIS_NEED_DESP, "击败魔方雪巨人首领，雪殇灵和黑龙")
	MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 789, 1, 30, 1)

	MisHelpTalk("<t>一个人是不行的，多找些朋友去吧！")
	MisResultTalk("<t>谢谢你朋友，给，这是你想要的.")
	MisResultCondition(HasMission,1018)
	MisResultCondition(NoRecord,1018)
	MisResultCondition(HasFlag, 1018, 10)
	MisResultCondition(HasFlag, 1018, 20)
	MisResultCondition(HasFlag, 1018, 30)
	MisResultAction(SetRecord,1018)
	MisResultAction(SetRecord,1056)
	MisResultAction(ClearMission,1018)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1018, 10, 1 )
	RegCurTrigger( 10181 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1018, 20, 1 )
	RegCurTrigger( 10182 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1018, 30, 1 )
	RegCurTrigger( 10183 )

----------------------------------------------限时的挑战---------路人·丁
	DefineMission( 6021, "限时的挑战", 1019)
	MisBeginTalk("<t>你选择的麻烦之路吗？那好，最近城里掀起了挑战吉尼斯的热潮,你有去玩过吗?去玩下吧,不过你必须在30分钟内完成哦")
	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1019)
	MisBeginCondition( NoMission, 1019)
	MisBeginCondition( HasRecord, 1017)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1019)
	MisCancelAction(ClearMission,1019)

	MisNeed(MIS_NEED_DESP, "在30分钟内完成挑战吉尼斯")

	MisHelpTalk("<t>只要你拿过来的好汉书上的时间小于1800秒我就算你过关，记住你只能带一本好汉书来见我！")
	MisResultTalk("<t>很过瘾吧")
	MisResultCondition( HasItem, 2912, 1)
	MisResultCondition( LessTime, 1800)
	MisResultCondition( NoRecord, 1019)
	MisResultCondition( HasMission, 1019)
	MisResultAction( SetRecord, 1019)
	MisResultAction( ClearMission, 1019)


--------------------------------------------限时的挑战-------------路人·丁
	DefineMission( 6022, "限时的挑战", 1020)
	MisBeginTalk("<t>再去跑一次吧,这次你该慢慢欣赏沿途的风景了,你完成的时间必须大于7个小时，但是我又不喜欢一直等人，所以你还是必须在8小时内回来哦")
	MisBeginCondition( NoRecord, 1020)
	MisBeginCondition( NoMission, 1020)
	MisBeginCondition( HasRecord, 1019)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1020)
	MisCancelAction( ClearMission, 1020)

	MisNeed(MIS_NEED_DESP, "完成吉尼斯并且挑战时间必须大于7小时小于8小时")

	MisHelpTalk("<t>你拿过来的好汉书上的时间必须大于25200秒小于28800秒哦，记住你只能带一本好汉书来见我！")
	MisResultTalk("<t>景色不错吧!")
	MisResultCondition( MoreTime, 25200)
	MisResultCondition( LessTime, 28800)
	MisResultCondition( NoRecord, 1020)
	MisResultCondition( HasMission, 1020)
	MisResultAction( SetRecord, 1020)
	MisResultAction( ClearMission, 1020)



-----------------------------------------------限时的挑战------------路人·丁
	DefineMission( 6023, "限时的挑战", 1021)
	MisBeginTalk("<t>最后再跑一次吧,这次你必须超过5小时，但是在5个半小时以内跑完全程。")
	MisBeginCondition( NoRecord, 1021)
	MisBeginCondition( NoMission, 1021)
	MisBeginCondition( HasRecord, 1020)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1021)
	MisCancelAction( ClearMission, 1021)

	MisNeed(MIS_NEED_DESP, "完成吉尼斯并且挑战时间必须小于5个半小时但大于5小时")

	MisHelpTalk("<t>你拿过来的好汉书上的时间必须在18000秒到19800秒之间哦，记住你只能带一本好汉书来见我！")
	MisResultTalk("<t>看在你跑的这么辛苦的份上，我认可你啦!")
	MisResultCondition( LessTime, 19800)
	MisResultCondition( MoreTime, 18000)
	MisResultCondition( NoRecord, 1021)
	MisResultCondition( HasMission, 1021)

	MisResultAction( SetRecord, 1021)
	MisResultAction( ClearMission, 1021)

---------------------------------------------寻访雷霆守护者------路人·丁
	DefineMission( 6024, "寻访雷霆守护者", 1022)
	MisBeginTalk("<t>下一个守护者在雷霆堡，去找他吧。")
	MisBeginCondition( NoRecord, 1022)
	MisBeginCondition( NoMission, 1022)
	MisBeginCondition( HasRecord, 1021)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1022)
	MisCancelAction( ClearMission, 1022)

	MisNeed(MIS_NEED_DESP, "去找雷霆堡的守护者")
	MisHelpTalk("<t>去找他吧，他就在雷霆堡")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------寻访雷霆守护者--------白银城驻雷霆堡大使·伊塔多
	DefineMission( 6025, "寻访雷霆守护者", 1022,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>你终于来了，年轻人！")
	MisResultCondition( NoRecord, 1022)
	MisResultCondition( HasMission, 1022)
	MisResultAction( SetRecord, 1022)
	MisResultAction( ClearMission, 1022)

-------------------------------------------------白羊宫的战斗---------------白银城驻雷霆堡大使·伊塔多
	DefineMission( 6026, "白羊宫的战斗", 1023)
	MisBeginTalk("<t>命运之轮已经开始转动,十二宫的大门已经打开,去白羊宫找到白羊守印吧")
	MisBeginCondition( NoRecord, 1023)
	MisBeginCondition( NoMission, 1023)
	MisBeginCondition( HasRecord, 1022)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1023)
	MisBeginAction(AddTrigger, 10231, TE_GETITEM, 2942, 1 )
	MisCancelAction( ClearMission, 1023)

	MisNeed(MIS_NEED_DESP, "穿着白羊宫全套酷装带着白羊守印来见白银城驻雷霆堡大使·伊塔多")
	MisNeed(MIS_NEED_ITEM, 2942, 1, 10 ,1)

	MisHelpTalk("<t>穿着白羊宫全套酷装拿着白羊守印来见我")
	MisResultTalk("<t>果然是被命运之神选中的人啊")
	MisResultCondition( HasItem, 2942, 1)
	MisResultCondition( BaiyangOn )
	MisResultAction( SetRecord, 1023)
	MisResultAction( ClearMission, 1023)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2942)	
	TriggerAction( 1, AddNextFlag, 1023, 10, 1 )
	RegCurTrigger( 10231 )

--------------------------------------------------寻访沙岚守护者--------------------白银城驻雷霆堡大使·伊塔多
	DefineMission( 6027, "寻访沙岚守护者", 1024)
	MisBeginTalk("<t>去漫天风沙的城市寻访下一个守护者吧")
	MisBeginCondition( NoRecord, 1024)
	MisBeginCondition( NoMission, 1024)
	MisBeginCondition( HasRecord, 1023)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1024)
	MisCancelAction( ClearMission, 1024)

	MisNeed(MIS_NEED_DESP, "寻访沙岚城的守护者")
	MisHelpTalk("<t>去漫天风沙的城市吧")
	
	MisResultCondition(AlwaysFailure)

-----------------------------------------------------寻访沙岚守护者--------------------路人·珊瑚虫
	DefineMission( 6028, "寻访沙岚守护者", 1024, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>不要看我平时很懦弱的样子,就忽略我~！")
	MisResultCondition( NoRecord, 1024)
	MisResultCondition( HasMission, 1024)
	MisResultAction( SetRecord, 1024)
	MisResultAction( ClearMission, 1024)

-------------------------------------------------------环球旅行--------------------路人·珊瑚虫
	DefineMission( 6029, "环球旅行", 1025)
	MisBeginTalk("<t>你对我们生活的这个世界有足够的了解吗?让我带你做次环球旅行吧,路途中会有很多人为你提供帮助的，但是相应的他们也会收取你一定的声望作为报酬哦。第一站是废矿补给站,去找那里的严罗塔。")
	MisBeginCondition( NoMission, 1025)
	MisBeginCondition( NoRecord, 1025)
	MisBeginCondition( HasRecord, 1024)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1025)
	MisCancelAction( ClearMission, 1025)

	MisNeed(MIS_NEED_DESP, "去找严罗塔谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>严罗塔在废矿补给站")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------环球旅行-----------------严罗塔
	DefineMission( 6030, "环球旅行", 1025, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗?注意休息哦！")
	MisResultCondition( NoRecord, 1025)
	MisResultCondition( HasMission, 1025)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1025)
	MisResultAction( ClearMission, 1025)

--------------------------------------------------------环球旅行------------------严罗塔
	DefineMission( 6031, "环球旅行", 1026)
	MisBeginTalk("<t>下一站是巴布补给站,去找米尔米莉")
	MisBeginCondition( NoMission, 1026)
	MisBeginCondition( NoRecord, 1026)
	MisBeginCondition( HasRecord, 1025)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1026)
	MisCancelAction( ClearMission, 1026)

	MisNeed(MIS_NEED_DESP, "去找米尔米莉谈谈，你的声望必须大于500她才会理你")
	MisHelpTalk("<t>米尔米莉在巴布补给站")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------环球旅行----------------米尔米莉
	DefineMission( 6032, "环球旅行", 1026, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗?注意休息哦！")
	MisResultCondition( NoRecord, 1026)
	MisResultCondition( HasMission, 1026)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1026)
	MisResultAction( ClearMission, 1026)

----------------------------------------------------------环球旅行-----------------米尔米莉
	DefineMission( 6033, "环球旅行", 1027)
	MisBeginTalk("<t>下一站是阿兰比斯补给站,去找薇莉尔")
	MisBeginCondition( NoMission, 1027)
	MisBeginCondition( NoRecord, 1027)
	MisBeginCondition( HasRecord, 1026)
	MisBeginCondition( HasRecord, 1016)
 	MisBeginAction( AddMission,1027)
	MisCancelAction( ClearMission, 1027)

	MisNeed(MIS_NEED_DESP, "去找薇莉尔谈谈，你的声望必须大于500她才会理你")
	MisHelpTalk("<t>受不了了吗？受不了的话你可以去找氏族长·阿布多罗.李去更改下你的转生之路。")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------环球旅行-------------------薇莉尔
	DefineMission( 6034, "环球旅行", 1027, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1027)
	MisResultCondition( HasMission, 1027)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1027)
	MisResultAction( ClearMission, 1027)

-----------------------------------------------------------环球旅行------------------薇莉尔
	DefineMission( 6035, "环球旅行", 1028)
	MisBeginTalk("<t>下一站是瓦尔诺补给站,去找博尔芬尼")
	MisBeginCondition( NoMission, 1028)
	MisBeginCondition( NoRecord, 1028)
	MisBeginCondition( HasRecord, 1027)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1028)
	MisCancelAction( ClearMission, 1028)

	MisNeed(MIS_NEED_DESP, "去找博尔芬尼谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>博尔芬尼在瓦尔诺补给站")

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------环球旅行---------------博尔芬尼
	DefineMission( 6036, "环球旅行", 1028, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1028)
	MisResultCondition( HasMission, 1028)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1028)
	MisResultAction( ClearMission, 1028)

---------------------------------------------------------------环球旅行------------博尔芬尼
	DefineMission( 6037, "环球旅行", 1029)
	MisBeginTalk("<t>下一站是沙泉补给站,去找迪迪马修")
	MisBeginCondition( NoMission, 1029)
	MisBeginCondition( NoRecord, 1029)
	MisBeginCondition( HasRecord, 1028)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1029)
	MisCancelAction( ClearMission, 1029)

	MisNeed(MIS_NEED_DESP, "去找迪迪马修谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>迪迪马修在沙泉补给站")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------环球旅行-----------迪迪马修
	DefineMission( 6038, "环球旅行", 1029, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1029)
	MisResultCondition( HasMission, 1029)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1029)
	MisResultAction( ClearMission, 1029)

--------------------------------------------------------------环球旅行-----------迪迪马修
	DefineMission( 6039, "环球旅行", 1030)
	MisBeginTalk("<t>下一站是冰极补给站,去找鲁鲁")
	MisBeginCondition( NoMission, 1030)
	MisBeginCondition( NoRecord, 1030)
	MisBeginCondition( HasRecord, 1029)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1030)
	MisCancelAction( ClearMission, 1030)

	MisNeed(MIS_NEED_DESP, "去找鲁鲁谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>鲁鲁在冰极补给站")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------环球旅行-----------鲁鲁
	DefineMission( 6040, "环球旅行", 1030, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1030)
	MisResultCondition( HasMission, 1030)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1030)
	MisResultAction( ClearMission, 1030)

--------------------------------------------------------------环球旅行-----------鲁鲁
	DefineMission( 6041, "环球旅行", 1031)
	MisBeginTalk("<t>下一站是古里咯利补给站,去找榴莲")
	MisBeginCondition( NoMission, 1031)
	MisBeginCondition( NoRecord, 1031)
	MisBeginCondition( HasRecord, 1030)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1031)
	MisCancelAction( ClearMission, 1031)

	MisNeed(MIS_NEED_DESP, "去找榴莲谈谈，你的声望必须大于500她才会理你")
	MisHelpTalk("<t>榴莲在古里咯利补给站")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------环球旅行-------------榴莲
	DefineMission( 6042, "环球旅行", 1031, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1031)
	MisResultCondition( HasMission, 1031)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1031)
	MisResultAction( ClearMission, 1031)

--------------------------------------------------------------环球旅行-------------榴莲
	DefineMission( 6043, "环球旅行", 1032)
	MisBeginTalk("<t>下一站是温拿补给站,去找琳达")
	MisBeginCondition( NoMission, 1032)
	MisBeginCondition( NoRecord, 1032)
	MisBeginCondition( HasRecord, 1031)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1032)
	MisCancelAction( ClearMission, 1032)

	MisNeed(MIS_NEED_DESP, "去找琳达谈谈，你的声望必须大于500她才会理你")
	MisHelpTalk("<t>琳达在温拿补给站")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------环球旅行--------------琳达
	DefineMission( 6044, "环球旅行", 1032, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1032)
	MisResultCondition( HasMission, 1032)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3128, 10, 4)
	MisResultAction( SetRecord, 1032)
	MisResultAction( ClearMission, 1032)
	MisResultBagNeed(1)


---------------------------------------------------------------环球旅行--------------琳达
	DefineMission( 6045, "环球旅行", 1033)
	MisBeginTalk("<t>下一站是骷髅营地补给站,去找修司")
	MisBeginCondition( NoMission, 1033)
	MisBeginCondition( NoRecord, 1033)
	MisBeginCondition( HasRecord, 1032)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1033)
	MisCancelAction( ClearMission, 1033)

	MisNeed(MIS_NEED_DESP, "去找修司谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>修司在骷髅营地补给站")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行--------------修司
	DefineMission( 6046, "环球旅行", 1033, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1033)
	MisResultCondition( HasMission, 1033)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1033)
	MisResultAction( ClearMission, 1033)

----------------------------------------------------------------环球旅行--------------修司
	DefineMission( 6047, "环球旅行", 1034)
	MisBeginTalk("<t>下一站是卡尔加德补给站,去找海蓝·微风")
	MisBeginCondition( NoMission, 1034)
	MisBeginCondition( NoRecord, 1034)
	MisBeginCondition( HasRecord, 1033)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1034)
	MisCancelAction( ClearMission, 1034)

	MisNeed(MIS_NEED_DESP, "去找海蓝·微风谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>海蓝·微风在卡尔加德补给站")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------------环球旅行-------------海蓝·微风
	DefineMission( 6048, "环球旅行", 1034, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1034)
	MisResultCondition( HasMission, 1034)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1034)
	MisResultAction( ClearMission, 1034)

-----------------------------------------------------------------环球旅行-------------海蓝·微风
	DefineMission( 6049, "环球旅行", 1035)
	MisBeginTalk("<t>下一站是冰都补给站,去找奈奈")
	MisBeginCondition( NoMission, 1035)
	MisBeginCondition( NoRecord, 1035)
	MisBeginCondition( HasRecord, 1034)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1035)
	MisCancelAction( ClearMission, 1035)

	MisNeed(MIS_NEED_DESP, "去找奈奈谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>奈奈在冰都补给站")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行---------------奈奈
	DefineMission( 6050, "环球旅行", 1035, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1035)
	MisResultCondition( HasMission, 1035)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1035)
	MisResultAction( ClearMission, 1035)

----------------------------------------------------------------环球旅行---------------奈奈
	DefineMission( 6051, "环球旅行", 1036)
	MisBeginTalk("<t>下一站是赖安森林补给站,去找旅行医生·米奈希尔")
	MisBeginCondition( NoMission, 1036)
	MisBeginCondition( NoRecord, 1036)
	MisBeginCondition( HasRecord, 1035)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1036)
	MisCancelAction( ClearMission, 1036)

	MisNeed(MIS_NEED_DESP, "去找米奈希尔谈谈，你的声望必须大于500他才会理你")
	MisHelpTalk("<t>米奈希尔在赖安森林补给站")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行---------------米奈希尔
	DefineMission( 6052, "环球旅行", 1036, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1036)
	MisResultCondition( HasMission, 1036)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3139, 10, 4)
	MisResultAction( SetRecord, 1036)
	MisResultAction( ClearMission, 1036)
	MisResultBagNeed(1)


----------------------------------------------------------------环球旅行-------------------米奈希尔
	DefineMission( 6053, "环球旅行", 1037)
	MisBeginTalk("<t>旅行结束了,你可以回去找路人·珊瑚虫")
	MisBeginCondition( NoMission, 1037)
	MisBeginCondition( NoRecord, 1037)
	MisBeginCondition( HasRecord, 1036)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1037)
	MisCancelAction( ClearMission, 1037)

	MisNeed(MIS_NEED_DESP, "去找路人·珊瑚虫")
	MisHelpTalk("<t>去找路人·珊瑚虫")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------环球旅行--------------------路人·珊瑚虫
	DefineMission( 6054, "环球旅行", 1037, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>怎么样?很愉快的旅行吧?还想再来一次吗?呵呵,开玩笑，不用紧张！")
	MisResultCondition( NoRecord, 1037)
	MisResultCondition( HasMission, 1037)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1037)
	MisResultAction( ClearMission, 1037)

--------------------------------------------------------------寻访天堂守护者--------------路人·珊瑚虫
	DefineMission( 6055, "寻访天堂守护者", 1038)
	MisBeginTalk("<t>去天堂的入口找下一位守护者吧。")
	MisBeginCondition( NoMission, 1038)
	MisBeginCondition( NoRecord, 1038)
	MisBeginCondition( HasRecord, 1037)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1038)
	MisCancelAction( ClearMission, 1038)

	MisNeed(MIS_NEED_DESP, "去找下一位守护者")
	MisHelpTalk("<t>下一位守护者就在天堂的入口。")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------------寻访天堂守护者--------------天堂传送使
	DefineMission( 6056, "寻访天堂守护者", 1038, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>你见过女神吗？")
	MisResultCondition( NoRecord, 1038)
	MisResultCondition( HasMission, 1038)
	MisResultAction( SetRecord, 1038)
	MisResultAction( ClearMission, 1038)
	
------------------------------------------------------------虔诚的证明-------------------天堂传送使
	DefineMission( 6057, "虔诚的证明", 1039)
	MisBeginTalk("<t>想得到我的认可吗？没问题,不过你得先向我证明你对女神的虔诚.这里有9根神圣蜡烛,帮我将它们全部点亮！")
	MisBeginCondition( NoRecord, 1039)
	MisBeginCondition( NoMission, 1039)
	MisBeginCondition( HasRecord, 1038)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10391, TE_GETITEM, 3007, 9 )
	MisBeginAction( AddMission, 1039)
	MisBeginAction( GiveItem, 3006, 9, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1039)

	MisNeed(MIS_NEED_ITEM, 3007, 9, 10, 9)

	MisResultTalk("<t>干的不错")
	MisHelpTalk("<t>使用这些神圣蜡烛，你就可以点亮它们。")
	MisResultCondition( NoRecord, 1039)
	MisResultCondition( HasMission, 1039)
	MisResultCondition( HasItem, 3007, 9)
	MisResultAction( TakeItem, 3007, 9)
	MisResultAction( SetRecord, 1039)
	MisResultAction( ClearMission, 1039)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1039, 10, 9 )
	RegCurTrigger( 10391 )


------------------------------------------------------------虔诚的证明-------------------天堂传送使
	DefineMission( 6058, "虔诚的证明", 1040)
	MisBeginTalk("<t>既然你这么有决心,那再帮我把这99个神圣蜡烛点亮吧。")
	MisBeginCondition( NoRecord, 1040)
	MisBeginCondition( NoMission, 1040)
	MisBeginCondition( HasRecord, 1039)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10401, TE_GETITEM, 3007, 99 )
	MisBeginAction( AddMission, 1040)
	MisBeginAction( GiveItem, 3006, 99, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1040)

	MisNeed(MIS_NEED_ITEM, 3007, 99, 10, 99)

	MisResultTalk("<t>好样的！")
	MisHelpTalk("<t>使用这些神圣蜡烛，你就可以点亮它们。")
	MisResultCondition( NoRecord, 1040)
	MisResultCondition( HasMission, 1040)
	MisResultCondition( HasItem, 3007, 99)
	MisResultAction( TakeItem, 3007, 99)
	MisResultAction( SetRecord, 1040)
	MisResultAction( ClearMission, 1040)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1040, 10, 99 )
	RegCurTrigger( 10401 )

------------------------------------------------------------虔诚的证明-------------------天堂传送使
	DefineMission( 6059, "虔诚的证明", 1041)
	MisBeginTalk("<t>最后一个考验了，这里有个女神的雕像，你每次使用都会为这个雕像注入1点能量，把它的能量注满了再来给我吧，记住我只接受一个女神雕像！")
	MisBeginCondition( NoRecord, 1041)
	MisBeginCondition( NoMission, 1041)
	MisBeginCondition( HasRecord, 1040)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10411, TE_GETITEM, 3010, 1 )
	MisBeginAction( AddMission, 1041)
	MisBeginAction( GiveNSDX, 3010 )
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1041)
	
	MisNeed(MIS_NEED_ITEM, 3010, 1, 10, 1)

	MisResultTalk("<t>女神会永远注视你,保佑你的。")
	MisHelpTalk("<t>受不了了吗？受不了的话你可以去找氏族长·阿布多罗.李去更改下你的转生之路。")
	MisResultCondition( NoRecord, 1041)
	MisResultCondition( HasMission, 1041)
	MisResultCondition( CheckEnergy )
	MisResultAction( TakeItem, 3010, 1)
	MisResultAction( SetRecord, 1041)
	MisResultAction( ClearMission, 1041)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3010)	
	TriggerAction( 1, AddNextFlag, 1041, 10, 1 )
	RegCurTrigger( 10411 )

----------------------------------------------------------寻访白银守护者--------------天堂传送使
	DefineMission( 6060, "寻访白银守护者", 1042)
	MisBeginTalk("<t>去白银城找下一位守护者吧，他可不好应付哦。")
	MisBeginCondition( NoRecord, 1042)
	MisBeginCondition( NoMission, 1042)
	MisBeginCondition( HasRecord, 1041)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1042)
	MisCancelAction( ClearMission, 1042)

	MisNeed(MIS_NEED_DESP, "去白银城寻访下一位守护者")
	MisHelpTalk("<t>去白银城寻访下一位守护者吧。")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------寻访白银守护者--------------水手·海云
	DefineMission( 6061, "寻访白银守护者", 1042, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>想玩个游戏吗?")
	MisResultCondition( NoRecord, 1042)
	MisResultCondition( HasMission, 1042)
	MisResultAction( SetRecord, 1042)
	MisResultAction( ClearMission, 1042)

------------------------------------------------------------疯狂的游戏-----------------水手·海云
	DefineMission( 6062, "疯狂的游戏", 1043)
	MisBeginTalk("<t>我们来玩个小游戏吧，你去帮我杀110个精灵草，再回来回答我的问题。")
	MisBeginCondition( NoRecord, 1043)
	MisBeginCondition( NoMission, 1043)
	MisBeginCondition( HasRecord, 1042)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1043)
	MisBeginAction( AddTrigger, 10431, TE_KILL, 75, 110)
	MisCancelAction( ClearMission, 1043)

	MisNeed(MIS_NEED_DESP, "捕杀110个精灵草")
	MisNeed(MIS_NEED_KILL, 75, 110, 10, 110)

	MisResultTalk("<t>杀的很快嘛")
	MisHelpTalk("<t>精灵草在白银城周围到处都是,杀完后还要回答我一个问题哦！")
	MisResultCondition( NoRecord, 1043)
	MisResultCondition( HasMission, 1043)
	MisResultCondition( HasFlag, 1043, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1043)
	MisResultAction( ClearMission, 1043)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 75 )
	TriggerAction( 1, AddNextFlag, 1043, 10, 110 )
	RegCurTrigger( 10431 )

------------------------------------------------------------疯狂的游戏-----------------水手·海云
	DefineMission( 6063, "疯狂的游戏", 1046)
	MisBeginTalk("<t>去帮我去杀110个黄色精灵草吧！")
	MisBeginCondition( NoRecord, 1046)
	MisBeginCondition( NoMission, 1046)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1044)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1046)
	MisBeginAction( AddTrigger, 10461, TE_KILL, 218, 110)
	MisCancelAction( ClearMission, 1046)

	MisNeed(MIS_NEED_DESP, "捕杀110个黄色精灵草")
	MisNeed(MIS_NEED_KILL, 218, 110, 10, 110)

	MisResultTalk("<t>杀的很快嘛")
	MisHelpTalk("<t>黄色精灵草在沙岚城周围到处都是。")
	MisResultCondition( NoRecord, 1046)
	MisResultCondition( HasMission, 1046)
	MisResultCondition( HasFlag, 1046, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1046)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1046)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 218 )
	TriggerAction( 1, AddNextFlag, 1046, 10, 110 )
	RegCurTrigger( 10461 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6064, "疯狂的游戏", 1047)
	MisBeginTalk("<t>去帮我去杀110个雪地精灵草吧！")
	MisBeginCondition( NoRecord, 1047)
	MisBeginCondition( NoMission, 1047)
	MisBeginCondition( HasRecord, 1045)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1047)
	MisBeginAction( AddTrigger, 10471, TE_KILL, 216, 110)
	MisCancelAction( ClearMission, 1047)

	MisNeed(MIS_NEED_DESP, "捕杀110个雪地精灵草")
	MisNeed(MIS_NEED_KILL, 216, 110, 10, 110)

	MisResultTalk("<t>杀的很快嘛")
	MisHelpTalk("<t>黄色精灵草在沙岚城周围到处都是。")
	MisResultCondition( NoRecord, 1047)
	MisResultCondition( HasMission, 1047)
	MisResultCondition( HasFlag, 1047, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1047)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1047)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 216 )
	TriggerAction( 1, AddNextFlag, 1047, 10, 110 )
	RegCurTrigger( 10471 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6065, "疯狂的游戏", 1048)
	MisBeginTalk("<t>下一个目标是海军帕帕，也去给我捕杀110个吧。")
	MisBeginCondition( NoRecord, 1048)
	MisBeginCondition( NoMission, 1048)
	MisBeginCondition( HasRecord, 1057)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1048)
	MisBeginAction( AddTrigger, 10481, TE_KILL, 233, 110)
	MisCancelAction( ClearMission, 1048)

	MisNeed(MIS_NEED_DESP, "捕杀110个海军帕帕")
	MisNeed(MIS_NEED_KILL, 233, 110, 10, 110)

	MisResultTalk("<t>这是个好玩的游戏，不是吗？")
	MisHelpTalk("<t>海军帕帕就在白银不远处。")
	MisResultCondition( NoRecord, 1048)
	MisResultCondition( HasMission, 1048)
	MisResultCondition( HasFlag, 1048, 10)
	MisResultAction( SetRecord, 1048)
	MisResultAction( ClearMission, 1048)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 233)
	TriggerAction( 1, AddNextFlag, 1048, 10, 110 )
	RegCurTrigger( 10481 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6066, "疯狂的游戏", 1049)
	MisBeginTalk("<t>下一个目标是雪原帕帕，去给我捕杀110个吧。")
	MisBeginCondition( NoRecord, 1049)
	MisBeginCondition( NoMission, 1049)
	MisBeginCondition( HasRecord, 1048)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1049)
	MisBeginAction( AddTrigger, 10491, TE_KILL, 235, 110)
	MisCancelAction( ClearMission, 1049)

	MisNeed(MIS_NEED_DESP, "捕杀110个雪原帕帕")
	MisNeed(MIS_NEED_KILL, 235, 110, 10, 110)

	MisResultTalk("<t>这是个好玩的游戏，不是吗？")
	MisHelpTalk("<t>雪原帕帕就在冰狼不远处。")
	MisResultCondition( NoRecord, 1049)
	MisResultCondition( HasMission, 1049)
	MisResultCondition( HasFlag, 1049, 10)
	MisResultAction( SetRecord, 1049)
	MisResultAction( ClearMission, 1049)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 235)
	TriggerAction( 1, AddNextFlag, 1049, 10, 110 )
	RegCurTrigger( 10491 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6067, "疯狂的游戏", 1050)
	MisBeginTalk("<t>下一个目标是海军蔻蔻，去给我捕杀110个吧。")
	MisBeginCondition( NoRecord, 1050)
	MisBeginCondition( NoMission, 1050)
	MisBeginCondition( HasRecord, 1049)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1050)
	MisBeginAction( AddTrigger, 10501, TE_KILL, 232, 110)
	MisCancelAction( ClearMission, 1050)

	MisNeed(MIS_NEED_DESP, "捕杀110个海军蔻蔻")
	MisNeed(MIS_NEED_KILL, 232, 110, 10, 110)

	MisResultTalk("<t>这是个好玩的游戏，不是吗？")
	MisHelpTalk("<t>你不觉得这个游戏很有趣吗？")
	MisResultCondition( NoRecord, 1050)
	MisResultCondition( HasMission, 1050)
	MisResultCondition( HasFlag, 1050, 10)
	MisResultAction( SetRecord, 1050)
	MisResultAction( ClearMission, 1050)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 232)
	TriggerAction( 1, AddNextFlag, 1050, 10, 110 )
	RegCurTrigger( 10501 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6068, "疯狂的游戏", 1051)
	MisBeginTalk("<t>最后的目标是雪原蔻蔻，去给我捕杀110个吧。")
	MisBeginCondition( NoRecord, 1051)
	MisBeginCondition( NoMission, 1051)
	MisBeginCondition( HasRecord, 1050)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1051)
	MisBeginAction( AddTrigger, 10511, TE_KILL, 234, 110)
	MisCancelAction( ClearMission, 1051)

	MisNeed(MIS_NEED_DESP, "捕杀110个雪原蔻蔻")
	MisNeed(MIS_NEED_KILL, 234, 110, 10, 110)

	MisResultTalk("<t>游戏结束了吗？真可惜。你的决心让我感动，这是你应得的奖励。")
	MisHelpTalk("<t>加油吧")
	MisResultCondition( NoRecord, 1051)
	MisResultCondition( HasMission, 1051)
	MisResultCondition( HasFlag, 1051, 10)
	MisResultAction( SetRecord, 1051)
	MisResultAction( SetRecord, 1056)
	MisResultAction( ClearMission, 1051)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 234)
	TriggerAction( 1, AddNextFlag, 1051, 10, 110 )
	RegCurTrigger( 10511 )

-------------------------------------------------做寿司的原料----------提司面包	
	DefineMission (5604, "做寿司的原料", 1107)
	
	MisBeginTalk("<t>亲爱的朋友,要吃寿司吗?我的寿司可比瑶池里的蟠桃还神奇,想尝试一下吗?好吧!帮我找几样做寿司原料吧! ")

	MisBeginCondition(NoMission,1107)
	MisBeginCondition(NoRecord,1107)
	MisBeginAction(AddMission,1107)
	MisBeginAction(AddTrigger, 11071, TE_GETITEM, 1649, 1 )---------------1个纯净的水
	MisBeginAction(AddTrigger, 11072, TE_GETITEM, 1690, 1 )---------------1个蜗牛触角
	MisBeginAction(AddTrigger, 11073, TE_GETITEM, 3116, 1 )-------------1个精灵果
	MisCancelAction( ClearMission, 1107)
	
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1690, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3116, 1, 30, 1 )

	MisHelpTalk("<t>这些东西都不难找到的,快去吧")
	MisResultTalk("<t>太好了,让你看看本厨神制作的无上美味物")

	MisResultCondition(HasMission, 1107)
	MisResultCondition(NoRecord,1107)
	MisResultCondition(HasItem, 1649, 1 )
	MisResultCondition(HasItem, 1690, 1 )
	MisResultCondition(HasItem, 3116, 1 )
	
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 1690, 1 )
	MisResultAction(TakeItem, 3116, 1 )
	
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord,  1107 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1690)	
	TriggerAction( 1, AddNextFlag, 1107, 20, 1 )
	RegCurTrigger( 11072 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1107, 30, 1 )
	RegCurTrigger( 11073 )


	-------------------------------------------------超级寿司----------提司面包	
	DefineMission (5605, "超级寿司", 1108)
	
	MisBeginTalk("<t>想赶快尝尝就拿来两张蛋糕品尝券吧! ")

	MisBeginCondition(NoMission,1108)
	MisBeginCondition(HasRecord,1107)
	MisBeginCondition(NoRecord,1108)
	MisBeginAction(AddMission,1108)
	MisBeginAction(AddTrigger, 11081, TE_GETITEM, 1097, 2 )---------------2个蛋糕品尝券
	MisCancelAction( ClearMission, 1108)
	
	MisNeed(MIS_NEED_ITEM, 1097, 2, 10, 2 )

	MisHelpTalk("<t>要快哦,否则就凉了")
	MisResultTalk("<t>不用夸奖我!赞扬的话我已经听腻了…")

	MisResultCondition(HasMission, 1108)
	MisResultCondition(NoRecord,1108)
	MisResultCondition(HasItem, 1097, 2 )
	MisResultAction(TakeItem, 1097, 2 )
	MisResultAction(GiveItem, 2989,1,4)-------超级寿司
	MisResultAction(ClearMission, 1108)
	MisResultAction(SetRecord,  1108 )
	MisResultAction(ClearRecord, 1107)---------------可以反复接
	MisResultAction(ClearRecord, 1108)---------------可以反复接
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1108, 10, 2 )
	RegCurTrigger( 11081 )

	-------------------------------------------------蛋糕勇士----------提司面包	
	DefineMission (5606, "蛋糕勇士", 1109)
	
	MisBeginTalk("<t>亲爱的朋友,在甜品业,我制作的美味已经是头块品牌!只要您吃了我做的蛋糕,那大小也算个腕,其他人见了,无不对您推崇备至.只是要品尝品牌蛋糕,那先得去白银竞技管理员那里获得勇者之证! ")

	MisBeginCondition(NoMission,1109)
	MisBeginCondition(NoRecord,1109)
	MisBeginAction(AddMission,1109)
	MisBeginAction(AddTrigger, 11091, TE_GETITEM, 3849, 1 )---------------1个勇者之证
	MisCancelAction( ClearMission, 1109)
	
	MisNeed(MIS_NEED_ITEM, 3849, 1, 10, 1 )

	MisHelpTalk("<t>要快哦,否则就凉了")
	MisResultTalk("<t>不用夸奖我!赞扬的话我已经听腻了…")

	MisResultCondition(HasMission, 1109)
	MisResultCondition(NoRecord,1109)
	MisResultCondition(HasItem, 3849, 1 )
	MisResultAction(ClearMission, 1109)
	MisResultAction(SetRecord,  1109 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3849)	
	TriggerAction( 1, AddNextFlag, 1109, 10, 1 )
	RegCurTrigger( 11091 )


	-------------------------------------------------品牌蛋糕----------提司面包	
	DefineMission (5607, "品牌蛋糕", 1110)
	
	MisBeginTalk("<t>当然你身上要有一张蛋糕品尝券才可以哦! ")

	MisBeginCondition(NoMission,1110)
	MisBeginCondition(HasRecord,1109)
	MisBeginCondition(NoRecord,1110)
	MisBeginAction(AddMission,1110)
	MisBeginAction(AddTrigger, 11101, TE_GETITEM, 1097, 1 )---------------1个蛋糕品尝券
	MisCancelAction( ClearMission, 1110)
	
	MisNeed(MIS_NEED_ITEM, 1097, 1, 10, 1 )
	MisHelpTalk("<t>我的手艺至少要有一张蛋糕品尝券才可以吃到的哦")
	MisResultTalk("<t>我看好你哦")
	

	MisResultCondition(HasMission, 1110)
	MisResultCondition(NoRecord,1110)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 2988,1,4)------品牌蛋糕
	MisResultAction(ClearMission, 1110)
	MisResultAction(SetRecord,  1110 )
	MisResultAction(ClearRecord, 1109)---------------可以反复接
	MisResultAction(ClearRecord, 1110)---------------可以反复接
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1110, 10, 1 )
	RegCurTrigger( 11101 )


--	-----------------------------------------------------马来西亚开服献礼
--	DefineMission( 6069, "开服献礼", 1400)
--
--	MisBeginTalk( "<t>最近有点囊中羞涩吗？只要你帮我个小忙，我就会给你丰厚的回报哦")
--	MisBeginCondition( LvCheck, ">", 10)
--	MisBeginCondition( NoRecord, 1400)
--	MisBeginCondition( NoMission, 1400)
--	MisBeginAction( AddMission, 1400 )
--	MisBeginAction( AddTrigger, 14001, TE_GETITEM, 1604, 10 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1777, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1692, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4334, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4511, 1 )
--	MisCancelAction(ClearMission, 1400)
--
--	MisNeed(MIS_NEED_ITEM, 1604, 10, 10, 10)
--	MisNeed(MIS_NEED_ITEM, 1779, 5, 20, 5)
--	MisNeed(MIS_NEED_ITEM, 1692, 5, 30, 5)
--	MisNeed(MIS_NEED_ITEM, 4334, 5, 40, 5)
--	MisNeed(MIS_NEED_ITEM, 4511, 1, 50, 1)
--
--	MisResultTalk("<t>干的不错哦，该给你的奖励不会少的！")
--	MisHelpTalk("<t>鬃毛是熊宝宝（加纳 1905，2853）掉的，玻璃杯是森灵（加纳 2220，2638）掉的，仙人掌的花是杀手仙人掌（魔女884，3156）掉的，企鹅毛皮是水兵企鹅（深蓝 994，365）掉的，粘乎乎的水草是水草（加纳海域3000，2566）掉的")
--	MisResultCondition( HasMission, 1400)
--	MisResultCondition( NoRecord, 1400)
--	MisResultCondition( HasItem, 1604, 10)
--	MisResultCondition( HasItem, 1777, 5)
--	MisResultCondition( HasItem, 1692, 5)
--	MisResultCondition( HasItem, 4334, 5)
--	MisResultCondition( HasItem, 4511, 1)
--	MisResultAction( TakeItem, 1604, 10)
--	MisResultAction( TakeItem, 1777, 5)
--	MisResultAction( TakeItem, 1692, 5)
--	MisResultAction( TakeItem, 4334, 5)
--	MisResultAction( TakeItem, 4511, 1)
--	MisResultAction( SetRecord, 1400)
--	MisResultAction( ClearMission, 1400)
--	MisResultAction( AddMoney, 10000, 10000)
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1604)	
--	TriggerAction( 1, AddNextFlag, 1400, 10, 10 )
--	RegCurTrigger( 14001 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1777)	
--	TriggerAction( 1, AddNextFlag, 1400, 20, 5 )
--	RegCurTrigger( 14002 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1692)	
--	TriggerAction( 1, AddNextFlag, 1400, 30, 5 )
--	RegCurTrigger( 14003 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4334)	
--	TriggerAction( 1, AddNextFlag, 1400, 40, 5 )
--	RegCurTrigger( 14004 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4511)	
--	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
--	RegCurTrigger( 14005 )
--
--
--	----------------------------------------------------------马来西亚幸运大宝箱
--	DefineMission ( 6070 , "幸运大宝箱 " , 1401 )
--	MisBeginTalk("<t>想得到幸运大宝箱吗？想要的话就帮我解决以下这些怪物吧：30个山贼，20个铁爪鼹鼠，10个土著战士，5个山贼首领?蝰蛇，5个宝石海豚，5个骨鱼，20个迟钝的乌贼和20个食人水母！")
--	MisBeginCondition( NoMission, 1401)
--	MisBeginCondition( NoRecord, 1401)
--	MisBeginAction( AddMission, 1401)
--	MisBeginAction( AddTrigger, 14011, TE_KILL, 93, 30)
--	MisBeginAction( AddTrigger, 14012, TE_KILL, 88, 20)
--	MisBeginAction( AddTrigger, 14013, TE_KILL, 248, 10)
--	MisBeginAction( AddTrigger, 14014, TE_KILL, 211, 5)
--	MisBeginAction( AddTrigger, 14015, TE_KILL, 58, 5)
--	MisBeginAction( AddTrigger, 14016, TE_KILL, 242, 5)
--	MisBeginAction( AddTrigger, 14017, TE_KILL, 578, 20)
--	MisBeginAction( AddTrigger, 14018, TE_KILL, 596, 20)
--	MisCancelAction(ClearMission, 1401)
--
--	MisNeed(MIS_NEED_KILL, 93, 30, 10, 30)
--	MisNeed(MIS_NEED_KILL, 88, 20, 20, 20)
--	MisNeed(MIS_NEED_KILL, 248, 10, 30, 10)
--	MisNeed(MIS_NEED_KILL, 211, 5, 40, 5)
--	MisNeed(MIS_NEED_KILL, 58, 5, 50, 5)
--	MisNeed(MIS_NEED_KILL, 242, 5, 60, 5)
--	MisNeed(MIS_NEED_KILL, 578, 20, 70, 20)
--	MisNeed(MIS_NEED_KILL, 596, 20, 80, 20)
--
--	MisResultTalk("<t>祝你好运哦~")
--	MisHelpTalk("<t>海上的怪必须开船去打哦")
--	MisResultCondition( HasMission, 1401)
--	MisResultCondition( NoRecord, 1401)
--	MisResultCondition( HasFlag, 1401, 10)
--	MisResultCondition( HasFlag, 1401, 20)
--	MisResultCondition( HasFlag, 1401, 30)
--	MisResultCondition( HasFlag, 1401, 40)
--	MisResultCondition( HasFlag, 1401, 50)
--	MisResultCondition( HasFlag, 1401, 60)
--	MisResultCondition( HasFlag, 1401, 70)
--	MisResultCondition( HasFlag, 1401, 80)
--	MisResultAction( SetRecord, 1401)
--	MisResultAction( ClearMission, 1401)
--	MisResultAction( GiveItem, 4312)
--	MisResultBagNeed(1)
--
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 93 )
--	TriggerAction( 1, AddNextFlag, 1401, 10, 30 )
--	RegCurTrigger( 14011 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 88 )
--	TriggerAction( 1, AddNextFlag, 1401, 20, 20 )
--	RegCurTrigger( 14012 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 248 )
--	TriggerAction( 1, AddNextFlag, 1401, 30, 10 )
--	RegCurTrigger( 14013 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 211 )
--	TriggerAction( 1, AddNextFlag, 1401, 40, 5 )
--	RegCurTrigger( 14014 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 58 )
--	TriggerAction( 1, AddNextFlag, 1401, 50, 5 )
--	RegCurTrigger( 14015 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 242 )
--	TriggerAction( 1, AddNextFlag, 1401, 60, 5 )
--	RegCurTrigger( 14016 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 578 )
--	TriggerAction( 1, AddNextFlag, 1401, 70, 20 )
--	RegCurTrigger( 14017 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 596 )
--	TriggerAction( 1, AddNextFlag, 1401, 80, 30 )
--	RegCurTrigger( 14018 )


------------------------------------------------------------------新的磨练---转生天使
	DefineMission( 6071, "新的磨练", 1402)
	MisBeginTalk("<t>你还需要更多的磨练，最近白银城周围的精灵草很不安分，去调查一下！")
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoRecord, 1402)
	MisBeginCondition( NoMission, 1402)
	MisBeginAction( AddMission, 1402)
	MisCancelAction( ClearMission ,1402)

	MisNeed( MIS_NEED_DESP, "调查白银城周围的精灵草")
	MisHelpTalk("<t>去白银城周围看看有什么特殊的情况发生吧")

	MisResultCondition( AlwaysFailure )

-------------------------------------------------------------------新的磨练---怨念草
	DefineMission( 6072, "新的磨练", 1402, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>好恨啊，好恨啊。。。")
	MisResultCondition( HasMission, 1402)
	MisResultCondition( NoRecord, 1402)
	MisResultAction( AddSailExp , 10, 10)
	MisResultAction( SetRecord, 1402)
	MisResultAction( ClearMission, 1402)

-----------------------------------------------------------------精灵草的怨念----怨念草
	DefineMission( 6073, "精灵草的怨念", 1403)

	MisBeginTalk("<t>回答我一个问题！")
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasRecord, 1402)
	MisBeginCondition( NoRecord, 1403)
	MisBeginCondition( NoMission, 1403)
	MisBeginAction( AddMission, 1403)
	MisCancelAction( ClearMission, 1403)

	MisNeed( MIS_NEED_DESP, "回答怨念草的问题")
	
	MisResultTalk( "<t>我要报仇！")
	MisHelpTalk( "<t>回答我的问题，不要逃避")
	MisResultCondition( HasRecord, 1404)
	MisResultCondition( HasMission, 1403)
	MisResultAction( SetRecord, 1403)
	MisResultAction( ClearMission, 1403)
	MisResultAction( AddSailExp, 10, 10)

---------------------------------------------------------------怨念草的要求------怨念草
	DefineMission( 6074, "怨念草的要求", 1408)

	MisBeginTalk("<t>我不甘心啊，我也要发布一个任务，你去给我杀人去！！然后拿20张血之契约回来给我！")
	MisBeginCondition( NoMission, 1408)
	MisBeginCondition( NoRecord, 1408)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1405)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1408)
	MisBeginAction( AddTrigger, 14081, TE_GETITEM, 2383, 20 )
	MisCancelAction( ClearMission, 1408)

	MisNeed( MIS_NEED_ITEM, 2383 , 20, 10, 20)
	
	MisResultTalk( "<t>哈哈，杀人的感觉不错吧，以后还要多多努力啊！")
	MisHelpTalk( "<t>血之契约去圣战里杀人就有了，哈哈")
	MisResultCondition( HasMission, 1408)
	MisResultCondition( NoRecord, 1408)
	MisResultCondition( HasItem, 2383, 20)
	MisResultAction( TakeItem ,2383, 20)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1408)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1408)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2383)	
	TriggerAction( 1, AddNextFlag, 1408, 10, 20 )
	RegCurTrigger( 14081 )

-------------------------------------------------------------怨念草的要求------怨念草
	DefineMission( 6075, "怨念草的要求", 1410)

	MisBeginTalk( "<t>你根本就不关心我们，哼哼，我也懒得搭理你！(它好象生气了，也许拿点水给他可以帮帮降奖火)")
	MisBeginCondition( NoRecord, 1410)
	MisBeginCondition( NoMission, 1410)
	MisBeginCondition( HasRecord, 1406)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1410)
	MisBeginAction( AddTrigger, 14101, TE_GETITEM, 1649, 10 )
	MisCancelAction( ClearMission, 1410)

	MisNeed( MIS_NEED_ITEM, 1649 , 10, 10, 10)

	MisResultTalk( "<t>既然你这么有诚意，那我就再给你一次机会。")
	MisHelpTalk( "别理我！")
	MisResultCondition( HasMission, 1410)
	MisResultCondition( NoRecord, 1410)
	MisResultCondition( HasItem, 1649, 10)
	MisResultAction( SetRecord, 1410)
	MisResultAction( SetRecord, 1405)
	MisResultAction( TakeItem, 1649, 10)
	MisResultAction( ClearMission, 1410)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1410, 10, 10 )
	RegCurTrigger( 14101 )

-------------------------------------------------------怨念草的要求
	DefineMission( 6076, "怨念草的要求", 1411)
	MisBeginTalk( "<t>可恶，你一定也杀过我很多的族草，给我100W赔偿金，不然我不会放过你的！")
	MisBeginCondition( NoRecord, 1411)
	MisBeginCondition( NoMission, 1411)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1407)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1411)
	MisCancelAction( ClearMission, 1411)

	MisNeed( MIS_NEED_DESP, "<t>给怨念草100W作为赔偿")
	
	MisResultTalk( "<t>这点钱远远不够补偿我的心理损失的，不过我大人大量，勉强放过你吧。")
	MisHelpTalk("<t>快给我钱！")
	MisResultCondition( HasMission, 1411)
	MisResultCondition( NoRecord, 1411)
	MisResultCondition( HasMoney, 1000000)
	MisResultAction( TakeMoney, 1000000)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1411)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1411)

---------------------------------------------------------汇报情况-------怨念草
	DefineMission( 6077, "汇报情况", 1412)
	MisBeginTalk( "<t>算你识相，今天就放过你，以后给我小心着点！")
	MisBeginCondition( NoRecord, 1412)
	MisBeginCondition( NoMission, 1412)
	MisBeginCondition( HasRecord, 1409)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1412)
	MisCancelAction( ClearMission, 1412)

	MisNeed( MIS_NEED_DESP, "去找城堡护卫·比特汇报这边的情报")
	MisHelpTalk( "<t>快走开，别在我眼前晃来晃去的！")

	MisResultCondition( AlwaysFailure )

---------------------------------------------------------汇报情况------城堡护卫·比特
	DefineMission( 6078, "汇报情况", 1412, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure)

	MisResultTalk( "<t>什么？精灵草的暴乱？这种小事不值得我们关注，我一只手就可以把他们全部消灭掉。")
	MisResultCondition( HasMission, 1412)
	MisResultCondition( NoRecord, 1412)
	MisResultAction( SetRecord, 1412)
	MisResultAction( ClearMission, 1412)
	MisResultAction( AddSailExp, 5, 5)

---------------------------------------------------------收集羽毛-------城堡护卫·比特
	DefineMission( 6079, "收集羽毛", 1413)
	MisBeginTalk( "<t>现在我要给你的是一个严峻的任务：最近我们用来做转生翅膀的羽毛不够了，去帮我找100根雪白的羽毛，100根黑色羽毛吧。")
	MisBeginCondition( NoMission, 1413)
	MisBeginCondition( NoRecord, 1413)
	MisBeginCondition( HasRecord, 1412)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1413)
	MisBeginAction( AddTrigger, 14131, TE_GETITEM, 4364, 100)
	MisBeginAction( AddTrigger, 14132, TE_GETITEM, 4347, 100)
	MisCancelAction( ClearMission, 1413)

	MisNeed( MIS_NEED_ITEM, 4364, 100, 10, 100)
	MisNeed( MIS_NEED_ITEM, 4347, 100, 20, 100)

	MisResultTalk( "<t>干的好！")
	MisHelpTalk( "<t>雪白的羽毛是雪白猫头鹰（加纳1360,2683）掉的，黑色羽毛是猫头鹰（加纳1461,3018）掉的哦。")
	MisResultCondition( HasMission, 1413)
	MisResultCondition( NoRecord, 1413)
	MisResultCondition( HasItem, 4364, 100)
	MisResultCondition( HasItem, 4347, 100)
	MisResultAction( TakeItem, 4364, 100)
	MisResultAction( TakeItem, 4347, 100)
	MisResultAction( AddSailExp, 40, 40)
	MisResultAction( SetRecord, 1413)
	MisResultAction( ClearMission, 1413)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4364)	
	TriggerAction( 1, AddNextFlag, 1413, 10, 100 )
	RegCurTrigger( 14131 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4347)	
	TriggerAction( 1, AddNextFlag, 1413, 20, 100 )
	RegCurTrigger( 14132 )

--------------------------------------------------------帮助他人--------城堡护卫·比特
	DefineMission( 6080, "帮助他人", 1414)
	MisBeginTalk("<t>我这暂时没什么要帮忙的了，你去其他人那里看看吧，晚点记得回来找我。")
	MisBeginCondition( HasRecord, 1413)
	MisBeginCondition( NoRecord, 1414)
	MisBeginCondition( NoMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1414)
	MisCancelAction( ClearMission, 1414)

	MisNeed( MIS_NEED_DESP, "<t>在城里逛逛看有谁需要帮助。")

	MisResultTalk( "<t>帮助了这么多的人啊，真了不起。")
	MisHelpTalk( "<t>城里有很多人需要帮助，去帮帮他们吧。")
	MisResultCondition( HasMission, 1414)
	MisResultCondition( NoRecord, 1414)
	MisResultCondition( HasRecord, 1428)
	MisResultCondition( HasRecord, 1417)
	MisResultCondition( HasRecord, 1420)
	MisResultCondition( HasRecord, 1422)
	MisResultCondition( HasRecord, 1424)
	MisResultAction( AddSailExp, 10,10)
	MisResultAction( SetRecord, 1414)
	MisResultAction( ClearMission, 1414)

---------------------------------------------------------玫瑰的魅力----酒吧女·蒂娜
	DefineMission( 6081, "玫瑰的魅力", 1415)
	MisBeginTalk("<t>我曾经见过一个青年男子，嘴上叼着一朵玫瑰，那样子真是太帅了（她的双眼中满是小星星），要不你也这样过来让我看下？")
	MisBeginCondition( NoChaType, 3)
	MisBeginCondition( NoChaType, 4)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoMission, 1415)
	MisBeginCondition( NoRecord, 1415)
	MisBeginAction( AddMission, 1415)
	MisCancelAction( ClearMission, 1415)

	MisNeed( MIS_NEED_DESP, "酒吧女·蒂娜想看你叼着玫瑰花的摸样")

	MisResultTalk( "<t>还不错嘛，马马乎乎也可以打个80分")
	MisHelpTalk( "<t>不觉得玫瑰很美吗？")
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1415)
	MisResultCondition( NoRecord, 1415)
	MisResultAction( SetRecord, 1415)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1428)
	MisResultAction( ClearMission, 1415)


---------------------------------------------------------玫瑰的魅力----酒鬼·芬德内
	DefineMission( 6082, "玫瑰的魅力", 1416)
	MisBeginTalk( "<t>我曾经见过一个美女，嘴上叼着一朵玫瑰，太迷人了（他的嘴下好象有亮晶晶的东西），要不你也这样过来让我看下？")
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( NoRecord, 1416)
	MisBeginCondition( NoMission, 1416)
	MisBeginCondition( NoChaType, 1)
	MisBeginCondition( NoChaType, 2)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1416)
	MisCancelAction( ClearMission, 1416)

	MisNeed( MIS_NEED_DESP, "酒鬼·芬德内想看你叼着玫瑰花的样子")

	MisResultTalk( "<t>不错，挺迷人的，不得不承认你很漂亮嘛。")
	MisHelpTalk( "<t>不觉得玫瑰很美吗？")
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1416)
	MisResultCondition( NoRecord, 1416)
	MisResultAction( SetRecord, 1416)
	MisResultAction( SetRecord, 1428)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1416)
---------------------------------------------------------倒霉的模特----潮流发型师·卡特
	DefineMission( 6085, "倒霉的模特", 1417)
	MisBeginTalk( "<t>我最近想设计一种新的发型，不过梳子和剪刀有点不够用，去帮我找些来吧！")
	MisBeginCondition( NoMission, 1417)
	MisBeginCondition( NoRecord, 1417)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1417)
	MisBeginAction( AddTrigger, 14171, TE_GETITEM, 1804, 5)
	MisBeginAction( AddTrigger, 14172, TE_GETITEM, 1805, 5)
	MisCancelAction( ClearMission, 1417)

	MisNeed( MIS_NEED_ITEM, 1804, 5, 10, 5)
	MisNeed( MIS_NEED_ITEM, 1805, 5, 20, 5)
	
	MisResultTalk( "<t>真是太感谢了，我一定会早日设计出新的发型的！")
	MisResultCondition( HasMission, 1417)
	MisResultCondition( HasItem, 1804, 5)
	MisResultCondition( HasItem, 1805, 5)
	MisResultCondition( NoRecord, 1417)
	MisResultAction( TakeItem, 1804, 5)
	MisResultAction( TakeItem, 1805, 5)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1417)
	MisResultAction( ClearMission, 1417)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1804)	
	TriggerAction( 1, AddNextFlag, 1417, 10, 5 )
	RegCurTrigger( 14171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1805)	
	TriggerAction( 1, AddNextFlag, 1417, 20, 5 )
	RegCurTrigger( 14172 )


----------------------------------------------------------跑龙套的梦想----路人·甲
	DefineMission( 6086, "跑龙套的梦想", 1418)
	MisBeginTalk( "<t>我不要做跑龙套的啊，我也想当主角，帮我和海军司令官·德斯塔罗说下，我也要当一名海军！")
	MisBeginCondition( NoMission, 1418)
	MisBeginCondition( NoRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1418)
	MisCancelAction( ClearMission, 1418)

	MisNeed( MIS_NEED_DESP, "去找海军司令官·德斯塔罗转述一下路人·甲的愿望。")

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------跑龙套的梦想----海军司令官·德斯塔罗
	DefineMission( 6087, "跑龙套的梦想", 1418, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>路人·甲想当海军？我没听错吧？")
	MisResultCondition( HasMission, 1418)
	MisResultCondition( NoRecord, 1418)
	MisResultAction( SetRecord, 1418)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( ClearMission, 1418)

-------------------------------------------------------------跑龙套的梦想----海军司令官·德斯塔罗
	DefineMission( 6088, "跑龙套的梦想", 1419)
	MisBeginTalk( "<t>去告诉路人·甲,他想当海军，就先去击败5个红胡子海盗支援船,5个红胡子海盗突击船。")
	MisBeginCondition( NoMission, 1419)
	MisBeginCondition( NoRecord, 1419)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1419)
	MisCancelAction( ClearMission, 1419)

	MisNeed( MIS_NEED_DESP, "转告路人·甲德斯塔罗的要求")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------------跑龙套的梦想----路人·甲
	DefineMission( 6089, "跑龙套的梦想", 1419, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>德斯塔罗是这个意思吗？让我想想")
	MisResultCondition( HasMission, 1419)
	MisResultCondition( NoRecord, 1419)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1419)
	MisResultAction( ClearMission, 1419)

-------------------------------------------------------------跑龙套的梦想----路人·甲
	DefineMission( 6090, "跑龙套的梦想", 1420)
	MisBeginTalk( "<t>这对我来说太难了啊,不如你好事做到底,帮我去干掉这些家伙吧！")
	MisBeginCondition( NoMission, 1420)
	MisBeginCondition( NoRecord, 1420)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1419)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1420)
	MisBeginAction( AddTrigger, 14201, TE_KILL, 630, 5)
	MisBeginAction( AddTrigger, 14202, TE_KILL, 631, 5)
	MisCancelAction( ClearMission, 1420)

	MisNeed( MIS_NEED_DESP, "猎杀5个5个红胡子海盗支援船和5个红胡子海盗突击船")
	MisNeed( MIS_NEED_KILL, 630, 5, 10, 5)
	MisNeed( MIS_NEED_KILL, 631, 5, 20, 5)
	
	MisResultTalk( "<t>我已经拿到海军介绍信了，太感谢你了")
	MisResultCondition( HasMission, 1420)
	MisResultCondition( NoRecord, 1420)
	MisResultCondition( HasFlag, 1420, 14)
	MisResultCondition( HasFlag, 1420, 24)
	MisResultAction( SetRecord, 1420)
	MisResultAction( ClearMission, 1420)
	MisResultAction( AddSailExp, 20, 20)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 630 )
	TriggerAction( 1, AddNextFlag, 1420, 10, 5 )
	RegCurTrigger( 14201 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 631 )
	TriggerAction( 1, AddNextFlag, 1420, 20, 5 )
	RegCurTrigger( 14202 )


---------------------------------------------------------------紧急快递-----------银行出纳·摩妮雅
	DefineMission( 6091, "紧急快递", 1421)
	MisBeginTalk( "<t>我这里有个包裹需要送给冰狼的银行出纳,但是我需要的是一个跑的快的送货员,你能帮我吗?")
	MisBeginCondition( NoMission, 1421)
	MisBeginCondition( NoRecord, 1421)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1421)
	MisCancelAction( ClearMission, 1421)

	MisNeed( MIS_NEED_DESP, "<t>穿好所有加速装备再找摩妮雅，她需要的是跑的足够快的送货员！")

	MisResultTalk( "<t>看来你真的跑的很快啊！")
	MisHelpTalk( "<t>你跑的太慢了，去找些加移动速度的装备吧！")
	MisResultCondition( HasMission, 1421)
	MisResultCondition( NoRecord, 1421)
	MisResultCondition( CheckSpeed, 550)
	MisResultAction( SetRecord, 1421)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1421)

---------------------------------------------------------------紧急快递-----------银行出纳·摩妮雅
	DefineMission( 6092, "紧急快递", 1422)
	MisBeginTalk( "<t>我可以相信你的速度，去帮我把这个包裹送给冰狼的银行出纳·布丽娜。")
	MisBeginCondition( NoMission, 1422)
	MisBeginCondition( NoRecord, 1422)
	MisBeginCondition( HasRecord, 1421)
	MisBeginAction( AddMission, 1422)
	MisBeginAction( GiveItem, 956, 1, 4)
	MisCancelAction( ClearMission, 1422)

	MisNeed( MIS_NEED_DESP, "把包裹送给冰狼的银行出纳·布丽娜")
	MisHelpTalk( "<t>银行出纳·布丽娜在冰狼堡")

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------紧急快递--------------银行出纳·布丽娜
	DefineMission( 6093, "紧急快递", 1422, COMPLETE)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>哇！这么重的包裹你还送的这么及时，真是太感谢你了！")
	MisResultCondition( HasMission, 1422)
	MisResultCondition( NoRecord, 1422)
	MisResultCondition( HasItem, 956, 1)
	MisResultAction( TakeItem, 956, 1)
	MisResultAction( SetRecord, 1422)
	MisResultAction( ClearMission, 1422)
	MisResultAction( AddSailExp, 5, 5)

----------------------------------------------------------开卷有益----------------老者·糊涂山人
	DefineMission( 6094, "开卷有益", 1423)
	MisBeginTalk( "<t>年轻人要多读书啊,我这有本书借你看下吧,看完顺便帮我把书送给托马斯·图图。")
	MisBeginCondition( NoRecord, 1423)
	MisBeginCondition( NoMission, 1423)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1423)
	MisBeginAction( GiveItem, 957, 1, 4)
	MisCancelAction( ClearMission, 1423)

	MisNeed( MIS_NEED_DESP, "把书送到托马斯·图图处")
	MisHelpTalk( "<t>记得自己先看看书")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------开卷有益-----------------托马斯·图图
	DefineMission( 6095, "开卷有益", 1423)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>这本书你看过了吗？那我拿走了哦。")
	MisResultCondition( HasMission, 1423)
	MisResultCondition( NoRecord, 1423)
	MisResultCondition( HasItem, 957, 1)
	MisResultAction( TakeItem, 957, 1)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1423)
	MisResultAction( ClearMission, 1423)

-----------------------------------------------------------开卷有益-----------------托马斯·图图
	DefineMission( 6096, "开卷有益", 1424)
	MisBeginTalk( "<t>既然你说你把书看完了那我来考考你吧。")
	MisBeginCondition( NoMission, 1424)
	MisBeginCondition( NoRecord, 1424)
	MisBeginCondition( HasRecord, 1423)
	MisBeginAction( AddMission, 1424)
	MisCancelAction( ClearMission, 1424)

	MisNeed( MIS_NEED_DESP, "回答托马斯·图图几个问题")
	MisHelpTalk( "<t>这些问题都很简单的，你不会回答不出来吧？")
		
	MisResultTalk( "<t>多看点书总会有好处的！")
	MisResultCondition( HasMission, 1424)
	MisResultCondition( NoRecord, 1424)
	MisResultCondition( HasRecord, 1429)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1424)
	MisResultAction( ClearMission, 1424)

-----------------------------------------------------------刺探军情--------------城堡护卫·比特
	DefineMission( 6097, "刺探军情", 1425)
	MisBeginTalk( "<t>经过我的观察，你是个值得托付重任的人啊,现在给你个重要的任务,最近我们派出了一小队士兵去黑龙那里查探军情,不过他们到现在还没回来，你能帮我去看下吗?")
	MisBeginCondition( NoMission, 1425)
	MisBeginCondition( NoRecord, 1425)
	MisBeginCondition( HasRecord, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1425)
	MisCancelAction( ClearMission, 1425)

	MisNeed( MIS_NEED_DESP, "去黑龙2层调查军情")
	MisHelpTalk( "<t>快去吧，多加小心！")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------刺探军情--------------重伤的无名战士
	DefineMission( 6098, "刺探军情", 1425, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>我们。。。遭受到大批幼龙的攻击，大家。。。都死了。。。")
	MisResultCondition( HasMission, 1425)
	MisResultCondition( NoRecord, 1425)
	MisResultAction( SetRecord, 1425)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( ClearMission, 1425)

-----------------------------------------------------------刺探军情---------------重伤的无名战士
	DefineMission( 6099, "刺探军情", 1426)
	MisBeginCondition( NoMission, 1426)
	MisBeginCondition( NoRecord, 1426)
	MisBeginCondition( HasRecord, 1425)
	MisBeginAction( AddMission, 1426)
	MisBeginAction( GiveItem, 958, 1, 4)
	MisCancelAction( ClearMission, 1426)

	MisNeed( MIS_NEED_DESP, "帮我把这封情报送回给城堡护卫·比特，这是牺牲了这么多兄弟才换回来的")
	MisHelpTalk( "<t>拜托你了！")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------刺探军情--------------城堡护卫·比特
	DefineMission( 6100, "刺探军情", 1426, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>什么？全军覆没了？这不可能！")
	MisResultCondition( HasMission, 1426)
	MisResultCondition( NoRecord, 1426)
	MisResultCondition( HasItem, 958, 1)
	MisResultAction( TakeItem, 958, 1)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( SetRecord, 1426)
	MisResultAction( ClearMission, 1426)

-----------------------------------------------------------比特的复仇-----------城堡护卫·比特
	DefineMission( 6101, "比特的复仇", 1427)
	MisBeginTalk( "<t>我一定要杀光这群长着翅膀的大蜥蜴，去，去帮他们报仇，去证明你的勇气吧！")
	MisBeginCondition( NoMission, 1427)
	MisBeginCondition( NoRecord, 1427)
	MisBeginCondition( HasRecord, 1426)
	MisBeginAction( AddMission, 1427)
	MisBeginAction( AddTrigger, 14271, TE_KILL, 791, 1)
	MisBeginAction( AddTrigger, 14272, TE_KILL, 793, 1)
	MisBeginAction( AddTrigger, 14273, TE_KILL, 794, 1)
	MisCancelAction( ClearMission, 1427)

	MisNeed( MIS_NEED_KILL, 791, 1, 10, 1)
	MisNeed( MIS_NEED_KILL, 793, 1, 30, 1)
	MisNeed( MIS_NEED_KILL, 794, 1, 50, 1)

	MisResultTalk( "<t>感谢你，你已经证明了你是一个真正的勇士，以后就可以去沙岚城的NPC处接取任务磨练自己提升转生等级了。")
	MisHelpTalk( "<t>小心点，那些大爬虫可不好对付。")
	MisResultCondition( HasMission, 1427)
	MisResultCondition( NoRecord, 1427)
	MisResultCondition( HasFlag, 1427, 10)
	MisResultCondition( HasFlag, 1427, 30)
	MisResultCondition( HasFlag, 1427, 50)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( SetRecord, 1427)
	MisResultAction( ClearMission, 1427)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 791 )
	TriggerAction( 1, AddNextFlag, 1427, 10, 1 )
	RegCurTrigger( 14271 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 793 )
	TriggerAction( 1, AddNextFlag, 1427, 30, 1 )
	RegCurTrigger( 14272 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 794 )
	TriggerAction( 1, AddNextFlag, 1427, 50, 1 )
	RegCurTrigger( 14273 )


----------------------------------------------------挑战·黑龙----------BOSS挑战登记员
	DefineMission( 6102, "挑战·黑龙", 1430)
	MisBeginTalk( "<t>黑龙位于黑龙洞穴2层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1430)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1430)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14301, TE_KILL, 789, 1)
	MisCancelAction( ClearMission, 1430)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 789, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1430, 10)
	MisResultCondition( HasMission, 1430)
	MisResultAction( AddSailExp, 120, 120)
	MisResultAction( ClearMission, 1430)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1430, 10, 1 )
	RegCurTrigger( 14301 )

------------------------------------------------------挑战·雪殇灵--------BOSS挑战登记员
	DefineMission( 6103, "挑战·雪殇灵", 1432)
	MisBeginTalk( "<t>雪殇灵位于魔方世界1层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1432)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1432)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14321, TE_KILL, 679, 1)
	MisCancelAction( ClearMission, 1432)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 679, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1432, 10)
	MisResultCondition( HasMission, 1432)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1432)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1432, 10, 1 )
	RegCurTrigger( 14321 )

------------------------------------------------------挑战·巨人首领--------BOSS挑战登记员
	DefineMission( 6104, "挑战·巨人首领", 1433)
	MisBeginTalk( "<t>巨人首领位于魔方世界2层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1433)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1433)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14331, TE_KILL, 678, 1)
	MisCancelAction( ClearMission, 1433)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 678, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1433, 10)
	MisResultCondition( HasMission, 1433)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1433)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1433, 10, 1 )
	RegCurTrigger( 14331 )

-------------------------------------------------------挑战·巴伯萨--------BOSS挑战登记员
	DefineMission( 6105, "挑战·巴伯萨", 1434)
	MisBeginTalk( "<t>巴伯萨位于加勒比骷髅岛上，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1434)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1434)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14341, TE_KILL, 805, 1)
	MisCancelAction( ClearMission, 1434)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 805, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1434, 10)
	MisResultCondition( HasMission, 1434)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1434)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 805 )
	TriggerAction( 1, AddNextFlag, 1434, 10, 1 )
	RegCurTrigger( 14341 )

-------------------------------------------------------挑战·亡灵司令--------BOSS挑战登记员
	DefineMission( 6106, "挑战·亡灵司令", 1435)
	MisBeginTalk( "<t>亡灵司令位于加勒比地下实验室中，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1435)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1435)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14351, TE_KILL, 807, 1)
	MisCancelAction( ClearMission, 1435)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 807, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1435, 10)
	MisResultCondition( HasMission, 1435)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1435)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 807 )
	TriggerAction( 1, AddNextFlag, 1435, 10, 1 )
	RegCurTrigger( 14351 )

-------------------------------------------------------挑战·大章鱼--------BOSS挑战登记员
	DefineMission( 6107, "挑战·大章鱼", 1436)
	MisBeginTalk( "<t>大章鱼位于加勒比骷髅岛上，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1436)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1436)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14361, TE_KILL, 796, 1)
	MisCancelAction( ClearMission, 1436)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 796, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1436, 10)
	MisResultCondition( HasMission, 1436)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1436)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 796 )
	TriggerAction( 1, AddNextFlag, 1436, 10, 1 )
	RegCurTrigger( 14361 )

-------------------------------------------------------挑战·黑珍珠--------BOSS挑战登记员
	DefineMission( 6108, "挑战·黑珍珠", 1437)
	MisBeginTalk( "<t>黑珍珠位于加勒比里，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1437)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1437)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14371, TE_KILL, 815, 1)
	MisCancelAction( ClearMission, 1437)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 815, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1437, 10)
	MisResultCondition( HasMission, 1437)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1437)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 815 )
	TriggerAction( 1, AddNextFlag, 1437, 10, 1 )
	RegCurTrigger( 14371 )

-------------------------------------------------------挑战·绝望骑士-塞拉------BOSS挑战登记员
	DefineMission( 6109, "挑战·绝望骑士-塞拉", 1438)
	MisBeginTalk( "<t>绝望骑士-塞拉位于地狱五层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1438)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1438)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14381, TE_KILL, 974, 1)
	MisCancelAction( ClearMission, 1438)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1438, 10)
	MisResultCondition( HasMission, 1438)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1438)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1438, 10, 1 )
	RegCurTrigger( 14381 )

-------------------------------------------------------挑战·冥泥怪-卡普顿------BOSS挑战登记员
	DefineMission( 6110, "挑战·冥泥怪-卡普顿", 1439)
	MisBeginTalk( "<t>冥泥怪-卡普顿位于地狱六层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1439)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1439)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14391, TE_KILL, 975, 1)
	MisCancelAction( ClearMission, 1439)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1439, 10)
	MisResultCondition( HasMission, 1439)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1439)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1439, 10, 1 )
	RegCurTrigger( 14391 )

-------------------------------------------------------挑战·冥囚-阿尔提斯------BOSS挑战登记员
	DefineMission( 6111, "挑战·冥囚-阿尔提斯", 1440)
	MisBeginTalk( "<t>冥囚-阿尔提斯位于地狱七层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1440)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1440)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14401, TE_KILL, 976, 1)
	MisCancelAction( ClearMission, 1440)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1440, 10)
	MisResultCondition( HasMission, 1440)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1440)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1440, 10, 1 )
	RegCurTrigger( 14401 )

-------------------------------------------------------挑战·冥妖-萨库西斯------BOSS挑战登记员
	DefineMission( 6112, "挑战·冥妖-萨库西斯", 1441)
	MisBeginTalk( "<t>冥妖-萨库西斯位于地狱八层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1441)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1441)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14411, TE_KILL, 977, 1)
	MisCancelAction( ClearMission, 1441)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1441, 10)
	MisResultCondition( HasMission, 1441)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1441)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1441, 10, 1 )
	RegCurTrigger( 14411 )

-------------------------------------------------------挑战·冥界兽-咕咕------BOSS挑战登记员
	DefineMission( 6113, "挑战·冥界兽-咕咕", 1442)
	MisBeginTalk( "<t>冥界兽-咕咕位于地狱九层，是这个游戏里最强大的BOSS之一哦，你确定你想挑战吗？")
	MisBeginCondition( NoMission, 1442)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9880)
	MisBeginAction(	AddMission, 1442)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14421, TE_KILL, 978, 1)
	MisCancelAction( ClearMission, 1442)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 978, 1, 10, 1)

	MisResultTalk( "<t>每一次的战斗都会让我们变的更加强大。")
	MisHelpTalk( "<t>注意安全哦。")
	MisResultCondition( HasFlag, 1442, 10)
	MisResultCondition( HasMission, 1442)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1442)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 978 )
	TriggerAction( 1, AddNextFlag, 1442, 10, 1 )
	RegCurTrigger( 14422 )

	-------------------------------------------------乱斗英雄----------芭芭拉	
	DefineMission (5608, "血溅金牛之乱斗英雄", 1114)
	
	MisBeginTalk("<t>金牛座一向是幸运的象征,不如你去乱斗场里碰碰运气")

	MisBeginCondition(NoMission,1114)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1114)
	MisBeginAction(AddMission,1114)
	MisCancelAction(ClearMission, 1114)
	
	MisNeed(MIS_NEED_DESP, "获得30点乱斗点数")
	MisHelpTalk("<t>30点乱斗点数,不难哦!")
	MisResultTalk("<t>回来得很快嘛.不要太得意哦,不过你的运气还真的不错呢")

	MisResultCondition(HasMission, 1114)
	MisResultCondition(NoRecord,1114)
	MisResultCondition(HasFightingPoint,30 )
	MisResultAction(TakeFightingPoint, 30 )
	MisResultAction(ClearMission, 1114)
	MisResultAction(SetRecord,  1114 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------芭芭拉	
	DefineMission (5609, "血溅金牛之名声英雄", 1115)
	
	MisBeginTalk("<t>要闯过金牛宫,提高名声是很重要的. ")

	MisBeginCondition(NoMission,1115)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1115)
	MisBeginAction(AddMission,1115)
	MisCancelAction(ClearMission, 1115)
	
	MisNeed(MIS_NEED_DESP, "获得1000点名声点数")
	MisHelpTalk("<t>别人都说我的名字很诗意,你觉得呢?")
	MisResultTalk("<t>我赌定你会回来取这枚名声勋章的,看得出你是一个不轻易服输的人.")

	MisResultCondition(HasMission, 1115)
	MisResultCondition(NoRecord,1115)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1115)
	MisResultAction(SetRecord,  1115 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------芭芭拉	
	DefineMission (5610, "血溅金牛之等级英雄", 1116)
	
	MisBeginTalk("<t>所有闯过金牛宫的勇士等级都达到过55级，你也不能例外,虽然你的气质看起来格外与众不同. ")

	MisBeginCondition(NoMission,1116)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1116)
	MisBeginAction(AddMission,1116)
	MisCancelAction(ClearMission, 1116)
	
	MisNeed(MIS_NEED_DESP, "等级达到55级")
	MisHelpTalk("<t>55级对别人来说可能有点难....")
	MisResultTalk("<t>这枚等级勋章送给你吧,你值得拥有它.")

	MisResultCondition(HasMission, 1116)
	MisResultCondition(NoRecord,1116)
	MisResultCondition(LvCheck, ">", 54 )
	MisResultAction(ClearMission, 1116)
	MisResultAction(SetRecord,  1116 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------芭芭拉	
	DefineMission (5611, "血溅金牛之荣誉英雄", 1117)
	
	MisBeginTalk("<t>300点荣誉是我对金牛宫闯宫英雄的最低要求了.因为我想像你这样有才华的勇士,一定是很看重荣誉的. ")

	MisBeginCondition(NoMission,1117)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1117)
	MisBeginAction(AddMission,1117)
	MisCancelAction(ClearMission, 1117)
	
	MisNeed(MIS_NEED_DESP, "获得300点荣誉点数")
	MisHelpTalk("<t>记得完成任务才有礼物哦")
	MisResultTalk("<t>像你这样的人很受我们酒吧欢迎的,不凡的品貌、超凡的勇气.看样子你离双子宫不远了.")

	MisResultCondition(HasMission, 1117)
	MisResultCondition(NoRecord,1117)
	MisResultCondition(HasHonorPoint,300 )
	MisResultAction(TakeHonorPoint, 300 )
	MisResultAction(ClearMission, 1117)
	MisResultAction(SetRecord,  1117 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------芭芭拉	
	DefineMission (5612, "血溅金牛之采集大使", 1118)
	
	MisBeginTalk("<t>收集能考验一个勇士的耐性,你知道的,耐性对一个成功者是多么重要.如果你肯努力不偷懒,我会为你保留那枚采集勋章的. ")

	MisBeginCondition(NoMission,1118)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1118)
	MisBeginAction(AddMission,1118)
	MisBeginAction(AddTrigger, 11181, TE_GETITEM, 4804, 10 )---------------带刺的曼陀罗花10
	MisBeginAction(AddTrigger, 11182, TE_GETITEM, 4720, 10 )---------------巨大的熊掌10
	MisBeginAction(AddTrigger, 11183, TE_GETITEM, 3129, 10 )-------------药用草叶10
	MisBeginAction(AddTrigger, 11184, TE_GETITEM, 2588, 5 )--------------精灵辉印5张
	MisBeginAction(AddTrigger, 11185, TE_GETITEM, 4494, 1 )--------------巨大的蟹钳1个
	MisBeginAction(AddTrigger, 11186, TE_GETITEM, 1682, 50 )-------------犬齿50个
	MisBeginAction(AddTrigger, 11187, TE_GETITEM, 1138, 10 )--------------幽灵探测器LV1  10个
	MisBeginAction(AddTrigger, 11188, TE_GETITEM, 0227, 1 )-------------守护精灵饲料1个
	MisCancelAction(ClearMission, 1118)
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 5, 31, 5 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 36, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 50, 37, 50 )
	MisNeed(MIS_NEED_ITEM, 1138, 10, 87, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 1, 97, 1 )

	MisHelpTalk("<t>都是些常见的东西,我不会为难你的")
	MisResultTalk("<t>这世界上总有很多人有着奇怪的爱好,其实我自己也不知道我要犬齿和蟹钳有什么用.")

	MisResultCondition(HasMission, 1118)
	MisResultCondition(NoRecord,1118)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 5 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 50 )
	MisResultCondition(HasItem, 1138, 10 )
	MisResultCondition(HasItem, 0227, 1 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 5 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 50 )
	MisResultAction(TakeItem, 1138, 10 )
	MisResultAction(TakeItem, 0227, 1 )
	MisResultAction(ClearMission, 1118)
	MisResultAction(SetRecord,  1118 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1118, 1, 10 )
	RegCurTrigger( 11181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1118, 11, 10 )
	RegCurTrigger( 11182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1118, 21, 10 )
	RegCurTrigger( 11183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1118, 31, 5 )
	RegCurTrigger( 11184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1118, 36, 1 )
	RegCurTrigger( 11185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1118, 37, 50 )
	RegCurTrigger( 11186 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1118, 87, 10 )
	RegCurTrigger( 11187 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1118, 97, 1 )
	RegCurTrigger( 11188 )


	----------------------------------------------------------金牛末日----------芭芭拉
	DefineMission( 5613, "血溅金牛之金牛末日", 1119 )
	MisBeginTalk("<t>似乎所有诱人的东西都与怪兽有关,比如BOSS勋章")
				
	MisBeginCondition(NoMission, 1119)
	MisBeginCondition(HasRecord,1152)
	MisBeginCondition(NoRecord,1119)
	MisBeginAction(AddMission,1119)
	MisBeginAction(AddTrigger, 11191, TE_KILL, 1038, 1)---金牛守护者
	
	MisCancelAction(ClearMission, 1119)

	MisNeed(MIS_NEED_DESP, "捕杀金牛守护者(2436,2405)!")
	MisNeed(MIS_NEED_KILL, 1038,1, 10, 1)
	

	MisResultTalk("<t>所有惊心动魄的经历都是一次美好的记忆财富哦.当这种财富积攒多了,你就拥有了别人永远不会看到的世界.")
	MisHelpTalk("<t>那个可怕的家伙有着可爱的啤酒肚,但这并不说明你可以掉以轻心.")
	MisResultCondition(HasMission,  1119)
	MisResultCondition(HasFlag, 1119, 10)
	MisResultCondition(NoRecord , 1119)
	MisResultAction(GiveItem, 3034, 1, 4 )
	MisResultAction(ClearMission,  1119)
	MisResultAction(SetRecord,  1119 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1038)	
	TriggerAction( 1, AddNextFlag, 1119, 10, 1 )
	RegCurTrigger( 11191 )






-------------------------------------------------乱斗英雄----------芭芭拉	
	DefineMission (5614, "血溅金牛之乱斗英雄", 1120)
	
	MisBeginTalk("<t>金牛座一向是幸运的象征,不如你去乱斗场里碰碰运气")

	MisBeginCondition(NoMission,1120)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1120)
	MisBeginAction(AddMission,1120)
	MisCancelAction(ClearMission, 1120)
	
	MisNeed(MIS_NEED_DESP, "获得60点乱斗点数")
	MisHelpTalk("<t>60点乱斗点数,不难哦!")
	MisResultTalk("<t>回来得很快嘛.不要太得意哦,不过你的运气还真的不错呢")

	MisResultCondition(HasMission, 1120)
	MisResultCondition(NoRecord,1120)
	MisResultCondition(HasFightingPoint,60 )
	MisResultAction(TakeFightingPoint, 60 )
	MisResultAction(ClearMission, 1120)
	MisResultAction(SetRecord,  1120 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------芭芭拉	
	DefineMission (5615, "血溅金牛之名声英雄", 1121)
	
	MisBeginTalk("<t>要闯过金牛宫,提高名声是很重要的.  ")

	MisBeginCondition(NoMission,1121)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1121)
	MisBeginAction(AddMission,1121)
	MisCancelAction(ClearMission, 1121)
	
	MisNeed(MIS_NEED_DESP, "获得3000点名声点数")
	MisHelpTalk("<t>别人都说我的名字很诗意,你觉得呢?")
	MisResultTalk("<t>我赌定你会回来取这枚名声勋章的,看得出你是一个不轻易服输的人.")

	MisResultCondition(HasMission, 1121)
	MisResultCondition(NoRecord,1121)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit,3000  )
	MisResultAction(ClearMission, 1121)
	MisResultAction(SetRecord,  1121 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------芭芭拉	
	DefineMission (5616, "血溅金牛之等级英雄", 1122)
	
	MisBeginTalk("<t>所有闯过金牛宫的勇士等级都达到过60级,你也不能例外,虽然你的气质看起来格外与众不同. ")

	MisBeginCondition(NoMission,1122)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1122)
	MisBeginAction(AddMission,1122)
	MisCancelAction(ClearMission, 1122)
	
	MisNeed(MIS_NEED_DESP, "等级达到60级")
	MisHelpTalk("<t>60级对别人来说可能有点难....")
	MisResultTalk("<t>这枚等级勋章送给你吧,你值得拥有它.")

	MisResultCondition(HasMission, 1122)
	MisResultCondition(NoRecord,1122)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1122)
	MisResultAction(SetRecord,  1122 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------芭芭拉	
	DefineMission (5617, "血溅金牛之荣誉英雄", 1123)
	
	MisBeginTalk("<t>500点荣誉是我对金牛宫闯宫英雄的最低要求了.因为我想像你这样有才华的勇士,一定是很看重荣誉的. ")

	MisBeginCondition(NoMission,1123)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1123)
	MisBeginAction(AddMission,1123)
	MisCancelAction(ClearMission, 1123)
	
	MisNeed(MIS_NEED_DESP, "获得500点荣誉点数")
	MisHelpTalk("<t>记得完成任务才有礼物哦")
	MisResultTalk("<t>像你这样的人很受我们酒吧欢迎的,不凡的品貌、超凡的勇气.看样子你离双子宫不远了.")

	MisResultCondition(HasMission, 1123)
	MisResultCondition(NoRecord,1123)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1123)
	MisResultAction(SetRecord,  1123 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------芭芭拉	
	DefineMission (5618, "血溅金牛之采集大使", 1124)
	
	MisBeginTalk("<t>收集能考验一个勇士的耐性,你知道的,耐性对一个成功者是多么重要.如果你肯努力不偷懒,我会为你保留那枚采集勋章的.")

	MisBeginCondition(NoMission,1124)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1124)
	MisBeginAction(AddMission,1124)
	MisBeginAction(AddTrigger, 11241, TE_GETITEM, 4804, 15 )-------------------带刺的曼陀罗花15    
	MisBeginAction(AddTrigger, 11242, TE_GETITEM, 4720, 15 )-------------------巨大的熊掌15          
	MisBeginAction(AddTrigger, 11243, TE_GETITEM, 3129, 15 )-----------------药用草叶15               
	MisBeginAction(AddTrigger, 11244, TE_GETITEM, 2588, 10 )----------------精灵辉印10张               
	MisBeginAction(AddTrigger, 11245, TE_GETITEM, 4494, 1 )------------------巨大的蟹钳1个            
	MisBeginAction(AddTrigger, 11246, TE_GETITEM, 1682, 40 )-----------------犬齿40个                  
	MisBeginAction(AddTrigger, 11247, TE_GETITEM, 1138, 20 )------------------幽灵探测器LV1  20个 
	MisBeginAction(AddTrigger, 11248, TE_GETITEM, 0227, 3 )---------------守护精灵饲料3个          
	MisCancelAction(ClearMission, 1124)
	

	MisNeed(MIS_NEED_ITEM, 4804, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4720, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 3129, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 2588, 10, 46, 10 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 56, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 40, 57, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 20, 97, 20 )
	MisNeed(MIS_NEED_ITEM, 0227, 3, 117, 3 )

	MisHelpTalk("<t>都是些常见的东西,我不会为难你的")
	MisResultTalk("<t>这世界上总有很多人有着奇怪的爱好,其实我自己也不知道我要犬齿和蟹钳有什么用.")

	MisResultCondition(HasMission, 1124)
	MisResultCondition(NoRecord,1124)
	MisResultCondition(HasItem, 4804, 15 )
	MisResultCondition(HasItem, 4720, 15 )
	MisResultCondition(HasItem, 3129, 15 )
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 20 )
	MisResultCondition(HasItem, 0227, 3 )

	MisResultAction(TakeItem, 4804, 15 )
	MisResultAction(TakeItem, 4720, 15 )
	MisResultAction(TakeItem, 3129, 15 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 20 )
	MisResultAction(TakeItem, 0227, 3 )
	MisResultAction(ClearMission, 1124)
	MisResultAction(SetRecord,  1124 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1124, 1, 15 )
	RegCurTrigger( 11241 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1124, 16, 15 )
	RegCurTrigger( 11242 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1124, 31, 15 )
	RegCurTrigger( 11243 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1124, 46, 10 )
	RegCurTrigger( 11244 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1124, 56, 1 )
	RegCurTrigger( 11245 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1124, 57, 40 )
	RegCurTrigger( 11246 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1124, 97, 20 )
	RegCurTrigger( 11247 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1124, 117, 3 )
	RegCurTrigger( 11248 )

	



-------------------------------------------------乱斗英雄----------芭芭拉	
	DefineMission (5619, "血溅金牛之乱斗英雄", 1125)
	
	MisBeginTalk("<t>金牛座一向是幸运的象征,不如你去乱斗场里碰碰运气 ")

	MisBeginCondition(NoMission,1125)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1125)
	MisBeginAction(AddMission,1125)
	MisCancelAction(ClearMission, 1125)
	
	MisNeed(MIS_NEED_DESP, "获得100点乱斗点数")
	MisHelpTalk("<t>100点乱斗点数,不难哦!")
	MisResultTalk("<t>回来得很快嘛.不要太得意哦,不过你的运气还真的不错呢")

	MisResultCondition(HasMission, 1125)
	MisResultCondition(NoRecord,1125)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1125)
	MisResultAction(SetRecord,  1125 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------芭芭拉	
	DefineMission (5620, "血溅金牛之名声英雄", 1126)
	
	MisBeginTalk("<t>要闯过金牛宫,提高名声是很重要的.")

	MisBeginCondition(NoMission,1126)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1126)
	MisBeginAction(AddMission,1126)
	MisCancelAction(ClearMission, 1126)
	
	MisNeed(MIS_NEED_DESP, "获得5000点名声点数")
	MisHelpTalk("<t>别人都说我的名字很诗意,你觉得呢?")
	MisResultTalk("<t>我赌定你会回来取这枚名声勋章的,看得出你是一个不轻易服输的人.")

	MisResultCondition(HasMission, 1126)
	MisResultCondition(NoRecord,1126)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit, 5000 )
	MisResultAction(ClearMission, 1126)
	MisResultAction(SetRecord,  1126 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------芭芭拉	
	DefineMission (5621, "血溅金牛之等级英雄", 1127)
	
	MisBeginTalk("<t>所有闯过金牛宫的勇士等级都达到过65级,你也不能例外,虽然你的气质看起来格外与众不同.")

	MisBeginCondition(NoMission,1127)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1127)
	MisBeginAction(AddMission,1127)
	MisCancelAction(ClearMission, 1127)
	
	MisNeed(MIS_NEED_DESP, "等级达到65级")
	MisHelpTalk("<t>65级对别人来说可能有点难....")
	MisResultTalk("<t>这枚等级勋章送给你吧,你值得拥有它.")

	MisResultCondition(HasMission, 1127)
	MisResultCondition(NoRecord,1127)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1127)
	MisResultAction(SetRecord,  1127 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------芭芭拉	
	DefineMission (5622, "血溅金牛之荣誉英雄", 1128)
	
	MisBeginTalk("<t>800点荣誉是我对金牛宫闯宫英雄的最低要求了.因为我想像你这样有才华的勇士,一定是很看重荣誉的.  ")

	MisBeginCondition(NoMission,1128)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1128)
	MisBeginAction(AddMission,1128)
	MisCancelAction(ClearMission, 1128)
	
	MisNeed(MIS_NEED_DESP, "获得800点荣誉点数")
	MisHelpTalk("<t>记得完成任务才有礼物哦")
	MisResultTalk("<t>像你这样的人很受我们酒吧欢迎的,不凡的品貌、超凡的勇气.看样子你离双子宫不远了.")

	MisResultCondition(HasMission, 1128)
	MisResultCondition(NoRecord,1128)
	MisResultCondition(HasHonorPoint,800 )
	MisResultAction(TakeHonorPoint, 800 )
	MisResultAction(ClearMission, 1128)
	MisResultAction(SetRecord,  1128 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------芭芭拉	
	DefineMission (5623, "血溅金牛之采集大使", 1129)
	
	MisBeginTalk("<t>收集能考验一个勇士的耐性,你知道的,耐性对一个成功者是多么重要.如果你肯努力不偷懒,我会为你保留那枚采集勋章的.")

	MisBeginCondition(NoMission,1129)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1129)
	MisBeginAction(AddMission,1129)
	MisBeginAction(AddTrigger, 11291, TE_GETITEM, 4804, 10 )---------------------带刺的曼陀罗花10    
	MisBeginAction(AddTrigger, 11292, TE_GETITEM, 4720, 10 )---------------------巨大的熊掌10          
	MisBeginAction(AddTrigger, 11293, TE_GETITEM, 3129, 10 )-------------------药用草叶10               
	MisBeginAction(AddTrigger, 11294, TE_GETITEM, 2588, 15 )------------------精灵辉印15张             
	MisBeginAction(AddTrigger, 11295, TE_GETITEM, 4494, 5 )--------------------巨大的蟹钳5个             
	MisBeginAction(AddTrigger, 11296, TE_GETITEM, 1682, 40 )-------------------犬齿40个                  
	MisBeginAction(AddTrigger, 11297, TE_GETITEM, 1138, 25 )--------------------幽灵探测器LV1  25个 
	MisBeginAction(AddTrigger, 11298, TE_GETITEM, 0227, 5 )----------------------守护精灵饲料5个            
	MisCancelAction(ClearMission, 1129)						                                     
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4494, 5, 46, 5)
	MisNeed(MIS_NEED_ITEM, 1682, 40, 51, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 25, 91, 25 )
	MisNeed(MIS_NEED_ITEM, 0227, 5, 116, 5 )

	MisHelpTalk("<t>都是些常见的东西,我不会为难你的")
	MisResultTalk("<t>这世界上总有很多人有着奇怪的爱好,其实我自己也不知道我要犬齿和蟹钳有什么用.")

	MisResultCondition(HasMission, 1129)
	MisResultCondition(NoRecord,1129)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 15 )
	MisResultCondition(HasItem, 4494,  5 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 25 )
	MisResultCondition(HasItem, 0227, 5 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 15 )
	MisResultAction(TakeItem, 4494, 5 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 25 )
	MisResultAction(TakeItem, 0227, 5 )
	MisResultAction(ClearMission, 1129)
	MisResultAction(SetRecord,  1129 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1129, 1, 10 )
	RegCurTrigger( 11291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1129, 11, 10 )
	RegCurTrigger( 11292 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1129, 21, 10 )
	RegCurTrigger( 11293 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1129, 31, 15 )
	RegCurTrigger( 11294 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1129, 46, 5 )
	RegCurTrigger( 11295 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1129, 51, 40 )
	RegCurTrigger( 11296 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1129, 91, 25 )
	RegCurTrigger( 11297 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1129, 116, 5 )
	RegCurTrigger( 11298 )


	

	----------------------------------------------------------社交大使----------芭芭拉
	DefineMission( 5624, "血溅金牛之社交大使", 1130 )
	MisBeginTalk("<t>我们酒吧最近生意很差,需要广告宣传可又缺少资金.你可否帮我们宣传一下,顺便结识一些城里城外的朋友")
				
	MisBeginCondition(NoMission, 1130)
	MisBeginCondition(NoRecord,1130)
	MisBeginCondition(HasRecord, 1152)-------------------新的id,最后的id
	MisBeginAction(AddMission,1130)
	MisCancelAction(ClearMission, 1130)

	MisNeed(MIS_NEED_DESP, "找加纳的賽·魔力(628,2095)聊聊")
	
	MisHelpTalk("<t>她年轻时是我们这里的常客呢")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使-----------------賽·魔力

	DefineMission(5625, "社交大使", 1130, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>酒吧?你找对人了,看我的身材也知道我酒量惊人,我一直因此自豪.")
	MisResultCondition(NoRecord, 1130)
	MisResultCondition(HasMission,1130)
	MisResultAction(ClearMission,1130)
	MisResultAction(SetRecord, 1130)

	----------------------------------------------------------社交大使2----------賽·魔力
	DefineMission( 5626, "社交大使2", 1131 )
	MisBeginTalk("<t>谢谢你年轻人,不知道你是否会路过沙岚,我很担心朋友艾达的处境,她总是在野兽群中祈祷它们弃恶从善,吃草不吃肉,但愿她是草做的.")
				
	MisBeginCondition(NoMission, 1131)
	MisBeginCondition(NoRecord,1131)
	MisBeginCondition(HasRecord, 1130)
	MisBeginAction(AddMission,1131)
	MisCancelAction(ClearMission, 1131)

	MisNeed(MIS_NEED_DESP, "找沙岚的圣女·艾达(862,3303)聊聊")
	
	MisHelpTalk("<t>圣人总是天真得乱七八糟、云里雾里,哪里比得上酒客的洒脱自在?...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使2-------------圣女·艾达
	DefineMission(5627, "社交大使2", 1131, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好!愿卡拉护佑你!愿这世上所有美好的事物属于你.愿幸福时刻围绕你......")
	MisResultCondition(NoRecord, 1131)
	MisResultCondition(HasMission,1131)
	MisResultAction(ClearMission,1131)
	MisResultAction(SetRecord, 1131)

	----------------------------------------------------------社交大使3----------圣女·艾达
	DefineMission( 5628, "社交大使3", 1132 )
	MisBeginTalk("<t>多亏女神的护佑,我才得以与这些尚未悔改的生物安然相处,说到喝酒我实在不在行,不如你问一下阿泰")
				
	MisBeginCondition(NoMission, 1132)
	MisBeginCondition(NoRecord,1132)
	MisBeginCondition(HasRecord, 1131)
	MisBeginAction(AddMission,1132)
	MisCancelAction(ClearMission, 1132)

	MisNeed(MIS_NEED_DESP, "找骷髅营地补给站的阿泰(2128,540)聊聊")
	
	MisHelpTalk("<t>他的愿望美好而且很富诗意,只是很难完成")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使3--------阿泰
	DefineMission(5629, "社交大使3", 1132, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我想成为海洋生物的梦想一直没机会实现,总有些遗憾.我是一只鱼,水里的空气......游来游去......")
	MisResultCondition(NoRecord, 1132)
	MisResultCondition(HasMission,1132)
	MisResultAction(ClearMission,1132)
	MisResultAction(SetRecord, 1132)



	----------------------------------------------------------社交大使4----------阿泰
	DefineMission( 5630, "社交大使4", 1133 )
	MisBeginTalk("<t>借酒消愁?NO!这不适合我这样的阳光少年.老奶奶·贝蒂知道了就再也不会寄蛋糕给我吃了,为了那种美味,我一直坚守原则.")
				
	MisBeginCondition(NoMission, 1133)
	MisBeginCondition(NoRecord,1133)
	MisBeginCondition(HasRecord, 1132)
	MisBeginAction(AddMission,1133)
	MisCancelAction(ClearMission, 1133)

	MisNeed(MIS_NEED_DESP, "代替阿泰问候加纳的老奶奶·贝蒂(2277,2769)")
	
	MisHelpTalk("<t>说起蛋糕我就流口水..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使4--------老奶奶·贝蒂
	DefineMission(5631, "社交大使4", 1133, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>是吗?阿泰这个小馋猫又想我了?我猜他更想念我做的蛋糕,呵呵.")
	MisResultCondition(NoRecord, 1133)
	MisResultCondition(HasMission,1133)
	MisResultAction(ClearMission,1133)
	MisResultAction(SetRecord, 1133)


	----------------------------------------------------------社交大使5----------老奶奶·贝蒂
	DefineMission( 5632, "社交大使5", 1134 )
	MisBeginTalk("<t>我要加紧做些蛋糕给阿泰了,至于酒吧不适合我这个年纪了,谢谢你,或许交易员·尤卡有兴趣")
				
	MisBeginCondition(NoMission, 1134)
	MisBeginCondition(NoRecord,1134)
	MisBeginCondition(HasRecord, 1133)
	MisBeginAction(AddMission,1134)
	MisCancelAction(ClearMission, 1134)

	MisNeed(MIS_NEED_DESP, "找真爱岛的交易员·尤卡(2519,2397)聊聊")
	
	MisHelpTalk("<t>想到阿泰要流出来了的口水,我就更着急做蛋糕了.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使5--------交易员·尤卡
	DefineMission(5633, "社交大使5", 1134, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>喝酒这种好事我最怕错过了,幸亏老奶奶还想着我,哈哈.很怀念那些吃老奶奶的蛋糕长大的日子.")
	MisResultCondition(NoRecord, 1134)
	MisResultCondition(HasMission,1134)
	MisResultAction(ClearMission,1134)
	MisResultAction(SetRecord, 1134)


	----------------------------------------------------------社交大使6----------交易员·尤卡
	DefineMission( 5634, "社交大使6", 1135 )
	MisBeginTalk("<t>待我忙完最近一批货物就去酒吧,要是我的酒友海港指挥·奥登也能去就好了.")
				
	MisBeginCondition(NoMission, 1135)
	MisBeginCondition(NoRecord,1135)
	MisBeginCondition(HasRecord, 1134)
	MisBeginAction(AddMission,1135)
	MisCancelAction(ClearMission, 1135)

	MisNeed(MIS_NEED_DESP, "找卡马赛补给站的海港指挥·奥登(738,3803)聊聊")
	
	MisHelpTalk("<t>不知道芭芭拉是不是更漂亮了.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使6--------海港指挥·奥登
	DefineMission(5635, "社交大使6", 1135, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>对于一个男人来说有酒喝就意味着有姑娘和约会..")
	MisResultCondition(NoRecord, 1135)
	MisResultCondition(HasMission,1135)
	MisResultAction(ClearMission,1135)
	MisResultAction(SetRecord, 1135)



	----------------------------------------------------------社交大使7----------海港指挥·奥登
	DefineMission( 5636, "社交大使7", 1136 )
	MisBeginTalk("<t>笑什么?老头就不是男人吗?哼!帮我通知贝壳商人·拉姆过来取他要的贝壳,我等不及要去酒吧了")
				
	MisBeginCondition(NoMission, 1136)
	MisBeginCondition(NoRecord,1136)
	MisBeginCondition(HasRecord, 1135)
	MisBeginAction(AddMission,1136)
	MisCancelAction(ClearMission, 1136)

	MisNeed(MIS_NEED_DESP, "找加纳的贝壳商人·拉姆(2061,2543)聊聊")
	
	MisHelpTalk("<t>我经常帮助那些可爱的商人,要不怎么有钱泡酒吧呢?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使7--------贝壳商人·拉姆
	DefineMission(5637, "社交大使7", 1136, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>奥登一直都是没钱的老酒鬼,我借此才可以吸引他帮我.")
	MisResultCondition(NoRecord, 1136)
	MisResultCondition(HasMission,1136)
	MisResultAction(ClearMission,1136)
	MisResultAction(SetRecord, 1136)


	----------------------------------------------------------社交大使8----------贝壳商人·拉姆
	DefineMission( 5638, "社交大使8", 1137 )
	MisBeginTalk("<t>为什么这样看着我?我们商人都是这副嘴脸的,总不能长成杰克那样表里不一吧")
				
	MisBeginCondition(NoMission, 1137)
	MisBeginCondition(NoRecord,1137)
	MisBeginCondition(HasRecord, 1136)
	MisBeginAction(AddMission,1137)
	MisCancelAction(ClearMission, 1137)

	MisNeed(MIS_NEED_DESP, "找鸣沙岛的杰克船长(1672,3777)聊聊")
	
	MisHelpTalk("<t>别说我没提醒你,那里不太平要小心!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使8--------杰克船长
	DefineMission(5639, "社交大使8", 1137, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我已经习惯了被女人爱慕,被男人嫉妒")
	MisResultCondition(NoRecord, 1137)
	MisResultCondition(HasMission,1137)
	MisResultAction(ClearMission,1137)
	MisResultAction(SetRecord, 1137)


	----------------------------------------------------------社交大使9----------杰克船长
	DefineMission( 5640, "社交大使9", 1138 )
	MisBeginTalk("<t>疤痕是男人的徽章,酒精是海盗的伙伴,有酒我是不会错过的.不知道我的外国友人东方海盗·铃佐田山会不会参加,虽然他讲话很少有人能听懂.")
				
	MisBeginCondition(NoMission, 1138)
	MisBeginCondition(NoRecord,1138)
	MisBeginCondition(HasRecord, 1137)
	MisBeginAction(AddMission,1138)
	MisCancelAction(ClearMission, 1138)

	MisNeed(MIS_NEED_DESP, "找秋之岛的东方海盗·铃佐田山(2221,3285)聊聊")
	
	MisHelpTalk("<t>东方海盗·铃佐田山一直想与其他海盗同行切磋经验呢.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使9--------东方海盗·铃佐田山
	DefineMission(5641, "社交大使9", 1138, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我是一个远来的海盗,刚刚学会这里的语言.##@@#$,我很喜欢这片迷人的海岛.&*&%,都说外来的和尚好念经,可是仿佛不适合海盗界.我刚来到这片大陆时还与杰克船长结下了很深的误解.")
	MisResultCondition(NoRecord, 1138)
	MisResultCondition(HasMission,1138)
	MisResultAction(ClearMission,1138)
	MisResultAction(SetRecord, 1138)

	----------------------------------------------------------社交大使10----------东方海盗·铃佐田山
	DefineMission( 5642, "社交大使10", 1139 )
	MisBeginTalk("<t>杰克也要去?!那我还是考虑一下吧.我想我还是和朋友交易员·赛瑟尼钓鱼去吧.")
				
	MisBeginCondition(NoMission, 1139)
	MisBeginCondition(NoRecord,1139)
	MisBeginCondition(HasRecord, 1138)
	MisBeginAction(AddMission,1139)
	MisCancelAction(ClearMission, 1139)

	MisNeed(MIS_NEED_DESP, "找碎冰岛的交易员·赛瑟尼(2279,1112)聊聊")
	
	MisHelpTalk("<t>我还是等赛瑟尼的约会吧")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使10--------交易员·赛瑟尼
	DefineMission(5643, "社交大使10", 1139, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我很喜欢东方海盗·铃佐田山,尤其是那种谨慎浪漫的性格和外表的反差．")
	MisResultCondition(NoRecord, 1139)
	MisResultCondition(HasMission,1139)
	MisResultAction(ClearMission,1139)
	MisResultAction(SetRecord, 1139)

	----------------------------------------------------------社交大使11----------交易员·赛瑟尼
	DefineMission( 5644, "社交大使11", 1140 )
	MisBeginTalk("<t>如果杰克去酒吧,我就与东方海盗·铃佐田山去海边,敌人还是少见面为好.嗯,我想那个喜欢凑热闹的小男孩汉姆一定有兴趣去酒吧")
				
	MisBeginCondition(NoMission, 1140)
	MisBeginCondition(NoRecord,1140)
	MisBeginCondition(HasRecord, 1139)
	MisBeginAction(AddMission,1140)
	MisCancelAction(ClearMission, 1140)

	MisNeed(MIS_NEED_DESP, "找沙岚旧城的汉姆(826,3347)聊聊")
	
	MisHelpTalk("<t>但愿不要教坏小孩子,主要是怕他来凑我们的热闹...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使11--------汉姆
	DefineMission(5645, "社交大使11", 1140, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>小孩子是不应该去酒吧的,但是...玉树临风的帅男孩除外!我肯定会去的,谢谢你的好消息.")
	MisResultCondition(NoRecord, 1140)
	MisResultCondition(HasMission,1140)
	MisResultAction(ClearMission,1140)
	MisResultAction(SetRecord, 1140)

	----------------------------------------------------------社交大使12----------汉姆
	DefineMission( 5646, "社交大使12", 1141 )
	MisBeginTalk("<t>绅士风度的男人不会独享美酒,这是我的原则.所以要叫上我的朋友朱比.")
				
	MisBeginCondition(NoMission, 1141)
	MisBeginCondition(NoRecord,1141)
	MisBeginCondition(HasRecord, 1140)
	MisBeginAction(AddMission,1141)
	MisCancelAction(ClearMission, 1141)

	MisNeed(MIS_NEED_DESP, "找阿兰比斯补给站的朱比(1037,671)聊聊")
	
	MisHelpTalk("<t>我还没有去过酒吧,要带身份证吗?喝醉了有人送我们回家吗?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使12--------朱比
	DefineMission(5647, "社交大使12", 1141, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>说实话每一次汉姆的提议都很刺激,但是每次因此被妈妈责备我不成熟我都会后悔.")
	MisResultCondition(NoRecord, 1141)
	MisResultCondition(HasMission,1141)
	MisResultAction(ClearMission,1141)
	MisResultAction(SetRecord, 1141)


	----------------------------------------------------------社交大使13----------朱比
	DefineMission( 5648, "社交大使13", 1142 )
	MisBeginTalk("<t>虽然我发过誓,再也不听信他的建议,但是去酒吧是我迈向成熟的标志,所以...嘿嘿,如果你路过赖安森林补给站请帮忙问问饰品商人·里克那里是否有漂亮的袖扣,我人生第一次去酒吧,不能打扮得太寒酸.")
				
	MisBeginCondition(NoMission, 1142)
	MisBeginCondition(NoRecord,1142)
	MisBeginCondition(HasRecord, 1141)
	MisBeginAction(AddMission,1142)
	MisCancelAction(ClearMission, 1142)

	MisNeed(MIS_NEED_DESP, "找赖安森林补给站的饰品商人·里克(996,2969)聊聊")
	
	MisHelpTalk("<t>饰品商人·里克是很有眼光的珠宝行家,小时候我妈妈总是带我去那里购买珠宝,他每次都会夸奖妈妈漂亮,还送我好吃的糖果.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使13--------饰品商人·里克
	DefineMission(5649, "社交大使13", 1142, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>买袖扣去酒吧?朱比长大了,但他妈妈的容貌似乎一点也没受到影响,她一直是我这里最富魅力的客户.")
	MisResultCondition(NoRecord, 1142)
	MisResultCondition(HasMission,1142)
	MisResultAction(ClearMission,1142)
	MisResultAction(SetRecord, 1142)

	----------------------------------------------------------社交大使14----------饰品商人·里克
	DefineMission( 5650, "社交大使14", 1143 )
	MisBeginTalk("<t>回忆我年轻时第一次去酒吧就结识了海盗杰里米,我们的友谊很深厚,我的珠宝运送生意一直很顺利与他的照顾是分不开的.如果你方便去冰雪岛,代我问候他.")
				
	MisBeginCondition(NoMission, 1143)
	MisBeginCondition(NoRecord,1143)
	MisBeginCondition(HasRecord, 1142)
	MisBeginAction(AddMission,1143)
	MisCancelAction(ClearMission, 1143)

	MisNeed(MIS_NEED_DESP, "找冰雪岛的海盗杰里米(2362,657)聊聊")
	
	MisHelpTalk("<t>冰雪岛在魔女之海哦.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使14--------海盗杰里米        
	DefineMission(5651, "社交大使14", 1143, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哈哈,那也是我第一次去酒吧,那时候我还是个小海盗喽罗,为了第一次出海壮胆才去喝酒的.不知道为什么里克与我十分投缘,我曾经想过,如果相遇的时候她是一个女孩,或许我就不会一直是个单身汉了．")
	MisResultCondition(NoRecord, 1143)
	MisResultCondition(HasMission,1143)
	MisResultAction(ClearMission,1143)
	MisResultAction(SetRecord, 1143)

	----------------------------------------------------------社交大使15----------海盗杰里米
	DefineMission( 5652, "社交大使15", 1144 )
	MisBeginTalk("<t>这让我想起了想要加入海盗团的雷斯·小虫,可惜他个子太小了,想要出海不喝酒壮胆是不行的.")
				
	MisBeginCondition(NoMission, 1144)
	MisBeginCondition(NoRecord,1144)
	MisBeginCondition(HasRecord, 1143)
	MisBeginAction(AddMission,1144)
	MisCancelAction(ClearMission, 1144)

	MisNeed(MIS_NEED_DESP, "找冰狼堡的雷斯·小虫(1379,612)聊聊")
	
	MisHelpTalk("<t>拜托你了,我真的很爱他")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使15-------- 雷斯·小虫
	DefineMission(5653, "社交大使15", 1144, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的理想是成为霍金斯一样的金牌海盗.")
	MisResultCondition(NoRecord, 1144)
	MisResultCondition(HasMission,1144)
	MisResultAction(ClearMission,1144)
	MisResultAction(SetRecord, 1144)


	----------------------------------------------------------社交大使16----------雷斯·小虫
	DefineMission( 5654, "社交大使16", 1145 )
	MisBeginTalk("<t>为了我的理想,我猜我该开始学习游泳、剑术和开船了.关于开船我想海港指挥·瓦雷米应该能帮上我的忙")
				
	MisBeginCondition(NoMission, 1145)
	MisBeginCondition(NoRecord,1145)
	MisBeginCondition(HasRecord, 1144)
	MisBeginAction(AddMission,1145)
	MisCancelAction(ClearMission, 1145)

	MisNeed(MIS_NEED_DESP, "找哈尔补给站的海港指挥·瓦雷米(2041,1355)聊聊")
	
	MisHelpTalk("<t>我是一个很执着的人,为了匡复海上贸易的公平我愿意做一名正义的海盗.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使16-------- 海港指挥·瓦雷米
	DefineMission(5655, "社交大使16", 1145, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>他要找我学开船,哈哈,我的开船技术可是远近闻名啊.")
	MisResultCondition(NoRecord, 1145)
	MisResultCondition(HasMission,1145)
	MisResultAction(ClearMission,1145)
	MisResultAction(SetRecord, 1145)


	----------------------------------------------------------社交大使17----------海港指挥·瓦雷米
	DefineMission( 5656, "社交大使17", 1146 )
	MisBeginTalk("<t>酒吧我就不去了,这里暗礁很多,如果我不站在这里帮助远来的船只,不知道会有多少人会成为鲨鱼的午餐呢.或许你可以问一下索拉姆·萨加,记得他说过要出去放松一下,让我介绍好去处呢.")
				
	MisBeginCondition(NoMission, 1146)
	MisBeginCondition(NoRecord,1146)
	MisBeginCondition(HasRecord, 1145)
	MisBeginAction(AddMission,1146)
	MisCancelAction(ClearMission, 1146)

	MisNeed(MIS_NEED_DESP, "找巴布补给站的索拉姆·萨加(1202,3179)聊聊")
	
	MisHelpTalk("<t>索拉姆·萨加是个踌躇满志的年轻人呢,和他聊聊吧.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使17-------- 索拉姆·萨加
	DefineMission(5657, "社交大使17", 1146, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我是一个为了梦想和荣誉可以放弃生命的人.而且女孩们也这么认为.")
	MisResultCondition(NoRecord, 1146)
	MisResultCondition(HasMission,1146)
	MisResultAction(ClearMission,1146)
	MisResultAction(SetRecord, 1146)

	----------------------------------------------------------社交大使18----------索拉姆·萨加
	DefineMission( 5658, "社交大使18", 1147 )
	MisBeginTalk("<t>我正要出门,你有什么事就快点说.酒吧?那是一个结交朋友的好地方,我想我要改变行程计划了.如果你能帮我告诉拉米修关于这个补给站最近往来客商很多,需要他注意港口接待指挥的话我会十分感谢的.")
				
	MisBeginCondition(NoMission, 1147)
	MisBeginCondition(NoRecord,1147)
	MisBeginCondition(HasRecord, 1146)
	MisBeginAction(AddMission,1147)
	MisCancelAction(ClearMission, 1147)

	MisNeed(MIS_NEED_DESP, "找思思索补给站的海港指挥·拉米修(2297,3723)聊聊")
	
	MisHelpTalk("<t>比起睡觉,年轻人应该更注重成长.干吗这样看着我?我一直是人们眼中的有志青年.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使18-------- 海港指挥·拉米修
	DefineMission(5659, "社交大使18", 1147, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>欢迎你的到来,感谢你带来的消息.我这里正缺少人手,要不要留下来做我的助手?")
	MisResultCondition(NoRecord, 1147)
	MisResultCondition(HasMission,1147)
	MisResultAction(ClearMission,1147)
	MisResultAction(SetRecord, 1147)

	----------------------------------------------------------社交大使19----------海港指挥·拉米修
	DefineMission( 5660, "社交大使19", 1148 )
	MisBeginTalk("<t>海港指挥是高尚并且繁忙的职业.说到忙我好像已经很久没去看望过可爱的伊丽莎白了,不知道她是否风采依旧.")
				
	MisBeginCondition(NoMission, 1148)
	MisBeginCondition(NoRecord,1148)
	MisBeginCondition(HasRecord, 1147)
	MisBeginAction(AddMission,1148)
	MisCancelAction(ClearMission, 1148)

	MisNeed(MIS_NEED_DESP, "找藏宝海湾的伊丽莎白(616,965)聊聊")
	
	MisHelpTalk("<t>伊丽莎白小时候就漂亮得一塌糊涂.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使19-------- 伊丽莎白
	DefineMission(5661, "社交大使19", 1148, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>等待一个人是痛苦孤独的,但我享受这份坚守.")
	MisResultCondition(NoRecord, 1148)
	MisResultCondition(HasMission,1148)
	MisResultAction(ClearMission,1148)
	MisResultAction(SetRecord, 1148)


		----------------------------------------------------------社交大使20----------伊丽莎白
	DefineMission( 5662, "社交大使20", 1149 )
	MisBeginTalk("<t>我经常会靠一些奇异的珠宝来消磨等候的时光,矿工大肚腩稍信给我说挖矿时找到一块千年祖母绿,我正在筹钱,让他一定留下来卖给我.奇怪,挖矿怎么会挖到祖母绿?")
				
	MisBeginCondition(NoMission, 1149)
	MisBeginCondition(NoRecord,1149)
	MisBeginCondition(HasRecord, 1148)
	MisBeginAction(AddMission,1149)
	MisCancelAction(ClearMission, 1149)

	MisNeed(MIS_NEED_DESP, "找银矿2层的矿工大肚腩(296,57)聊聊")
	
	MisHelpTalk("<t>谢谢你年轻人．去吧")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使20-------- 矿工大肚腩
	DefineMission(5663, "社交大使20", 1149, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>优秀的男人和珍贵的珠宝是漂亮女人的最爱,比如千年祖母绿和我.")
	MisResultCondition(NoRecord, 1149)
	MisResultCondition(HasMission,1149)
	MisResultAction(ClearMission,1149)
	MisResultAction(SetRecord, 1149)

		----------------------------------------------------------社交大使21----------矿工大肚腩
	DefineMission( 5664, "社交大使21", 1150 )
	MisBeginTalk("<t>恭喜你完成了漫长的社交任务．相信你对这个世界的许多人有了更多的了解,这对你的探险很有帮助.我听说美丽的酒吧服务员<b芭芭拉>在找你.")
				
	MisBeginCondition(NoMission, 1150)
	MisBeginCondition(NoRecord,1150)
	MisBeginCondition(HasRecord, 1149)
	MisBeginAction(AddMission,1150)
	MisCancelAction(ClearMission, 1150)

	MisNeed(MIS_NEED_DESP, "找芭芭拉(1310,530)聊聊")
	
	MisHelpTalk("<t>芭芭拉有礼物给你.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交英雄21------- 芭芭拉
	DefineMission(5667, "社交英雄21", 1150, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你已经通过了社交考验,送给你一枚勋章")
	MisResultCondition(NoRecord, 1150)
	MisResultCondition(HasMission,1150)
	MisResultAction(ClearMission,1150)
	MisResultAction(SetRecord, 1150)
	MisResultAction(GiveItem, 3033, 1, 4)
	MisResultBagNeed(1)

--	-------------------------------------------------特别任务	--------芭芭拉
--	DefineMission (5668, "血溅金牛之特别行动", 1153)
--	
--	MisBeginTalk("<t>这个任务是金牛宫特别行动,你可以不参加,当然不参加的没有礼物拿.<b10分钟内航行到弗里补给站找海港指挥·布纽(2042,6351)>")
--
--	MisBeginCondition(NoMission,1153)
--	MisBeginCondition(NoRecord,1153)
--	MisBeginCondition(HasRecord,1113)
--	MisBeginCondition(HasRecord,1114)
--	MisBeginCondition(HasRecord,1115)
--	MisBeginCondition(HasRecord,1116)
--	MisBeginCondition(HasRecord,1117)
--	MisBeginCondition(HasRecord,1118)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1153)
--	MisBeginAction(AddChaItem3, 2952)---------金牛特别行动卡
--	MisCancelAction(ClearMission, 1153)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "航行到埃弗里补给站找海港指挥·布纽(2042,635)聊聊")
--	MisHelpTalk("<t>快去吧,你只有15分钟哦")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------特别任务----海港指挥·布纽
--
--	DefineMission(5669, "血溅金牛之特别行动", 1153, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>还不错嘛.不会让你后悔的.")
--	MisResultCondition(HasMission, 1153)
--	MisResultCondition(NoRecord,1153)
--	MisResultAction(AddChaItem5, 2952)----特别行动卡
--	MisResultAction(ClearMission, 1153)
--	MisResultAction(SetRecord,  1153 )
--	MisResultAction(GiveItem, 3035, 1, 4)------------金牛船长酷装宝箱
--	MisResultBagNeed(1)
	
---------------------------------------------------特别任务	--------芭芭拉
--	DefineMission (5673, "血溅金牛之特别行动", 1159)
--	
--	MisBeginTalk("<t>这个任务是金牛宫特别行动,你可以不参加,当然不参加的没有礼物拿.<b10分钟内航行到弗里补给站找海港指挥·布纽(2042,6351)>")
--
--	MisBeginCondition(NoMission,1159)
--	MisBeginCondition(NoRecord,1159)
--	MisBeginCondition(HasRecord,1112)
--	MisBeginCondition(HasRecord,1120)
--	MisBeginCondition(HasRecord,1121)
--	MisBeginCondition(HasRecord,1122)
--	MisBeginCondition(HasRecord,1123)
--	MisBeginCondition(HasRecord,1124)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1159)
--	MisBeginAction(AddChaItem3, 2952)---------金牛特别行动卡
--	MisCancelAction(ClearMission, 1159)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "航行到埃弗里补给站找海港指挥·布纽(2042,635)聊聊")
--	MisHelpTalk("<t>快去吧,你只有15分钟哦")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------特别任务----海港指挥·布纽
--
--	DefineMission(5674, "血溅金牛之特别行动", 1159, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>还不错嘛.不会让你后悔的.")
--	MisResultCondition(HasMission, 1159)
--	MisResultCondition(NoRecord,1159)
--	MisResultAction(AddChaItem5, 2952)----特别行动卡
--	MisResultAction(ClearMission, 1159)
--	MisResultAction(SetRecord,  1159 )
--	MisResultAction(GiveItem, 3035, 1, 4)------------金牛船长酷装宝箱
--	MisResultBagNeed(1)
--	
-------------------------------------------------特别任务	--------芭芭拉
	DefineMission (5675, "血溅金牛之特别行动", 1160)
	
	MisBeginTalk("<t>这个任务是金牛宫特别行动,你可以不参加,当然不参加的没有礼物拿.考验你胆量的时候到了.<b7分钟内赶到骷髅岛找杰克史派罗(230,579)>聊聊.")

	MisBeginCondition(NoMission,1160)
	MisBeginCondition(NoRecord,1160)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginAction(AddMission,1160)
	MisBeginAction(AddChaItem3, 2952)---------金牛特别行动卡
	MisCancelAction(ClearMission, 1160)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "找杰克史派罗(230,579)聊聊")
	MisHelpTalk("<t>快去吧,你只有7分钟哦")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------特别任务----杰克史派罗

	DefineMission(5676, "血溅金牛之特别行动", 1160, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>敢闯骷髅岛?有胆量!不过我讨厌你们这群勇敢的家伙,导致我最近忙得一塌糊涂.")
	MisResultCondition(HasMission, 1160)
	MisResultCondition(NoRecord,1160)
	MisResultAction(AddChaItem5, 2952)----特别行动卡
	MisResultAction(ClearMission, 1160)
	MisResultAction(SetRecord,  1160 )
	MisResultAction(GiveItem, 3035, 1, 4)------------金牛船长酷装宝箱
	MisResultBagNeed(1)
	


-------------------------------------------------金牛之水手过关奖励----------芭芭拉	
	DefineMission (5670, "金牛之水手过关奖励", 1156)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到金牛宫守印和双子宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1156)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(HasRecord,1114)
	MisBeginCondition(HasRecord,1115)
	MisBeginCondition(HasRecord,1116)
	MisBeginCondition(HasRecord,1117)
	MisBeginCondition(HasRecord,1118)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1156)
	MisBeginAction(AddMission,1156)  
	MisBeginAction(AddTrigger, 11561, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11562, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11563, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11564, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11565, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11566, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11567, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1156)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是双子宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1156)
	MisResultCondition(NoRecord,1156)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1156)
	MisResultAction(SetRecord,  1156 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 10, 4)
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(JINNiuSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1156, 10, 1 )
	RegCurTrigger( 11561 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1156, 20, 1 )
	RegCurTrigger( 11562 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1156, 30, 1 )
	RegCurTrigger( 11563 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1156, 40, 1 )
	RegCurTrigger( 11564 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1156, 50, 1 )
	RegCurTrigger( 11565 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1156, 60, 1 )
	RegCurTrigger( 11566 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1156, 70, 1 )
	RegCurTrigger( 11567 )
----------------------------------------------金牛之海盗过关奖励----------芭芭拉	
	DefineMission (5671, "金牛之海盗过关奖励", 1157)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到金牛宫守印和双子宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1157)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(HasRecord,1120)
	MisBeginCondition(HasRecord,1121)
	MisBeginCondition(HasRecord,1122)
	MisBeginCondition(HasRecord,1123)
	MisBeginCondition(HasRecord,1124)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1157)
	MisBeginAction(AddMission,1157)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 3034, 1 )		
	MisCancelAction(ClearMission, 1157)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是双子宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1157)
	MisResultCondition(NoRecord,1157)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1157)
	MisResultAction(SetRecord,  1157 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 20, 4)
	MisResultAction(AddMoney,200000,200000)
	MisResultAction(JINNiuHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 11571 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1157, 20, 1 )
	RegCurTrigger( 11572 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1157, 30, 1 )
	RegCurTrigger( 11573 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1157, 40, 1 )
	RegCurTrigger( 11574 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1157, 50, 1 )
	RegCurTrigger( 11575 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1157, 60, 1 )
	RegCurTrigger( 11576 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1157, 70, 1 )
	RegCurTrigger( 11577 )

	---------------------------------------------金牛之船长过关奖励----------芭芭拉	
	DefineMission (5672, "金牛之船长过关奖励", 1158)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到金牛宫守印和双子宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1158)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1158)
	MisBeginAction(AddMission,1158)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1158)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是双子宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1158)
	MisResultCondition(NoRecord,1158)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1158)
	MisResultAction(SetRecord,  1158 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 30, 4)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(JINNiuCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1158, 10, 1 )
	RegCurTrigger( 11581 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1158, 20, 1 )
	RegCurTrigger( 11582 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1158, 30, 1 )
	RegCurTrigger( 11583 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1158, 40, 1 )
	RegCurTrigger( 11584 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1158, 50, 1 )
	RegCurTrigger( 11585 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1158, 60, 1 )
	RegCurTrigger( 11586 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1158, 70, 1 )
	RegCurTrigger( 11587 )

--	-----------------------------------------------------猪光宝气-----------马来西亚
--
--       DefineMission(6126,"猪光宝气",1452)
--
--	MisBeginTalk("<t>最近我再研究一道新菜色需要些特别的材料,我猜你一定愿意帮忙,因为回报够好哦.")
--	MisBeginCondition(NoMission, 1452)
--	MisBeginCondition(NoRecord,1452)
--	MisBeginAction(AddMission,1452)
--	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)
--	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)
--	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)
--	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)
--	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)
--	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)
--
--
--	MisCancelAction(ClearMission, 1452)
--
--	MisNeed(MIS_NEED_DESP, "收集到雪白猪尾 5个(深蓝1179,371),粉红猪尾 5个(加纳1950,2563),豪猪短尾 5个(加纳1384,3065),粗糙的猪尾 5个(加纳910,2971),变异猪蹄 40 深蓝1455,560)及 强壮猪蹄 40(深蓝2266,590).")
--	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
--	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
--	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
--	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
--	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
--	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)
--
--	
--	
--	MisHelpTalk("<t>及早回来复命,我会给您最好的犒赏")
--	MisResultTalk("<t>这个神秘的幸运猪宝箱就是我要送给你的奖赏了,我有很多事需要帮忙,你可以经常过来找我.")
--
--	MisResultCondition(HasMission, 1452)
--	MisResultCondition(NoRecord,1452)
--	MisResultCondition(HasItem, 4325, 5)
--	MisResultCondition(HasItem, 1680, 5)
--	MisResultCondition(HasItem, 4433, 5)
--	MisResultCondition(HasItem, 4357, 5)
--	MisResultCondition(HasItem, 4461, 40)
--	MisResultCondition(HasItem, 4462, 40)
--
--	
--	
--	MisResultAction(TakeItem, 4325, 5 )
--	MisResultAction(TakeItem, 1680, 5 )
--	MisResultAction(TakeItem, 4433, 5 )
--	MisResultAction(TakeItem, 4357, 5 )
--	MisResultAction(TakeItem, 4461, 40 )
--	MisResultAction(TakeItem, 4462, 40 )
--
--	
--	
--	MisResultAction(GiveItem, 2909,1,4)------------给幸运猪宝箱
--	MisResultAction(ClearMission, 1452)
--	MisResultAction(SetRecord, 1452)
--	MisResultAction(ClearRecord, 1452)---------------可以反复接
--	MisResultBagNeed(1)
--	
--
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4325)	
--	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
--	RegCurTrigger( 14521 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1680)	
--	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
--	RegCurTrigger( 14522 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4433)	
--	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
--	RegCurTrigger( 14523 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4357)	
--	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
--	RegCurTrigger( 14524 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4461)	
--	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
--	RegCurTrigger( 14525 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4462)	
--	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
--	RegCurTrigger( 14526 )

-------------------------------------------------乱斗英雄----------海盗·德克	--------水手
	DefineMission (5673, "梦幻双子之乱斗英雄", 1163)
	
	MisBeginTalk("<t>双子座的人,手艺十分灵巧,在各方面也都能表现出自己的才能.这是属于你的梦幻星座吗?")

	MisBeginCondition(NoMission,1163)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1163)
	MisBeginAction(AddMission,1163)
	MisCancelAction(ClearMission, 1163)
	
	MisNeed(MIS_NEED_DESP, "获得5点乱斗点数")
	MisHelpTalk("<t>乱斗点数可以从乱斗白银获得!")
	MisResultTalk("<t>看得出你注定是一个为战斗而生的人.")

	MisResultCondition(HasMission, 1163)
	MisResultCondition(NoRecord,1163)
	MisResultCondition(HasFightingPoint,5 )
	MisResultAction(TakeFightingPoint, 5 )
	MisResultAction(ClearMission, 1163)
	MisResultAction(SetRecord,  1163 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------海盗·德克	--------水手
	DefineMission (5674, "梦幻双子之名声英雄", 1164)
	
	MisBeginTalk("<t>朋友你好,我想让你知道我是一个对自己有要求的人．所以梦幻双子宫对你的要求也更高一些. ")

	MisBeginCondition(NoMission,1164)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1164)
	MisBeginAction(AddMission,1164)
	MisCancelAction(ClearMission, 1164)
	
	MisNeed(MIS_NEED_DESP, "获得2000点名声点数")
	MisHelpTalk("<t>看什么看,还不走?你以为2000点名声很好混吗?")
	MisResultTalk("<t>这枚名声勋章是用来见证英雄的.")

	MisResultCondition(HasMission, 1164)
	MisResultCondition(NoRecord,1164)
	MisResultCondition(HasCredit,2000 )
	MisResultAction(TakeCredit, 2000 )
	MisResultAction(ClearMission, 1164)
	MisResultAction(SetRecord,  1164 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------海盗·德克	---------水手
	DefineMission (5741, "梦幻双子之等级英雄", 1165)
	
	MisBeginTalk("<t>勇敢的朋友,让我看到你非凡的能力吧,向我证明你只比我差一点,哈哈... ")

	MisBeginCondition(NoMission,1165)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1165)
	MisBeginAction(AddMission,1165)
	MisCancelAction(ClearMission, 1165)
	
	MisNeed(MIS_NEED_DESP, "等级达到60级")
	MisHelpTalk("<t>当然,60级对我来说不成问题.")
	MisResultTalk("<t>不得不承认,你的确只比我略差一筹而已,这枚等级勋章是你的了.")

	MisResultCondition(HasMission, 1165)
	MisResultCondition(NoRecord,1165)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1165)
	MisResultAction(SetRecord,  1165 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------海盗·德克	----------水手
	DefineMission (5742, "梦幻双子之荣誉英雄", 1166)
	
	MisBeginTalk("<t>传说中海盗世界最伟大的荣誉之子就是我..我的祖先,我因此受到广大海盗同行的尊敬,你要以我为榜样啊. ")

	MisBeginCondition(NoMission,1166)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1166)
	MisBeginAction(AddMission,1166)
	MisCancelAction(ClearMission, 1166)
	
	MisNeed(MIS_NEED_DESP, "获得500点荣誉点数")
	MisHelpTalk("<t>去为荣誉而战吧!")
	MisResultTalk("<t>你是个很不错的荣誉之子.")

	MisResultCondition(HasMission, 1166)
	MisResultCondition(NoRecord,1166)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1166)
	MisResultAction(SetRecord,  1166 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------海盗·德克	------------水手
	DefineMission (5677, "梦幻双子之采集大使", 1167)
	
	MisBeginTalk("<t>采集勋章是赠与那些洞察力很强的人的礼物,有信心的话就去试试吧. ")

	MisBeginCondition(NoMission,1167)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1167)
	MisBeginAction(AddMission,1167)
	MisBeginAction(AddTrigger, 11671, TE_GETITEM, 1346, 10 )---------------血腥的蝌蚪血10
	MisBeginAction(AddTrigger, 11672, TE_GETITEM, 4526, 10 )--------------- 生锈的长矛10
	MisBeginAction(AddTrigger, 11673, TE_GETITEM, 1608, 10 )-------------动物皮毛10--------
	MisBeginAction(AddTrigger, 11674, TE_GETITEM, 4495, 1 )--------------山贼腰带1个
	MisBeginAction(AddTrigger, 11675, TE_GETITEM, 1612, 20 )--------------锋利的角20个
	MisBeginAction(AddTrigger, 11676, TE_GETITEM, 1140, 20 )-------------船只喷射器LV1 20个
	MisBeginAction(AddTrigger, 11677, TE_GETITEM, 3094, 5 )--------------努力增幅器5个
	MisCancelAction(ClearMission, 1167)
	

	MisNeed(MIS_NEED_ITEM, 1346, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4526, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 1608, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 4495, 1, 31, 1 )
	MisNeed(MIS_NEED_ITEM, 1612, 20, 32, 20 )
	MisNeed(MIS_NEED_ITEM, 1140, 20, 52, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 5, 72, 5 )
	

	MisHelpTalk("<t>不要以为很容易,快去吧")
	MisResultTalk("<t>这些东西让你很伤脑筋吧,记住,这世界上所有的东西都有自己的价值,不要总是急需的时候才想起来去留意.")

	MisResultCondition(HasMission, 1167)
	MisResultCondition(NoRecord,1167)
	MisResultCondition(HasItem, 1346, 10 )
	MisResultCondition(HasItem, 4526, 10 )
	MisResultCondition(HasItem, 1608, 10 )
	MisResultCondition(HasItem, 4495, 1 )
	MisResultCondition(HasItem, 1612, 20 )
	MisResultCondition(HasItem, 1140, 20 )
	MisResultCondition(HasItem, 3094, 5 )


	MisResultAction(TakeItem, 1346, 10 )
	MisResultAction(TakeItem, 4526, 10 )
	MisResultAction(TakeItem, 1608, 10 )
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(TakeItem, 1612, 20 )
	MisResultAction(TakeItem, 1140, 20 )
	MisResultAction(TakeItem, 3094, 5 )
	
	MisResultAction(ClearMission, 1167)
	MisResultAction(SetRecord,  1167 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1167, 1, 10 )
	RegCurTrigger( 11671 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1167, 11, 10 )
	RegCurTrigger( 11672 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1167, 21, 10 )
	RegCurTrigger( 11673 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1167, 31, 1 )
	RegCurTrigger( 11674 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1167, 36, 20 )
	RegCurTrigger( 11675 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1140)	
	TriggerAction( 1, AddNextFlag, 1167, 37, 20 )
	RegCurTrigger( 11676 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1167, 87, 5 )
	RegCurTrigger( 11677 )


	----------------------------------------------------------双子末日----------海盗·德克
	DefineMission( 5678, "梦幻双子之双子末日", 1168 )
	MisBeginTalk("<t>BOSS勋章是最具英雄主义意味的奖章,你要的话就去杀掉可怕的双子守护者.")
				
	MisBeginCondition(NoMission, 1168)
	MisBeginCondition(HasRecord,1162)
	MisBeginCondition(NoRecord,1168)
	MisBeginAction(AddMission,1168)
	MisBeginAction(AddTrigger, 11681, TE_KILL, 1039, 1)---双子守护者
	
	MisCancelAction(ClearMission, 1168)

	MisNeed(MIS_NEED_DESP, "捕杀双子守护者魔女之海(2527, 2467)!")
	MisNeed(MIS_NEED_KILL, 1039,1, 10, 1)
	

	MisResultTalk("<t>双头四臂的怪物是上神不小心的杰作.你永远都无法真正的杀死它们!")
	MisHelpTalk("<t>听说是只双头怪,不同以往,你要小心.")
	MisResultCondition(HasMission,  1168)
	MisResultCondition(HasFlag, 1168, 10)
	MisResultCondition(NoRecord , 1168)
	MisResultAction(GiveItem, 1880, 1, 4 )
	MisResultAction(ClearMission,  1168)
	MisResultAction(SetRecord,  1168 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1039)	
	TriggerAction( 1, AddNextFlag, 1168, 10, 1 )
	RegCurTrigger( 11681 )

-------------------------------------------------乱斗英雄----------海盗·德克	
	DefineMission (5679, "梦幻双子之乱斗英雄", 1169)
	
	MisBeginTalk("<t>双子座的人,手艺十分灵巧,在各方面也都能表现出自己的才能.这是属于你的梦幻星座吗?")

	MisBeginCondition(NoMission,1169)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1169)
	MisBeginAction(AddMission,1169)
	MisCancelAction(ClearMission, 1169)
	
	MisNeed(MIS_NEED_DESP, "获得10点乱斗点数")
	MisHelpTalk("<t>乱斗点数可以从乱斗白银获得!")
	MisResultTalk("<t>看得出你注定是一个为战斗而生的人.")

	MisResultCondition(HasMission, 1169)
	MisResultCondition(NoRecord,1169)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1169)
	MisResultAction(SetRecord,  1169 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------海盗·德克	
	DefineMission (5680, "梦幻双子之名声英雄", 1170)
	
	MisBeginTalk("<t>朋友你好,我想让你知道我是一个对自己有要求的人．所以梦幻双子宫对你的要求也更高一些.")

	MisBeginCondition(NoMission,1170)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1170)
	MisBeginAction(AddMission,1170)
	MisCancelAction(ClearMission, 1170)
	
	MisNeed(MIS_NEED_DESP, "获得5000点名声点数")
	MisHelpTalk("<t>看什么看,还不走?你以为5000点名声很好混吗?")
	MisResultTalk("<t>这枚名声勋章是用来见证英雄的.")

	MisResultCondition(HasMission, 1170)
	MisResultCondition(NoRecord,1170)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit,5000  )
	MisResultAction(ClearMission, 1170)
	MisResultAction(SetRecord,  1170 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------海盗·德克	
	DefineMission (5681, "梦幻双子之等级英雄", 1171)
	
	MisBeginTalk("<t>勇敢的朋友,让我看到你非凡的能力吧,向我证明你只比我差一点,哈哈... ")

	MisBeginCondition(NoMission,1171)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1171)
	MisBeginAction(AddMission,1171)
	MisCancelAction(ClearMission, 1171)
	
	MisNeed(MIS_NEED_DESP, "等级达到65级")
	MisHelpTalk("<t>当然,65级对我来说不成问题.")
	MisResultTalk("<t>不得不承认,你的确只比我略差一筹而已,这枚等级勋章是你的了.")

	MisResultCondition(HasMission, 1171)
	MisResultCondition(NoRecord,1171)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1171)
	MisResultAction(SetRecord,  1171 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------海盗·德克	
	DefineMission (5682, "梦幻双子之荣誉英雄", 1172)
	
	MisBeginTalk("<t>传说中海盗世界最伟大的荣誉之子就是我..我的祖先,我因此受到广大海盗同行的尊敬,你要以我为榜样啊.")

	MisBeginCondition(NoMission,1172)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1172)
	MisBeginAction(AddMission,1172)
	MisCancelAction(ClearMission, 1172)
	
	MisNeed(MIS_NEED_DESP, "获得700点荣誉点数")
	MisHelpTalk("<t>去为荣誉而战吧!")
	MisResultTalk("<t>你是个很不错的荣誉之子.")

	MisResultCondition(HasMission, 1172)
	MisResultCondition(NoRecord,1172)
	MisResultCondition(HasHonorPoint,700 )
	MisResultAction(TakeHonorPoint, 700 )
	MisResultAction(ClearMission, 1172)
	MisResultAction(SetRecord,  1172 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------海盗·德克	
	DefineMission (5683, "梦幻双子之采集大使", 1173)
	
	MisBeginTalk("<t>采集勋章是赠与那些洞察力很强的人的礼物,有信心的话就去试试吧. ")

	MisBeginCondition(NoMission,1173)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1173)
	MisBeginAction(AddMission,1173)
	MisBeginAction(AddTrigger, 11731, TE_GETITEM, 1346, 15 )-------------------血腥的蝌蚪血15
	MisBeginAction(AddTrigger, 11732, TE_GETITEM, 4526, 15 )-------------------生锈的长矛15          
	MisBeginAction(AddTrigger, 11733, TE_GETITEM, 1608, 15 )-----------------动物皮毛15               
	MisBeginAction(AddTrigger, 11734, TE_GETITEM, 4495, 2 )----------------山贼腰带2个               
	MisBeginAction(AddTrigger, 11735, TE_GETITEM, 1612, 30)------------------锋利的角30个            
	MisBeginAction(AddTrigger, 11736, TE_GETITEM, 2724, 20 )-----------------船只喷射器LV2 20个                  
	MisBeginAction(AddTrigger, 11737, TE_GETITEM, 3094, 10 )------------------努力增幅器10个          
	MisCancelAction(ClearMission, 1173)
	

	MisNeed(MIS_NEED_ITEM, 1346, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4526, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 1608, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4495,  2, 46, 2 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 48, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 20, 78, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 98, 10 )
	

	MisHelpTalk("<t>不要以为很容易,快去吧")
	MisResultTalk("<t>这些东西让你很伤脑筋吧,记住,这世界上所有的东西都有自己的价值,不要总是急需的时候才想起来去留意..")

	MisResultCondition(HasMission, 1173)
	MisResultCondition(NoRecord,1173)
	MisResultCondition(HasItem, 1346, 15 )
	MisResultCondition(HasItem, 4526, 15 )
	MisResultCondition(HasItem, 1608, 15 )
	MisResultCondition(HasItem, 4495, 2 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 20 )
	MisResultCondition(HasItem, 3094, 10 )


	MisResultAction(TakeItem, 1346, 15 )
	MisResultAction(TakeItem, 4526, 15 )
	MisResultAction(TakeItem, 1608, 15 )
	MisResultAction(TakeItem, 4495, 2 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 20 )
	MisResultAction(TakeItem, 3094, 10 )

	MisResultAction(ClearMission, 1173)
	MisResultAction(SetRecord,  1173 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1173, 1, 15 )
	RegCurTrigger( 11731 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1173, 16, 15 )
	RegCurTrigger( 11732 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1173, 31, 15 )
	RegCurTrigger( 11733 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1173, 46, 2 )
	RegCurTrigger( 11734 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1173, 48, 30 )
	RegCurTrigger( 11735 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1173,78, 20 )
	RegCurTrigger( 11736 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1173, 98, 10 )
	RegCurTrigger( 11737 )


-------------------------------------------------乱斗英雄----------海盗·德克	
	DefineMission (5684, "梦幻双子之乱斗英雄", 1174)
	
	MisBeginTalk("<t>双子座的人,手艺十分灵巧,在各方面也都能表现出自己的才能.这是属于你的梦幻星座吗? ")

	MisBeginCondition(NoMission,1174)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1174)
	MisBeginAction(AddMission,1174)
	MisCancelAction(ClearMission, 1174)
	
	MisNeed(MIS_NEED_DESP, "获得15点乱斗点数")
	MisHelpTalk("<t>乱斗点数可以从乱斗白银获得!")
	MisResultTalk("<t>看得出你注定是一个为战斗而生的人.")

	MisResultCondition(HasMission, 1174)
	MisResultCondition(NoRecord,1174)
	MisResultCondition(HasFightingPoint,15 )
	MisResultAction(TakeFightingPoint, 15 )
	MisResultAction(ClearMission, 1174)
	MisResultAction(SetRecord,  1174 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------海盗·德克	
	DefineMission (5685, "梦幻双子之名声英雄", 1175)
	
	MisBeginTalk("<t>朋友你好,我想让你知道我是一个对自己有要求的人．所以梦幻双子宫对你的要求也更高一些.")

	MisBeginCondition(NoMission,1175)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1175)
	MisBeginAction(AddMission,1175)
	MisCancelAction(ClearMission, 1175)
	
	MisNeed(MIS_NEED_DESP, "获得8000点名声点数")
	MisHelpTalk("<t>看什么看,还不走?你以为8000点名声很好混吗?")
	MisResultTalk("<t>这枚名声勋章是用来见证英雄的.")

	MisResultCondition(HasMission, 1175)
	MisResultCondition(NoRecord,1175)
	MisResultCondition(HasCredit,8000 )
	MisResultAction(TakeCredit, 8000 )
	MisResultAction(ClearMission, 1175)
	MisResultAction(SetRecord,  1175 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------海盗·德克	
	DefineMission (5686, "梦幻双子之等级英雄", 1176)
	
	MisBeginTalk("<t>勇敢的朋友,让我看到你非凡的能力吧,向我证明你只比我差一点,哈哈....")

	MisBeginCondition(NoMission,1176)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1176)
	MisBeginAction(AddMission,1176)
	MisCancelAction(ClearMission, 1176)
	
	MisNeed(MIS_NEED_DESP, "等级达到70级")
	MisHelpTalk("<t>当然,70级对我来说不成问题.")
	MisResultTalk("<t>不得不承认,你的确只比我略差一筹而已,这枚等级勋章是你的了.")

	MisResultCondition(HasMission, 1176)
	MisResultCondition(NoRecord,1176)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1176)
	MisResultAction(SetRecord,  1176 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------海盗·德克	
	DefineMission (5687, "梦幻双子之荣誉英雄", 1177)
	
	MisBeginTalk("<t>传说中海盗世界最伟大的荣誉之子就是我..我的祖先,我因此受到广大海盗同行的尊敬,你要以我为榜样啊.")

	MisBeginCondition(NoMission,1177)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1177)
	MisBeginAction(AddMission,1177)
	MisCancelAction(ClearMission, 1177)
	
	MisNeed(MIS_NEED_DESP, "获得1000点荣誉点数")
	MisHelpTalk("<t>去为荣誉而战吧!")
	MisResultTalk("<t>你是个很不错的荣誉之子.")

	MisResultCondition(HasMission, 1177)
	MisResultCondition(NoRecord,1177)
	MisResultCondition(HasHonorPoint,1000 )
	MisResultAction(TakeHonorPoint, 1000 )
	MisResultAction(ClearMission, 1177)
	MisResultAction(SetRecord,  1177 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------海盗·德克	
	DefineMission (5688, "梦幻双子之采集大使", 1178)
	
	MisBeginTalk("<t>采集勋章是赠与那些洞察力很强的人的礼物,有信心的话就去试试吧. ")

	MisBeginCondition(NoMission,1178)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1178)
	MisBeginAction(AddMission,1178)
	MisBeginAction(AddTrigger, 11781, TE_GETITEM, 1346, 20 )---------------------血腥的蝌蚪血20 
	MisBeginAction(AddTrigger, 11782, TE_GETITEM, 3433, 1 )---------------------费诺符石1个          
	MisBeginAction(AddTrigger, 11783, TE_GETITEM, 4495, 3 )-------------------山贼腰带3个               
	MisBeginAction(AddTrigger, 11784, TE_GETITEM, 1612, 30 )------------------锋利的角30个             
	MisBeginAction(AddTrigger, 11785, TE_GETITEM, 2724, 30 )--------------------船只喷射器LV2 30个             
	MisBeginAction(AddTrigger, 11786, TE_GETITEM, 3094, 30 )-------------------努力增幅器30个                              
	MisCancelAction(ClearMission, 1178)						                                     
	

	MisNeed(MIS_NEED_ITEM, 1346, 20, 1, 20 )
	MisNeed(MIS_NEED_ITEM, 3433, 1, 21, 1 )
	MisNeed(MIS_NEED_ITEM, 4495, 3, 22, 3 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 25, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 30, 55, 30)
	MisNeed(MIS_NEED_ITEM, 3094, 30, 85, 30 )


	MisHelpTalk("<t>不要以为很容易,快去吧")
	MisResultTalk("<t>这些东西让你很伤脑筋吧,记住,这世界上所有的东西都有自己的价值,不要总是急需的时候才想起来去留意.")

	MisResultCondition(HasMission, 1178)
	MisResultCondition(NoRecord,1178)
	MisResultCondition(HasItem, 1346, 20 )
	MisResultCondition(HasItem, 3433, 1 )
	MisResultCondition(HasItem, 4495, 3 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 30 )
	MisResultCondition(HasItem, 3094, 30 )


	MisResultAction(TakeItem, 1346, 20 )
	MisResultAction(TakeItem, 3433, 1 )
	MisResultAction(TakeItem, 4495, 3 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 30 )
	MisResultAction(TakeItem, 3094, 30 )

	MisResultAction(ClearMission, 1178)
	MisResultAction(SetRecord,  1178 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1178, 1, 20 )
	RegCurTrigger( 11781 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3433)	
	TriggerAction( 1, AddNextFlag, 1178, 21, 1 )
	RegCurTrigger( 11782 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1178, 22, 3 )
	RegCurTrigger( 11783 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1178, 25, 30 )
	RegCurTrigger( 11784 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1178, 55, 30 )
	RegCurTrigger( 11785 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1178, 85, 30 )
	RegCurTrigger( 11786 )

	----------------------------------------------------------社交大使----------海盗·德克
	DefineMission( 5689, "梦幻双子之社交大使", 1179 )
	MisBeginTalk("<t>有人说我喜欢吹牛,难道这是我的错吗?有几个男人不是这样?其实我还是很有名望的,那些崇拜我的朋友们可以作证.正好我要在圣诞节举办派对,如果你想要探索勋章就帮我去邀请他们吧.")
				
	MisBeginCondition(NoMission, 1179)
	MisBeginCondition(NoRecord,1179)
	MisBeginCondition(HasRecord, 1162)-------------------新的id,最后的id
	MisBeginAction(AddMission,1179)
	MisCancelAction(ClearMission, 1179)

	MisNeed(MIS_NEED_DESP, "找雷霆堡的护卫·尼松(711,1414)聊聊")
	
	MisHelpTalk("<t>快去吧,时间总是比想象的过得快.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使-----------------护卫·尼松

	DefineMission(5690, "社交大使", 1179, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>海盗·德克?我认识他,他吹牛的本事我是早有耳闻的.")
	MisResultCondition(NoRecord, 1179)
	MisResultCondition(HasMission,1179)
	MisResultAction(ClearMission,1179)
	MisResultAction(SetRecord, 1179)

	----------------------------------------------------------社交大使2----------护卫·尼松
	DefineMission( 5691, "社交大使2", 1180 )
	MisBeginTalk("<t>我刚刚18岁的时候很向往海盗生活,后来认识了德克就放弃了这个梦想...他的派对我能不能参加还要看有没有假期,我可没有迈克那么悠闲")
				
	MisBeginCondition(NoMission, 1180)
	MisBeginCondition(NoRecord,1180)
	MisBeginCondition(HasRecord, 1179)
	MisBeginAction(AddMission,1180)
	MisCancelAction(ClearMission, 1180)

	MisNeed(MIS_NEED_DESP, "找沙岚的巡逻兵·迈克(958,3549)聊聊")
	
	MisHelpTalk("<t>在长官眼皮底下当差就是不那么悠闲.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使2-------------巡逻兵·迈克
	DefineMission(5692, "社交大使2", 1180, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好!我队长不在,你是找我吗?")
	MisResultCondition(NoRecord, 1180)
	MisResultCondition(HasMission,1180)
	MisResultAction(ClearMission,1180)
	MisResultAction(SetRecord, 1180)

	----------------------------------------------------------社交大使3----------巡逻兵·迈克
	DefineMission( 5693, "社交大使3", 1181 )
	MisBeginTalk("<t>德克的圣诞派对?很不错,我已经度过了很多个孤独无聊的圣诞节了.不过我已经约过修司了,不如你帮我问一下修司的意见")
				
	MisBeginCondition(NoMission, 1181)
	MisBeginCondition(NoRecord,1181)
	MisBeginCondition(HasRecord, 1180)
	MisBeginAction(AddMission,1181)
	MisCancelAction(ClearMission, 1181)

	MisNeed(MIS_NEED_DESP, "找骷髅营地补给站的修司(2138,545)聊聊")
	
	MisHelpTalk("<t>说实话我对德克已经没什么印象了,呵呵..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使3--------修司
	DefineMission(5694, "社交大使3", 1181, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>参加德克的圣诞派对是个极好的主意,虽然我不喜欢德克,但是我喜欢派对上的姑娘.")
	MisResultCondition(NoRecord, 1181)
	MisResultCondition(HasMission,1181)
	MisResultAction(ClearMission,1181)
	MisResultAction(SetRecord, 1181)



	----------------------------------------------------------社交大使4----------修司
	DefineMission( 5695, "社交大使4", 1182 )
	MisBeginTalk("<t>如果你会去德尔维平原请帮忙告诉可怜的马尔斯,我知道一种植物可以有效的驱除章鱼汁.")
				
	MisBeginCondition(NoMission, 1182)
	MisBeginCondition(NoRecord,1182)
	MisBeginCondition(HasRecord, 1181)
	MisBeginAction(AddMission,1182)
	MisCancelAction(ClearMission, 1182)

	MisNeed(MIS_NEED_DESP, "找德尔维平原的巡逻兵·马尔斯(2065,2732)聊聊")
	
	MisHelpTalk("<t>他对这个消息会很感兴趣的.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使4--------巡逻兵·马尔斯
	DefineMission(5696, "社交大使4", 1182, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>是吗?有这种植物,那他为什么不让你带一些给我,看来是有交换条件的.这个家伙真是小气啊.")
	MisResultCondition(NoRecord, 1182)
	MisResultCondition(HasMission,1182)
	MisResultAction(ClearMission,1182)
	MisResultAction(SetRecord, 1182)


	----------------------------------------------------------社交大使5----------巡逻兵·马尔斯
	DefineMission( 5697, "社交大使5", 1183 )
	MisBeginTalk("<t>你说德克?我与德克相识多年了,他是一个很不错的朋友,虽然爱吹牛,却是一个很真诚的朋友.我一定会去参加他的派对.我想你会愿意帮我通知俄克琉西斯,他的真诚意识太差,我要带他去接受一点教育.")
				
	MisBeginCondition(NoMission, 1183)
	MisBeginCondition(NoRecord,1183)
	MisBeginCondition(HasRecord, 1182)
	MisBeginAction(AddMission,1183)
	MisCancelAction(ClearMission, 1183)

	MisNeed(MIS_NEED_DESP, "找南部沙漠的俄克琉西斯(1131,3153)聊聊")
	
	MisHelpTalk("<t>俄克琉西斯是个视财如命的小孩,应该向德克学习.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使5--------俄克琉西斯
	DefineMission(5698, "社交大使5", 1183, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我视财如命?你问他不发军饷给他他会同意吗?")
	MisResultCondition(NoRecord, 1183)
	MisResultCondition(HasMission,1183)
	MisResultAction(ClearMission,1183)
	MisResultAction(SetRecord, 1183)


	----------------------------------------------------------社交大使6----------俄克琉西斯
	DefineMission( 5699, "社交大使6", 1184 )
	MisBeginTalk("<t>其实我这样爱钱也有我的原因,追求梦中情人是不能只靠语言的,奈奈是个可爱的女孩,我不要她受苦.不知道她有没有想我.")
				
	MisBeginCondition(NoMission, 1184)
	MisBeginCondition(NoRecord,1184)
	MisBeginCondition(HasRecord, 1183)
	MisBeginAction(AddMission,1184)
	MisCancelAction(ClearMission, 1184)

	MisNeed(MIS_NEED_DESP, "找奈奈(798,369)聊聊")
	
	MisHelpTalk("<t>奈奈是一个气质优雅的美丽姑娘.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使6--------奈奈
	DefineMission(5700, "社交大使6", 1184, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>虽然男人应该有宽广的胸怀和雄厚的资本,但关心我才是最重要的.")
	MisResultCondition(NoRecord, 1184)
	MisResultCondition(HasMission,1184)
	MisResultAction(ClearMission,1184)
	MisResultAction(SetRecord, 1184)


	----------------------------------------------------------社交大使7----------奈奈
	DefineMission( 5701, "社交大使7", 1185 )
	MisBeginTalk("<t>我是清纯不懂爱情的小女生,所有关于爱情的理想的和现实的观念我都是通过古博拉的书了解到的.")
				
	MisBeginCondition(NoMission, 1185)
	MisBeginCondition(NoRecord,1185)
	MisBeginCondition(HasRecord, 1184)
	MisBeginAction(AddMission,1185)
	MisCancelAction(ClearMission, 1185)

	MisNeed(MIS_NEED_DESP, "找加纳的古博拉(1507,3105)聊聊")
	
	MisHelpTalk("<t>我从没见过这位文学大师,但是我猜想他一定是一位成熟稳重的优雅男子.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使7--------古博拉
	DefineMission(5702, "社交大使7", 1185, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的忠实读者奈奈?我的读者太多了.不过她有这个欣赏水准让我对这个世界重燃信心了.")
	MisResultCondition(NoRecord, 1185)
	MisResultCondition(HasMission,1185)
	MisResultAction(ClearMission,1185)
	MisResultAction(SetRecord, 1185)


	----------------------------------------------------------社交大使8----------古博拉
	DefineMission( 5703, "社交大使8", 1186 )
	MisBeginTalk("<t>其实我原本是奈奈想象的那种男子,是那次海难后飘到海岛上造成的,我和德克被莫名其妙的互换了外貌.不知道这个家伙懂不懂得保养,我那俊美的脸啊,是该去看一下了.你不信?波尔可以作证的.")
				
	MisBeginCondition(NoMission, 1186)
	MisBeginCondition(NoRecord,1186)
	MisBeginCondition(HasRecord, 1185)
	MisBeginAction(AddMission,1186)
	MisCancelAction(ClearMission, 1186)

	MisNeed(MIS_NEED_DESP, "找冰雪岛海港指挥·波尔(2372,737)聊聊")
	
	MisHelpTalk("<t>我好怀念我的脸啊!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使8--------海港指挥·波尔
	DefineMission(5704, "社交大使8", 1186, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>古博拉和德克换脸?不记得了,每天经过这里的人都很多.说实话他们的脸换不换都看不出什么美感,也就谈不上谁受益.呵呵")
	MisResultCondition(NoRecord, 1186)
	MisResultCondition(HasMission,1186)
	MisResultAction(ClearMission,1186)
	MisResultAction(SetRecord, 1186)


	----------------------------------------------------------社交大使9----------海港指挥·波尔
	DefineMission( 5705, "社交大使9", 1187 )
	MisBeginTalk("<t>疤痕是男人的徽章,酒精是海盗的伙伴,有酒我是不会错过的.不知道我的外国友人东方海盗·铃佐田山会不会参加,虽然他讲话很少有人能听懂.哪像可爱的优优...")
				
	MisBeginCondition(NoMission, 1187)
	MisBeginCondition(NoRecord,1187)
	MisBeginCondition(HasRecord, 1186)
	MisBeginAction(AddMission,1187)
	MisCancelAction(ClearMission, 1187)

	MisNeed(MIS_NEED_DESP, "找阿兰比斯冰原的草莓优优(1010,350)聊聊")
	
	MisHelpTalk("<t>优优简直是冰雪中盛开的玫瑰.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使9--------草莓优优
	DefineMission(5706, "社交大使9", 1187, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我哪有波尔爷爷说得那么可爱呢?是因为他喜欢我才越发觉得我可爱.")
	MisResultCondition(NoRecord, 1187)
	MisResultCondition(HasMission,1187)
	MisResultAction(ClearMission,1187)
	MisResultAction(SetRecord, 1187)

	----------------------------------------------------------社交大使10----------草莓优优
	DefineMission( 5707, "社交大使10", 1188 )
	MisBeginTalk("<t>德克是有名的海盗吗?他也邀请了我?那我要为他准备礼物了...送什么给他呢?有办法了,不如你帮我问问瓦萨法尔,他那有很有趣的纸牌.我想海盗都会喜欢纸牌游戏的.")
				
	MisBeginCondition(NoMission, 1188)
	MisBeginCondition(NoRecord,1188)
	MisBeginCondition(HasRecord, 1187)
	MisBeginAction(AddMission,1188)
	MisCancelAction(ClearMission, 1188)

	MisNeed(MIS_NEED_DESP, "找贝比平原的瓦萨法尔(1136,2778)聊聊")
	
	MisHelpTalk("<t>不知道瓦萨法尔肯不肯把纸牌送给我呢...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使10--------瓦萨法尔
	DefineMission(5708, "社交大使10", 1188, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>优优也注意到我的才华了?好有成就感啊!")
	MisResultCondition(NoRecord, 1188)
	MisResultCondition(HasMission,1188)
	MisResultAction(ClearMission,1188)
	MisResultAction(SetRecord, 1188)

	----------------------------------------------------------社交大使11----------瓦萨法尔
	DefineMission( 5709, "社交大使11", 1189 )
	MisBeginTalk("<t>我不能让优优这样的小女孩一个人去参加海盗的Party,我会带着礼物陪她一起去的.说到圣诞节使我想起一件事,由于原料紧缺,年底要交给交易员·米索亚斯的货物可能不会按时送到了,如果你路过鸣沙岛代我说明一下好吗?我相信你.")
				
	MisBeginCondition(NoMission, 1189)
	MisBeginCondition(NoRecord,1189)
	MisBeginCondition(HasRecord, 1188)
	MisBeginAction(AddMission,1189)
	MisCancelAction(ClearMission, 1189)

	MisNeed(MIS_NEED_DESP, "找鸣沙岛的交易员·米索亚斯(1739,3748)聊聊")
	
	MisHelpTalk("<t>你的样子看起来就很值得托付.交易员·米索亚斯在鸣沙岛.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使11--------交易员·米索亚斯
	DefineMission(5710, "社交大使11", 1189, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>又要延时!瓦萨法尔为了可爱的女孩什么都可以放弃,甚至是我这个好朋友的嘱托...")
	MisResultCondition(NoRecord, 1189)
	MisResultCondition(HasMission,1189)
	MisResultAction(ClearMission,1189)
	MisResultAction(SetRecord, 1189)

	----------------------------------------------------------社交大使12----------交易员·米索亚斯
	DefineMission( 5711, "社交大使12", 1190 )
	MisBeginTalk("<t>这样看来年底我也没有太多事可以做了.我会去参加德克的宴会的,很久没去拜访过朋友了.古博拉也去吗?太好了,如果饰品商人·瑞恩也能参加,那将是一个完美的圣诞节.")
				
	MisBeginCondition(NoMission, 1190)
	MisBeginCondition(NoRecord,1190)
	MisBeginCondition(HasRecord, 1189)
	MisBeginAction(AddMission,1190)
	MisCancelAction(ClearMission, 1190)

	MisNeed(MIS_NEED_DESP, "找冰极补给站的饰品商人·瑞恩(2673,657)聊聊")
	
	MisHelpTalk("<t>如果瑞恩不去的话我会觉得遗憾的,希望你可以帮我.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使12--------饰品商人·瑞恩
	DefineMission(5712, "社交大使12", 1190, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哈哈哈,米索亚斯这个家伙总是说这些让人感动的话.讨厌拉.")
	MisResultCondition(NoRecord, 1190)
	MisResultCondition(HasMission,1190)
	MisResultAction(ClearMission,1190)
	MisResultAction(SetRecord, 1190)


	----------------------------------------------------------社交大使13----------饰品商人·瑞恩
	DefineMission( 5713, "社交大使13", 1191 )
	MisBeginTalk("<t>可能是多年经营珠宝饰品使我的性格也女性化了.为了让自己始终保持男子的阳刚,多年来我始终与男人味十足的卡休·碎石保持联络.")
				
	MisBeginCondition(NoMission, 1191)
	MisBeginCondition(NoRecord,1191)
	MisBeginCondition(HasRecord, 1190)
	MisBeginAction(AddMission,1191)
	MisCancelAction(ClearMission, 1191)

	MisNeed(MIS_NEED_DESP, "找卡尔加德补给站的卡休·碎石(626,2100)聊聊")
	
	MisHelpTalk("<t>你可以顺便到卡尔加德补给站转转,那里的树会走路的.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使13--------卡休·碎石
	DefineMission(5714, "社交大使13", 1191, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>这里不是一个适合人类居住的地方,尤其是当你不喜欢你的邻居时,这种感觉就更强烈.")
	MisResultCondition(NoRecord, 1191)
	MisResultCondition(HasMission,1191)
	MisResultAction(ClearMission,1191)
	MisResultAction(SetRecord, 1191)

	----------------------------------------------------------社交大使14----------卡休·碎石
	DefineMission( 5715, "社交大使14", 1192 )
	MisBeginTalk("<t>有聚会可以参加?虽然还有很久才到圣诞节,但是听到这个消息仍然让我觉得很振奋,至少可以远离某个人.我想交易员·尤卡也想解脱的,不如你去问下他.")
				
	MisBeginCondition(NoMission, 1192)
	MisBeginCondition(NoRecord,1192)
	MisBeginCondition(HasRecord, 1191)
	MisBeginAction(AddMission,1192)
	MisCancelAction(ClearMission, 1192)

	MisNeed(MIS_NEED_DESP, "找真爱岛的交易员·尤卡(2519,2397)聊聊")
	
	MisHelpTalk("<t>真爱岛的地形是心形的,你知道吗?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使14--------交易员·尤卡        
	DefineMission(5716, "社交大使14", 1192, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你和卡休·碎石真是我的救星啊．我在躲我的债主,我承认我不是一个成功的交易员,总是做赔本的生意.最害怕过圣诞节有人逼债了.")
	MisResultCondition(NoRecord, 1192)
	MisResultCondition(HasMission,1192)
	MisResultAction(ClearMission,1192)
	MisResultAction(SetRecord, 1192)

	----------------------------------------------------------社交大使15----------交易员·尤卡
	DefineMission( 5717, "社交大使15", 1193 )
	MisBeginTalk("<t>开私人聚会没有像样的点心可不行,为了那个美好的晚上,我认为你应该帮我们邀请会作美味点心的尤塔里尼.")
				
	MisBeginCondition(NoMission, 1193)
	MisBeginCondition(NoRecord,1193)
	MisBeginCondition(HasRecord, 1192)
	MisBeginAction(AddMission,1193)
	MisCancelAction(ClearMission, 1193)

	MisNeed(MIS_NEED_DESP, "找阿兰比斯补给站的尤塔里尼(1059,661)聊聊")
	
	MisHelpTalk("<t>拜托你了,为了美味的点心.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使15-------- 尤塔里尼
	DefineMission(5718, "社交大使15", 1193, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>那些年轻的聚会邀请我应该是因为美味的点心.")
	MisResultCondition(NoRecord, 1193)
	MisResultCondition(HasMission,1193)
	MisResultAction(ClearMission,1193)
	MisResultAction(SetRecord, 1193)


	----------------------------------------------------------社交大使16----------尤塔里尼
	DefineMission( 5719, "社交大使16", 1194 )
	MisBeginTalk("<t>看见我佝偻的腰杆了吗?我已经不做点心了,废矿补给站的打包人·乎勒达是我的学徒,你去拜托他吧.")
				
	MisBeginCondition(NoMission, 1194)
	MisBeginCondition(NoRecord,1194)
	MisBeginCondition(HasRecord, 1193)
	MisBeginAction(AddMission,1194)
	MisCancelAction(ClearMission, 1194)

	MisNeed(MIS_NEED_DESP, "找废矿补给站的打包人·乎勒达(1907,2798)聊聊")
	
	MisHelpTalk("<t>也该是锻炼他的时候了.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使16-------- 打包人·乎勒达
	DefineMission(5720, "社交大使16", 1194, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的确继承了我老师的精湛技艺,放心吧,包在我身上.")
	MisResultCondition(NoRecord, 1194)
	MisResultCondition(HasMission,1194)
	MisResultAction(ClearMission,1194)
	MisResultAction(SetRecord, 1194)


	----------------------------------------------------------社交大使17----------打包人·乎勒达
	DefineMission( 5721, "社交大使17", 1195 )
	MisBeginTalk("<t>不过我需要一个温柔的助手帮忙.如果米尔米莉不忙的话,他应该是最佳人选.")
				
	MisBeginCondition(NoMission, 1195)
	MisBeginCondition(NoRecord,1195)
	MisBeginCondition(HasRecord, 1194)
	MisBeginAction(AddMission,1195)
	MisCancelAction(ClearMission, 1195)

	MisNeed(MIS_NEED_DESP, "找南部沙漠的米尔米莉(1244,3186)聊聊")
	
	MisHelpTalk("<t>米尔米莉是一个很细心并且很有耐心的女孩.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使17-------- 米尔米莉
	DefineMission(5722, "社交大使17", 1195, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好!欢迎你朋友.我接受乎勒达的赞扬,因为我对工作和生活都是这样认真的.")
	MisResultCondition(NoRecord, 1195)
	MisResultCondition(HasMission,1195)
	MisResultAction(ClearMission,1195)
	MisResultAction(SetRecord, 1195)

	----------------------------------------------------------社交大使18----------米尔米莉
	DefineMission( 5723, "社交大使18", 1196 )
	MisBeginTalk("<t>今天是我来到这片梦幻的南部沙漠一周年的纪念日,要怎么庆祝呢?我想最重要的是要感谢海港指挥·拉米修,是他指引我来到这里的.可是我实在走不开,我现在是职业老师的专职秘书呢.你能体谅我吧.")
				
	MisBeginCondition(NoMission, 1196)
	MisBeginCondition(NoRecord,1196)
	MisBeginCondition(HasRecord, 1195)
	MisBeginAction(AddMission,1196)
	MisCancelAction(ClearMission, 1196)

	MisNeed(MIS_NEED_DESP, "找思思索补给站的海港指挥·拉米修(2297,3723)聊聊")
	
	MisHelpTalk("<t>我热爱我的工作和生活,感谢这片美丽的土地.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使18-------- 海港指挥·拉米修
	DefineMission(5724, "社交大使18", 1196, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>时间过得好快啊.转眼已经一年了,那个小女孩居然还记得我.呵呵....")
	MisResultCondition(NoRecord, 1196)
	MisResultCondition(HasMission,1196)
	MisResultAction(ClearMission,1196)
	MisResultAction(SetRecord, 1196)

	----------------------------------------------------------社交大使19----------海港指挥·拉米修
	DefineMission( 5725, "社交大使19", 1197 )
	MisBeginTalk("<t>时光飞逝,我刚到这里的时候还是一个小伙子.很怀念从前的老朋友.不知道天堂传送使现在过得怎么样了.")
				
	MisBeginCondition(NoMission, 1197)
	MisBeginCondition(NoRecord,1197)
	MisBeginCondition(HasRecord, 1196)
	MisBeginAction(AddMission,1197)
	MisCancelAction(ClearMission, 1197)

	MisNeed(MIS_NEED_DESP, "找天堂传送使(474,1054)聊聊")
	
	MisHelpTalk("<t>他的职位是一个很重要的位置.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使19-------- 天堂传送使
	DefineMission(5726, "社交大使19", 1197, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>不知道天堂上的时光是否也如此流逝无影.")
	MisResultCondition(NoRecord, 1197)
	MisResultCondition(HasMission,1197)
	MisResultAction(ClearMission,1197)
	MisResultAction(SetRecord, 1197)


		----------------------------------------------------------社交大使20----------天堂传送使
	DefineMission( 5727, "社交大使20", 1198 )
	MisBeginTalk("<t>我想今年的圣诞节一定会很美,桑吉还答应送给我一些华丽的烟花呢,不知道他还记不记得了.")
				
	MisBeginCondition(NoMission, 1198)
	MisBeginCondition(NoRecord,1198)
	MisBeginCondition(HasRecord, 1197)
	MisBeginAction(AddMission,1198)
	MisCancelAction(ClearMission, 1198)

	MisNeed(MIS_NEED_DESP, "找交易员·桑吉(1003,1306)聊聊")
	
	MisHelpTalk("<t>谢谢你年轻人.去吧")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使20-------- 交易员·桑吉
	DefineMission(5728, "社交大使20", 1198, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我怎么会忘记呢?他总是帮助别人,我不会让他失望的.")
	MisResultCondition(NoRecord, 1198)
	MisResultCondition(HasMission,1198)
	MisResultAction(ClearMission,1198)
	MisResultAction(SetRecord, 1198)

		----------------------------------------------------------社交大使21----------交易员·桑吉
	DefineMission( 5729, "社交大使21", 1199 )
	MisBeginTalk("<t>恭喜你完成了漫长的社交任务．感恩是每一个热爱生活的人特有的能力,因为拥有它,人们会觉得幸福.不耽误你的时间了,德克在等你了.")
				
	MisBeginCondition(NoMission, 1199)
	MisBeginCondition(NoRecord,1199)
	MisBeginCondition(HasRecord, 1198)
	MisBeginAction(AddMission,1199)
	MisCancelAction(ClearMission, 1199)

	MisNeed(MIS_NEED_DESP, "找沙岚城海盗·德克(794,3669)聊聊")
	
	MisHelpTalk("<t>德克有礼物给你.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交英雄21------- 海盗·德克
	DefineMission(5730, "社交英雄21", 1199, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你是我见过的最出色的社交大使,这枚勋章你受之无愧.")
	MisResultCondition(NoRecord, 1199)
	MisResultCondition(HasMission,1199)
	MisResultAction(ClearMission,1199)
	MisResultAction(SetRecord, 1199)
	MisResultAction(GiveItem, 1879, 1, 4)
	MisResultBagNeed(1)


-------------------------------------------------特别任务	--------海盗·德克
	DefineMission (5731, "梦幻双子之特别行动", 1200)
	
	MisBeginTalk("<t>这个任务是金牛宫特别行动,你可以不参加,当然不参加的没有礼物拿.你知道<b百万大钞>这种东西吗?我急需一张,你一定愿意帮我的是吧.")

	MisBeginCondition(NoMission,1200)
	MisBeginCondition(NoRecord,1200)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginAction(AddMission,1200)
	MisBeginAction(AddTrigger, 12001, TE_GETITEM, 0854, 1 )---------------------百万大钞 
	MisCancelAction(ClearMission, 1200)
	
	
	MisNeed(MIS_NEED_ITEM, 0854, 1, 1, 1 )
	MisHelpTalk("<t>我不是一个爱钱的人,但是喜欢收藏钞票...")

	MisResultTalk("<t>我最欣赏你这种大方的人,也只有大方的人配穿这套双子酷装.")

	MisResultCondition(HasMission, 1200)
	MisResultCondition(NoRecord,1200)
	MisResultCondition(HasItem, 0854, 1 )
	MisResultAction(TakeItem, 0854, 1 )
	MisResultAction(GiveItem, 1881, 1, 4)
	MisResultAction(ClearMission, 1200)
	MisResultAction(SetRecord,  1200 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 0854)	
	TriggerAction( 1, AddNextFlag, 1200, 1, 1 )
	RegCurTrigger( 12001 )	


	
-------------------------------------------------双子之水手过关奖励----------海盗·德克	
	DefineMission (5733, "双子之水手过关奖励", 1201)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到双子宫守印和巨蟹宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1201)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(HasRecord,1163)
	MisBeginCondition(HasRecord,1164)
	MisBeginCondition(HasRecord,1165)
	MisBeginCondition(HasRecord,1166)
	MisBeginCondition(HasRecord,1167)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1201)
	MisBeginAction(AddMission,1201)  
	MisBeginAction(AddTrigger, 12011, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 12012, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 12013, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 12014, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 12015, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 12016, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 12017, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1201)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是巨蟹宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1201)
	MisResultCondition(NoRecord,1201)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1201)
	MisResultAction(SetRecord,  1201 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 30, 4)
	MisResultAction(AddMoney,500000,500000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1201, 10, 1 )
	RegCurTrigger( 12011 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1201, 20, 1 )
	RegCurTrigger( 12012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1201, 30, 1 )
	RegCurTrigger( 12013 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1201, 40, 1 )
	RegCurTrigger( 12014 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1201, 50, 1 )
	RegCurTrigger( 12015 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1201, 60, 1 )
	RegCurTrigger( 12016 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1201, 70, 1 )
	RegCurTrigger( 12017 )
----------------------------------------------双子之海盗过关奖励----------海盗·德克	
	DefineMission (5734, "双子之海盗过关奖励", 1202)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到双子宫守印和巨蟹宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1202)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(HasRecord,1169)
	MisBeginCondition(HasRecord,1170)
	MisBeginCondition(HasRecord,1171)
	MisBeginCondition(HasRecord,1172)
	MisBeginCondition(HasRecord,1173)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1202)
	MisBeginAction(AddMission,1202)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 1880, 1 )		
	MisCancelAction(ClearMission, 1202)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是巨蟹宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1202)
	MisResultCondition(NoRecord,1202)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1202)
	MisResultAction(SetRecord,  1202 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 60, 4)
	MisResultAction(AddMoney,700000,700000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 12021 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1202, 20, 1 )
	RegCurTrigger( 12022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1202, 30, 1 )
	RegCurTrigger( 12023 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1202, 40, 1 )
	RegCurTrigger( 12024 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1202, 50, 1 )
	RegCurTrigger( 12025 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1202, 60, 1 )
	RegCurTrigger( 12026 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1202, 70, 1 )
	RegCurTrigger( 12027 )

	--------------------------------------------双子之船长过关奖励----------海盗·德克	
	DefineMission (5735, "双子之船长过关奖励", 1203)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到双子宫守印和巨蟹宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1203)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(NoRecord,1203)
	MisBeginAction(AddMission,1203)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1203)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是巨蟹宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1203)
	MisResultCondition(NoRecord,1203)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1203)
	MisResultAction(SetRecord,  1203 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 90, 4)
	MisResultAction(AddMoney,900000,900000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1203, 10, 1 )
	RegCurTrigger( 12031 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1203, 20, 1 )
	RegCurTrigger( 12032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1203, 30, 1 )
	RegCurTrigger( 12033 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1203, 40, 1 )
	RegCurTrigger( 12034 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1203, 50, 1 )
	RegCurTrigger( 12035 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1203, 60, 1 )
	RegCurTrigger( 12036 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1203, 70, 1 )
	RegCurTrigger( 12037 )

	----------------------------------天仙配传奇--------月老
	DefineMission ( 5736, "天仙配传奇", 1205)

	MisBeginTalk("<t>七夕将至,苦等一年的牛郎织女即将相会,真是令人感慨啊.你想要听牛郎与织女的天仙配传奇故事吗?用10个精灵之心来交换吧.")

	MisBeginCondition(NoMission,1205)
	MisBeginCondition(NoRecord,1205)
	MisBeginAction(AddMission,1205)
	MisBeginAction(AddTrigger, 12051, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 1205)
	

	MisNeed(MIS_NEED_DESP, "去找到10个精灵之心与月老交换动人的爱情故事")
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10)

	MisHelpTalk("<t>要10个精灵之心")
	MisResultTalk("<t>我编织过无数的凄美故事,但我发誓这件事与我无关.我可是一个善良的老头.") 
	
	MisResultCondition(HasMission, 1205)
	MisResultCondition(NoRecord,1205)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 1205)
	MisResultAction(SetRecord, 1205 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 1205, 10, 10 )
	RegCurTrigger( 12051 )

	-------------------------------鹊桥情事--------月老
	DefineMission( 5737, "鹊桥情事", 1206)
	
	MisBeginTalk( "<t>在很久很久以前......这是一个以情贯穿的故事.人的情、神的情、牲灵的情、人和神的情、正义的情、邪恶的情、生怨的情、凄美的情、生死相依的情......<n><t>去寻找故事的主人公牛郎吧!据说他在夏岛附近.")
	MisBeginCondition(HasRecord, 1205 )
	MisBeginCondition(NoRecord, 1206 )
	MisBeginCondition(NoMission, 1206 )
	MisBeginAction(AddMission, 1206 )
	MisCancelAction(ClearMission, 1206)
	
	MisNeed(MIS_NEED_DESP, "找到夏岛牛郎(3670,2636)")
	MisHelpTalk("<t>去夏岛要用机票哦.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------鹊桥情事-------牛郎

	DefineMission(5738,"鹊桥情事",1206,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>我即将与我的爱人见面,真是期待啊!遥想当年,我们历尽千辛万苦,终于换来这一年一次的相聚.虽然短暂,但也值得.")
	MisResultCondition(HasMission, 1206)
	MisBeginCondition(NoRecord, 1206)
	MisResultAction(ClearMission, 1206)
	MisResultAction(SetRecord, 1206)


	-------------------------------千里传书------牛郎
	DefineMission( 5739, "千里传书", 1207)
	
	MisBeginTalk( "<t>马上就要见面,有千言万语要说,已经迫不及待了.您能否将这封信交到织女手中?她在天堂!辛苦你了!")
	MisBeginCondition(HasRecord, 1206 )
	MisBeginCondition(NoRecord, 1207 )
	MisBeginCondition(NoMission, 1207 )
	MisBeginAction(AddMission, 1207 )
	MisBeginAction(GiveItem, 2669, 1, 4)----------牛郎的情书
	MisCancelAction(ClearMission, 1207)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "帮牛郎送信给天堂的织女(1599,909)")
	MisHelpTalk("<t>一年一度的相聚,多亏了那些喜鹊.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------千里传书----织女

	DefineMission(5740,"千里传书",1207,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>这是牛郎给我的书信?太好了,实在感谢您.作为回报,我将用天梭为你编织世界上最美丽的衣服.也祝愿您能找到您的挚爱.穿上我给你做的衣服,一定可以捕获他(她)的心.<n><t>如果您想了解更多关于我和牛郎的故事,尽请关注即将为我们筹拍的电视剧《牛郎织女》.")
	MisResultCondition(HasMission, 1207)
	MisBeginCondition(NoRecord, 1207)
	MisResultCondition(HasItem,2669,1)---------牛郎的情书
	MisResultAction(TakeItem, 2669,1)
	MisResultAction(GiveItem, 2670, 1, 4)----------天衣宝箱
	MisResultAction(ClearMission, 1207)
	MisResultAction(SetRecord, 1207)
	MisResultAction(ClearRecord, 1205 )
	MisResultAction(ClearRecord, 1206 )
	MisResultAction(ClearRecord, 1207 )
	MisResultBagNeed(1)

-------------------------------------------------------昂贵的学费----------雷诺校长
	DefineMission( 6127, "昂贵的学费", 1453)
	MisBeginTalk( "<t>又一个学年开始咯,小朋友你想体验上学的乐趣吗?那么~~嘿嘿,先付点学费吧,也不贵,只要2亿海盗币就行了.什么?你没钱?算啦算啦,只要你帮我老人家去找99个食神水饺过来吧,学费就免了吧.")
	MisBeginCondition( NoMission, 1453)
	MisBeginCondition( NoRecord, 1453)
	MisBeginAction( AddMission, 1453)
	MisBeginAction(AddTrigger, 14531, TE_GETITEM, 3909, 99)
	MisCancelAction( ClearMission, 1453)

	MisNeed( MIS_NEED_DESP, "找99个食神水饺来给雷诺校长(2232,2781)")
	MisNeed( MIS_NEED_ITEM, 3909, 99, 10, 99)

	MisHelpTalk( "<t>食神水饺的话据说有个神秘的商城有卖，不过记得把背包留出足够的空格")
	MisResultTalk( "<t>水饺真好吃,小朋友真不错啊!")
	MisResultCondition( HasMission, 1453)
	MisResultCondition( NoRecord, 1453)
	MisResultCondition( HasItem, 3909, 99)
	MisResultAction( ClearMission, 1453)
	MisResultAction( TakeItem, 3909, 99)
	MisResultAction( SetRecord, 1453)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1453, 10, 99 )
	RegCurTrigger( 14531 )

-------------------------------------------------------更多的朋友----------雷诺校长
	DefineMission( 6128, "更多的朋友", 1454)
	MisBeginTalk( "<t>入了学你还要多认识新伙伴啊,这样吧,去认识4个朋友,然后带他们来见我.")
	MisBeginCondition( NoMission, 1454)
	MisBeginCondition( NoRecord, 1454)
	MisBeginCondition( HasRecord, 1453)
	MisBeginAction( AddMission, 1454)
	MisCancelAction( ClearMission, 1454)

	MisNeed( MIS_NEED_DESP, "组4个队友然后回去找雷诺校长(2232,2781)谈谈")
	
	MisHelpTalk( "<t>去组4个队友吧!")
	MisResultTalk( "<t>恩，还是年轻好,多有活力啊,去多多认识些朋友吧.")
	MisResultCondition( HasMission, 1454)
	MisResultCondition( NoRecord, 1454)
	MisResultCondition( CheckTeam1, 5)					------检测有几个队友
	MisResultAction( ClearMission, 1454)
	MisResultAction( SetRecord, 1454)

-------------------------------------------------------体育锻炼----------雷诺校长

	DefineMission( 6129, "体育锻炼", 1455)
	MisBeginTalk( "<t>当一个好学生身体也要健健康康,去锻炼下消灭10棵精灵草.")
	MisBeginCondition( NoMission, 1455)
	MisBeginCondition( NoRecord, 1455)
	MisBeginCondition( HasRecord, 1454)
	MisBeginAction( AddMission, 1455)
	MisBeginAction(AddTrigger, 14551, TE_KILL, 75, 10 )
	MisCancelAction( ClearMission, 1455)

	MisNeed( MIS_NEED_DESP, "去消灭10棵精灵草(2118,2638)后回来找雷诺校长.")
	MisNeed( MIS_NEED_KILL, 75, 10, 10, 10)

	MisHelpTalk( "<t>精灵草白银城门口就有很多.")
	MisResultTalk( "<t>看来你真的很健壮.")
	MisResultCondition( HasMission, 1455)
	MisResultCondition( NoRecord, 1455)
	MisResultCondition( HasFlag, 1455, 19)
	MisResultAction( ClearMission, 1455)
	MisResultAction( SetRecord, 1455)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 75 )	
	TriggerAction( 1, AddNextFlag, 1455, 10, 10 )
	RegCurTrigger(14551)

-------------------------------------------------------入学证书----------雷诺校长
	DefineMission( 6130, "入学证书", 1456)
	MisBeginTalk( "<t>既然学费也交过了,朋友也认识了,那这张入学证书就给你吧,不过证书也要制作费的嘛,算你便宜点,给我张百万大钞就行了.")
	MisBeginCondition( NoMission, 1456)
	MisBeginCondition( NoRecord, 1456)
	MisBeginCondition( HasRecord, 1455)
	MisBeginAction( AddMission, 1456)
	MisBeginAction(AddTrigger, 14561, TE_GETITEM, 854, 1)
	MisCancelAction( ClearMission, 1456)

	MisNeed( MIS_NEED_DESP, "找张百万大钞给雷诺校长(2232,2781)")
	MisNeed( MIS_NEED_ITEM, 854, 1, 10, 1)

	MisHelpTalk( "<t>给我一张百万大钞,我就给你入学证书,嘿嘿")
	MisResultTalk( "<t>钱拿来了?那入学证书给你吧.")
	MisResultCondition( HasMission, 1456)
	MisResultCondition( NoRecord, 1456)
	MisResultCondition( HasItem, 854, 1)
	MisResultAction( ClearMission, 1456)
	MisResultAction( TakeItem, 854, 1)
	MisResultAction( GiveItem, 579, 1, 4)
	MisResultAction( SetRecord, 1456)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 854)	
	TriggerAction( 1, AddNextFlag, 1456, 10, 1 )
	RegCurTrigger( 14561 )

-------------------------------------------------------开学报到----------雷诺校长
	DefineMission( 6131, "开学报到", 1457)
	MisBeginTalk( "<t>既然学费也交过了，朋友也认识了，那就带着这张入学证书去找昂莉娜老师(871,3582)报到吧，不过她可能会考下你哦！")
	MisBeginCondition( NoMission, 1457)
	MisBeginCondition( NoRecord, 1457)
	MisBeginCondition( HasRecord, 1456)
	MisBeginAction( AddMission, 1457)
	MisCancelAction( ClearMission, 1457)

	MisNeed( MIS_NEED_DESP, "带着入学证书去找昂莉娜老师(871,3582)报到")
	MisHelpTalk( "<t>昂莉娜老师就在沙岚(871,3582),别忘记带入学证书过去哦.")
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------开学报到----------昂莉娜老师
	DefineMission( 6132, "开学报到", 1457, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>知道吗？有些神秘的文具据说可以当做武器使用哦.")
	MisResultCondition( HasMission, 1457)
	MisResultCondition( NoRecord, 1457)
	MisResultCondition( HasItem, 579, 1)
	MisResultAction( ClearMission, 1457)
	MisResultAction( SetRecord, 1457)
	
-------------------------------------------------------入学考试----------昂莉娜老师
	DefineMission( 6133, "入学考试", 1458)
	MisBeginTalk( "<t>要想入学的话要接受我的考试吗?那可是很难的哦,每道题你只有30秒的思考时间,未答或者晚答都算答错.")
	MisBeginCondition( NoMission, 1458)
	MisBeginCondition( NoRecord, 1458)
	MisBeginCondition( HasRecord, 1457)
	MisBeginAction( AddMission, 1458)
	MisCancelAction( ClearMission, 1458)

	MisNeed( MIS_NEED_DESP, "回答完昂莉娜老师的入学考试问题")

	MisHelpTalk( "<t>要想回答对我的问题的话,你可要做好充分的准备哦,只有对我们海盗王的世界有一定了解的人才能回答出来.")
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------入学考试----------昂莉娜老师
	DefineMission( 6134, "入学考试", 1458, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>恭喜你,你真的很聪明,我相信你一定会成为一个好学生的,作为奖励,给你一个大礼包吧.")
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1461)
	MisResultCondition( CheckRightNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( GiveItem, 47, 1, 4)
	MisResultAction( ClearMission, 1458)
	MisResultBagNeed(1)

-------------------------------------------------------入学考试----------昂莉娜老师
	DefineMission( 6135, "入学考试", 1458, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>不及格哦,不过没关系,我还有另外的一项任务交给你.")
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1461)
	MisResultCondition( CheckErroNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( SetRecord, 1460)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( ClearMission, 1458)

-------------------------------------------------------真假友人----------昂莉娜老师
	DefineMission( 6136, "真假友人", 1464)
	MisBeginTalk( "<t>我这里有封信需要你去帮我送给住在冰极的库拉托斯.他是个很喜欢开玩笑的人,经常和3个跟他自己一模一样的傀儡在一起,你如果去的话一定要分清楚哪个是真的,不然会有很可怕的事情发生的!!还有,顺便去找10张圣雪山直航票给库拉托斯")
	MisBeginCondition( NoMission, 1464)
	MisBeginCondition( NoRecord, 1464)
	MisBeginCondition( HasRecord, 1460)
	MisBeginAction( AddMission, 1464)
	MisBeginAction(AddTrigger, 14641, TE_GETITEM, 3050, 10)
	MisBeginAction( GiveItem, 500, 1, 4)
	MisCancelAction( ClearMission, 1464)
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, "把昂莉娜的信,还有10张圣雪山机票送去给真正的库拉托斯,他就在冰极补给站附近")
	MisHelpTalk( "<t>库拉托斯就在冰极附近,不过你要判断准他是不是真的库拉托斯")
	
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------真假友人----------库拉托斯
	DefineMission( 6137, "真假友人", 1464, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>居然能发现我的真身,看来你拥有很敏锐的观察能力和不折不挠的毅力啊,这是值得奖励的,我相信你也一定会是个好学生.")
	MisResultCondition( HasMission, 1464)
	MisResultCondition( NoRecord, 1464)
	MisResultCondition( HasRecord, 1465)
	MisResultCondition( HasItem, 500, 1)
	MisResultCondition( HasItem, 3050, 10)
	MisResultAction( SetRecord, 1464)
	MisResultAction( TakeItem, 500, 1)
	MisResultAction( TakeItem, 3050, 10)
	MisResultAction( ClearMission, 1464)
	MisResultAction( GiveItem, 47, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3050)	
	TriggerAction( 1, AddNextFlag, 1464, 10, 10 )
	RegCurTrigger( 14641 )

	-----------------------------------------乱斗英雄----------海事所助理·罗拉娜--------水手
	DefineMission (5800, "温情巨蟹之乱斗英雄", 1470)
	
	MisBeginTalk("<t>巨蟹座的人,温情顾家,在事业方面也都能表现出自己的才能.这是属于你的梦幻星座吗?")

	MisBeginCondition(NoMission,1470)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1470)
	MisBeginAction(AddMission,1470)
	MisCancelAction(ClearMission, 1470)
	
	MisNeed(MIS_NEED_DESP, "获得80点乱斗点数")
	MisHelpTalk("<t>乱斗点数可以从乱斗白银获得!")
	MisResultTalk("<t>成为英雄的道路上必定会有种种阻碍,战斗的勇气片刻都不能丢失哦.投入全力去战斗吧!")

	MisResultCondition(HasMission, 1470)
	MisResultCondition(NoRecord,1470)
	MisResultCondition(HasFightingPoint,80 )
	MisResultAction(TakeFightingPoint, 80 )
	MisResultAction(ClearMission, 1470)
	MisResultAction(SetRecord,  1470 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------名声英雄----------海事所助理·罗拉娜	--------水手
	DefineMission (5801, "温情巨蟹之名声英雄", 1471)
	
	MisBeginTalk("<t>有目标才有追求,有追求才有成就.所以温情巨蟹宫对你的要求也更高一些. ")

	MisBeginCondition(NoMission,1471)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1471)
	MisBeginAction(AddMission,1471)
	MisCancelAction(ClearMission, 1471)
	
	MisNeed(MIS_NEED_DESP, "获得3000点名声点数")
	MisHelpTalk("<t>看来你得到的名声还不够哦,我想3000点名声对你来说应该不是问题吧? ")
	MisResultTalk("<t>这枚名声勋章是用来见证英雄的.")

	MisResultCondition(HasMission, 1471)
	MisResultCondition(NoRecord,1471)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1471)
	MisResultAction(SetRecord,  1471 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------等级英雄----------海事所助理·罗拉娜	---------水手
	DefineMission (5802, "温情巨蟹之等级英雄", 1472)
	
	MisBeginTalk("<t>成长的道路是漫长和艰辛的,但是付出一定会有回报哦,让我看看你收获了什么吧...")

	MisBeginCondition(NoMission,1472)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1472)
	MisBeginAction(AddMission,1472)
	MisCancelAction(ClearMission, 1472)
	
	MisNeed(MIS_NEED_DESP, "等级达到65级")
	MisHelpTalk("<t>当然,65级对我来说不成问题.")
	MisResultTalk("<t>看来你已经经历了成长的磨练,收获不少哦,这枚等级勋章是你的了.")

	MisResultCondition(HasMission, 1472)
	MisResultCondition(NoRecord,1472)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1472)
	MisResultAction(SetRecord,  1472 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------荣誉英雄----------海事所助理·罗拉娜	----------水手
	DefineMission (5803, "温情巨蟹之荣誉英雄", 1473)
	
	MisBeginTalk("<t>亲爱的朋友,有一点你必须要知道,海盗世界最重要的就是荣誉!祖先为此付出一切赢得尊敬,你一定要继承下去.")

	MisBeginCondition(NoMission,1473)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1473)
	MisBeginAction(AddMission,1473)
	MisCancelAction(ClearMission, 1473)
	
	MisNeed(MIS_NEED_DESP, "获得600点荣誉点数")
	MisHelpTalk("<t>去为荣誉而战吧!")
	MisResultTalk("<t>你是个很不错的荣誉之子.")

	MisResultCondition(HasMission, 1473)
	MisResultCondition(NoRecord,1473)
	MisResultCondition(HasHonorPoint,600 )
	MisResultAction(TakeHonorPoint, 600 )
	MisResultAction(ClearMission, 1473)
	MisResultAction(SetRecord,  1473 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------采集大使----------海事所助理·罗拉娜	----------水手	
	DefineMission (5804, "温情巨蟹之采集大使", 1474)
	
	MisBeginTalk("<t>成功是需要平时的积累的哦!洞察力也是关键.现在我需要你去收集一些东西... ")

	MisBeginCondition(NoMission,1474)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1474)
	MisBeginAction(AddMission,1474)
	MisBeginAction(AddTrigger, 14741, TE_GETITEM, 1693, 10 )-------------------蝎甲10个
	MisBeginAction(AddTrigger, 14742, TE_GETITEM, 2677, 10 )-------------------链弹LV1 10          
	MisBeginAction(AddTrigger, 14743, TE_GETITEM, 3909, 1 )-----------------食神水饺1               
	MisBeginAction(AddTrigger, 14744, TE_GETITEM, 2589, 5 )----------------精灵王辉印5               
	MisBeginAction(AddTrigger, 14745, TE_GETITEM, 3094, 5)------------------努力增幅器5            
	MisBeginAction(AddTrigger, 14746, TE_GETITEM, 3827, 1 )-----------------情之殇1             
	MisCancelAction(ClearMission, 1474)
	

	MisNeed(MIS_NEED_ITEM, 1693, 10,  1, 10 )
	MisNeed(MIS_NEED_ITEM, 2677, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3909, 1,  21, 1 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  22, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 5,  27, 5 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  32, 1 )
	

	MisHelpTalk("<t>需要的东西不是很多,但是也不是那么容易哦.")
	MisResultTalk("<t>物到用时方恨少吧,积累的过程虽然比较麻烦,但是如果要做个大人物,细心积累和观察都是不可缺少的哦,当然,还有超强的耐心和毅力!")

	MisResultCondition(HasMission, 1474)
	MisResultCondition(NoRecord,1474)
	MisResultCondition(HasItem, 1693, 10 )
	MisResultCondition(HasItem, 2677, 10 )
	MisResultCondition(HasItem, 3909, 1 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 5 )
	MisResultCondition(HasItem, 3827, 1 )


	MisResultAction(TakeItem, 1693, 10 )
	MisResultAction(TakeItem, 2677, 10 )
	MisResultAction(TakeItem, 3909, 1 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 5 )
	MisResultAction(TakeItem, 3827, 1 )

	MisResultAction(ClearMission, 1474)
	MisResultAction(SetRecord,  1474 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1474, 1, 10 )
	RegCurTrigger( 14741 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1474, 11, 10 )
	RegCurTrigger( 14742 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1474, 21, 1 )
	RegCurTrigger( 14743 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1474, 22, 5 )
	RegCurTrigger( 14744 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1474, 27, 5 )
	RegCurTrigger( 14745 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1474,32, 1 )
	RegCurTrigger( 14746 )

	----------------------------------------------------------巨蟹末日----------海事所助理·罗拉娜
	DefineMission( 5805, "温情巨蟹之巨蟹末日", 1475 )
	MisBeginTalk("<t>BOSS勋章是最具英雄主义意味的奖章,你要的话就去杀掉可怕的巨蟹宫守护神.")
				
	MisBeginCondition(NoMission, 1475)
	MisBeginCondition(HasRecord,1469)
	MisBeginCondition(NoRecord,1475)
	MisBeginAction(AddMission,1475)
	MisBeginAction(AddTrigger, 14751, TE_KILL, 1040, 1)---巨蟹守护者
	
	MisCancelAction(ClearMission, 1475)

	MisNeed(MIS_NEED_DESP, "捕杀巨蟹宫守护神,魔女之海(1637,3751)!")
	MisNeed(MIS_NEED_KILL, 1040,1, 10, 1)
	

	MisResultTalk("<t>当人和螃蟹结合将是可怕的造物.他的野心犹如外表一样丑陋!")
	MisHelpTalk("<t>那怪物拥有强有力的大钳和恶心的唾沫哦,你要小心.")
	MisResultCondition(HasMission,  1475)
	MisResultCondition(HasFlag, 1475, 10)
	MisResultCondition(NoRecord , 1475)
	MisResultAction(GiveItem, 2574, 1, 4 )
	MisResultAction(ClearMission,  1475)
	MisResultAction(SetRecord,  1475 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1040)	
	TriggerAction( 1, AddNextFlag, 1475, 10, 1 )
	RegCurTrigger( 14751 )


	-----------------------------------------乱斗英雄----------海事所助理·罗拉娜--------海盗
	DefineMission (5806, "温情巨蟹之乱斗英雄", 1476)
	
	MisBeginTalk("<t>巨蟹座的人,温情顾家,在事业方面也都能表现出自己的才能.这是属于你的梦幻星座吗?")

	MisBeginCondition(NoMission,1476)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1476)
	MisBeginAction(AddMission,1476)
	MisCancelAction(ClearMission, 1476)
	
	MisNeed(MIS_NEED_DESP, "获得150点乱斗点数")
	MisHelpTalk("<t>乱斗点数可以从乱斗白银获得!")
	MisResultTalk("<t>成为英雄的道路上必定会有种种阻碍,战斗的勇气片刻都不能丢失哦.投入全力去战斗吧!")

	MisResultCondition(HasMission, 1476)
	MisResultCondition(NoRecord,1476)
	MisResultCondition(HasFightingPoint,150 )
	MisResultAction(TakeFightingPoint, 150 )
	MisResultAction(ClearMission, 1476)
	MisResultAction(SetRecord,  1476 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------名声英雄----------海事所助理·罗拉娜	--------海盗
	DefineMission (5807, "温情巨蟹之名声英雄", 1477)
	
	MisBeginTalk("<t>有目标才有追求,有追求才有成就.所以温情巨蟹宫对你的要求也更高一些. ")

	MisBeginCondition(NoMission,1477)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1477)
	MisBeginAction(AddMission,1477)
	MisCancelAction(ClearMission, 1477)
	
	MisNeed(MIS_NEED_DESP, "获得6000点名声点数")
	MisHelpTalk("<t>看来你得到的名声还不够哦,我想6000点名声对你来说应该不是问题吧? ")
	MisResultTalk("<t>这枚名声勋章是用来见证英雄的.")

	MisResultCondition(HasMission, 1477)
	MisResultCondition(NoRecord,1477)
	MisResultCondition(HasCredit,6000 )
	MisResultAction(TakeCredit, 6000 )
	MisResultAction(ClearMission, 1477)
	MisResultAction(SetRecord,  1477 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------海事所助理·罗拉娜	---------海盗
	DefineMission (5808, "温情巨蟹之等级英雄", 1600)
	
	MisBeginTalk("<t>成长的道路是漫长和艰辛的,但是付出一定会有回报哦,让我看看你收获了什么吧...")

	MisBeginCondition(NoMission,1600)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1600)
	MisBeginAction(AddMission,1600)
	MisCancelAction(ClearMission, 1600)
	
	MisNeed(MIS_NEED_DESP, "等级达到70级")
	MisHelpTalk("<t>当然,70级对我来说不成问题.")
	MisResultTalk("<t>看来你已经经历了成长的磨练,收获不少哦,这枚等级勋章是你的了.")

	MisResultCondition(HasMission, 1600)
	MisResultCondition(NoRecord,1600)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord,  1600 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------荣誉英雄----------海事所助理·罗拉娜	----------海盗
	DefineMission (5809, "温情巨蟹之荣誉英雄", 1479)
	
	MisBeginTalk("<t>亲爱的朋友,有一点你必须要知道,海盗世界最重要的就是荣誉!祖先为此付出一切赢得尊敬,你一定要继承下去.")

	MisBeginCondition(NoMission,1479)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1479)
	MisBeginAction(AddMission,1479)
	MisCancelAction(ClearMission, 1479)
	
	MisNeed(MIS_NEED_DESP, "获得900点荣誉点数")
	MisHelpTalk("<t>去为荣誉而战吧!")
	MisResultTalk("<t>你是个很不错的荣誉之子.")

	MisResultCondition(HasMission, 1479)
	MisResultCondition(NoRecord,1479)
	MisResultCondition(HasHonorPoint,900 )
	MisResultAction(TakeHonorPoint, 900 )
	MisResultAction(ClearMission, 1479)
	MisResultAction(SetRecord,  1479 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------采集大使----------海事所助理·罗拉娜	----------海盗	
	DefineMission (5810, "温情巨蟹之采集大使", 1480)
	
	MisBeginTalk("<t>成功是需要平时的积累的哦!洞察力也是关键.现在我需要你去收集一些东西... ")

	MisBeginCondition(NoMission,1480)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1480)
	MisBeginAction(AddMission,1480)
	MisBeginAction(AddTrigger, 14801, TE_GETITEM, 1693, 20 )-------------------蝎甲20个
	MisBeginAction(AddTrigger, 14802, TE_GETITEM, 2677, 20 )-------------------链弹LV1 20个          
	MisBeginAction(AddTrigger, 14803, TE_GETITEM, 3909, 5 )-----------------食神水饺5个               
	MisBeginAction(AddTrigger, 14804, TE_GETITEM, 2589, 5 )----------------精灵王辉印5               
	MisBeginAction(AddTrigger, 14805, TE_GETITEM, 3094, 10)------------------努力增幅器10个         
	MisBeginAction(AddTrigger, 14806, TE_GETITEM, 3827, 1 )-----------------情之殇1     
	MisBeginAction(AddTrigger, 14807, TE_GETITEM, 0271, 1 )-----------------天使骰子1个         
	MisCancelAction(ClearMission, 1480)
	

	MisNeed(MIS_NEED_ITEM, 1693, 20,  1, 20 )
	MisNeed(MIS_NEED_ITEM, 2677, 20, 21, 20 )
	MisNeed(MIS_NEED_ITEM, 3909, 5,  41, 5 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  46, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 51, 10 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  61, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 1,  62, 1 )

	MisHelpTalk("<t>需要的东西不是很多,但是也不是那么容易哦.")
	MisResultTalk("<t>物到用时方恨少吧,积累的过程虽然比较麻烦,但是如果要做个大人物,细心积累和观察都是不可缺少的哦,当然,还有超强的耐心和毅力!")

	MisResultCondition(HasMission, 1480)
	MisResultCondition(NoRecord,1480)
	MisResultCondition(HasItem, 1693, 20 )
	MisResultCondition(HasItem, 2677, 20 )
	MisResultCondition(HasItem, 3909, 5 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 10 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 1 )

	MisResultAction(TakeItem, 1693, 20 )
	MisResultAction(TakeItem, 2677, 20 )
	MisResultAction(TakeItem, 3909, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 10 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 1 )

	MisResultAction(ClearMission, 1480)
	MisResultAction(SetRecord,  1480 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1480, 1, 20 )
	RegCurTrigger( 14801 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1480, 21, 20 )
	RegCurTrigger( 14802 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1480, 41, 5 )
	RegCurTrigger( 14803 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1480, 46, 5 )
	RegCurTrigger( 14804 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1480, 51, 10 )
	RegCurTrigger( 14805 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1480,61, 1 )
	RegCurTrigger( 14806 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1480,62, 1 )
	RegCurTrigger( 14807 )


	-----------------------------------------乱斗英雄----------海事所助理·罗拉娜--------船长
	DefineMission (5811, "温情巨蟹之乱斗英雄", 1481)
	
	MisBeginTalk("<t>巨蟹座的人,温情顾家,在事业方面也都能表现出自己的才能.这是属于你的梦幻星座吗?")

	MisBeginCondition(NoMission,1481)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1481)
	MisBeginAction(AddMission,1481)
	MisCancelAction(ClearMission, 1481)
	
	MisNeed(MIS_NEED_DESP, "获得200点乱斗点数")
	MisHelpTalk("<t>乱斗点数可以从乱斗白银获得!")
	MisResultTalk("<t>成为英雄的道路上必定会有种种阻碍,战斗的勇气片刻都不能丢失哦.投入全力去战斗吧!")

	MisResultCondition(HasMission, 1481)
	MisResultCondition(NoRecord,1481)
	MisResultCondition(HasFightingPoint,200 )
	MisResultAction(TakeFightingPoint, 200 )
	MisResultAction(ClearMission, 1481)
	MisResultAction(SetRecord,  1481 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------海事所助理·罗拉娜	--------船长
	DefineMission (5812, "温情巨蟹之名声英雄", 1482)
	
	MisBeginTalk("<t>有目标才有追求,有追求才有成就.所以温情巨蟹宫对你的要求也更高一些. ")

	MisBeginCondition(NoMission,1482)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1482)
	MisBeginAction(AddMission,1482)
	MisCancelAction(ClearMission, 1482)
	
	MisNeed(MIS_NEED_DESP, "获得10000点名声点数")
	MisHelpTalk("<t>看来你得到的名声还不够哦,我想10000点名声对你来说应该不是问题吧? ")
	MisResultTalk("<t>这枚名声勋章是用来见证英雄的.")

	MisResultCondition(HasMission, 1482)
	MisResultCondition(NoRecord,1482)
	MisResultCondition(HasCredit,10000 )
	MisResultAction(TakeCredit, 10000 )
	MisResultAction(ClearMission, 1482)
	MisResultAction(SetRecord,  1482 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------海事所助理·罗拉娜	---------船长
	DefineMission (5813, "温情巨蟹之等级英雄", 1483)
	
	MisBeginTalk("<t>成长的道路是漫长和艰辛的,但是付出一定会有回报哦,让我看看你收获了什么吧...")

	MisBeginCondition(NoMission,1483)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1483)
	MisBeginAction(AddMission,1483)
	MisCancelAction(ClearMission, 1483)
	
	MisNeed(MIS_NEED_DESP, "等级达到75级")
	MisHelpTalk("<t>当然,75级对我来说不成问题.")
	MisResultTalk("<t>看来你已经经历了成长的磨练,收获不少哦,这枚等级勋章是你的了.")

	MisResultCondition(HasMission, 1483)
	MisResultCondition(NoRecord,1483)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1483)
	MisResultAction(SetRecord,  1483 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------荣誉英雄----------海事所助理·罗拉娜	----------船长
	DefineMission (5814, "温情巨蟹之荣誉英雄", 1484)
	
	MisBeginTalk("<t>亲爱的朋友,有一点你必须要知道,海盗世界最重要的就是荣誉!祖先为此付出一切赢得尊敬,你一定要继承下去.")

	MisBeginCondition(NoMission,1484)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1484)
	MisBeginAction(AddMission,1484)
	MisCancelAction(ClearMission, 1484)
	
	MisNeed(MIS_NEED_DESP, "获得1200点荣誉点数")
	MisHelpTalk("<t>去为荣誉而战吧!")
	MisResultTalk("<t>你是个很不错的荣誉之子.")

	MisResultCondition(HasMission, 1484)
	MisResultCondition(NoRecord,1484)
	MisResultCondition(HasHonorPoint,1200 )
	MisResultAction(TakeHonorPoint, 1200 )
	MisResultAction(ClearMission, 1484)
	MisResultAction(SetRecord,  1484 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	


	-------------------------------------------------采集大使----------海事所助理·罗拉娜	----------船长	
	DefineMission (5815, "温情巨蟹之采集大使", 1485)
	
	MisBeginTalk("<t>成功是需要平时的积累的哦!洞察力也是关键.现在我需要你去收集一些东西... ")

	MisBeginCondition(NoMission,1485)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1485)
	MisBeginAction(AddMission,1485)
	MisBeginAction(AddTrigger, 14851, TE_GETITEM, 1693, 30 )-------------------蝎甲30个
	MisBeginAction(AddTrigger, 14852, TE_GETITEM, 2677, 30 )-------------------链弹LV1 30个          
	MisBeginAction(AddTrigger, 14853, TE_GETITEM, 3909, 10 )-----------------食神水饺10个               
	MisBeginAction(AddTrigger, 14854, TE_GETITEM, 2589, 10 )----------------精灵王辉印10               
	MisBeginAction(AddTrigger, 14855, TE_GETITEM, 3094, 20)------------------努力增幅器20个         
	MisBeginAction(AddTrigger, 14856, TE_GETITEM, 3827, 1 )-----------------情之殇1     
	MisBeginAction(AddTrigger, 14857, TE_GETITEM, 0271, 2 )-----------------天使骰子2个         
	MisCancelAction(ClearMission, 1485)
	

	MisNeed(MIS_NEED_ITEM, 1693, 30,  1, 30 )
	MisNeed(MIS_NEED_ITEM, 2677, 30, 31, 30 )
	MisNeed(MIS_NEED_ITEM, 3909, 10, 61, 10 )
	MisNeed(MIS_NEED_ITEM, 2589, 10, 71, 10 )
	MisNeed(MIS_NEED_ITEM, 3094, 20, 81, 20 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  101, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 2,  102, 2 )

	MisHelpTalk("<t>需要的东西不是很多,但是也不是那么容易哦.")
	MisResultTalk("<t>物到用时方恨少吧,积累的过程虽然比较麻烦,但是如果要做个大人物,细心积累和观察都是不可缺少的哦,当然,还有超强的耐心和毅力!")

	MisResultCondition(HasMission, 1485)
	MisResultCondition(NoRecord,1485)
	MisResultCondition(HasItem, 1693, 30 )
	MisResultCondition(HasItem, 2677, 30 )
	MisResultCondition(HasItem, 3909, 10 )
	MisResultCondition(HasItem, 2589, 10 )
	MisResultCondition(HasItem, 3094, 20 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 2 )

	MisResultAction(TakeItem, 1693, 30 )
	MisResultAction(TakeItem, 2677, 30 )
	MisResultAction(TakeItem, 3909, 10 )
	MisResultAction(TakeItem, 2589, 10 )
	MisResultAction(TakeItem, 3094, 20 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 2 )

	MisResultAction(ClearMission, 1485)
	MisResultAction(SetRecord,  1485 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1485, 1, 30 )
	RegCurTrigger( 14851 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1485, 31, 30 )
	RegCurTrigger( 14852 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1485, 61, 10 )
	RegCurTrigger( 14853 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1485, 71, 10 )
	RegCurTrigger( 14854 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1485, 81, 20 )
	RegCurTrigger( 14855 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1485,101, 1 )
	RegCurTrigger( 14856 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1485,102, 2 )
	RegCurTrigger( 14857 )


	----------------------------------------------------------社交大使----------海事所助理·罗拉娜
	DefineMission( 5816, "社交大使1", 1486 )
	MisBeginTalk("<t>成功的人还需要有出色的社交能力哦,就像我,朋友遍及各个城镇,但是由于海事公务的繁忙,我都好久没有问候他们了,如果你想要探索勋章就替我问候他们吧.")
				
	MisBeginCondition(NoMission, 1486)
	MisBeginCondition(NoRecord,1486)
	MisBeginCondition(HasRecord, 1469)
	MisBeginAction(AddMission,1486)
	MisCancelAction(ClearMission, 1486)

	MisNeed(MIS_NEED_DESP, "找春风镇的铁匠·武鑫(3316,2516)聊聊")
	
	MisHelpTalk("<t>快去吧,我迫不及待告诉他们我很想念他们.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使-----------------铁匠·武鑫

	DefineMission(5817, "社交大使1", 1486, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>海事所助理·罗拉娜?天呢,真的好久都没有见面了呢,她一定还记得我出色的手艺吧.")
	MisResultCondition(NoRecord, 1486)
	MisResultCondition(HasMission,1486)
	MisResultAction(ClearMission,1486)
	MisResultAction(SetRecord, 1486)

	----------------------------------------------------------社交大使2----------铁匠·武鑫
	DefineMission( 5818, "社交大使2", 1487 )
	MisBeginTalk("<t>我一直非常欣赏罗拉娜,她从来不会因为自己的地位而自满,所以她的朋友很多哦,龙女和我当初是一起有幸结识这位可爱的女士的.")
				
	MisBeginCondition(NoMission, 1487)
	MisBeginCondition(NoRecord,1487)
	MisBeginCondition(HasRecord, 1486)
	MisBeginAction(AddMission,1487)
	MisCancelAction(ClearMission, 1487)

	MisNeed(MIS_NEED_DESP, "找春风镇的客栈老板·龙女(3302,2501)聊聊")
	
	MisHelpTalk("<t>随时欢迎你和罗拉娜来我这里打造极品装备哦.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使2-------------客栈老板·龙女
	DefineMission(5819, "社交大使2", 1487, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好,年轻人,需要住店吗?")
	MisResultCondition(NoRecord, 1487)
	MisResultCondition(HasMission,1487)
	MisResultAction(ClearMission,1487)
	MisResultAction(SetRecord, 1487)

	----------------------------------------------------------社交大使3----------客栈老板·龙女
	DefineMission( 5820, "社交大使3", 1488 )
	MisBeginTalk("<t>你认识罗拉娜?太好了,她是我的朋友!还记得她当初偶然来到我的客栈时的情景呢,她豪爽的性格让我们很快成为了朋友.我们还经常手牵手去杂货商人·鲁娜儿那里购物呢!")
				
	MisBeginCondition(NoMission, 1488)
	MisBeginCondition(NoRecord,1488)
	MisBeginCondition(HasRecord, 1487)
	MisBeginAction(AddMission,1488)
	MisCancelAction(ClearMission, 1488)

	MisNeed(MIS_NEED_DESP, "找春风镇的杂货商人·鲁娜儿(3279,2501)聊聊")
	
	MisHelpTalk("<t>鲁娜儿是一个精明的商人,但不吝啬,呵呵..")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使3--------杂货商人·鲁娜儿
	DefineMission(5821, "社交大使3", 1488, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>龙女经常来我这里购物,可惜很久没有看到她和罗拉娜一起来了哦,我很想念她呢,如果她再次光临,我一定给她最大的折扣.")
	MisResultCondition(NoRecord, 1488)
	MisResultCondition(HasMission,1488)
	MisResultAction(ClearMission,1488)
	MisResultAction(SetRecord, 1488)

	----------------------------------------------------------社交大使4----------杂货商人·鲁娜儿
	DefineMission( 5822, "社交大使4", 1489 )
	MisBeginTalk("<t>那次我在野外跑商,结果碰到了可怕的海盗霍金斯,我以为我就这样完了!是罗拉娜救了我!后来竟然连霍金斯都害怕罗拉娜,不敢到镇里来捣乱了.")
				
	MisBeginCondition(NoMission, 1489)
	MisBeginCondition(NoRecord,  1489)
	MisBeginCondition(HasRecord, 1488)
	MisBeginAction(AddMission, 1489)
	MisCancelAction(ClearMission, 1489)

	MisNeed(MIS_NEED_DESP, "找寂寞之塔的霍金斯(513,269)聊聊")
	
	MisHelpTalk("<t>面对这样的海盗你要小心哦,如果有危险就说你是罗拉娜的朋友!")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使4--------霍金斯
	DefineMission(5823, "社交大使4", 1489, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哼哼,小样哪里来的啊?要想过此路,留下所有钱!额...你是罗拉娜的朋友啊.最近我都没干什么坏事,我几乎已经要结束我的海盗生活了.")
	MisResultCondition(NoRecord, 1489)
	MisResultCondition(HasMission,1489)
	MisResultAction(ClearMission,1489)
	MisResultAction(SetRecord, 1489)


	----------------------------------------------------------社交大使5----------霍金斯
	DefineMission( 5824, "社交大使5", 1490 )
	MisBeginTalk("<t>虽然身为海盗,但是我不得不钦佩罗拉娜的胆识和智慧,为了朋友她可以面对一切危险,我们身为海盗最看重的就是义气了!嘿嘿.当时的情况?你可以去问那个贸易商人.")
				
	MisBeginCondition(NoMission, 1490)
	MisBeginCondition(NoRecord,  1490)
	MisBeginCondition(HasRecord, 1489)
	MisBeginAction(AddMission,1490)
	MisCancelAction(ClearMission, 1490)

	MisNeed(MIS_NEED_DESP, "找春风镇的贸易商人·油李(3195,2506)聊聊")
	
	MisHelpTalk("<t>贸易商人·油李是个喜欢耍小聪明的商人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使5--------贸易商人·油李
	DefineMission(5825, "社交大使5", 1490, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>咳咳,像我这样的商人要和各种人物打交道,特别是像海盗这样的角色,当然要头脑灵活啦,那个不算耍小聪明吧?")
	MisResultCondition(NoRecord, 1490)
	MisResultCondition(HasMission,1490)
	MisResultAction(ClearMission,1490)
	MisResultAction(SetRecord, 1490)


	----------------------------------------------------------社交大使6----------贸易商人·油李
	DefineMission( 5826, "社交大使6", 1491)
	MisBeginTalk("<t>说起那次经历,真是可怕!幸运的是我也得到了罗拉娜的帮助,才摆脱了海盗的纠缠,否则我所有的家当都被抢了!当时他们可都拿着锋利的武器啊!罗拉娜救了我,还让传送使·春莉送我到了安全的地方,自己独自面对那么多坏蛋.")
				
	MisBeginCondition(NoMission, 1491)
	MisBeginCondition(NoRecord,1491)
	MisBeginCondition(HasRecord, 1490)
	MisBeginAction(AddMission,1491)
	MisCancelAction(ClearMission, 1491)

	MisNeed(MIS_NEED_DESP, "找传送使·春莉(3326,2511)聊聊")
	
	MisHelpTalk("<t>春莉也是罗拉娜的朋友呢.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使6--------传送使·春莉
	DefineMission(5827, "社交大使6", 1491, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好,帮助人会使自己也变得快乐哦.")
	MisResultCondition(NoRecord, 1491)
	MisResultCondition(HasMission,1491)
	MisResultAction(ClearMission,1491)
	MisResultAction(SetRecord, 1491)


	----------------------------------------------------------社交大使7----------传送使·春莉
	DefineMission( 5828, "社交大使7", 1492 )
	MisBeginTalk("<t>那次送油李回来的的确是我.我从罗拉娜那里学会了助人为乐,帮助别人真的是件很快乐的事情呢,有机会我还要从她身上学到更多东西!听说算命先生·算破天也和罗拉娜接触过.")
				
	MisBeginCondition(NoMission, 1492)
	MisBeginCondition(NoRecord,1492)
	MisBeginCondition(HasRecord, 1491)
	MisBeginAction(AddMission,1492)
	MisCancelAction(ClearMission, 1492)

	MisNeed(MIS_NEED_DESP, "找春风镇的算命先生·算破天(3262,2502)聊聊")
	
	MisHelpTalk("<t>算命先生·算破天以前是个只相信命运的人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使7--------算命先生·算破天
	DefineMission(5829, "社交大使7", 1492, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我以前的确是个只相信命运的人,但是罗拉娜使我明白了命运是可以靠自己改变的,我现在给人算命是为了让大家防范于未然,创造自己更好的未来.")
	MisResultCondition(NoRecord, 1492)
	MisResultCondition(HasMission,1492)
	MisResultAction(ClearMission,1492)
	MisResultAction(SetRecord, 1492)


	----------------------------------------------------------社交大使8----------算命先生·算破天
	DefineMission( 5830, "社交大使8", 1493 )
	MisBeginTalk("<t>上次给酒店老板·裴蒂算命的时候,我告诉他将有贵人相助,没想到后来他告诉我他的贵人就是罗拉娜!呵呵.")
				
	MisBeginCondition(NoMission, 1493)
	MisBeginCondition(NoRecord,  1493)
	MisBeginCondition(HasRecord, 1492)
	MisBeginAction(AddMission,1493)
	MisCancelAction(ClearMission, 1493)

	MisNeed(MIS_NEED_DESP, "找酒店老板·裴蒂(3287,2501)聊聊")
	
	MisHelpTalk("<t>带我向罗拉娜问好!")
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------社交大使8--------酒店老板·裴蒂
	DefineMission(5831, "社交大使8", 1493, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>罗拉娜真是我的贵人,当时我们酒店的生意并不怎么样,你知道,这里只是一个小镇,后来是罗拉娜介绍了很多旅行的人来光顾我.")
	MisResultCondition(NoRecord, 1493)
	MisResultCondition(HasMission,1493)
	MisResultAction(ClearMission,1493)
	MisResultAction(SetRecord, 1493)


	----------------------------------------------------------社交大使9----------酒店老板·裴蒂
	DefineMission( 5832, "社交大使9", 1494 )
	MisBeginTalk("<t>那次罗拉娜是来找港口指挥·霜奇谈公事的....")
				
	MisBeginCondition(NoMission, 1494)
	MisBeginCondition(NoRecord,  1494)
	MisBeginCondition(HasRecord, 1493)
	MisBeginAction(AddMission,1494)
	MisCancelAction(ClearMission, 1494)

	MisNeed(MIS_NEED_DESP, "找港口指挥·霜奇(3409,2560)聊聊")
	
	MisHelpTalk("<t>港口指挥·霜奇是个敬公职守的人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使9--------港口指挥·霜奇
	DefineMission(5833, "社交大使9", 1494, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>欢迎你来到春风镇,这里虽然是小镇,但是这里的人都很好客哦!罗拉娜上次过来是来视察这里的工作的.")
	MisResultCondition(NoRecord, 1494)
	MisResultCondition(HasMission,1494)
	MisResultAction(ClearMission,1494)
	MisResultAction(SetRecord, 1494)

	----------------------------------------------------------社交大使10----------港口指挥·霜奇
	DefineMission( 5834, "社交大使10", 1495 )
	MisBeginTalk("<t>罗拉娜真是一个好人,一点都没有高高在上的架子,她对我的工作给予了肯定,太令人高兴了.而且她还很关心下属呢,后来她还去慰问了卫兵·赵钱孙.")
				
	MisBeginCondition(NoMission, 1495)
	MisBeginCondition(NoRecord, 1495)
	MisBeginCondition(HasRecord, 1494)
	MisBeginAction(AddMission, 1495)
	MisCancelAction(ClearMission, 1495)

	MisNeed(MIS_NEED_DESP, "找卫兵·赵钱孙(3303,2533)聊聊")
	
	MisHelpTalk("<t>我想上级的慰问对于下属是很好的鼓舞吧...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使10--------卫兵·赵钱孙
	DefineMission(5835, "社交大使10", 1495, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你好，你是远道而来的旅客吧.你认识罗拉娜?哈哈,罗拉娜小姐亲自来看过我哦!太幸福了!")
	MisResultCondition(NoRecord, 1495)
	MisResultCondition(HasMission,1495)
	MisResultAction(ClearMission,1495)
	MisResultAction(SetRecord, 1495)

	----------------------------------------------------------社交大使11----------卫兵·赵钱孙
	DefineMission( 5836, "社交大使11", 1496 )
	MisBeginTalk("<t>罗拉娜是个温柔体贴的人,那天她特地来慰问了我和周吴郑.")
				
	MisBeginCondition(NoMission, 1496)
	MisBeginCondition(NoRecord,1496)
	MisBeginCondition(HasRecord, 1495)
	MisBeginAction(AddMission,1496)
	MisCancelAction(ClearMission, 1496)

	MisNeed(MIS_NEED_DESP, "找卫兵·周吴郑(3298,2534)聊聊")
	
	MisHelpTalk("<t>周吴郑和我像亲兄弟一样,下班后我们无所不谈.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使11--------卫兵·周吴郑
	DefineMission(5837, "社交大使11", 1496, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哇哈哈,见到你很高兴罗拉娜的朋友.你从赵钱孙那里过来的?他没有偷懒吧.")
	MisResultCondition(NoRecord, 1496)
	MisResultCondition(HasMission,1496)
	MisResultAction(ClearMission,1496)
	MisResultAction(SetRecord, 1496)

	----------------------------------------------------------社交大使12----------卫兵·周吴郑
	DefineMission( 5838, "社交大使12", 1497 )
	MisBeginTalk("<t>别看我只是小小的卫兵,我的交际可是很广的呢,银行总管·王墨也是我的朋友.上次罗拉娜小姐来慰问我,闲聊到她有一些东西需要找地方寄放,这样才能专心视察工作,我引荐王墨给罗拉娜小姐认识了.")
				
	MisBeginCondition(NoMission, 1497)
	MisBeginCondition(NoRecord,1497)
	MisBeginCondition(HasRecord, 1496)
	MisBeginAction(AddMission,1497)
	MisCancelAction(ClearMission, 1497)

	MisNeed(MIS_NEED_DESP, "找银行总管·王墨(3290,2512)聊聊")
	
	MisHelpTalk("<t>银行总管·王墨是行事谨慎的人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使12--------银行总管·王墨
	DefineMission(5839, "社交大使12", 1497, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>罗拉娜一定觉得我是值得信任的人,所以将她贵重的物品寄放在我这里,不过你千万不要告诉别人哦,罗拉娜小姐下次来一定会十分满意我们的服务的.")
	MisResultCondition(NoRecord, 1497)
	MisResultCondition(HasMission,1497)
	MisResultAction(ClearMission,1497)
	MisResultAction(SetRecord, 1497)


	----------------------------------------------------------社交大使13----------银行总管·王墨
	DefineMission( 5840, "社交大使13", 1498 )
	MisBeginTalk("<t>虽然罗拉娜是来视察的,但是既然来到了我们美丽的小镇,自然要好好体验和享受一下这里的风土人情啦,我让流云陪罗拉娜小姐到处逛逛.")
				
	MisBeginCondition(NoMission, 1498)
	MisBeginCondition(NoRecord,1498)
	MisBeginCondition(HasRecord, 1497)
	MisBeginAction(AddMission,1498)
	MisCancelAction(ClearMission, 1498)

	MisNeed(MIS_NEED_DESP, "找青年男子·流云(3275,2467)聊聊")
	
	MisHelpTalk("<t>青年男子·流云是个充满活力的小伙子.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使13--------青年男子·流云
	DefineMission(5841, "社交大使13", 1498, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>嘿,朋友!有什么可以帮助你的吗?我号称是春风镇的导游哦.")
	MisResultCondition(NoRecord, 1498)
	MisResultCondition(HasMission,1498)
	MisResultAction(ClearMission,1498)
	MisResultAction(SetRecord, 1498)

	----------------------------------------------------------社交大使14----------青年男子·流云
	DefineMission( 5842, "社交大使14", 1499 )
	MisBeginTalk("<t>是哦,上次罗拉娜来我们春风镇就是我和水雾带她到处游玩的呢!话说回来,她也是一个开朗的人,和我们一起玩的很投机.")
				
	MisBeginCondition(NoMission, 1499)
	MisBeginCondition(NoRecord,1499)
	MisBeginCondition(HasRecord, 1498)
	MisBeginAction(AddMission,1499)
	MisCancelAction(ClearMission, 1499)

	MisNeed(MIS_NEED_DESP, "找青年女子·水雾(3241,2533)聊聊")
	
	MisHelpTalk("<t>其实...每天能够和水雾在一起是我一直以来的愿望...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使14--------青年女子·水雾        
	DefineMission(5843, "社交大使14", 1499, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>是流云让你来找我的吗?他...他是个好人.其实如果他能够在事业上有所成就并且温柔体贴些,那该多好.我只对罗拉娜说过心里的想法...")
	MisResultCondition(NoRecord, 1499)
	MisResultCondition(HasMission,1499)
	MisResultAction(ClearMission,1499)
	MisResultAction(SetRecord, 1499)

	----------------------------------------------------------社交大使15----------青年女子·水雾
	DefineMission( 5844, "社交大使15", 1601 )
	MisBeginTalk("<t>对我来说,罗拉娜就像一个大姐姐一样,我什么话都愿意对她说.我好想她哦,我有好多话想和她说呢.现在只有王蓉阿姨能够陪我说说话.")
				
	MisBeginCondition(NoMission, 1601)
	MisBeginCondition(NoRecord,1601)
	MisBeginCondition(HasRecord, 1499)
	MisBeginAction(AddMission,1601)
	MisCancelAction(ClearMission, 1601)

	MisNeed(MIS_NEED_DESP, "找中年女子·王蓉(3265,2547)聊聊")
	
	MisHelpTalk("<t>黄蓉,是个中年女子.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使15-------- 中年女子·王蓉
	DefineMission(5845, "社交大使15", 1601, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>水雾这小丫头是很多愁善感的女孩,她倒是一直念叨着罗拉娜呢,她很希望自己能有这样一个姐姐.我是很喜欢这个小丫头,所以经常陪她聊天.")
	MisResultCondition(NoRecord, 1601)
	MisResultCondition(HasMission,1601)
	MisResultAction(ClearMission,1601)
	MisResultAction(SetRecord, 1601)


	----------------------------------------------------------社交大使16----------中年女子·王蓉
	DefineMission( 5846, "社交大使16", 1602 )
	MisBeginTalk("<t>哈,你是专程来替罗拉娜问候大家的吗?罗拉娜真是有心啊,谢谢你.对了,比盖也是罗拉娜的朋友.")
				
	MisBeginCondition(NoMission, 1602)
	MisBeginCondition(NoRecord,1602)
	MisBeginCondition(HasRecord, 1601)
	MisBeginAction(AddMission,1602)
	MisCancelAction(ClearMission, 1602)

	MisNeed(MIS_NEED_DESP, "找中年男子·比盖(3235,2550)聊聊")
	
	MisHelpTalk("<t>比盖是个风趣的男人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使16-------- 中年男子·比盖
	DefineMission(5847, "社交大使16", 1602, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>罗拉娜最近可好?罗拉娜的微笑就像天上的太阳一样灿烂,在她的周围总是会有一群朋友,如果有选秀活动,我敢打赌罗拉娜的短信支持率一定最高!")
	MisResultCondition(NoRecord, 1602)
	MisResultCondition(HasMission,1602)
	MisResultAction(ClearMission,1602)
	MisResultAction(SetRecord, 1602)


	----------------------------------------------------------社交大使17----------中年男子·比盖
	DefineMission( 5848, "社交大使17", 1502 )
	MisBeginTalk("<t>什么?你问我为什么?如果我告诉你连东方海盗·铃佐田山都是罗拉娜的朋友的话,你应该没有疑问了吧.")
				
	MisBeginCondition(NoMission, 1502)
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 1602)
	MisBeginAction(AddMission,1502)
	MisCancelAction(ClearMission, 1502)

	MisNeed(MIS_NEED_DESP, "找东方海盗·铃佐田山(2219,3286)聊聊")
	
	MisHelpTalk("<t>东方海盗·铃佐田山是有名的海盗,曾经驰骋东方海域.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使17-------- 东方海盗·铃佐田山
	DefineMission(5849, "社交大使17", 1502, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>空尼齐哇，没想到你是罗拉娜的朋友,说起来连我都不敢相信竟然能够和海事助理成为朋友,并且我们达成了协议,我不会袭击罗拉娜管辖范围的船只.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission,1502)
	MisResultAction(SetRecord, 1502)

	----------------------------------------------------------社交大使18----------东方海盗·铃佐田山
	DefineMission( 5850, "社交大使18", 1603 )
	MisBeginTalk("<t>春风镇真是好地方啊,在这里我都几乎忘记了海上的风风雨雨.这里的服饰和发型都和我家乡不一样哦,上次罗拉娜带我去潮流理发师那里设计了一个莫西干发型,哇塞,酷弊了!虽然我是海盗,但是我也是需要包装的嘛,何况我是那么有名的海盗啊,哈哈哈.")
				
	MisBeginCondition(NoMission, 1603)
	MisBeginCondition(NoRecord,1603)
	MisBeginCondition(HasRecord, 1502)
	MisBeginAction(AddMission,1603)
	MisCancelAction(ClearMission, 1603)

	MisNeed(MIS_NEED_DESP, "找潮流理发师(3300,2513)聊聊")
	
	MisHelpTalk("<t>潮流理发师是思想前卫,设计出众的发型设计师.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使18-------- 潮流理发师
	DefineMission(5851, "社交大使18", 1603, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哈哈,你说的是上次罗拉娜带来的那个奇怪的海盗吧,他对我给他设计的发型很满意吧!")
	MisResultCondition(NoRecord, 1603)
	MisResultCondition(HasMission,1603)
	MisResultAction(ClearMission,1603)
	MisResultAction(SetRecord, 1603)

	----------------------------------------------------------社交大使19----------潮流理发师
	DefineMission( 5852, "社交大使19", 1604 )
	MisBeginTalk("<t>啊,原来你是专程替罗拉娜来问候她的朋友的啊,你去过港口指挥·霜奇那里了?那有没有去过海港指挥·夏青那里呢?对了,记得向我替罗拉娜问好,顺便告诉她我为她专门设计了一个发型,绝对适合她的气质!")
				
	MisBeginCondition(NoMission, 1604)
	MisBeginCondition(NoRecord,1604)
	MisBeginCondition(HasRecord, 1603)
	MisBeginAction(AddMission,1604)
	MisCancelAction(ClearMission, 1604)

	MisNeed(MIS_NEED_DESP, "找海港指挥·夏青(3685,2652)聊聊")
	
	MisHelpTalk("<t>海港指挥·夏青是一个喜欢幻想的人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使19-------- 海港指挥·夏青
	DefineMission(5853, "社交大使19", 1604, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>哈喽,看看这大海,多迷人啊!我每天都会和它聊天,额...你会觉得我有什么不妥吗?那天罗拉娜看到我在和大海说话都没有觉得奇怪,她真是一个特别的人,好像能够看透我的心.")
	MisResultCondition(NoRecord, 1604)
	MisResultCondition(HasMission,1604)
	MisResultAction(ClearMission,1604)
	MisResultAction(SetRecord, 1604)


	----------------------------------------------------------社交大使20----------海港指挥·夏青
	DefineMission( 5854, "社交大使20", 1605 )
	MisBeginTalk("<t>我一直以为除了海港指挥·夏云以外,没有人能够理解我为什么对大海说话呢.对了,说起夏云,他也觉得罗拉娜是个特别的人,甚至整天在我耳边提起罗拉娜呢,嘿嘿.")
				
	MisBeginCondition(NoMission, 1605)
	MisBeginCondition(NoRecord,1605)
	MisBeginCondition(HasRecord, 1604)
	MisBeginAction(AddMission,1605)
	MisCancelAction(ClearMission, 1605)

	MisNeed(MIS_NEED_DESP, "找海港指挥·夏云(3337,3523)聊聊")
	
	MisHelpTalk("<t>夏青是个拥有远大理想和抱负的海港指挥,可是没有人认为他的愿望能够实现.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交大使20-------- 海港指挥·夏云
	DefineMission(5855, "社交大使20", 1605, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你见过夏青了啊.什么,他告诉你我一直提起罗拉娜了?呵呵,说实话,罗拉娜是能够给人留下深刻印象的人哦.做这个小镇的海港指挥那么多年了,第一次有人认同我的理想...因为我想有一天能够自己拥有一支舰队去对付所有的海盗.")
	MisResultCondition(NoRecord, 1605)
	MisResultCondition(HasMission,1605)
	MisResultAction(ClearMission,1605)
	MisResultAction(SetRecord, 1605)

	----------------------------------------------------------社交大使21----------海港指挥·夏云
	DefineMission( 5856, "社交大使21", 1606 )
	MisBeginTalk("<t>你已经问候了所有这里罗拉娜的朋友了?我欣赏你的责任心.千万不要忘记把我的祝福带给罗拉娜哦,如果她能够尽快来看我们,我一定第一时间迎接她.我们都很想念她!对了,请代表春风镇的朋友将这个礼物带给罗拉娜,看到它要想到我们哦.")
				
	MisBeginCondition(NoMission, 1606)
	MisBeginCondition(NoRecord,1606)
	MisBeginCondition(HasRecord, 1605)
	MisBeginAction(AddMission,1606)
	MisCancelAction(ClearMission, 1606)

	MisNeed(MIS_NEED_DESP, "找白银城海事所助理·罗拉娜(2247,2858)聊聊")
	
	MisHelpTalk("<t>麻烦你将我们的礼物带给罗拉娜.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------社交英雄21------- 海事所助理·罗拉娜
	DefineMission(5857, "社交英雄21", 1606, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你真的帮我问候了春风镇所有的朋友了,太感谢你了,竟然还带来了礼物!啊,真不知道如何感谢你,这枚勋章你受之无愧.")
	MisResultCondition(NoRecord, 1606)
	MisResultCondition(HasMission,1606)
	MisResultAction(ClearMission,1606)
	MisResultAction(SetRecord, 1606)
	MisResultAction(GiveItem, 2573, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------特别任务一--------海事所助理·罗拉娜
	DefineMission (5858, "巨蟹之特别行动一", 1607)
	
	MisBeginTalk("<t>嘿,就这样满足于你的成绩了吗?呵呵,如果你还有足够的信心的话,去冰狼堡找路人·丁吧,他将给你特别的考验.")

	MisBeginCondition(NoMission,1607)
	MisBeginCondition(NoRecord,1607)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginAction(AddMission,1607)
	MisCancelAction(ClearMission, 1607)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "找冰狼堡的路人·丁(1335,469)聊聊")
	MisHelpTalk("<t>要想知道有什么特别任务等待着你，就赶快去找路人·丁吧.")

	MisResultCondition(AlwaysFailure)	


	-------------------------------------------------特别任务一--------冰狼堡的路人·丁
	DefineMission (5859, "巨蟹之特别行动一", 1607, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>你已经通过罗拉娜给你的任务了吗?真了不起,别看我看上去是个不起眼的路人,其实我是隐藏级别的人物哦!哼哼!连我的名字都隐藏的那么巧妙,很酷吧!那么来看看你是否有能力完成我给你的特别任务吧..")	
	MisResultCondition(NoRecord, 1607)
	MisResultCondition(HasMission,1607)
	MisResultAction(ClearMission,1607)
	MisResultAction(SetRecord, 1607)


	--------------------------------------特别任务二----冰狼堡的路人·丁

	DefineMission(5860, "巨蟹之特别行动二", 1608 )	
	
	MisBeginTalk("<t>这个任务是巨蟹宫特别行动,你可以不参加,但是就没有特别的礼物哦.如果你真的拥有实力和勇气,那么就接受挑战吧.我这里有十分重要的东西需要你尽快送到旅行商人那里.<b2分钟内赶到冰狼堡找旅行商人(1326,532)>聊聊.")

	MisBeginCondition(NoMission,1608)
	MisBeginCondition(NoRecord,1608)
	MisBeginCondition(HasRecord,1607)
	MisBeginAction(AddMission,1608)
	MisBeginAction(AddChaItem3, 2952)---------巨蟹特别行动卡
	MisCancelAction(ClearMission, 1608)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "找旅行商人(1326,532)聊聊")
	MisHelpTalk("<t>快去吧,你只有2分钟哦")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------特别任务二----旅行商人

	DefineMission(5861, "巨蟹之特别行动二", 1608, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>哈哈，非常感谢你.我等这个东西好久啦.恩...他们带信告诉我你是一个拥有强大潜力的可造之才.来,送你一份礼物,希望能够帮助你尽快强大起来.")
	MisResultCondition(HasMission, 1608)
	MisResultCondition(NoRecord,1608)
	MisResultAction(AddChaItem4, 2952)----特别行动卡
	MisResultAction(ClearMission, 1608)
	MisResultAction(SetRecord,  1608 )
	MisResultAction(GiveItem, 2575, 1, 4)------------巨蟹船长酷装宝箱
	MisResultBagNeed(1)

-------------------------------------------------巨蟹之水手过关奖励----------海事所助理·罗拉娜
	DefineMission (5862, "巨蟹之水手过关奖励", 1609)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到巨蟹宫守印和狮子宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1609)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(HasRecord,1470)
	MisBeginCondition(HasRecord,1471)
	MisBeginCondition(HasRecord,1472)
	MisBeginCondition(HasRecord,1473)
	MisBeginCondition(HasRecord,1474)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1609)
	MisBeginAction(AddMission,1609)  
	MisBeginAction(AddTrigger, 16091, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16092, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16093, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16094, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16095, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16096, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16097, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1609)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是狮子宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1609)
	MisResultCondition(NoRecord,1609)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1609)
	MisResultAction(SetRecord,  1609 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 1, 4)
	MisResultAction(AddMoney,1000000,1000000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1609, 10, 1 )
	RegCurTrigger( 16091 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1609, 20, 1 )
	RegCurTrigger( 16092 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1609, 30, 1 )
	RegCurTrigger( 16093 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1609, 40, 1 )
	RegCurTrigger( 16094 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1609, 50, 1 )
	RegCurTrigger( 16095 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1609, 60, 1 )
	RegCurTrigger( 16096 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1609, 70, 1 )
	RegCurTrigger( 16097 )
----------------------------------------------巨蟹之海盗过关奖励----------海事所助理·罗拉娜	
	DefineMission (5863, "巨蟹之海盗过关奖励", 1610)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到巨蟹宫守印和狮子宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1610)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(HasRecord,1476)
	MisBeginCondition(HasRecord,1477)
	MisBeginCondition(HasRecord,1600)
	MisBeginCondition(HasRecord,1479)
	MisBeginCondition(HasRecord,1480)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1610)
	MisBeginAction(AddMission,1610)
	MisBeginAction(AddTrigger, 16101, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16102, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16103, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16104, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16105, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16106, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16107, TE_GETITEM, 2574, 1 )		
	MisCancelAction(ClearMission, 1610)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是狮子宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1610)
	MisResultCondition(NoRecord,1610)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1610)
	MisResultAction(SetRecord,  1610 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 2, 4)
	MisResultAction(AddMoney,2000000,2000000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1610, 10, 1 )
	RegCurTrigger( 16101 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1610, 20, 1 )
	RegCurTrigger( 16102 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1610, 30, 1 )
	RegCurTrigger( 16103 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1610, 40, 1 )
	RegCurTrigger( 16104 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1610, 50, 1 )
	RegCurTrigger( 16105 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1610, 60, 1 )
	RegCurTrigger( 16106 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1610, 70, 1 )
	RegCurTrigger( 16107 )

	--------------------------------------------巨蟹之船长过关奖励----------海事所助理·罗拉娜	
	DefineMission (5864, "巨蟹之船长过关奖励", 1611)
	
	MisBeginTalk("<t>集齐7枚勋章就可以在我这里兑换到巨蟹宫守印和狮子宫的门票了.还有很多奖励哦 ")

	MisBeginCondition(NoMission,1611)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1611)
	MisBeginAction(AddMission,1611)   
	MisBeginAction(AddTrigger, 16111, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16112, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16113, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16114, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16115, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16116, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16117, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1611)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>还在犹豫什么?快来兑换奖励吧")
	MisResultTalk("<t>下一宫是狮子宫,有更诱人的奖励和更刺激的挑战在等你.")

	MisResultCondition(HasMission, 1611)
	MisResultCondition(NoRecord,1611)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1611)
	MisResultAction(SetRecord,  1611 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 3, 4)
	MisResultAction(AddMoney,3000000,3000000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1611, 10, 1 )
	RegCurTrigger( 16111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1611, 20, 1 )
	RegCurTrigger( 16112 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1611, 30, 1 )
	RegCurTrigger( 16113 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1611, 40, 1 )
	RegCurTrigger( 16114 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1611, 50, 1 )
	RegCurTrigger( 16115 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1611, 60, 1 )
	RegCurTrigger( 16116 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1611, 70, 1 )
	RegCurTrigger( 16117 )


----------------------------------------金秋十月大闸蟹活动（一）---------白银城老奶奶·贝蒂（2277,2769）

	DefineMission(5865,"金秋十月缤纷假期吃毛蟹",1208)

	MisBeginTalk("<t>金秋十月，正是吃蟹的黄金佳季！<n><t>近来我在春风镇寻得一本烹蟹秘方，据说由此方烹煮的毛蟹，有意想不到的效果，不知您可感兴趣？")

	MisBeginCondition(NoMission, 1208)
	MisBeginCondition(NoRecord, 1208)
	MisBeginAction(AddMission, 1208)
	MisBeginAction(AddTrigger, 12081, TE_GETITEM, 4490, 1)          
	MisBeginAction(AddTrigger, 12082, TE_GETITEM, 4426, 2)
	MisBeginAction(AddTrigger, 12083, TE_GETITEM, 4393, 8)

	MisCancelAction(ClearMission,1208)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>我虽精通烹饪，但原材料还需你的帮助。铁甲蟹(加纳1773,2517)身上1份<y蟹壳>是美味高汤的低料，卫兵蟹(加纳1783,2507)身上2个<y锋利的蟹钳>能把蟹肉切割得更为均匀，而8份硬甲蟹(深蓝994,857)身上<y无法食用的蟹脚>则是烹煮此菜的关键！")
	MisNeed(MIS_NEED_ITEM, 4490, 1, 10, 1)               ---------蟹壳
	MisNeed(MIS_NEED_ITEM, 4426, 2, 20, 2)               ---------锋利的蟹钳
	MisNeed(MIS_NEED_ITEM, 4393, 8, 30, 8)               ---------无法食用的蟹脚

	MisHelpTalk("<t>仔细找到这些原材料，我的厨艺一定不会让你失望！")
	MisResultTalk("<t>赶紧尝尝鲜美的毛蟹盛宴，一定得留意它的效果哦！国庆14天，真情为您烹饪蟹肉大餐，欢迎再次品尝！")

	MisResultCondition(HasMission, 1208)
	MisResultCondition(NoRecord, 1208)
	MisResultCondition(HasItem, 4490, 1)
	MisResultCondition(HasItem, 4426, 2)
	MisResultCondition(HasItem, 4393, 8)

	MisResultAction(TakeItem, 4490, 1)
	MisResultAction(TakeItem, 4426, 2)
	MisResultAction(TakeItem, 4393, 8)

	MisResultAction(GiveItem, 0048, 1, 4)                          ---------毛蟹
	MisResultAction(ClearMission, 1208)                        
	MisResultAction(SetRecord, 1208)
	MisResultAction(ClearRecord, 1208)                          ----------任务可以反复接
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4490)
	TriggerAction(1, AddNextFlag, 1208, 10, 1)
	RegCurTrigger(12081)


	InitTrigger()
	TriggerCondition(1, IsItem, 4426)
	TriggerAction(1, AddNextFlag, 1208, 20, 2)
	RegCurTrigger(12082)


	InitTrigger()
	TriggerCondition(1, IsItem, 4393)
	TriggerAction(1, AddNextFlag, 1208, 30, 8)
	RegCurTrigger(12083)


----------------------------------------金秋十月大闸蟹活动（二）---------白银城老奶奶·贝蒂（2277,2769）

	DefineMission(5866,"金秋十月唇齿留香大闸蟹",1209)

	MisBeginTalk("<t>大闸蟹历来享有蟹中之王的美誉，由我熬煮的大闸蟹更是具备鲜、香、嫩、爽的特点，吃后让你神清气爽，与怪物战斗经验飞增！不知您是否有兴趣品尝？")

	
	MisBeginCondition(NoMission, 1209)
	MisBeginCondition(NoRecord, 1209)
	MisBeginAction(AddMission,1209)
	MisBeginAction(AddTrigger, 12091, TE_GETITEM, 4342, 1)
	MisBeginAction(AddTrigger, 12092, TE_GETITEM, 4793, 2)
	MisBeginAction(AddTrigger, 12093, TE_GETITEM, 4500, 1)
	MisBeginAction(AddTrigger, 12094, TE_GETITEM, 0057, 1)


	MisCancelAction(ClearMission, 1209)

	MisNeed(MIS_NEED_DESP, "<t>烹制此蟹所需的原料亦非常考究，除了卫兵蟹(加纳1783,2507)身上1个<y坚硬的蟹壳>，长绒蟹(海底隧道349, 376)身上2个<y长绒蟹钳>，铁甲蟹王(加纳1783,2507)身上1个<y猩红的蟹壳>，还需商城里出售的1根<y蟹绳>，此绳能捆蟹之精华，制蟹之精品。")
       
	
	MisNeed(MIS_NEED_ITEM, 4342, 1, 10, 1)                       ---------坚硬的蟹壳
	MisNeed(MIS_NEED_ITEM, 4793, 2, 20, 2)                       ---------长绒蟹钳
	MisNeed(MIS_NEED_ITEM, 4500, 1, 30, 1)                       ---------猩红的蟹壳
	MisNeed(MIS_NEED_ITEM, 0057, 1, 40, 1)                       ---------蟹绳

	MisHelpTalk("<t>纵然原材料的收集是一件非常辛苦的事，但相信品尝过美味的大闸蟹后，你会为自己的努力而感到自豪！")
	MisResultTalk("<t>鲜香大闸蟹出炉，记得珍惜食用之后20倍经验的超值效果喔！国庆长假，与您分享秘制美味烹蟹大餐，欢迎再此品尝！")

	MisResultCondition(HasMission, 1209)
	MisResultCondition(NoRecord, 1209)
	MisResultCondition(HasItem, 4342, 1)
	MisResultCondition(HasItem, 4793, 2)
	MisResultCondition(HasItem, 4500, 1)
	MisResultCondition(HasItem, 0057, 1)

	MisResultAction(TakeItem, 4342, 1)
	MisResultAction(TakeItem, 4793, 2)
	MisResultAction(TakeItem, 4500, 1)
	MisResultAction(TakeItem, 0057, 1)

	MisResultAction(GiveItem, 0056, 1, 4)                                   ---------大闸蟹
	MisResultAction(ClearMission, 1209)
	MisResultAction(SetRecord, 1209)
	MisResultAction(ClearRecord, 1209)                                   ----------任务可以反复接
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4342)
	TriggerAction(1, AddNextFlag, 1209, 10, 1)
	RegCurTrigger(12091)


	InitTrigger()
	TriggerCondition(1, IsItem, 4793)
	TriggerAction(1, AddNextFlag, 1209, 20, 2)
	RegCurTrigger(12092)

	InitTrigger()
	TriggerCondition(1, IsItem, 4500)
	TriggerAction(1, AddNextFlag, 1209, 30, 1)
	RegCurTrigger(12093)

	InitTrigger()
	TriggerCondition(1, IsItem, 0057)
	TriggerAction(1, AddNextFlag, 1209, 40, 1)
	RegCurTrigger(12094)


----------------------------------------金秋十月大闸蟹活动（三）---------白银城老奶奶·贝蒂（2277,2769）

	DefineMission(5867, "金秋十月满怀期待育蟹苗", 1210)

	MisBeginTalk("<t>根据这本烹饪秘方上的记载，由精良蟹苗培育而出的蟹王可是具备无以伦比的升级功效！是为勇士之精品！而这蟹苗本身亦拥有神奇效果，不知您可感兴趣？")

	MisBeginCondition(NoMission, 1210)
	MisBeginCondition(NoRecord, 1210)
	MisBeginAction(AddMission, 1210)
	MisBeginAction(AddTrigger, 12101, TE_KILL, 273, 10)
	MisBeginAction(AddTrigger, 12102, TE_KILL, 186, 10)
	MisBeginAction(AddTrigger, 12103, TE_GETITEM, 4259, 5)
	MisBeginAction(AddTrigger, 12104, TE_GETITEM, 4890, 5)


	MisCancelAction(ClearMission, 1210)

	MisNeed(MIS_NEED_DESP, "<t>养育蟹苗可是件棘手的事儿，这几日我被长绒蟹、沙蟹搅得无法集中精神，您可否为我解决后顾之忧呢？消灭位于(海底隧道349, 376)的10只<y长绒蟹>和位于(魔女之海1341,3010)的10只<y沙蟹>，并顺带把它们藏匿的5份<y火绒>和5份<y有沙子的蟹肉>带回来！")
	MisNeed(MIS_NEED_KILL, 273, 10, 10, 10)                  ----------长绒蟹
	MisNeed(MIS_NEED_KILL, 186, 10, 20, 10)                  ----------沙蟹
	MisNeed(MIS_NEED_ITEM, 4259, 5, 30, 5)                  -----------火绒
	MisNeed(MIS_NEED_ITEM, 4890, 5, 40, 5)                  -----------有沙子的蟹肉



	MisHelpTalk("<t>你可要小心应对那些狡猾的长绒蟹和沙蟹，我会赠与你1份<y蟹苗>作为回报喔！")
	MisResultTalk("<t>这份柔嫩的蟹苗需要你放置在<y背包第2栏>(放置精灵的位置)，<y5天>(7200分钟)的精心呵护，方能到我这烹饪为饕餮大餐！不过，据说商城里会出售一种能更快刺激蟹苗成长的<y超级蟹用激素>，你若有此物可直接来找我！养育蟹苗真是不简单呐，如果觉得这些事都很劳神烦心，那么直接食用这份蟹苗，则会给你带来提升1000点经验的惊喜！")
	
	MisResultCondition(HasMission, 1210)
	MisResultCondition(NoRecord, 1210)
	MisResultCondition(HasFlag, 1210, 19)
	MisResultCondition(HasFlag, 1210, 29)
	MisResultCondition(HasItem, 4259, 5)
	MisResultCondition(HasItem, 4890, 5)

	MisResultAction(TakeItem, 4259, 5)
	MisResultAction(TakeItem, 4890, 5)


	MisResultAction(ClearMission, 1210)
	MisResultAction(SetRecord, 1210)
	MisResultAction(ClearRecord, 1210)                                   ----------任务可以反复接
	MisResultAction(Givecrab, 0058)                                   ---------蟹苗
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsMonster, 273)
	TriggerAction(1, AddNextFlag, 1210, 10, 10)
	RegCurTrigger(12101)

	InitTrigger()
	TriggerCondition(1, IsMonster, 186)
	TriggerAction(1, AddNextFlag, 1210, 20, 10)
	RegCurTrigger(12102)

	InitTrigger()
	TriggerCondition(1, IsItem, 4259)
	TriggerAction(1, AddNextFlag, 1210, 30, 5)
	RegCurTrigger(12103)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1210, 40, 5)
	RegCurTrigger(12104)



-----------------------------kokora---------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------升级考试1	
	DefineMission( 6138, "升级考试任务", 1211)
	MisBeginTalk( "<t>学了这么久，你终于可以提升学历了哦！这次的考试任务很简单，去找30个精灵果来就行了")
	MisBeginCondition( CheckXSZCh,2 )				------检测学生证中储存的学分是否达到上限
	MisBeginCondition( HasItem , 3280,1 )
	MisBeginCondition( HasNoItem, 3282)
	MisBeginCondition( NoMission ,1211)
	MisBeginAction( AddMission, 1211)
	MisBeginAction(AddTrigger, 12111, TE_GETITEM, 3116, 30 )
	MisCancelAction( ClearMission, 1211)

	MisNeed(MIS_NEED_ITEM, 3116, 30, 10, 30 )
	MisHelpTalk( "<t>快点去吧，时间不等人哦")

	MisResultTalk( "<t>祈祷自己有个好成绩吧！")
	MisResultCondition( HasMission, 1211)
	MisResultCondition( HasItem, 3116, 30)
	MisResultAction( TakeItem, 3116, 30)
	MisResultAction( ClearMission, 1211)
	MisResultAction( GiveItem, 3282, 1, 4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1211, 10, 30 )
	RegCurTrigger( 12111 )


--------------------------------------------------------------------拯救剑客裴梦

	DefineMission( 6139, "拯救剑客裴梦", 1212 )
	MisBeginTalk("<t>我的朋友裴梦被魔王洛克残忍的杀害了.勇敢的战士,如果你能够为我找回代表我朋友灵魂的<b七个字母P-E-I-M-E-N-G>.我将会把我收藏多年的魔法盒送给你.你可以去找一下在<b寂寞之塔附近的洛克的守门人(271,1775)>询问一下具体的情况")
	MisBeginCondition(NoMission, 1212)
	MisBeginCondition(NoRecord,1212)
	MisBeginAction(AddMission,1212)
	MisBeginAction(AddTrigger, 12121, TE_GETITEM, 3854, 2)
	MisBeginAction(AddTrigger, 12122, TE_GETITEM, 3858, 1)
	MisBeginAction(AddTrigger, 12123, TE_GETITEM, 3863, 1)
	MisBeginAction(AddTrigger, 12124, TE_GETITEM, 3865, 1)
	MisBeginAction(AddTrigger, 12125, TE_GETITEM, 3862, 1)
	MisBeginAction(AddTrigger, 12126, TE_GETITEM, 3856, 1)
	
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找回代表夏天朋友灵魂的<b七个字母P-E-I-M-E-N-G>.去找一下在<b寂寞之塔附近的洛克的守门人(271,1775)>询问一下具体的情况.记得回来找白银城的魔法师夏天(2229,2782)交差")
	MisNeed(MIS_NEED_ITEM, 3854, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 3858, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3863, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3865, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 3862, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3856, 1, 60, 1)

	MisHelpTalk("<t>我等着你的归来.")
	MisResultTalk("<t>你是真正的勇士!作为报答,这个我收藏了多年的魔法盒,现在是你的了.")

	MisResultCondition(HasMission, 1212)
	MisResultCondition(NoRecord,1212)
	MisResultCondition(HasItem, 3854, 2)
	MisResultCondition(HasItem, 3858, 1)
	MisResultCondition(HasItem, 3863, 1)
	MisResultCondition(HasItem, 3865, 1)
	MisResultCondition(HasItem, 3862, 1)
	MisResultCondition(HasItem, 3856, 1)

	MisResultAction(TakeItem, 3854, 2 )
	MisResultAction(TakeItem, 3858, 1 )
	MisResultAction(TakeItem, 3863, 1 )
	MisResultAction(TakeItem, 3865, 1 )
	MisResultAction(TakeItem, 3862, 1 )
	MisResultAction(TakeItem, 3856, 1 )

	
	MisResultAction(GiveItem, 3673,1,4)------------夏天的魔法盒
	MisResultAction(ClearMission, 1212)
	--MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1212)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3854)	
	TriggerAction( 1, AddNextFlag, 1212, 10, 2 )
	RegCurTrigger( 12121 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3858)	
	TriggerAction( 1, AddNextFlag, 1212, 20, 1 )
	RegCurTrigger( 12122 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3863)	
	TriggerAction( 1, AddNextFlag, 1212, 30, 1 )
	RegCurTrigger( 12123 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3865)	
	TriggerAction( 1, AddNextFlag, 1212, 40, 1 )
	RegCurTrigger( 12124 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3862)	
	TriggerAction( 1, AddNextFlag, 1212, 50, 1 )
	RegCurTrigger( 12125 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3856)	
	TriggerAction( 1, AddNextFlag, 1212, 60, 1 )
	RegCurTrigger( 12126 )

	----------------------------------------------------------守门人透漏的信息----------洛克家的守门人
	DefineMission( 6140, "守门人透漏的信息", 1213 )
	MisBeginTalk("<t>我不能出卖洛克大人,但我也很尊敬你这样舍身挽救朋友的人.这样吧,我告诉你一个信息：第一张字母在寂寞之塔1(263,260)我们家男佣的手里")
				
	MisBeginCondition(NoMission, 1213)
	MisBeginCondition(NoRecord,1213)
	MisBeginCondition(HasMission, 1212)
	MisBeginCondition(NoRecord, 1212)
	MisBeginAction(AddMission,1213)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找寂寞之塔1层(263,260)洛克家的男佣聊聊")
	
	MisHelpTalk("<t>我并没有出卖我的主人哦,有谁看到我送出了字母卡?")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------守门人透漏的信息--------洛克家的男佣
	DefineMission(6141, "守门人透漏的信息", 1213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的主人的确交给过我一张字母卡片.但我凭什么给你?")
	MisResultCondition(NoRecord, 1213)
	MisResultCondition(HasMission,1213)
	MisResultAction(ClearMission,1213)
	MisResultAction(SetRecord, 1213)


	---------------------------------------------男佣的不满---------洛克家的男佣
	DefineMission(6142,"男佣的不满",1214)

      MisBeginTalk("<t> 其实这个字母卡对我来说也没什么用,我也是偶然得到的.看到旁边那些讨厌的怪物了吗?每当我要约会的时候它们总是不合时宜的前来打扰,要给它们点颜色看看.你做得令我满意,我会把那张字母卡送给你.")

      MisBeginCondition(NoRecord,1214)
      MisBeginCondition(NoMission,1214)
      MisBeginCondition(HasRecord, 1213)
      MisBeginAction(AddMission,1214)
      MisBeginAction(AddTrigger, 12141, TE_GETITEM, 4739, 25 )
      MisBeginAction(AddTrigger, 12142, TE_GETITEM, 4740, 25 )          
      MisBeginAction(AddTrigger, 12143, TE_GETITEM, 4741, 25 )               
      MisBeginAction(AddTrigger, 12144, TE_GETITEM, 1486, 25 )               
      MisCancelAction(SystemNotice, "该任务无法中断")

      MisNeed(MIS_NEED_DESP, "尖锐的土著长矛、坚固的蜥蜴人腰带、敏捷的圣林之心、损坏的白色灵猫翅膀各25个!")
      MisNeed(MIS_NEED_ITEM, 4739, 25,  1, 25 )
      MisNeed(MIS_NEED_ITEM, 4740, 25, 26, 25 )
      MisNeed(MIS_NEED_ITEM, 4741, 25,  51, 25 )
      MisNeed(MIS_NEED_ITEM, 1486, 25,  76, 25 )

      MisHelpTalk("<t>不帮我教训它们,一切免谈.")  
      MisResultTalk("<t>勇士,既然你已经收集齐了我要的东西.那么作为报酬,这张字母P你拿去吧.")
      MisResultCondition(HasMission,1214 )
      MisResultCondition(NoRecord,1214)
      MisResultCondition(HasItem, 4739, 25 )
      MisResultCondition(HasItem, 4740, 25 )
      MisResultCondition(HasItem, 4741, 25 )
      MisResultCondition(HasItem, 1486, 25 )

        MisResultAction(TakeItem, 4739, 25 )
	MisResultAction(TakeItem, 4740, 25 )
	MisResultAction(TakeItem, 4741, 25 )
	MisResultAction(TakeItem, 1486, 25 )

      MisResultAction(GiveItem, 3865, 1, 4 )
      MisResultAction(ClearMission, 1214 )
      MisResultAction(SetRecord, 1214)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 1214, 1, 25 )
	RegCurTrigger( 12141 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4740)	
	TriggerAction( 1, AddNextFlag, 1214, 26, 25 )
	RegCurTrigger( 12142 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4741)	
	TriggerAction( 1, AddNextFlag, 1214, 51, 25 )
	RegCurTrigger( 12143 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1486)	
	TriggerAction( 1, AddNextFlag, 1214, 76, 25 )
	RegCurTrigger( 12144 )
  
----------------------------------------------------------奇怪的女佣----------洛克家的男佣
	DefineMission( 6143, "奇怪的女佣", 1215 )
	MisBeginTalk("<t>据我所知,寂寞之塔2层(151,134)的我家的女佣那里也有一张字母卡.祝您好运.")
				
	MisBeginCondition(NoMission, 1215)
	MisBeginCondition(NoRecord,1215)
	MisBeginCondition(HasRecord, 1214)
	MisBeginAction(AddMission,1215)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找寂寞之塔2层(151,134)的洛克家的女佣聊聊")
	
	MisHelpTalk("<t>她是一位奇怪的女性.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------奇怪的女佣--------洛克家的女佣
	DefineMission(6144, "奇怪的女佣", 1215, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的确像传说中的那样有个性,但我发誓我绝不是奇怪的人.")
	MisResultCondition(NoRecord, 1215)
	MisResultCondition(HasMission,1215)
	MisResultAction(ClearMission,1215)
	MisResultAction(SetRecord, 1215)

	---------------------------------------------治疗多嘴的秘方---------洛克家的女佣
	DefineMission(6145,"治疗多嘴的秘方",1216)

      MisBeginTalk("<t> 如果一定要说我有什么不足的地方就是我有点爱管闲事,就是人们常说的多嘴.我刚刚得到一个秘方可以治疗这个毛病,就是用铁镐和战斧不停的击碎骷髅,坚持七七四十九天.我想我会因此变得讨人喜欢的.")

      MisBeginCondition(NoRecord,1216)
      MisBeginCondition(NoMission,1216)
      MisBeginCondition(HasRecord, 1215)
      MisBeginAction(AddMission,1216)
      MisBeginAction(AddTrigger, 12161, TE_GETITEM, 4742, 35 )
      MisBeginAction(AddTrigger, 12162, TE_GETITEM, 4743, 35 )          
      MisBeginAction(AddTrigger, 12163, TE_GETITEM, 4745, 35 )                           
	MisCancelAction(SystemNotice, "该任务无法中断")

      MisNeed(MIS_NEED_DESP, "收集暗血骷髅、地精铁镐、沉重的地精战斧各35个!")
      MisNeed(MIS_NEED_ITEM, 4742, 35,  1, 35 )
      MisNeed(MIS_NEED_ITEM, 4743, 35, 36, 35 )
      MisNeed(MIS_NEED_ITEM, 4745, 35,  71, 35 )

      MisHelpTalk("<t>我知道这听起来有点匪夷所思.")  
      MisResultTalk("<t>真希望我的瑕疵可以祛除.这个字母是我给你的回报.")
      MisResultCondition(HasMission,1216 )
      MisResultCondition(NoRecord,1216)
      MisResultCondition(HasItem, 4742, 35 )
      MisResultCondition(HasItem, 4743, 35 )
      MisResultCondition(HasItem, 4745, 35 )

        MisResultAction(TakeItem, 4742, 35 )
	MisResultAction(TakeItem, 4743, 35 )
	MisResultAction(TakeItem, 4745, 35 )


      MisResultAction(GiveItem, 3854, 1, 4 )
      MisResultAction(ClearMission, 1216 )
      MisResultAction(SetRecord, 1216)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4742)	
	TriggerAction( 1, AddNextFlag, 1216, 1, 35 )
	RegCurTrigger( 12161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4743)	
	TriggerAction( 1, AddNextFlag, 1216, 36, 35 )
	RegCurTrigger( 12162 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4745)	
	TriggerAction( 1, AddNextFlag, 1216, 71, 35 )
	RegCurTrigger(12163 )
----------------------------------------------------------洛克家的小秘----------洛克家的女佣
	DefineMission( 6146, "洛克家的小秘", 1217 )
	MisBeginTalk("<t>你知道吗,寂寞之塔3层(63,311)的女人是洛克大人的小秘.说不定她那里也有一张字母卡,哎呦,我又多嘴了,看来要赶快治疗,不奉陪了.")
				
	MisBeginCondition(NoMission, 1217)
	MisBeginCondition(NoRecord,1217)
	MisBeginCondition(HasRecord, 1216)
	MisBeginAction(AddMission,1217)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找寂寞之塔3层(63,311)的洛克家的小秘聊聊")
	
	MisHelpTalk("<t>我最不喜欢那种搔首弄姿的女人.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------洛克家的小秘--------洛克家的小秘
	DefineMission(6147, "洛克家的小秘", 1217, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>谁说我和洛克大人关系暧昧了,造谣嘛.")
	MisResultCondition(NoRecord, 1217)
	MisResultCondition(HasMission,1217)
	MisResultAction(ClearMission,1217)
	MisResultAction(SetRecord, 1217)

	--------------------------------------------------------------------小秘的梦想------洛克家的小秘

	DefineMission( 6148, "小秘的梦想", 1218 )
	MisBeginTalk("<t>我有一个美丽的梦想,要背上翅膀翱翔远方.但是我需要原料和工具.")
	MisBeginCondition(NoMission, 1218)
	MisBeginCondition(NoRecord,1218)
	MisBeginCondition(HasRecord, 1217)
	MisBeginAction(AddMission,1218)
	MisBeginAction(AddTrigger, 12181, TE_GETITEM, 1501, 20)
	MisBeginAction(AddTrigger, 12182, TE_GETITEM, 1490, 20)
	MisBeginAction(AddTrigger, 12183, TE_GETITEM, 4748, 20)
	MisBeginAction(AddTrigger, 12184, TE_GETITEM, 4749, 20)
	MisBeginAction(AddTrigger, 12185, TE_GETITEM, 4725, 20)
	MisBeginAction(AddTrigger, 12186, TE_GETITEM, 4747, 20)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集破损的黑色猫铃铛、损坏的黑色灵猫翅膀、破裂的地精耳环、大号地精扳手、破旧的猎手之弓、白色灵猫翅膀各20个.")
	MisNeed(MIS_NEED_ITEM, 1501, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 1490, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 4748, 20, 41, 20)
	MisNeed(MIS_NEED_ITEM, 4749, 20, 61, 20)
	MisNeed(MIS_NEED_ITEM, 4725, 20, 81, 20)
	MisNeed(MIS_NEED_ITEM, 4747, 20, 101, 20)

	MisHelpTalk("<t>我仿佛已经触摸到了白云的衣角.")
	MisResultTalk("<t>谢谢你帮助我实现美丽的梦想,梦想可能不会实现,但是人是不能没有梦想的.")

	MisResultCondition(HasMission, 1218)
	MisResultCondition(NoRecord,1218)
	MisResultCondition(HasItem, 1501, 20)
	MisResultCondition(HasItem, 1490, 20)
	MisResultCondition(HasItem, 4748, 20)
	MisResultCondition(HasItem, 4749, 20)
	MisResultCondition(HasItem, 4725, 20)
	MisResultCondition(HasItem, 4747, 20)

	MisResultAction(TakeItem, 1501, 20 )
	MisResultAction(TakeItem, 1490, 20 )
	MisResultAction(TakeItem, 4748, 20 )
	MisResultAction(TakeItem, 4749, 20 )
	MisResultAction(TakeItem, 4725, 20 )
	MisResultAction(TakeItem, 4747, 20 )

	
	MisResultAction(GiveItem, 3858,1,4)------------i
	MisResultAction(ClearMission, 1218)
	MisResultAction(SetRecord, 1218)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 1501)	
	TriggerAction( 1, AddNextFlag, 1218, 1, 20 )
	RegCurTrigger( 12181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1490)	
	TriggerAction( 1, AddNextFlag, 1218, 21, 20 )
	RegCurTrigger( 12182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4748)	
	TriggerAction( 1, AddNextFlag, 1218, 41, 20 )
	RegCurTrigger( 12183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4749)	
	TriggerAction( 1, AddNextFlag, 1218, 61, 20 )
	RegCurTrigger( 12184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4725)	
	TriggerAction( 1, AddNextFlag, 1218, 81, 20 )
	RegCurTrigger( 12185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4747)	
	TriggerAction( 1, AddNextFlag, 1218, 101, 20 )
	RegCurTrigger( 12186 )

	----------------------------------------------------------严肃的守护者----------洛克家的小秘
	DefineMission( 6149, "严肃的守护者", 1219 )
	MisBeginTalk("<t>寂寞之塔4(261,70)层的守护者是一个很严肃的人,祈祷你能顺利拿到一张卡片.")
				
	MisBeginCondition(NoMission, 1219)
	MisBeginCondition(NoRecord,1219)
	MisBeginCondition(HasRecord, 1218)
	MisBeginAction(AddMission,1219)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找寂寞之塔4(261,70)层的洛克家的守护者聊聊")
	
	MisHelpTalk("<t>上一层很危险哦.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------严肃的守护者--------洛克家的守护者
	DefineMission(6150, "严肃的守护者", 1219, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>不管是什么地位的什么人,都应该学会尊重别人,否则永远不会得到别人真正的尊重.")
	MisResultCondition(NoRecord, 1219)
	MisResultCondition(HasMission,1219)
	MisResultAction(ClearMission,1219)
	MisResultAction(SetRecord, 1219)

--------------------------------------------------------------------一个人情又一个人情------洛克家的守护者

	DefineMission( 6151, "一份人情又一份人情", 1220 )
	MisBeginTalk("<t>我为什么会一直作魔王的守护者?!是因为我欠他一份人情.当初我落魄的时候,他给了我黑色灵猫翅膀、被污染的天使光环各10个,卖掉买稀饭吃.事到如今我对他的恩情已经报答得差不多了,你再帮我个忙我就可以摆脱洛克了.")
	MisBeginCondition(NoMission, 1220)
	MisBeginCondition(NoRecord,1220)
	MisBeginCondition(HasRecord, 1219)
	MisBeginAction(AddMission,1220)
	MisBeginAction(AddTrigger, 12201, TE_GETITEM, 4750,50)
	MisBeginAction(AddTrigger, 12202, TE_GETITEM, 4763, 50)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集黑色灵猫翅膀、被污染的天使光环各50个.")
	MisNeed(MIS_NEED_ITEM, 4750, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 4763, 50, 51, 50)


	MisHelpTalk("<t>我能否获得自由就靠你了.")
	MisResultTalk("<t>终于可以还洛克这份人情,但我又欠了你一份人情,我只有把字母卡给你作为回报了,也算替洛克做一件好事.")

	MisResultCondition(HasMission, 1220)
	MisResultCondition(NoRecord,1220)
	MisResultCondition(HasItem, 4750, 50)
	MisResultCondition(HasItem, 4763,50)
	MisResultAction(TakeItem, 4750, 50 )
	MisResultAction(TakeItem, 4763, 50 )
	
	MisResultAction(GiveItem, 3862,1,4)----------m
	MisResultAction(ClearMission, 1220)
	MisResultAction(SetRecord, 1220)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4750)	
	TriggerAction( 1, AddNextFlag, 1220, 1, 50 )
	RegCurTrigger( 12201 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4763)	
	TriggerAction( 1, AddNextFlag, 1220, 21, 50 )
	RegCurTrigger( 12202 )

----------------------------------------------------------还是一份人情----------洛克家的守护者
	DefineMission( 6152, "还是一份人情", 1221 )
	MisBeginTalk("<t>我突然有一个好主意,这辈子我一直在还别人的情,或许这次我可以让你欠我一份情.<n><t>寂寞之塔5层(542,54)的管家那有一张字母卡片")
				
	MisBeginCondition(NoMission, 1221)
	MisBeginCondition(NoRecord,1221)
	MisBeginCondition(HasRecord, 1220)
	MisBeginAction(AddMission,1221)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找寂寞之塔5层(542,54)的洛克家的管家聊聊")
	
	MisHelpTalk("<t>不用谢我,我很享受这种感觉,虽然好像有点自私.哈哈...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------还是一份人情--------洛克家的管家
	DefineMission(6153, "还是一份人情", 1221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>这个不苟言笑的家伙倒是开心的送人情给别人,我怎么办?")
	MisResultCondition(NoRecord, 1221)
	MisResultCondition(HasMission,1221)
	MisResultAction(ClearMission,1221)
	MisResultAction(SetRecord, 1221)


	--------------------------------------------------------------------管家的烦恼------洛克家的管家

	DefineMission( 6154, "管家的烦恼", 1222 )
	MisBeginTalk("<t>做人不可以太贪婪知道吗?不要像我.上次我的亲友来拜望我,我看洛克大人不是很注意家里的财物状况就私自拿家里的东西送给我的亲戚.不知道为什么洛克大人有了察觉,现在我很着急,如果你可以帮我收集齐这些东西,我不介意把大人的字母卡送给你")
	MisBeginCondition(NoMission, 1222)
	MisBeginCondition(NoRecord,1222)
	MisBeginCondition(HasRecord, 1221)
	MisBeginAction(AddMission,1222)
	MisBeginAction(AddTrigger, 12221, TE_GETITEM, 4770, 35)
	MisBeginAction(AddTrigger, 12222, TE_GETITEM, 4766, 35)
	MisBeginAction(AddTrigger, 12223, TE_GETITEM, 4772, 35)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集被诅咒的白色灵猫翅膀、 黑暗的圣林之心、被诅咒的黑色灵猫翅膀各35个.")
	MisNeed(MIS_NEED_ITEM, 4770, 35, 1, 35)
	MisNeed(MIS_NEED_ITEM, 4766, 35, 36, 35)
	MisNeed(MIS_NEED_ITEM, 4772, 35, 71, 35)

	MisHelpTalk("<t>要快,否则让洛克大人知道了,做什么都没有用了.")
	MisResultTalk("<t>总是这样拆东墙补西墙我真担心有一天我再没有退路了.")

	MisResultCondition(HasMission, 1222)
	MisResultCondition(NoRecord,1222)
	MisResultCondition(HasItem, 4770, 35)
	MisResultCondition(HasItem, 4766, 35)
	MisResultCondition(HasItem, 4772, 35)

	MisResultAction(TakeItem, 4770, 35 )
	MisResultAction(TakeItem, 4766, 35 )
	MisResultAction(TakeItem, 4772, 35 )
	
	MisResultAction(GiveItem, 3863,1,4)----------n
	MisResultAction(ClearMission, 1222)
	MisResultAction(SetRecord, 1222)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4770)	
	TriggerAction( 1, AddNextFlag, 1222, 1, 35 )
	RegCurTrigger( 12221 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4766)	
	TriggerAction( 1, AddNextFlag, 1222, 36, 35 )
	RegCurTrigger( 12222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4772)	
	TriggerAction( 1, AddNextFlag, 1222, 71, 35 )
	RegCurTrigger( 12223 )

---------------------------------------------------------管家的报复----------洛克家的管家
	DefineMission( 6155, "管家的报复", 1223 )
	MisBeginTalk("<t>哦~~我终于明白为什么一向信任我的洛克大人突然对我产生了怀疑,一定是他情人搞的鬼,因为我曾经看见她与一个陌生男子约会,她要陷害我...别说我不帮你,那个女人身上有一张卡片,你一定要拿到那张卡片.这样一来,如果我暴露了她也跑不了,哈哈哈,我太坏了~~")
				
	MisBeginCondition(NoMission, 1223)
	MisBeginCondition(NoRecord,1223)
	MisBeginCondition(HasRecord, 1222)
	MisBeginAction(AddMission,1223)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找寂寞之塔6层(541,268)的洛克的情人聊聊")
	
	MisHelpTalk("<t>怪不得从小妈妈就教育我不要和坏孩子玩呢,自从跟随了魔王洛克大人,我真的变坏了,呜...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------管家的报复--------洛克的情人
	DefineMission(6156, "管家的报复", 1223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>你怎么知道我有卡片的?")
	MisResultCondition(NoRecord, 1223)
	MisResultCondition(HasMission,1223)
	MisResultAction(ClearMission,1223)
	MisResultAction(SetRecord, 1223)
--------------------------------------------------------------------美女的奇特爱好------洛克的情人

	DefineMission( 6157, "美女的奇特爱好", 1224 )
	MisBeginTalk("<t>我最近突然对金属饰品特别感兴趣,已经痴迷到疯狂的程度.你一定不明白我为什么开始喜欢上金属烟囱,其实我也不明白.但我对自己喜欢的东西总是一定要得到,不惜任何代价,即使是魔王洛克的东西.")
	MisBeginCondition(NoMission, 1224)
	MisBeginCondition(NoRecord,1224)
	MisBeginCondition(HasRecord, 1223)
	MisBeginAction(AddMission,1224)
	MisBeginAction(AddTrigger, 12241, TE_GETITEM, 1503, 110)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集金属烟囱110个.")
	MisNeed(MIS_NEED_ITEM, 1503, 110, 1, 110)

	MisHelpTalk("<t>别跟我解释,我只要金属烟囱.")
	MisResultTalk("<t>看来我们真的是两个世界的人,像你不明白我一样,我永远不明白你要这个破字母有什么用,给你吧.")

	MisResultCondition(HasMission, 1224)
	MisResultCondition(NoRecord,1224)
	MisResultCondition(HasItem, 1503, 110)
	MisResultAction(TakeItem, 1503, 110 )

	MisResultAction(GiveItem, 3856,1,4)----------G
	MisResultAction(ClearMission, 1224)
	MisResultAction(SetRecord, 1224)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1503)	
	TriggerAction( 1, AddNextFlag, 1224, 1, 110 )
	RegCurTrigger( 12241 )

------------------------------------------------------赌气的旺财----------洛克的情人
	DefineMission( 6158, "赌气的旺财", 1225 )
	MisBeginTalk("<t>下一张字母在我家男人的宠物旺财身上.那是一只很通人性的狗哦,只是有点小气.有一次我生气没给他骨头吃,他逃到地狱四层藏起来了.总的来说我还是很喜欢它的.")
				
	MisBeginCondition(NoMission, 1225)
	MisBeginCondition(NoRecord,1225)
	MisBeginCondition(HasRecord, 1224)
	MisBeginAction(AddMission,1225)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找地狱四层(154,912)的洛克家的旺财要字母卡片")
	
	MisHelpTalk("<t>美丽的烟囱啊...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------赌气的旺财--------洛克家的旺财
	DefineMission(6159, "赌气的旺财", 1225, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>汪汪!我逃到这你都发现我了?是洛克情人要你来请我回去的吗?她怕疼爱我的洛克找不到我怪罪她吧?")
	MisResultCondition(NoRecord, 1225)
	MisResultCondition(HasMission,1225)
	MisResultAction(ClearMission,1225)
	MisResultAction(SetRecord, 1225)


	--------------------------------------------------------------------旺财也不是好惹的------洛克家的旺财

	DefineMission( 6160, "旺财也不是好惹的!", 1226 )
	MisBeginTalk("<t>地狱三层的僵尸一直欺负可怜的我,如果你帮我去把他的头发拔几根下来,这张无聊的卡片就是你的了.一定要让他们知道旺财也不是好惹的.")
	MisBeginCondition(NoMission, 1226)
	MisBeginCondition(NoRecord,1226)
	MisBeginCondition(HasRecord, 1225)
	MisBeginAction(AddMission,1226)
	MisBeginAction(AddTrigger, 12261, TE_GETITEM, 4884, 99)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集僵尸头发99个.")
	MisNeed(MIS_NEED_ITEM, 4884, 99, 1, 99)

	MisHelpTalk("<t>今天你汪汪了没有?")
	MisResultTalk("<t>你可以回去<b找白银城的魔法师夏天(2229,2782)交差>了.")

	MisResultCondition(HasMission, 1226)
	MisResultCondition(NoRecord,1226)
	MisResultCondition(HasItem, 4884, 99)
	MisResultAction(TakeItem, 4884, 99 )

	MisResultAction(GiveItem, 3854,1,4)----------E
	MisResultAction(ClearMission, 1226)
	MisResultAction(SetRecord, 1226)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4884)	
	TriggerAction( 1, AddNextFlag, 1226, 1, 99 )
	RegCurTrigger( 12261 )


-----------------------------------------------------哦!没钥匙----------魔法师夏天
	DefineMission( 6161, "哦!没钥匙", 1227 )
	MisBeginTalk("<t>哦!没钥匙.我在去秋岛旅游的时候把开启魔法盒的钥匙掉在美丽的导游小姐(2423,3186)那了,只要你去找她要回,就可以打开魔法盒了")
				
	MisBeginCondition(NoMission, 1227)
	MisBeginCondition(NoRecord,1227)
	MisBeginCondition(HasRecord, 1212)
	MisBeginAction(AddMission,1227)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找秋岛导游小姐(2423,3186)要回开启魔法盒的钥匙。")
	
	MisHelpTalk("<t>哦!怎么忘记带回钥匙了...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------哦!没钥匙--------秋岛导游小姐
	DefineMission(6162, "哦!没钥匙", 1227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>一定是魔法师夏天叫你来的吧?他是有把钥匙丢在我这了")
	MisResultCondition(NoRecord, 1227)
	MisResultCondition(HasMission,1227)
	MisResultAction(ClearMission,1227)
	MisResultAction(SetRecord, 1227)



	--------------------------------------------------------------------导游小姐的请求------秋岛导游小姐

	DefineMission( 6163, "导游小姐的请求", 1228 )
	MisBeginTalk("<t>我帮你们保存了这么久,总该有点报答吧.秋岛经常有凶悍的土匪打劫游客,你就帮我除除害吧")
	MisBeginCondition(NoMission, 1228)
	MisBeginCondition(NoRecord,1228)
	MisBeginCondition(HasRecord, 1227)
	MisBeginAction(AddMission,1228)
	MisBeginAction(AddTrigger, 12281, TE_GETITEM, 0154, 20)
	MisBeginAction(AddTrigger, 12282, TE_GETITEM, 0156, 20)
	MisBeginAction(AddTrigger, 12283, TE_GETITEM, 0158, 20)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集东方海盗水手徽记、东方海盗战斗员徽记、东方海盗突击手徽记各20个.")
	MisNeed(MIS_NEED_ITEM, 0154, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 0156, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 0158, 20, 41, 20)

	MisHelpTalk("<t>你快去吧,我这里最近生意萧条得很呢.")
	MisResultTalk("<t>你还真是一个好手呢,谢谢.")

	MisResultCondition(HasMission, 1228)
	MisResultCondition(NoRecord,1228)
	MisResultCondition(HasItem, 0154, 20)
	MisResultCondition(HasItem, 0156, 20)
	MisResultCondition(HasItem, 0158, 20)

	MisResultAction(TakeItem, 0154, 20 )
	MisResultAction(TakeItem, 0156, 20 )
	MisResultAction(TakeItem, 0158, 20 )
	
	MisResultAction(ClearMission, 1228)
	MisResultAction(SetRecord, 1228)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0154)	
	TriggerAction( 1, AddNextFlag, 1228, 1, 20 )
	RegCurTrigger( 12281 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0156)	
	TriggerAction( 1, AddNextFlag, 1228, 36, 20 )
	RegCurTrigger( 12282 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0158)	
	TriggerAction( 1, AddNextFlag, 1228, 71, 20 )
	RegCurTrigger( 12283 )


		--------------------------------------------------------------------告慰亡灵------秋岛导游小姐

	DefineMission( 6164, "告慰亡灵", 1229 )
	MisBeginTalk("<t>秋岛上有很多的亡魂,能否继续为我找回去泣灵武士骸骨和废灵武士骸骨,让秋岛的亡灵得到安息.")
	MisBeginCondition(NoMission, 1229)
	MisBeginCondition(NoRecord,1229)
	MisBeginCondition(HasRecord, 1228)
	MisBeginAction(AddMission,1229)
	MisBeginAction(AddTrigger, 12291, TE_GETITEM, 3436, 50)
	MisBeginAction(AddTrigger, 12292, TE_GETITEM, 3434, 50)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "收集泣灵武士骸骨、废灵武士骸骨各50个.")
	MisNeed(MIS_NEED_ITEM, 3436, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 3434, 50, 51, 50)


	MisHelpTalk("<t>实在拜托你了.")
	MisResultTalk("<t>你真是好人,太感谢你啦.钥匙拿去吧.")

	MisResultCondition(HasMission, 1229)
	MisResultCondition(NoRecord,1229)
	MisResultCondition(HasItem, 3436, 50)
	MisResultCondition(HasItem, 3434, 50)

	MisResultAction(TakeItem, 3436, 50 )
	MisResultAction(TakeItem, 3434, 50 )

	MisResultAction(GiveItem, 3674,1,4)----------钥匙
	MisResultAction(ClearMission, 1229)
	MisResultAction(SetRecord, 1229)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1229, 1, 50 )
	RegCurTrigger( 12291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1229, 51, 50 )
	RegCurTrigger( 12292 )

----------------------------------------------------一把钥匙开一把锁---------秋岛导游小姐
	DefineMission( 6165, "一把钥匙开一把锁", 1230 )
	MisBeginTalk("<t>赶快找魔法师夏天打开魔法盒吧.")
				
	MisBeginCondition(NoMission, 1230)
	MisBeginCondition(NoRecord,1230)
	MisBeginCondition(HasRecord, 1229)
	MisBeginAction(AddMission,1230)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "找白银城魔法师夏天(2229,2782)打开魔法盒.")
	
	MisHelpTalk("<t>记得带钥匙和魔法盒一起去...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------一把钥匙开一把锁---------魔法师夏天
	DefineMission(6166, "一把钥匙开一把锁", 1230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>我的主啊,世间竟有如此毅力的孩子,难能可贵啊.我帮你打开盒子吧.哇,居然盒子里面有个黑匣子.拿去看看,是什么东东?")
	MisResultCondition(NoRecord, 1230)
	MisResultCondition(HasMission,1230)
	MisResultCondition(HasItem, 3673, 1)
	MisResultCondition(HasItem, 3674, 1)
	MisResultAction(TakeItem, 3673, 1 )
	MisResultAction(TakeItem, 3674, 1 )
	MisResultAction(GiveItem, 3672,1,4)----------黑匣子
	MisResultAction(ClearMission,1230)
	MisResultAction(SetRecord, 1230)
	MisResultBagNeed(1)

	MisResultAction(ClearRecord, 1212)---------------可以反复接
	MisResultAction(ClearRecord, 1213)---------------可以反复接
	MisResultAction(ClearRecord, 1214)---------------可以反复接
	MisResultAction(ClearRecord, 1215)---------------可以反复接
	MisResultAction(ClearRecord, 1216)---------------可以反复接
	MisResultAction(ClearRecord, 1217)---------------可以反复接
	MisResultAction(ClearRecord, 1218)---------------可以反复接
	MisResultAction(ClearRecord, 1219)---------------可以反复接
	MisResultAction(ClearRecord, 1220)---------------可以反复接
	MisResultAction(ClearRecord, 1221)---------------可以反复接
	MisResultAction(ClearRecord, 1222)---------------可以反复接
	MisResultAction(ClearRecord, 1223)---------------可以反复接
	MisResultAction(ClearRecord, 1224)---------------可以反复接
	MisResultAction(ClearRecord, 1225)---------------可以反复接
	MisResultAction(ClearRecord, 1226)---------------可以反复接
	MisResultAction(ClearRecord, 1227)---------------可以反复接
	MisResultAction(ClearRecord, 1228)---------------可以反复接
	MisResultAction(ClearRecord, 1229)---------------可以反复接
	MisResultAction(ClearRecord, 1230)---------------可以反复接


--------------------------------------------------------勇者的足迹	
	DefineMission( 6167, "勇者的足迹", 1231)
	MisBeginTalk( "<t>孩子,你长大了,可以去外面历练了.<n><t>这里有我族最强勇者留下的历练心得,我可以当礼物送给你,想要吗？<n><t>你想要啊？你要是想要的话你就说话嘛,你不说我怎么知道你想要呢,虽然你很有诚意地看着我,可是你还是要跟我说你想要的.你真的想要吗？那你就拿去吧!")
	MisBeginCondition( LvCheck, ">", 44)
	MisBeginCondition( LvCheck, "<", 66)
	MisBeginCondition( NoMission, 1231)
	MisBeginCondition( NoRecord, 1231)
	MisBeginAction( AddMission, 1231)
	MisBeginAction( AddTrigger, 12311, TE_KILL, 514, 30 )
	MisCancelAction(ClearMission, 1231)

	MisNeed(MIS_NEED_KILL, 514, 30, 10, 30)
	
	MisResultTalk("<t>哇哈哈,你杀了这么多怪啊!其实刚才我说错了,只要杀10个就可以了.但是既然你已经杀了,那就30个吧!<n><t>唉,年纪大了,记性不好啊!你怎么还在这里站着啊？<n><t>哦,对对对,还没给你奖励啊.这是给你的奖励,如果想要获得更丰富的奖励,不要忘记再来找我哦!")
	MisHelpTalk("<t>怎么还不去啊？巨型针刺曼陀罗就在加纳大陆(440,1320).")
	MisResultCondition( HasFlag, 1231, 39 )
	MisResultCondition( HasMission, 1231)
	MisResultCondition( NoRecord, 1231)
	MisResultAction( ClearMission, 1231)
	MisResultAction( SetRecord, 1231)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 1000)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 514 )	
	TriggerAction( 1, AddNextFlag, 1231, 10, 30 )
	RegCurTrigger(12311)

	----------------------------------------
	DefineMission( 6168, "勇者的足迹", 1232)
	MisBeginTalk( "<t>你很勇敢,是个好赌徒!高风险就有高回报!<n><t>我要提醒你,没有实力的冒险将会使投入付诸东流哦!<n><t>这是你下一关的考验,年轻人,去吧!我等你回来!")
	MisBeginCondition( NoMission, 1232)
	MisBeginCondition( NoRecord, 1232)
	MisBeginCondition( HasRecord, 1231)
	MisBeginAction( AddMission, 1232)
	MisBeginAction( AddTrigger, 12321, TE_KILL, 284, 50 )
	MisCancelAction( ClearMission, 1232)

	MisNeed( MIS_NEED_KILL, 284, 50, 10, 50)

	MisResultTalk( "<t>祝贺勇士平安归来!你得到了英雄的认可,应该告诉你一些秘密了.其实,前面都是我个人对你的考验,所谓英雄的宝藏只在传说中出现过.<n><t>嗨,你不要生气啊!现在我已经找到了宝藏的藏匿之处,只是由于年代久远,锁已生锈,需要一种地金矿才能化解,从而得到真正的宝藏.你可以帮我找来吗？<n><t>年轻的勇士,请原谅我对你隐瞒,相信你能了解我的苦衷.我保证,只要你能找到地金,宝藏我全都给你!")
	MisHelpTalk( "<t>守护天使就在加纳大陆(904,1280)附近出没")
	MisResultCondition( HasMission, 1232)
	MisResultCondition( NoRecord, 1232)
	MisResultCondition( HasFlag, 1232, 59)
	MisResultAction( ClearMission, 1232)
	MisResultAction( SetRecord, 1232)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 3000)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 1232, 10, 50 )
	RegCurTrigger(12321)

	----------------------------------------
	DefineMission( 6169, "勇者的足迹", 1233)
	MisBeginTalk( "<t>年轻人,你很善良!神与你同在,这是我查到的地金产地（魔女之海1381,3134）,送你,拿去吧,相信是你需要的!")
	MisBeginCondition( NoMission, 1233)
	MisBeginCondition( NoRecord, 1233)
	MisBeginCondition( HasRecord, 1232)
	MisBeginAction( AddMission, 1233)
	MisBeginAction( AddTrigger, 12331, TE_KILL, 65, 10 )
	MisBeginAction( AddTrigger, 12332, TE_GETITEM, 1783, 50)
	MisCancelAction( ClearMission, 1233)

	MisNeed( MIS_NEED_KILL, 65, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 1783, 50, 20, 50)

	MisResultTalk( "<t>终于得到传说中的宝藏!!<n><t>额,这是什么？我怎么看不懂？<n><t>天理不公啊,为什么我花费这么多心血得到却是这样的东西啊!<n><t>原来真是只有福泽深厚的有缘人才能真正拥有宝藏!现在这宝藏在我这里也没用,就送给你吧.")
	MisHelpTalk( "<t>快去吧,别磨蹭了.")
	MisResultCondition( HasMission, 1233)
	MisResultCondition( NoRecord, 1233)
	MisResultCondition( HasFlag, 1233, 19)
	MisResultCondition( HasItem, 1783, 50)
	MisResultAction( TakeItem, 1783, 50)
	MisResultAction( ClearMission, 1233)
	MisResultAction( SetRecord, 1233)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( AddExpAndType, 2, 80000, 80000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 65)
	TriggerAction(1, AddNextFlag, 1233, 10, 10)
	RegCurTrigger(12331)

	InitTrigger()
	TriggerCondition(1, IsItem, 1783)
	TriggerAction(1, AddNextFlag, 1233, 20, 50)
	RegCurTrigger(12332)

	----------------------------------------------
	DefineMission( 6170, "勇者的爱恋", 1234)
	MisBeginTalk( "<t>刚才给你宝藏时我发现了英雄的遗书,原来所谓的宝藏其实是一个姑娘写给他的情书.<n><t>当时正值黑龙横行,各种怪物滋扰着大陆居民.英雄为了维护世界和平,只能将对姑娘的爱恋深深埋藏在心底,带领着无数勇士争战四海!<n><t>终于在他带领下,使我们有了现在的和平生活!虽然他一生光明磊落,让世人敬仰!但心里对那姑娘却有着深深的愧疚!<n><t>这是他写给姑娘的信,你可以帮忙送给姑娘吗？<n><t>这是书信,据说那姑娘为了等待英雄归来,已迁居到藏宝海湾的一个小岛,不分昼夜的凝望着海边.<n><t>不要急着走啊,我还没说完呢!英雄为那姑娘准备的礼物被怪物侵占了,希望你可以找到一起送给她.")
	MisBeginCondition( NoMission, 1234)
	MisBeginCondition( NoRecord, 1234)
	MisBeginCondition( HasRecord, 1233)
	MisBeginAction( AddMission, 1234)
	MisBeginAction( GiveItem, 2671, 1, 4)
	MisBeginAction( AddTrigger, 12341, TE_GETITEM, 2671, 1)
	MisBeginAction( AddTrigger, 12342, TE_GETITEM, 4503, 1)
	MisBeginAction( AddTrigger, 12343, TE_GETITEM, 3361, 89)
	MisCancelAction( ClearMission, 1234)
	MisBeginBagNeed(1)

	MisHelpTalk( "<t>快去吧!")
	MisNeed( MIS_NEED_DESP, "将勇者的表白,89个珍珠以及1个皇冠送去给藏宝海湾的伊丽莎白")
	MisNeed( MIS_NEED_ITEM, 2671, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 4503, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 3361, 89, 30, 89)

	MisResultCondition( AlwaysFailure )
	---------------------------------------------
	DefineMission( 6171, "勇者的爱恋", 1234, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>谢谢你,勇士.这么多年了,终于有了他的消息.<n><t>这是你应得的报酬.")
	MisResultCondition( HasItem, 2671, 1)
	MisResultCondition( HasItem, 4503, 1)
	MisResultCondition( HasItem, 3361, 89)
	MisResultCondition( HasMission, 1234)
	MisResultCondition( NoRecord, 1234)
	MisResultAction( TakeItem, 2671, 1)
	MisResultAction( TakeItem, 4503, 1)
	MisResultAction( TakeItem, 3361, 89)
	MisResultAction( ClearMission, 1234)
	MisResultAction( SetRecord, 1234)
	MisResultAction( AddExpPer, 2)
	MisResultAction( AddMoney, 300000)
	MisResultAction( AddReadingBook )                       ------给予本职业的初级读物

	InitTrigger()
	TriggerCondition(1, IsItem, 2671)
	TriggerAction(1, AddNextFlag, 1234, 10, 1)
	RegCurTrigger(12341)

	InitTrigger()
	TriggerCondition(1, IsItem, 4503)
	TriggerAction(1, AddNextFlag, 1234, 20, 1)
	RegCurTrigger(12342)

	InitTrigger()
	TriggerCondition(1, IsItem, 3361)
	TriggerAction(1, AddNextFlag, 1234, 30, 89)
	RegCurTrigger(12343)


	-------------------------------------------------------
	DefineMission( 6172, "勇者的爱恋", 1235)
	MisBeginTalk( "<t>成为勇者的道路是极其漫长的，你还有很多要学的，回去找糊涂山人吧,也许他会给你点提示.")
	MisBeginCondition( NoMission, 1235)
	MisBeginCondition( NoRecord, 1235)
	MisBeginCondition( HasRecord, 1234)
	MisBeginAction( AddMission, 1235)
	MisCancelAction( ClearMission, 1235)

	MisHelpTalk( "<t>糊涂山人会给你提示的.")
	MisNeed( MIS_NEED_DESP, "回白银城找糊涂山人")

	MisResultCondition( AlwaysFailure )
	--------------------------------------------------------
	DefineMission( 6173, "勇者的爱恋", 1235, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>年轻人,干的不错,看来我该多给点活干干了.")
	MisResultCondition( HasMission, 1235)
	MisResultCondition( NoRecord, 1235)
	MisResultAction( ClearMission, 1235)
	MisResultAction( SetRecord, 1235)
	MisResultAction( AddMoney, 88)

	MisResultAction(ClearRecord, 1231)---------------可以反复接
	MisResultAction(ClearRecord, 1232)---------------可以反复接
	MisResultAction(ClearRecord, 1233)---------------可以反复接
	MisResultAction(ClearRecord, 1234)---------------可以反复接
	MisResultAction(ClearRecord, 1235)---------------可以反复接

	-------------------------------四季发财----------客栈老板·龙女
	DefineMission( 6174, "四季发财", 1236)
	MisBeginTalk( "<t>春夏秋冬4张牌都在秋香(秋岛2722,3137)这个臭丫头身上,帮我找回来吧,我会重重酬谢你的.")
	MisBeginCondition( NoMission, 1236)
	MisBeginCondition( NoRecord, 1236)
	MisBeginCondition( LvCheck, "<", 80)
	MisBeginAction( AddMission, 1236)
	MisBeginAction( AddTrigger, 12361, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12362, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12363, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12364, TE_GETITEM, 2972, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "从秋香那里夺回麻将牌(春),麻将牌(夏),麻将牌(秋),麻将牌(冬)给龙女(春岛3302,2501),秋香就在秋岛(2722,3137)")
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)

	MisResultTalk( "<t>哇!就是这4张牌,太好了!成为牌界第一人的宿愿今天得到实现.")
	MisHelpTalk( "<t>一定要帮我找回那四张牌啊,我成为牌界第一人的梦想就靠你了!")
	MisResultCondition( HasMission, 1236)
	MisResultCondition( NoRecord, 1236)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( ClearMission, 1236)
	MisResultAction( SetRecord, 1236)
	MisResultAction( AddExpNextLv1 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1236, 10, 1 )
	RegCurTrigger( 12361 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1236, 20, 1 )
	RegCurTrigger( 12362 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1236, 30, 1 )
	RegCurTrigger( 12363 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1236, 40, 1 )
	RegCurTrigger( 12364 )

---------------------------------八方进宝------------客栈老板·龙女
	DefineMission( 6175, "八方进宝", 1237)
	MisBeginTalk( "<t>春夏秋冬4张牌都在秋香(秋岛2722,3137)这个臭丫头身上,其中梅,兰,竹,菊在夏岛的西门庆(3734,2661)的身上,快点帮我找回来吧,我会重重酬谢你的!")
	MisBeginCondition( NoMission, 1237)
	MisBeginCondition( NoRecord, 1237)
	MisBeginCondition( LvCheck, "<", 90)
	MisBeginAction( AddMission, 1237)
	MisBeginAction( AddTrigger, 12371, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12372, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12373, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12374, TE_GETITEM, 2972, 1)
	MisBeginAction( AddTrigger, 12375, TE_GETITEM, 2973, 1)
	MisBeginAction( AddTrigger, 12376, TE_GETITEM, 2974, 1)
	MisBeginAction( AddTrigger, 12377, TE_GETITEM, 2975, 1)
	MisBeginAction( AddTrigger, 12378, TE_GETITEM, 2976, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "在夏岛的西门庆(3734,2661)的身上,找齐春夏秋冬梅兰竹菊8张麻将牌给龙女(春岛3302,2501)")
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)
	MisNeed( MIS_NEED_ITEM, 2973, 1, 50, 1)
	MisNeed( MIS_NEED_ITEM, 2974, 1, 60, 1)
	MisNeed( MIS_NEED_ITEM, 2975, 1, 70, 1)
	MisNeed( MIS_NEED_ITEM, 2976, 1, 80, 1)

	MisResultTalk( "<t>你太完美了,我要嫁给你!让你知道我雀王之王的魅力!")
	MisHelpTalk( "<t>快点去吧,如果你帮我找回了这8张牌,我是不会亏待你的.")
	MisResultCondition( HasMission, 1237)
	MisResultCondition( NoRecord, 1237)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultCondition( HasItem, 2973, 1)
	MisResultCondition( HasItem, 2974, 1)
	MisResultCondition( HasItem, 2975, 1)
	MisResultCondition( HasItem, 2976, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( TakeItem, 2973, 1)
	MisResultAction( TakeItem, 2974, 1)
	MisResultAction( TakeItem, 2975, 1)
	MisResultAction( TakeItem, 2976, 1)
	MisResultAction( ClearMission, 1237)
	MisResultAction( SetRecord, 1237)
	MisResultAction( AddExpNextLv2 )
	MisResultAction(ClearRecord, 1236)---------------可以反复接
	MisResultAction(ClearRecord, 1237)---------------可以反复接
	MisResultAction(ClearRecord, 1238)---------------可以反复接
	MisResultAction(ClearRecord, 1239)---------------可以反复接
	MisResultAction(ClearRecord, 1240)---------------可以反复接
	MisResultAction(ClearRecord, 1241)---------------可以反复接
	MisResultAction(ClearRecord, 1242)---------------可以反复接
	MisResultAction(ClearRecord, 1243)---------------可以反复接
	MisResultAction(ClearRecord, 1244)---------------可以反复接
	MisResultAction(ClearRecord, 1245)---------------可以反复接
	MisResultAction(ClearRecord, 1246)---------------可以反复接

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1237, 10, 1 )
	RegCurTrigger( 12371 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1237, 20, 1 )
	RegCurTrigger( 12372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1237, 30, 1 )
	RegCurTrigger( 12373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1237, 40, 1 )
	RegCurTrigger( 12374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2973)	
	TriggerAction( 1, AddNextFlag, 1237, 50, 1 )
	RegCurTrigger( 12375 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2974)	
	TriggerAction( 1, AddNextFlag, 1237, 60, 1 )
	RegCurTrigger( 12376 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2975)	
	TriggerAction( 1, AddNextFlag, 1237, 70, 1 )
	RegCurTrigger( 12377 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2976)	
	TriggerAction( 1, AddNextFlag, 1237,80, 1 )
	RegCurTrigger( 12378 )

----------------------------------心之锁----------西门庆
	DefineMission( 6176, "心之锁", 1238)
	MisBeginTalk( "<t>金莲姑娘是我今生的唯一,我需要如意钥匙打开她心灵的枷锁,你可以去找海盗的情圣沙岚城大使·席巴(加纳2256,2707)他可以给你提示.")
	MisBeginCondition( NoMission, 1238)
	MisBeginCondition( NoRecord, 1238)
	MisBeginCondition( HasMission, 1237)
	MisBeginAction( AddMission, 1238)
	MisBeginAction( AddTrigger, 12381, TE_GETITEM, 2965, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP,"去找沙岚城大使·席巴(加纳2256,2707)拿如意钥匙,并带回给夏岛西门庆(3734,2661).")
	MisNeed( MIS_NEED_ITEM, 2965, 1, 10, 1)

	MisResultTalk( "<t>Oh,baby!就是这把如意钥匙,今晚我就拿这把去开启金莲的心门.")
	MisHelpTalk( "<t>席巴一定知道如意钥匙的下落，去问问他吧")
	MisResultCondition( HasMission, 1238)
	MisResultCondition( NoRecord, 1238)
	MisResultCondition( HasItem, 2965, 1)
	MisResultAction( TakeItem, 2965, 1)
	MisResultAction( ClearMission, 1238)
	MisResultAction( SetRecord, 1238)
	MisResultAction( GiveItem, 2974, 1, 4)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2965)	
	TriggerAction( 1, AddNextFlag, 1238, 10, 1 )
	RegCurTrigger( 12381 )

----------------------------------心之锁----------沙岚城大使·席巴
	DefineMission( 6177, "心之锁", 1239)
	MisBeginTalk( "<t>黑珍珠是世界上人人追求的宝贝,我的孙女很要拥有2个黑珍珠来镶嵌她白金的手镯上,据说可以在春岛的狐妖,狐道士身上找到,如果你能找来2个给我的话,我就把我珍藏多年的如意钥匙送给你!!")
	MisBeginCondition( HasMission, 1238)
	MisBeginCondition( NoRecord, 1239)
	MisBeginCondition( NoMission, 1239)
	MisBeginAction( AddMission, 1239)
	MisBeginAction( AddTrigger, 12391, TE_GETITEM, 3362, 2)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "在春岛的那些狐狸身上找2个黑珍珠给席巴")
	MisNeed( MIS_NEED_ITEM, 3362, 2, 10, 2)

	MisResultTalk( "<t>黑珍珠是多好的宝物,我已经拥有了它,我的孙女一定会很高兴.")
	MisHelpTalk( "<t>黑珍珠春岛的那些狐狸身上就有.")
	MisResultCondition( HasMission, 1239)
	MisResultCondition( NoRecord, 1239)
	MisResultCondition( HasItem, 3362, 2)
	MisResultAction( TakeItem, 3362, 2)
	MisResultAction( ClearMission, 1239)
	MisResultAction( SetRecord, 1239)
	MisResultAction( GiveItem, 2965, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3362)	
	TriggerAction( 1, AddNextFlag, 1239, 10, 2 )
	RegCurTrigger( 12391 )
	
---------------------------------陈年的红酒-----------西门庆
	DefineMission( 6178, "陈年的红酒", 1240)
	MisBeginTalk( "<t>浪漫的夜晚怎么能缺少美味的红酒,我在冰狼的旅店老板·约瑟夫(1291,541)那定了1瓶陈年的红酒,你可以去帮我取回来吗?")
	MisBeginCondition( NoMission, 1240)
	MisBeginCondition( NoRecord, 1240)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginAction( AddMission, 1240)
	MisBeginAction( AddTrigger, 12401, TE_GETITEM, 2977, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "在冰狼的旅店老板·约瑟夫(1291,541)那帮西门庆(3734,2661)取来一瓶陈年的红酒")
	MisNeed( MIS_NEED_ITEM, 2977, 1, 10, 1)

	MisResultTalk( "<t>这将是一个令人期待的夜晚,我要和金莲姑娘一醉方休.")
	MisHelpTalk( "<t>快点去吧")
	MisResultCondition( HasMission, 1240)
	MisResultCondition( NoRecord, 1240)
	MisResultCondition( HasItem, 2977, 1)
	MisResultAction( TakeItem, 2977, 1)
	MisResultAction( ClearMission, 1240)
	MisResultAction( SetRecord, 1240)
	MisResultAction( GiveItem, 2976, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2977)	
	TriggerAction( 1, AddNextFlag, 1240, 10, 1 )
	RegCurTrigger( 12401 )

---------------------------------陈年的红酒------------旅店老板·约瑟夫
	DefineMission( 6179, "陈年的红酒", 1241)
	MisBeginTalk( "<t>我这有特制的世界最美味的红酒,你想买吗?有钱也不卖你!除非你有我想要的!<n><t>请拿麻将牌杠3个,麻将牌碰3个,麻将牌胡3个,椰果酒70个来和我换.")
	MisBeginCondition( NoMission, 1241)
	MisBeginCondition( NoRecord, 1241)
	MisBeginCondition( HasMission, 1240)
	MisBeginAction( AddMission, 1241)
	
	MisBeginAction( AddTrigger, 12411, TE_GETITEM, 0172, 3)
	MisBeginAction( AddTrigger, 12412, TE_GETITEM, 0173, 3)
	MisBeginAction( AddTrigger, 12413, TE_GETITEM, 0174, 3)
	MisBeginAction( AddTrigger, 12414, TE_GETITEM, 3916, 70)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "找来约瑟夫需要的道具,那些麻将牌在下水道的僵尸身上有,椰果酒在白银城有卖哦")
	
	MisNeed( MIS_NEED_ITEM, 0172, 3, 5, 3)
	MisNeed( MIS_NEED_ITEM, 0173, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 0174, 3, 15, 3)
	MisNeed( MIS_NEED_ITEM, 3916, 70, 20, 70)

	MisResultTalk( "<t>真的是我要的东西,实在太感谢你了.")
	MisHelpTalk( "<t>我这里的红酒可是世界闻名的哦.")
	MisResultCondition( HasMission, 1241)
	MisResultCondition( NoRecord, 1241)
	MisResultCondition( HasItem, 3916, 70)
	MisResultCondition( HasItem, 172, 3)
	MisResultCondition( HasItem, 173, 3)
	MisResultCondition( HasItem, 174, 3)
	MisResultAction( TakeItem, 3916, 70)
	MisResultAction( TakeItem, 172, 3)
	MisResultAction( TakeItem, 173, 3)
	MisResultAction( TakeItem, 174, 3)
	MisResultAction( ClearMission, 1241)
	MisResultAction( SetRecord, 1241)



	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0172)	
	TriggerAction( 1, AddNextFlag, 1241, 5, 3 )
	RegCurTrigger( 12411 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0173)	
	TriggerAction( 1, AddNextFlag, 1241, 10, 3)
	RegCurTrigger( 12412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0174)	
	TriggerAction( 1, AddNextFlag, 1241, 15, 3 )
	RegCurTrigger( 12413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3916)	
	TriggerAction( 1, AddNextFlag, 1241, 20, 70 )
	RegCurTrigger( 12414 )
	
	
--------------------------------陈年的红酒------------旅店老板·约瑟夫
	DefineMission( 6180, "陈年的红酒", 1242)
	MisBeginTalk( "<t>太不巧了,我这里现在没有陈年的红酒,这样吧,这瓶红酒你帮我保管一下,明天再还给我!")
	MisBeginCondition( NoMission, 1242)
	MisBeginCondition( NoRecord, 1242)
	MisBeginCondition( HasRecord, 1241)
	MisBeginAction( AddMission, 1242)
	MisBeginAction( AddChaHJ )--------耐久为1440
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, "将约瑟夫给的红酒放在背包第二格,等耐久没了以后再去还给约瑟夫.")
	
	MisResultTalk( "<t>红酒啊红酒,放的时间越长越珍贵.")
	MisHelpTalk( "<t>把红酒放在背包第二格就行了.")
	MisResultCondition( CheckHJ )-----1分钟扣1点,扣到0
	MisResultCondition( NoRecord, 1242)
	MisResultCondition( HasMission, 1242)
	MisResultAction( ClearMission, 1242)
	MisResultAction( SetRecord, 1242)
	MisResultAction( TakeItem, 2967, 1)
	MisResultAction( GiveItem, 2977, 1, 4)
	MisResultBagNeed(1)

----------------------------------找回玫瑰花瓣-------------西门庆
	DefineMission( 6181, "找回玫瑰花瓣", 1243)
	MisBeginTalk( "<t>玫瑰花瓣爱情的象征,我记得冰狼的米歇尔梅林芬(1280,478)那有玫瑰花瓣,可以帮我去取一些吗?")
	MisBeginCondition( NoMission, 1243)
	MisBeginCondition( NoRecord, 1243)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginAction( AddMission, 1243)
	MisBeginAction( AddTrigger, 12431, TE_GETITEM, 2968, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "去帮西门庆从冰狼的米歇尔梅林芬(1280,478)那里取来玫瑰花瓣")
	MisNeed( MIS_NEED_ITEM, 2968, 1, 10, 1)

	MisResultTalk( "<t>噢!我的神那!居然有这么美丽的花瓣!你太令我惊奇了,今晚我一定要成功!")
	MisHelpTalk( "<t>美丽的玫瑰花瓣一定能打动金莲的!")
	MisResultCondition( HasMission, 1243)
	MisResultCondition( NoRecord, 1243)
	MisResultCondition( HasItem, 2968, 1)
	MisResultAction( ClearMission, 1243)
	MisResultAction( SetRecord, 1243)
	MisResultAction( TakeItem, 2968, 1)
	MisResultAction( GiveItem, 2973, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2968)	
	TriggerAction( 1, AddNextFlag, 1243, 10, 1 )
	RegCurTrigger( 12431 )

----------------------------------找回玫瑰花瓣-------------米歇尔梅林芬
	DefineMission( 6182, "找回玫瑰花瓣", 1244)
	MisBeginTalk( "<t>传闻海底隧道的长绒蟹,小冰龙,被诅咒的水仙子经常骚扰路人.我需要你带回火绒3个,龙鳞3个,生命晶石3个,来证明你的实力.如果完成任务就可以到我这里换取玫瑰花瓣作为奖励.")
	MisBeginCondition( NoMission, 1244)
	MisBeginCondition( NoRecord, 1244)
	MisBeginCondition( HasMission, 1243)
	MisBeginAction( AddMission, 1244)
	MisBeginAction( AddTrigger, 12441, TE_GETITEM, 4259, 3)
	MisBeginAction( AddTrigger, 12442, TE_GETITEM, 1774, 3)
	MisBeginAction( AddTrigger, 12443, TE_GETITEM, 1632, 3)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "带3个火绒,3个龙鳞,3个生命晶石给米歇尔梅林芬")
	MisNeed( MIS_NEED_ITEM, 4259, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 1774, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1632, 3, 30, 3)

	MisResultTalk( "<t>你才识真正的勇者,这是给你的奖励.")
	MisHelpTalk( "<t>火绒,龙鳞和生命晶石的话打海底隧道的长绒蟹,小冰龙,被诅咒的水仙子就有了.")
	MisResultCondition( HasMission, 1244)
	MisResultCondition( NoRecord, 1244)
	MisResultCondition( HasItem, 4259, 3)
	MisResultCondition( HasItem, 1774, 3)
	MisResultCondition( HasItem, 1632, 3)
	MisResultAction( TakeItem, 4259, 3)
	MisResultAction( TakeItem, 1774, 3)
	MisResultAction( TakeItem, 1632, 3)
	MisResultAction( SetRecord, 1244)
	MisResultAction( ClearMission, 1244)
	MisResultAction( GiveItem, 2968, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 3 )
	RegCurTrigger( 12441 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1774)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12442 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1632)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12443 )

---------------------------------找回精美的蜡烛-----------西门庆
	DefineMission( 6183, "找回精美的蜡烛", 1245)
	MisBeginTalk( "<t>今晚将是个难忘的夜晚,我需要些蜡烛来温暖年轻人的心扉,可以帮我去沙岚的小羊·威力(897,3683)那找些精美的蜡烛吗?")
	MisBeginCondition( NoMission, 1245)
	MisBeginCondition( NoRecord, 1245)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginCondition( HasRecord, 1243)
	MisBeginAction( AddMission, 1245)
	MisBeginAction( AddTrigger, 12451, TE_GETITEM, 2966, 1)
	MisCancelAction(SystemNotice, "该任务无法中断")
	
	MisNeed( MIS_NEED_DESP, "找小羊·威力(魔女897,3683)拿来精美的蜡烛给夏岛的西门庆(3734,2661)")
	MisNeed( MIS_NEED_ITEM, 2966, 1, 10, 1)

	MisResultTalk( "<t>蜡烛一根根的点亮,你有这耐心吗?今晚又是个不眠之夜~")
	MisHelpTalk( "<t>浪漫的夜晚怎么能没有烛光呢?")
	MisResultCondition( HasMission, 1245)
	MisResultCondition( NoRecord, 1245)
	MisResultCondition( HasItem, 2966, 1)
	MisResultAction( TakeItem, 2966, 1)
	MisResultAction( SetRecord, 1245)
	MisResultAction( ClearMission, 1245)
	MisResultAction( GiveItem, 2975, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2966)	
	TriggerAction( 1, AddNextFlag, 1245, 10, 1 )
	RegCurTrigger( 12451 )

----------------------------------找回精美的蜡烛------------小羊·威力
	DefineMission( 6184, "找回精美的蜡烛", 1246)
	MisBeginTalk( "<t>我想要做一根非常美丽的项链,不过现在还少2个黄色水晶,2个玛那石结晶,如果你能去危险的夏岛去挑战蜥蜴战士和疯狂的蜥蜴人的话,应该可以找到我想要的东西.")
	MisBeginCondition( NoMission, 1246)
	MisBeginCondition( NoRecord, 1246)
	MisBeginCondition( HasMission, 1245)
	MisBeginAction( AddMission, 1246)
	MisBeginAction( AddTrigger, 12461, TE_GETITEM, 3367,2)
	MisBeginAction( AddTrigger, 12462, TE_GETITEM, 3380,2)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed( MIS_NEED_DESP, "帮小羊·威力(魔女897,3683)在夏岛的蜥蜴战士和疯狂的蜥蜴人身上找到2个黄色水晶,2个玛那石结晶.<r记得回去找西门庆(3734,2661)>")
	MisNeed( MIS_NEED_ITEM, 3367, 2, 10, 2)
	MisNeed( MIS_NEED_ITEM, 3380, 2, 20, 2)

	MisResultTalk( "<t>你好慢啊!我头上都等出蜘蛛网了~")
	MisHelpTalk( "<t>水晶啊水晶..")
	MisResultCondition( HasMission, 1246)
	MisResultCondition( NoRecord, 1246)
	MisResultCondition( HasItem, 3367, 2)
	MisResultCondition( HasItem, 3380, 2)
	MisResultAction( TakeItem, 3380, 2)
	MisResultAction( TakeItem, 3367, 2)
	MisResultAction( SetRecord, 1246)
	MisResultAction( ClearMission, 1246)
	MisResultAction( GiveItem, 2966, 1, 4)

	MisResultBagNeed(1)

        InitTrigger()
	TriggerCondition( 1, IsItem, 3367)	
	TriggerAction( 1, AddNextFlag, 1246, 10, 2 )
	RegCurTrigger( 12461 )

	 InitTrigger()
	TriggerCondition( 1, IsItem, 3380)	
	TriggerAction( 1, AddNextFlag, 1246, 20, 2 )
	RegCurTrigger( 12462 )

------------------------护送圣诞老人------------ 	冰狼堡NPC圣诞老人（1216，550）
	DefineMission( 6185, "护送圣诞小老人", 1247)
	MisBeginTalk( "<t>每年有那么多小朋友在等我放圣诞礼物在他们的臭袜子里,不会分身术怎么能行?我用一根胡须变出一只圣诞老人替身.由于烟囱的口径大小不一,所以圣诞老人一律统一规格,采用小型号.虽说每年才过一次圣诞,但仍然导致我胡子稀疏了.我的兄弟克瑞斯莫斯的胡子已经拔光带假的了,或许你愿意帮我跑一趟.借给他一个小老人.")
	MisBeginCondition( NoMission, 1247)
	MisBeginCondition( NoRecord, 1247)
	MisBeginCondition( HasItem, 2878, 1)
	MisBeginAction( TakeItem, 2878, 1)
	MisBeginAction( AddMission, 1247)
	MisBeginAction( CreatBBBB, 929)
	MisCancelAction( ClearMission, 1247)

	MisHelpTalk( "<t>请在<r一小时内将圣诞小老人送到卡特尔>那,记得要<r徒步>走到冰极骷髅营地补给站(2111,557),任何<r跳转地图、使用机票、离开被护送的NPC视野范围>等行为都将造成圣诞小老人的丢失.切记!")
	MisNeed( MIS_NEED_DESP, "请在<r一小时内将圣诞小老人送到克瑞斯莫斯>那,记得要<r徒步>走到冰极骷髅营地补给站(2111,557).为了圣诞老人的安全,请不要<r跳转地图、使用机票、下线、离开被护送的NPC视野范围>等.<b该任务只能接取一次,中断会造成护送资格证的损失,要谨慎哦>.")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------护送圣诞老人--------冰极骷髅营地补给站(2111,557)
	DefineMission( 6186, "护送圣诞小老人", 1247, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>谢谢你.我的假胡子还很逼真吧.呵呵")
	MisResultCondition( HasMission, 1247)
	MisResultCondition( NoRecord, 1247)
	MisResultAction( CheckBBBB)
	MisResultAction( ClearMission, 1247)
	MisResultAction( SetRecord, 1247)
	MisResultAction( GiveItem, 2888, 1, 4)
	MisResultAction( GiveItem, 2889, 1, 4)
	MisResultAction( GiveItem, 3240, 1, 4)
	MisResultBagNeed(3)
	
------------------------------火鸡大猎捕	
	DefineMission( 6187, "火鸡大猎捕", 1248)
	MisBeginTalk( "<t>我讨厌这圣洁雪白的冬天.朋友，为什么不抛弃这些无聊的庆祝活动出去杀戮一番呢?也许城外那些到处乱跑的火鸡是个不错的目标,去给我杀掉一些,然后把它们掉落的火鸡的羽毛带过来给我,数量嘛就100个吧.")
	MisBeginCondition( NoMission, 1248)
	MisBeginCondition( NoRecord, 1248)
	MisBeginAction( AddMission, 1248)
	MisBeginAction(AddTrigger, 12481, TE_GETITEM, 2879, 100 )
	MisCancelAction( ClearMission, 1248)

	MisNeed(MIS_NEED_ITEM, 2879, 100, 10, 100 )
	MisHelpTalk( "<t>火鸡在白银城,冰狼堡和沙岚城城外到处都是")

	MisResultTalk( "<t>干的好,你不觉得鲜血也是这个洁白圣诞节的点缀之一吗?")
	MisResultCondition( HasMission, 1248)
	MisResultCondition( NoRecord, 1248)
	MisResultCondition( HasItem, 2879, 100)
	MisResultAction( TakeItem, 2879, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpHuojiNum )
	MisResultAction( ClearMission, 1248)
	MisResultAction( SetRecord, 1248)
	MisResultAction( ClearRecord, 1248)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2879)	
	TriggerAction( 1, AddNextFlag, 1248, 10, 100 )
	RegCurTrigger( 12481 )

------------------------------麋鹿大猎捕	
	DefineMission( 6188, "麋鹿大猎捕", 1249)
	MisBeginTalk( "<t>我讨厌这圣洁雪白的冬天.朋友，为什么不抛弃这些无聊的庆祝活动出去杀戮一番呢?也许城外那些到处乱跑的邪恶麋鹿是个不错的目标,去给我杀掉一些,然后把它们掉落的麋鹿的尖角带过来给我,数量嘛就100个吧.")
	MisBeginCondition( NoMission, 1249)
	MisBeginCondition( NoRecord, 1249)
	MisBeginAction( AddMission, 1249)
	MisBeginAction(AddTrigger, 12491, TE_GETITEM, 2881, 100 )
	MisCancelAction( ClearMission, 1249)

	MisNeed(MIS_NEED_ITEM, 2881, 100, 10, 100 )
	MisHelpTalk( "<t>邪恶麋鹿在白银城,冰狼堡和沙岚城城外到处都是")

	MisResultTalk( "<t>干的好,你不觉得鲜血也是这个洁白圣诞节的点缀之一吗?")
	MisResultCondition( HasMission, 1249)
	MisResultCondition( NoRecord, 1249)
	MisResultCondition( HasItem, 2881, 100)
	MisResultAction( TakeItem, 2881, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpMiluNum )
	MisResultAction( ClearMission, 1249)
	MisResultAction( SetRecord, 1249)
	MisResultAction( ClearRecord, 1249)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2881)	
	TriggerAction( 1, AddNextFlag, 1249, 10, 100 )
	RegCurTrigger( 12491 )

------------------------------雪人大猎捕	
	DefineMission( 6189, "雪人大猎捕", 1250)
	MisBeginTalk( "<t>我讨厌这圣洁雪白的冬天.朋友，为什么不抛弃这些无聊的庆祝活动出去杀戮一番呢?也许城外那些到处乱跑的圣诞雪人是个不错的目标,去给我杀掉一些,然后把它们掉落的雪人的眼球带过来给我,数量嘛就100个吧.")
	MisBeginCondition( NoMission, 1250)
	MisBeginCondition( NoRecord, 1250)
	MisBeginAction( AddMission, 1250)
	MisBeginAction(AddTrigger, 12501, TE_GETITEM, 2880, 100 )
	MisCancelAction( ClearMission, 1250)

	MisNeed(MIS_NEED_ITEM, 2880, 100, 10, 100 )
	MisHelpTalk( "<t>圣诞雪人在白银城,冰狼堡和沙岚城城外到处都是")

	MisResultTalk( "<t>干的好,你不觉得鲜血也是这个洁白圣诞节的点缀之一吗?")
	MisResultCondition( HasMission, 1250)
	MisResultCondition( NoRecord, 1250)
	MisResultCondition( HasItem, 2880, 100)
	MisResultAction( TakeItem, 2880, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpXuerenNum )
	MisResultAction( ClearMission, 1250)
	MisResultAction( SetRecord, 1250)
	MisResultAction( ClearRecord, 1250)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2880)	
	TriggerAction( 1, AddNextFlag, 1250, 10, 100 )
	RegCurTrigger( 12501 )


	----------------------------------------------------------不忍错过的圣诞任务(一)--------------圣诞村传送使
	DefineMission( 6190, "不忍错过的圣诞任务(一)", 1251)
	MisBeginTalk( "<t>没有火鸡的圣诞节是不完整的,我介绍圣诞村的斐谢特给你认识吧,在制做圣诞大餐这方面他很在行哦.")
	MisBeginCondition( NoMission, 1251)
	MisBeginCondition( NoRecord, 1251)
	MisBeginAction( AddMission, 1251)
	MisCancelAction( ClearMission, 1251)

	MisNeed( MIS_NEED_DESP, "去找斐谢特(220,41)聊聊.")
	MisHelpTalk( "<t>圣诞节很快就过去了,你要加快速度了.")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------不忍错过的圣诞任务(一)--------------斐谢特(220,41)
	DefineMission( 6191, "不忍错过的圣诞任务(一)", 1251, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>你好朋友,圣诞快乐!也许你早就听说了,我这里专门负责烹饪美味的火鸡肉和圣诞大餐,欢迎来品尝.")
	MisResultCondition( HasMission, 1251)
	MisResultCondition( NoRecord, 1251)
	MisResultAction( SetRecord, 1251)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1251)
	MisResultBagNeed(1)


	--------------------------------------------------------不忍错过的圣诞任务(二)-----------------圣诞村传送使
	DefineMission( 6192, "不忍错过的圣诞任务(二)", 1252)
	MisBeginTalk( "<t>不可否认科恩是个性感的名字,他有收购鸡毛、鹿角、雪人眼球的癖好.如果你想去圣诞竞技场,就不得不去认识他一下.")
	MisBeginCondition( NoMission, 1252)
	MisBeginCondition( NoRecord, 1252)
	MisBeginAction( AddMission, 1252)
	MisCancelAction( ClearMission, 1252)

	MisNeed( MIS_NEED_DESP, "去找圣诞村的科恩(144,252)聊聊.")
	MisHelpTalk( "<t>你已经认识过他了?")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------不忍错过的圣诞任务(二)--------------科恩(144,252)
	DefineMission( 6193, "不忍错过的圣诞任务(二)", 1252, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>圣诞快乐!想去圣诞竞技场吗?想要用鸡毛、鹿角、雪人眼球这些垃圾换点有用的东西吗?想知道杀死火鸡、麋鹿、雪人会发生什么可怕后果吗?")
	MisResultCondition( HasMission, 1252)
	MisResultCondition( NoRecord, 1252)
	MisResultAction( SetRecord, 1252)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1252)
	MisResultBagNeed(1)

	--------------------------------------------------------不忍错过的圣诞任务(三)--------------圣诞村传送使
	DefineMission( 6194, "不忍错过的圣诞任务(三)", 1253)
	MisBeginTalk( "<t>它可不是一个普通的洗衣机啊.如果你有污浊的圣诞礼盒,又正愁没有地方清洗,那就去找它吧.")
	MisBeginCondition( NoMission, 1253)
	MisBeginCondition( NoRecord, 1253)
	MisBeginAction( AddMission, 1253)
	MisCancelAction( ClearMission, 1253)

	MisNeed( MIS_NEED_DESP, "去找圣诞村的圣诞老人的洗衣机(84,37).")
	MisHelpTalk( "<t>洗刷刷~洗刷刷......")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------不忍错过的圣诞任务(三)--------------圣诞老人的洗衣机(84,37)
	DefineMission( 6195, "不忍错过的圣诞任务(三)", 1253, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>朋友,你有什么要洗的吗?臭袜子免谈.")
	MisResultCondition( HasMission, 1253)
	MisResultCondition( NoRecord, 1253)
	MisResultAction( SetRecord, 1253)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1253)
	MisResultBagNeed(1)

	--------------------------------------------------------不忍错过的圣诞任务(四)--------------圣诞村传送使
	DefineMission( 6196, "不忍错过的圣诞任务(四)", 1254)
	MisBeginTalk( "<t>哪里有买高级货的地方?当然是圣诞杂货商那里了,出门在外,多跟他打交道没有害处.")
	MisBeginCondition( NoMission, 1254)
	MisBeginCondition( NoRecord, 1254)
	MisBeginAction( AddMission, 1254)
	MisCancelAction( ClearMission, 1254)

	MisNeed( MIS_NEED_DESP, "去找圣诞村的圣诞杂货商(197,251).")
	MisHelpTalk( "<t>不如去认识一下圣诞杂货商.")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------不忍错过的圣诞任务(四)--------------圣诞杂货商(197,251)
	DefineMission( 6197, "不忍错过的圣诞任务(四)", 1254, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>圣诞狂欢大抢购!数量有限,先到先得.")
	MisResultCondition( HasMission, 1254)
	MisResultCondition( NoRecord, 1254)
	MisResultAction( SetRecord, 1254)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1254)
	MisResultBagNeed(1)


	--------------------------------------------------------不忍错过的圣诞任务(五)--------------圣诞村传送使
	DefineMission( 6198, "不忍错过的圣诞任务(五)", 1255)
	MisBeginTalk( "<t>这个浪漫的圣诞不要错过向爱人表达爱意的机会哦.")
	MisBeginCondition( NoMission, 1255)
	MisBeginCondition( NoRecord, 1255)
	MisBeginAction( AddMission, 1255)
	MisCancelAction( ClearMission, 1255)

	MisNeed( MIS_NEED_DESP, "去找圣诞村的圣诞商人·我行我酷(125,253).")
	MisHelpTalk( "<t>我行我酷!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------不忍错过的圣诞任务(五)--------------圣诞商人·我行我酷(125,253)
	DefineMission( 6199, "不忍错过的圣诞任务(五)", 1255, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>我行我酷!认识我的那个同事吗,我酷我行,是一个秀自己,娱乐别人的行家呢.")
	MisResultCondition( HasMission, 1255)
	MisResultCondition( NoRecord, 1255)
	MisResultAction( SetRecord, 1255)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1255)
	MisResultBagNeed(1)


	--------------------------------------------------------不忍错过的圣诞任务(六)--------------圣诞村传送使
	DefineMission( 6200, "不忍错过的圣诞任务(六)", 1256)
	MisBeginTalk( "<t>圣诞节的最重要人物是谁?是你!对,当然,还有一个人,就是圣诞老人哦.")
	MisBeginCondition( NoMission, 1256)
	MisBeginCondition( NoRecord, 1256)
	MisBeginAction( AddMission, 1256)
	MisCancelAction( ClearMission, 1256)

	MisNeed( MIS_NEED_DESP, "去找圣诞村的圣诞老人(144,166)聊聊.")
	MisHelpTalk( "<t>merry christmas!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------不忍错过的圣诞任务(六)-------------圣诞老人(144,166)
	DefineMission( 6201, "不忍错过的圣诞任务(六)", 1256, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>merry christmas!准备好你的袜子了吗?哈哈,我身后的圣诞树可以送祝福给你在乎的人哦.")
	MisResultCondition( HasMission, 1256)
	MisResultCondition( NoRecord, 1256)
	MisResultAction( SetRecord, 1256)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1256)
	MisResultBagNeed(1)

-----------------------------------------------------------幻觉任务------------不可能接到
	DefineMission( 6202, "幻觉", 1257)		------------圣诞老人

	MisBeginTalk( "<t>当你看到这个任务的时候，你一定是产生幻觉了，相信我，你没看到.")
	MisBeginCondition( XmasNotice, 1 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1257)
	MisCancelAction( ClearMission, 1257)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6203, "幻觉", 1258)		------------圣诞篝火

	MisBeginTalk( "<t>当你看到这个任务的时候，你一定是产生幻觉了，相信我，你没看到.")
	MisBeginCondition( XmasNotice, 2 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1258)
	MisCancelAction( ClearMission, 1258)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6204, "幻觉", 1259)		------------科恩

	MisBeginTalk( "<t>当你看到这个任务的时候，你一定是产生幻觉了，相信我，你没看到.")
	MisBeginCondition( XmasNotice, 3 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1259)
	MisCancelAction( ClearMission, 1259)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6205, "幻觉", 1260)		------------小汤姆

	MisBeginTalk( "<t>当你看到这个任务的时候，你一定是产生幻觉了，相信我，你没看到.")
	MisBeginCondition( XmasNotice, 4 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1260)
	MisCancelAction( ClearMission, 1260)

	MisResultCondition( AlwaysFailure )

	----------------------------------------------------------------------08鼠年春节活动kokora-------------------------------------------------------------

	------------------------------------------------------------------------白银城[新手指导·瑟安](2223,2785)-----------------------------------------------

        ------------------------------------------祥鼠闹春送礼包(一)---------白银城新手指导

	DefineMission(6205,"祥鼠闹春送礼包",1257)

	MisBeginTalk("<t>火树银花迎玉鼠,山珍海味列金盘.<n><t>亲爱的朋友,海盗王恭贺您鼠年吉祥,万事顺心!前几日可爱的小老鼠俚昂托我在城中为30级至64级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到白银城新手指导·瑟安(2223,2785)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1257)
	MisBeginAction(AddTrigger, 12571, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1257)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>学会知足,学会分享,方能感受幸福!小老鼠俚昂只为每位玩家准备了一个红包,您确定新手鼠年红包是您要领取的吗?那么我们开始吧!各大主城外均可获得美味的精灵果,酸甜的果汁是俚昂的最爱,集齐99个就可得到俚昂亲手缝制的鼠年新手红包,快快行动起来!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------精灵果


	MisHelpTalk("<t>据说各种类的精灵草身上都会长出美味甘甜的精灵果,99个精灵果也是你耐心的见证!加油吧!")
	MisResultTalk("<t>这个精美的新手鼠年红包就送你啦,打开后有机率获得迷你黑龙包喔!")

	MisResultCondition(HasMission, 1257)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------新手鼠年红包
	MisResultAction(ClearMission, 1257) 
	MisResultAction(SetRecord, 1257) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1257, 10, 99)
	RegCurTrigger(12571)

       ------------------------------------------祥鼠闹春大礼到(二)---------白银城新手指导

	DefineMission(6206,"祥鼠闹春大礼到",1258)

	MisBeginTalk("<t>花香鸟语海盗旺,雨顺风调鼠岁丰.<n><t>亲爱的朋友,海盗王恭贺您鼠年红运当头,财源滚滚!前几日可爱的小老鼠俚昂托我在城中为65级至84级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到白银城新手指导·瑟安(2223,2785)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1258)
	MisBeginAction(AddTrigger, 12581, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1258)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>惩恶扬善,做海盗世界的英雄,方能领悟纵横江湖的豪情!小老鼠俚昂在新春到来之际,恳请您斩杀山贼首领·蝰蛇并获取他身上的山贼腰带!以此为凭您将获得俚昂精心制作的高级鼠年红包,勇士们!提起您手中的利剑,行动起来吧!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------山贼腰带


	MisHelpTalk("<t>据说山贼首领·蝰蛇通常在(加纳1038,3039)附近出没,赶紧出发吧,我的勇士!")
	MisResultTalk("<t>噢!天呐,没想到这么短的时间你就完成了任务.这个高级鼠年红包是俚昂对你的奖励,打开它会有意想不到的惊喜喔!")

	MisResultCondition(HasMission, 1258)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------高级鼠年红包
	MisResultAction(ClearMission, 1258)                        
	MisResultAction(SetRecord, 1258)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1258, 10, 1)
	RegCurTrigger(12581)

	------------------------------------------祥鼠闹春庆盛典(三)---------白银城新手指导

	DefineMission(6207,"祥鼠闹春庆盛典",1259)

	MisBeginTalk("<t> 麟角凤毛海盗添 ,鼠须妙笔春光点.<n><t>亲爱的朋友,海盗王恭贺您鼠年吉星高照,前程似锦!前几日可爱的小老鼠俚昂托我在城中为85级至100级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到白银城新手指导·瑟安(2223,2785)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1259)
	MisBeginAction(AddTrigger, 12591, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1259)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>最近小老鼠俚昂在魔法师夏天那学到了一个神奇的魔法,为三大主城制作魔法能量罩,阻挡邪恶的侵袭.目前还缺少10个永动机械,将要获得超级鼠年红包惠赠的你一定不会拒绝这个小小的请求吧?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------永动机械


	MisHelpTalk("<t>邪恶的机械巨兵身上,能量强大的蓝崎航海士幻像,蓝崎双剑士幻像,菲利尔冒险者幻像,艾米药师幻像,艾米封印幻像身上均藏有此物,为了三大主城的安宁与和平,快把10个永动机械带给俚昂.")
	MisResultTalk("<t>作为正义与和平的象征,小老鼠俚昂叮嘱我一定要把这个超级鼠年红包送予你,包内可开出漂亮帅气的新春套装喔!还等什么?朋友,赶紧打开看看!")

	MisResultCondition(HasMission, 1259)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------超级鼠年红包
	MisResultAction(ClearMission, 1259)                        
	MisResultAction(SetRecord, 1259)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1259, 10, 10)
	RegCurTrigger(12591)


	------------------------------------------------------------------------冰狼堡[新手指导·安琪露亚](1315,507)重复-----------------------------------------------
       
       ------------------------------------------祥鼠闹春送礼包(一)---------冰狼堡新手指导

	DefineMission(6208,"祥鼠闹春送礼包",1260)

	MisBeginTalk("<t>火树银花迎玉鼠,山珍海味列金盘.<n><t>亲爱的朋友,海盗王恭贺您鼠年吉祥,万事顺心!前几日可爱的小老鼠俚昂托我在城中为30级至64级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到冰狼堡新手指导·安琪露亚(1315,507)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1260)
	MisBeginAction(AddTrigger, 12601, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1260)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>学会知足,学会分享,方能感受幸福!小老鼠俚昂只为每位玩家准备了一个红包,您确定新手鼠年红包是您要领取的吗?那么我们开始吧!各大主城外均可获得美味的精灵果,酸甜的果汁是俚昂的最爱,集齐99个就可得到俚昂亲手缝制的鼠年新手红包,快快行动起来!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------精灵果


	MisHelpTalk("<t>据说各种类的精灵草身上都会长出美味甘甜的精灵果,99个精灵果也是你耐心的见证!加油吧!")
	MisResultTalk("<t>这个精美的新手鼠年红包就送你啦,打开后有机率获得迷你黑龙包喔!")

	MisResultCondition(HasMission, 1260)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------新手鼠年红包
	MisResultAction(ClearMission, 1260)                        
	MisResultAction(SetRecord, 1260)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1260, 10, 99)
	RegCurTrigger(12601)

       ------------------------------------------祥鼠闹春大礼到(二)---------冰狼堡新手指导

	DefineMission(6209,"祥鼠闹春大礼到",1261)

	MisBeginTalk("<t>花香鸟语海盗旺,雨顺风调鼠岁丰.<n><t>亲爱的朋友,海盗王恭贺您鼠年红运当头,财源滚滚!前几日可爱的小老鼠俚昂托我在城中为65级至84级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到冰狼堡新手指导·安琪露亚(1315,507)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1261)
	MisBeginAction(AddTrigger, 12611, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1261)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>惩恶扬善,做海盗世界的英雄,方能领悟纵横江湖的豪情!小老鼠俚昂在新春到来之际,恳请您斩杀山贼首领·蝰蛇并获取他身上的山贼腰带!以此为凭您将获得俚昂精心制作的高级鼠年红包,勇士们!提起您手中的利剑,行动起来吧!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------山贼腰带


	MisHelpTalk("<t>据说山贼首领·蝰蛇通常在(加纳1038,3039)附近出没,赶紧出发吧,我的勇士!")
	MisResultTalk("<t>噢!天呐,没想到这么短的时间你就完成了任务.这个高级鼠年红包是俚昂对你的奖励,打开它会有意想不到的惊喜喔!")

	MisResultCondition(HasMission, 1261)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------高级鼠年红包
	MisResultAction(ClearMission, 1261)                        
	MisResultAction(SetRecord, 1261)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1261, 10, 1)
	RegCurTrigger(12611)

	------------------------------------------祥鼠闹春庆盛典(三)---------冰狼堡新手指导

	DefineMission(6210,"祥鼠闹春庆盛典",1262)

	MisBeginTalk("<t> 麟角凤毛海盗添 ,鼠须妙笔春光点.<n><t>亲爱的朋友,海盗王恭贺您鼠年吉星高照,前程似锦!前几日可爱的小老鼠俚昂托我在城中为85级至100级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到冰狼堡新手指导·安琪露亚(1315,507)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1262)
	MisBeginAction(AddTrigger, 12621, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1262)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>最近小老鼠俚昂在魔法师夏天那学到了一个神奇的魔法,为三大主城制作魔法能量罩,阻挡邪恶的侵袭.目前还缺少10个永动机械,将要获得超级鼠年红包惠赠的你一定不会拒绝这个小小的请求吧?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------永动机械


	MisHelpTalk("<t>邪恶的机械巨兵身上,能量强大的蓝崎航海士幻像,蓝崎双剑士幻像,菲利尔冒险者幻像,艾米药师幻像,艾米封印幻像身上均藏有此物,为了三大主城的安宁与和平,快把10个永动机械带给俚昂.")
	MisResultTalk("<t>作为正义与和平的象征,小老鼠俚昂叮嘱我一定要把这个超级鼠年红包送予你,包内有机率开出漂亮帅气的新春套装喔!还等什么?朋友,赶紧打开看看!")

	MisResultCondition(HasMission, 1262)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------超级鼠年红包
	MisResultAction(ClearMission, 1262)                        
	MisResultAction(SetRecord, 1262)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1262, 10, 10)
	RegCurTrigger(12621)

	------------------------------------------------------------------------沙岚城[新手指导·拉丝碧](876,3572)重复-----------------------------------------------
       
       ------------------------------------------祥鼠闹春送礼包(一)---------沙岚城新手指导

	DefineMission(6211,"祥鼠闹春送礼包",1263)

	MisBeginTalk("<t>火树银花迎玉鼠,山珍海味列金盘.<n><t>亲爱的朋友,海盗王恭贺您鼠年吉祥,万事顺心!前几日可爱的小老鼠俚昂托我在城中为30级至64级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到沙岚城新手指导·拉丝碧(876,3572)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1263)
	MisBeginAction(AddTrigger, 12631, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1263)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>学会知足,学会分享,方能感受幸福!小老鼠俚昂只为每位玩家准备了一个红包,您确定新手鼠年红包是您要领取的吗?那么我们开始吧!各大主城外均可获得美味的精灵果,酸甜的果汁是俚昂的最爱,集齐99个就可得到俚昂亲手缝制的鼠年新手红包,快快行动起来!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------精灵果


	MisHelpTalk("<t>据说各种类的精灵草身上都会长出美味甘甜的精灵果,99个精灵果也是你耐心的见证!加油吧!")
	MisResultTalk("<t>这个精美的新手鼠年红包就送你啦,打开后有机率获得迷你黑龙包喔!")

	MisResultCondition(HasMission, 1263)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------新手鼠年红包
	MisResultAction(ClearMission, 1263) 
	MisResultAction(SetRecord, 1263) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1263, 10, 99)
	RegCurTrigger(12631)

       ------------------------------------------祥鼠闹春大礼到(二)---------沙岚城新手指导

	DefineMission(6212,"祥鼠闹春大礼到",1264)

	MisBeginTalk("<t>花香鸟语海盗旺,雨顺风调鼠岁丰.<n><t>亲爱的朋友,海盗王恭贺您鼠年红运当头,财源滚滚!前几日可爱的小老鼠俚昂托我在城中为65级至84级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到沙岚城新手指导·拉丝碧(876,3572)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1264)
	MisBeginAction(AddTrigger, 12641, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1264)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>惩恶扬善,做海盗世界的英雄,方能领悟纵横江湖的豪情!小老鼠俚昂在新春到来之际,恳请您斩杀山贼首领·蝰蛇并获取他身上的山贼腰带!以此为凭您将获得俚昂精心制作的高级鼠年红包,勇士们!提起您手中的利剑,行动起来吧!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------山贼腰带


	MisHelpTalk("<t>据说山贼首领·蝰蛇通常在(加纳1038,3039)附近出没,赶紧出发吧,我的勇士!")
	MisResultTalk("<t>噢!天呐,没想到这么短的时间你就完成了任务.这个高级鼠年红包是俚昂对你的奖励,打开它会有意想不到的惊喜喔!")

	MisResultCondition(HasMission, 1264)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)


	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------高级鼠年红包
	MisResultAction(ClearMission, 1264)                        
	MisResultAction(SetRecord, 1264)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1264, 10, 1)
	RegCurTrigger(12641)

	------------------------------------------祥鼠闹春庆盛典(三)---------沙岚城新手指导

	DefineMission(6213,"祥鼠闹春庆盛典",1265)

	MisBeginTalk("<t> 麟角凤毛海盗添 ,鼠须妙笔春光点.<n><t>亲爱的朋友,海盗王恭贺您鼠年吉星高照,前程似锦!前几日可爱的小老鼠俚昂托我在城中为85级至100级的玩家派送红包,一人仅有一次机会,好运不可错过!赶紧加入派送行列吧!完成任务后请到沙岚城新手指导·拉丝碧(876,3572)那领取奖励.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1265)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1265)
	MisBeginAction(AddTrigger, 12651, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1265)                         ---------可以取消此任务

	MisNeed(MIS_NEED_DESP, "<t>最近小老鼠俚昂在魔法师夏天那学到了一个神奇的魔法,为三大主城制作魔法能量罩,阻挡邪恶的侵袭.目前还缺少10个永动机械,将要获得超级鼠年红包惠赠的你一定不会拒绝这个小小的请求吧?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------永动机械


	MisHelpTalk("<t>邪恶的机械巨兵身上,能量强大的蓝崎航海士幻像,蓝崎双剑士幻像,菲利尔冒险者幻像,艾米药师幻像,艾米封印幻像身上均藏有此物,为了三大主城的安宁与和平,快把10个永动机械带给俚昂.")
	MisResultTalk("<t>作为正义与和平的象征,小老鼠俚昂叮嘱我一定要把这个超级鼠年红包送予你,包内可开出漂亮帅气的新春套装喔!还等什么?朋友,赶紧打开看看!")

	MisResultCondition(HasMission, 1265)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------超级鼠年红包
	MisResultAction(ClearMission, 1265)                        
	MisResultAction(SetRecord, 1265)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1265, 10, 10)
	RegCurTrigger(12651)

	--------------------------------------------------------------kokora(end)------------------------------------------------------------------

--------------------------------------------------------------dina二次转生任务(begin)------------------------------------------------------------------
	-------------------------------------------------------浴火重生之一--------教皇史昂
	DefineMission( 6214, "浴火重生之一", 1266 )
	MisBeginTalk("<t>哦！您的勇敢真让我敬佩和感动。如果您真的能解救出我的圣斗士们，我愿意把教皇的位置让给你，并把我们圣殿之宝——<r浴火重生>石送给你，传说那块石头可以让您获得神一般的超能力。第一块符文应该是在地狱第五层守护者绝望骑士-塞拉的身上，他是白羊座——穆(59,51)的化身。去吧！勇士！我和雅典娜会一直为您祈祷的")
	MisBeginCondition(NoMission, 1266)
	MisBeginCondition(NoRecord,1266)
	MisBeginCondition( Checksailexpmore, 9880)
	MisBeginAction(AddMission,1266)
	MisBeginAction(AddTrigger, 12661, TE_GETITEM, 5753, 1)
	MisBeginAction(AddTrigger, 12662, TE_GETITEM, 5754, 1)
	MisBeginAction(AddTrigger, 12663, TE_GETITEM, 5755, 1)
	MisBeginAction(AddTrigger, 12664, TE_GETITEM, 5756, 1)
	MisBeginAction(AddTrigger, 12665, TE_GETITEM, 5757, 1)
	MisBeginAction(AddTrigger, 12666, TE_GETITEM, 5758, 1)
	
	--MisCancelAction(ClearMission, 1266)

	MisNeed(MIS_NEED_DESP, "进入地狱第6层至第11层去解救出圣斗士,并得到6个圣斗士符文.")
	MisNeed(MIS_NEED_ITEM, 5753, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5754, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5755, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5756, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5757, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5758, 1, 35, 1)
	
	MisHelpTalk("<t>第一块符文应该是在地狱第五层守护者绝望骑士-塞拉的身上，他是白羊座——穆(59,51)的化身。去吧！勇士！我和雅典娜会一直为您祈祷的。")
	MisResultTalk("<t>不愧是海盗王的勇者！请你继续前往地狱去解救另外6个圣斗士们，坚信你一定可以的！")

	MisResultCondition(HasMission, 1266)
	MisResultCondition(NoRecord,1266)
	MisResultCondition(HasItem, 5753, 1)
	MisResultCondition(HasItem, 5754, 1)
	MisResultCondition(HasItem, 5755, 1)
	MisResultCondition(HasItem, 5756, 1)
	MisResultCondition(HasItem, 5757, 1)
	MisResultCondition(HasItem, 5758, 1)
		
	MisResultAction(TakeItem, 5753, 1 )
	MisResultAction(TakeItem, 5754, 1 )
	MisResultAction(TakeItem, 5755, 1 )
	MisResultAction(TakeItem, 5756, 1 )
	MisResultAction(TakeItem, 5757, 1 )
	MisResultAction(TakeItem, 5758, 1 )
	
	
	MisResultAction(ClearMission, 1266)
	MisResultAction(SetRecord, 1266)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5753)	
	TriggerAction( 1, AddNextFlag, 1266, 10, 1 )
	RegCurTrigger( 12661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5754)	
	TriggerAction( 1, AddNextFlag, 1266, 15, 1 )
	RegCurTrigger( 12662 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5755)	
	TriggerAction( 1, AddNextFlag, 1266, 20, 1 )
	RegCurTrigger( 12663 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5756)	
	TriggerAction( 1, AddNextFlag, 1266, 25, 1 )
	RegCurTrigger( 12664 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5757)	
	TriggerAction( 1, AddNextFlag, 1266, 30, 1 )
	RegCurTrigger( 12665 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5758)	
	TriggerAction( 1, AddNextFlag, 1266, 35, 1 )
	RegCurTrigger( 12666 )
		
	-------------------------------------------------------穆的符文--------穆
	DefineMission( 6215, "穆的符文",1267 )
	MisBeginTalk( "<t>要打败绝望骑士-塞拉，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1267)
	MisBeginCondition( NoRecord, 1267)
	MisBeginCondition( HasMission, 1266)
	MisBeginAction(	AddMission, 1267)
	MisBeginAction( AddTrigger, 12671, TE_KILL, 974, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第六层守护者冥泥怪-卡普顿身上，他是金牛座——阿鲁狄巴(178,77)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败绝望骑士-塞拉,解脱穆的灵魂。")
	MisResultCondition( HasFlag, 1267, 10)
	MisResultAction(GiveItem, 5753,1,4)------------给MU符文
	MisResultCondition( HasMission, 1267)
	MisResultAction( ClearMission, 1267)
	MisResultAction(SetRecord, 1267)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1267, 10, 1 )
	RegCurTrigger( 12671 )

	
	-------------------------------------------------------阿鲁狄巴符文--------阿鲁狄巴
	DefineMission( 6216, "阿鲁狄巴符文",1268 )
	MisBeginTalk( "<t>要打败冥泥怪-卡普顿，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1268)
	MisBeginCondition( NoRecord, 1268)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1267)
	MisBeginAction(	AddMission, 1268)
	MisBeginAction( AddTrigger, 12681, TE_KILL, 975, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第七层守护者冥囚-阿尔提斯身上，他是双子座——撒加(205,170)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥泥怪-卡普顿,解脱阿鲁狄巴的灵魂。")
	MisResultCondition( HasFlag, 1268, 10)
	MisResultAction(GiveItem, 5754,1,4)------------给ALDEBA符文  
	MisResultCondition( HasMission, 1268)
	MisResultAction( ClearMission, 1268)
	MisResultAction(SetRecord, 1268)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1268, 10, 1 )
	RegCurTrigger( 12681 )
	
	-------------------------------------------------------撒加符文--------撒加
	DefineMission( 6217, "撒加符文",1269 )
	MisBeginTalk( "<t>要打败冥囚-阿尔提斯，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1269)
	MisBeginCondition( NoRecord, 1269)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1268)
	MisBeginAction(	AddMission, 1269)
	MisBeginAction( AddTrigger, 12691, TE_KILL, 976, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第八层守护者冥妖-萨库西斯身上，他是巨蟹座——狄马斯(85,198)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥囚-阿尔提斯,解脱撒加的灵魂。")
	MisResultCondition( HasFlag, 1269, 10)
	MisResultAction(GiveItem, 5755,1,4)------------给撒加符文  
	MisResultCondition( HasMission, 1269)
	MisResultAction( ClearMission, 1269)
	MisResultAction(SetRecord, 1269)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1269, 10, 1 )
	RegCurTrigger( 12691 )
	
	-------------------------------------------------------狄马斯符文--------狄马斯
	DefineMission( 6218, "狄马斯符文",1270 )
	MisBeginTalk( "<t>要打败冥妖-萨库西斯，我的灵魂才能得到解脱，才能重返圣狱。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1270)
	MisBeginCondition( NoRecord, 1270)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1269)
	MisBeginAction(	AddMission, 1270)
	MisBeginAction( AddTrigger, 12701, TE_KILL, 977, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十层守护者冥王-幻皇身上，他是狮子座——艾奥利亚(80,190)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥妖-萨库西斯,解脱狄马斯的灵魂。")
	MisResultCondition( HasFlag, 1270, 10)
	MisResultAction(GiveItem, 5756,1,4)------------给狄马斯符文  
	MisResultCondition( HasMission, 1270)
	MisResultAction( ClearMission, 1270)
	MisResultAction(SetRecord, 1270)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1270, 10, 1 )
	RegCurTrigger( 12701 )
	
	-------------------------------------------------------艾奥利亚符文--------艾奥利亚
	DefineMission( 6219, "艾奥利亚符文",1271 )
	MisBeginTalk( "<t>要打败冥王-幻皇，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1271)
	MisBeginCondition( NoRecord, 1271)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1270)
	MisBeginAction(	AddMission, 1271)
	MisBeginAction( AddTrigger, 12711, TE_KILL, 979, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 979, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十一层守护者冥王-妖火身上，他是处女座——沙加(79,78)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥王-幻皇,解脱艾奥利亚的灵魂。")
	MisResultCondition( HasFlag, 1271, 10)
	MisResultAction(GiveItem, 5757,1,4)------------给艾奥利亚符文  
	MisResultCondition( HasMission, 1271)
	MisResultAction( ClearMission, 1271)
	MisResultAction(SetRecord, 1271)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 979 )
	TriggerAction( 1, AddNextFlag, 1271, 10, 1 )
	RegCurTrigger( 12711 )
	
	-------------------------------------------------------沙加符文--------沙加利亚
	DefineMission( 6220, "沙加符文",1272 )
	MisBeginTalk( "<t>要打败冥王-妖火，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1272)
	MisBeginCondition( NoRecord, 1272)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1271)
	MisBeginAction(	AddMission, 1272)
	MisBeginAction( AddTrigger, 12721, TE_KILL, 980, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 980, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。快带着我们的符文去找教皇史昂(1749,902)吧！")
	MisHelpTalk( "<t>打败冥王-妖火,解脱沙加的灵魂。")
	MisResultCondition( HasFlag, 1272, 10)
	MisResultAction(GiveItem, 5758,1,4)------------给沙加符文  
	MisResultCondition( HasMission, 1272)
	MisResultAction( ClearMission, 1272)
	MisResultAction(SetRecord, 1272)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 980 )
	TriggerAction( 1, AddNextFlag, 1272, 10, 1 )
	RegCurTrigger( 12721 )
	
	-------------------------------------------------------童虎符文--------童虎
	DefineMission( 6221, "童虎符文",1273 )
	MisBeginTalk( "<t>要打败冥王-邪兽，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1273)
	MisBeginCondition( NoRecord, 1273)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1272)
	MisBeginAction(	AddMission, 1273)
	MisBeginAction( AddTrigger, 12731, TE_KILL, 981, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 981, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十三层守护者冥王-霸狂身上，他是天蝎座——米罗(326,76)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥王-邪兽,解脱童虎的灵魂。")
	MisResultCondition( HasFlag, 1273, 10)
	MisResultAction(GiveItem, 5759,1,4)------------给童虎符文  
	MisResultCondition( HasMission, 1273)
	MisResultAction( ClearMission, 1273)
	MisResultAction(SetRecord, 1273)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 981 )
	TriggerAction( 1, AddNextFlag, 1273, 10, 1 )
	RegCurTrigger( 12731 )
	
	-------------------------------------------------------米罗符文--------米罗
	DefineMission( 6222, "米罗符文",1274 )
	MisBeginTalk( "<t>要打败冥王-霸狂，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1274)
	MisBeginCondition( NoRecord, 1274)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1273)
	MisBeginAction(	AddMission, 1274)
	MisBeginAction( AddTrigger, 12741, TE_KILL, 982, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 982, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十四层守护者冥王-凤凰身上，他是人马座——艾俄罗斯(320,195)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥王-霸狂,解脱米罗的灵魂。")
	MisResultCondition( HasFlag, 1274, 10)
	MisResultAction(GiveItem, 5760,1,4)------------给米罗符文  
	MisResultCondition( HasMission, 1274)
	MisResultAction( ClearMission, 1274)
	MisResultAction(SetRecord, 1274)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 982 )
	TriggerAction( 1, AddNextFlag, 1274, 10, 1 )
	RegCurTrigger( 12741 )
	
	-------------------------------------------------------艾俄罗斯符文-------艾俄罗斯
	DefineMission( 6223, "艾俄罗斯符文",1275 )
	MisBeginTalk( "<t>要打败冥王-凤凰，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1275)
	MisBeginCondition( NoRecord, 1275)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1274)
	MisBeginAction(	AddMission, 1275)
	MisBeginAction( AddTrigger, 12751, TE_KILL, 983, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 983, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十五层守护者冥王-绝望身上，他是摩羯座——修罗(318,317)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥王-凤凰,解脱艾俄罗斯的灵魂。")
	MisResultCondition( HasFlag, 1275, 10)
	MisResultAction(GiveItem, 5761,1,4)------------给艾俄罗斯符文  
	MisResultCondition( HasMission, 1275)
	MisResultAction( ClearMission, 1275)
	MisResultAction(SetRecord, 1275)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 983 )
	TriggerAction( 1, AddNextFlag, 1275, 10, 1 )
	RegCurTrigger( 12751 )
	
	-------------------------------------------------------修罗符文-------修罗
	DefineMission( 6224, "修罗符文",1276 )
	MisBeginTalk( "<t>要打败冥王-绝望，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1276)
	MisBeginCondition( NoRecord, 1276)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1275)
	MisBeginAction(	AddMission, 1276)
	MisBeginAction( AddTrigger, 12761, TE_KILL, 984, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 984, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十六层守护者冥王-龙魂身上，他是宝瓶座——加妙(198,310)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥王-绝望,解脱修罗的灵魂。")
	MisResultCondition( HasFlag, 1276, 10)
	MisResultAction(GiveItem, 5762,1,4)------------给修罗符文  
	MisResultCondition( HasMission, 1276)
	MisResultAction( ClearMission, 1276)
	MisResultAction(SetRecord, 1276)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 984 )
	TriggerAction( 1, AddNextFlag, 1276, 10, 1 )
	RegCurTrigger( 12761 )
	
	-------------------------------------------------------加妙符文-------加妙
	DefineMission( 6225, "加妙符文",1277 )
	MisBeginTalk( "<t>要打败冥王-龙魂，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1277)
	MisBeginCondition( NoRecord, 1277)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1276)
	MisBeginAction(	AddMission, 1277)
	MisBeginAction( AddTrigger, 12771, TE_KILL, 985, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 985, 1, 10, 1)

	MisResultTalk( "<t>您真是位值得尊敬的勇士。作为奖励，这块符文你拿去吧。下一块符文在地狱第十七层守护者冥王-海刹身上，他是双鱼座——阿布罗狄(80,315)的化身。去吧，勇士！我会一直为您祈祷的。")
	MisHelpTalk( "<t>打败冥王-龙魂,解脱加妙的灵魂。")
	MisResultCondition( HasFlag, 1277, 10)
	MisResultAction(GiveItem, 5763,1,4)------------给加妙符文  
	MisResultCondition( HasMission, 1277)
	MisResultAction( ClearMission, 1277)
	MisResultAction(SetRecord, 1277)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 985 )
	TriggerAction( 1, AddNextFlag, 1277, 10, 1 )
	RegCurTrigger( 12771 )
	
	-------------------------------------------------------阿布罗狄符文-------阿布罗狄
	DefineMission( 6226, "加妙符文",1278 )
	MisBeginTalk( "<t>要打败冥王-海刹，我的灵魂才能得到解脱，才能重返圣域。我觉得您一定可以顺利的完成任务。")
	MisBeginCondition( NoMission, 1278)
	MisBeginCondition( NoRecord, 1278)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1277)
	MisBeginAction(	AddMission, 1278)
	MisBeginAction( AddTrigger, 12781, TE_KILL, 986, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 986, 1, 10, 1)

	MisResultTalk( "<t>你把我们十二个兄弟都救出了？真不敢相信……我代表我们所有黄金圣斗士感谢您：尊敬的海盗王。这块最后的符文你拿去吧。")
	MisHelpTalk( "<t>打败冥王-海刹,解脱阿布罗狄的灵魂。")
	MisResultCondition( HasFlag, 1278, 10)
	MisResultAction(GiveItem, 5764,1,4)------------给阿布罗狄符文  
	MisResultCondition( HasMission, 1278)
	MisResultAction( ClearMission, 1278)
	MisResultAction(SetRecord, 1278)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 986 )
	TriggerAction( 1, AddNextFlag, 1278, 10, 1 )
	RegCurTrigger( 12781 )
	
		
	-------------------------------------------------------浴火重生之二--------教皇史昂
	DefineMission( 6227, "浴火重生之二", 1279 )
	MisBeginTalk("<t>哦！您的勇敢真让我敬佩和感动。如果您真的能解救出我的圣斗士们，我愿意把教皇的位置让给你，并把我们圣殿之宝——<r浴火重生石>送给你，传说那块石头可以让您获得神一般的超能力。对了，第七块符文应该是在地狱第十二层守护者冥王-邪兽身上，他是天平座——童虎(210,80)的化身。去吧！勇士！我和雅典娜会一直为您祈祷的")
	MisBeginCondition(NoMission, 1279)
	MisBeginCondition(NoRecord,1279)
	MisBeginCondition(HasRecord,1266)
	MisBeginAction(AddMission,1279)
	MisBeginAction(AddTrigger, 12791, TE_GETITEM, 5759, 1)
	MisBeginAction(AddTrigger, 12792, TE_GETITEM, 5760, 1)
	MisBeginAction(AddTrigger, 12793, TE_GETITEM, 5761, 1)
	MisBeginAction(AddTrigger, 12794, TE_GETITEM, 5762, 1)
	MisBeginAction(AddTrigger, 12795, TE_GETITEM, 5763, 1)
	MisBeginAction(AddTrigger, 12796, TE_GETITEM, 5764, 1)

	--MisCancelAction(ClearMission, 1279)

	MisNeed(MIS_NEED_DESP, "进入地狱第12层至第17层去解救出圣斗士,并得到最后6个圣斗士符文。")
	MisNeed(MIS_NEED_ITEM, 5759, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5760, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5761, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5762, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5763, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5764, 1, 35, 1)
	
	MisHelpTalk("<t>第七块符文应该是在地狱第十二层守护者冥王-邪兽身上，他是天平座——童虎(210,80)的化身。去吧！勇士！我和雅典娜会一直为您祈祷的。")
	MisResultTalk("<t>那么多年了……我终于找到了真正的海盗王中之王，真正有资格成为海盗教皇的你……我也放心退位了。这块圣殿之宝——浴火重生石送给你。前往小天使处即可获得雅典娜的祝福——您的能力得到将极大限度的提升。")

	MisResultCondition(HasMission, 1279)
	MisResultCondition(NoRecord,1279)
	MisResultCondition(HasItem, 5759, 1)
	MisResultCondition(HasItem, 5760, 1)
	MisResultCondition(HasItem, 5761, 1)
	MisResultCondition(HasItem, 5762, 1)
	MisResultCondition(HasItem, 5763, 1)
	MisResultCondition(HasItem, 5764, 1)
		
	MisResultAction(TakeItem, 5759, 1 )
	MisResultAction(TakeItem, 5760, 1 )
	MisResultAction(TakeItem, 5761, 1 )
	MisResultAction(TakeItem, 5762, 1 )
	MisResultAction(TakeItem, 5763, 1 )
	MisResultAction(TakeItem, 5764, 1 )
	
	
	MisResultAction(GiveItem, 5765,1,4)------------给浴火重生石
	MisResultAction(ClearMission, 1279)
	MisResultAction(SetRecord, 1279)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5759)	
	TriggerAction( 1, AddNextFlag, 1279, 10, 1 )
	RegCurTrigger( 12791 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5760)	
	TriggerAction( 1, AddNextFlag, 1279, 15, 1 )
	RegCurTrigger( 12792 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5761)	
	TriggerAction( 1, AddNextFlag, 1279, 20, 1 )
	RegCurTrigger( 12793 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5762)	
	TriggerAction( 1, AddNextFlag, 1279, 25, 1 )
	RegCurTrigger( 12794 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5763)	
	TriggerAction( 1, AddNextFlag, 1279, 30, 1 )
	RegCurTrigger( 12795 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5764)	
	TriggerAction( 1, AddNextFlag, 1279, 35, 1 )
	RegCurTrigger( 12796 )
		

	------------------------------------------------------dina(end)
	

------------------监狱指引---------监狱长
	DefineMission ( 6230, "出狱之路", 1280 )
	
	MisBeginTalk ( "<t>不管你是罪有应得还是被人陷害,既然来了这监狱岛就要守这的规矩,想知道如何离开这里吗?你可以去找狱警(281,218)问下!")
	MisBeginCondition( NoMission, 1280)
	MisBeginCondition( NoRecord, 1280)
	MisBeginAction( AddMission, 1280)
	MisCancelAction( ClearMission, 1280)

	MisNeed( MIS_NEED_DESP, "找狱警(316,208)了解出狱的方法.")

	MisHelpTalk( "快去吧")
	MisResultCondition ( AlwaysFailure )

------------------监狱指引----------狱警
	DefineMission ( 6231, "出狱之路", 1280, COMPLETE_SHOW )

	MisBeginCondition ( AlwaysFailure )

	MisResultTalk ( "<t>这么急着出去干吗,其实在这里陪陪我们也不错哈.如果你真的想出去的话,那可以点击我选择'了解出狱的方法'.")
	MisResultCondition( HasMission, 1280)
	MisResultCondition( NoRecord, 1280)
	MisResultAction( ClearMission, 1280)
	MisResultAction( SetRecord, 1280)

	
------------------1级圣王宝藏--------挑战废灵迷宫
	DefineMission( 6232, "挑战废灵迷宫", 1281 )
	
	MisBeginTalk("<t>你先要从废灵迷宫中带回我想要的东西，接下来我才会告诉你该怎么做.")
	MisBeginCondition(NoMission, 1281)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5776, 1)
	MisBeginCondition(NoItem, 5786, 1)
	MisBeginCondition(NoItem, 5787, 1)
	MisBeginCondition(NoItem, 5788, 1)
	MisBeginCondition(NoItem, 5789, 1)
	MisBeginCondition(NoItem, 5790, 1)
	MisBeginAction(TakeItem, 5776, 1 )
	MisBeginAction(AddMission, 1281)
	
	MisBeginAction(AddTrigger, 12811, TE_GETITEM, 3434, 15 )
	MisBeginAction(AddTrigger, 12812, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 12813, TE_GETITEM, 3436, 15 )
	MisCancelAction(ClearMission, 1281)
	MisNeed(MIS_NEED_ITEM, 3434, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 15, 30, 15)
	
	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r废旧的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1281)	
	MisResultCondition(HasItem, 3434, 15 )
	MisResultCondition(HasItem, 3435, 10 )
	MisResultCondition(HasItem, 3436, 15 )
	MisResultAction(SetRecord, 1281)   --添加record1281
	MisResultAction(TakeItem, 3434, 15 )
	MisResultAction(TakeItem, 3435, 10 )
	MisResultAction(TakeItem, 3436, 15 )	
	MisResultAction(ClearMission, 1281)	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------给予玩家废旧的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1281, 10, 15)
	RegCurTrigger( 12811 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435)	
	TriggerAction( 1, AddNextFlag, 1281, 20, 10 )
	RegCurTrigger( 12812 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1281, 30, 15 )
	RegCurTrigger( 12813 )

	





	------------------1级圣王宝藏--------挑战沼泽迷宫
	DefineMission( 6233, "挑战沼泽迷宫", 1282 )
	
	MisBeginTalk("<t>你先要从沼泽迷宫中带回我想要的东西，接下来我才会告诉你该怎么做.")
	MisBeginCondition(NoMission, 1282)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5791, 1)   --加纳罗伊的密函B
	MisBeginCondition(NoItem, 5786, 1)    --废旧的月光宝盒
	MisBeginCondition(NoItem, 5787, 1)    --陈旧的月光宝盒
	MisBeginCondition(NoItem, 5788, 1)    --崭新的月光宝盒
	MisBeginCondition(NoItem, 5789, 1)    --精致的月光宝盒
	MisBeginCondition(NoItem, 5790, 1)    --卓越的月光宝盒
	MisBeginAction(TakeItem, 5791, 1 )
	MisBeginAction(AddMission, 1282)
	
	MisBeginAction(AddTrigger, 12821, TE_GETITEM, 3445, 15 )
	MisBeginAction(AddTrigger, 12822, TE_GETITEM, 3443, 10 )
	MisBeginAction(AddTrigger, 12823, TE_GETITEM, 3444, 15 )
	MisCancelAction(ClearMission, 1282)
	MisNeed(MIS_NEED_ITEM, 3445, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3443, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3444, 15, 30, 15)
	
	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r废旧的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1282)
	MisResultCondition(HasItem, 3445, 15 )
	MisResultCondition(HasItem, 3443, 10 )
	MisResultCondition(HasItem, 3444, 15 )
	MisResultAction(SetRecord, 1282)   --添加record1282
	MisResultAction(TakeItem, 3445, 15 )
	MisResultAction(TakeItem, 3443, 10 )
	MisResultAction(TakeItem, 3444, 15 )	
	MisResultAction(ClearMission, 1282)
	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------废旧的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 3445)	
	TriggerAction( 1, AddNextFlag, 1282, 10, 15)
	RegCurTrigger( 12821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3443)	
	TriggerAction( 1, AddNextFlag, 1282, 20, 10 )
	RegCurTrigger( 12822 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3444)	
	TriggerAction( 1, AddNextFlag, 1282, 30, 15 )
	RegCurTrigger( 12823 )
	
	
	------------------1级圣王宝藏--------挑战魔方迷宫
	DefineMission( 6234, "挑战魔方迷宫", 1283 )
	
	MisBeginTalk("<t>你先要从魔方迷宫中带回我想要的东西，接下来我才会告诉你该怎么做.")
	MisBeginCondition(NoMission, 1283)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5792, 1)   --加纳罗伊的密函C
	MisBeginCondition(NoItem, 5786, 1)    --废旧的月光宝盒
	MisBeginCondition(NoItem, 5787, 1)    --陈旧的月光宝盒
	MisBeginCondition(NoItem, 5788, 1)    --崭新的月光宝盒
	MisBeginCondition(NoItem, 5789, 1)    --精致的月光宝盒
	MisBeginCondition(NoItem, 5790, 1)    --卓越的月光宝盒
	MisBeginAction(TakeItem, 5792, 1 )
	MisBeginAction(AddMission, 1283)
	MisBeginAction(AddTrigger, 12831, TE_GETITEM, 3820, 30 )
	MisBeginAction(AddTrigger, 12832, TE_GETITEM, 3821, 30 )
	MisBeginAction(AddTrigger, 12833, TE_GETITEM, 3822, 30 )
	MisCancelAction(ClearMission, 1283)
	MisNeed(MIS_NEED_ITEM, 3820, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 3821, 30, 60, 30)
	MisNeed(MIS_NEED_ITEM, 3822, 30, 70, 30)
	
	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r废旧的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1283)
	MisResultCondition(HasItem, 3820, 30 )
	MisResultCondition(HasItem, 3821, 30 )
	MisResultCondition(HasItem, 3822, 30 )
	MisResultAction(TakeItem, 3820, 30 )
	MisResultAction(TakeItem, 3821, 30 )
	MisResultAction(TakeItem, 3822, 30 )	
	MisResultAction(ClearMission, 1283)
	MisResultAction(SetRecord, 1283)   --添加record1283   
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------废旧的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 3820)	
	TriggerAction( 1, AddNextFlag, 1283, 50, 30 )
	RegCurTrigger( 12831 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3821)	
	TriggerAction( 1, AddNextFlag, 1283, 60, 30 )
	RegCurTrigger( 12832 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3822)	
	TriggerAction( 1, AddNextFlag, 1283, 70, 30 )
	RegCurTrigger( 12833 )

------------------2级圣王宝藏钥匙--------
	DefineMission( 6235, "2级圣王宝藏钥匙", 1284 )
	
	MisBeginTalk("<t>亲爱的朋友，欢迎来到这个充满神秘和危险的世界。这个世界中存在的秘密等你去发现。只要你帮我收集我需要的物品，我将告诉你关于圣王宝藏的秘密")
	MisBeginCondition(NoMission, 1284)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5793, 1)   --2级宝藏钥匙密函
	MisBeginCondition(NoItem, 5786, 1)    --废旧的月光宝盒
	MisBeginCondition(NoItem, 5787, 1)    --陈旧的月光宝盒
	MisBeginCondition(NoItem, 5788, 1)    --崭新的月光宝盒
	MisBeginCondition(NoItem, 5789, 1)    --精致的月光宝盒
	MisBeginCondition(NoItem, 5790, 1)    --卓越的月光宝盒
	MisBeginAction(TakeItem, 5793, 1 )    --取走道具2级宝藏钥匙密函
	MisBeginAction(AddMission, 1284)
	MisBeginAction(AddTrigger, 12841, TE_GETITEM, 2588, 10 )
	MisBeginAction(AddTrigger, 12842, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1284)
	MisNeed(MIS_NEED_ITEM, 2588, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r陈旧的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1284)
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1284)
	MisResultAction(SetRecord, 1284)      --添加record1283   
	
	MisResultAction(GiveItem, 5787, 1, 4)    ----------陈旧的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1284, 10, 10)
	RegCurTrigger( 12841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1284, 20, 99 )
	RegCurTrigger( 12842 )
	



------------------3级圣王宝藏钥匙--------
	DefineMission( 6236, "3级圣王宝藏钥匙", 1285 )
	
	MisBeginTalk("<t>亲爱的朋友，欢迎来到这个充满神秘和危险的世界。这个世界中存在的秘密等你去发现。这次除了要帮我收集我需要的物品，还要求你拥有1000点的<r名声值>和50点<r荣誉值>,只要满足这些条件我就告诉你关于圣王宝藏的秘密")
	MisBeginCondition(NoMission, 1285)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5794, 1)   --3级宝藏钥匙密函
	MisBeginCondition(NoItem, 5786, 1)    --废旧的月光宝盒
	MisBeginCondition(NoItem, 5787, 1)    --陈旧的月光宝盒
	MisBeginCondition(NoItem, 5788, 1)    --崭新的月光宝盒
	MisBeginCondition(NoItem, 5789, 1)    --精致的月光宝盒
	MisBeginCondition(NoItem, 5790, 1)    --卓越的月光宝盒
	MisBeginAction(TakeItem, 5794, 1 )    --取走道具3级宝藏钥匙密函
	MisBeginAction(AddMission, 1285)
	MisBeginAction(AddTrigger, 12851, TE_GETITEM, 4511, 30 )
	MisBeginAction(AddTrigger, 12852, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1285)
	MisNeed(MIS_NEED_ITEM, 4511, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r崭新的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？别忘了还需要1000点<r名声值>和50点<r荣誉值>,连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1285)
	MisResultCondition(HasItem, 4511, 30 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultCondition(HasCredit, 1000 )       --需要名声1000
	MisResultCondition(HasHonorPoint, 50 )     --需要荣誉50
	MisResultAction(TakeItem, 4511, 30 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1285)
	MisResultAction(SetRecord, 1285)   --添加record1283      
	
	MisResultAction(GiveItem, 5788, 1, 4)    ----------崭新的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 4511)	
	TriggerAction( 1, AddNextFlag, 1285, 10, 30)
	RegCurTrigger( 12851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1285, 20, 99 )
	RegCurTrigger( 12852 )


------------------4级圣王宝藏钥匙--------
	DefineMission( 6237, "4级圣王宝藏钥匙", 1286 )
	
	MisBeginTalk("<t>亲爱的朋友，欢迎来到这个充满神秘和危险的世界。这个世界中存在的秘密等你去发现。只要你帮我收集我需要的物品，我将告诉你关于圣王宝藏的秘密")
	MisBeginCondition(NoMission, 1286)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5795, 1)   --4级宝藏钥匙密函
	MisBeginCondition(NoItem, 5786, 1)    --废旧的月光宝盒
	MisBeginCondition(NoItem, 5787, 1)    --陈旧的月光宝盒
	MisBeginCondition(NoItem, 5788, 1)    --崭新的月光宝盒
	MisBeginCondition(NoItem, 5789, 1)    --精致的月光宝盒
	MisBeginCondition(NoItem, 5790, 1)    --卓越的月光宝盒
	MisBeginAction(TakeItem, 5795, 1 )    --取走道具4级宝藏钥匙密函
	MisBeginAction(AddMission, 1286)
	MisBeginAction(AddTrigger, 12861, TE_GETITEM, 0266, 1 )
	MisBeginAction(AddTrigger, 12862, TE_GETITEM, 2589, 1 )
	MisBeginAction(AddTrigger, 12863, TE_GETITEM, 3000, 1 )
	MisCancelAction(ClearMission, 1286)
	MisNeed(MIS_NEED_ITEM, 0266, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2589, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	
	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r精致的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1286)
	MisResultCondition(HasItem, 0266, 1 )
	MisResultCondition(HasItem, 2589, 1 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultAction(TakeItem, 0266, 1 )
	MisResultAction(TakeItem, 2589, 1 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(ClearMission, 1286)
	MisResultAction(SetRecord, 1286)      --添加record1286 
	
	MisResultAction(GiveItem, 5789, 1, 4)    ---------精致的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 0266)	
	TriggerAction( 1, AddNextFlag, 1286, 10, 1)
	RegCurTrigger( 12861 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1286, 20, 1 )
	RegCurTrigger( 12862 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1286, 40, 1 )
	RegCurTrigger( 12863 )

------------------5级圣王宝藏钥匙--------
	DefineMission( 6238, "5级圣王宝藏钥匙", 1287 )
	
	MisBeginTalk("<t>亲爱的朋友，欢迎来到这个充满神秘和危险的世界。这个世界中存在的秘密等你去发现。只要你帮我收集我需要的物品，我将告诉你关于圣王宝藏的秘密")
	MisBeginCondition(NoMission, 1287)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5796, 1)   --5级宝藏钥匙密函
	MisBeginCondition(NoItem, 5786, 1)    --废旧的月光宝盒
	MisBeginCondition(NoItem, 5787, 1)    --陈旧的月光宝盒
	MisBeginCondition(NoItem, 5788, 1)    --崭新的月光宝盒
	MisBeginCondition(NoItem, 5789, 1)    --精致的月光宝盒
	MisBeginCondition(NoItem, 5790, 1)    --卓越的月光宝盒
	MisBeginAction(TakeItem, 5796, 1 )    --取走道具4级宝藏钥匙密函
	MisBeginAction(AddMission, 1287)
	MisBeginAction(AddTrigger, 12871, TE_GETITEM, 2589, 5 )
	MisBeginAction(AddTrigger, 12872, TE_GETITEM, 5703, 2 )
	MisBeginAction(AddTrigger, 12873, TE_GETITEM, 3000, 1 )
	MisBeginAction(AddTrigger, 12874, TE_GETITEM, 3122, 5 )
	MisCancelAction(ClearMission, 1287)
	MisNeed(MIS_NEED_ITEM, 2589, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 5703, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3122, 5, 40, 5)
	
	MisResultTalk("<t>很好，你离获得圣王的宝藏迈进了一大步！接下来要做的就是把这个<r卓越的月光宝盒>中的能量消耗完再回来找我！")
	MisHelpTalk("<t>怎么了，还没收集齐？连这些小事都办不到你还想什么圣王的宝藏……")
	MisResultCondition(HasMission, 1287)
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 5703, 2 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultCondition(HasItem, 3122, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 5703, 2 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(TakeItem, 3122, 5 )
	MisResultAction(ClearMission, 1287)
	MisResultAction(SetRecord, 1287)      --添加record1287 
	
	MisResultAction(GiveItem, 5790, 1, 4)    ---------卓越的月光宝盒
	MisResultBagNeed(1)                     ---------因为任务完成要给道具给玩家，所以注意留下背包空格

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1287, 10, 5)
	RegCurTrigger( 12871 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5703)	
	TriggerAction( 1, AddNextFlag, 1287, 20, 2 )
	RegCurTrigger( 12872 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1287, 30, 1 )
	RegCurTrigger( 12873 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122)	
	TriggerAction( 1, AddNextFlag, 1287, 40, 5 )
	RegCurTrigger( 12874 )	

--------------------圣斗士的cosplay----------
	DefineMission( 6239, "圣斗士的cosplay", 1288 )
	MisBeginTalk("<t>我想看黄金十二宫篇......可是穆先生玩艺术，说自己要隐居，阿鲁迪巴讨伐山贼受伤了，撒加疯了，迪斯马克斯去北京看奥运了......你能够顶替他们一下，让我看到邪恶教皇倒下么？")
	MisBeginCondition(NoMission, 1288)
	MisBeginCondition(NoRecord, 1288)
	MisBeginCondition(NoRecord, 1300)
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)
	MisBeginAction(AddMission, 1288)
	MisBeginAction(SetRecord, 1288)
	MisCancelAction(SystemNotice, "该任务无法取消")

	MisNeed(MIS_NEED_DESP, "快去寻找城户沙织的守护者吧......星矢在加纳大陆(2110,2677)，紫龙在魔女之海（1126, 3416),冰河在深蓝之海(1533，699)，瞬在加勒比(619, 965)")
	
	MisHelpTalk("<t>星矢呢？紫龙呢？冰河呢？啊瞬呢？一辉呢？")
	MisResultCondition(AlwaysFailure)	
-------------------圣斗士的cosplay——星矢----------
	DefineMission( 6240, "圣斗士的cosplay", 1288 )
	MisHelpTalk("<t>要收集完所有的COSPLAY证书去找一辉")
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("啊！你来啦，我这里正好需要你帮忙呢。")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1289)
	MisResultAction(SetRecord,1289)
	
---------------星矢的考验---------
	DefineMission( 6241, "星矢的考验", 1289)
	MisBeginTalk("<t>阿鲁迪巴在讨伐山贼的时候误中奸计，被打伤了，你马上去找30个精灵果来为他疗伤，并且取杀了那个万恶的山贼头子，把他的腰带拿来做证明。")
	
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1289)	
	MisBeginCondition(NoRecord, 1291)	
	MisBeginAction(AddMission, 1289)
	MisBeginAction(SetRecord, 1290)
	MisCancelAction(SystemNotice, "该任务无法取消")
	MisNeed(MIS_NEED_DESP, "<t>去收集30个精灵果和一个山贼腰带！")
	MisHelpTalk("<t>什么？你叫我去？哎，如果不是因为我和雅典娜有一腿。不......是要保护雅典娜，我怎么会让你去！")
	MisResultTalk("<t>哈哈！凭着这个一定可以让阿鲁迪巴把他一直养的那头肉牛交出来做牛肉火锅了！这是给你的，我认可你的勇敢了！")

	MisResultCondition(HasMission, 1289)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1290)

	MisResultCondition(HasItem, 3116, 30)
	MisResultCondition(HasItem, 4495, 1)
	

	MisResultAction(TakeItem, 3116, 30)
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(ClearRecord, 1290)
	

	MisResultAction(GiveItem, 5813, 1, 4)                          
	MisResultAction(GiveItem, 3094, 1, 4)                          
	MisResultAction(ClearMission, 1289) 
	MisResultAction(SetRecord, 1291) 
	MisResultBagNeed(2)

-------------------圣斗士的cosplay——紫龙----------
	DefineMission( 6242, "圣斗士的cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk("<t>要收集完所有的COSPLAY证书去找一辉")
	MisResultTalk("啊！你来啦，我这里正好需要你帮忙呢。")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1292)
	MisResultAction(SetRecord,1292)
---------------紫龙的考验---------
	DefineMission( 6243, "紫龙的考验", 1290)
	MisBeginTalk("<t>我已经劝说过牧先生了，不过他非说什么夜观星相，酱油甜菜酱淋什么的，反正，这里有5道题目，你全部回答正确了，就给你我的认可。")
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1292)	
	MisBeginCondition(NoRecord, 1294)	
	MisBeginCondition(NoRecord, 1295)		
	MisBeginAction(AddMission, 1290)
	MisBeginAction(SetRecord, 1294)
	MisCancelAction(SystemNotice, "该任务无法取消")

	MisHelpTalk("<t>知识就是力量，但是自大会让自己的双眼被蒙蔽。")
	MisResultTalk("<t>恩，果然，你就是那个甜菜......这是我的认可，给你了。")
	
	
	MisResultCondition(HasMission, 1290)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1293)
	MisResultCondition(HasRecord, 1294)
	
	
	MisResultAction(GiveItem, 5814, 1, 4)
	MisResultAction(GiveItem, 3094, 1, 4)	                          
	MisResultAction(ClearMission, 1290) 
	MisResultAction(ClearRecord, 1294) 	
	MisResultAction(ClearRecord, 1293) 	
	MisResultAction(SetRecord, 1295) 
	MisResultBagNeed(2)

-----------圣斗士的cosplay——冰河---------
	DefineMission( 6244, "圣斗士的cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk("<t>要收集完所有的COSPLAY证书去找一辉")
	MisResultTalk("啊！你来啦，我这里正好需要你帮忙呢。")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1296)
	MisResultAction(SetRecord,1296)
---------------冰河的考验---------
	DefineMission( 6245, "冰河的考验", 1291)
	MisBeginTalk("<t>撒迦疯了，他分身成3个，我没有领悟第九感，斗不过他，看样子，得靠你们才行。你们必须在我这里换一张召唤券召出来，杀掉他才可以获得我的认可。不过，召唤券的制作可不是免费的哦。还有，如果你在我这里连1张召唤券都没拿过，那也没办法获得我的认可哦！")
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1296)	
	MisBeginCondition(NoRecord, 1297)	
	MisBeginCondition(NoRecord, 1298)		
	MisBeginAction(AddMission, 1291)
	MisBeginAction(SetRecord, 1297)
	MisBeginAction(AddTrigger, 12911, TE_KILL, 1070, 1)
	MisCancelAction(SystemNotice, "该任务无法取消")
	
	MisHelpTalk("<t>不在我买票的话，你可没办法拿到证明哦！")
	MisResultTalk("<t>果然......你领悟了第九感，这是我的证明，给你吧。")
	
	MisResultCondition( HasFlag, 1291, 10)
	MisResultCondition(HasMission, 1291)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1297)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1298)
	

	MisResultAction(GiveItem, 5815, 1, 4)
	MisResultAction(ClearMission, 1291) 
	MisResultAction(ClearRecord, 1297)
	MisResultAction(ClearRecord, 1298)
	MisResultAction(SetRecord, 1299) 
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1070)	
	TriggerAction( 1, AddNextFlag, 1291, 10, 1 )
	RegCurTrigger( 12911 )
---------------瞬的考验---------
	DefineMission( 6246, "圣斗士的cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )
    MisHelpTalk("<t>要收集完所有的COSPLAY证书去找一辉")
	MisResultTalk("啊！你还是收集好其他三个人的认可来的啊，我这里直接给你cosplay认可证书吧。搜集完白羊，金牛，双子，巨蟹宫的cosplay认可证书，再去骷髅岛找我哥哥一辉，就可以进入最新挑战了。还有，可以在完成他们3个全部任务的情况下反复找我获得再次找他们获取任务的资格哦！")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoMission,1289)
	MisResultCondition(NoMission,1290)
	MisResultCondition(NoMission,1291)	
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1291)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1295)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1299)
	MisResultAction(ClearRecord, 1289)
	MisResultAction(ClearRecord, 1291)
	MisResultAction(ClearRecord, 1292)
	MisResultAction(ClearRecord, 1295)
	MisResultAction(ClearRecord, 1296)
	MisResultAction(ClearRecord, 1299)
	MisResultAction(SetRecord, 1300)
	MisResultAction(SetRecord, 1301)	
	MisResultAction(GiveItem, 5806, 1, 4)
	MisResultAction(TakeItem, 5815, 1, 4)
	MisResultAction(TakeItem, 5814, 1, 4)
	MisResultAction(TakeItem, 5813, 1, 4)
	MisResultBagNeed(1)

------------------------------------------一辉的考验--------
	DefineMission( 6247, "圣斗士的cosplay", 1288 )
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("啊，你来了，演出就要开始了！去战斗吧，黄金圣斗士！从此刻开始你不能再去找青铜圣斗士了！")
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(HasRecord, 1300)
	MisResultCondition(HasRecord, 1301)
	MisResultAction(ClearRecord, 1288)
	MisResultAction(ClearRecord, 1301)
	MisResultAction(ClearMission, 1288)
	MisResultAction(SetRecord, 1302)
--------------------------------------击杀邪恶教皇----------
	DefineMission( 6248, "击杀邪恶教皇", 1292 )
	MisBeginTalk("<t>好了，就是现在，你把那4张cosplay认可证书给我，我就可以换给你叫出邪恶教皇的东西了，不过，你没在我这里换过东西的话，就算杀了邪恶教皇，纱织也不会承认的！")
	MisHelpTalk("<t>只要把教皇击杀了，就可以找沙织获得奖品了！")
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)	
	MisBeginCondition(NoMission, 1291)		
	MisBeginAction(AddMission, 1292)
	MisBeginAction(SetRecord, 1303)
	MisBeginAction(AddTrigger, 12921, TE_KILL, 1071, 1)
	MisNeed(MIS_NEED_KILL, 1071, 1, 10, 1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1071)	
	TriggerAction( 1, AddNextFlag, 1292, 10, 1 )
	RegCurTrigger( 12921 )

	MisResultCondition(AlwaysFailure)	
------------------------------------兑换六.一礼物------------
	DefineMission( 6249, "击杀邪恶教皇", 1292 )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("谢谢你，我终于看到这一直想看一幕了。这是给你的礼物，要记住，把黄金圣衣放背包里面才能拿到好东西哦，而且越靠后的星座，拿到的东西越好。不过，只准放1套在背包里面哦。")

	MisResultCondition( HasFlag, 1292, 10)
	MisResultCondition(HasMission, 1292)
	MisResultCondition(HasRecord, 1303)
	MisResultCondition(HasRecord, 1305)
	
	

	MisResultAction(GiveItem, 5812, 1, 4)
	MisResultAction(ClearMission, 1292) 
	MisResultAction(ClearRecord, 1303)
	MisResultAction(SetRecord, 1304) 
	MisResultBagNeed(1)
	
	------------------------------------奥运活动 之 失踪的圣火------------  圣火传递大使
	DefineMission( 6250, "失踪的圣火", 1306 )
	MisBeginTalk("<t>我怀疑圣火可能是被沙岚城外的<r沙匪（1065，3137）>给劫走了，别在浪费时间了，赶快去调查一下吧")
	MisBeginCondition(NoMission, 1306)
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(NoRecord, 1309)
	MisBeginCondition(NoRecord, 1314)
	MisBeginCondition(NoRecord, 1315)
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoRecord, 1323)
	MisBeginAction(AddMission, 1306)
	MisCancelAction(ClearMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_KILL, 45, 10)

	MisNeed(MIS_NEED_DESP, "圣火传递大使（871，3580）要你杀死沙匪10个 ")
	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)

	MisHelpTalk("<t>沙匪就在沙岚城外，快去快去")	
	MisResultTalk("<t>果然不出我的所料，年轻人，你真是好样的！将火种和这封信一起带给冰狼铁匠暴冰（1344,529），只有他有能力重新铸造一把圣火的火炬！")
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasFlag, 1306, 19)	
	
	MisResultAction(ClearMission,1306)
	MisResultAction(SetRecord,1306)
	MisResultBagNeed(2)
	MisResultAction(GiveItem, 5802, 1, 4)
	MisResultAction(GiveItem, 5841, 1, 4)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 45)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 10 )
	RegCurTrigger( 13061 )
	
	
	----------------------------------奥运活动 之 重铸圣火火炬------------ 铁匠暴冰
	DefineMission( 6251, "重铸圣火火炬",1307 )
	MisBeginTalk("<t>很好，我们终于找到了失踪多年的火种了，真是太好了。可是光有火种还没办法铸造新的火炬，我还需要一些其他的原材料，你能帮我去收集回来吗？")
	MisBeginCondition(NoMission, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(HasItem, 5802, 1)
	MisBeginCondition(HasItem, 5841, 1)
	
	MisBeginAction(AddMission, 1307)
	MisCancelAction(ClearMission, 1307)
	MisBeginAction(TakeItem, 5841, 1, 4)
	
	MisNeed( MIS_NEED_DESP, "收集15个落叶小松原木和10个水晶矿石，再带着<r火种>去找冰狼铁匠暴冰(1344,529)")
	
	MisBeginAction( AddTrigger, 13071, TE_GETITEM, 3989, 15)
	MisBeginAction( AddTrigger, 13072, TE_GETITEM, 4546, 10)
	
	MisNeed( MIS_NEED_ITEM, 3989, 15, 10, 15)
	MisNeed( MIS_NEED_ITEM, 4546, 10, 20, 10)
	
	MisResultTalk( "<t>快把我要的东西给我看看")
	MisHelpTalk( "<t>我只要15个落叶小松原木和10个水晶矿石，有那么难吗？")
	MisResultCondition( HasMission, 1307)
	MisResultCondition( HasRecord, 1306)
	MisResultCondition( HasItem, 3989, 15)
	MisResultCondition( HasItem, 4546, 10)
	MisResultCondition( HasItem, 5802, 1)


	MisResultAction( TakeItem, 3989, 15)
	MisResultAction( TakeItem, 4546, 10)
	MisResultAction( TakeItem, 5802, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( ClearMission, 1307)
	MisResultAction( ClearRecord, 1306)
	MisResultAction( SetRecord, 1307)
	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3989)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 15)
	RegCurTrigger( 13071 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4546)	
	TriggerAction( 1, AddNextFlag, 1307, 20, 10)
	RegCurTrigger( 13072 )
	
	----------------------------------奥运活动 之 铁匠的要求------------  铁匠暴冰
	DefineMission( 6252, "重铸圣火火炬",1308 )
	MisBeginTalk("<t>哦材料是够了，可是我年纪大了，又渴又饿。能帮我搞10个沙枣和10个麦芽酥吗？吃饱喝足了我才有力气干活")
	MisBeginCondition(NoMission, 1308)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(HasRecord, 1307)
	
	MisBeginAction(AddMission, 1308)
	MisCancelAction(ClearMission, 1308)
	
	
	MisNeed( MIS_NEED_DESP, "冰狼堡的铁匠<r暴冰(1344,529)>要求你收集<r10个沙枣>和<r10个麦芽酥>回来交给冰狼铁匠暴冰(1344,529)")
	
	MisBeginAction( AddTrigger, 13081, TE_GETITEM, 3117, 10)
	MisBeginAction( AddTrigger, 13082, TE_GETITEM, 3136, 10)
	
	MisNeed( MIS_NEED_ITEM, 3117, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 3136, 10, 20, 10)
	
	MisResultTalk( "<t>有你的帮助真是太好了")
	MisHelpTalk( "<t>这么点小事你都搞不定吗？")
	MisResultCondition( HasMission, 1308)
	MisResultCondition( HasRecord, 1307)
	MisResultCondition( HasItem, 3117, 10)
	MisResultCondition( HasItem, 3136, 10)

	MisResultBagNeed(1)
	MisResultAction( TakeItem, 3117, 10)
	MisResultAction( TakeItem, 3136, 10)
	MisResultAction(GiveItem, 5842, 1, 4)       
	MisResultAction( ClearMission, 1308)
	MisResultAction( ClearRecord, 1307)
	MisResultAction( SetRecord, 1308)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 1308, 10, 10)
	RegCurTrigger( 13081 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3136)	
	TriggerAction( 1, AddNextFlag, 1308, 20, 10)
	RegCurTrigger( 13082 )
	
----------------------------------奥运活动 之 点燃圣火------------铁匠暴冰（开始）
	DefineMission( 6253, "点燃圣火",1309 )
	MisBeginTalk( "<t>火炬已经完成啦！赶快带着火炬去找圣火传递大使吧，我想他现在应该还没离开沙岚城(871,3580)，记得把火炬放在背包内！")
	MisBeginCondition(NoRecord, 1309 )
	MisBeginCondition(NoMission, 1309 )
	MisBeginCondition(HasRecord, 1308 )
	MisBeginAction(AddMission, 1309 )
	MisCancelAction(ClearMission, 1309)
		
	MisNeed(MIS_NEED_DESP, "把火炬带给沙岚城圣火传递大使(871,3580)")
	MisHelpTalk("<t>趁他还没离开沙岚城赶紧把火炬带给他！圣火传递大使就在沙岚城(871,3580)")
	MisResultCondition( AlwaysFailure )
	
----------------------------------奥运活动 之 点燃圣火------------圣火传递大使（结束）
	DefineMission( 6254, "点燃圣火",1309, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>你终于回来了，还带回了火炬，太好了！")
	MisResultCondition( HasMission, 1309)
	MisResultCondition( NoRecord, 1309)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1309)
	MisResultAction( SetRecord, 1309)
	MisResultAction( AddMoney , 5000)

----------------------------------奥运活动 之 仁爱之心------------圣火传递大使	（开始）
	DefineMission( 6255, "仁爱之心",1310 )
	MisBeginTalk( "<t>想要点燃圣火台是需要具备崇高的品质，我需要你完成一系列考验来证明你自己，首先让我看看你是否具备了一颗仁爱之心！只有把火炬放在背包内才可以领取和完成考验！")
	MisBeginCondition(NoRecord, 1310 )
	MisBeginCondition(NoMission, 1310 )
	MisBeginCondition(HasRecord, 1309 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1310)
	MisCancelAction(ClearMission, 1310)
	
	MisNeed(MIS_NEED_DESP, "先去加纳大陆与路人·巴比(994,1234)聊一下吧")
	MisHelpTalk("<t>你还不赶紧去找路人·巴比(994,1234)")
	MisResultCondition( AlwaysFailure )
----------------------------------奥运活动 之 仁爱之心------------路人·巴比	（结束）
	DefineMission( 6256, "仁爱之心",1310, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>总算有人想到我了，我一个人在这很久啦！")
	MisResultCondition( HasMission, 1310)
	MisResultCondition( NoRecord, 1310)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1310)
	MisResultAction( SetRecord, 1310)
	MisResultAction( AddMoney , 5000)
----------------------------------奥运活动 之 仁爱之心2------------路人·巴比	（开始）
	DefineMission( 6257, "仁爱之心二",1311 )
	MisBeginTalk( "<t>在海盗王的世界中还有许多需要我们关心的人，希望你能够去探望他们一下")
	MisBeginCondition(NoRecord, 1311 )
	MisBeginCondition(NoMission, 1311 )
	MisBeginCondition(HasRecord, 1310 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1311)
	MisCancelAction(ClearMission, 1311)
	
	MisNeed(MIS_NEED_DESP, "快去魔女之海去找人鱼王子·哈沙特(1254,3491)聊一下吧")
	MisHelpTalk("<t>谢谢你来看我，赶快去魔女之海找人鱼王子·哈沙特(1254,3491)")
	MisResultCondition( AlwaysFailure )
----------------------------------奥运活动 之 仁爱之心2------------人鱼王子·哈沙特	（结束）
    DefineMission( 6258, "仁爱之心二",1311, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>你好，陌生人，这里已经很久没有人经过了！")
	MisResultCondition( HasMission, 1311)
	MisResultCondition( NoRecord, 1311)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1311)
	MisResultAction( SetRecord, 1311)
	MisResultAction( AddMoney , 5000)
----------------------------------奥运活动 之 仁爱之心3------------人鱼王子·哈沙特	（开始）
    DefineMission( 6259, "仁爱之心三",1312 )
	MisBeginTalk( "<t>哈哈哈！！！记得以前我经过深蓝群岛的时候遇见过一个孤独海港指挥")
	MisBeginCondition(NoRecord, 1312 )
	MisBeginCondition(NoMission, 1312)
	MisBeginCondition(HasRecord, 1311 )
	MisBeginCondition( HasItem, 5842, 1)
   	MisBeginAction(AddMission, 1312)
	MisCancelAction(ClearMission, 1312)
	
	MisNeed(MIS_NEED_DESP, "去萨迪勒补给站找乔尔乔尼(194,1715)聊一下吧")
	MisHelpTalk("<t>呵呵陌生人，赶快去找深蓝群岛找乔尔乔尼(194,1715)")
	MisResultCondition( AlwaysFailure )
----------------------------------奥运活动 之 仁爱之心3------------海港指挥·乔尔乔尼	（结束）
	DefineMission( 6260, "仁爱之心三",1312, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>哇！！！！您是来看我的嘛？")
	MisResultCondition( HasMission, 1312)
	MisResultCondition( NoRecord, 1312)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1312)
	MisResultAction( SetRecord, 1312)
	MisResultAction( AddMoney , 5000)
----------------------------------奥运活动 之 仁爱之心4------------海港指挥·乔尔乔尼	（开始）
	DefineMission( 6261, "仁爱之心四",1313 )
	MisBeginTalk( "<t>在春风镇有一个叫比盖的中年男人，整天嘀咕不停，可能需要人帮忙哦")
	MisBeginCondition(NoRecord, 1313 )
	MisBeginCondition(NoMission, 1313)
	MisBeginCondition(HasRecord, 1312 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1313)
	MisCancelAction(ClearMission, 1313)
	
	MisNeed(MIS_NEED_DESP, "去春风镇找中年男子·比盖(3235,2550)关心下吧！")
	MisHelpTalk("<t>你怎么还在这，快去去春风镇找中年男子·比盖(3235,2550)吧！")
	MisResultCondition( AlwaysFailure )
----------------------------------奥运活动 之 仁爱之心4------------中年男子·比盖	 （结束）
	DefineMission( 6262, "仁爱之心四",1313, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>有人还想到我真的太好了，好想有个伴哦")
	MisResultCondition( HasMission, 1313)
	MisResultCondition( NoRecord, 1313)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1313)
	MisResultAction( SetRecord, 1313)
	MisResultAction( AddMoney , 5000)
----------------------------------奥运活动 之 仁爱之心5------------中年男子·比盖	 （开始）
	DefineMission( 6263, "仁爱之心五",1314 )
	MisBeginTalk( "<t>呵呵，其实我了解了，如果你想证明自己有一颗仁爱之心，你还是得找到地狱传送使")
	MisBeginCondition(NoRecord, 1314 )
	MisBeginCondition(NoMission, 1314)
	MisBeginCondition(HasRecord, 1313 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1314)
	MisCancelAction(ClearMission, 1314)
	
	MisNeed(MIS_NEED_DESP, "快去加勒比找地狱传送使(690,1043)吧！")
	MisHelpTalk("<t>抓紧时间吧孩子，快去找加勒比的地狱传送使(690,1043)！")
	MisResultCondition( AlwaysFailure )
----------------------------------奥运活动 之 仁爱之心5------------地狱传送使	 （结束）
	
	DefineMission( 6264, "仁爱之心五",1314, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>哈哈，每天在这里见过无数勇士去冒险，今天总算遇见了有爱心的人。")
	MisResultCondition( HasMission, 1314)
	MisResultCondition( NoRecord, 1314)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1314)
	MisResultAction( SetRecord, 1314)
	MisResultAction( AddMoney , 5000)
----------------------------------奥运活动 之 仁爱之心6-----------地狱传送使	 （开始）
	DefineMission( 6265, "仁爱之心终",1315 )
	MisBeginTalk( "<t>看来你已经完全证明了你的爱心，不过光有仁爱之心还是不够的，快回到圣火传递大使那里，也许他会给你进一步的启发！")
	MisBeginCondition(NoRecord, 1315 )
	MisBeginCondition(NoMission, 1315)
	MisBeginCondition(HasRecord, 1314 )
	MisBeginCondition( HasItem, 5842, 1)
    	MisBeginAction(AddMission, 1315)
	MisCancelAction(ClearMission, 1315)
	
	MisNeed(MIS_NEED_DESP, "快回到圣火传递大使(871,3580)那里，看看他能给你什么启发吧！")
	MisHelpTalk("<t>圣火传递大使就在(871,3580)那里，加快你的步伐，赶紧动身吧！")
	MisResultCondition( AlwaysFailure )

----------------------------------奥运活动 之 仁爱之心6------------圣火传递大使	 （结束）
	
	DefineMission( 6266, "仁爱之心终",1315, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>不论游戏还是生活，希望你能善待自己，关爱他人，认真每一天！还有更多的考验在等着你，希望你能坚持到底！")
	MisResultCondition( HasMission, 1315)
	MisResultCondition( NoRecord, 1315)
	MisResultCondition( HasItem, 5842, 1)
	--MisResultCondition( ItemAttrNum, 5825, 6, 10000, 0)
	MisResultBagNeed(1)
	MisResultAction( ClearMission, 1315)
	MisResultAction( SetRecord, 1315)

	MisResultAction( GiveItem, 5797 , 1 , 4)
	MisResultAction( AddMoney , 5000)

	
	----------------------------------奥运活动  之 无谓之心------------圣火传递大使	 （开始）
	DefineMission( 6267, "新的考验",1316 )
	MisBeginTalk( "<t>证明你自己，让我看看你到底有多勇敢！")
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoMission, 1316)
	MisBeginCondition(HasRecord, 1315 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1316)
	MisCancelAction(ClearMission, 1316)
	
	MisNeed(MIS_NEED_DESP, "与冰狼堡的乱斗管理员(1374,529)谈谈，她会告诉你怎样完成这次的考验！")
	MisHelpTalk("<t>你还是先去找冰狼堡的乱斗管理员(1374,529)吧，完成了考验再回来找我。")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------奥运活动 之 无谓之心------------乱斗管理员	 （结束）	
	DefineMission( 6268, "新的考验",1316, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>如果我猜的没错的话，你也是圣火传递大使推荐来的吧！那我们就开始吧")
	MisResultCondition( HasMission, 1316)
	MisResultCondition( NoRecord, 1316)
	MisResultCondition( HasItem, 5842, 1)	
	MisResultAction( ClearMission, 1316)
	MisResultAction( ClearRecord, 1315)
	MisResultAction( SetRecord, 1316)
	MisResultAction( AddMoney , 5000)
	
	----------------------------------奥运活动  之 无谓之心一------------乱斗管理员	 （开始）
	DefineMission( 6269, "无畏之心一",1317 )
	MisBeginTalk( "<t>这次的要考验的就是看看你是否足够勇敢。我会给你一本无畏之证，它会记录你的战斗信息，你要做的就是成功杀敌10次,然后带着无畏之证去见圣火传递大使（871，3580）。准备好了么？")
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoMission, 1317)
	MisBeginCondition(HasRecord, 1316 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1317)
	
	MisBeginAction(GiveItem, 5803, 1 ,41)
	MisCancelAction(SysteamNotice, "该任务无法中断")
	MisResultCondition( AlwaysFailure )
	MisNeed(MIS_NEED_DESP, "当无畏之证上的杀人数累计到10后，去沙岚城找圣火传递大使（871，3580）完成任务")
	MisHelpTalk("<t>只有当无畏之证上的杀人数满10时才能完成任务哦，另外你还必须带着火炬")
	MisBeginBagNeed(1)
	
	---------------------------------奥运活动 之 无谓之心一------------圣火传递大使	 （结束）
	DefineMission( 6270, "无畏之心一",1317)
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>不错不错！没想到你那么快就能完成考验，真是太好了！继续下个考验吧")	
	
	MisResultCondition(HasMission, 1317)
	MisResultCondition(HasRecord, 1316)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(CheckPoint, 5803)

	MisResultBagNeed(2)
	MisResultAction(TakeItem, 5803, 1)
	MisResultAction(ClearMission, 1317) 
	MisResultAction(ClearRecord, 1316)
	MisResultAction(GiveItem, 5798, 1, 4)
	MisResultAction(GiveItem, 3096, 2, 4)
	MisResultAction(ClearRecord, 1316)
	MisResultAction(SetRecord, 1317) 
	MisResultAction( AddMoney , 5000)
	MisResultBagNeed(1)
	
	---------------------------------奥运活动 之 奉献之心------------圣火传递大使	 （开始）
	DefineMission( 6271, "奉献之心",1318 )
	MisBeginTalk( "<t>世界上最伟大的就是无私的奉献....")
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoMission, 1318)
	MisBeginCondition(HasRecord, 1317 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1318)
	MisCancelAction(ClearMission, 1318)
	MisNeed(MIS_NEED_DESP, "与银矿二层的矿工大肚腩（296,57）谈谈，他会告诉你怎样完成这次的考验！")
	MisHelpTalk("<t>你还是先去找银矿二层的矿工大肚腩（296,57）吧，完成了考验再回来找我。")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------奥运活动 之 奉献之心------------矿工大肚腩	 （结束）
	DefineMission( 6272, "奉献之心",1318, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>你怎么那么晚才来，月亮都快下山了...")	
	MisResultCondition(HasMission, 1318)
	MisResultCondition(HasRecord, 1317)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1318)
	MisResultAction(ClearRecord, 1317)
	MisResultAction(SetRecord, 1318) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------奥运活动 之 奉献之心一------------矿工大肚腩	
	DefineMission( 6273, "奉献之心一",1319 )
	MisBeginTalk( "<t>这次的考验是要你为圣火传递活动捐献点物资，你可别想拿不值钱的东西来蒙混过关！我需要5个神圣的精灵辉印！")
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoMission, 1319)
	MisBeginCondition(HasRecord, 1318 )	
	MisBeginAction(AddMission, 1319)
	MisCancelAction(ClearMission, 1319)

	MisNeed(MIS_NEED_DESP, "矿工大肚腩（296,57）要求你捐献5个精灵辉印给他")	
	MisHelpTalk("<t>你看我们每天那么辛苦的工作都是为了迎接圣火传递活动，你也应该资助我们一些东西吧，我们只是想要5个精灵辉印而已！")
	
	MisResultTalk("<t>太好了，我们最喜欢精灵辉印了，太谢谢你了，我会把你的表现告诉圣火传递大使的！")	
	
	MisResultCondition(HasMission, 1319)
	MisResultCondition(HasRecord, 1318)
	MisResultCondition(HasItem, 2588, 5)
	
	MisResultAction(ClearMission, 1319)	
	MisResultAction(TakeItem, 2588,5)
	MisResultAction(ClearRecord, 1318)
	MisResultAction(SetRecord, 1319) 
	MisResultAction( AddMoney , 5000)


	---------------------------------奥运活动 之 奉献之心二------------矿工大肚腩	 （开始）
	DefineMission( 6274, "奉献之心二",1320 )
	MisBeginTalk( "<t>赶紧回去找圣火传递大使吧，你的表现他已经知道了，他很期待和你再次见面！")
	MisBeginCondition(NoRecord, 1320)
	MisBeginCondition(NoMission, 1320)
	MisBeginCondition(HasRecord, 1319 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1320)
	MisCancelAction(ClearMission, 1320)
	MisNeed(MIS_NEED_DESP, "去和沙岚城的圣火传递大使(871,3580)聊聊吧，他对你的表现非常满意")
	MisHelpTalk("<t>圣火传递大使就在沙岚城的(871,3580)")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------奥运活动 之 奉献之心二------------圣火传递大使	 （结束）
	DefineMission( 6275, "奉献之心二",1320, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>我们又见面了，你的表现我已经听说了，我很高兴你能有如此珍贵的奉献精神，希望你能再接再厉好好表现！")	
	MisResultCondition(HasMission, 1320)
	MisResultCondition(HasRecord, 1319)	
	MisResultCondition(HasItem, 5842, 1)

	MisResultBagNeed(1)
	MisResultAction(ClearMission, 1320)
	MisResultAction(ClearRecord, 1319)
	MisResultAction(SetRecord, 1320) 
	MisResultAction(GiveItem, 5800,1,4)
	MisResultAction( AddMoney , 5000)

	
	---------------------------------奥运活动 之 智慧之心-----------圣火传递大使 （开始）
	DefineMission( 6276, "智慧之心",1321 )
	MisBeginTalk( "<t>在海盗王的世界中有一位具有非凡智慧的智者，她就是隐居在天堂(1755,908)的女神，我曾经和她提到过你，她也很想和你见面。快去吧，不是每个人都有机会和女神见面的")
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoMission, 1321)
	MisBeginCondition(HasRecord, 1320)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1321)
	MisCancelAction(ClearMission, 1321)
	MisNeed(MIS_NEED_DESP, "去天堂(1755,908)找女神聊聊吧，她非常想见你")
	MisHelpTalk("<t>女神就在天堂(1755,908)处，赶快出发吧")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------奥运活动 之 智慧之心------------女神	 （结束）
	DefineMission( 6277, "智慧之心",1321, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>你就是大使提到的那个年轻人？很高兴和你见面...")	
	MisResultCondition(HasMission, 1321)
	MisResultCondition(HasRecord, 1320)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1321)
	MisResultAction(ClearRecord, 1320)
	MisResultAction(SetRecord, 1321) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------奥运活动 之 智慧之心一------------女神	 （开始）
	DefineMission( 6278, "智慧之心一",1322 )
	MisBeginTalk( "<t>圣火传递大使拜托我来负责你这次的考验，你可要做好准备哦！我需要你帮我带些东西回来...一个<传说可以用来治疗难以愈合的伤口有很好的效果>的物品和一个<拳击迷们的必备品>的物品。连这都想不到的话只能说明你比酒鬼还笨呢")
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoMission, 1322)
	MisBeginCondition(HasRecord, 1321)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1322)
	MisCancelAction(ClearMission, 1322)
	
	MisHelpTalk("<t>女神(1755,908)需要一个<r传说可以用来治疗难以愈合的伤口有很好的效果>的物品和一个<r拳击迷们的必备品>的物品，还没想到到底是什么东西吗？难道你比酒鬼还笨吗？")
	MisNeed(MIS_NEED_DESP, "女神需要一个<r传说可以用来治疗难以愈合的伤口有很好的效果>的物品和一个<r拳击迷们的必备品>的物品，")
	MisBeginAction(AddTrigger, 13221, TE_GETITEM, 4435, 1)          
	MisBeginAction(AddTrigger, 13222, TE_GETITEM, 4468, 1)	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4435)	
	TriggerAction( 1, AddNextFlag, 1322, 10, 1)
	RegCurTrigger( 13221 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4468)	
	TriggerAction( 1, AddNextFlag, 1322, 20, 1)
	RegCurTrigger( 13222 )
	
	MisResultTalk("<t>果然聪明！难怪大使那么看好你...不要得意哦，我还需要你回答一些关于智慧之心的问题，只有你完全回答正确才算完成考验！")

	MisResultCondition(HasMission, 1322)
	MisResultCondition(NoRecord, 1322)
	MisResultCondition(HasRecord, 1321)
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(HasItem, 4435, 1)
	MisResultCondition(HasItem, 4468, 1)
	MisResultAction(TakeItem, 4435, 1)
	MisResultAction(TakeItem, 4468, 1)	
	MisResultAction(ClearMission, 1322)
	MisResultAction( AddMoney , 5000)
	MisResultAction(ClearRecord, 1321)
	MisResultAction(SetRecord, 1322)  ----在NPC对话处会用到此record  用来触发接下去的对话
	
	
	---------------------------------奥运活动 之 圣火台------------圣火传递大使	 （开始）
	DefineMission( 6279, "圣火台",1323 )	
	MisBeginTalk( "<t>你已经完成前面4项考验了，我这里还有一颗坚定之心，他只属于能够坚持完成前面4项考验的人，拿去吧，年轻人！带着五心和火炬找到圣火台把火炬点燃吧！圣火台应该就在沙岚港口附近")
	
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1322)
	
	MisBeginCondition(HasItem, 5801, 1)
	MisBeginCondition(NoMission, 1323)
	MisBeginAction(AddMission, 1323)		
	MisBeginAction(GiveItem, 5799, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "该任务无法中断")
	MisNeed(MIS_NEED_DESP, "带着5心和火炬找到圣火台") 
	MisHelpTalk("<t>千万不能弄丢任何一课心以及火炬，否则就会功亏一篑了")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------奥运活动 之 圣火台------------圣火台	 （结束）
	DefineMission( 6280, "圣火台",1323, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>恭喜你！你已经成功通过了五心考验！")	
	MisResultCondition(HasMission, 1323)		
	MisResultCondition(HasItem, 5842, 1)   --玩家老火炬
	MisResultCondition(HasItem, 5797, 1)   --仁爱之心 
	MisResultCondition(HasItem, 5798, 1)   --无畏之心
	MisResultCondition(HasItem, 5799, 1)   --坚定之心
	MisResultCondition(HasItem, 5800, 1)   --奉献之心
	MisResultCondition(HasItem, 5801, 1)   --智慧之心
	
	
	MisResultAction(ClearMission, 1323)	
	MisResultAction(SetRecord, 1324)
	MisResultAction(ClearRecord, 1323)	
	MisResultAction( AddMoney , 5000)
	
	
	