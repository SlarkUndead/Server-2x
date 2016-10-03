--Lâu LanNPC....
--¹¤ÒÕ´óÊ¦....

--½Å±¾ºÅ
x001128_g_ScriptId = 001128

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_gongyi = 713507
--elevelup_gongyi = 713566
--edialog_gongyi = 713606
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001128_g_eventList={713507,713566,713606}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001128_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{LLGC_20080324_11}")
		for i, eventId in x001128_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x001128_g_ScriptId, "#{INTERFACE_XML_1197}", 7, 27 )
		AddNumText( sceneId, x001128_g_ScriptId, "#{INTERFACE_XML_1196}", 7, 28 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001128_OnDefaultEvent( sceneId, selfId,targetId )
	x001128_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001128_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 27 then 
	   DispatchShopItem( sceneId, selfId, targetId, 207 )                   
	elseif GetNumText() == 28 then 
	   DispatchShopItem( sceneId, selfId, targetId, 204 )                    
	end
	for i, findId in x001128_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001128_g_ScriptId )
		return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001128_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001128_g_eventList do
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
function x001128_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001128_g_eventList do
		if missionScriptId == findId then
			x001128_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001128_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001128_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001128_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001128_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
