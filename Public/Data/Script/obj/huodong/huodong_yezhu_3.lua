-- 402104
-- 场景中活动开始后刷出来to� 鸬 Npc

-- 
x402104_g_scriptId = 402104

--所拥有to� 鸬 事件ID列表
x402104_g_eventList={402105}

--**********************************
--事件列表
--**********************************
function x402104_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  嗅ng gi D� Tr� V呓ng 疣o t! Ch苙g bi猼 c醕 ng呓i c� hay kh鬾g c� m祎 韙 kh� n錸g t靘 疬㧟 manh m痠 D� Tr� V呓ng?")
		for i, eventId in x402104_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件交互入口
--**********************************
function x402104_OnDefaultEvent( sceneId, selfId,targetId )
	x402104_UpdateEventList( sceneId, selfId,targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x402104_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x402104_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
