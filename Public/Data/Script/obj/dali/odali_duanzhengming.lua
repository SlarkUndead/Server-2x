--段正明

--脚本号
x002005_g_scriptId = 002005

--所拥有to� 鸬 事件ID列表
x002005_g_eventList={}
--x002005_g_eventList={200401,200402,200604,200701,201502,201601,201602,201701,201801,201901,201902}	

--**********************************
--事件列表
--**********************************
function x002005_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng "
	else
		PlayerSex = " c醕 h� "
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  "..PlayerName..PlayerSex..", g c醕 h� th vui qu�. 詉, l� vua m祎 n呔c, su痶 ng鄖 vi甤 tri玼 ch韓h c� b醡 l th鈔, ph鋓 lo qu� nhi玼, kh鬾g bg t緄 Ni阭 Hoa T� m� tu h鄋h c騨 t痶 h絥!")
	for i, eventId in x002005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x002005_OnDefaultEvent( sceneId, selfId,targetId )
	x002005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x002005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x002005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPCto� 鸬 任务
--**********************************
function x002005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			x002005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续(已经接了任务)
--**********************************
function x002005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x002005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002005_OnDie( sceneId, selfId, killerId )
end
