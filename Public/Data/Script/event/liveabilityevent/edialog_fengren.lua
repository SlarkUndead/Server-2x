--对话事件 

--脚本号
x713605_g_ScriptId = 713605

--**********************************
--任务入口函数
--**********************************
function x713605_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0005}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--列举事件
--**********************************
function x713605_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713605_g_ScriptId,"T靘 hi瑄 may m",11,-1)
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x713605_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti猵 th�
--**********************************
function x713605_OnAccept( sceneId, selfId, AbilityId )
end
