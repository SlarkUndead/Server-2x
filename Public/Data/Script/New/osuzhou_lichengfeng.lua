--苏州NPC
--李乘风
--普通

x002965_g_ScriptId	= 002965

--门派信息(门派名称，SceneID，PosX，PosY，门派ID)
x002965_g_mpInfo		= {}
x002965_g_mpInfo[0]	= { "星宿", 16,  96, 152, MP_XINGSU }
x002965_g_mpInfo[1]	= { "逍遥", 14,  67, 145, MP_XIAOYAO }
x002965_g_mpInfo[2]	= { "少林",  9,  96, 127, MP_SHAOLIN }
x002965_g_mpInfo[3]	= { "天山", 17,  95, 120, MP_TIANSHAN }
x002965_g_mpInfo[4]	= { "天龙", 13,  96, 120, MP_DALI }
x002965_g_mpInfo[5]	= { "峨嵋", 15,  89, 139, MP_EMEI }
x002965_g_mpInfo[6]	= { "武当", 12, 103, 140, MP_WUDANG }
x002965_g_mpInfo[7]	= { "明教", 11,  98, 167, MP_MINGJIAO }
x002965_g_mpInfo[8]	= { "丐帮", 10,  91, 116, MP_GAIBANG }

x002965_g_Yinpiao = 40002000

x002965_g_Impact_NotTransportList = { 5929, 5944 } -- 禁止传送的Impact
x002965_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- 禁止传送的Impact提示信息

--**********************************
--事件交互入口
--**********************************
function x002965_OnDefaultEvent( sceneId, selfId,targetId )
	-- 检测玩家身上是不是有“银票”这个东西，有就不能使用这里的功能
	if GetItemCount(sceneId, selfId, x002965_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  你身上有银票，正在跑商！我不能帮助你。" )
		EndEvent( sceneId )

		-- 我怎样才能去敦煌和嵩山
		AddNumText( sceneId, x002965_g_ScriptId, "我怎样才能去敦煌和嵩山", 11, 2000 )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "#{XIYU_20071228_03}" )
		AddNumText( sceneId, x002965_g_ScriptId, "返回门派", 9, 1000 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 洛阳", 9, 1001 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 大理", 9, 1002 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 洛阳 - 九州商会", 9, 1006 )
              --AddNumText( sceneId, x002965_g_ScriptId, "城市 - 楼兰", 9, 1007 )
			--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 新大理", 9, 1102 )
			--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 新洛阳", 9, 1103 )
			--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 新苏州", 9, 1104 )
			--AddNumText( sceneId, x002965_g_ScriptId, "#Y野外 - 宋辽战场", 9, 1116 )
		AddNumText( sceneId, x002965_g_ScriptId, "城市 - 宋辽战场休息室", 9, 1106 )
			--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 通天塔地宫", 9, 1105 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 通天塔一层", 9, 1111 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 通天塔二层", 9, 1112 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 通天塔三层", 9, 1113 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 通天塔塔顶", 9, 1114 )
		--AddNumText( sceneId, x002965_g_ScriptId, "城市 - 夙阳镇", 9, 1115 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y副本 - 跨服争霸赛", 9, 1235 )
			AddNumText( sceneId, x002026_g_ScriptId, "副本 - 总决赛一号场地", 9, 1200 )
			AddNumText( sceneId, x002965_g_ScriptId, "城市 - 慕容山庄", 9, 1100 )
			AddNumText( sceneId, x002965_g_ScriptId, "城市 - 藏书水阁", 9, 1101 )
    --AddNumText( sceneId, x002965_g_ScriptId, "城市 - 束河古镇", 9, 1010 )
    
		--AddNumText( sceneId, x002965_g_ScriptId, "带我去其它门派", 9, 1012 )
		--for i, mp in x002965_g_mpInfo do
			--AddNumText( sceneId, x002965_g_ScriptId, "门派 - "..mp[1], 9, i )
		--end

	
		-- 我怎样才能去敦煌和嵩山
		--AddNumText( sceneId, x002965_g_ScriptId, "我怎样才能去敦煌和嵩山", 11, 2000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002965_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x002965_MsgBox( sceneId, selfId, targetId, "  你队伍成员中有人有漕运货舱在身，我们驿站不能为你提供传送服务。" )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002965_MsgBox( sceneId, selfId, targetId, "  你有漕运货舱在身，我们驿站不能为你提供传送服务。" )
		return
	end
	
	--检测Impact状态驻留效果
	for i, ImpactId in x002965_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x002965_MsgBox( sceneId, selfId, targetId, x002965_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end
	
	--顺利传送
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--返回门派
		if id < 0 or id >= 9 then
			x002965_MsgBox( sceneId, selfId, targetId, "  你还没有加入任何门派！" )
		else
			mp	= x002965_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--洛阳
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183 )
		return
	end
	if arg == 1235 then		--跨服争霸赛
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 346, 196,128, 10 )
		return
	end
	if arg == 1200 then		--总决赛一号场地
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 347, 61, 61, 75 )
		return
	end
	if arg == 1002 then		--大理
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 160, 164 )
		return
	end
	if arg == 1006 then		--洛阳商会
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132 )
		return
  end
	if arg == 1100 then		--慕容山庄
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 435, 68, 123, 75 )
		return
	end
	if arg == 1101 then		--藏书水阁
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 436, 20, 46, 75 )
		return
	end
	if arg == 1102 then		--新大理
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 335, 374, 224, 75 )
		return
	end
	if arg == 1103 then		--新洛阳
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 336, 230, 321, 75 )
		return
	end
	if arg == 1104 then		--新苏州
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 337, 276, 196, 75 )
		return
	end
	if arg == 1105 then		--通天塔地宫
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 338, 258, 373, 75 )
		return
	end
  if arg == 1106 then		--宋辽战场休息室
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 345, 32, 11, 75 )
		return
	end
	if arg == 1111 then		--通天塔一层
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 339, 254, 377, 75 )
		return
	end
	if arg == 1112 then		--通天塔二层
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 340, 255, 352, 75 )
		return
	end
	if arg == 1113 then		--通天塔三层
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 341, 255, 310, 75 )
		return
	end
	if arg == 1114 then		--通天塔塔顶
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 342, 255, 275, 75 )
		return
	end
	if arg == 1115 then		--夙阳镇
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 343, 156, 113, 75 )
		return
	end
	if arg == 1116 then		--宋辽战场
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 344, 296,228, 10 )
		return
	end
  if arg == 1007 then		--楼兰
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	for i, mp in x002965_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText()== 1010 then		--束河古镇
		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x002965_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "束河古镇为不加杀气场景，请注意安全。你确认要进入吗？");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x002965_g_mpInfo do
				AddNumText( sceneId, x002965_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
end
--  add by zchw
function x002965_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end

--**********************************
--根据门派ID获取门派信息
--**********************************
function x002965_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002965_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x002965_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
