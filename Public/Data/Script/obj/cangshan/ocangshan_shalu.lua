--¸Ê±¦±¦

--½Å±¾ºÅ
x025003_g_scriptId = 025003

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x025003_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x025003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  Ha ha, chä bao lâu næa, m÷i thÑ · ðây ð«u là cüa ta! #r#rT¤t cä m÷i thÑ, t¤t cä m÷i thÑ ð«u là cüa ta! #r#rHa ha ha ha ha ha..");
	for i, eventId in x025003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x025003_OnDefaultEvent( sceneId, selfId,targetId )
	x025003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x025003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x025003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x025003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025003_g_eventList do
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
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x025003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x025003_g_eventList do
		if missionScriptId == findId then
			x025003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x025003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x025003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x025003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x025003_OnDie( sceneId, selfId, killerId )
end
