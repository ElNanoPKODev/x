------------------------------------------------------------
--EventEntity.lua Created by knight 2005.5.16.
--
--定义各个地图上的事件实体
print( "loading EventEntity.lua" )
-------------------------------------------------------------

--初始化魔女之海的事件实体信息
function InitGarnerEntity()

	--创建魔女之海港口实体
	CreateBerthEntity( "入港", 455, 2, 84421,368426,-10, 3, 829,3687, 0 )
	CreateBerthEntity( "入港", 455, 2, 236937,75485,-10, 8, 2376,725, 0 )
	CreateBerthEntity( "入港", 455, 2, 176139,377241,-10, 9, 1730,3775, 0 )
	CreateBerthEntity( "入港", 455, 2, 252668,237595,-10, 10, 2529,2406, 0 )
	
	--创建箱子实体
	CreateResourceEntity( "蘑菇孢子", 472, 3, 129900, 341800, 129, 4100, 1, 180 )
	CreateResourceEntity( "蘑菇孢子", 472, 3, 123800, 342800, 129, 4100, 1, 180 )
	CreateResourceEntity( "蘑菇孢子", 472, 3, 127800, 346700, 129, 4100, 1, 180 )
	CreateResourceEntity( "抢来的箱子", 456, 3, 65021, 332061, 144, 4099, 1, 180 )
	CreateResourceEntity( "钱箱", 456, 3, 106647, 295511, 144, 4101, 1, 180 )





end

InitGarnerEntity()