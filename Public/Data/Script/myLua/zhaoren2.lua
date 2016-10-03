--µØ¹²ËÄ²ãNPC
--ÀÏÄï
--ÈçÒâÐ¡×Ó²ß»®

--½Å±¾ºÅ
x002946_g_ScriptId = 000102

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x002946_g_eventList={250507}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002946_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  #77Không phäi"..PlayerName..PlayerSex.."sao, m®t chªt ta ðßþc! Nghe nói hài tØ · T¥ng Hoàng Ð¸a Cung 4 ki¬m soát kinh nghi®m, lão nß½ng ngàn d£m xa xôi t× LÕc Dß½ng t¾i ðây, làm phi«n ngß½i chuy¬n cáo v¾i h¡n, m© h¡n g÷i v« nhà ån c½m.")
		for i, eventId in x002946_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002946_OnDefaultEvent( sceneId, selfId,targetId )
	x002946_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x002946_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002946_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x002946_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002946_g_eventList do
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
function x002946_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x002946_g_eventList do
		if missionScriptId == findId then
			x002946_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x002946_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002946_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x002946_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002946_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002946_OnDie( sceneId, selfId, killerId )
end
