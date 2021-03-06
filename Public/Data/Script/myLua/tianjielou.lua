--传送NPC
--驿站老板
--普通

x002924_g_ScriptId	= 002924
x002924_g_Yinpiao = 40002000
--**********************************
--事件交互入口
--**********************************
function x002924_OnDefaultEvent( sceneId, selfId, targetId )

	-- 检测玩家身上喧ng不喧ng有“银票”C醝 n鄖 东西,有就不能使用这里to� 鸬 功能
	if GetItemCount(sceneId, selfId, x002924_g_Yinpiao)>=1  then
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
			AddText( sceneId, "#W江湖险恶,不及天劫楼险。这天劫楼乃神秘恶人所建之楼,云集了这m祎 带to� 鸬 m祎 群恶人。我为探其虚实潜入楼中,却难耐岁月不饶人,而且恶人众多以至....." )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF83FATr� v排�", 9, 1000 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24前往天劫楼", 9, 1001 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Th鄋h ph�  - T� Ch鈛", 9, 1002 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#cFF0000野外 - 昆仑山(120级)", 9, 1003 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Th鄋h ph�  - L誧 D呓ng - 九州商会", 9, 1006 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Th鄋h ph�  - T� Ch鈛 - 铁匠铺", 9, 1007 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF34B3Th鄋h ph�  - L鈛 Lan(寻宝副本入口)", 9, 1008 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF34B3Th鄋h ph�  - L鈛 Lan(新三环入口)", 9, 1012 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFA野外 - 昆仑山(升级专区)", 9, 1013 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 清源", 9, 1014 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 清源山洞", 9, 1015 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 凤凰陵墓", 9, 1016 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 凤凰平原", 9, 1017 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#GTh鄋h ph�  - 逐鹿战场(制作中)", 9, 1018 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFA野外 - 凤凰古镇(升级专区)", 9, 1019 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFA野外 - Th鷆 H� C� Tr(BOSS专区)", 9, 1009 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFA野外 - 昆仑福地(BOSS专区)", 9, 1010 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFFB6C1带我去其他门派", 9, 1011 )
			for i, mp in x002924_g_mpInfo do
				--AddNumText( sceneId, x002924_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
		else
			AddText( sceneId, "  Ng呓i c 等级到达10级以上,才能去别to� 鸬 Th鄋h ph� ." )
			AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 姓i L�",  9, 1003 )
			AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 姓i L�2", 9, 1004 )
			AddNumText( sceneId, x002924_g_ScriptId, "Th鄋h ph�  - 姓i L�3", 9, 1005 )
		end

		-- 我怎样才能去恤n Ho鄋g和Tung S絥
		--AddNumText( sceneId, x002924_g_ScriptId, "我怎样才能去恤n Ho鄋g和Tung S絥", 11, 2000 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x002924_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1011 then
	local	mp
	local	i		= 0
		BeginEvent( sceneId )
			for i, mp in x002924_g_mpInfo do
				AddNumText( sceneId, x002924_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
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
				x002924_MsgBox( sceneId, selfId, targetId, "  你队伍成员中有人有漕运\货舱T読 身,我们驿站不能为你提供传送服务." )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002924_MsgBox( sceneId, selfId, targetId, "  你有漕运\货舱T読 身,我们驿站不能为你提供传送服务." )
		return
	end

	--顺利传送
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr� v排�
		if id < 0 or id >= 9 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你还没有加入任何门派!" )
		else
			mp	= x002924_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--除恶天劫楼
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 533, 82, 78, 10 )
		return
	end
	if arg == 1002 then		--T� Ch鈛
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162, 10 )
		return
	end
	if arg == 1003 then		--昆仑山
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110,18, 10 )
		return
	end
	if arg == 1006 then		--L誧 D呓ng商会
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
		return
	end
	if arg == 1007 then		--铁匠铺
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
		return
	end
	if arg == 1008 then		--L鈛 Lan古城
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 184, 162, 75, 10 )
		return
	end
	if arg == 1009 then		--Th鷆 H� C� Tr
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 422, 200, 211, 10 )
		return
	end
	if arg == 1010 then		--昆仑福地
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
		return
	end
	if arg == 1012 then		--L鈛 Lan三环入口www.tlbb20 0.com 友情提供 免费端请不要上当
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 184, 290, 66, 10 )
		return
	end
	if arg == 1013 then		--昆仑山
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110, 18, 10 )
		return
	end
	if arg == 1014 then		--清源
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 531, 272, 45, 10 )
		return
	end
	if arg == 1015 then		--清源山洞
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 532, 45, 225, 10 )
		return
	end
	if arg == 1016 then		--凤凰陵墓
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 440, 93, 36, 10 )
		return
	end
	if arg == 1017 then		--凤凰平原
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 441, 93, 36, 10 )
		return
	end
	if arg == 1018 then		--逐鹿战场
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 402, 93, 36, 10 )
		return
	end
	if arg == 1019 then		--凤凰古城
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 180, 53, 36, 10 )
		return
	end
	if arg == 1003 then		--姓i L�1
		--如果玩家就T読 姓i L�1则不传送
		if sceneId == 2 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--姓i L�2
		--如果玩家就T読 姓i L�2则不传送
		if sceneId == 71 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�2了." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--姓i L�3
		--如果玩家就T読 姓i L�3则不传送
		if sceneId == 72 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�3了." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002924_g_mpInfo do
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
function x002924_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002924_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x002924_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end