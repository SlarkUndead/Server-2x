--地图传送 餴琺NPC
--传送
--单简完善

x002938_g_ScriptId	= 002938
x002938_g_Yinpiao = 40002000
--**********************************
--事件交互入口
--**********************************
function x002938_OnDefaultEvent( sceneId, selfId, targetId )

	-- 检测玩家身上喧ng不喧ng有“银票”C醝 n鄖 东西,有就不能使用这里to� 鸬 功能
	if GetItemCount(sceneId, selfId, x002938_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin th� l瞚 tr阯 ng叨i c醕 h� 餫ng gi� ng鈔 phi猽 ta kh鬾g th� gi鷓 疬㧟." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			--AddText( sceneId, "#W最近不知从何处来了十二c醝恶人,自称十二煞星,T読 这姓i L诤嵝形藜�,鱼肉百姓,这十二人武艺高强,嚣张跋扈,近日更喧ng有不少江湖宵小之辈投奔他们,使其势力大涨,老衲岁听闻后迅速赶来,奈何势孤力单,这可如何喧ng好?" )
			AddNumText( sceneId, x002938_g_ScriptId, "暂时离开生死擂台", 9, 101 )
			--AddNumText( sceneId, x002938_g_ScriptId, "T� Ch鈛", 9, 200 )
			--AddNumText( sceneId, x002938_g_ScriptId, "姓i L�", 9, 300 )
			--AddNumText( sceneId, x002938_g_ScriptId, "L鈛 Lan", 9, 400 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Nam H鋓", 9, 500 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Nam H鋓", 9, 600 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Tr叨ng B誧h S絥", 9, 700 )
						for i, mp in x002026_g_mpInfo do
			end
		else
			AddText( sceneId, "  Ng呓i c 等级到达10级以上,才能去别to� 鸬 Th鄋h ph� ." )
			AddNumText( sceneId, x002938_g_ScriptId, "Th鄋h ph�  - 姓i L�",  9, 1003 )
			AddNumText( sceneId, x002938_g_ScriptId, "Th鄋h ph�  - 姓i L�2", 9, 1004 )
			AddNumText( sceneId, x002938_g_ScriptId, "Th鄋h ph�  - 姓i L�3", 9, 1005 )
		end


	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x002938_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 101)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 101 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 130, 78, 10 )
	end

	if GetNumText() == 200 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 201)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 201 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  对不起您to� 鸬 Kh鬾g 瘘 ng鈔 l唼ng！无法传送" )
		AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 156, 10 )
	end

	if GetNumText() == 300 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 301)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 301 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  对不起您to� 鸬 Kh鬾g 瘘 ng鈔 l唼ng！无法传送" )
		AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 246, 106, 10 )
	end

	if GetNumText() == 400 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 401)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 401 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  对不起您to� 鸬 Kh鬾g 瘘 ng鈔 l唼ng！无法传送" )
		AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 184, 294, 90, 10 )
	end

	if GetNumText() == 500 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 501)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 501 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  对不起您to� 鸬 Kh鬾g 瘘 ng鈔 l唼ng！无法传送" )
		AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 206, 266, 10 )
	end

	if GetNumText() == 600 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 601)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 601 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  对不起您to� 鸬 Kh鬾g 瘘 ng鈔 l唼ng！无法传送" )
		AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 186, 43, 10 )
	end

	if GetNumText() == 700 then
		BeginEvent( sceneId )
					AddText( sceneId, "本次传送将花费您50银！X醕 nh传送吗?" )
			AddNumText( sceneId, x002938_g_scriptId, "X醕 nh", -1, 701)
			AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 701 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  对不起您to� 鸬 Kh鬾g 瘘 ng鈔 l唼ng！无法传送" )
		AddNumText( sceneId, x002938_g_scriptId, "H鼀 b�", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 22, 158, 113, 10 )
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	--队伍相关
	if GetTeamId(sceneId,selfId)>=0 and
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x002938_MsgBox( sceneId, selfId, targetId, "  你队伍成员中有人有漕运\货舱T読 身,我们驿站不能为你提供传送服务." )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002938_MsgBox( sceneId, selfId, targetId, "  你有漕运\货舱T読 身,我们驿站不能为你提供传送服务." )
		return
	end

	--顺利传送
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr� v排�
		if id < 0 or id >= 9 then
			x002938_MsgBox( sceneId, selfId, targetId, "  你还没有加入任何门派!" )
		else
			mp	= x002938_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--L誧 D呓ng
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
		return
	end
	if arg == 1002 then		--T� Ch鈛
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162, 10 )
		return
	end
	if arg == 1006 then		--L誧 D呓ng商会
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
		return
	end
	if arg == 1003 then		--姓i L�1
		--如果玩家就T読 姓i L�1则不传送
		if sceneId == 2 then
			x002938_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--姓i L�2
		--如果玩家就T読 姓i L�2则不传送
		if sceneId == 71 then
			x002938_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�2了." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--姓i L�3
		--如果玩家就T読 姓i L�3则不传送
		if sceneId == 72 then
			x002938_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�3了." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002938_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end

	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		return
	end

end

--**********************************
--根据门派ID获取门派信息
--**********************************
function x002938_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002938_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x002938_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
