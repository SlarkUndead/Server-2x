--038004

-- 包不同 038004

--脚本号
x038004_g_scriptId = 038004

--所拥有to� 鸬 事件ID列表
x038004_g_eventList={}

--**********************************
--事件列表
--**********************************
function x038004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"#{JQ_YPT_B_005}")
	AddNumText(sceneId, x038004_g_scriptId,"R秈 b� n絠 n鄖",9,999);
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x038004_OnDefaultEvent( sceneId, selfId,targetId )
	x038004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x038004_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==999	then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0,115,66)
	end
end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x038004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x038004_g_eventList do
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
function x038004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			x038004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续(已经接了任务)
--**********************************
function x038004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x038004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x038004_OnDie( sceneId, selfId, killerId )
end
