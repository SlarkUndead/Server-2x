--ÐÕi LýNPC  ÖýÔìnpc   Ñ§Ï°ÖýÔì¼¼ÄÜ   Éýc¤pÖýÔì¼¼ÄÜ
--¹ýÈý´¸
--ÆÕÍ¨

--½Å±¾ºÅ
x002062_g_ScriptId = 002062

--ÉÌµê±àºÅ
x002062_g_shoptableindex=61

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_zhuzao = 713505
--elevelup_zhuzao = 713564
--edialog_zhuzao = 713604
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x002062_g_eventList={713505,713564,713604}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002062_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_dali_0037}")
	for i, eventId in x002062_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
        --ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x002062_g_ScriptId,"Mua hình chªt tÕo",7,ABILITY_TEACHER_SHOP)
	AddNumText(sceneId,x002062_g_ScriptId,"#{INTERFACE_XML_1194}",7,12)  
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002062_OnDefaultEvent( sceneId, selfId,targetId )
	x002062_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x002062_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x002062_g_shoptableindex )
	elseif	GetNumText()==12	then
		DispatchShopItem( sceneId, selfId,targetId, 199 )   
  end
	for i, findId in x002062_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x002062_g_ScriptId )
		return
	end
end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x002062_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002062_g_eventList do
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
function x002062_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x002062_g_eventList do
		if missionScriptId == findId then
			x002062_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x002062_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002062_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x002062_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002062_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002062_OnDie( sceneId, selfId, killerId )
end
