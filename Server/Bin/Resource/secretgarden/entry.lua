--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local guild_lv = GetFightGuildLevel() 
    local RedSide_GuildID, BlueSide_GuildID = GetFightGuildID(guild_lv) 
    
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    SetMapCopyParam(copy_mgr, 1, 3) --在第一个位置存入分边类型
    SetMapCopyParam(copy_mgr, 2, 2) --在第二个位置存入分边数
    SetMapCopyParam(copy_mgr, 3, RedSide_GuildID) 
    SetMapCopyParam(copy_mgr, 4, BlueSide_GuildID)
    SetMapCopyParam(copy_mgr, 5, 0) --在第5个位置放入胜负关系初值
    FinishSetMapEntryCopy(entry, 1) 

    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "公会挑战赛 : ["..RedSideName.."]  VS  ["..BlueSideName.."]"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("海盗广播：公会挑战赛现在开始，对阵的双方公会是－－红方擂主 “["..RedSideName.."]”，蓝方挑战者“["..BlueSideName.."]”，双方公会的成员可以通过魔女之海“["..posx..","..posy.."]”处的漩涡进入竞技花园") --通知本组服务器的所有玩家

end

function after_destroy_entry_secretgarden(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("海盗广播：今天的公会挑战赛已经结束了") 

end

function after_player_login_secretgarden(entry, player_name)
    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "海盗广播：公会挑战赛现在开始，对阵的双方公会是－－红方擂主 “["..RedSideName.."]”，蓝方挑战者“["..BlueSideName.."]”，双方公会的成员可以通过魔女之海“["..posx..","..posy.."]”处的漩涡进入竞技花园") --通知本组服务器的所有玩家

end

--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_secretgarden( role, copy_mgr )
	local Cha = TurnToCha(role)

    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )


	if RedSide_GuildID == 0 or BlueSide_GuildID == 0 then
		SystemNotice ( role , "对不起，没有挑战公会无法开始挑战" )
		return 0
	end

	if RedSide_GuildID == GetChaGuildID(Cha) then

		return 1
	
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then

			return 1

		else
			SystemNotice(role,"对不起，您不是今天交战双方的公会成员，此通道只允许参战双方的公会成员进入")
			return 0

		end

	end
end

function begin_enter_secretgarden(role, copy_mgr) 
    
	local Cha = TurnToCha(role)

    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam(copy_mgr, 3)
    BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4)

	if RedSide_GuildID == GetChaGuildID(Cha) then

		SystemNotice(role,"开始进入《竞技花园》")
		MoveCity(role, "红方阵营")
	
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then

			SystemNotice(role,"开始进入《竞技花园》")
			MoveCity(role, "蓝方阵营")
                end
	end

end 
