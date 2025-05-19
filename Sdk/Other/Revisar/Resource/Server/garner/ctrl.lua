--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)

end


function get_map_entry_pos_garner()   --设置入口的位置的坐标（坐标（米））

end

function init_entry(map)

end

function after_enter_garner( role , map_copy )
end

function before_leave_garner( role )
end

function map_copy_first_run_garner( map_copy )

end

function map_copy_run_garner( map_copy )
end

--每5秒执行一次的
function map_run_garner( map )
	----记录当前系统时间
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
--	Notice("Now_WeekNum=="..Now_WeekNum)
	
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
--	Notice("NowTimeNum=="..NowTimeNum)
	
	local Now_Minite = os.date("%M")
	local NowMiniteNum = tonumber(Now_Minite)
--	Notice("NowMiniteNum=="..NowMiniteNum)
	
	local Now_Scend=  os.date("%S")		-----秒
	local Now_ScendNum = tonumber(Now_Scend)
--	 Notice("Now_ScendNum"..Now_ScendNum)
	
	local CheckTimeNum=NowTimeNum*3600+NowMiniteNum*60+Now_ScendNum
--	 Notice("CheckTimeNum=="..CheckTimeNum)
	 
	local time_mod=math.mod(CheckTimeNum,5)
--	 Notice("time_mod=="..time_mod)
	TimeNum = TimeNum+5 
	local i = 0
	local  no1 = 0
	local  no2 = 0
	local  no3 = 0
	local  no4 = 0
	local  no5 = 0
	local  no6 = 0
	local  no0 = 0
--	Notice("号码嘿嘿==")
	
	if Now_WeekNum == 6 and NowTimeNum == 19 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55 and  i < 1  then   				-----触发产生期号
			local issue = GetLotteryIssue()
	---		Notice("issue=="..issue)
			Notice (" 彩票马上要更新下一期了!填写好彩票的玩家去2296,2824准备兑换大奖喽!")
			local winItemno = CalWinLottery(issue, 2)
	---		Notice("中奖彩票产生winItemno"..winItemno)
			i = i + 1
		
--	no1 =GetWinLotteryItemno(issue, 1)         --中奖号码个位
--	Notice("no1=="..no1)
--	no2 =GetWinLotteryItemno(issue, 2)          --中奖号码十位
--	Notice("no2=="..no2)
--	no3 =GetWinLotteryItemno(issue, 3)          --中奖号码百位
--	Notice("no3=="..no3)
--	no4 =GetWinLotteryItemno(issue, 4)          --中奖号码千位
--	Notice("no4=="..no4)
--	no5=GetWinLotteryItemno(issue, 5)          --中奖号码万位
--	Notice("no5=="..no5)
--	no6 =GetWinLotteryItemno(issue, 6)          --中奖号码十万位
--	Notice("no6=="..no6)
--	no0 =GetWinLotteryItemno(issue, 0)          --中奖号码全部
--	Notice("no0=="..no0)
	end
	
		if CheckTimeNum>=72000 and CheckTimeNum<72005 then              ---每十五分钟广播一位中奖号码，从个位开始
		local issue = GetLotteryIssue()
		no1 = GetWinLotteryItemno(issue-1,1)
		Notice ("彩票大奖已经开出，要购买下期彩票的玩家到2293,2824找彩票贩卖员彼德买彩票!")
		Notice("中奖号码的十万位数是："..no1)
		end

		if CheckTimeNum>=72900 and CheckTimeNum<72905 then               --十位
		 local issue = GetLotteryIssue()
		no2 = GetWinLotteryItemno(issue-1,2)
		Notice("中奖号码的万位数是："..no2)
                 end

		if CheckTimeNum>=73800 and CheckTimeNum<73805 then               --百位
		local issue = GetLotteryIssue()
		no3 = GetWinLotteryItemno(issue-1,3)
		Notice("中奖号码的千位数是："..no3)
		end

		if CheckTimeNum>=74700 and CheckTimeNum<74705 then               --千位
		local issue = GetLotteryIssue()
		no4 = GetWinLotteryItemno(issue-1,4)
		Notice("中奖号码的百位数是："..no4)
		end

		if CheckTimeNum>=75600 and CheckTimeNum<75605 then               --万位
		local issue = GetLotteryIssue()
		no5 = GetWinLotteryItemno(issue-1,5)
		Notice("中奖号码的十位数是："..no5)
		end

		if CheckTimeNum>=76500 and CheckTimeNum<76505 then               --十万位
		local issue = GetLotteryIssue()
		no6 = GetWinLotteryItemno(issue-1,6)
		Notice("中奖号码的个位数是："..no6)
                end
		
		if CheckTimeNum>=77400 and CheckTimeNum<77405 then               --十万位
		local issue = GetLotteryIssue()
		 local NOWqihao = issue - 1
		Notice("大奖已经开出，现在到2296,2824可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("本期可兑换的中奖号码是："..no0)
                end

		if CheckTimeNum>=77700 and CheckTimeNum<77705 then               --十万位
		local issue = GetLotteryIssue()
		local NOWqihao = issue - 1
		Notice("大奖已经开出，现在到2296,2824可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("本期可兑换的中奖号码是："..no0)
                end


		if CheckTimeNum>=78000 and CheckTimeNum<78005 then               --十万位
		local issue = GetLotteryIssue()
		local NOWqihao = issue - 1
		Notice("大奖已经开出，现在到2296,2824可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("本期可兑换的中奖号码是："..no0)
                end
		
		if CheckTimeNum>=78300 and CheckTimeNum<78305 then               --十万位
		local issue = GetLotteryIssue()
		local NOWqihao = issue - 1
		Notice("大奖已经开出，现在到2296,2824可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
		no0 = GetWinLotteryItemno(issue-1,0)
		Notice("本期可兑换的中奖号码是："..no0)
                end
		TimeNum=0	

end

--地图关闭时执行
function map_copy_close_garner ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_garner( map ) 
end 