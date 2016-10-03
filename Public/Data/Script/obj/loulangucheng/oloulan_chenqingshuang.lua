--Lâu LanNPC....
--çÎç¿·å½ÓÒýÊ¹....

--½Å±¾ºÅ
x001159_g_ScriptId = 001159


--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001159_g_eventList={402276,402263,402289,402305}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001159_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{PMF_20080521_01}")
		for i, eventId in x001159_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001159_OnDefaultEvent( sceneId, selfId,targetId )
	x001159_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001159_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001159_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001159_g_ScriptId )
		return
		end
	end
end
