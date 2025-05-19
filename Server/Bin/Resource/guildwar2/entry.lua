--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry,193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("海盗广播：在冰狼堡外的["..posx..","..posy.."]位置附近发现一个通往《小圣战》(45级到64级)的入口！") --通知本组服务器的所有玩家


    
--local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
--    SetMapCopyParam(copy_mgr, 1, 3) --在第一个位置存入分边类型
--    SetMapCopyParam(copy_mgr, 2, 2) --在第二个位置存入分边数
--    SetMapCopyParam(copy_mgr, 3, HaiJunSide) 
--    SetMapCopyParam(copy_mgr, 4, HaiDaoSide)
--    SetMapCopyParam(copy_mgr, 5, 0) --在第5个位置放入胜负关系初值
--    FinishSetMapEntryCopy(entry, 1) 

    --local RedSideName = GetGuildName( RedSide_GuildID ) 
    --local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "圣战入口: [海军阵营]  VS  [海盗阵营] (45级到64级)"
    SetMapEntryEventName( entry, EntryName )
    
    --map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    --Notice("海盗广播：公会挑战赛现在开始，对阵的双方公会是－－红方擂主 “["..RedSideName.."]”，蓝方挑战者“["..BlueSideName.."]”，双方公会的成员可以通过魔女之海“["..posx..","..posy.."]”处的漩涡进入竞技花园") --通知本组服务器的所有玩家

end

function after_destroy_entry_guildwar2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("海盗广播：通往《小圣战》(45级到64级)的入口已经消失了，祝您愉快～！") 

end

function after_player_login_guildwar2(entry, player_name)
--    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
--    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
--    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
--    local RedSideName = GetGuildName( RedSide_GuildID ) 
--    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
   ChaNotice(player_name, "海盗广播：在冰狼堡外的["..posx..","..posy.."]位置附近发现一个通往《小圣战》(45级到64级)的入口！") --通知本组服务器的所有玩家

end




--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_guildwar2( role, copy_mgr )

local FightingBook_Num = 0
      FightingBook_Num = CheckBagItem( role,3849 )

if FightingBook_Num <= 0 then
		SystemNotice(role,"您身上没有勇者之证,不能进入圣战,请到竞技管理员处领取勇者之证")
		--Notice("您身上没有勇者之证,不能进入圣战,请到竞技管理员处领取勇者之证")
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","超过一个勇者之证")
		return 0
	end

local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "您现在处于组队状态,不能进入小圣战" )
		return 0
		
	end



	--local Cha = TurnToCha(role)

    --local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    --local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )



 if  GetChaGuildID(role) == 0 then
	

     SystemNotice(role,"对不起，您不属于海军,海盗任何一方，请不要进去冒险！")
     return 0
		
	
elseif Lv(role) < 45 or Lv(role) > 64  then

	SystemNotice(role, "进入此圣战的角色等级必须在45级到64级")
	     return 0    
	end


        local Num_1= CheckBagItem(role,4661)
	if Num_1 >= 1 then
		SystemNotice(role, "请把背包内的修理用木头去掉,才能进入")	
		return 0
	end

	local Num_2= CheckBagItem(role,4546)
	if Num_2 >= 1 then
		SystemNotice(role, "请把背包内的水晶矿石去掉,才能进入")	
		return 0
	end

	local Num_3= CheckBagItem(role,1684)
	if Num_3 >= 1 then
		SystemNotice(role, "请把背包内的坚硬龟甲去掉,才能进入")	
		return 0
	end

	local Num_4= CheckBagItem(role,1683)
	if Num_4 >= 1 then
		SystemNotice(role, "请把背包内的龟甲碎片去掉,才能进入")	
		return 0
	end

	local Num_5= CheckBagItem(role,4012)
	if Num_5 >= 1 then
		SystemNotice(role, "请把背包内的月尾绮鳝去掉,才能进入")	
		return 0
	end

	local Num_6= CheckBagItem(role,4013)
	if Num_6 >= 1 then
		SystemNotice(role, "请把背包内的海滩潜水贝去掉,才能进入")	
		return 0
	end

        local Num_7= CheckBagItem(role,2964)
	if Num_7 >= 1 then
		SystemNotice(role, "请把背包内的海军令去掉,才能进入")	
		return 0
	end

	local Num_8= CheckBagItem(role,3001)
	if Num_8 >= 1 then
		SystemNotice(role, "请把背包内的海盗令去掉,才能进入")	
		return 0
	end

	local Num_9= CheckBagItem(role,4011)
	if Num_9 >= 1 then
		SystemNotice(role, "请把背包内的射水暴鱼去掉,才能进入")	
		return 0
	end

	local Num_10= CheckBagItem(role,1720)
	if Num_10 >= 1 then
		SystemNotice(role, "请把背包内的鱼骨头去掉,才能进入")	
		return 0
	end

	local Num_11= CheckBagItem(role,2382)
	if Num_11 < 1 then
		SystemNotice(role, "请先去旁边的NPC处兑换生死令,才能进入")	
		return 0
	end

end

function begin_enter_guildwar2(role, copy_mgr) 

--local role_RY = GetChaItem2 ( role , 2 , 3849 )
--local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)
--local HonorPoint_now = HonorPoint - 15
--
--	if HonorPoint < 15 then
--		SystemNotice ( role , "您的荣誉值不够,不能进入圣战" )
--		return 0
--	else
--
--	SetItemAttr( role_RY , ITEMATTR_VAL_STR , HonorPoint_now )
--	        
--	end

    --local RedSide_GuildID, BlueSide_GuildID
    --RedSide_GuildID = GetMapCopyParam(copy_mgr, 3)
    --BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4)

     local Cha = TurnToCha(role)
     if  GetChaGuildID(Cha) <= 100 and GetChaGuildID(Cha) > 0 then
	     if count_haijun2 < 45 then
	        
	        SystemNotice(role,"进入小圣战地图")
		MoveCity(role, "guildwarnavyside2")
                count_haijun2 = count_haijun2 + 1
	      else 
	        SystemNotice(role,"海军人数已满")
	      end
	
     end	        
		
     if GetChaGuildID(Cha) > 100 and GetChaGuildID(Cha) <= 200 then
             if count_haidao2 < 45 then
	        SystemNotice(role,"进入小圣战地图")
		MoveCity(role, "guildwarpirateside2")
		count_haidao2=count_haidao2 + 1
	     else
	        SystemNotice(role,"海盗人数已满")
	     end

     end 
end


