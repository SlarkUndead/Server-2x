--ÉÙÊÒÉ½NPC
--Thiên S½n Ð°ng Lão
--ÈçÒâÐ¡×Ó²ß»®

--½Å±¾ºÅ
x002953_g_ScriptId = 002953

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x002953_g_eventList={250507}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002953_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  #72Õâ²»Ðúng"..PlayerName..PlayerSex.."Âð,ÀÏ·òmµt Ö±¾õ ði¬m,ÎäÁÖÖÐÈËÒÔµ¶¸«Ç¹°ôÏà»¥²«É±,ÊµTÕi Ðúng²ÐÈÌÎÞ±ÈtoÕ ðµ ÊÂÇé¡£Èç¹ûÓÃ¶¾¹¦ÉËÈË,²ÅÄÜÈÃÈËTÕi Æ½¾²¡¢°²ÒÝ¡¢ÐÒ¸£¡¢¿ìÀÖÖ®ÖÐËÀÍö,¶¾¹¦ÕæÐúng¹¦µÂÎÞÁ¿toÕ ðµ Îä¹¦°¡!")
		for i, eventId in x002953_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002953_OnDefaultEvent( sceneId, selfId,targetId )
	x002953_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x002953_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002953_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x002953_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002953_g_eventList do
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
function x002953_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x002953_g_eventList do
		if missionScriptId == findId then
			x002953_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x002953_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002953_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x002953_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002953_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002953_OnDie( sceneId, selfId, killerId )
end
