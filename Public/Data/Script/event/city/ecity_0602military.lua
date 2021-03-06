-- 单人副本

-- 国防任务,追捕叛徒
--MisDescBegin
-- 脚本号
x600032_g_ScriptId = 600032

--任务号
x600032_g_MissionId = 1109

--M鴆 ti陁 nhi甿 v鴑pc
x600032_g_Name = "V� 姓i Uy"

--任务归类
x600032_g_MissionKind = 50

--衅ng c nhi甿 v� 
x600032_g_MissionLevel = 10000

--喧ng否喧ngTinh英任务
x600032_g_IfMissionElite = 0

--下面几项喧ng动态显示to� 鸬 内容,用于T読 任务列表中动态显示任务情况**********************
x600032_g_IsMissionOkFail = 0							-- Nhi甿 v� ho鄋 th鄋h标记

--以上喧ng动态**************************************************************

--任务变量第m祎 位用来存储随机 餴琺到to� 鸬 脚本号
--任务文本描述
x600032_g_MissionName = "Truy b k� ph鋘 b礽"
x600032_g_MissionInfo = ""													--任务描述
x600032_g_MissionTarget = "    挟 t� bang ta %s%1s 疸 疳nh c t靚h b醥 quan tr鱪g c黙 b眓 th鄋h, c醕 h� h銀 %2n, ng叨i s� gi鷓 疝 h鄋h 鸬ng c黙 ch鷑g ta. "	--M鴆 ti陁 nhi甿 v�
x600032_g_ContinueInfo = "    Nhi甿 v� c黙 c醕 h� v鏽 ch遖 ho鄋 th鄋h �?"						--未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x600032_g_MissionComplete = "    L鄊 t痶 l, r t痶 r t痶. "						--Ho鄋 t nhi甿 v鴑pc说话to� 鸬 话

x600032_g_MissionRound = 79

-- 通用Th鄋h ph� 任务脚本
x600032_g_CityMissionScript = 600001
x600032_g_MilitaryScript = 600030

--格式字符串中to� 鸬 索引, 表示从4开始,后多少位视SetMissionByIndex(...)to� 鸬 多少而定
x600032_g_StrForePart=5
x600032_g_StrList = {[0] = "T� Kh鬾g ",
										 [1] = "T� M� ", 
										 [2] = "聈 D呓ng ", 
										 [3] = "Gia C醫 ", 
										 [4] = "衋n Vu ", 
										 [5] = "Gi醦 Nhi ", 
										 [6] = "Ti瑄 Gi醦 ", 
										 [7] = "則 Nhi ", 
										 [8] = "Ti瑄 則 ", 
										 [9] = "B韓h Nhi ",
										 }

								 			
--MisDescEnd

x600032_g_EnterPos = {{x=28,z=52},{x=19,z=42},{x=45,z=47},
								 			{x=42,z=46},{x=26,z=46},{x=14,z=40},
								 			{x=45,z=48},{x=29,z=49},{x=42,z=47}}

-- 这里to� 鸬 Nav文件和场景T阯C 手动对应
x600032_g_CopySceneMap = {"tongrenxiang_1.nav","guangmingdong_1.nav","jiujiao_1.nav",
											 "lingxingfeng_1.nav","taohuazhen_1.nav","wushendong_1.nav",
											 "tadi_1.nav","zhemeifeng_1.nav","gudi_1.nav"}
x600032_g_CopyName  = {"邪ng Nh鈔 H課g","Quang Minh 鸬ng","H r唼u",
											 "Linh T韓h Phong","朽o Hoa Tr","Ng� Th 械ng",
											 "Ch鈔 th醦","Chi猼 Mai Phong","C痗 鸶a"}
x600032_g_CopyNpc		= {"tongrenxiang_1_monster","guangmingdong_1_monster","jiujiao_1_monster",
											 "lingxingfeng_1_monster","taohuazhen_1_monster","wushendong_1_monster",
											 "tadi_1_monster","zhemeifeng_1_monster","gudi_1_monster"}

x600032_g_CopyArea	= {"tongrenxiang_1_area.ini","guangmingdong_1_area.ini","jiujiao_1_area.ini",
											 "lingxingfeng_1_area.ini","taohuazhen_1_area.ini","wushendong_1_area.ini",
											 "tadi_1_area.ini","zhemeifeng_1_area.ini","gudi_1_area.ini"}
--副本名称
x600032_g_CopySceneName = "铜人巷"
x600032_g_CopySceneType = FUBEN_GUOFANG	--副本类型,定义T読 ScriptGlobal.lua里面
--x600032_g_CopySceneMap = "tadi_1.nav"
x600032_g_LimitMembers = 1					--可以进副本to� 鸬 最小队伍人数
x600032_g_TickTime = 5							--回调脚本to� 鸬 时钟时间(单位:  gi鈟/次)
x600032_g_LimitTotalHoldTime = 480	--副本可以存活to� 鸬 时间(单位: 次数),如果此时间到了,则任务将会th b読
x600032_g_LimitTimeSuccess = 500		--副本时间限制(单位: 次数),如果此时间到了,Nhi甿 v� ho鄋 th鄋h
x600032_g_CloseTick = 3							--副本关闭前倒计时(单位: 次数)
x600032_g_NoUserTime = 10						--副本中没有人后可以继续保存to� 鸬 时间(单位:  gi鈟)
x600032_g_DeadTrans = 0							--死亡转移模式,0: 死亡后还可以继续T読 副本,1: 死亡后被强制移出副本
x600032_g_Fuben_X = 0								--进入副本to� 鸬 位置X
x600032_g_Fuben_Z = 0								--进入副本to� 鸬 位置Z
x600032_g_Back_X = 47								--源场景位置X
x600032_g_Back_Z = 92								--源场景位置Z
x600032_g_NeedMonsterGroupID = 1		--Boss to� 鸬 组号
x600032_g_TotalNeedKillBoss = 11		--C 杀死Boss数量


--**********************************
--任务入口函数
--**********************************
function x600032_OnDefaultEvent( sceneId, selfId, targetId )	-- 餴琺击该任务后执行此脚本

	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then
		--  鹫t 疬㧟当前选中to� 鸬 Npcto� 鸬 T阯
		local szCurNpc = GetName(sceneId,targetId)
		
		-- 任务中记录to� 鸬 Npcto� 鸬 T阯
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
		local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
		
		local szNpcName = ""
		if nNpcId > 0  then
			_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
			
			if szCurNpc == szNpcName   then  -- 找对人了
				BeginEvent( sceneId )
					AddText( sceneId, "#YTruy 饀眎 k� ph鋘 b礽#W" )
					AddText( sceneId, "  R t痶 r t痶, gi� ta s� 疬a c醕 h� v� khu v馽 n鄖, hy v鱪g c醕 h� c� th� gi鋓 quy猼 lu鬾 s� vi甤 n鄖!" )
				EndEvent()
				DispatchEventList( sceneId, selfId, targetId )
				
				-- 设置Nhi甿 v� ho鄋 th鄋h标记
				local nCopyId = GetMissionParam(sceneId, selfId, misIndex, 4)
				x600032_AcceptEnterCopyScene( sceneId, selfId, nCopyId )
				return
			end
		end
		
	end

	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	--如果已接此任务
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then
		--发送任务需求to� 鸬 信息
		BeginEvent( sceneId )
			AddText( sceneId, x600032_g_MissionName )
			AddText( sceneId, x600032_g_ContinueInfo )
		EndEvent( )
		local bDone = x600032_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600032_g_ScriptId, x600032_g_MissionId, bDone )
	--Th鯽 m鉵任务接收条件
	elseif x600032_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600032_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600032_OnAccept( sceneId, selfId, targetId )
		end
	end
	
end

--**********************************
--列举事件
--**********************************
function x600032_OnEnumerate( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

   --如果已接此任务
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then
		AddNumText( sceneId, x600032_g_ScriptId, x600032_g_MissionName, 2 )
	end
	
end

--**********************************
--Ti猵 th�
--**********************************
function x600032_OnAccept( sceneId, selfId, targetId )
	
	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	-- 取 餴琺m祎 c醝随机to� 鸬 交任务to� 鸬 人
	local nLevel = GetLevel(sceneId, selfId)
	local nNpcId = 0
	local szNpcName = ""
	local szScene = ""
	local nScene = 0
	local nPosX = 0
	local nPosZ = 0
	local szNpcDesc =""
	local nSex = 0

	nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex = GetOneMissionNpc(25)

	--加入任务到玩家列表
	AddMission( sceneId, selfId, x600032_g_MissionId, x600032_g_ScriptId, 1, 0, 0 )	-- kill、area、item
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) <= 0 then
		return
	end

	-- 随机出玩家to� 鸬 T阯
	local nXing = random( 0, 4 )
	local nMing = random( 5, 9 )
	
	-- 设置C醝 n鄖 任务C 关注NPC
	SetMissionEvent( sceneId,selfId, x600032_g_MissionId, 4)
	
	-- 记录下随机选中to� 鸬 NpcId
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
	SetMissionByIndex(sceneId, selfId, misIndex, 4, nScene)
	SetMissionByIndex(sceneId, selfId, misIndex, 5, nXing)
	SetMissionByIndex(sceneId, selfId, misIndex, 6, nMing)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 7, nNpcId)
	
	-- 设置第3位为完成标志
	SetMissionByIndex(sceneId, selfId, misIndex, 3, 0)

	CallScriptFunction( x600032_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600032_g_ScriptId )

	--显示内容告诉玩家已经Ti猵 th巳挝�
	local nTaSex
	if 	nSex == 0  then
		nTaSex = "mu礽  "
	else
		nTaSex = "huynh  "
	end
	
	local missionInfo = "    挟 t� c黙 bang ch鷑g ta " .. x600032_g_StrList[nXing] .. x600032_g_StrList[nMing] ..  ", 疳nh c t靚h b醥 quan tr鱪g c黙 th鄋h ph� n鄖, c醕 h� c t痗 " .. szScene .. "t靘 th " .. szNpcName .. "," .. nTaSex .. "s� h� tr� h鄋h 鸬ng c黙 ch鷑g ta"
	BeginEvent( sceneId )
		AddText( sceneId, "C醕 h� 疸 nh nhi甿 v�: " .. x600032_g_MissionName )
		AddText( sceneId, missionInfo )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x600032_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600032_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x600032_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600032_g_MissionId )
	if  GetMissionParam(sceneId, selfId, misIndex, 0) >0  then
		return 1
	end 
	return 0
end

--**********************************
--放弃任务
--**********************************
function x600032_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务		
	CallScriptFunction( x600032_g_MilitaryScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x600032_OnKillObject( sceneId, selfId, objdataId ,objId )

	local monsterName = GetName(sceneId, objId)
	
	-- 使用任务中记录to� 鸬 来判断喧ng不喧ng杀对了人
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600032_g_MissionId )
	local nXing = GetMissionParam(sceneId, selfId, misIndex, 5)
	local nMing = GetMissionParam(sceneId, selfId, misIndex, 6)
	local szNpcName = x600032_g_StrList[nXing] .. x600032_g_StrList[nMing]

	if monsterName == szNpcName   then
		-- 给玩家添加相关to� 鸬 任务物品
		-- 设置Nhi甿 v� ho鄋 th鄋h标记
		SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
		x600032_NotifyFailTips( sceneId, selfId, "秀 gi猼 ch猼 " .. monsterName .. ": 1/1"  )
		LuaFnSetCopySceneData_Param( sceneId, 11, 1 )
		LuaFnSetCopySceneData_Param( sceneId, 15, selfId )

	end
end

--**********************************
--继续
--**********************************
function x600032_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600032_g_MissionName )
		AddText( sceneId, x600032_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600032_g_ScriptId, x600032_g_MissionId )
end

--**********************************
--提交
--**********************************
function x600032_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end
	
	if x600032_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600032_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
-- 
--**********************************
function x600032_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

	--判断当前to� 鸬 场景喧ng不喧ng副本,喧ng副本就Tr� v�
	if LuaFnGetSceneType(sceneId) == 1  then
		return
	end
	
	--  鹫t 疬㧟当前选中to� 鸬 Npcto� 鸬 T阯
	local szCurNpc = GetName(sceneId,targetId)
	
	-- 任务中记录to� 鸬 Npcto� 鸬 T阯
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
	local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
	
	local szNpcName = ""
	_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
	
	if GetMissionParam(sceneId, selfId, misIndex, x600032_g_IsMissionOkFail) ~= 1   then
		if szCurNpc == szNpcName   then  -- 找对人了
			TAddNumText(sceneId, x600032_g_ScriptId, x600032_g_MissionName, 2, -1,x600032_g_ScriptId);
			TDispatchEventList(sceneId, selfId, targetId)
			return 1
		end
		return 0
	end
end

--**********************************
--玩家同意进入副本
--**********************************
function x600032_AcceptEnterCopyScene( sceneId, selfId, nCopyId )
	
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then					--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600032_g_MissionId )		
		SetMissionByIndex( sceneId, selfId, misIndex, x600032_g_IsMissionOkFail, 0 )	--将任务to� 鸬 第0号数据设置为0,表示未完成to� 鸬 任务		
						
		x600032_MakeCopyScene( sceneId, selfId, nCopyId )
	end

end

function x600032_MakeCopyScene( sceneId, selfId, nCopyId )

	--  鹫t 疬㧟玩家to� 鸬 副本to� 鸬 号
	local mylevel = GetLevel( sceneId, selfId )
	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	
	--根据游戏to� 鸬 随机数来X醕 nh场景及其人物
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
	local nScene = GetMissionParam(sceneId, selfId, misIndex, 4);
	local nXing  = GetMissionParam(sceneId, selfId, misIndex, 5);
	local nMing  = GetMissionParam(sceneId, selfId, misIndex, 6);
	local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7);
	local nMenpai = -1;
	
	if     nScene == 9    then
		nMenpai = 1
	elseif nScene == 10   then
		nMenpai = 3
	elseif nScene == 11   then
		nMenpai = 2
	elseif nScene == 12   then
		nMenpai = 4
	elseif nScene == 13   then
		nMenpai = 7
	elseif nScene == 14   then
		nMenpai = 9
	elseif nScene == 15   then
		nMenpai = 5
	elseif nScene == 16   then
		nMenpai = 6
	elseif nScene == 17   then
		nMenpai = 8
	end
	
	if nMenpai<1 or nMenpai>9    then
		return
	end
	
	local nPox_X
	local nPos_Z
	nPox_X = GetHumanWorldX(sceneId,selfId)
	nPos_Z = GetHumanWorldZ(sceneId,selfId)

	LuaFnSetSceneLoad_Map( sceneId, x600032_g_CopySceneMap[nMenpai] )						--地图喧ng必须选取to� 鸬 ,而且必须T読 Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600032_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600032_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600032_g_CopySceneType )				--设置副本数据,这里将0号索引to� 鸬 数据设置为999,用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600032_g_ScriptId )					--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--设置定时器调用次数
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--设置副本关闭标志, 0开放,1关闭
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--设置离开倒计时次数
	LuaFnSetCopySceneData_Param( sceneId, 6, sceneId )				--保存队伍号
	LuaFnSetCopySceneData_Param( sceneId, 7, nPox_X )					--保存当前场景编号
	LuaFnSetCopySceneData_Param( sceneId, 8, nPos_Z )					--进入to� 鸬 人次

	-- 清空副本变量
	for k=9, 15  do
		LuaFnSetCopySceneData_Param( sceneId, k, 0 )
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600032_g_CopyArea[nMenpai] )
	LuaFnSetSceneLoad_Monster( sceneId, x600032_g_CopyNpc[nMenpai] .. "_" .. tostring(iniLevel) .. ".ini")

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--初始化完成后调用创建副本函数
	
	if bRetSceneID > 0 then
		x600032_NotifyFailTips( sceneId, selfId, "D竎h chuy琻 th鄋h c鬾g!" )
	else
		x600032_NotifyFailTips( sceneId, selfId, "S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!" )
	end
end

--**********************************
--副本事件
--**********************************
function x600032_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--设置副本入口场景号
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- 处于无法执行逻辑to� 鸬 状态
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600032_g_MissionId ) > 0 then			--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600032_g_MissionId )

		-- 寻找各c醝部分to� 鸬 落脚 餴琺
		local misIndex = GetMissionIndexByID(sceneId,leaderObjId,x600032_g_MissionId)
		local nScene = GetMissionParam(sceneId, leaderObjId, misIndex, 4)
		
		if     nScene == 9    then
			nMenpai = 1
		elseif nScene == 10   then
			nMenpai = 3
		elseif nScene == 11   then
			nMenpai = 2
		elseif nScene == 12   then
			nMenpai = 4
		elseif nScene == 13   then
			nMenpai = 7
		elseif nScene == 14   then
			nMenpai = 9
		elseif nScene == 15   then
			nMenpai = 5
		elseif nScene == 16   then
			nMenpai = 6
		elseif nScene == 17   then
			nMenpai = 8
		end
		
		local nFuben_X = x600032_g_EnterPos[nMenpai].x
		local nFuben_Z = x600032_g_EnterPos[nMenpai].z
		
		NewWorld( sceneId, leaderObjId, destsceneId, nFuben_X, nFuben_Z )
	end
end

--**********************************
--有玩家进入副本事件
--**********************************
function x600032_OnPlayerEnter( sceneId, selfId )

	LuaFnSetCopySceneData_Param( sceneId, 8, LuaFnGetCopySceneData_Param( sceneId, 8 ) + 1 )
	
	-- C T読 这里整理怪物to� 鸬 m祎 些特 餴琺
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do

		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)  == "帮会叛徒"  then
		
		-- 把C醝 n鄖 怪物to� 鸬 T阯设置为C to� 鸬 T阯,呵呵
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
		local nXing = GetMissionParam(sceneId, selfId, misIndex, 5)
		local nMing = GetMissionParam(sceneId, selfId, misIndex, 6)
		SetCharacterName(sceneId, nMonsterId, x600032_g_StrList[nXing] .. x600032_g_StrList[nMing] )
		end
	end

end

--**********************************
--有玩家T読 副本中死亡事件
--**********************************
function x600032_OnHumanDie( sceneId, selfId, killerId )
	-- 玩家死亡,不删除任务,

	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

end

function x600032_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--副本场景定时器事件
--**********************************
function x600032_OnCopySceneTimer( sceneId, nowTime )
	-- 如果玩家完成了任务,就开始倒计时,之后传玩家出去
	if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 3  then
		return
	end
	
	local HumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	
	if HumanCount < 1  then
		return
	end
	
	local HumanId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)

	if LuaFnGetCopySceneData_Param( sceneId, 11 ) == 1   then
	
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 0  then
			LuaFnSetCopySceneData_Param( sceneId, 12, 1 )
			LuaFnSetCopySceneData_Param( sceneId, 13, nowTime )
			x600032_NotifyFailTips(sceneId, HumanId,"Nhi甿 v� ho鄋 th鄋h, 10 gi鈟 sau c醕 h� s� 疬㧟 疬a ra kh鰅 疴y")
		end
		
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 1  then
			if nowTime - LuaFnGetCopySceneData_Param( sceneId, 13 ) > 5000  then
				LuaFnSetCopySceneData_Param( sceneId, 12, 2 )
				x600032_NotifyFailTips(sceneId, HumanId,"5 gi鈟 sau c醕 h� s� 疬㧟 疬a ra kh鰅 疴y")
			end
		end
		
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 2  then   
			if nowTime - LuaFnGetCopySceneData_Param( sceneId, 13 ) > 10000  then
				LuaFnSetCopySceneData_Param( sceneId, 12, 3 )
				x600032_BackToCity( sceneId, HumanId )
			end
		end
		
	end
end

--**********************************
-- 回城,只有Th鄋h ph� 任务副本可以调用此接口
--**********************************
function x600032_BackToCity( sceneId, selfId )

	local nMonsterScene = LuaFnGetCopySceneData_Param( sceneId, 6 )
	local nPos_X = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local nPos_Z = LuaFnGetCopySceneData_Param( sceneId, 8 )

	-- 传送玩家到C醝 n鄖 位置去
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nMonsterScene, nPos_X, nPos_Z)
end
