--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )

end


-- function get_map_entry_pos_abandonedcity()   --设置入口的位置的坐标（坐标（米））

	-- local POS_X=1509
	-- local POS_Y=3666
	-- return POS_X , POS_Y

--end

function init_entry(map)
    SetMapEntryMapName(map, "starena1") --设置入口的位置（地图名，坐标（米））
    SetMapEntryTime(map, "2008/9/1/19/0", "0/0/15", "0/0/0", "0/0/10") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

function map_copy_run_starena1(map_copy) 
--	local Start_time = GetMapCopyParam2(map_copy , 7)
--	if Start_time> 0 then
--		Start_time = Start_time -1
--		SetMapCopyParam2(map_copy, 7,Start_time)
--		return
--	end
--	if Start_time == 0 then
--	end
	local ply_num = GetMapCopyPlayerNum(map_copy) 
	if ply_num == 0 then 
	    CloseMapCopy ("starena1", GetMapCopyID2(map_copy)) 
	end
	local Map_Start = GetMapCopyParam2(map_copy, 8)
	local Map_Start = Map_Start + 1
	SetMapCopyParam2(map_copy, 8, Map_Start)
	local log_count = 0
	local PKMap_HasPlayers = 0
	local Team1_live = 0
	local Team2_live = 0
	local Team1_Num = GetMapCopyParam2(map_copy, 3)
	local Team2_Num = GetMapCopyParam2(map_copy, 4)
	local Max_PlayerNum = 30
	local Team_type = GetMapCopyParam2(map_copy, 1)
	local Team1_PlayerNum = 0
	local Team2_PlayerNum = 0

	
	local Winner_Is = GetMapCopyParam2( map_copy, 5 )
	if Winner_Is == -1 then
		SetMapCopyParam2(map_copy, 6, 11 )
	end
	if Winner_Is > -1 then
		local Time_count = GetMapCopyParam2(map_copy, 6)
		local Time_count = Time_count - 1
		SetMapCopyParam2(map_copy, 6,Time_count)
		
		if Time_count == 0 then
			CloseMapCopy ("starena1", GetMapCopyID2(map_copy))
		end
	end		
	BeginGetMapCopyPlayerCha ( map_copy )
	for i = 0 ,Max_PlayerNum - 1 , 1 do
		PKMap_HasPlayers = GetMapCopyNextPlayerCha ( map_copy )
		if PKMap_HasPlayers ~= 0 and PKMap_HasPlayers ~= nil then
		local Time_count = GetMapCopyParam2(map_copy, 6)
			local Time_num = Time_count / 5
			log_count = log_count + 1
			if Time_num == math.floor ( Time_num ) then
				SystemNotice ( PKMap_HasPlayers , "战斗结束，地图将于"..Time_count.."秒后关闭")
				if Team_type == 1 then
				local Team_Num_get = GetChaTeamID( PKMap_HasPlayers )
					if Team_Num_get == Winner_Is then
						SystemNotice ( PKMap_HasPlayers , "你所在的队伍赢得了这场战斗" )
					end
				end
			end
			
			local Hp = Hp( PKMap_HasPlayers )		
			local Lv = Lv( PKMap_HasPlayers )
			if Hp > 0 then
				if Team_type == 1 then
					local Team_Num_get = GetChaTeamID( PKMap_HasPlayers )
					if Team_Num_get == 0 then
						LG("starena1","队伍ID为0")
						Map_Start = 0
						SetMapCopyParam2(map_copy, 8, Map_Start)  -----如果队伍信息未到达则地图开启标志置0
						return
					end
					if Team1_Num == Team_Num_get then
						Team1_live = Team1_live + 1
						Team1_PlayerNum = Team1_PlayerNum + 1
						Team1_PlayerLv = Team1_PlayerLv + Lv

					elseif Team2_Num == Team_Num_get then
						Team2_live = Team2_live + 1
						Team2_PlayerNum = Team2_PlayerNum + 1
						Team2_PlayerLv = Team2_PlayerLv + Lv
					end
				-- elseif Team_type == 2 then
					-- local Player = GetChaPlayer( PKMap_HasPlayers )
					-- local Player_ID_get = GetPlayerID( Player )
					-- if Player_ID_get == 0 then
						-- LG("teampk","玩家ID为0")
						-- Map_Start = 0
						-- SetMapCopyParam2(map_copy, 8, Map_Start)  -----如果队伍信息未到达则地图开启标志置0
						-- return
					-- end
					if Team1_Num == Player_ID_get then
						Team1_live = Team1_live + 1
						Team1_PlayerNum = Team1_PlayerNum + 1
						Team1_PlayerLv = Team1_PlayerLv + Lv
					elseif Team2_Num == Player_ID_get then
						Team2_live = Team2_live + 1
						Team2_PlayerNum = Team2_PlayerNum + 1
						Team2_PlayerLv = Team2_PlayerLv + Lv
					end
				end
				if Time_count == 1 then
					 MoveCity( PKMap_HasPlayers, "白银酒馆" )
				end
			end
		end
	end
end	

function before_leave_starena1 ( role , map_copy )
--	SystemNotice (role , "离开啦")
	local Cha = TurnToCha( role ) 
	local Winner_Is = GetMapCopyParam2( map_copy, 5 )
	local Cha_TeamID = GetChaTeamID ( Cha )
	local Player = GetChaPlayer( Cha )
	local Cha_ID = GetPlayerID( Player )
	local PK_type = GetMapCopyParam2( map_copy , 1 )
	local Team1_ID = GetMapCopyParam2( map_copy , 3 )
	local Team2_ID = GetMapCopyParam2( map_copy , 4 )
	--local base_rongyu = 2
	--local rongyu_dif = 0
	--local Team1_Lv = GetMapCopyParam2( map_copy , 9 )
	--local Team2_Lv = GetMapCopyParam2( map_copy , 10)
	local Team1_PlayerNum = GetMapCopyParam2( map_copy , 11 )
	local Team2_PlayerNum = GetMapCopyParam2( map_copy , 12 )
	
	--local Team1_Rongyu_get = ( base_rongyu * Team2_PlayerNum )
	--local Team2_Rongyu_get = ( base_rongyu * Team1_PlayerNum )
	--local Team1_Lv_dif = Team1_Lv - Team2_Lv
	--local Team2_Lv_dif = Team2_Lv - Team1_Lv
	
	--local Rongyu_get = 0
	--local Player_Lv_dif = 0
	if Winner_Is == Cha_TeamID then
			local csk_num = 0
			csk_num = CheckBagItem( role,5848 )

			if csk_num == 0 then
				return
			elseif csk_num > 1 then
				LG("RYZ_PK","超过一个参赛卡")
				return
			end
			local Cha_CSK = GetChaItem2 ( Cha , 2 , 5848 )
			local attrtype = ITEMATTR_VAL_DEX
			local lc_num = GetItemAttr ( Cha_CSK , ITEMATTR_VAL_DEX )
			local num = lc_num + 1
			
--			SystemNotice ( role , "胜利增加胜利场数")
			Add_ItemAttr_CSK ( role , Cha_CSK , attrtype , num )
			SystemNotice ( role , "胜利增加轮次"..num )		
		end
	end	
end


			
		