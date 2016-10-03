-- 402104
-- ³¡¾°ÖĞ»î¶¯¿ªÊ¼ºóË¢³öÀ´toÕ ğµ Npc

-- 
x402104_g_scriptId = 402104

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x402104_g_eventList={402105}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x402104_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ğáng gi§n Dã Trß Vß½ng ğào t¦u! ChÆng biªt các ngß½i có hay không có mµt ít khä nång tìm ğßşc manh m¯i Dã Trß Vß½ng?")
		for i, eventId in x402104_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x402104_OnDefaultEvent( sceneId, selfId,targetId )
	x402104_UpdateEventList( sceneId, selfId,targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x402104_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x402104_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
