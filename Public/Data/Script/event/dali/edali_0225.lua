--找人任务
--赵天师寻找段延庆
--MisDescBegin
--脚本号
x210225_g_ScriptId = 210225

--Ti猵 th挝馧PC属性
x210225_g_Position_X=214.8831
x210225_g_Position_Z=283.8709
x210225_g_SceneID=2
x210225_g_AccomplishNPC_Name="衞鄋 Di阯 Kh醤h"

--任务号
x210225_g_MissionId = 705

--上m祎 c醝任务to� 鸬 ID
x210225_g_MissionIdPre = 704

--目标NPC
x210225_g_Name	="衞鄋 Di阯 Kh醤h"

--任务归类
x210225_g_MissionKind = 13

--衅ng c nhi甿 v� 
x210225_g_MissionLevel = 9

--喧ng否喧ngTinh英任务
x210225_g_IfMissionElite = 0

--任务名
x210225_g_MissionName="衞鄋 Di阯 Kh醤h"
x210225_g_MissionInfo="#{event_dali_0035}"
x210225_g_MissionTarget="� #Gh雖 Ng鱟 Nh� ph韆 恤ng Nam th鄋h 姓i L�#W t靘 #R衞鄋 Di阯 Kh醤h#W#{_INFOAIM215,284,2, 衞鄋 Di阯 Kh醤h}. "
x210225_g_MissionComplete="#{event_dali_0036}"
x210225_g_MoneyBonus=72
x210225_g_SignPost = {x = 215, z = 284, tip = "衞鄋 Di阯 Kh醤h"}

x210225_g_Custom	= { {id="秀 t靘 疬㧟 衞鄋 Di阯 Kh醤h",num=1} }
x210225_g_IsMissionOkFail = 1		--变量to� 鸬 第0位

--MisDescEnd
--**********************************
--任务入口函数
--**********************************
function x210225_OnDefaultEvent( sceneId, selfId, targetId )
    --如果玩家完成过C醝 n鄖 任务
    if (IsMissionHaveDone(sceneId,selfId,x210225_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210225_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210225_g_Name then
			x210225_OnContinue( sceneId, selfId, targetId )
		end
    --Th鯽 m鉵任务接收条件
    elseif x210225_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210225_g_Name then
			--发送任务Ti猵 th毕允総o� 鸬 信息
			BeginEvent(sceneId)
				AddText(sceneId,x210225_g_MissionName)
				AddText(sceneId,x210225_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210225_g_MissionTarget)
				AddMoneyBonus( sceneId, x210225_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210225_g_ScriptId,x210225_g_MissionId)
		end
    end
end

--**********************************
--列举事件
--**********************************
function x210225_OnEnumerate( sceneId, selfId, targetId )
    --如果玩糾祎 刮赐瓿缮蟤祎 c醝任务
    if 	IsMissionHaveDone(sceneId,selfId,x210225_g_MissionIdPre) <= 0 then
    	return
    end
    --如果玩家完成过C醝 n鄖 任务
    if IsMissionHaveDone(sceneId,selfId,x210225_g_MissionId) > 0 then
    	return 
    --如果已接此任务
    elseif IsHaveMission(sceneId,selfId,x210225_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210225_g_Name then
			AddNumText(sceneId, x210225_g_ScriptId,x210225_g_MissionName,2,-1);
		end
    --Th鯽 m鉵任务接收条件
    elseif x210225_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210225_g_Name then
			AddNumText(sceneId,x210225_g_ScriptId,x210225_g_MissionName,1,-1);
		end
    end
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x210225_CheckAccept( sceneId, selfId )
	--C 8c才能接
	if GetLevel( sceneId, selfId ) >= 8 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti猵 th�
--**********************************
function x210225_OnAccept( sceneId, selfId )
	--加入任务到玩家列表
	AddMission( sceneId,selfId, x210225_g_MissionId, x210225_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh nhi甿 v�#W: 衞鄋 Di阯 Kh醤h",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210225_g_SignPost.x, x210225_g_SignPost.z, x210225_g_SignPost.tip )

	-- 设置任务完成标志
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210225_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--放弃
--**********************************
function x210225_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务
    DelMission( sceneId, selfId, x210225_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210225_g_SignPost.tip )
end

--**********************************
--继续
--**********************************
function x210225_OnContinue( sceneId, selfId, targetId )
	--提交任务时to� 鸬 � 餴琺餍畔�
    BeginEvent(sceneId)
		AddText(sceneId,x210225_g_MissionName)
		AddText(sceneId,x210225_g_MissionComplete)
		AddMoneyBonus( sceneId, x210225_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210225_g_ScriptId,x210225_g_MissionId)
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x210225_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210225_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--提交
--**********************************
function x210225_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210225_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--添加任务奖励
		AddMoney(sceneId,selfId,x210225_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,100)
		DelMission( sceneId,selfId,  x210225_g_MissionId )
		--设置任务已经被完成过
		MissionCom( sceneId,selfId,  x210225_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo鄋 t nhi甿 v�#W: 衞鄋 Di阯 Kh醤h",MSG2PLAYER_PARA )
		CallScriptFunction( 210226, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x210225_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x210225_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x210225_OnItemChanged( sceneId, selfId, itemdataId )
end
