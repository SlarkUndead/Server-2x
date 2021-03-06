-- 200021
-- 顶天立地

-- 再T読 副本内完成杀怪任务

--************************************************************************
--MisDescBegin
--脚本号
x200021_g_ScriptId = 200021

--副本名称
x200021_g_CopySceneName="T� Hi玭 Trang"

--任务号
x200021_g_MissionId = 21

--前续任务
x200021_g_PreMissionId = 20

--目标NPC
x200021_g_Name = "乔峰"

--喧ng否喧ngTinh英任务
x200021_g_IfMissionElite = 1

--衅ng c nhi甿 v� 
x200021_g_MissionLevel = 40

--任务归类
x200021_g_MissionKind = 47

--任务文本描述
x200021_g_MissionName="酗nh thi阯 l 鸶a"
x200021_g_MissionInfo="#{Mis_juqing_0021}"
x200021_g_MissionTarget="#{Mis_juqing_Tar_0021}"	--M鴆 ti陁 nhi甿 v�
x200021_g_MissionComplete="  $N, s� gi鷓 疝 c黙 c醕 h�, Ki玼 m� ta c鋗 k韈h v� c鵱g. V鄌 bu眎 s醤g ng鄖 mai, ch鷑g ta s� g l読 t読 恤ng m鬾 c黙 th鄋h L誧 D呓ng!"	--Ho鄋 t nhi甿 v鴑pc说话to� 鸬 话
x200021_g_MissionContinue="  B課 疸 疳nh b読 B鄌 Thi阯 Linh, K� L鴆, H呔ng V鱪g H鋓 ba ng叨i h� ch遖? "

x200021_g_MoneyBonus=8100
x200021_g_exp=9600

x200021_g_RadioItemBonus={{id=10422004 ,num=1},{id=10422005,num=1},{id=10422006,num=1}}

x200021_g_Custom	= { {id="秀 疳nh b読 B鄌 Thi阯 Linh",num=1},{id="秀 疳nh b読 K� L鴆",num=1},{id="秀 疳nh b読 H呔ng V鱪g H鋓",num=1}, }
x200021_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--任务入口函数
--**********************************
function x200021_OnDefaultEvent( sceneId, selfId, targetId )	-- 餴琺击该任务后执行此脚本
	--如果已接此任务
	if IsHaveMission(sceneId,selfId,x200021_g_MissionId) > 0 then
		--发送任务需求to� 鸬 信息
		BeginEvent(sceneId)
			AddText(sceneId,x200021_g_MissionName)
			AddText(sceneId,x200021_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
		EndEvent( )
		bDone = x200021_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId,bDone)
    --Th鯽 m鉵任务接收条件
  elseif x200021_CheckAccept(sceneId,selfId) > 0 then
		--发送任务Ti猵 th毕允総o� 鸬 信息
		BeginEvent(sceneId)
			AddText(sceneId,x200021_g_MissionName)
			AddText(sceneId,x200021_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200021_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
				for i, item in x200021_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
			AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId)
  end

end

--**********************************
--列举事件
--**********************************
function x200021_OnEnumerate( sceneId, selfId, targetId )

  --如果玩家完成过C醝 n鄖 任务
  if IsMissionHaveDone(sceneId,selfId,x200021_g_MissionId) > 0 then
		return
	end
    --如果已接此任务
	if IsHaveMission(sceneId,selfId,x200021_g_MissionId) > 0 then
		AddNumText(sceneId,x200021_g_ScriptId,x200021_g_MissionName,2,-1);
		--Th鯽 m鉵任务接收条件
	elseif x200021_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200021_g_ScriptId,x200021_g_MissionName,1,-1);
	end

end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x200021_CheckAccept( sceneId, selfId )
	
	--C 4c才能接
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200021_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti猵 th�
--**********************************
function x200021_OnAccept( sceneId, selfId )
	--加入任务到玩家列表
	local ret = AddMission( sceneId,selfId, x200021_g_MissionId, x200021_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh k� nhi甿 v� c黙 c醕 h� 疸 馥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)			-- 餴琺到任务to� 鸬 序列号
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--根据序列号把任务变量to� 鸬 第0位置0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--根据序列号把任务变量to� 鸬 第1位置0
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)						--根据序列号把任务变量to� 鸬 第1位置0
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)						--根据序列号把任务变量to� 鸬 第1位置0
	Msg2Player(  sceneId, selfId,"#YNh nhi甿 v�: 酗nh thi阯 l 鸶a",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200021_g_SignPost.x, x200021_g_SignPost.z, x200021_g_SignPost.tip )
	
	--接任务后,把相关to� 鸬 怪设置为可以Cu礳 chi猲 
	-- C 遍历所有to� 鸬 怪,改变他们to� 鸬 阵营
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "B鄌 Thi阯 Linh"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		elseif GetName(sceneId, nMonsterId)  == "K� L鴆"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		elseif GetName(sceneId, nMonsterId)  == "H呔ng V鱪g H鋓"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		end
	end

	SetMissionEvent(sceneId, selfId, x200021_g_MissionId, 0)

end

--**********************************
--放弃
--**********************************
function x200021_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务
  DelMission( sceneId, selfId, x200021_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200021_g_SignPost.tip )
end

--**********************************
--继续
--**********************************
function x200021_OnContinue( sceneId, selfId, targetId )
	--提交任务时to� 鸬 � 餴琺餍畔�
  BeginEvent(sceneId)
	AddText(sceneId,x200021_g_MissionName)
	AddText(sceneId,x200021_g_MissionComplete)
	for i, item in x200021_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
	AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId)
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x200021_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200021_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)

	if Kill1~=1 			then
		return 0
	elseif Kill2~=1 	then
		return 0
	elseif Kill3~=1   then
		return 0
	end

	return 1
end

--**********************************
--提交
--**********************************
function x200021_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200021_CheckSubmit(sceneId, selfId) == 1  then

  	BeginAddItem(sceneId)
		for i, item in x200021_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--添加任务奖励
		if ret < 1 then
			--任务奖励没有加成功
			BeginEvent(sceneId)
				strText = "Kh鬾g th� Ho鄋 t nhi甿 v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200021_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200021_g_exp)

		DelMission( sceneId, selfId, x200021_g_MissionId )
		MissionCom( sceneId, selfId, x200021_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo鄋 t nhi甿 v�: 酗nh thi阯 l 鸶a",MSG2PLAYER_PARA )

		-- 调用后续任务
		CallScriptFunction((200026), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x200021_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == "B鄌 Thi阯 Linh"	  then
		-- 取 餴琺C醝 n鄖 怪物死后拥有分配权to� 鸬 人数
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- 取 餴琺拥有分配权to� 鸬 人to� 鸬 objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- 看C醝 n鄖 人喧ng不喧ng有C醝 n鄖 任务
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"秀 gi猼 ch猼 B鄌 Thi阯 Linh 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
				
				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	if GetName(sceneId,objId) == "K� L鴆"	  then
		-- 取 餴琺C醝 n鄖 怪物死后拥有分配权to� 鸬 人数
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- 取 餴琺拥有分配权to� 鸬 人to� 鸬 objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- 看C醝 n鄖 人喧ng不喧ng有C醝 n鄖 任务
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"秀 gi猼 ch猼 K� L鴆 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)

				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	if GetName(sceneId,objId) == "H呔ng V鱪g H鋓"	  then
		-- 取 餴琺C醝 n鄖 怪物死后拥有分配权to� 鸬 人数
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- 取 餴琺拥有分配权to� 鸬 人to� 鸬 objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- 看C醝 n鄖 人喧ng不喧ng有C醝 n鄖 任务
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,3,1)
				BeginEvent(sceneId)
				AddText(sceneId,"秀 gi猼 ch猼 H呔ng V鱪g H鋓 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)

				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	
end

--**********************************
--进入区域事件
--**********************************
function x200021_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x200021_OnItemChanged( sceneId, selfId, itemdataId )
end


