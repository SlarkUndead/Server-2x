--Lâu LanNPC....
--ÖýÔì¼¼ÄÜ´óÊ¦....

--½Å±¾ºÅ
x001104_g_ScriptId = 001104

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_zhuzao = 713505
--elevelup_zhuzao = 713564
--edialog_zhuzao = 713604
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001104_g_eventList={713505,713564,713604}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001104_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{LLGC_20080324_05}")
		for i, eventId in x001104_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x001104_g_ScriptId, "#{INTERFACE_XML_1197}", 7, 27 )
		AddNumText( sceneId, x001104_g_ScriptId, "#{INTERFACE_XML_1194}", 7, 28 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001104_OnDefaultEvent( sceneId, selfId,targetId )
	x001104_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001104_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 27 then 
	   DispatchShopItem( sceneId, selfId, targetId, 205 )                    
	elseif GetNumText() == 28 then 
	   DispatchShopItem( sceneId, selfId, targetId, 202 )                    
	end
	for i, findId in x001104_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001104_g_ScriptId )
		return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001104_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001104_g_eventList do
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
function x001104_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001104_g_eventList do
		if missionScriptId == findId then
			x001104_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001104_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001104_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001104_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001104_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
