-- 402102
-- 副本内保护

--************************************************************************
--MisDescBegin
--脚本号
x402102_g_ScriptId = 402102

--MisDescEnd
--************************************************************************

x402102_g_Item = 40004426

--副本名称
x402102_g_CopySceneName = "Ti猵 c製 Linh Th�"

x402102_g_CopySceneType = FUBEN_PORTECT_PET	--副本类型,定义T読 ScriptGlobal.lua里面

x402102_g_CopySceneMap = "petisland_2.nav"
x402102_g_Exit = "petisland_2.ini"
x402102_g_LimitMembers = 3				--可以进副本to� 鸬 最小队伍人数
x402102_g_TickTime = 1						--回调脚本to� 鸬 时钟时间(单位:  gi鈟/次)
x402102_g_LimitTotalHoldTime = 360--副本可以存活to� 鸬 时间(单位: 次数),如果此时间到了,则任务将会th b読
x402102_g_LimitTimeSuccess = 500	--副本时间限制(单位: 次数),如果此时间到了,任务完成
x402102_g_CloseTick = 3						--副本关闭前倒计时(单位: 次数)
x402102_g_NoUserTime = 300				--副本中没有人后可以继续保存to� 鸬 时间(单位:  gi鈟)
x402102_g_DeadTrans = 0						--死亡转移模式,0: 死亡后还可以继续T読 副本,1: 死亡后被强制移出副本
x402102_g_Fuben_X = 87						--进入副本to� 鸬 位置X
x402102_g_Fuben_Z = 64						--进入副本to� 鸬 位置Z
x402102_g_Back_X = 87							--源场景位置X
x402102_g_Back_Z = 64							--源场景位置Z
x402102_g_Back_SceneId = 158			--源场景Id

-- Th醤h Th� S絥场景Id
x402102_g_PetSceneId = 158

-- 每两c醝小野猪刷出to� 鸬 间隔时间
x402102_g_SetpTime = 10

-- 每m祎 大帮怪刷出to� 鸬 等待时间
x402102_g_SetpWaiteTime_1 = 15
x402102_g_SetpWaiteTime_2 = 60
x402102_g_SetpWaiteTime_3 = 120 
x402102_g_SetpWaiteTime_4 = 150
x402102_g_SetpWaiteTime_5 = 240
x402102_g_SetpWaiteTime_6 = 180
x402102_g_SetpWaiteTime_7 = 100
x402102_g_SetpWaiteTime_8 = 50 


-- 野猪to� 鸬 信息
x402102_g_MonsterInfo_1 = {	{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
}

x402102_g_MonsterInfo_2 = {	{id=3780,num=5,x=150,z=46,ai=22,ai_f=205,p=1},
														{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
}

x402102_g_MonsterInfo_3 = {	{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
														{id=3850,num=5,x=61,z=96,ai=22,ai_f=257,p=4},
														{id=3860,num=5,x=150,z=46,ai=22,ai_f=258,p=1},
}

x402102_g_MonsterInfo_4 = {	{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
														{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
														{id=3860,num=5,x=61,z=96,ai=22,ai_f=258,p=4},
														{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
}

x402102_g_MonsterInfo_5 = {	{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
														{id=3860,num=5,x=150,z=46,ai=22,ai_f=258,p=1},
														{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
}

x402102_g_MonsterInfo_6 = {	{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
														{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
}

x402102_g_MonsterInfo_7 = {	{id=3860,num=5,x=61,z=96,ai=22,ai_f=258,p=4},
}

x402102_g_MonsterInfo_8 = {	{id=3790,num=5,x=85,z=18,ai=22,ai_f=206,p=3},
}

-- 要保护to� 鸬 珍兽
x402102_g_MonsterAI = { {id=3730,ai=200},
												{id=3740,ai=201},
												{id=3750,ai=202},
												{id=3760,ai=203},
												{id=3770,ai=204},
}

-- 每c醝刷新� gi鈟⒊鰐o� 鸬 野猪数量
x402102_g_MonsterInfo_Count_1 = 7
x402102_g_MonsterInfo_Count_2 = 8
x402102_g_MonsterInfo_Count_3 = 8
x402102_g_MonsterInfo_Count_4 = 10
x402102_g_MonsterInfo_Count_5 = 12
x402102_g_MonsterInfo_Count_6 = 12
x402102_g_MonsterInfo_Count_7 = 13
--**********************************
--任务入口函数
--**********************************
function x402102_OnDefaultEvent( sceneId, selfId, targetId )

	-- 检测喧ng不喧ngT読 Th醤h Th� S絥场景,不喧ng就直接Tr� v�
	if sceneId ~= 158  then
		return
	end
	
	if GetNumText()==1010 then
		BeginEvent(sceneId)
				AddText(sceneId,"#{YZBZ_20070930_002}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	-- 0
	if LuaFnHasTeam(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi猵 c製 Linh Th�");
			AddText(sceneId,"   <Linh th� lo lg nh靚 ng呓i bg n豠 con m, t馻 h� mu痭 n骾: Kh鬾g 瘘 ba ng叨i, c醕 ng呓i n鄖 kh鬾g ph鋓 kh鬾g c鬾g ch竨 ch猼 sao!>#R(B課 ph鋓 l� 鸬i tr叻ng, v� trong 鸬i c� 韙 nh 3 ng叨i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2,检测队伍喧ng不喧ng够人数
	if GetTeamSize(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi猵 c製 Linh Th�");
			AddText(sceneId,"  <Linh th� lo lg nh靚 ng呓i bg n豠 con m, t馻 h� mu痭 n骾: Kh鬾g 瘘 ba ng叨i, c醕 ng呓i n鄖 kh鬾g ph鋓 kh鬾g c鬾g ch竨 ch猼 sao!>#R(B課 ph鋓 l� 鸬i tr叻ng, v� trong 鸬i c� 韙 nh 3 ng叨i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 3,检测玩家喧ng不喧ng队长
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi猵 c製 Linh Th�");
			AddText(sceneId,"  <Linh th� lo lg nh靚 ng呓i bg n豠 con m, t馻 h� mu痭 n骾: Kh鬾g 瘘 ba ng叨i, c醕 ng呓i n鄖 kh鬾g ph鋓 kh鬾g c鬾g ch竨 ch猼 sao!>#R(B課 ph鋓 l� 鸬i tr叻ng, v� trong 鸬i c� 韙 nh 3 ng叨i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 4,检测喧ng不喧ng人都到位了
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi猵 c製 Linh Th�");
			AddText(sceneId,"  <Linh th� lo lg ngo鋘h 馥u, t馻 h� mu痭 n骾: Ng呓i c騨 c� 鸬i vi阯 kh鬾g � g 疴y, mau t h䅟!>");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 1,玩家等c
	local nPlayerNum = GetNearTeamCount(sceneId,selfId)
	local strName = {}
	strName[1] = ""
	strName[2] = ""
	strName[3] = ""
	strName[4] = ""
	strName[5] = ""
	strName[6] = ""
	local ret = 1
 	
	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		if GetLevel(sceneId, nPlayerId) < 40  then
			ret = 0
			strName[i+1] = GetName(sceneId, nPlayerId)
		end
	end
	
	local nCount = 0
	if ret == 0  then
		local szAllName = ""
		for i=1, 6  do
			if strName[i] ~= ""  then
				if nCount == 0  then
					szAllName = strName[i]
				else
					szAllName = szAllName .. ", " .. strName[i]
				end
				nCount = nCount+1
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi猵 c製 Linh Th�");
			AddText(sceneId,"  Trong 鸬i ng� c� th鄋h vi阯 (" .. szAllName .. ") c b th h絥 40 c, kh鬾g th� tham gia c製 v総 linh th�.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 所有to� 鸬 检测通过,创建场景,删除对话珍兽
	-- 做m祎 c醝安全检查
	if sceneId==x402102_g_PetSceneId  then
		x402102_MakeCopyScene(sceneId, selfId, targetId)
		LuaFnDeleteMonster(sceneId, targetId)
	end
end

--**********************************
--列举事件
--**********************************
function x402102_OnEnumerate( sceneId, selfId, targetId )

	if sceneId ~= 158  then
		return
	end

	-- 最好T読 这里做m祎 c醝T阯判定
	AddNumText( sceneId, x402102_g_ScriptId, "Ti猵 c製 Linh Th�",10 ,-1  )
	AddNumText( sceneId, x402102_g_ScriptId, "#{YZBZ_20070930_001}",11 ,1010  )

end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x402102_CheckAccept( sceneId, selfId )
	
end

--**********************************
--询问玩家喧ng否要进入副本
--**********************************
function x402102_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti猵 th�
--**********************************
function x402102_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--玩家同意进入副本
--**********************************
function x402102_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--创建副本
--**********************************
function x402102_MakeCopyScene( sceneId, selfId, targetId )
	
	-- 使用械i vi阯 to� 鸬 等c来算出怪物to� 鸬 等c
	local param0 = 4;
	local param1 = 3;

	--最终结果
	local mylevel = 0;

	--临时变量
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --没有队伍
		mylevel = GetLevel(sceneId, selfId)
	end
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "petisland_2.nav"); --地图喧ng必须选取to� 鸬 ,而且必须T読 Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402102_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402102_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402102_g_CopySceneType);--设置副本数据,这里将0号索引to� 鸬 数据设置为999,用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402102_g_ScriptId);--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--设置定时器调用次数
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--设置副本关闭标志, 0开放,1关闭
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--设置离开倒计时次数
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --保存队伍号
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--杀死Bossto� 鸬 数量
	
	-- 剧情用到to� 鸬 变量清空
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = floor(PlayerMaxLevel/10);
	end
	
	-- 使用第8位,记录怪物实际to� 鸬 等c
	LuaFnSetCopySceneData_Param(sceneId,8, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,9, iniLevel)
	
	-- 记录要Ti猵 c製 to� 鸬 怪物to� 鸬 基础Id
	LuaFnSetCopySceneData_Param(sceneId,10, GetMonsterDataID(sceneId, targetId))

	-- 第16,17位保存玩家to� 鸬 当前坐标
	local x,z = GetWorldPos(sceneId,selfId)
	LuaFnSetCopySceneData_Param(sceneId,16, x)
	LuaFnSetCopySceneData_Param(sceneId,17, z)
	
	
	--设置场景中to� 鸬 各种Npc和区域
	--LuaFnSetSceneLoad_Area( sceneId, "petisland_2_area.ini" )
	--LuaFnSetSceneLoad_Monster( sceneId, "petisland_2_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)

	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D竎h chuy琻 th鄋h c鬾g!")
		else
			AddText(sceneId,"S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!")
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--副本事件
--**********************************
function x402102_OnCopySceneReady( sceneId, destsceneId )
	
	--进入副本to� 鸬 规则
	-- 1,如果C醝 n鄖 文件没有组队,就传送C醝 n鄖 玩家自己进入副本
	-- 2, 如果玩家有队伍,但喧ng玩家不喧ng队长,就传送自己进入副本
	-- 3,如果玩家有队伍,并且C醝 n鄖 玩家喧ng队长,就传送自己和附近队友m祎 起进去

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --设置副本入口场景号
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- 处于无法执行逻辑to� 鸬 状态
		return
	end
	
	-- 检测玩家喧ng不喧ng有队伍
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- 没有队伍
		x402102_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x402102_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x402102_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x402102_GotoScene(sceneId, ObjId, destsceneId)
	NewWorld( sceneId, ObjId, destsceneId, x402102_g_Fuben_X, x402102_g_Fuben_Z) ;
end


--**********************************
--有玩家进入副本事件
--**********************************
function x402102_OnPlayerEnter( sceneId, selfId )
	-- 设置玩家阵营为100
	SetUnitCampID(sceneId, selfId, selfId, 100)
	-- 进入场景提示
	x402102_TipAllHuman( sceneId, "D� tr� b誳 lo課 15 gi鈟 sau b 馥u ti猲 c鬾g, ch� � trong 20 ph鷗 b鋙 h� linh th� an to鄋!" )
end

--**********************************
--有玩家T読 副本中死亡事件
--**********************************
function x402102_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--放弃
--**********************************
function x402102_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- 回城,只有Th鄋h th溉挝窀北究梢缘饔么私涌�
--**********************************
function x402102_BackToCity( sceneId, selfId )
	
end

--**********************************
--继续
--**********************************
function x402102_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--检测喧ng否可以提交
--**********************************
function x402102_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--提交
--**********************************
function x402102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--杀死怪物或玩家
--**********************************
function x402102_OnDie( sceneId, objId, killerId )
	x402102_TipAllHuman(sceneId, "Ti猵 c製 Linh Th� th b読!")
		LuaFnSetCopySceneData_Param(sceneId, 12, 10)
end

--**********************************
--提示所有副本内玩家
--**********************************
function x402102_TipAllHuman( sceneId, Str )
	--  鹫t 疬㧟场景里头to� 鸬 所有人
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- 没有人to� 鸬 场景,什么都不做
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x402102_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--进入区域事件
--**********************************
function x402102_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--道具改变
--**********************************
function x402102_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--副本场景定时器事件
--**********************************
function x402102_OnCopySceneTimer( sceneId, nowTime )
	
	-- 计时器主要要按照时间来安排刷怪
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 11)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 12)
	
	local nStep_1 = LuaFnGetCopySceneData_Param(sceneId, 13)
	local nPreTime_1 = LuaFnGetCopySceneData_Param(sceneId, 14)
	
	local nBeginTime = LuaFnGetCopySceneData_Param(sceneId, 21)
	local nBeginTimeFlag = LuaFnGetCopySceneData_Param(sceneId, 22)
	
	if nCurTime-nBeginTime >= 18*60 and nBeginTimeFlag==1  then
		x402102_TipAllHuman( sceneId, "Ho誸 鸬ng 2 ph鷗 sau ch d裻, ch� � b鋙 h� linh th� an to鄋!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 2)
	end
	
	if nCurTime-nBeginTime >= 19*60 and nBeginTimeFlag==2  then
		x402102_TipAllHuman( sceneId, "Ho誸 鸬ng 1 ph鷗 sau ch d裻, ch� � b鋙 h� linh th� an to鄋!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 3)
	end
	
	if nCurTime-nBeginTime >= 19*60+30 and nBeginTimeFlag==3  then
		x402102_TipAllHuman( sceneId, "Ho誸 鸬ng 30 gi鈟 sau ch d裻, ch� � b鋙 h� linh th� an to鄋!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 4)
	end

	-- 创建要保护to� 鸬 珍兽
	if nStep == 0  then
		local nMonterLevel = LuaFnGetCopySceneData_Param(sceneId, 8)
		local nMonterIniID = LuaFnGetCopySceneData_Param(sceneId, 9)
		local nMonterID 	 = LuaFnGetCopySceneData_Param(sceneId, 10)
		
		local nAi = 0
		for i=1, 5  do
			if x402102_g_MonsterAI[i].id == nMonterID  then
				nAi = x402102_g_MonsterAI[i].ai
			end
		end
		
		local nRetrievalMonterID = 0
		if nMonterIniID >= 11 then
		   nRetrievalMonterID = nMonterID + nMonterIniID - 11 + 30000		
		else
		   nRetrievalMonterID = nMonterID + nMonterIniID - 1		
		end
		
		local nNpcId = LuaFnCreateMonster(sceneId, nRetrievalMonterID,
										 89, 64, 9, nAi, 402102)
		SetUnitCampID(sceneId, nNpcId, nNpcId, 100)
		SetCharacterTitle(sceneId, nNpcId, "Linh Th�")
		SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 21, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 22, 1)
		
		-- 保存C醝 n鄖 珍兽to� 鸬 Id
		LuaFnSetCopySceneData_Param(sceneId, 15, nNpcId)
	end
	
	--
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_1 and nStep==1  then
		for i, Npc in x402102_g_MonsterInfo_1  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t c鬾g l th� 1! (C騨 6 l c鬾g k韈h)" )
		x402102_TipAllHuman( sceneId, "60 gi鈟 sau d� tr� b 馥u ti猲 c鬾g ti猵 theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==2) and 
				(nStep_1<x402102_g_MonsterInfo_Count_1-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_1  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end
	
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_2 and nStep==2  then
		for i, Npc in x402102_g_MonsterInfo_2  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t c鬾g l th� 2! (C騨 5 l c鬾g k韈h)" )
		x402102_TipAllHuman( sceneId, "120 gi鈟 sau d� tr� b 馥u ti猲 c鬾g ti猵 theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==3) and 
				(nStep_1<x402102_g_MonsterInfo_Count_2-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_2  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end
	
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_3 and nStep==3  then
		for i, Npc in x402102_g_MonsterInfo_3  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t c鬾g l th� 3! (C騨 4 l c鬾g k韈h)" )
		x402102_TipAllHuman( sceneId, "150 gi鈟 sau d� tr� b 馥u ti猲 c鬾g ti猵 theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==4) and 
				(nStep_1<x402102_g_MonsterInfo_Count_3-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_3  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_4 and nStep==4  then
		for i, Npc in x402102_g_MonsterInfo_4  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t c鬾g l th� 4! (C騨 3 l c鬾g k韈h)" )
		x402102_TipAllHuman( sceneId, "240 gi鈟 sau d� tr� b 馥u ti猲 c鬾g ti猵 theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==5) and 
				(nStep_1<x402102_g_MonsterInfo_Count_4-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_4  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_5 and nStep==5  then
		for i, Npc in x402102_g_MonsterInfo_5  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t c鬾g l th� 5! (C騨 2 l c鬾g k韈h)" )
		x402102_TipAllHuman( sceneId, "180 gi鈟 sau d� tr� b 馥u ti猲 c鬾g ti猵 theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==6) and 
				(nStep_1<x402102_g_MonsterInfo_Count_5-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_6 and nStep==6  then
		for i, Npc in x402102_g_MonsterInfo_6  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t c鬾g l th� 6! (C騨 1 l c鬾g k韈h)" )
		x402102_TipAllHuman( sceneId, "100 gi鈟 sau d� tr� b 馥u ti猲 c鬾g ti猵 theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==7) and 
				(nStep_1<x402102_g_MonsterInfo_Count_6-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_6  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_7 and nStep==7  then
		for i, Npc in x402102_g_MonsterInfo_7  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� b 馥u t c鬾g l cu痠 c鵱g!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==8) and 
				(nStep_1<x402102_g_MonsterInfo_Count_7-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_7  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	--BOSS
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_8 and nStep==8  then
		for i, Npc in x402102_g_MonsterInfo_8  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetCharacterTitle(sceneId, nNpcId, "L鉶 nha 鸬i tr叨ng")
				-- 按照巡逻路线走
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "C鋘h gi醕! D� tr� 馥u m鴆 xu hi畁!!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	local nLastTime = 20*60 -(x402102_g_SetpWaiteTime_1+
														x402102_g_SetpWaiteTime_2+
														x402102_g_SetpWaiteTime_3+
														x402102_g_SetpWaiteTime_4+
														x402102_g_SetpWaiteTime_5+
														x402102_g_SetpWaiteTime_6+
														x402102_g_SetpWaiteTime_7+
														x402102_g_SetpWaiteTime_8)
	
	-- 时间结束,
	if nCurTime-nPreTime>=nLastTime and nStep==9  then

		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)

		-- 检测要保护to� 鸬 珍兽喧ng不喧ng还活着,
		local nNpcId = LuaFnGetCopySceneData_Param(sceneId, 15)
		local bOk = 0
		local nMonsterCount = GetMonsterCount(sceneId)
		for i=0, nMonsterCount-1   do
			local nMontserid = GetMonsterObjID(sceneId, i)
			if nNpcId == nMontserid   then
				-- 完成
				bOk = 1
			end
		end
		
		if bOk == 1  then
			x402102_TipAllHuman(sceneId, "Ti猵 c製 Linh Th� th鄋h c鬾g!")
			
			-- 世界公告
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum < 1 then
				return
			end
			local nLeaderId = 0
			for i=0, nHumanNum-1  do
				local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				if GetTeamLeader(sceneId, nPlayerId) == nPlayerId  then
					nLeaderId = nPlayerId
				end
			end
			if nLeaderId == 0  then
				return
			end
			
			local szLeaderName = GetName(sceneId, nLeaderId)
			local str = format("#GTh醤h th� s絥#P, c醝 th� anh h鵱g #{_INFOUSR%s}#P c鵱g 鸬i h鎢 餰m h猼 to鄋 l馽, 疳nh l鵬 #YD� Tr� b誳 lo課 #P餴阯 cu皀g ti猲 c鬾g, cam 餺an linh th� an to鄋!",szLeaderName)
			BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
		end
	end
	
	if nStep==10  then
		x402102_TipAllHuman(sceneId, "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g 30 gi鈟 n鎍.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- 时间结束,
	if nCurTime-nPreTime>=15 and nStep==11  then
		x402102_TipAllHuman(sceneId, "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g 15 gi鈟 n鎍.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- 时间结束,
	if nCurTime-nPreTime>=10 and nStep==12  then
		x402102_TipAllHuman(sceneId, "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g 5 gi鈟 n鎍.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- 时间结束,
	if nCurTime-nPreTime>=5 and nStep==13  then
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			local x = LuaFnGetCopySceneData_Param(sceneId, 16)
			local z = LuaFnGetCopySceneData_Param(sceneId, 17)
			NewWorld( sceneId, nPlayerId, x402102_g_Back_SceneId, x, z) ;
		end
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
end

--**********************************
-- 通用创建怪物函数
--**********************************
function x402102_CreateNpc(sceneId, NpcId, x, y, Ai, AiFile, Script)
	local PlayerLevel = LuaFnGetCopySceneData_Param(sceneId, 8)
	local ModifyLevel = LuaFnGetCopySceneData_Param(sceneId, 9)
	local nNpcId = 0
	
	if ModifyLevel >= 11 then
	   nNpcId = NpcId + ModifyLevel-11 + 30000
	else
	   nNpcId = NpcId + ModifyLevel-1
	end
	
	local nMonsterId = LuaFnCreateMonster(sceneId, nNpcId, x, y, Ai, AiFile, Script)
	SetLevel(sceneId, nMonsterId, PlayerLevel)
	return nMonsterId
end

