--------------------------------------------------------------------------
--									--
--									--
--mission.lua Created by Robin 2004.12.27.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading mission.lua" )

--lua函数返回值定义
LUA_FALSE					= 0
LUA_TRUE					= 1

MIS_TREENODE_INVALID	= 0	-- 无效类型
MIS_TREENODE_NOMAL		= 1	-- 普通任务
MIS_TREENODE_HISTORY	= 2	-- 历史任务
MIS_TREENODE_GUILD		= 3	-- 工会任务
		
MisData = {}

function AddMisData( id, name, tp )
	if id == nil or name == nil or tp == nil then
		print( "AddMisData:函数参数错误！id = , name = , tp = ", id, name, tp )
		return
	end
	
	if MisData[id] ~= nil then
		print( "AddMisData:设置任务数据时原有ID任务数据被覆盖！原有数据id = , name = , tp = , 新的数据id = , name = , tp = ", id, MisData[id].name, MisData[id].tp, id, name, tp )
	end
	
	MisData[id] = {}
	MisData[id].name = name
	MisData[id].tp = tp
	
	--print( "设置任务：《"..name.."》 ID["..id.."] Type["..tp.."]" )
end

function GetMisData( id )
	if id == nil then
		print( "GetMisData:获取任务信息，参数错误！id = nil" )
		return LUA_FALSE
	end
	
	if MisData[id] == nil or MisData[id].name == nil or MisData[id].tp == nil then
		--print( "GetMisData:获取任务信息失败！未发现该任务数据信息。ID = "..id )
		return LUA_FALSE
	end
	
	return LUA_TRUE, MisData[id].tp, MisData[id].name
end

AddMisData( 100, "测试名称", MIS_TREENODE_NOMAL )