--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_sdBoss()   --设置入口的位置的坐标（坐标（米））

end

function init_entry(map)

end

function after_enter_sdBoss( role , map_copy )
end

function before_leave_sdBoss( role )
end

function map_copy_first_run_sdBoss( map_copy )

end

function map_copy_run_sdBoss( map_copy )
end

--每5秒执行一次的
function map_copy_run_sdBoss( map_copy )
	if XmasMonsterNum1 >= 2008 and CheckBoss1Dead == 1 then
		Notice ( "由于大家不停的捕猎火鸡,冥皇-卡拉幻象降临在圣诞竞技场A了,大家快去打啊!")
		monster1 = CreateChaEx(1047, 6312, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster1,900000)
		XmasMonsterNum1 = 0
	end
	if XmasMonsterNum2 >= 2008 and CheckBoss2Dead == 1 then
		Notice ( "由于大家不停的捕猎麋鹿,死亡骑士幻象降临在圣诞竞技场B了,大家快去打啊!")
		monster2 = CreateChaEx(1049, 49612, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster2,900000)
		XmasMonsterNum2 = 0
	end
	if XmasMonsterNum3 >= 2008 and CheckBoss3Dead == 1 then
		Notice ( "由于大家不停的捕猎雪人,冥王-哈迪斯幻象降临在圣诞竞技场C了,大家快去打啊!")
		monster3 = CreateChaEx(1048, 92812, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster3,900000)
		XmasMonsterNum3 = 0
	end
	if XmasMonsterNum4 >= 6000 and CheckBoss4Dead == 1 then
		Notice ( "由于大家不停的捕猎火鸡以及麋鹿,巴伯萨幻象降临在圣诞竞技场D了,大家快去打啊!")
		monster4 = CreateChaEx(1050, 6312, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster4,900000)
		XmasMonsterNum4 = 0
	end
	if XmasMonsterNum5 >= 8000 and CheckBoss5Dead == 1 then
		Notice ( "由于大家不停的捕猎火鸡,麋鹿以及雪人,雪殇灵幻象降临在圣诞竞技场E了,大家快去打啊!")
		monster5 = CreateChaEx(1051, 49612, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster5,900000)
		XmasMonsterNum5 = 0
	end
	CheckBoss1Dead	= CheckMonsterDead ( monster1 )
	CheckBoss2Dead	= CheckMonsterDead ( monster2 )
	CheckBoss3Dead	= CheckMonsterDead ( monster3 )
	CheckBoss4Dead	= CheckMonsterDead ( monster4 )
	CheckBoss5Dead	= CheckMonsterDead ( monster5 )
end

--地图关闭时执行
function map_copy_close_sdBoss( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_sdBoss( map ) 
end 