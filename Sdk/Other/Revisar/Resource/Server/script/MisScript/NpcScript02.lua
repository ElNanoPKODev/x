------------------------------------------------------------
-- NPCScript02.lua Created by BT 2004.12.29.
--
-- L.38 -> Line 38
------------------------------------------------------------
-- L.20   [ 杀怪任务：白银武将的请托 ]
-- L.289  [ RandMapList ] L.245 [ 白银 ] L.362 [ 沙岚 ] L.422 [ 雷霆 ] L.482 [ 冰狼 ] L.542 [ 岛屿 ] L.612 [ 通用 ]
-- L.682  [ 小山车的妻子 ]
--
--
--
--
--
--
--
--
--
--
------------------------------------------------------------
-- 杀怪任务：白银武将的请托
------------------------------------------------------------

print( "loading NPCScript02.lua" )


------------------------------------------------------------
-- 通用传送脚本
------------------------------------------------------------

function GoToWhere()

	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "我再考虑考虑..."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 2

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--雷霆堡坐标
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	--卡尔加德坐标
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--赖安森林坐标
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--岛屿3号坐标
	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	--岛屿8号坐标
	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	--岛屿2号坐标
	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	--岛屿5号坐标
	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

	Talk( 1, "卓娅：你好，我是白银传送使者，你想去哪里呢？" )
	Text( 1, "我要去沙岚城！", JumpPage, 5 )
	--Text( 1, "我要去雷霆堡！", JumpPage, 6 )
	Text( 1, "我要去冰狼堡！", JumpPage, 7 )
	Text( 1, "我要记录重生点", JumpPage, 24 )
	--Text( 1, "我去东部废矿！", JumpPage, 8 )
	--Text( 1, "我要去岛屿逛！", JumpPage, 3 )

	Talk( 2, "下次如果需要传送服务记得找我啊～", CloseTalk )

--	Talk( 3, "请问想去哪个岛屿逛逛呢？" )
--	Text( 3, "岛屿一号", JumpPage, 9 )
--	Text( 3, "岛屿二号", JumpPage, 10 )
--	Text( 3, "岛屿三号", JumpPage, 11 )
--	Text( 3, "岛屿四号", JumpPage, 12 )
--	Text( 3, "岛屿五号", JumpPage, 13 )
--	Text( 3, "随便去一个吧", JumpPage, 14 )

	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 4, "传送到白银城是吧，没问题！请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 4, "开始传送",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 5, "我喜欢沙岚之城这个地方！请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 5, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 6, "传送到雷霆堡是吧，没问题！请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 6, "开始传送",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 7, "传送到冰狼堡是吧？请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 7, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 8, "传送到卡尔加德补给站是吧？请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 8, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 9, "传送到赖安森林补给站是吧？请支付500G现金，谢谢！对于10级以下的新手免费！" )
	Text( 9, "开始传送",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )

--	Talk( 10, "听说那些岛屿蛮漂亮的，旅途愉快～" )
--	Text( 10, "开始传送，暂时免费", GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	Text( 10, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 11, "听说那些岛屿蛮漂亮的，旅途愉快～" )
--	Text( 11, "开始传送，暂时免费", GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	Text( 11, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 12, "听说那些岛屿蛮漂亮的，旅途愉快～" )
--	Text( 12, "开始传送，暂时免费", GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	Text( 12, CancelSelectTalk, JumpPage , CancelSelectPage )
----
--	Talk( 13, "听说那些岛屿蛮漂亮的，旅途愉快～" )
--	Text( 13, "开始传送，暂时免费", GoTo, GoTo10X, GoTo10Y, GoTo10M )
--	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	InitFuncList()
--
--	AddFuncList( GoTo, GoTo06X, GoTo06Y, GoTo06M )
--	AddFuncList( GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	AddFuncList( GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	AddFuncList( GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	AddFuncList( GoTo, GoTo10X, GoTo10Y, GoTo10M )
--
--	Talk( 14, "随便去一个岛屿吗？我可不知道送了你去哪里哦～" )
--	Text( 14, "开始传送，暂时免费", RandFunction, GetFuncList(), GetNumFunc() )
--	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
--

	Talk( 18, "美斯：你好，我是沙岚城传送使者，你想去哪里呢？" )
	Text( 18, "我要去白银城！", JumpPage, 4 )
	--Text( 18, "我要去雷霆堡！", JumpPage, 6 )
	Text( 18, "我要去冰狼堡！", JumpPage, 7 )
	Text( 18, "我要记录重生点", JumpPage, 25 )
	--Text( 18, "我去东部废矿！", JumpPage, 8 )
	--Text( 18, "我要去岛屿逛！", JumpPage, 3 )

	Talk( 19, "沙莉：您好，我是雷霆堡传送使者，你想去哪里呢？" )
	Text( 19, "我要去白银城！", JumpPage, 4 )
	Text( 19, "我要去沙岚城！", JumpPage, 5 )
	Text( 19, "我要去冰狼堡！", JumpPage, 7 )
	Text( 19, "我要记录重生点", JumpPage, 26 )

	Talk( 20, "海莉：你好，我是冰狼堡传送使者，你想去哪里呢？" )
	Text( 20, "我要去白银城！", JumpPage, 4 )
	Text( 20, "我要去沙岚城！", JumpPage, 5 )
	Text( 20, "我要记录重生点", JumpPage, 27 )


	--Talk( 21, "玛卡珊：你好，我是卡尔加德传送使者，你想去哪里呢？" )
	--Text( 21, "我要去白银城！", JumpPage, 4 )
	--Text( 21, "我要去沙岚城！", JumpPage, 5 )
	--Text( 21, "我要去冰狼堡！", JumpPage, 7 )
	--Text( 21, "我要记录重生点", JumpPage, 31 )

	--Talk( 22, "温蒂：你好，我是赖安森林传送使者，你想去哪里呢？" )
	--Text( 22, "我要去白银城！", JumpPage, 4 )
	--Text( 22, "我要去沙岚城！", JumpPage, 5 )
	--Text( 22, "我要去冰狼堡！", JumpPage, 7 )
	--Text( 22, "我要记录重生点", JumpPage, 32 )

	Talk( 23, "对不起，您的现金不足，无法传送。" )

	Talk( 24, "卓娅：要记录在白银城？对么？" )
	Text( 24, "是的，请记录吧", SetSpawnPos, "白银城" )
	Text( 24, "不，不用了",CloseTalk )

	Talk( 25, "美丝：要记录在沙岚城？对么？" )
	Text( 25, "是的，请记录吧", SetSpawnPos, "沙岚城" )
	Text( 25, "不，不用了",CloseTalk )

	Talk( 26, "沙莉：要记录在雷霆堡？对么？" )
	Text( 26, "是的，请记录吧", SetSpawnPos, "雷霆堡" )
	Text( 26, "不，不用了",CloseTalk )

	Talk( 27, "海莉：要记录在冰狼堡？对么？" )
	Text( 27, "是的，请记录吧", SetSpawnPos, "冰狼堡" )
	Text( 27, "不，不用了",CloseTalk )

	Talk( 28, "竞技管理员：你好，我是PK岛竞技管理员，你想去哪里呢？" )
	Text( 28, "我要回城！", JumpPage, 29 )
	Text( 28, "不，不用了",CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	--TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction( 1, MoveCity, "" )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 29, "你想回城是吧，对于懦弱的逃跑者将予以扣除2000G的处罚，你还是坚持要走么？！" )
	Text( 29, "是的，我支付2000G现金让我走吧",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, "不，我不走了" )

	Talk( 30, "想逃跑还没有现金？对不起，如果你不支付2000G费用的话，你只有在这里战斗到最后了。" )

	Talk( 31, "玛卡珊：要记录在卡尔加德补给站？对么？" )
	Text( 31, "是的，请记录吧", SetSpawnPos, "卡尔加德补给站" )
	Text( 31, "不，不用了",CloseTalk )

	Talk( 32, "温蒂：要记录在赖安森林补给站？对么？" )
	Text( 32, "是的，请记录吧", SetSpawnPos, "赖安森林补给站" )
	Text( 32, "不，不用了",CloseTalk )



	InitTrigger()

	TriggerCondition( 1, IsMapNpc, "garner", 0 )
	TriggerAction( 1, JumpPage, 1 )

	TriggerCondition( 2, IsMapNpc, "magicsea", 0 )
	TriggerAction( 2, JumpPage, 18 )

	TriggerCondition( 3, IsMapNpc, "garner", 43 )
	TriggerAction( 3, JumpPage, 19 )

	TriggerCondition( 4, IsMapNpc, "darkblue", 12 )
	TriggerAction( 4, JumpPage, 20 )

	TriggerCondition( 5, IsMapNpc, "darkblue", 15 )
	TriggerAction( 5, JumpPage, 28 )

	--TriggerCondition( 6, IsMapNpc, "garner", 55 )
	--TriggerAction( 6, JumpPage, 21 )

	--TriggerCondition( 7, IsMapNpc, "garner", 56 )
	--TriggerAction( 7, JumpPage, 22 )

	--TriggerCondition( 9, IsMapNpc, "加纳大陆", 8 )
	--TriggerAction( 9, JumpPage, 22 )

	--TriggerCondition( 10, IsMapNpc, "加纳大陆", 9 )
	--TriggerAction( 10, JumpPage, 22 )

	--TriggerCondition( 11, IsMapNpc, "加纳大陆", 27 )
	--TriggerAction( 11, JumpPage, 21 )

	Start( GetMultiTrigger(), 5 )

end




------------------------------------------------------------
-- 补给站传送脚本
------------------------------------------------------------

function transmittal()

	--取消传送返回选择传送地点的对话内容和页面编号
	--local ReSelectTalk = "我再考虑考虑..."
	--local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 27

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--废矿补给站
	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1

	--古里咯利补给站
	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1

	--瓦尔诺补给站
	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1

	--温那补给站
	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1

	--卡尔加德坐标
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--赖安森林坐标
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--沙泉补给站
	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2

	--巴布补给站
	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2

	--冰都补给站
	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5

	--阿兰比斯补给站
	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5

	--骷髅营地补给站
	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5

	--冰极补给站
	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5

	Talk( 1, "梅亚：你好，我是传送使梅亚，请问有什么可以帮你的么？" )
	Text( 1, "我要去古里咯利补给站！", JumpPage, 14 )
	Text( 1, "我要记录重生点", JumpPage, 25 )		--废矿补给站
	
	Talk( 2, "腓力莫菲：你好，我是传送使腓力莫菲，请问有什么可以帮你的么？" )
	Text( 2, "我要去废矿补给站！", JumpPage, 13 )
	Text( 2, "我要去赖安森林补给站！", JumpPage, 18 )
	Text( 2, "我要记录重生点", JumpPage, 25 )		--古里咯利补给站

	Talk( 3, "温蒂：你好，我是传送使温蒂，请问有什么可以帮你的么？" )
	Text( 3, "我要去瓦尔诺补给站！", JumpPage, 15 )
	Text( 3, "我要去古里咯利补给站！", JumpPage, 14 )
	Text( 3, "我要记录重生点", JumpPage, 25 )		--赖安森林补给站

	Talk( 4, "伊沙贝：你好，我是传送使伊沙贝，请问有什么可以帮你的么？" )
	Text( 4, "我要去温拿补给站！", JumpPage, 16 )
	Text( 4, "我要去赖安森林补给站！", JumpPage, 18 )
	Text( 4, "我要记录重生点", JumpPage, 25 )		--瓦尔诺补给站

	Talk( 5, "海拉：你好，我是传送使海拉，请问有什么可以帮你的么？" )
	Text( 5, "我要去卡尔加德补给站！", JumpPage, 17 )
	Text( 5, "我要去瓦尔诺补给站！", JumpPage, 15 )
	Text( 5, "我要记录重生点", JumpPage, 25 )		--温拿补给站

	Talk( 6, "玛卡珊：你好，我是传送使玛卡珊，请问有什么可以帮你的么？" )
	Text( 6, "我要去温拿补给站！", JumpPage, 16 )
	Text( 6, "我要记录重生点", JumpPage, 25 )		--卡尔加德补给站

	Talk( 7, "艾曼：你好，我是传送使艾曼，请问有什么可以帮你的么？" )
	Text( 7, "我要去巴布补给站！", JumpPage, 20 )
	Text( 7, "我要记录重生点", JumpPage, 25 )		--沙泉补给站

	Talk( 8, "贝瑟芬尼：你好，我是传送使贝瑟芬尼，请问有什么可以帮你的么？" )
	Text( 8, "我要去沙泉补给站！", JumpPage, 19 )
	Text( 8, "我要记录重生点", JumpPage, 25 )		--巴布补给站

	Talk( 9, "百合：你好，我是传送使百合，请问有什么可以帮你的么？" )
	Text( 9, "我要去阿兰比斯补给站！", JumpPage, 22 )
	Text( 9, "我要记录重生点", JumpPage, 25 )		--冰都补给站

	Talk( 10, "索非亚：你好，我是传送使索非亚，请问有什么可以帮你的么？" )
	Text( 10, "我要去骷髅营地补给站！", JumpPage, 23 )
	Text( 10, "我要去冰都补给站！", JumpPage, 21 )
	Text( 10, "我要记录重生点", JumpPage, 25 )		--阿兰比斯补给站

	Talk( 11, "美奈：你好，我是传送使美奈，请问有什么可以帮你的么？" )
	Text( 11, "我要去冰极补给站！", JumpPage, 24 )
	Text( 11, "我要去阿兰比斯补给站！", JumpPage, 22 )
	Text( 11, "我要记录重生点", JumpPage, 25 )		--骷髅营地补给站

	Talk( 12, "阿尔提米斯：你好，我是传送使阿尔提米斯，请问有什么可以帮你的么？" )
	Text( 12, "我要去骷髅营地补给站！", JumpPage, 23 )
	Text( 12, "我要记录重生点", JumpPage, 25 )		--冰极补给站
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "传送到废矿补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 13, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "传送到古里咯利补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 14, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "传送到瓦尔诺补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 15, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "传送到温拿补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 16, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "传送到卡尔加德补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 17, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "传送到赖安森林补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 18, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "传送到沙泉补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 19, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "传送到巴布补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 20, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "传送到冰都补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 21, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 22, "传送到阿兰比斯补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 22, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 23, "传送到骷髅营地补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 23, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 24, "传送到冰极补给站是吧，没问题！请支付200G现金，谢谢！" )
	Text( 24, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, SetSpawnPos, "废矿补给站")
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, SetSpawnPos, "古里咯利补给站")
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, SetSpawnPos, "瓦尔诺补给站")
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, SetSpawnPos, "温拿补给站")
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, SetSpawnPos, "卡尔加德补给站")
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, SetSpawnPos, "赖安森林补给站")
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, SetSpawnPos, "沙泉补给站")
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, SetSpawnPos, "巴布补给站")
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, SetSpawnPos, "冰都补给站")
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, SetSpawnPos, "阿兰比斯补给站")
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, SetSpawnPos, "骷髅营地补给站")
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, SetSpawnPos, "冰极补给站")
	TriggerFailure( 12, JumpPage, 28 )
	Talk( 25, "要记录在这里么？" )
	Text( 25, "是的，请记录吧", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "不，不用了",CloseTalk )

	Talk( 26, "对不起，您的现金不足，无法传送。" )

	Talk( 27, "下次如果需要传送服务记得找我啊～", CloseTalk )

	Talk( 28, "出现错误，无法记录，Call Robin", CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, JumpPage, 4 )
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, JumpPage, 5 )
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, JumpPage, 6 )
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, JumpPage, 3 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, JumpPage, 7 )
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, JumpPage, 8 )
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, JumpPage, 9 )
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, JumpPage, 10 )
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, JumpPage, 11 )
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, JumpPage, 12 )
	Start( GetMultiTrigger(), 12 )

end



------------------------------------------------------------
-- 岛屿传送脚本
------------------------------------------------------------

function island()

	--取消传送返回选择传送地点的对话内容和页面编号
	--local ReSelectTalk = "我再考虑考虑..."
	--local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "算了，我哪里都不去了"
	local CancelSelectPage = 27

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--海风岛
	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1

	--碎冰岛
	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1

	--雪贼岛
	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1

	--冰雪岛
	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2

	--鸣沙岛
	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2

	--真爱岛
	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2

	--好运岛
	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5

	--白银城
	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1

	Talk( 1, "斯兰芙：你好，我是岛屿传送使白银，请问有什么可以帮你的么？" )
	Text( 1, "我要去海风岛！", JumpPage, 14 )
	Text( 1, "我要去碎冰岛！", JumpPage, 15 )
	Text( 1, "我要去雪贼岛！", JumpPage, 16 )
	Text( 1, "我要去冰雪岛！", JumpPage, 17 )
	Text( 1, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 1, "我要去真爱岛！", JumpPage, 19 )
	Text( 1, "我要去好运岛！", JumpPage, 20 )
	Text( 1, "我要记录重生点", JumpPage, 25 )		--白银城
	
	Talk( 2, "安波莉亚：你好，我是岛屿传送使安波莉亚，请问有什么可以帮你的么？" )
	Text( 2, "我要去白银城！", JumpPage, 21 )
	Text( 2, "我要去碎冰岛！", JumpPage, 15 )
	Text( 2, "我要去雪贼岛！", JumpPage, 16 )
	Text( 2, "我要去冰雪岛！", JumpPage, 17 )
	Text( 2, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 2, "我要去真爱岛！", JumpPage, 19 )
	Text( 2, "我要去好运岛！", JumpPage, 20 )
	Text( 2, "我要记录重生点", JumpPage, 25 )		--海风岛

	Talk( 3, "阿诗娜：你好，我是岛屿传送使阿诗娜，请问有什么可以帮你的么？" )
	Text( 3, "我要去白银城！", JumpPage, 21 )
	Text( 3, "我要去海风岛！", JumpPage, 14 )
	Text( 3, "我要去雪贼岛！", JumpPage, 16 )
	Text( 3, "我要去冰雪岛！", JumpPage, 17 )
	Text( 3, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 3, "我要去真爱岛！", JumpPage, 19 )
	Text( 3, "我要去好运岛！", JumpPage, 20 )
	Text( 3, "我要记录重生点", JumpPage, 25 )	--碎冰岛

	Talk( 4, "赛雯拉：你好，我是岛屿传送使赛雯拉，请问有什么可以帮你的么？" )
	Text( 4, "我要去白银城！", JumpPage, 21 )
	Text( 4, "我要去海风岛！", JumpPage, 14 )
	Text( 4, "我要去碎冰岛！", JumpPage, 15 )
	Text( 4, "我要去冰雪岛！", JumpPage, 17 )
	Text( 4, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 4, "我要去真爱岛！", JumpPage, 19 )
	Text( 4, "我要去好运岛！", JumpPage, 20 )
	Text( 4, "我要记录重生点", JumpPage, 25 )          ---雪贼岛

	Talk( 5, "朱丽：你好，我是岛屿传送使朱丽，请问有什么可以帮你的么？" )
	Text( 5, "我要去白银城！", JumpPage, 21 )
	Text( 5, "我要去海风岛！", JumpPage, 14 )
	Text( 5, "我要去碎冰岛！", JumpPage, 15 )
	Text( 5, "我要去雪贼岛！", JumpPage, 16 )
	Text( 5, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 5, "我要去真爱岛！", JumpPage, 19 )
	Text( 5, "我要去好运岛！", JumpPage, 20 )
	Text( 5, "我要记录重生点", JumpPage, 25 )          ---冰雪岛

	Talk( 6, "温丽：你好，我是岛屿传送使温丽，请问有什么可以帮你的么？" )
	Text( 6, "我要去白银城！", JumpPage, 21 )
	Text( 6, "我要去海风岛！", JumpPage, 14 )
	Text( 6, "我要去碎冰岛！", JumpPage, 15 )
	Text( 6, "我要去雪贼岛！", JumpPage, 16 )
	Text( 6, "我要去冰雪岛！", JumpPage, 17 )
	Text( 6, "我要去真爱岛！", JumpPage, 19 )
	Text( 6, "我要去好运岛！", JumpPage, 20 )
	Text( 6, "我要记录重生点", JumpPage, 25 )          ---鸣沙岛

	Talk( 7, "瓦伦娜：你好，我是岛屿传送使瓦伦娜，请问有什么可以帮你的么？" )
	Text( 7, "我要去白银城！", JumpPage, 21 )
	Text( 7, "我要去海风岛！", JumpPage, 14 )
	Text( 7, "我要去碎冰岛！", JumpPage, 15 )
	Text( 7, "我要去雪贼岛！", JumpPage, 16 )
	Text( 7, "我要去冰雪岛！", JumpPage, 17 )
	Text( 7, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 7, "我要去好运岛！", JumpPage, 20 )
	Text( 7, "我要记录重生点", JumpPage, 25 )          ---真爱岛

	Talk( 8, "茉莉：你好，我是岛屿传送使茉莉，请问有什么可以帮你的么？" )
	Text( 8, "我要去白银城！", JumpPage, 21 )
	Text( 8, "我要去海风岛！", JumpPage, 14 )
	Text( 8, "我要去碎冰岛！", JumpPage, 15 )
	Text( 8, "我要去雪贼岛！", JumpPage, 16 )
	Text( 8, "我要去冰雪岛！", JumpPage, 17 )
	Text( 8, "我要去鸣沙岛！", JumpPage, 18 )
	Text( 8, "我要去真爱岛！", JumpPage, 19 )
	Text( 8, "我要记录重生点", JumpPage, 25 )          ---好运岛

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "传送到海风岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 14, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "传送到碎冰岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 15, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "传送到雪贼岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 16, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "传送到冰雪岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 17, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "传送到鸣沙岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 18, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "传送到真爱岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 19, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "传送到好运岛是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 20, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "传送到白银城是吧，没问题！请支付2000G现金，谢谢！" )
	Text( 21, "开始传送",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, SetSpawnPos, "白银城")
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, SetSpawnPos, "海风岛")
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, SetSpawnPos, "碎冰岛")
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, SetSpawnPos, "雪贼岛")
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, SetSpawnPos, "冰雪岛")
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, SetSpawnPos, "鸣沙岛")
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, SetSpawnPos, "真爱岛")
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, SetSpawnPos, "好运岛")
	TriggerFailure( 8, JumpPage, 28 )
	Talk( 25, "要记录在这里么？" )
	Text( 25, "是的，请记录吧", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "不，不用了",CloseTalk )

	Talk( 26, "对不起，您的现金不足，无法传送。" )

	Talk( 27, "下次如果需要传送服务记得找我啊～", CloseTalk )

	Talk( 28, "出现错误，无法记录，Call Robin", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, JumpPage, 3 )
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, JumpPage, 4 )
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, JumpPage, 5)
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, JumpPage, 6 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, JumpPage, 7)
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, JumpPage, 8 )
	Start( GetMultiTrigger(), 8 )
end
