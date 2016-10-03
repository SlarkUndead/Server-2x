--Lâu LanNPC....
--Åëâ¿´óÊ¦....

--½Å±¾ºÅ
x001113_g_ScriptId = 001113

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--elevelup_pengren = 713561
--edialog_pengren = 713601
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001113_g_eventList={713561,713601}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001113_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{LLGC_20080324_06}")
	for i, eventId in x001113_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001113_OnDefaultEvent( sceneId, selfId,targetId )
	x001113_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001113_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001113_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001113_g_ScriptId )
		return
	end
end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001113_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001113_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId,ABILITY_PENGREN )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001113_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001113_g_eventList do
		if missionScriptId == findId then
			x001113_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001113_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001113_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
