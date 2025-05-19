------------------------------------------------------------
--MissionScript04.lua Created by Robin 2005.05.27.
--
--主线任务
------------------------------------------------------------
print( "loading MissionScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck






----------------------------------------------------------
--							--
--							--
--		主线任务	 				--
--							--
--							--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>主线任务开始
function CenterMission001()

----------------------------野兽出没的森林
	DefineMission( 400, "野兽出没的森林", 400 )
	
	MisBeginTalk( "<t>在森林的深处有一片棕熊出没的危险区域。<n><t>这些熊性情凶猛，且十分强壮，然而我的小侄子<b淘淘>(1893,2812)却住在<p废矿补给站>，与这些危险生物为伴。我十分担心它，勇敢的年轻人，麻烦你去看看他吗？" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 400)
	MisBeginCondition(NoMission, 400)
	MisBeginAction(AddMission, 400)
	MisCancelAction(ClearMission, 400)
		
	MisNeed(MIS_NEED_DESP, "与淘淘（1893,2812）对话。")
	
	MisHelpTalk("淘淘总是在废矿附近呢，希望他平安无事。")
	MisResultCondition(AlwaysFailure )

-----------------------------------野兽出没的森林
	DefineMission( 401, "野兽出没的森林", 400, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我很好，这些熊宝宝并没有叔叔说得那么危险，而且我也很喜欢这里呢。")
	MisResultCondition(NoRecord, 400)
	MisResultCondition(HasMission, 400)
	MisResultAction(ClearMission, 400 )
	MisResultAction(SetRecord, 400 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------迟到的沙漠商旅
	DefineMission( 402, "迟到的沙漠商旅", 401 )
	
	MisBeginTalk( "<t>啊！你来得正好，我正有件事想托你去办。<n><t>我与沙漠上的商旅一向很熟，他们每年此时都会到城里来做生意，但今年却迟迟不见他们的身影。<n><t>麻烦你去<p沙泉补给站>找个叫<b马洛>(789,3112)的商人那里看看，到底出了什么事。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 401)
	MisBeginCondition(NoMission, 401)
	MisBeginAction(AddMission, 401)
	MisCancelAction(ClearMission, 401)
		
	MisNeed(MIS_NEED_DESP, "与马洛（789,3112）对话")
	
	MisHelpTalk("哎？你怎么还在这里？找到马洛了吗？")
	MisResultCondition(AlwaysFailure )

-----------------------------------迟到的沙漠商旅
	DefineMission( 403, "迟到的沙漠商旅", 401, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>唉，不是我们不想去白银城做生意，只是近来路上沙暴频繁，所以我们只好延期出发了。")
	MisResultCondition(NoRecord, 401)
	MisResultCondition(HasMission, 401)
	MisResultAction(ClearMission, 401 )
	MisResultAction(SetRecord, 401 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------冰原探险
	DefineMission( 404, "冰原探险", 402 )
	
	MisBeginTalk( "<t>嗨，朋友，你进步得很快呀，草原上的这些小怪物已经不是你的对手了吧。<n><t>听说<p冰都补给站>正在重金招募勇者，你想不想也去试试？我可以向负责人<b奈奈>(798,369)推荐你哦。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 402)
	MisBeginCondition(NoMission, 402)
	MisBeginAction(AddMission, 402)
	MisCancelAction(ClearMission, 402)
		
	MisNeed(MIS_NEED_DESP, "找奈奈（798,369）去接受更大的挑战")
	
	MisHelpTalk("快去找奈奈吧，她也很想见见你的本事呢。")
	MisResultCondition(AlwaysFailure )

-----------------------------------冰原探险
	DefineMission( 405, "冰原探险", 402, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>既然是<b比特>介绍来的，我当然相信你的实力。<n><t>你可要感谢他的大力推荐哦。")
	MisResultCondition(NoRecord, 402)
	MisResultCondition(HasMission, 402)
	MisResultAction(ClearMission, 402 )
	MisResultAction(SetRecord, 402 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------向着沙漠
	DefineMission( 406, "向着沙漠", 403 )
	
	MisBeginTalk( "<t>哎呀，我很久没有看见像你这样进步神速的新人了。<n><t>很可惜，冰狼堡附近已经没有能做你对手的生物了。如果你愿意，我可以推荐你去<p沙泉补给站>，那里的<b卡尔苏斯·泥巴>(779,3098)是我的好友，他或许能安排更适合你的工作。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 403)
	MisBeginCondition(NoMission, 403)
	MisBeginAction(AddMission, 403)
	MisCancelAction(ClearMission, 403)
		
	MisNeed(MIS_NEED_DESP, "找卡尔苏斯·泥巴（779,3098）聊聊")
	
	MisHelpTalk("卡尔苏斯·泥巴是个很随和的人，你不必害怕，快些去找他吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------向着沙漠
	DefineMission( 407, "向着沙漠", 403, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我的确需要帮手，你就留在这边帮忙吧。")
	MisResultCondition(NoRecord, 403)
	MisResultCondition(HasMission, 403)
	MisResultAction(ClearMission, 403 )
	MisResultAction(SetRecord, 403 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------来自白银的邀请
	DefineMission( 408, "来自白银的邀请", 404 )
	
	MisBeginTalk( "<t>嗨，朋友，你听我说，冰狼堡是个苦寒之地，继续在这里修炼，对你的帮助并不大。<n><t><p废矿补给站>的<b严罗塔>(1894,2798)最近向我征集一些能干的年轻人。<n><t>如果你不反对，我可以推荐你去他那里工作。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 404)
	MisBeginCondition(NoMission, 404)
	MisBeginAction(AddMission, 404)
	MisCancelAction(ClearMission, 404)
		
	MisNeed(MIS_NEED_DESP, "找严罗塔（1894,2798）谈谈")
	
	MisHelpTalk("你还没动身吗？严罗塔可急需能帮上忙的人呢！")
	MisResultCondition(AlwaysFailure )

-----------------------------------来自白银的邀请
	DefineMission( 409, "来自白银的邀请", 404, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>既然是<b小莫>介绍来的，我当然相信你的实力。<n><t>不过你可要感谢他的大力推荐呢。")
	MisResultCondition(NoRecord, 404)
	MisResultCondition(HasMission, 404)
	MisResultAction(ClearMission, 404 )
	MisResultAction(SetRecord, 404 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------骚动的冰原
	DefineMission( 410, "骚动的冰原", 405 )
	
	MisBeginTalk( "<t>啊，你来得正好。<n><t><b吉尔尼尼斯>告诉我<p冰都补给站>最近起了一些骚乱，他急需一些能干的人前去帮忙。<n><t>我想你继续留在城里，对你的修炼也没有更大的帮助。<n><t>如果你不反对，我可以向<b吉尔尼尼斯>(803,352)推荐你。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 405)
	MisBeginCondition(NoMission, 405)
	MisBeginAction(AddMission, 405)
	MisCancelAction(ClearMission, 405)
		
	MisNeed(MIS_NEED_DESP, "找吉尔尼尼斯（803,352）聊聊")
	
	MisHelpTalk("你怎么还在这里？吉尔尼尼斯在冰都补给站呀。")
	MisResultCondition(AlwaysFailure )

-----------------------------------骚动的冰原
	DefineMission( 411, "骚动的冰原", 405, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>既然是<b雷欧>介绍来的，我当然相信你的实力。<n><t>不过你可要感谢他的大力推荐呢。")
	MisResultCondition(NoRecord, 405)
	MisResultCondition(HasMission, 405 )
	MisResultAction(ClearMission, 405 )
	MisResultAction(SetRecord, 405 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------受阻的物资
	DefineMission( 412, "受阻的物资", 406 )
	
	MisBeginTalk( "<t>啊！我正想托你去办件事呢。<n><t>我本来是负责提供<p沙泉补给站>的物资供应品的，可近来那附近的狼群越发猖狂起来，我实在没办法应付了。<n><t>麻烦你去送一趟物资，我的朋友<p马洛>(789,3112)会在那里接待你的。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 406)
	MisBeginCondition(NoMission, 406)
	MisBeginAction(AddMission, 406)
	MisCancelAction(ClearMission, 406)
		
	MisNeed(MIS_NEED_DESP, "找马洛（789,3112）谈谈")
	
	MisHelpTalk("怎么？你还没去吗？这批物资对沙泉补给站很重要呢。")
	MisResultCondition(AlwaysFailure )

-----------------------------------受阻的物资
	DefineMission( 413, "受阻的物资", 406, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>太感谢了！要是没有这批物资，我们真的不知如何撑过这个月。")
	MisResultCondition(NoRecord, 406)
	MisResultCondition(HasMission, 406 )
	MisResultAction(ClearMission, 406 )
	MisResultAction(SetRecord, 406 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------勇者招募
	DefineMission( 414, "勇者招募", 407 )
	
	MisBeginTalk( "<t>嗨，朋友，你听我说，沙岚城气候恶劣，风沙又大，留在这里修炼，对你的帮助并不大。<n><t><p废矿补给站>的<b严罗塔>(1894,2798)最近向我征集一些能干的年轻人。<n><t>如果你不反对，我可以推荐你去他那里工作。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 407)
	MisBeginCondition(NoMission, 407)
	MisBeginAction(AddMission, 407)
	MisCancelAction(ClearMission, 407)
		
	MisNeed(MIS_NEED_DESP, "与严罗塔（1894,2798）聊聊")
	
	MisHelpTalk("你还没动身吗？严罗塔可急需能帮上忙的人呢！")
	MisResultCondition(AlwaysFailure )

-----------------------------------勇者招募
	DefineMission( 415, "勇者招募", 407, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b拉丝碧>介绍来的人啊……老实说，我不是很相信她看人的眼光呢。<n><t>不过，既然你已经来了，就留下吧。")
	MisResultCondition(NoRecord, 407)
	MisResultCondition(HasMission, 407 )
	MisResultAction(ClearMission, 407 )
	MisResultAction(SetRecord, 407 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------冰城的女神信徒
	DefineMission( 416, "冰城的女神信徒", 408 )
	
	MisBeginTalk( "<t>卡拉女神在上，你出现的正是时候！<n><t>我的挚友<b冬达米婆婆>十年前为了传播医术到了<p冰都补给站>，但冰原的酷寒现在却几乎要了她的命。<n><t>我必须挑选一个勇敢正直，能突破险境的年轻人将我的祝福传达给<b冬达米婆婆>。<n><t>孩子，我想你正是女神赐予我的那个人。" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 408)
	MisBeginCondition(NoMission, 408)
	MisBeginAction(AddMission, 408)
	MisCancelAction(ClearMission, 408)
		
	MisNeed(MIS_NEED_DESP, "与冬达米婆婆（795,363）交谈")
	
	MisHelpTalk("不知道冬达米婆婆能撑到及时。<n><t>卡拉女神在上，你一定要及时赶到啊！")
	MisResultCondition(AlwaysFailure )

-----------------------------------冰城的女神信徒
	DefineMission( 417, "冰城的女神信徒", 408, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>卡拉女神在上，年轻人，感谢你告诉我大神官的祝福，我觉得好多了。")
	MisResultCondition(NoRecord, 408)
	MisResultCondition(HasMission, 408 )
	MisResultAction(ClearMission, 408 )
	MisResultAction(SetRecord, 408 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------密林探险
	DefineMission( 418, "密林探险", 409 )
	
	MisBeginTalk( "<t>嘿，我看得出你是个喜欢冒险的人。<n><t>不过你来错地方了哦，这里可没什么惊险刺激。<n><t>不如我推荐你去<p古里咯利补给站>工作吧，我的朋友<b榴莲>肯定会介绍些让你血液沸腾的差使哦！" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 409)
	MisBeginCondition(NoMission, 409)
	MisBeginAction(AddMission, 409)
	MisCancelAction(ClearMission, 409)
		
	MisNeed(MIS_NEED_DESP, "与榴莲（1535,3071）对话")
	
	MisHelpTalk("我以为你已经出发了呢。<n><t>快些吧，时间可是不等人的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------密林探险
	DefineMission( 419, "密林探险", 409, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>虽然是<b维娜>介绍你过来的，不过如果你不够实力，我还是会轰你回去哦。")
	MisResultCondition(NoRecord, 409)
	MisResultCondition(HasMission, 409 )
	MisResultAction(ClearMission, 409 )
	MisResultAction(SetRecord, 409 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------出行东方
	DefineMission( 420, "出行东方", 410 )
	
	MisBeginTalk( "<t>嘿，我知道你。<n><t>你的名声在沙漠上已经传开了。<n><t>不过这小补给站可根你的名声不符了。<n><t>去<p巴布补给站>看看如何？<b索拉姆·萨加>正在那里正缺少你这样的人呢，就说是我的推荐保证他会答应。" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 410)
	MisBeginCondition(NoMission, 410)
	MisBeginAction(AddMission, 410)
	MisCancelAction(ClearMission, 410)
		
	MisNeed(MIS_NEED_DESP, "找索拉姆·萨加（1202,3179）谈谈")
	
	MisHelpTalk("不要满足于现在的名声，快点去新地盘开拓自己的事业吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------出行东方
	DefineMission( 421, "出行东方", 410, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦，是你啊，我听过你的一些事情。<n><t><b马洛>看人的眼神果然很准呀。<n><t>你就留在这里吧，有事情我会联系你的。")
	MisResultCondition(NoRecord, 410)
	MisResultCondition(HasMission, 410 )
	MisResultAction(ClearMission, 410 )
	MisResultAction(SetRecord, 410 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------寻找保镖
	DefineMission( 422, "寻找保镖", 411 )
	
	MisBeginTalk( "<t>嗨，你怎么无精打采的？是不是在这里找不到对手感到无聊了？要是这样，我介绍你到<p阿兰比斯补给站>找一个叫<b尤塔里尼>的商人。<n><t>他的货物常要经过危险的丛林，需要你这样的好身手来护送呢！" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 411)
	MisBeginCondition(NoMission, 411)
	MisBeginAction(AddMission, 411)
	MisCancelAction(ClearMission, 411)
		
	MisNeed(MIS_NEED_DESP, "找尤塔里尼（1059,661）谈谈")
	
	MisHelpTalk("你还没动身吗？快点去吧！尤塔里尼住在阿兰比斯补给站。")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻找保镖
	DefineMission( 423, "寻找保镖", 411, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>既然<b菲菲>推荐你来，我就放心了。<n><t>等我需要保镖时，我会联系你的。")
	MisResultCondition(NoRecord, 411)
	MisResultCondition(HasMission, 411 )
	MisResultAction(ClearMission, 411 )
	MisResultAction(SetRecord, 411 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------森林探险
	DefineMission( 424, "森林探险", 412 )
	
	MisBeginTalk( "<t>嘿，我看得出你是个喜欢冒险的人。<n><t>不过你来错地方了哦，这里可没什么惊险刺激。<n><t>不如我推荐你去<p古里咯利补给站>工作吧，我的朋友<b阿里克斯>肯定会介绍些让你血液沸腾的差使哦！" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 412)
	MisBeginCondition(NoMission, 412)
	MisBeginAction(AddMission, 412)
	MisCancelAction(ClearMission, 412)
		
	MisNeed(MIS_NEED_DESP, "找阿里克斯（1526,3089）谈谈")
	
	MisHelpTalk("快点动身吧，阿里克斯就在古里咯利补给站！")
	MisResultCondition(AlwaysFailure )

-----------------------------------森林探险
	DefineMission( 425, "森林探险", 412, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b严罗塔>难得说人好话，看来他很看中你。<n><t>我会尽量帮你找些合适的差使做的。")
	MisResultCondition(NoRecord, 412)
	MisResultCondition(HasMission, 412 )
	MisResultAction(ClearMission, 412 )
	MisResultAction(SetRecord, 412 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------险境重重
	DefineMission( 426, "险境重重", 413 )
	
	MisBeginTalk( "<t>啊！我正在找你呢！我的朋友<p索拉姆·萨加>在寻宝时遭到沙匪的袭击受了重伤，因而停留在附近的<p巴布补给站>休养。<n><t>我很担心他，可那片沙漠太危险了，我根本无法抵达目的地，只好托你去那里探望他。" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 413)
	MisBeginCondition(NoMission, 413)
	MisBeginAction(AddMission, 413)
	MisCancelAction(ClearMission, 413)
		
	MisNeed(MIS_NEED_DESP, "与索拉姆·萨加（1202,3179）对话")
	
	MisHelpTalk("见过索拉姆·萨加了吗？我非常担心他！")
	MisResultCondition(AlwaysFailure )

-----------------------------------险境重重
	DefineMission( 427, "险境重重", 413, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我已经没有大碍了，只是手脚活动还不太灵活，过几天就应该能复原了。<n><t>谢谢你的关心！")
	MisResultCondition(NoRecord, 413)
	MisResultCondition(HasMission, 413 )
	MisResultAction(ClearMission, 413 )
	MisResultAction(SetRecord, 413 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------支援阿兰比斯
	DefineMission( 428, "支援阿兰比斯", 414 )
	
	MisBeginTalk( "<t>朋友，我知道这附近已经没有怪物是你的对手了，我们也因为你的强大而受到了很好的保护。<n><t>但在<p阿兰比斯补给站>，我的朋友却生活得提心吊胆。<n><t>他们也许更需要你的帮助，你的战斗力也将成为他们最好的庇护。<n><t>你去找一个叫<b朱比>的人，他会告诉你那里正在发生的事。" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 414)
	MisBeginCondition(NoMission, 414)
	MisBeginAction(AddMission, 414)
	MisCancelAction(ClearMission, 414)
		
	MisNeed(MIS_NEED_DESP, "找朱比（1037,671）聊聊")
	
	MisHelpTalk("阿兰比斯补给站更需要你的帮助。<n><t>不要留恋在这里，快点去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------支援阿兰比斯
	DefineMission( 429, "支援阿兰比斯", 414, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦，太好了。<n><t>我们正需要一个你这样的人！请务必要留下！")
	MisResultCondition(NoRecord, 414)
	MisResultCondition(HasMission, 414 )
	MisResultAction(ClearMission, 414 )
	MisResultAction(SetRecord, 414 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------大开眼界
	DefineMission( 430, "大开眼界", 415 )
	
	MisBeginTalk( "<t>年轻人，你停留在这里，只会蒙蔽自己用以探索的双眼。<n><t>以你现在的能力，何不到处闯闯，长长见识？我的学生<b阿里克斯>现在正在<p古里咯利补给站>生活。<n><t>你就说是我推荐你的，他必会热情款待你的。" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 415)
	MisBeginCondition(NoMission, 415)
	MisBeginAction(AddMission, 415)
	MisCancelAction(ClearMission, 415)
		
	MisNeed(MIS_NEED_DESP, "找阿里克斯（1526,3089）谈谈")
	
	MisHelpTalk("阿里克斯在古里咯利补给站等你哦，快点去吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------大开眼界
	DefineMission( 431, "大开眼界", 415, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>原来是<b怪叟老师>叫你过来的，那我可要好好招待你，你先熟悉这里的环境吧。")
	MisResultCondition(NoRecord, 415)
	MisResultCondition(HasMission, 415 )
	MisResultAction(ClearMission, 415 )
	MisResultAction(SetRecord, 415 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------沙漠探险
	DefineMission( 432, "沙漠探险", 416 )
	
	MisBeginTalk( "<t>嘿，我看得出你是个喜欢冒险的人。<n><t>不过你来错地方了哦，这里可没什么惊险刺激。<n><t>不如我推荐你去<t巴布补给站>工作吧，我的朋友<b蘑蘑>肯定会介绍些让你血液沸腾的差使哦！" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 416)
	MisBeginCondition(NoMission, 416)
	MisBeginAction(AddMission, 416)
	MisCancelAction(ClearMission, 416)
		
	MisNeed(MIS_NEED_DESP, "找蘑蘑（1209,3196）聊聊")
	
	MisHelpTalk("还愣着干什么？快去巴布补给站找蘑蘑！")
	MisResultCondition(AlwaysFailure )


-----------------------------------沙漠探险
	DefineMission( 433, "沙漠探险", 416, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>虽然是<b奈奈>介绍你过来的，不过如果你不够实力，我还是会轰你回去哦。")
	MisResultCondition(NoRecord, 416)
	MisResultCondition(HasMission, 416 )
	MisResultAction(ClearMission, 416 )
	MisResultAction(SetRecord, 416 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------向南方
	DefineMission( 434, "向南方", 417 )
	
	MisBeginTalk( "<t>年轻人，你留在这里，只会蒙蔽自己用以探索的双眼。<n><t>以你现在的能力，何不到处闯闯，长长见识？我的学生<b奎赛斯·狂沙>现在正在东南方的<p阿兰比斯补给站>工作。<n><t>你说是我推荐你过去的，他必会热情款待你的。" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 417)
	MisBeginCondition(NoMission, 417)
	MisBeginAction(AddMission, 417)
	MisCancelAction(ClearMission, 417)
		
	MisNeed(MIS_NEED_DESP, "找奎赛斯·狂沙（1028,649）谈谈")
	
	MisHelpTalk("奎赛斯·狂沙在阿兰比斯补给站哦。")
	MisResultCondition(AlwaysFailure )

-----------------------------------向南方
	DefineMission( 435, "向南方", 417, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哎呀，那个怪老头还企图对我指手画脚吗。<n><t>唉，算了，你既然来了，就先留下吧。<n><t>我这里的确也是人手不足。")
	MisResultCondition(NoRecord, 417)
	MisResultCondition(HasMission, 417 )
	MisResultAction(ClearMission, 417 )
	MisResultAction(SetRecord, 417 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------梦想海洋
	DefineMission( 436, "梦想海洋", 418 )
	
	MisBeginTalk( "<t>嘿，朋友，别让人看笑话了。<n><t>在这个梦想飞扬的航海时代，没出海打过仗怎么行？！<n><t>我介绍<p白银城海军事务所>的<b海事所助理·罗拉娜>给你认识吧，他会教你怎么做的。" )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 418)
	MisCancelAction(ClearMission, 418)
		
	MisNeed(MIS_NEED_DESP, "与罗拉娜（2247,2858）对话")
	
	MisHelpTalk("罗拉娜在白银城海事所，她就在白银城港口那里，应该很显眼的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------梦想海洋
	DefineMission( 437, "梦想海洋", 418, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我会尽全力帮助你出海的，放心吧！")
	MisResultCondition(NoRecord, 418)
	MisResultCondition(HasMission, 418 )
	MisResultAction(ClearMission, 418 )
	MisResultAction(SetRecord, 418 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------海军事务所报到！
	DefineMission( 438, "海军事务所报到！", 419 )
	
	MisBeginTalk( "<t>哎？朋友，你还没有驾船下过海吗？我觉得你资质不错，应该去试试。<n><t>你到<p白银城海事所>，找一个叫做<b罗拉娜>的，她就会告诉你怎么做了。" )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 419)
	MisCancelAction(ClearMission, 419)
		
	MisNeed(MIS_NEED_DESP, "与罗拉娜（2247,2858）对话")
	
	MisHelpTalk("罗拉娜在白银城海事所，她就在白银城港口那里，应该很显眼的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------海军事务所报到！
	DefineMission( 439, "海军事务所报到！", 419, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我会尽全力帮助你出海的，放心吧！")
	MisResultCondition(NoRecord, 419)
	MisResultCondition(HasMission, 419 )
	MisResultAction(ClearMission, 419 )
	MisResultAction(SetRecord, 419 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------海军事务所
	DefineMission( 440, "海军事务所", 420 )
	
	MisBeginTalk( "<t>嘿，朋友，别让人看笑话了。<n><t>在这个梦想飞扬的航海时代，没出海打过仗怎么行？！<n><t>我介绍<p白银城海军事务所>的<b海事所助理·罗拉娜>给你认识吧，他会教你怎么做的。" )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 420)
	MisCancelAction(ClearMission, 420)
		
	MisNeed(MIS_NEED_DESP, "与罗拉娜（2247,2858）对话")
	
	MisHelpTalk("罗拉娜在白银城海事所，她就在白银城港口那里，应该很显眼的。")
	MisResultCondition(AlwaysFailure )

-----------------------------------海军事务所
	DefineMission( 441, "海军事务所", 420, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我会尽全力帮助你出海的，放心吧！")
	MisResultCondition(NoRecord, 420)
	MisResultCondition(HasMission, 420 )
	MisResultAction(ClearMission, 420 )
	MisResultAction(SetRecord, 420 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------天下第一商人
	DefineMission( 442, "天下第一商人", 421 )
	
	MisBeginTalk( "<t>啊，你可算来了，我正找你呢！你知道我和<b白银城交易员·郝洛甫>一向交情甚好。<n><t>他最近想收几个弟子，教他们海上贸易的精髓，问我有没有合适的人选。<n><t>我立即想到了你。<n><t>你如果对商业有兴趣，不妨去<p白银城>找他。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 421)
	MisCancelAction(ClearMission, 421)
		
	MisNeed(MIS_NEED_DESP, "与交易员·郝洛甫（2331,2821）谈谈")
	
	MisHelpTalk("嘿，你怎么还在这里，交易员·郝洛甫当然是在白银城里面！")
	MisResultCondition(AlwaysFailure )

-----------------------------------天下第一商人
	DefineMission( 443, "天下第一商人", 421, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><t>想学我做天下第一的商人，不错，志向不小。<n><t>我很中意你。")
	MisResultCondition(NoRecord, 421)
	MisResultCondition(HasMission, 421 )
	MisResultAction(ClearMission, 421 )
	MisResultAction(SetRecord, 421 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------白银交易所
	DefineMission( 444, "白银交易所", 422 )
	
	MisBeginTalk( "<t>啊，你可算来了，我正找你呢！你知道我和<b交易员·郝洛甫>一向交情甚好。<n><t>他最近想收几个弟子，教他们海上贸易的精髓，问我有没有合适的人选。<n><t>我立即想到了你。<n><t>你如果对商业有兴趣，不妨去<p白银城>找他。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 422)
	MisCancelAction(ClearMission, 422)
		
	MisNeed(MIS_NEED_DESP, "与交易员·郝洛甫（2331,2821）谈谈")
	
	MisHelpTalk("嘿，你怎么还在这里，交易员·郝洛甫当然是在白银城里面！")
	MisResultCondition(AlwaysFailure )

-----------------------------------白银交易所
	DefineMission( 445, "白银交易所", 422, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><t>想学我做天下第一的商人，不错，志向不小。<n><t>我很中意你。")
	MisResultCondition(NoRecord, 422)
	MisResultCondition(HasMission, 422 )
	MisResultAction(ClearMission, 422 )
	MisResultAction(SetRecord, 422 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)



----------------------------出海交易
	DefineMission( 446, "出海交易", 423 )
	
	MisBeginTalk( "<t>啊，你可算来了，我正找你呢！你知道我和<b交易员·郝洛甫>一向交情甚好。<n><t>他最近想收几个弟子，教他们海上贸易的精髓，问我有没有合适的人选。<n><t>我立即想到了你。<n><t>你如果对商业有兴趣，不妨去<p白银城>找他。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 423)
	MisCancelAction(ClearMission, 423)
		
	MisNeed(MIS_NEED_DESP, "与交易员·郝洛甫（2331,2821）谈谈")
	
	MisHelpTalk("嘿，你怎么还在这里，交易员·郝洛甫当然是在白银城里面！")
	MisResultCondition(AlwaysFailure )

-----------------------------------出海交易
	DefineMission( 447, "出海交易", 423, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><t>想学我做天下第一的商人，不错，志向不小。<n><t>我很中意你。")
	MisResultCondition(NoRecord, 423)
	MisResultCondition(HasMission, 423 )
	MisResultAction(ClearMission, 423 )
	MisResultAction(SetRecord, 423 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------被袭的剑士
	DefineMission( 448, "被袭的剑士", 424)
	
	MisBeginTalk( "<t>哎呀，不得了了。<n><t>像<b严罗塔>那样好的身手都受了重伤，不晓得是什么厉害的怪物伤了他。<n><t>我非常担心，却脱不开身。<n><t>麻烦你去一趟<p废矿补给站>探明情况好吗？" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 424)
	MisBeginCondition(NoMission, 424)
	MisBeginAction(AddMission, 424)
	MisCancelAction(ClearMission, 424)
		
	MisNeed(MIS_NEED_DESP, "与严罗塔（1894,2798）对话")
	
	MisHelpTalk("既然答应了，就要快些去哦。")
	MisResultCondition(AlwaysFailure )

-----------------------------------被袭的剑士
	DefineMission( 449, "被袭的剑士", 424, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>是我在矿洞里不小心激怒了那些鼹鼠，才受了这伤。<n><t>现在伤已经痊愈了。")
	MisResultCondition(NoRecord, 424)
	MisResultCondition(HasMission, 424 )
	MisResultAction(ClearMission, 424 )
	MisResultAction(SetRecord, 424 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------穿越赖安森林
	DefineMission( 450, "穿越赖安森林", 425)
	
	MisBeginTalk( "<t>从这里出发穿越<p赖安森林>，将到达<p瓦尔诺补给站>。<n><t>那里住了许多骇人的怪物，寻常旅人都不敢靠近，我的儿子<b瓦萨法尔>却在那里做研究。<n><t>我多久没见过他了。<n><t>勇敢的年轻人，求你可怜我这做母亲的，替我稍个口信叫他有空回来看看好吗？" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 425)
	MisBeginCondition(NoMission, 425)
	MisBeginAction(AddMission, 425)
	MisCancelAction(ClearMission, 425)
		
	MisNeed(MIS_NEED_DESP, "稍个口信给瓦萨法尔（1136,2778）")
	
	MisHelpTalk("我并不是催促你，但我希望能早一日看见我的瓦萨法尔。")
	MisResultCondition(AlwaysFailure )

-----------------------------------穿越赖安森林
	DefineMission( 451, "穿越赖安森林", 425, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我母亲是这样说的？！！太感谢你了，看来我得抽空回家去一趟！")
	MisResultCondition(NoRecord, 425)
	MisResultCondition(HasMission, 425 )
	MisResultAction(ClearMission, 425 )
	MisResultAction(SetRecord, 425 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------迷宫悬案
	DefineMission( 452, "迷宫悬案", 426)
	
	MisBeginTalk( "<t><p冰狼堡下城>建筑群落原本十分雄伟，虽然现在破败了，风采仍不减当年。<n><t>然而不少凶猛的变异生物也被其吸引，隐藏在<p冰狼堡下城>的南部区域。<n><t>近年来来附近常发生失踪事件，<b冰狼堡贵族马尔修斯>便想请我儿子去调查情况，但他现在在别处进行研究，不能前去。<n><t>麻烦你告诉<b马尔修斯>，叫他再去找些别的人吧。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 426)
	MisBeginCondition(NoMission, 426)
	MisBeginAction(AddMission, 426)
	MisCancelAction(ClearMission, 426)
		
	MisNeed(MIS_NEED_DESP, "稍口信给马尔修斯（1346,451）")
	
	MisHelpTalk("冰狼堡贵族马尔修斯还在等回音，不要让他等太久哦。")
	MisResultCondition(AlwaysFailure )

-----------------------------------迷宫悬案
	DefineMission( 453, "迷宫悬案", 426, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>这样啊，既然瓦萨法尔不能来，我也只好另寻他人。<n><t>谢谢你送信过来。")
	MisResultCondition(NoRecord, 426)
	MisResultCondition(HasMission, 426 )
	MisResultAction(ClearMission, 426 )
	MisResultAction(SetRecord, 426 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------废矿探究
	DefineMission( 454, "废矿探究", 427)
	
	MisBeginTalk( "<t>白银城外的废矿因为多年来的挖采和弃置，昏暗的的洞里道路曲折，破败不堪，好似一座地下迷宫，滋长了许多见不得光的生物。<n><t>但那里对于潜心修炼武艺的人来说却是个天堂，我想你也许有兴趣。<n><t>我的好友<b古灵精>在那附近的<p废矿补给站>工作，她将会指引你进入废矿。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 427)
	MisBeginCondition(NoMission, 427)
	MisBeginAction(AddMission, 427)
	MisCancelAction(ClearMission, 427)
		
	MisNeed(MIS_NEED_DESP, "与古灵精（1883,2805）交谈")
	
	MisHelpTalk("我保证想你喜欢废矿迷宫的！快点去吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------废矿探究
	DefineMission( 455, "废矿探究", 427, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>既然是<奥迪斯.闪光介绍来的，我当然相信你的实力。<n><t>不过你可要感谢他的大力推荐呢。")
	MisResultCondition(NoRecord, 427)
	MisResultCondition(HasMission, 427 )
	MisResultAction(ClearMission, 427 )
	MisResultAction(SetRecord, 427 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------瓦萨法尔的危机
	DefineMission( 456, "瓦萨法尔的危机", 428)
	
	MisBeginTalk( "<t>你终于来了，我等你很久了！<n><t>我的情人<b瓦萨法尔>在<p瓦尔诺补给站>遗失了珍贵的药材和贮备食物，那里非常危险，我根本不知道他现在状况如何，只有求助于你了！<n><t>拜托你去看一看他好吗？" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 428)
	MisBeginCondition(NoMission, 428)
	MisBeginAction(AddMission, 428)
	MisCancelAction(ClearMission, 428)
		
	MisNeed(MIS_NEED_DESP, "与瓦萨法尔（1136,2778）交谈")
	
	MisHelpTalk("快些去吧，瓦萨法尔等着这些东西救命呢！")
	MisResultCondition(AlwaysFailure )

-----------------------------------瓦萨法尔的危机
	DefineMission( 457, "瓦萨法尔的危机", 428, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>水……水……啊，我感觉好多了，仿佛重获新生一样。<n><t>谢谢你！我没有什么外伤，休养一下就好了。")
	MisResultCondition(NoRecord, 428)
	MisResultCondition(HasMission, 428 )
	MisResultAction(ClearMission, 428 )
	MisResultAction(SetRecord, 428 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------神秘发现
	DefineMission( 458, "神秘发现", 429)
	
	MisBeginTalk( "<t>嘿，我竟然在古籍里发现冰狼堡的下城的俯瞰图。<n><t>这真是个神秘发现！<b冰狼堡商会会长艾立克>向来对这种遗址很感兴趣，我得向他汇报这事，希望你能稍个口信过去。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 429)
	MisBeginCondition(NoMission, 429)
	MisBeginAction(AddMission, 429)
	MisCancelAction(ClearMission, 429)
		
	MisNeed(MIS_NEED_DESP, "稍口信给冰狼堡商会会长艾立克（1294,498）")
	
	MisHelpTalk("哦，快些去找艾立克吧，这个新发现很重要！")
	MisResultCondition(AlwaysFailure )

-----------------------------------神秘发现
	DefineMission( 459, "神秘发现", 429, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>真是个了不起的发现，谢谢你告诉我！")
	MisResultCondition(NoRecord, 429)
	MisResultCondition(HasMission, 429 )
	MisResultAction(ClearMission, 429 )
	MisResultAction(SetRecord, 429 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------废矿迷宫
	DefineMission( 460, "废矿迷宫", 430)
	
	MisBeginTalk( "<t>白银城外的废矿因为多年来的挖采和弃置，昏暗的的洞里道路曲折，破败不堪，好似一座地下迷宫，滋长了许多见不得光的生物。<n><t>但那里对于潜心修炼武艺的人来说却是个天堂，我想你也许有兴趣。<n><t>我的好友<b古灵精>在那附近的废矿补给站工作，她将会指引你进入废矿。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 430)
	MisBeginCondition(NoMission, 430)
	MisBeginAction(AddMission, 430)
	MisCancelAction(ClearMission, 430)
		
	MisNeed(MIS_NEED_DESP, "与古灵精（1883,2805）交谈")
	
	MisHelpTalk("我保证想你喜欢废矿迷宫的！快点去吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------废矿迷宫
	DefineMission( 461, "废矿迷宫", 430, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>虽然是<b榴莲>介绍你过来的，不过如果你不够实力，我还是会轰你回去哦。")
	MisResultCondition(NoRecord, 430)
	MisResultCondition(HasMission, 430 )
	MisResultAction(ClearMission, 430 )
	MisResultAction(SetRecord, 430 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------寻觅人才
	DefineMission( 462, "寻觅人才", 431)
	
	MisBeginTalk( "<t>嘿，你好，我的朋友<b古奈斯>正在寻找一个绝对可靠的人到<p瓦尔诺补给站>去工作。<n><t>他非常信任我，我也不想辜负他的期待，所以我想推荐你去。<n><t>这一路上你也许会遇上许多意想不到的事，也会有不少凶猛怪兽对你虎视眈眈，但我觉得你应该可以应付。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 431)
	MisBeginCondition(NoMission, 431)
	MisBeginAction(AddMission, 431)
	MisCancelAction(ClearMission, 431)
		
	MisNeed(MIS_NEED_DESP, "与古奈斯（1123,2766）交谈")
	
	MisHelpTalk("古奈斯在等你呢，快点动身吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻觅人才
	DefineMission( 463, "寻觅人才", 431, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>我相信尤塔里尼的推荐。<n><t>以后有什么重要事情，我都会交给你去办的。")
	MisResultCondition(NoRecord, 431)
	MisResultCondition(HasMission, 431 )
	MisResultAction(ClearMission, 431 )
	MisResultAction(SetRecord, 431 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------迷宫探究
	DefineMission( 464, "迷宫探究", 432)
	
	MisBeginTalk( "<t>嗨，朋友，我认为你在这里经没对手了，何不到别处发展看看呢。<n><t><b冰狼堡商会会长·艾立克>最近正好在寻找除去<p冰狼堡下城>附近怪兽的勇士。<n><t>我听说那里地形复杂，而且非常危险，但如果是你的话，应该能够应付。<n><t>若你愿意去，我可以将你推荐给<b艾立克>。" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 432)
	MisBeginCondition(NoMission, 432)
	MisBeginAction(AddMission, 432)
	MisCancelAction(ClearMission, 432)
		
	MisNeed(MIS_NEED_DESP, "与冰狼堡商会会长·艾立克（1294,498）交谈")
	
	MisHelpTalk("你已经强大到足够应付<p冰狼堡下城>的怪物了，快去证明自己的实力吧！")
	MisResultCondition(AlwaysFailure )

-----------------------------------迷宫探究
	DefineMission( 465, "迷宫探究", 432, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>虽然是<b朱比>介绍你过来的，不过如果你不够实力，我还是会轰你回去哦。")
	MisResultCondition(NoRecord, 432)
	MisResultCondition(HasMission, 432 )
	MisResultAction(ClearMission, 432 )
	MisResultAction(SetRecord, 432 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------绝地逢生
	DefineMission( 466, "绝地逢生", 433)
	
	MisBeginTalk( "<t>啊！真是太好了！我的朋友<b嘻嘻哈哈>在鬼门关走了一遭又活过来了。<n><t>虽然一个<r骷髅武士>的刀狠狠地砍在他的背上，可他还是挺过来了！我得去探望他！<n><t>啊，不……我不能去探望他。<n><t>我一靠近那个<p骷髅营地补给站>就两腿发抖，走不动了。<n><t>朋友，算是我一生唯一得请求，代我去看望<b嘻嘻哈哈>好吗？" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 433)
	MisBeginCondition(NoMission, 433)
	MisBeginAction(AddMission, 433)
	MisCancelAction(ClearMission, 433)
		
	MisNeed(MIS_NEED_DESP, "捎口信给嘻嘻哈哈（2142,556）")
	
	MisHelpTalk("要小心骷髅营地补给站的骷髅，他们非常厉害！")
	MisResultCondition(AlwaysFailure )

-----------------------------------绝地逢生
	DefineMission( 467, "绝地逢生", 433, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦，谢谢你，我自从搬来这<p骷髅营地补给站>，许多朋友都不敢来看我了呢！")
	MisResultCondition(NoRecord, 433)
	MisResultCondition(HasMission, 433 )
	MisResultAction(ClearMission, 433 )
	MisResultAction(SetRecord, 433 )
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney, 1000, 1000)

----------------------------东方导师
	DefineMission( 468, "东方导师", 434)
	
	MisBeginTalk( "<t>年轻的冒险者，我已经在这个骷髅营地附近寻找我的导师<b克拉拉大师>很多年了，但是最近我听说，她好像已经前往东面的<p冰极补给站>了。<n><t>如果你打算前去那里的话，请帮我转达我对她的敬意，并告诉她，我已经拥有了“坚强的心”。" )
	MisBeginCondition( LvCheck, ">", 39 )
	MisBeginCondition(NoRecord, 434)
	MisBeginCondition(NoMission, 434)
	MisBeginAction(AddMission, 434)
	MisCancelAction(ClearMission, 434)
		
	MisNeed(MIS_NEED_DESP, "问候克拉拉大师（2664,654）")
	
	MisHelpTalk("从这一直向东走，冰极补给站就在那边，也许路上会有些危险，但我相信你和我一样拥有一颗坚强的心。")
	MisResultCondition(AlwaysFailure )

-----------------------------------东方导师
	DefineMission( 469, "东方导师", 434, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦，谢谢你来看望我，看来我亲爱的学生终于可以毕业了。")
	MisResultCondition(NoRecord, 434)
	MisResultCondition(HasMission, 434 )
	MisResultAction(ClearMission, 434 )
	MisResultAction(SetRecord, 434 )
	MisResultAction(AddExp, 6000, 6000)	
	MisResultAction(AddMoney, 1000, 1000)


----------------------------医生改行
	DefineMission( 470, "医生改行", 435)
	
	MisBeginTalk( "<t>天啊，我的朋友，你能够帮助我吗？我的妹妹<b旅行医生·瓦罗温妮>，一个海上医生，原先曾经在沙岚城里生活，现在她捎信来，居然跑去加纳大陆上最北面那个<p卡尔加德补给站>生活了！<n><t>天啊，那里可没有水啊！麻烦你替我去看望一下她吧！" )
	MisBeginCondition( LvCheck, ">", 44 )
	MisBeginCondition(NoRecord, 435)
	MisBeginCondition(NoMission, 435)
	MisBeginAction(AddMission, 435)
	MisCancelAction(ClearMission, 435)
		
	MisNeed(MIS_NEED_DESP, "去看望旅行医生·瓦罗温妮（630,2091）")
	
	MisHelpTalk("那个补给站就在雷霆堡南面的森林里。")
	MisResultCondition(AlwaysFailure )

-----------------------------------医生改行
	DefineMission( 471, "医生改行", 435, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哈哈哈，我那个哥哥还真是喜欢多管闲事，其实我还真的就喜欢待在这里呢！")
	MisResultCondition(NoRecord, 435)
	MisResultCondition(HasMission, 435 )
	MisResultAction(ClearMission, 435 )
	MisResultAction(SetRecord, 435 )
	MisResultAction(AddExp, 10000, 10000)	
	MisResultAction(AddMoney, 1100, 1100)


----------------------------雷霆海军
	DefineMission( 472, "雷霆海军", 436)
	
	MisBeginTalk( "<t>听说北面的<p雷霆堡>，现在正在招募人手，那里应该有很多的事情可做。<n><t>我有个朋友<b迦略克>就在那里供职，你有兴趣的话可以去找他。" )
	MisBeginCondition( LvCheck, ">", 49 )
	MisBeginCondition(NoRecord, 436)
	MisBeginCondition(NoMission, 436)
	MisBeginAction(AddMission, 436)
	MisCancelAction(ClearMission, 436)
		
	MisNeed(MIS_NEED_DESP, "去和雷霆堡的护卫长·迦略克（706,1465）谈谈")
	
	MisHelpTalk("相信我，到雷霆堡去，说不定还能混个一官半职。")
	MisResultCondition(AlwaysFailure )

-----------------------------------雷霆海军
	DefineMission( 473, "雷霆海军", 436, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>哦！你想要在雷霆堡生活一段时间啊，没问题！<n><t>但是希望你不要做什么违法乱纪的事情！")
	MisResultCondition(NoRecord, 436)
	MisResultCondition(HasMission, 436 )
	MisResultAction(ClearMission, 436 )
	MisResultAction(SetRecord, 436 )
	MisResultAction(AddExp, 16000, 16000)
	MisResultAction(AddMoney, 1200, 1200)


----------------------------森林深处
	DefineMission( 474, "森林深处", 437)
	
	MisBeginTalk( "<t>听说在加纳大陆中部森林里，还有很多的土著人生活在那里，我的一个朋友老库尔森，就在那附近的<p温拿补给站>，他曾经写信告诉我的！<n><t>如果有时间的话，替我这个由军务在身的人去看望一下我的朋友吧。" )
	MisBeginCondition( LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 437)
	MisBeginCondition(NoMission, 437)
	MisBeginAction(AddMission, 437)
	MisCancelAction(ClearMission, 437)
		
	MisNeed(MIS_NEED_DESP, "去看望老库尔森（529,2458）")
	
	MisHelpTalk("谢谢你，我的朋友，当你有时间的时候，就出发去<p温拿补给站>吧。")
	MisResultCondition(AlwaysFailure )

-----------------------------------森林深处
	DefineMission( 475, "森林深处", 437, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>谢谢你来看望我，没想到松尼居然还能想起我来，不过我是分不松尼和尼松的。")
	MisResultCondition(NoRecord, 437)
	MisResultCondition(HasMission, 437 )
	MisResultAction(ClearMission, 437 )
	MisResultAction(SetRecord, 437 )
	MisResultAction(AddExp, 25000, 25000)
	MisResultAction(AddMoney, 1300, 1300)




----------------------------------------
--                                    --
--        加勒比海盗普通任务          --
--                                    --
----------------------------------------

-- 灵顿将军 >> 司令的牢骚

	DefineMission(476, "司令的牢骚", 438)

	MisBeginTalk("<t>刚刚从雷霆堡海军司令那来了道命令，要我过去一躺<n><t>但这里的战况瞬息万变，我实在走不开，你能帮我跑一躺吗？<n><t>是的，去问问那老家伙到底有什么事，之后回来向我报告")
	MisBeginCondition(NoRecord, 438)
	MisBeginCondition(NoMission,438)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 438)
	MisCancelAction(ClearMission, 438)
	MisHelpTalk("<t>还没出发吗？抓紧时间！")

	MisNeed(MIS_NEED_DESP, "替灵顿将军向雷霆堡海军司令问话")

	MisResultCondition(AlwaysFailure)

-- 雷霆堡海军司令 >> 司令的牢骚
	DefineMission(477,"司令的牢骚",438,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>什么，灵顿将军不能抽身前来，真遗憾啊，算了。")

	MisResultCondition(HasMission, 438)
	MisResultCondition(NoRecord, 438)
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 438)
	MisResultAction(SetRecord, 438)

	
-- 雷霆堡海军司令 >> 司令的秘密
	DefineMission(478, "司令的秘密", 439)

	MisBeginTalk("<t>既然灵顿将军不能抽身前来，那么请你帮我把这封信转交给他<n><t>这是军事机密，一定要在绝对安全的状态下送到！")
	MisBeginCondition(HasRecord, 438)
	MisBeginCondition(NoRecord, 439)
	MisBeginCondition(NoMission,439)
	MisBeginCondition(HasNavyGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 439)
	MisBeginAction(GiveItem, 2430, 1, 4)
	MisCancelAction(ClearMission, 439)
	MisHelpTalk("<t>还没出发吗？请抓紧时间！")
	MisNeed(MIS_NEED_DESP, "将雷霆堡海军司令的书信转交给灵顿将军，一定要安全送到")

	MisResultCondition(AlwaysFailure)

-- 灵顿将军 >> 司令的秘密

	DefineMission(479,"司令的秘密",439,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>这就是雷霆堡海军司令的命令吗？看来现在咱们必须做点什么了<n><t>军士，你先下去休息一下，之后来我这里，又有新的麻烦了。")

	MisResultCondition(HasMission, 439)
	MisResultCondition(NoRecord, 439)

	MisResultCondition(HasItem, 2430,1 )
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 439)
	MisResultAction(TakeItem, 2430,1 )
	MisResultAction(SetRecord, 439)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)


-- 灵顿将军 >> 海军的武器

	DefineMission(480, "海军的武器", 440)

	MisBeginTalk("<t>准备好了吗？下面是给你的委任状，请听仔细了！<n><t>我代表海军司令部命令你，潜入亡灵的军械库，消灭一部分亡灵，并从他们身上给我带回5个亡灵之魂")

	MisBeginCondition(HasRecord, 439)
	MisBeginCondition(NoMission, 440)
	MisBeginCondition(NoRecord, 440)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 440)
	MisBeginAction(AddTrigger, 4401, TE_GETITEM, 2386, 5)

	MisNeed(MIS_NEED_ITEM, 2386, 5, 10, 5)

	MisCancelAction(ClearMission, 440)
	
	MisHelpTalk("<t>还没收集到5个亡灵之魂吗？加把劲~胜利离我们不远了！")
	
	MisResultTalk("<t>不错，就是这些了，你做得非常好，我现在在考虑是不是该给你升职了，这些是你的奖励，")

	MisResultCondition(HasMission, 440)
	MisResultCondition(NoRecord, 440)
	MisResultCondition(HasItem, 2386, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2386, 5)
	MisResultAction(ClearMission, 440)
	MisResultAction(SetRecord, 440)
	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2386)
	TriggerAction(1, AddNextFlag, 440, 10, 5)
	RegCurTrigger(4401)

-- 灵顿将军 >> 海军秘籍
	
	DefineMission(481,"海军秘籍",441)

	MisBeginTalk("<t>经过前一阵的准备工作，亡灵军团的战斗力已经被大大削弱了<n><t>同时我军也总结出了一套海军秘籍，不过这本秘籍现在被亡灵军团偷走了，这简直是我军的耻辱<n><t>我要你潜入亡灵海军的秘密基地，收集所有散落的海军秘籍残页(1 ~ 8)，并从亡灵司令身上取得强力胶水<n><t>然后将这些东西带回来给我。")


	MisBeginCondition(HasRecord, 440)
	MisBeginCondition(NoRecord, 441)
	MisBeginCondition(NoMission, 441)

	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 441)

	MisBeginAction(AddTrigger, 4411, TE_GETITEM, 2388, 1)
	MisBeginAction(AddTrigger, 4412, TE_GETITEM, 2389, 1)
	MisBeginAction(AddTrigger, 4413, TE_GETITEM, 2390, 1)
	MisBeginAction(AddTrigger, 4414, TE_GETITEM, 2391, 1)
	MisBeginAction(AddTrigger, 4415, TE_GETITEM, 2392, 1)
	MisBeginAction(AddTrigger, 4416, TE_GETITEM, 2393, 1)
	MisBeginAction(AddTrigger, 4417, TE_GETITEM, 2394, 1)
	MisBeginAction(AddTrigger, 4418, TE_GETITEM, 2395, 1)
	MisBeginAction(AddTrigger, 4419, TE_GETITEM, 2441, 1)

	MisNeed(MIS_NEED_ITEM, 2388, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2389, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2390, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2391, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2392, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2393, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2394, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2395, 1, 80, 1)
	MisNeed(MIS_NEED_ITEM, 2441, 1, 90, 1)

	MisCancelAction(ClearMission, 441)

	MisHelpTalk("<t>一定不能让亡灵们从海军秘籍中学到我们的战斗方略")
	
	MisResultTalk("<t>这…就是这个…你真是我们的英雄！<n><t>简直太好了，我无法用语言形容我此刻的心情，让我好好冷静下…对了…这些是你应得的报酬，先拿着吧")

	MisResultCondition(HasMission, 441)
	MisResultCondition(NoRecord, 441)
	MisResultCondition(HasItem, 2388, 1)
	MisResultCondition(HasItem, 2389, 1)
	MisResultCondition(HasItem, 2390, 1)
	MisResultCondition(HasItem, 2391, 1)
	MisResultCondition(HasItem, 2392, 1)
	MisResultCondition(HasItem, 2393, 1)
	MisResultCondition(HasItem, 2394, 1)
	MisResultCondition(HasItem, 2395, 1)
	MisResultCondition(HasItem, 2441, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2388, 1)
	MisResultAction(TakeItem, 2389, 1)
	MisResultAction(TakeItem, 2390, 1)
	MisResultAction(TakeItem, 2391, 1)
	MisResultAction(TakeItem, 2392, 1)
	MisResultAction(TakeItem, 2393, 1)
	MisResultAction(TakeItem, 2394, 1)
	MisResultAction(TakeItem, 2395, 1)
	MisResultAction(TakeItem, 2441, 1)

	MisResultAction(ClearMission, 441)
	MisResultAction(SetRecord, 441)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 500000, 500000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2388)
	TriggerAction(1, AddNextFlag, 441, 10, 1)
	RegCurTrigger(4411)

	InitTrigger()
	TriggerCondition(1, IsItem, 2389)
	TriggerAction(1, AddNextFlag, 441, 20, 1)
	RegCurTrigger(4412)

	InitTrigger()
	TriggerCondition(1, IsItem, 2390)
	TriggerAction(1, AddNextFlag, 441, 30, 1)
	RegCurTrigger(4413)

	InitTrigger()
	TriggerCondition(1, IsItem, 2391)
	TriggerAction(1, AddNextFlag, 441, 40, 1)
	RegCurTrigger(4414)

	InitTrigger()
	TriggerCondition(1, IsItem, 2392)
	TriggerAction(1, AddNextFlag, 441, 50, 1)
	RegCurTrigger(4415)

	InitTrigger()
	TriggerCondition(1, IsItem, 2393)
	TriggerAction(1, AddNextFlag, 441, 60, 1)
	RegCurTrigger(4416)

	InitTrigger()
	TriggerCondition(1, IsItem, 2394)
	TriggerAction(1, AddNextFlag, 441, 70, 1)
	RegCurTrigger(4417)

	InitTrigger()
	TriggerCondition(1, IsItem, 2395)
	TriggerAction(1, AddNextFlag, 441, 80, 1)
	RegCurTrigger(4418)

	InitTrigger()
	TriggerCondition(1, IsItem, 2441)
	TriggerAction(1, AddNextFlag, 441, 90, 1)
	RegCurTrigger(4419)



-- 杰克史派罗 >> 求援
	DefineMission(482, "求援", 442)

	MisBeginTalk("<t>我不得不承认，亡灵军队的实力远超出我的想象，所以我决定向我的老冤家杰克船长求援<n><t>那家伙住在魔女之海，你能代我去向他求援吗？虽然成功的可能性很小。")
	MisBeginCondition(NoRecord, 442)
	MisBeginCondition(NoMission,442)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 442)
	MisCancelAction(ClearMission, 442)
	MisHelpTalk("<t>还没出发吗？我们的时间不多了")

	MisNeed(MIS_NEED_DESP, "向魔女之海的杰克船长求援")

	MisResultCondition(AlwaysFailure)


-- 杰克船长 >> 求援

	DefineMission(483,"求援",442,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>什么，那家伙竟然向我求救？真是天大的笑话！你回去告诉他<n><t>想要我的援助就乖乖的跟我来一场决斗，不然我是不会出兵的！")

	MisResultCondition(HasMission, 442)
	MisResultCondition(NoRecord, 442)
	MisBeginCondition(HasPirateGuild)

	MisResultAction(ClearMission, 442)
	MisResultAction(SetRecord, 442)

-- 杰克船长 >> 杰克又见杰克
	DefineMission(484, "杰克又见杰克", 443)

	MisBeginTalk("<t>喏，这是我的挑战书，你把这个带回去给杰克史派罗<n><t>告诉他我会在八月十五月圆之夜的聚仙楼等他，过时不候")
	MisBeginCondition(HasRecord, 442)
	MisBeginCondition(NoRecord, 443)
	MisBeginCondition(NoMission,443)
	MisBeginCondition(HasPirateGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 443)

	MisCancelAction(ClearMission, 443)
	MisBeginAction(GiveItem, 2431, 1, 4)
	MisHelpTalk("<t>还没出发吗？你在磨蹭什么？")

	MisNeed(MIS_NEED_DESP, "将杰克船长的挑战书转交给杰克史派罗")

	MisResultCondition(AlwaysFailure)


-- 杰克史派罗 >> 杰克又见杰克

	DefineMission(485,"杰克又见杰克",443,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>唉，看来那家伙是不会给我们任何帮助了，那么我们只能另找出路<n><t>让我想想。兄弟，你劳累了半天，先休息一下吧，过会我再叫你。")

	MisResultCondition(HasItem,2431,1)
	MisResultCondition(HasMission, 443)
	MisResultCondition(NoRecord, 443)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 443)
	MisResultAction(TakeItem,2431,1)
	MisResultAction(SetRecord, 443)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 50000, 50000)

-- 杰克史派罗 >> 加勒比宝藏

	DefineMission(486, "加勒比宝藏", 444)

	MisBeginTalk("<t>骷髅岛周围散落着许多聚魂棺，戴维琼斯的心脏就藏在其中的一个聚魂棺里<n><t>我想我们应该好好利用一下，你愿意协助我吗，帮我找到戴维琼斯的心脏<n><t>我想我们就有足够的实力来遏止亡灵们的进攻了！")

	MisBeginCondition(HasRecord, 443)
	MisBeginCondition(NoRecord, 444)
	MisBeginCondition(NoMission, 444)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 444)
	MisBeginAction(AddTrigger, 4441, TE_GETITEM, 2444, 1)

	MisNeed(MIS_NEED_ITEM, 2444, 1, 10, 1)
	MisCancelAction(ClearMission, 444)

	MisHelpTalk("<t>已经收集齐了吗？还没有？抓紧时间啊！")

	MisResultTalk("<t>很好，这下我们有足够的金钱来组建我们的海盗军队了！")

	MisResultCondition(NoRecord, 444)
	MisResultCondition(HasMission, 444)
	MisResultCondition(HasPirateGuild)
	MisResultCondition(HasItem,2444,1)

	MisResultAction(TakeItem, 2444, 1)
	MisResultAction(ClearMission, 444)
	MisResultAction(SetRecord, 444)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2444)
	TriggerAction(1, AddNextFlag, 444, 10, 1)
	RegCurTrigger(4441)

--铁匠 >> 圣柜
	
	DefineMission(487, "圣柜", 445)

	MisBeginTalk("<t>我听说了你的事迹，不过你知道亡灵军队为什么这么疯狂的进攻吗？<n><t>告诉你吧，他们在收集一种受了诅咒的金币，目前我们还不知道他们收集这种金币做什么用，不过可以肯定的是，绝对不会是什么好事<n><t>如果你有兴趣，不妨从他们身上抢40个金币和一个带血的金币来给我，我想我可以试着把上面的诅咒解除掉。")

	MisBeginCondition(HasRecord, 444)
	MisBeginCondition(NoRecord, 445)
	MisBeginCondition(NoMission, 445)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 445)
	MisBeginAction(AddTrigger, 4451, TE_GETITEM, 2427, 1)
	MisBeginAction(AddTrigger, 4452, TE_GETITEM, 2438, 40)
	

	MisNeed(MIS_NEED_ITEM, 2427, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2438, 40, 20, 40)
	

	MisCancelAction(ClearMission, 445)
	MisHelpTalk("<t>怎么样兄弟？收集了多少了？")

	MisResultTalk("<t>不错！传说中只要这样：!^($……%*#·a2……1&s?~*#^%!……(铁匠念起了咒语)，好了！成了！<n><t>这些金币上面已经没有诅咒了，我亡灵军团应该不会再这么疯狂的进攻了吧，谢谢你了兄弟！你做得非常好")

	MisResultCondition(NoRecord, 445)
	MisResultCondition(HasMission, 445)
	MisResultCondition(HasItem, 2438, 40)
	MisResultCondition(HasItem, 2427, 1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2438, 40)
	MisResultAction(TakeItem, 2427, 1)
	MisResultAction(ClearMission ,445)
	MisResultAction(SetRecord, 445)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000, 800000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2427)
	TriggerAction(1, AddNextFlag, 445, 10, 1)
	RegCurTrigger(4451)

	InitTrigger()
	TriggerCondition(1, IsItem, 2438)
	TriggerAction(1, AddNextFlag, 445, 20, 40)
	RegCurTrigger(4452)

end
CenterMission001()