------------------------------------------------------------
--ScriptDefine.lua Created by knight 2005.3.9.
--
--脚本信息定义
print( "Loading EudemonScript.lua" )
------------------------------------------------------------

--守护神初始化脚本函数
function Eudemon()
	print( "Eudemon init" )
	
end 

function EudemonMission()
	InitTrigger()
	--TriggerAction( 1, SystemNotice, "equip item" )
	--TriggerAction( 1, GiveMission, 38 )
	RegTrigger( 8889, 1 )
--------------------------白银城新手出生	
	DefineWorldMission( 1, "新人报道", 1 )
	
	MisBeginTalk( "<t>您好，欢迎来到《海盗王》。<n><t>这是一个充满传奇与冒险的世界，您可以在这里尽情遨游，享受海盗们的梦幻之旅，也可以参军入伍，或是游戏人间。<n><t>也许您现在对这里的一切都还感到十分陌生，为了消除您的不安，新手指导瑟安将24小时守侯在白银城的城市中央，指引您熟悉这个世界。<n><t>同时，找到瑟安也是您在游戏中的第一个任务，她在坐标2223,2785处，你必须找到瑟安，她将告诉你有关海盗王的一些基本设置。<n><t>最后，祝您在游戏中美梦成真。" )
	MisHelpTalk( "<t>您好，欢迎来到《海盗王》。<n><t>这是一个充满传奇与冒险的世界，您可以在这里尽情遨游，享受海盗们的梦幻之旅，也可以参军入伍，或是游戏人间。<n><t>也许您现在对这里的一切都还感到十分陌生，为了消除您的不安，新手指导瑟安将24小时守侯在白银城的城市中央，指引您熟悉这个世界。<n><t>同时，找到瑟安也是您在游戏中的第一个任务，她在坐标2223,2785处，你必须找到瑟安，她将告诉你有关海盗王的一些基本设置。<n><t>最后，祝您在游戏中美梦成真。" )
	MisBeginAction( AddMission, 1 )
	MisBeginAction( SetFlag, 1, 1 )
	MisBeginAction(GiveItem, 436, 1, 4)
	--MisBeginAction(GiveItem, 2307, 1, 4)
	--MisBeginAction(GiveItem, 3037, 1, 4)
	MisNeed(MIS_NEED_DESP, "找到<r新手指导·瑟安>（坐标：2223,2785）并了解<r职业>与<r属性>")


	MisResultCondition( AlwaysFailure )

-------------------------------沙岚城新手出生

	DefineWorldMission( 2, "新人报道", 2 )
	
	MisBeginTalk( "<t>您好，欢迎来到《海盗王》。<n><t>这是一个充满传奇与冒险的世界，您可以在这里尽情遨游，享受海盗们的梦幻之旅，也可以参军入伍，或是游戏人间。<n><t>也许您现在对这里的一切都还感到十分陌生，为了消除您的不安，新手指导拉丝碧将指引您熟悉和了解这个世界。<n><t>同时找到拉丝碧也是您在游戏中的第一个任务，她在坐标877,3573。<n><t>她将告诉你有关海盗王的一些基本设置，如果你不找到她将无法顺利进行游戏。<n><t>最后，祝您在游戏中美梦成真。" )
	MisHelpTalk( "<t>您好，欢迎来到《海盗王》。<n><t>这是一个充满传奇与冒险的世界，您可以在这里尽情遨游，享受海盗们的梦幻之旅，也可以参军入伍，或是游戏人间。<n><t>也许您现在对这里的一切都还感到十分陌生，为了消除您的不安，新手指导拉丝碧将指引您熟悉和了解这个世界。<n><t>同时找到拉丝碧也是您在游戏中的第一个任务，她在坐标877,3573。<n><t>她将告诉你有关海盗王的一些基本设置，如果你不找到她将无法顺利进行游戏。<n><t>最后，祝您在游戏中美梦成真。" )
	MisBeginAction( AddMission, 2 )
	MisBeginAction( SetFlag, 2, 1 )
	MisBeginAction(GiveItem, 436, 1, 4)
	--MisBeginAction(GiveItem, 2307, 1, 4)
	--MisBeginAction(GiveItem, 3037, 1, 4)
	MisNeed(MIS_NEED_DESP, "找到<r新手指导·拉丝碧>（坐标：877,3573）并了解<r职业>与<r属性>")

	MisResultCondition( AlwaysFailure )
	
-------------------------------冰狼堡新手出生

	DefineWorldMission( 3, "新人报道", 3 )
	
	MisBeginTalk( "<t>您好，欢迎来到《海盗王》。<n><t>这是一个充满传奇与冒险的世界，您可以在这里尽情遨游，享受海盗们的梦幻之旅，也可以参军入伍，或是游戏人间。<n><t>也许您现在对这里的一切都还感到十分陌生，为了消除您的不安，新手指导安琪露亚将24小时守侯在冰狼堡的城市中央，指引您熟悉这个世界。<n><t>同时，找到安琪露亚也是您在游戏中的第一个任务，她在坐标1315,507处，你必须找到安琪露亚，她将告诉你有关海盗王的一些基本设置。<n><t>最后，祝您在游戏中美梦成真。" )
	MisHelpTalk( "<t>您好，欢迎来到《海盗王》。<n><t>这是一个充满传奇与冒险的世界，您可以在这里尽情遨游，享受海盗们的梦幻之旅，也可以参军入伍，或是游戏人间。<n><t>也许您现在对这里的一切都还感到十分陌生，为了消除您的不安，新手指导安琪露亚将24小时守侯在冰狼堡的城市中央，指引您熟悉这个世界。<n><t>同时，找到安琪露亚也是您在游戏中的第一个任务，她在坐标1315,507处，你必须找到安琪露亚，她将告诉你有关海盗王的一些基本设置。<n><t>最后，祝您在游戏中美梦成真。" )
	MisBeginAction( AddMission, 3 )
	MisBeginAction( SetFlag, 3, 1 )
	MisBeginAction(GiveItem, 436, 1, 4)
	--MisBeginAction(GiveItem, 2307, 1, 4)
	--MisBeginAction(GiveItem, 3037, 1, 4)
	MisNeed(MIS_NEED_DESP, "找到<r新手指导·安琪露亚>（坐标：1315,507）并了解<r职业>与<r属性>")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------引诱巨兽
	DefineWorldMission( 4, "引诱巨兽", 4 )

	MisBeginTalk( "<t>前往<p废矿二层>找到巨兽的巢穴，在那里使用<y草莓饼干>，看看到底会发生什么事？！<n><t>请在一个小时以内引出巨兽并杀死他" )
	MisHelpTalk( "<t>前往<p废矿二层>找到巨兽的巢穴，在那里使用<y草莓饼干>，看看到底会发生什么事？！<n><t>请在一个小时以内引出巨兽并杀死他" )
	MisBeginAction( AddMission, 4 )
	MisBeginAction(SystemNotice, "获得任务“引诱巨兽”" )

--	MisCancelAction(ClearMission, 4 )
--	MisCancelAction(ClearTrigger, 109 )
--	MisCancelAction(ClearTrigger, 108 )
	MisCancelAction(SystemNotice, "该任务无法中断" )

	MisNeed(MIS_NEED_DESP, "使用草莓饼干引出巨兽" )
	MisNeed(MIS_NEED_KILL, 99, 1, 10, 1)

	MisResultCondition( AlwaysFailure )


----------------------------汇报收信人
	DefineWorldMission( 5, "汇报收信人", 5 )
	
	MisBeginTalk( "<t>发现收信人是<b闪光侠八世>！<n><t>将这个发现立即汇报给<b梅利西亚·猫眼>。" )
	MisHelpTalk( "<t>发现收信人是<b闪光侠八世>！<n><t>将这个发现立即汇报给<b梅利西亚·猫眼>。" )
	MisBeginAction( AddMission, 5 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找到梅利西亚·猫眼（1118,3611）汇报结果")
	
	MisResultCondition( AlwaysFailure )

----------------------------询问未果
	DefineWorldMission( 6, "询问未果", 6 )
	
	MisBeginTalk( "<t>看来商会会长并不愿谈起这些事，再去找<b糊涂山人>谈谈，看看到底什么原因让会长不愿意透露详情。" )
	MisHelpTalk( "<t>看来商会会长并不愿谈起这些事，再去找<b糊涂山人>谈谈，看看到底什么原因让会长不愿意透露详情。" )
	MisBeginAction( AddMission, 6 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找糊涂山人(2272,2700)汇报结果")
	
	MisResultCondition( AlwaysFailure )


----------------------------返回冰狼
	DefineWorldMission( 7, "返回冰狼", 7 )
	
	MisBeginTalk( "<t>现在是时候返回冰狼堡了，再去和鲁格兰谈谈，也许现在可以切入正题，知道T9补给站的位置了。" )
	MisHelpTalk( "<t>现在是时候返回冰狼堡了，再去和鲁格兰谈谈，也许现在可以切入正题，知道T9补给站的位置了。" )
	MisBeginAction( AddMission, 7 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "回到冰狼堡和鲁格兰(1320,585)谈谈。")
	
	MisResultCondition( AlwaysFailure )

----------------------------海盗之血1
	DefineWorldMission( 8, "海盗之血", 8 )
	
	MisBeginTalk( "<t>当我双手触及这个黑色的物体，一个神秘的声音钻入我的脑海，“海盗之血，证明你的忠诚，我将给你答案”。<n>什么是海盗之血？证明你的忠诚是什么意思？也许，（1672,3777）的<b杰克>会知道些什么。" )
	MisHelpTalk( "<t>当我双手触及这个黑色的物体，一个神秘的声音钻入我的脑海，“海盗之血，证明你的忠诚，我将给你答案”。<n>什么是海盗之血？证明你的忠诚是什么意思？也许，（1672,3777）的<b杰克>会知道些什么。" )
	MisBeginAction( AddMission, 8 )
	MisBeginAction( TakeItem, 4220, 1 )
	MisBeginAction( GiveItem, 4221, 1, 4 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找杰克解答心中的疑惑")
	
	MisResultCondition( AlwaysFailure )

----------------------------海军之魂1
	DefineWorldMission( 9, "海军之魂", 9 )
	
	MisBeginTalk( "<t>当我双手触及这个黑色的物体，一个神秘的声音钻入我的脑海，“海军之魂，坚定你的信念，我将给你答案”。<n><t>什么是海军之魂？坚定你的信念是什么意思？也许，（1672,3777）的<b杰克>会知道些什么。" )
	MisHelpTalk( "<t>当我双手触及这个黑色的物体，一个神秘的声音钻入我的脑海，“海军之魂，坚定你的信念，我将给你答案”。<n><t>什么是海军之魂？坚定你的信念是什么意思？也许，（1672,3777）的<b杰克>会知道些什么。" )
	MisBeginAction( AddMission, 9 )
	MisBeginAction( TakeItem, 4220, 1 )
	MisBeginAction( GiveItem, 4221, 1, 4 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找杰克解答心中的疑惑")
	
	MisResultCondition( AlwaysFailure )

----------------------------无名之人1
	DefineWorldMission( 10, "无名之人", 10 )
	
	MisBeginTalk( "<t>当我双手触及这个黑色的物体，一个神秘的声音钻入我的脑海，“无名之人，拿出你的勇气，我将给你答案”。<n><t>谁是无名之人？拿出你的勇气是什么意思？也许，（1672,3777）的<b杰克>会知道些什么。" )
	MisHelpTalk( "<t>当我双手触及这个黑色的物体，一个神秘的声音钻入我的脑海，“无名之人，拿出你的勇气，我将给你答案”。<n><t>谁是无名之人？拿出你的勇气是什么意思？也许，（1672,3777）的<b杰克>会知道些什么。" )
	MisBeginAction( AddMission, 10 )
	MisBeginAction( TakeItem, 4220, 1 )
	MisBeginAction( GiveItem, 4221, 1, 4 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找（1672,3777）的杰克解答心中的疑惑")
	
	MisResultCondition( AlwaysFailure )

----------------------------海盗之血2
	DefineWorldMission( 11, "海盗之血", 11 )
	
	MisBeginTalk( "<t>我觉得杰克一定知道解开这个的办法，只是不肯告诉我而已，是不是我砍他手下砍得太过火了，算了，三十六计走为上策，我还是去问（1346,451）的<b冰狼堡贵族·马尔修斯>吧。" )
	MisHelpTalk( "<t>我觉得杰克一定知道解开这个的办法，只是不肯告诉我而已，是不是我砍他手下砍得太过火了，算了，三十六计走为上策，我还是去问（1346,451）的<b冰狼堡贵族·马尔修斯>吧。" )
	MisBeginAction( AddMission, 11 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "与（1346,451）<b冰狼堡贵族·马尔修斯>谈一下海盗之血")
	
	MisResultCondition( AlwaysFailure )

----------------------------海军之魂2
	DefineWorldMission( 12, "海军之魂", 12 )
	
	MisBeginTalk( "<t>我觉得杰克一定知道解开这个的办法，只是不肯告诉我而已，是不是我砍他手下砍得太过火了，算了，三十六计走为上策，我还是去问（2277,2831）的<b海军少将·威尔斯>吧。" )
	MisHelpTalk( "<t>我觉得杰克一定知道解开这个的办法，只是不肯告诉我而已，是不是我砍他手下砍得太过火了，算了，三十六计走为上策，我还是去问<b海军少将·威尔斯>吧。" )
	MisBeginAction( AddMission, 12 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "与（2277,2831）的<b海军少将·威尔斯>谈一下海军之魂")
	
	MisResultCondition( AlwaysFailure )

----------------------------无名之人2
	DefineWorldMission( 13, "无名之人", 13 )
	
	MisBeginTalk( "<t>我觉得杰克一定知道解开这个的办法，只是不肯告诉我而已，是不是我砍他手下砍得太过火了，算了，三十六计走为上策，我还是去问（2219,2749）的<b白银城首席秘书·斯克特>吧。" )
	MisHelpTalk( "<t>我觉得杰克一定知道解开这个的办法，只是不肯告诉我而已，是不是我砍他手下砍得太过火了，算了，三十六计走为上策，我还是去问（2219,2749）的<b白银城首席秘书·斯克特>吧。" )
	MisBeginAction( AddMission, 13 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "与（2219,2749）的<b白银城首席秘书·斯克特>谈一下无名之人")
	
	MisResultCondition( AlwaysFailure )

----------------------------奇迹之光
	DefineWorldMission( 14, "奇迹之光", 14 )
	
	MisBeginTalk( "<t>当我到达这片海域的时候，无论是我还是船都已经疲惫不堪了，如果，没有任何收获，我想我绝对没有勇气或者回去的，就在这时候，水手之心突然迸发出了奇迹般的光芒，光芒过后，我和我的船只都恢复到了最佳状态，惊诧之后，我想，我应该把这个事情告诉（2219,2749）的<b白银城首席秘书·斯克特>，他必须为我解释一下。" )
	MisHelpTalk( "<t>当我到达这片海域的时候，无论是我还是船都已经疲惫不堪了，如果，没有任何收获，我想我绝对没有勇气或者回去的，就在这时候，水手之心突然迸发出了奇迹般的光芒，光芒过后，我和我的船只都恢复到了最佳状态，惊诧之后，我想，我应该把这个事情告诉（2219,2749）的<b白银城首席秘书·斯克特>，他必须为我解释一下。" )
	MisBeginAction( AddMission, 14 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "把自己的遭遇告诉（2219,2749）的<b白银城首席秘书·斯克特>")
	
	MisResultCondition( AlwaysFailure )

----------------------------雷霆银行
	DefineWorldMission( 15, "雷霆银行", 15 )
	
	MisBeginTalk( "<t>我仔细的检查了手中的钥匙，精美而华贵，受海水影响稍微变形的钥匙柄上隐约刻着雷霆银行的标志，看来，这次的目标是雷霆的银行了" )
	MisHelpTalk( "<t>我仔细的检查了手中的钥匙，精美而华贵，受海水影响稍微变形的钥匙柄上隐约刻着雷霆银行的标志，看来，这次的目标是雷霆的银行了" )
	MisBeginAction( AddMission, 15 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "拿着<r古老的钥匙>到雷霆的银行向（743,1534）的<b银行出纳·玛卡多>打听一下吧")
	
	MisResultCondition( AlwaysFailure )

----------------------------鲁德安的遗书
	DefineWorldMission( 16, "鲁德安的遗书", 16 )
	
	MisBeginTalk( "<t>“我是一只小小小鸟，飞呀飞呀飞不高……，我不是黄蓉，我不会武功……，你不要这样的看着我，我的脸会变成红苹果……”<n><t>这都是什么？难道是我眼花了？这个真的是鲁德安的遗书吗？不会已经被人调换过了吧，看来有必要找（1672,3777）的<b杰克>确认一下，他应该认识这种别扭的字体的。" )
	MisHelpTalk( "<t>“我是一只小小小鸟，飞呀飞呀飞不高……，我不是黄蓉，我不会武功……，你不要这样的看着我，我的脸会变成红苹果……”<n><t>这都是什么？难道是我眼花了？这个真的是鲁德安的遗书吗？不会已经被人调换过了吧，看来有必要找（1672,3777）的<b杰克>确认一下，他应该认识这种别扭的字体的。" )
	MisBeginAction( AddMission, 16 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找（1672,3777）的<b杰克>确认遗书的真伪")
	
	MisResultCondition( AlwaysFailure )

----------------------------感情纠纷
	DefineWorldMission( 17, "感情纠纷", 17 )
	
	MisBeginTalk( "<t>看来化解小山车和杰克船长之间的恩怨都寄托在这颗南瓜头上了，也许蒂娜说的对，美丽是一种罪过……希望这个南瓜头可以给小山车带来一些回忆。" )
	MisHelpTalk( "<t>看来化解小山车和杰克船长之间的恩怨都寄托在这颗南瓜头上了，也许蒂娜说的对，美丽是一种罪过……希望这个南瓜头可以给小山车带来一些回忆。" )
	MisBeginAction( AddMission, 17 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "带着<r刻着字的南瓜头>去找<b小山车>(2193,2730)")
	
	MisResultCondition( AlwaysFailure )

----------------------------海盗语言
	DefineWorldMission( 18, "海盗语言", 18 )
	
	MisBeginTalk( "<t>将隐形药水解药倾倒在鲁德安的遗书上后，神奇的效果出现了，上面的文字逐渐隐去，露出了几行清秀的文字，上面用海盗们才用的语言写着：“胜利的歌声为死亡导航，骷髅的视线才是远航的方向，当鲜血让枯骨复苏，你将得到传说中的宝藏。”<n><t>（这几句话究竟是什么意思？既然是用海盗的语言写的，我想（1672,3777）的<b杰克>总该知道一些什么。）" )
	MisHelpTalk( "<t>将隐形药水解药倾倒在鲁德安的遗书上后，神奇的效果出现了，上面的文字逐渐隐去，露出了几行清秀的文字，上面用海盗们才用的语言写着：“胜利的歌声为死亡导航，骷髅的视线才是远航的方向，当鲜血让枯骨复苏，你将得到传说中的宝藏。”<n><t>（这几句话究竟是什么意思？既然是用海盗的语言写的，我想（1672,3777）的<b杰克>总该知道一些什么。）" )
	MisBeginAction( AddMission, 18 )
	MisBeginAction( TakeItem, 4228, 1 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找（1672,3777）的<b杰克船长>解释一下遗书上文字")
	
	MisResultCondition( AlwaysFailure )

----------------------------人鱼的宝藏
	DefineWorldMission( 19, "人鱼的宝藏", 19 )
	
	MisBeginTalk( "<t>（这就是人鱼的骷髅了吧，好像没有什么线索啊，杰克也有说错的时候，等等，这是什么，好像是魔族的文字，<p“1843，1717”>，这应该是宝藏的坐标！！<n><t>可是，是哪个海域呢？没有其他的文字了，看来只好一个一个试过来了，按照杰克的说法，我要在这个位置使用<r人鱼的骷髅>献上自己的鲜血，这倒是一个不错的检测方法，但是很痛啊>_<。）" )
	MisHelpTalk( "<t>（这就是人鱼的骷髅了吧，好像没有什么线索啊，杰克也有说错的时候，等等，这是什么，好像是魔族的文字，<p“1843，1717”>，这应该是宝藏的坐标！！<n><t>可是，是哪个海域呢？没有其他的文字了，看来只好一个一个试过来了，按照杰克的说法，我要在这个位置使用<r人鱼的骷髅>献上自己的鲜血，这倒是一个不错的检测方法，但是很痛啊>_<。）" )
	MisBeginAction( AddMission, 19 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "到“1843，1717”坐标，使用<r人鱼的骷髅>看看会发生什么事情。")
	
	MisResultCondition( AlwaysFailure )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,12000,12000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3462,20,4)


----------------------------迷的日记
	DefineWorldMission( 20, "迷的日记", 20 )
	
	MisBeginTalk( "<t>当我的鲜血洒在人鱼的骷髅上时，一阵剧痛使我昏厥了过去。<n><t>再次睁开眼睛，手中的骷髅已经不见，取而代之的是一本破旧的日记，如果我没有看错的话，上面用魔族的文字写着安德鲁的名字。<n><t>我揉了一下眼睛，然后小心的翻开日记，正像我猜测的一样，里面用魔族的语言记录了安德鲁的航海日记，不过，在中间的几页用一种我完全没见过的语言记录了安德鲁在一个神秘小镇的经历。<n><t>让我想想，如果没记错的话，（2272,2700）的<b糊涂山人>曾经跟我说过，如果以后遇到语言的问题可以在午夜来找他，为什么是午夜呢？不管了，先找找看。" )
	MisHelpTalk( "<t>当我的鲜血洒在人鱼的骷髅上时，一阵剧痛使我昏厥了过去。<n><t>再次睁开眼睛，手中的骷髅已经不见，取而代之的是一本破旧的日记，如果我没有看错的话，上面用魔族的文字写着安德鲁的名字。<n><t>我揉了一下眼睛，然后小心的翻开日记，正像我猜测的一样，里面用魔族的语言记录了安德鲁的航海日记，不过，在中间的几页用一种我完全没见过的语言记录了安德鲁在一个神秘小镇的经历。<n><t>让我想想，如果没记错的话，（2272,2700）的<b糊涂山人>曾经跟我说过，如果以后遇到语言的问题可以在午夜来找他，为什么是午夜呢？不管了，先找找看。" )
	MisBeginAction( AddMission, 20 )
	MisBeginAction( SetRecord, 19 )
	MisBeginAction( ClearMission, 19 )
	MisBeginAction( TakeItem, 4230, 1 )
	MisBeginAction( GiveItem, 4231, 1, 4 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "带着日记去找（2272,2700）的<b糊涂山人>聊聊")
	
	MisResultCondition( AlwaysFailure )

----------------------------神秘小镇
	DefineWorldMission( 21, "神秘小镇", 21 )
	
	MisBeginTalk( "<t>“来到这个神秘的小镇已经一周了，我仍旧无法确认自己是否在梦中，一个个充满神秘色彩的见闻让我无法思考眼前的事情，春天永远停留在这个神所眷属的小镇，这里几乎看不见一丝烦恼，笑声回荡在小镇的每一个角落，华丽的装饰让我觉得这里的人都会使用炼金术，……<n><t>真想一辈子留在这个小镇，享受这里的生活，但是，看来可恶的海军并不这么认为，早上在海天交界处的一点黑暗，现在已经扩大到了清晰可见的军舰，我该离开了，否则这个小镇也会像我的家乡一样……<n><t>如果，有人可以看到这个笔记，我希望他们能与我共享这个秘密，记住这个小镇的名字——春风镇。”<n><t>（大段的描述已经让我想入非非，可是整个翻译看过一遍我也没发现记录春风镇坐标的地方，难道，这又是一个玩笑？<n><t>我还是再找圣女确认一下吧）" )
	MisHelpTalk( "<t>“来到这个神秘的小镇已经一周了，我仍旧无法确认自己是否在梦中，一个个充满神秘色彩的见闻让我无法思考眼前的事情，春天永远停留在这个神所眷属的小镇，这里几乎看不见一丝烦恼，笑声回荡在小镇的每一个角落，华丽的装饰让我觉得这里的人都会使用炼金术，……<n><t>真想一辈子留在这个小镇，享受这里的生活，但是，看来可恶的海军并不这么认为，早上在海天交界处的一点黑暗，现在已经扩大到了清晰可见的军舰，我该离开了，否则这个小镇也会像我的家乡一样……<n><t>如果，有人可以看到这个笔记，我希望他们能与我共享这个秘密，记住这个小镇的名字——春风镇。”<n><t>（大段的描述已经让我想入非非，可是整个翻译看过一遍我也没发现记录春风镇坐标的地方，难道，这又是一个玩笑？<n><t>我还是再找圣女确认一下吧）" )
	MisBeginAction( AddMission, 21 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "找（862,3303）的<b圣女·艾达>确认春风镇的坐标问题")
	
	MisResultCondition( AlwaysFailure )

----------------------------命运之轮
	DefineWorldMission( 22, "命运之轮", 22 )
	
	MisBeginTalk( "<t>在这片漆黑的海域航行已经7天了，如果没有海轮的指引，我恐怕永远也走不出这个黑暗，反正看不到时间，我疲倦的时候就会卷缩在角落里睡上一觉，而现在正是时候。<n><t>在我选好一个角落打算美美的睡上一觉之前，我又把海轮拿出来看了一下，这时，一声微弱的救命穿过海浪漂到我的耳朵里。<n>要知道，在海上互相救援是水手的不二法则，所以在听到第二声救命之前，我已经把船只调整到了适当的方向。<n><t>是陷阱吗？还是美丽的邂逅，不管是什么，等着我，我马上就到。" )
	MisHelpTalk( "<t>在这片漆黑的海域航行已经7天了，如果没有海轮的指引，我恐怕永远也走不出这个黑暗，反正看不到时间，我疲倦的时候就会卷缩在角落里睡上一觉，而现在正是时候。<n><t>在我选好一个角落打算美美的睡上一觉之前，我又把海轮拿出来看了一下，这时，一声微弱的救命穿过海浪漂到我的耳朵里。<n>要知道，在海上互相救援是水手的不二法则，所以在听到第二声救命之前，我已经把船只调整到了适当的方向。<n><t>是陷阱吗？还是美丽的邂逅，不管是什么，等着我，我马上就到。" )
	MisBeginAction( AddMission, 22 )
	MisBeginAction( TakeItem, 4237,1 )
	MisCancelAction(SystemNotice, "该任务无法中断" )
		
	MisNeed(MIS_NEED_DESP, "到<p加纳大陆1497,1707>坐标调查一下，看看那边有什么")
	
	MisResultCondition( AlwaysFailure )

----------------------------语言问题
	--DefineWorldMission( 23, "语言问题", 23 )
	
	--MisBeginTalk( "<t>这些人都在说什么？我怎么都听不懂？难道是另一种语言？这可怎么办？对了，<b老奶奶贝蒂>是从这边过来的却能说我们的语言，他一定知道些什么。" )
	--MisBeginCondition(NoMission, 326)
	--MisHelpTalk( "找<b老奶奶贝蒂>谈一下" )
	--MisBeginAction( AddMission, 23 )
	--MisCancelAction(SystemNotice, "该任务无法中断" )
		
	--MisNeed(MIS_NEED_DESP, "与<b老奶奶贝蒂>对话")
	
	--MisResultCondition( AlwaysFailure )

----------------------------龙之泪
	DefineWorldMission( 24, "龙之泪", 24)
	
	MisBeginTalk( "<t>我没看错吧，在这头巨大的冰龙倒下的一瞬间，居然有一滴眼泪出现在那空洞的眼眶内，随后，这颗眼泪在极寒之气下迅速冻结，或者准确地说结晶为一颗光艳的宝石，滚到我的脚前，是什么让这头冰龙流下眼泪，这个眼泪又有什么秘密呢？<n><t>看来，这个镇子里还有很多我不知道的事情。" )
	MisHelpTalk( "<t>我没看错吧，在这头巨大的冰龙倒下的一瞬间，居然有一滴眼泪出现在那空洞的眼眶内，随后，这颗眼泪在极寒之气下迅速冻结，或者准确地说结晶为一颗光艳的宝石，滚到我的脚前，是什么让这头冰龙流下眼泪，这个眼泪又有什么秘密呢？<n><t>看来，这个镇子里还有很多我不知道的事情。" )
	MisBeginAction( AddMission, 24 )
	MisCancelAction(SystemNotice, "该任务无法中断" )		
	MisNeed(MIS_NEED_DESP, "带着龙之泪去村里找人聊聊")
	
	MisResultCondition( AlwaysFailure )

----------------------------龙之泪的秘密
	DefineWorldMission( 25, "龙之泪的秘密", 25)
	
	MisBeginTalk( "<t>是传说在骗人吗？还是使用的方法不对，到底是什么原因让海砂变成了冰龙，难道真是诅咒？看来除非找到海砂本人来问问，否则永远也不会明白了……<n><t>就在我还在胡思乱想的时候，龙之泪忽然发出一阵微光，一条微弱的光线从龙之泪中射出，指向沙岚的方向。<n><t>这是给我的新的线索吗？如果去沙岚的话，我可以顺便去看看我的老朋友（862,3303）的<b圣女·艾达>了。" )
	MisHelpTalk( "<t>是传说在骗人吗？还是使用的方法不对，到底是什么原因让海砂变成了冰龙，难道真是诅咒？看来除非找到海砂本人来问问，否则永远也不会明白了……<n><t>就在我还在胡思乱想的时候，龙之泪忽然发出一阵微光，一条微弱的光线从龙之泪中射出，指向沙岚的方向。<n><t>这是给我的新的线索吗？如果去沙岚的话，我可以顺便去看看我的老朋友（862,3303）的<b圣女·艾达>了。" )
	MisBeginAction( AddMission, 25 )
	MisCancelAction(SystemNotice, "该任务无法中断" )		
	MisNeed(MIS_NEED_DESP, "找（862,3303）的<b圣女·艾达>谈一下龙之泪的秘密")
	
	MisResultCondition( AlwaysFailure )

----------------------------海砂的存款
	DefineWorldMission( 26, "海砂的存款", 26)
	
	MisBeginTalk( "<t>亲爱的朋友，我由衷地感谢你将我解脱，在被困的日子里，我眼看着自己将一个个人撕碎，看着一个个人由希望走入绝望，却无能为力，我只是想复活死去的姐姐，这样的想法也有错误吗？我不知道这个世界上是否存在神，但是，我可以肯定地对你说，你眼前的世界并不像你认为的那样，它还存在着很多秘密，就像龙之泪一样。<n><t>我的时间不多了，最后我能用来感谢你的就只有我在雷霆银行的存款了，希望可以对你的探险有所帮助，最后提醒你一句，最能欺骗你的就是你的眼睛……。" )
	MisHelpTalk( "<t>亲爱的朋友，我由衷地感谢你将我解脱，在被困的日子里，我眼看着自己将一个个人撕碎，看着一个个人由希望走入绝望，却无能为力，我只是想复活死去的姐姐，这样的想法也有错误吗？我不知道这个世界上是否存在神，但是，我可以肯定地对你说，你眼前的世界并不像你认为的那样，它还存在着很多秘密，就像龙之泪一样。<n><t>我的时间不多了，最后我能用来感谢你的就只有我在雷霆银行的存款了，希望可以对你的探险有所帮助，最后提醒你一句，最能欺骗你的就是你的眼睛……。" )
	MisBeginAction( AddMission, 26 )
	MisBeginAction( TakeItem, 4240, 1 )
	MisBeginAction( SetRecord, 370 )
	MisBeginAction( ClearMission, 370 )
	MisCancelAction(SystemNotice, "该任务无法中断" )		
	MisNeed(MIS_NEED_DESP, "到<p雷霆银行>取出海砂的存款")
	
	MisResultCondition( AlwaysFailure )
----------------------------周吴郑的情书
	DefineWorldMission( 27, "周吴郑的情书", 27)
	
	MisBeginTalk( "<t>虽然我知道，打开他人的信件是犯法的，但是，我还是很好奇这个猥琐的男人究竟写了些什么？于是，我小心的打开信封，并保证信封可以随时重新封好，在看了第一行之后，我就后悔了，这是一封情书，还是一封写得不错的情书。<n><t>我赶紧小心翼翼的重新封好信，心跳得像刚跑过1000米，不知道会不会被王墨看出来……" )
	MisHelpTalk( "<t>虽然我知道，打开他人的信件是犯法的，但是，我还是很好奇这个猥琐的男人究竟写了些什么？于是，我小心的打开信封，并保证信封可以随时重新封好，在看了第一行之后，我就后悔了，这是一封情书，还是一封写得不错的情书。<n><t>我赶紧小心翼翼的重新封好信，心跳得像刚跑过1000米，不知道会不会被王墨看出来……" )
	MisBeginAction( AddMission, 27 )
	MisCancelAction(SystemNotice, "该任务无法中断" )		
	MisNeed(MIS_NEED_DESP, "将<r粉红色的信>送给<b王墨>(3290,2512)")
	
	MisResultCondition( AlwaysFailure )

----------------------------出海打探
	DefineWorldMission( 28, "出海打探", 28)
	
	MisBeginTalk( "<t>如果，我没看错的话，这个应该就是油李的船了，也难怪现在还在海上漂，如果，我喝他们那么多的话，我估计一辈子也回不了港口了，看来龙女白担心了，我也可以回去交差了。" )
	MisHelpTalk( "<t>如果，我没看错的话，这个应该就是油李的船了，也难怪现在还在海上漂，如果，我喝他们那么多的话，我估计一辈子也回不了港口了，看来龙女白担心了，我也可以回去交差了。" )
	MisBeginAction( AddMission, 28 )
	MisCancelAction(SystemNotice, "该任务无法中断" )		
	MisNeed(MIS_NEED_DESP, "回去跟<b贸易商人·油李>(3195,2506)汇报一下情况")
	
	MisResultCondition( AlwaysFailure )
	
----------------------------悲剧
	DefineWorldMission( 29, "悲剧", 29)
	
	MisBeginTalk( "<t>几次探测之后，我找到了一个<r瓶中信>，我想这应该是类似遗书之类的东西吧，清秀的小子写在一张残破的牛皮纸上，而牛皮纸就放在我手中这个瓶子中，我想我应该把它拿给圣女·艾达看看" )
	MisHelpTalk( "把<r瓶中信>带给<b圣女·艾达>" )
	MisBeginAction( AddMission, 29 )
	MisBeginAction( SetRecord, 381 )
	MisBeginAction( ClearMission, 381 )
	MisBeginAction( TakeItem, 4253, 1, 4 )
	MisBeginAction( GiveItem, 4233, 1,4)
	MisCancelAction(SystemNotice, "该任务无法中断" )		
	MisNeed(MIS_NEED_DESP, "把<r瓶中信>带给<b圣女·艾达>(862,3303)")
	
	MisResultCondition( AlwaysFailure )
-----------------------------------语言问题
	DefineWorldMission( 30, "语言问题", 30 )

	MisBeginTalk( "<t>你好，我是万能药的药方，别问我为什么会说话，有空多看点动画片，对你的文化成长很有帮助!<n><t>你要干什么，我可是文物，烧了我是犯法的……，好吧，你赢了，我这就告诉你万能药的配方：带毛刺的鱼骨，粗壮的鱼骨，腐烂的鱼骨各30根，再加上光亮的水母外皮10个，就这些了，这些年轻人啊，真不知道尊老爱幼，扯得我腰都痛了，快去找齐这些原料，然后把我和原料一起交给<b克拉拉大师>,他会帮你做药的。")
	MisHelpTalk( "<t>你好，我是万能药的药方，别问我为什么会说话，有空多看点动画片，对你的文化成长很有帮助!<n><t>你要干什么，我可是文物，烧了我是犯法的……，好吧，你赢了，我这就告诉你万能药的配方：带毛刺的鱼骨，粗壮的鱼骨，腐烂的鱼骨各30根，再加上光亮的水母外皮10个，就这些了，这些年轻人啊，真不知道尊老爱幼，扯得我腰都痛了，快去找齐这些原料，然后把我和原料一起交给<b克拉拉大师>,他会帮你做药的。" )
	MisBeginAction(AddMission, 30)
	MisBeginAction(TakeItem, 4256, 1)
	MisBeginAction(AddTrigger, 301, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 302, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 303, TE_GETITEM, 4976, 30)
	MisBeginAction(AddTrigger, 304, TE_GETITEM, 4974, 10)
	MisCancelAction(SystemNotice, "该任务无法中断")

	MisNeed(MIS_NEED_DESP, "按照药方的提示，找到原料并交给<b克拉拉大师>(2664,654)")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)
	MisNeed(MIS_NEED_ITEM, 4974, 10, 91, 10)

	--MisResultTalk("<t>恩,恩,就是这些了,你等一下,我马上做给你(呵呵,这下能听懂附近的人鱼在说什么了^_^),咳咳,囊那么乃,囊那么乃,你慢慢等啊~~~")
	--MisHelpTalk("<t>什么？你不知道哪种怪物身上有这些原料，I服了you，记住了，有刺的骨鱼，饥饿的骨鱼，食腐骨鱼，什么，你还想知道它们在哪里出没？到这里自己查去http://inews.moliyo.com/hdw_2/kop/kopmap.shtml")
	--MisResultCondition(HasMission, 329 )
	--MisResultCondition(HasItem, 329, 30)
	--MisResultAction(SetRecord, 329 )
	--MisResultAction(ClearMission, 329 )

	MisResultCondition( AlwaysFailure )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 30, 1, 30 )
	RegCurTrigger( 301 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 30, 31, 30 )
	RegCurTrigger( 302 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 30, 61, 30 )
	RegCurTrigger( 303 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4974 )
	TriggerAction( 1, AddNextFlag, 30, 91, 10 )
	RegCurTrigger( 304 )


end
EudemonMission()