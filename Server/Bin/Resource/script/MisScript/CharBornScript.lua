------------------------------------------------------------
--TemplateSdk.lua Created by knight 2005.1.27.
--
--任务系统脚本模板函数
print( "loading charbornscript.lua" )
------------------------------------------------------------


function PCBorn ()
	--填写角色出生时初始化触发器信息


	InitTrigger()
	TriggerCondition( 1, IsSpawnPos, "Argent City" )
	TriggerAction( 1, ObligeAcceptMission, 1 )
	TriggerCondition( 2, IsSpawnPos, "Shaitan City" )
	TriggerAction( 2, ObligeAcceptMission, 2 )
	TriggerCondition( 3, IsSpawnPos, "Icicle Castle" )
	TriggerAction( 3, ObligeAcceptMission, 3 )
	local triggerlist = GetMultiTrigger()
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"你好，欢迎来到海盗王的世界，现介绍一下我们的操作方式吧，单击“鼠标左键”行走、在城外对怪物单击“鼠标左键”可以进行战斗，按住“鼠标左键”不放可以持续行走。在城里跟NPC聊天对话也是用“鼠标左键”来确认的。单击“鼠标右键”点玩家可以“组队、交友、交易、密聊”等等，按住“鼠标右键”水平旋转游戏视角。滑动“鼠标滚轮”可以推进拉远视角，双击“鼠标右键”则回到默认的视角。" )
	TriggerAction( 1, AddTrigger, 60000, TE_LEVELUP, 2, 1 )
	TriggerAction( 1, AddTrigger, 60001, TE_LEVELUP, 5, 1 )
	TriggerAction( 1, AddTrigger, 60002, TE_LEVELUP, 9, 1 )
	TriggerAction( 1, AddTrigger, 60003, TE_LEVELUP, 10, 1 )
	TriggerAction( 1, AddTrigger, 60004, TE_LEVELUP, 45, 1 )
	TriggerAction( 1, MultiTrigger, triggerlist, 3 )
	TriggerAction( 1, SaveMissionData )

	--将该触发器注册到ID为88888的全局触发器表中，该ID触发器默认为角色出生触发器
	RegTrigger( 88888, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    恭喜你，现在要提醒你使用雷达功能，它的_使用方法很简单：点击小地图上的雷达按钮打开_雷达界面；选择正确的大陆并输入相应的坐标；_确定后就会得到相应的指示。" )
	RegTrigger( 60000, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    真正的战斗就要开始了，先了解一下相关的_基本功能：按“insert”键可以坐下或站起，坐_下状态可以加快HP恢复；被你杀死的怪物会掉落_物品，这些物品有30秒的道具保护时间；按_“ctrl+a”键可以快速的捡起周围掉落的物品；_按“alt+鼠标左键”点击玩家可以跟随该玩家。" )
	RegTrigger( 60001, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    相信你已经了解基本的战斗方式了，现在可_以去转职了。新手指导会向你推荐各职业的转职_负责人。去新手指导那里，选择合适你的发展方_向吧。找到转职负责人后，他会负责对你进行考_验；如果通过了考验，到10级时你就可以转职了。" )
	RegTrigger( 60002, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    恭喜你10级了，你现在获得了一点技能点，以后每升一级将获得一点技能点，另外转完职后可以学习技能了，在城市里有杂货商人，他们出售不同的技能书。祝你好运！" )
	RegTrigger( 60003, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    恭喜你45级了，你现在可以去找白银城的糊涂山人接受勇者试炼了！" )
	RegTrigger( 60004, 1 )

end
PCBorn()

