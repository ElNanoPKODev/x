----------------------------------------------------------------------------------------------------
function Item_Stoneeffect(Stone_Type1,Stone_Type2,Stone_Type3)
	if Stone_Type1 == Stone_Type2 then
		Stone_Type1 = -1
	end
	if Stone_Type1 == Stone_Type3 then
		Stone_Type1 = -1
	end
	if Stone_Type2 == Stone_Type3 then
		Stone_Type2 = -1
	end
	local jia = Stone_Type1 + Stone_Type2 + Stone_Type3
	local cheng = Stone_Type1 * Stone_Type2 * Stone_Type3
	if cheng > 0 then
		if jia == -1 then
			return 1
		elseif jia == 0 then
			return 2
		elseif jia == 1 then
			return 3
		elseif jia == 2 then
			return 4
		elseif jia == 6 then
			return 11
		elseif jia == 7 then
			return 12
		elseif jia == 8 then
			return 13
		elseif jia == 9 then
			return 14
		end
	elseif cheng < 0 then
		if jia == 2 then
			return 5
		elseif jia == 3 then
			return 6
		elseif jia == 4 then
			if cheng == -4 then
				return 7
			elseif cheng == -6 then
				return 8
			end
		elseif jia == 5 then
			return 9
		elseif jia == 6 then 
			return 10
		end
	end
	return 0
end
----------------------------------------------------------------------------------------------------
function GetNum_Part1(Num)
	local a = 0
	a = math.floor(Num / 1000000000)
	return a
end
----------------------------------------------------------------------------------------------------
function GetNum_Part2(Num)
	local a = 0
	local b = 0
	a = Num - GetNum_Part1(Num) * 1000000000
	b = math.floor (a / 10000000)
	return b
end
----------------------------------------------------------------------------------------------------
function GetNum_Part3(Num)
	local a = 0
	local b = 0
	a = Num - math.floor(Num / 10000000) * 10000000
	b = math.floor(a / 1000000)
	return b
end
----------------------------------------------------------------------------------------------------
function GetNum_Part4(Num)
	local a = 0
	local b = 0
	a = Num - math.floor(Num / 1000000) * 1000000
	b = math.floor(a / 10000)
	return b
end
----------------------------------------------------------------------------------------------------
function GetNum_Part5(Num)
	local a = 0
	local b = 0
	a = Num -  math.floor(Num / 10000) * 10000
	b = math.floor(a / 1000)
	return b
end
----------------------------------------------------------------------------------------------------
function GetNum_Part6(Num)
	local a = 0
	local b = 0
	a = Num - math.floor(Num / 1000) * 1000
	b = math.floor(a / 10)
	return b
end
----------------------------------------------------------------------------------------------------
function GetNum_Part7(Num)
	local a = 0
	local b = 0
	a = Num - math.floor(Num / 10) * 10
	b = math.floor(a / 1)
	return b
end
----------------------------------------------------------------------------------------------------
function SetNum_Part1(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part1(Num)
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end
----------------------------------------------------------------------------------------------------
function SetNum_Part2(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part2(Num)
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end
----------------------------------------------------------------------------------------------------
function SetNum_Part3(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part3(Num)
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end
----------------------------------------------------------------------------------------------------
function SetNum_Part4(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part4(Num)
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end
----------------------------------------------------------------------------------------------------
function SetNum_Part5(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part5(Num)
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end
----------------------------------------------------------------------------------------------------
function SetNum_Part6(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part6(Num)
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end
----------------------------------------------------------------------------------------------------
function SetNum_Part7(Num,Part_Num)
	local a = 0
	local b = 0
	a = GetNum_Part7(Num)
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end
----------------------------------------------------------------------------------------------------
function Get_HoleNum(Num)
	local a = GetNum_Part1(Num)
	return a
end
----------------------------------------------------------------------------------------------------
function Get_Stone_1(Num)
	local Stone_1 = 0
	Stone_1 = GetNum_Part2(Num)
	return Stone_1
end
function Get_StoneLv_1(Num)
	local Stone_1 = 0
	Stone_1 = GetNum_Part3(Num)
	return Stone_1
end
----------------------------------------------------------------------------------------------------
function Get_Stone_2(Num)
	local Stone_2 = 0
	Stone_2 = GetNum_Part4(Num)
	return Stone_2
end
----------------------------------------------------------------------------------------------------
function Get_StoneLv_2(Num)
	local Stone_2 = 0
	Stone_2 = GetNum_Part5(Num)
	return Stone_2
end
----------------------------------------------------------------------------------------------------
function Get_Stone_3(Num)
	local Stone_3 = 0
	Stone_3 = GetNum_Part6(Num)
	return Stone_3
end
----------------------------------------------------------------------------------------------------
function Get_StoneLv_3(Num)
	local Stone_3 = 0
	Stone_3 = GetNum_Part7(Num)
	return Stone_3
end
----------------------------------------------------------------------------------------------------
-- Gem Hint
----------------------------------------------------------------------------------------------------
function ItemHint_LieYanS(Lv)
	local eff = Lv * 4
	local Hint = "附加攻击力"..eff
	return Hint
end
function ItemHint_ZhiYanS(Lv)
	local eff = Lv * 6
	local Hint = "附加攻击力"..eff
	return Hint
end
function ItemHint_HuoYaoS(Lv)
	local eff = Lv * 10
	local Hint = "附加攻击力"..eff
	return Hint
end
function ItemHint_MaNaoS(Lv)
	local eff = Lv * 5
	local Hint = "附加命中"..eff
	return Hint
end
function ItemHint_HanYu(Lv)
	local eff = Lv * 5
	local Hint = "附加防御力"..eff
	return Hint
end
function ItemHint_YueZhiX(Lv)
	local eff = Lv * 100
	local Hint = "附加最大HP"..eff
	return Hint
end
function ItemHint_ShuiLingS(Lv)
	local eff = Lv * 2
	local Hint = "附加回避"..eff
	return Hint
end
function ItemHint_ShengGuangS(Lv)
	local eff = Lv * 1
	local Hint = "附加精神"..eff
	return Hint
end
function ItemHint_FengLingS(Lv)
	local eff = Lv * 5
	local Hint = "附加敏捷"..eff
	return Hint
end
function ItemHint_YingYanS(Lv)
	local eff = Lv * 5
	local Hint = "附加专注"..eff
	return Hint
end
function ItemHint_YanVitS(Lv)
	local eff = Lv * 5
	local Hint = "附加体质"..eff
	return Hint
end
function ItemHint_YanStrS(Lv)
	local eff = Lv * 5
	local Hint = "附加力量"..eff
	return Hint
end
function ItemHint_LongZhiTong(Lv)
	local eff = Lv * 50
	local Hint = "附加攻击"..eff
	return Hint
end
function ItemHint_LongZhiHun(Lv)
	local eff = Lv * 3
	local Hint = "附加抵抗"..eff
	return Hint
end
function ItemHint_LongZhiXin(Lv)
	local eff = Lv * 500
	local Hint = "附加最大HP"..eff
	return Hint
end
function ItemHint_GaNaZhiShen(Lv)
	local eff = Lv * 5
	local Hint = "附加精神"..eff
	return Hint
end
function ItemHint_HuangYu(Lv)
	local eff = Lv * 10
	local Hint = "附加防御"..eff
	return Hint
end
function ItemHint_ChiYu(Lv)
	local eff = Lv * 200
	local Hint = "附加最大HP"..eff
	return Hint
end
function ItemHint_QingYu(Lv)
	local eff = Lv * 200
	local Hint = "附加最大SP"..eff
	return Hint
end
function ItemHint_XTLingGuang(Lv)
	local eff = Lv * 10
	local Hint = "附加爆击率"..eff
	return Hint
end
function ItemHint_LKBiZhong(Lv)
	local eff = Lv * 10
	local Hint = "附加命中率"..eff
	return Hint
end
function ItemHint_BBDuoShan(Lv)
	local eff = Lv * 10
	local Hint = "附加闪躲"..eff
	return Hint
end
function ItemHint_FFDiYu(Lv)
	local eff = Lv * 15
	local Hint = "附加防御"..eff
	return Hint
end
function ItemHint_XKQiangHua(Lv)
	local eff = Lv * 300
	local Hint = "附加最大HP"..eff
	return Hint
end
function ItemHint_SShuiyao(Lv)
	local eff = Lv * 8
	local Hint = "附加力量"..eff
	return Hint
end
function ItemHint_SSbusi(Lv)
	local eff = Lv * 8
	local Hint = "附加体质"..eff
	return Hint
end
function ItemHint_SSguangmang(Lv)
	local eff = Lv * 8
	local Hint = "附加精神"..eff
	return Hint
end
function ItemHint_SSningju(Lv)
	local eff = Lv * 8
	local Hint = "附加专注"..eff
	return Hint
end
function ItemHint_SSxuanwu(Lv)
	local eff = Lv * 8
	local Hint = "附加敏捷"..eff
	return Hint
end
function ItemHint_ABOLUO(Lv)
	local Hint = "可以解开宙斯的黑匣"
	return Hint
end
function ItemHint_QIUBITE(Lv)
	local Hint = "可以解开宙斯的黑匣"
	return Hint
end
function ItemHint_YADIANNA(Lv)
	local Hint = "可以解开宙斯的黑匣"
	return Hint
end
----------------------------------------------------------------------------------------------------
function GetElfSkill(Num)
	local Part2 = GetNum_Part2(Num)
	local Part3 = GetNum_Part3(Num)
	local Part4 = GetNum_Part4(Num)
	local Part5 = GetNum_Part5(Num)
	local Part6 = GetNum_Part6(Num)
	local Part7 = GetNum_Part7(Num)
	return Part3,Part2,Part5,Part4,Part7,Part6
end