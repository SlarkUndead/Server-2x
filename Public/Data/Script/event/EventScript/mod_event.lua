-- mod_event
-- 任务表格中to� 鸬 m祎 些通用数据处理函数

x006672_g_MaxRelationship = 9999

x006672_g_MinRelationship = 0

x006672_g_MenpaiMission = 800
x006672_g_MenpaiMission_1 = 810

-- 30~50c玩家流失任务_Nhi甿 v� s� m鬾
x006672_g_MissionLimitList	=	{StartIdx = 1018729, EndIdx = 1018818}
x006672_g_AcceptMissionSceneId = {9, 11, 10, 12, 15, 16, 13, 17, 14}

--**********************************
-- 列举事件
--**********************************
function x006672_DoEnumerate( sceneId, selfId, targetId, missionIndex )
	
	local missionId = TGetMissionIdByIndex( missionIndex )

	-- 如果玩家完成过C醝 n鄖 任务并且该任务不喧ng循环任务
	if IsMissionHaveDone( sceneId, selfId, missionId ) > 0
	 and TIsMissionRoundable( missionIndex ) ~= 1 then
		return
	end

	local missionName = TGetMissionName( missionIndex )

	-- 判定玩家to� 鸬 条件喧ng不喧ng够Ti猵 th鳦醝 n鄖 任务,如果够就显示,不够就不显示
	local PrevMis = { -1, -1, -1 }
	local nLevel = 0
	nLevel, PrevMis[1], PrevMis[2], PrevMis[3] = TGetCheckInfo( missionIndex )

	if nLevel > GetLevel( sceneId, selfId ) then
		return
	end

	if PrevMis[1] == x006672_g_MenpaiMission then
		if PrevMis[2] ~= LuaFnGetMenPai(sceneId, selfId)  then
			return
		end
		
	elseif PrevMis[1] == x006672_g_MenpaiMission_1 then
		local bOk = 0
		for i=801, 809   do
			if IsMissionHaveDone( sceneId, selfId, i ) >= 0 then
				bOk = 1
			end
		end
		if bOk == 0  then
			return
		end
		
	else
		for i = 1, getn( PrevMis ) do
			if PrevMis[i] > 0 then
				if IsMissionHaveDone( sceneId, selfId, PrevMis[i] ) <= 0 then
					return
				end
			end
		end
	end

	-- 已经接收了任务
	if IsHaveMission( sceneId, selfId, missionId ) > 0 then
		local completeNpcScene, completeNpcName = TGetCompleteNpcInfo( missionIndex )
		if GetName( sceneId, targetId ) == completeNpcName then
			-- 喧ng否为循环任务
			if TIsMissionRoundable( missionIndex ) == 1 then
				TAddNumText( sceneId, missionIndex, missionName, 4, -1 )
			else
				TAddNumText( sceneId, missionIndex, missionName, 2, -1 )
			end
			TDispatchEventList( sceneId, selfId, targetId )
		end
	else
		local acceptNpcScene, acceptNpcName = TGetAcceptNpcInfo( missionIndex )
		if GetName( sceneId, targetId ) == acceptNpcName then
			-- 喧ng否为循环任务
			if TIsMissionRoundable( missionIndex ) == 1 then
				TAddNumText( sceneId, missionIndex, missionName, 3, -1 )
			else
				TAddNumText( sceneId, missionIndex, missionName, 1, -1 )
			end
			TDispatchEventList( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- 检测Ti猵 th跫�
--**********************************
function x006672_CheckAccept( sceneId, selfId, missionIndex )
	
	local nLevel = LuaFnGetLevel( sceneId, selfId )
	local PrevMis = { -1, -1, -1 }
	local limitLevel = 0
	limitLevel, PrevMis[1], PrevMis[2], PrevMis[3] = TGetCheckInfo( missionIndex )

	if nLevel < limitLevel then
		x006672_NotifyFailBox( sceneId, selfId, -1, "    Kinh nghi甿 giang h� c黙 c醕 h�, s� kh鬾g chi猲 thg 疬㧟, 瘙i" .. limitLevel .. "Sau khi th錸g c t緄 t靘 ta" )
		return 0
	end
	
	if missionIndex >= x006672_g_MissionLimitList.StartIdx and missionIndex <= x006672_g_MissionLimitList.EndIdx then
		local nMenpai = LuaFnGetMenPai(sceneId, selfId)
		
		if nMenpai < 0 or nMenpai > 8 then
			x006672_NotifyFailBox( sceneId, selfId, -1, "#{YD_20080421_222}" )
			return 0
		elseif x006672_g_AcceptMissionSceneId[nMenpai+1] ~= sceneId then
			x006672_NotifyFailBox( sceneId, selfId, -1, "#{YD_20080421_223}" )
			return 0
		end
	end
	
	if PrevMis[1] == x006672_g_MenpaiMission then
		if PrevMis[2] == LuaFnGetMenPai(sceneId, selfId)  then
			return 1
		end
		return 0
	end
	
	if PrevMis[1] == x006672_g_MenpaiMission_1 then
		local bOk = 0
		for i=801, 809   do
			if IsMissionHaveDone( sceneId, selfId, i ) >= 0 then
				bOk = 1
			end
		end
		if bOk == 1  then
			return 1
		end
		return 0
	end

	for i = 1, getn( PrevMis ) do
		if PrevMis[i] > 0 then
			if IsMissionHaveDone( sceneId, selfId, PrevMis[i] ) <= 0 then
				return 0
			end
		end
	end

	local mdLocation, value, prompt = TGetLimitedTimeInfo( missionIndex )
	if mdLocation ~= -1 and value > 0 then
		local ApprovedTime = GetMissionData( sceneId, selfId, mdLocation )
		if ApprovedTime > LuaFnGetCurrentTime( ) then
			x006672_NotifyFailBox( sceneId, selfId, -1, prompt )
			return 0
		end
	end

	return 1
end

--**********************************
-- 取 餴琺m祎 c醝动态to� 鸬 对话格式化字符串
-- missionIndex: 任务T読 任务表中to� 鸬 编号
-- duologueContent: 对话内容,如果喧ng固定对话,则直接Tr� v�
--**********************************
function x006672_GetRandomDuologue( sceneId, missionIndex, duologueContent )
	
	-- 随机对话C 先挑选出m祎 句来
	local duologueList = {}
	-- 把随机选项萃取出来,塞到 duologueList 里面
	gsub( duologueContent, "(%d+)", function(n) tinsert( %duologueList, tonumber(n) ) end )

	-- print( duologueList )

	if getn( duologueList ) < 1 then
		return ""
	end

	-- 新增to� 鸬 接口读新增to� 鸬 表格,取回某句对话
	duologueContent = TGetDuologue( sceneId, duologueList[random( getn(duologueList) )] )

	-- print( duologueContent )

	if type( duologueContent ) ~= "string" then
		return ""
	end

	return duologueContent
end

--**********************************
-- 格式化m祎 c醝动态to� 鸬 对话格式化字符串
-- 格式化中to� 鸬 模式
--	%R: 玩家to� 鸬 称谓( c醕 h�,侠女)
--	%n: NPC to� 鸬 T阯
--	%l: NPC to� 鸬 位置以及坐标
--	%g: NPC to� 鸬 性别(他,她)
--	%i: 任务物品to� 鸬 T阯
--**********************************
function x006672_FormatDuologue( sceneId, selfId, duologueContent, npcId, itemIndex, itemList )
	
	if not duologueContent or type( duologueContent ) ~= "string" then
		return ""
	end

	-- 对对话进行变量替换
	if strfind( duologueContent, "%R", 1, 1 ) then
		local PlayerGender = GetSex( sceneId, selfId )
		local rank

		if PlayerGender == 0 then
			rank = "N� hi畃"
		else
			rank = " c醕 h�"
		end

		duologueContent = gsub( duologueContent, "%%R", rank )
	end

	-- 有随机 NPC
	if npcId and npcId ~= -1 then
		local nNpcId, strNpcName, strNpcScene, nPosX, nPosZ, strNPCDesc, nScene, nGender, nLevel, nType
			= GetNpcInfoByNpcId(sceneId, npcId )

		local strGender = {}
		strGender[0] = "她"
		strGender[1] = "他"

		-- 对对话进行变量替换
		-- if strfind( duologueContent, "%l", 1, 1 ) then
		--	duologueContent = gsub( duologueContent, "%%l", "" )
		-- end

		if strfind( duologueContent, "%n", 1, 1 ) then
			local newLocation
			if nPosX > 0 and nPosZ > 0 then
				newLocation = strNpcScene .. strNpcName ..  "(" .. nPosX .. ", " .. nPosZ .. ")"
			else
				newLocation = strNpcScene .. strNpcName
			end

			duologueContent = gsub( duologueContent, "%%n", newLocation )
		end

		if strfind( duologueContent, "%g", 1, 1 ) then
			duologueContent = gsub( duologueContent, "%%g", strGender[nGender] )
		end
	end

	if itemIndex and itemIndex ~= -1 and itemList == "" then
		local nitemId, strItemName, strItemDesc = GetItemInfoByItemId( itemIndex )

		if strfind( duologueContent, "%i", 1, 1 ) then
			duologueContent = gsub( duologueContent, "%%i", strItemName )
		end
	end
	
	if itemList ~= "" then
		
		if strfind( duologueContent, "%i", 1, 1 ) then
			duologueContent = gsub( duologueContent, "%%i", itemList )
		end
		-- PrintStr("duologueContent ="..duologueContent)
	end

	return duologueContent
end

--**********************************
-- 显示任务奖励
--**********************************
function x006672_DisplayBonus( sceneId, missionIndex, selfId )
	
	local itemCt
	local a = { { id = -1, ct = 0 }, { id = -1, ct = 0 }, { id = -1, ct = 0 }, { id = -1, ct = 0 }, { id = -1, ct = 0 } }
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetAwardItem( missionIndex )

	for i = 1, itemCt do
		if a[i].id > 0 then
			AddItemBonus( sceneId, a[i].id, a[i].ct )
		end
	end

	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetRadioItem( missionIndex )

	for i = 1, itemCt do
		if a[i].id > 0 then
			AddRadioItemBonus( sceneId, a[i].id, a[i].ct )
		end
	end

	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct = TGetHideItem( missionIndex )

	for i = 1, itemCt do
		if a[i].id > 0 then
			AddRandItemBonus( sceneId, a[i].id, a[i].ct )
		end
	end

	local awardMoney = TGetAwardMoney( missionIndex )
	
	if (missionIndex >= 1010243 and missionIndex <= 1010250) or
		 (missionIndex >= 1010402 and missionIndex <= 1010409) or
		 (missionIndex >= 1018000 and missionIndex <= 1018033) or
		 (missionIndex >= 1018050 and missionIndex <= 1018084) or
		 (missionIndex >= 1018100 and missionIndex <= 1018155) or
		 (missionIndex >= 1018200 and missionIndex <= 1018235) or
		 (missionIndex >= 1018300 and missionIndex <= 1018311) or
		 (missionIndex >= 1018350 and missionIndex <= 1018352) or
		 (missionIndex >= 1018360 and missionIndex <= 1018367) or
		 (missionIndex >= 1018400 and missionIndex <= 1018455) or
		 (missionIndex >= 1018500 and missionIndex <= 1018504) or
		 (missionIndex >= 1018530 and missionIndex <= 1018541) or
		 (missionIndex >= 1018560 and missionIndex <= 1018566) or
		 (missionIndex >= 1038000 and missionIndex <= 1038040) or
		 (missionIndex >= 1038110 and missionIndex <= 1038114) or
		 (missionIndex >= 1039000 and missionIndex <= 1039011) or
		 (missionIndex >= 1039020 and missionIndex <= 1039024) or
		 (missionIndex >= 1039100 and missionIndex <= 1039104) or
		 (missionIndex >= 1038100 and missionIndex <= 1038104) or
		 (missionIndex >= 1039110 and missionIndex <= 1039126) or
		 (missionIndex >= 1039200 and missionIndex <= 1039211) or
		 (missionIndex >= 1039250 and missionIndex <= 1039259) or
		 (missionIndex >= 1039300 and missionIndex <= 1039312) or
		 (missionIndex >= 1039350 and missionIndex <= 1039357) or
		 (missionIndex >= 1039400 and missionIndex <= 1039412) or
		 (missionIndex >= 1039450 and missionIndex <= 1039462) or
		 (missionIndex >= 1039500 and missionIndex <= 1039511) or
		 (missionIndex >= 1039550 and missionIndex <= 1039554) or
		 (missionIndex >= 1039600 and missionIndex <= 1039612) or
		 (missionIndex >= 1009000 and missionIndex <= 1009027) or
		 (missionIndex >= 1009100 and missionIndex <= 1009103) then
		
		-- 使用玩家自己to� 鸬 等c来计算 餴琺到to� 鸬 奖励
		awardMoney = GetLevel(sceneId, selfId) * 18 -101
	end
	
	AddMoneyBonus( sceneId, awardMoney )
end

--**********************************
-- 奖励关系值
--**********************************
function x006672_RewardRelationShip( sceneId, selfId, missionIndex, targetId )
	
	local mdLocation, value, prompt = TGetRelationShipAwardInfo( missionIndex )
	if mdLocation == -1 or value < 1 then
		return
	end

	local szNpcName = ""
	
	local nLimitiIndex = -1
	
	if mdLocation == MD_RELATION_MUWANQING 				then
		szNpcName = "M礳 Uy琻 Thanh "
		nLimitiIndex = MD_JQXH_MUWANQING_LIMITI
	elseif mdLocation == MD_RELATION_ZHONGLING  	then
		szNpcName = "Chung Linh "
		nLimitiIndex = MD_JQXH_ZHONGLING_LIMITI
	elseif mdLocation == MD_RELATION_DUANYANQING  then
		szNpcName = "衞鄋 Di阯 Kh醤h "
		nLimitiIndex = MD_JQXH_DUANYANQING_LIMITI
	elseif mdLocation == MD_RELATION_DUANYU  			then
		szNpcName = "衞鄋 D�"
		nLimitiIndex = MD_JQXH_DUANYU_LIMITI
	elseif mdLocation == MD_RELATION_AZHU			    then
		szNpcName = "A Ch鈛"
		nLimitiIndex = MD_JQXH_AZHU_LIMITI
	elseif mdLocation == MD_RELATION_ABI				  then
		szNpcName = "A B韈h "
		nLimitiIndex = MD_JQXH_ABI_LIMITI
	elseif mdLocation == MD_RELATION_WANGYUYAN	  then
		szNpcName = "V呓ng Ng� Y阯"
		nLimitiIndex = MD_JQXH_WANGYUYAN_LIMITI
	elseif mdLocation == MD_RELATION_XIAOFENG	    then
		szNpcName = "Ti陁 Phong"
		nLimitiIndex = MD_JQXH_XIAOFENG_LIMITI
	elseif mdLocation == MD_RELATION_AZI				  then
		szNpcName = "A T� "
		nLimitiIndex = MD_JQXH_AZI_LIMITI
	elseif mdLocation == MD_RELATION_MURONGFU	    then
		szNpcName = "M� Dung Ph鴆 "
		nLimitiIndex = MD_JQXH_MURONGFU_LIMITI
	elseif mdLocation == MD_RELATION_XUZHU			  then
		szNpcName = "H� Tr鷆"
		nLimitiIndex = MD_JQXH_XUZHU_LIMITI
	elseif mdLocation == MD_RELATION_JIUMOZHI	    then
		szNpcName = "C遳 Ma Tr�"
		nLimitiIndex = MD_JQXH_JIUMOZHI_LIMITI
	elseif mdLocation == MD_RELATION_YINCHUAN	    then
		szNpcName = "Ng鈔 Xuy阯 C鬾g Ch鷄"
		nLimitiIndex = MD_JQXH_YINCHUAN_LIMITI
	end
	
	-- 记录和C醝 n鄖 Npc今天Ho鄋 t nhi甿 v鴗o� 鸬 次数
	if nLimitiIndex >= MD_JQXH_MUWANQING_LIMITI and 
			nLimitiIndex <= MD_JQXH_YINCHUAN_LIMITI  then
		--begin modified by zhangguoxin 090207
		local nDayCount = GetMissionData(sceneId, selfId, nLimitiIndex)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--上m祎 次交任务to� 鸬 时间(天数)
		nDayTime = 	nTime											--上m祎 次交任务to� 鸬 时间(天数)
		
		local CurTime = GetDayTime()						--当前时间
		local CurDaytime = CurTime					--当前时间
		--local CurDaytime = floor(CurTime/100)	--当前时间(天)
		--end modified by zhangguoxin 090207
		if nDayTime == CurDaytime  then
			nCount = nCount + 1
		else
			nCount = 1
		end
		
		local nNewDayCount = nCount*100000 + CurTime	
		SetMissionData(sceneId, selfId, nLimitiIndex, nNewDayCount)
	end

	local oldValue = GetMissionData( sceneId, selfId, mdLocation )
	value = value + oldValue
	if value > x006672_g_MaxRelationship then
		value = x006672_g_MaxRelationship
	else
		BeginEvent(sceneId)
			local strText = prompt
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		-- 如果玩家和Npc达到m祎 c醝新to� 鸬 关系,发公告
		if value == 1000  then
			BeginEvent(sceneId)
				local strText = "C醕 h� v�#G" .. szNpcName .. "#W Quan h� 疸 ph醫 tri琻 皙n m裞#Yk猼 giao qu鈔 t�#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- 发邮件通知玩家
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
		elseif value == 2000  then
			BeginEvent(sceneId)
				local strText = "C醕 h� v�#G" .. szNpcName .. "#W Quan h� 疸 ph醫 tri琻 皙n m裞#Y k猼 giao th鈔 thi猼#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- 发邮件通知玩家
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
		elseif value == 4000  then
			BeginEvent(sceneId)
				local strText = "C醕 h� v�#G" .. szNpcName .. "#W Quan h� 疸 ph醫 tri琻 皙n m裞#Y b醫 b醝 chi giao#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- 发邮件通知玩家
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
		elseif value == 6500  then
			BeginEvent(sceneId)
				local strText = "C醕 h� v�#G" .. szNpcName .. "#WQuan h� 疸 ph醫 tri琻 皙n m裞#Ybg h鎢 v鄌 sinh ra t�#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- 发邮件通知玩家
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
			-- 发H� th痭g公告
			local szPlayer = GetName(sceneId, selfId)

			if GetName(sceneId,targetId) == "M礳 Uy琻 Thanh "    then
				local szBroad = "@*;SrvMsg;" .. "juqing_xunhuan_system_muwanqing" ..";"..szPlayer..";"..szPlayer
				BroadMsgByChatPipe(sceneId, selfId, szBroad, 4)
				
			elseif GetName(sceneId,targetId) == "Gia Lu 姓i Th誧h "    then
				local szBroad = "@*;SrvMsg;" .. "juqing_xunhuan_system_xiaofeng" ..";"..szPlayer..";"..szPlayer
				BroadMsgByChatPipe(sceneId, selfId, szBroad, 4)
				
			end
		end
	end

	SetMissionData( sceneId, selfId, mdLocation, value )
	---木婉清关系值统计 dengxx
		if mdLocation == MD_RELATION_MUWANQING then
		   AuditRelationPoint(sceneId,selfId,value,"MD_RELATION_MUWANQING")
		end
	
	-- hongyu ,着急了,T読 这里先+Kinh nghi甿和金钱奖励
	-- 奖励to� 鸬 金钱和Kinh nghi甿值,只和自己to� 鸬 等c有关
	-- 等c必须喧ng大于等于20,小于等于PlayerMaxLevel
	-- 公式  Kinh nghi甿= 等c*80 - 326
	-- 			 金钱= 等c*18 - 101
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local nLevel = GetLevel(sceneId, selfId)
	
	if nLevel>=20 and nLevel<=PlayerMaxLevel   then
		local nExp = nLevel*80 - 326
		local nMoney = nLevel*18 - 101
		
		local missionId = TGetMissionIdByIndex( missionIndex )
		AddMoney( sceneId, selfId, nMoney, missionId, missionIndex )
		AddExp(sceneId, selfId, nExp)
	end
	
	-- 任务统计
	local missionName = TGetMissionName( missionIndex )
	LuaFnAuditQuest( sceneId, selfId, missionName)
	
	if value > oldValue then
		Msg2Player( sceneId, selfId, prompt, MSG2PLAYER_PARA )
	end
end

--**********************************
-- 惩罚关系值
--**********************************
function x006672_PunishRelationShip( sceneId, selfId, missionIndex )
	
	local mdLocation, value, prompt = TGetRelationShipPunishInfo( missionIndex )
	if mdLocation == -1 or value < 1 then
		return
	end

	local oldValue = GetMissionData( sceneId, selfId, mdLocation )
	value = oldValue - value
	if value < x006672_g_MinRelationship then
		value = x006672_g_MinRelationship
	end

	SetMissionData( sceneId, selfId, mdLocation, value )
	---木婉清关系值统计 dengxx
		if mdLocation == MD_RELATION_MUWANQING then
		   AuditRelationPoint(sceneId,selfId,value,"MD_RELATION_MUWANQING")
		end

	if value < oldValue then
		Msg2Player( sceneId, selfId, prompt, MSG2PLAYER_PARA )
	end
end

--**********************************
-- 惩罚,限制接任务时间
--**********************************
function x006672_AcceptTimeLimit( sceneId, selfId, missionIndex )
	
	local mdLocation, value, prompt = TGetLimitedTimeInfo( missionIndex )
	if mdLocation == -1 or value < 1 then
		return
	end

	-- 20 年内应该不会超过 2 ^ 31
	SetMissionData( sceneId, selfId, mdLocation, LuaFnGetCurrentTime( ) + value )
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x006672_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
