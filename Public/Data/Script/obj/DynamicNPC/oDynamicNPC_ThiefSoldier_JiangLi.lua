--Thái H°NPC
--Ôì·´¶ñÔô
--ÆÕÍ¨

--½Å±¾ºÅ
x050014_g_ScriptId	= 050014

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x050014_g_EventList	= { 050015 }
--½ÓÈ¡ÈÎÎñtoÕ ðµ ×îµÍµÈc¤p
x050014_g_minLevel			= 20

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x050014_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		AddText( sceneId, "Ngày nay thiên hÕ ðµng loÕn, b¯n b« gi£c cß¾p, Tri«u ðinh vì mu¯n mau chóng d©p yên, ra hi®u tri®u các v¸ giúp ðÞ d©p loÕn. Ngß¶i có công d©p loÕn s¨ ðßþc phong tß¾c hi®u" )
		CallScriptFunction( x050014_g_EventList[1], "OnEnumerate", sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050014_OnDefaultEvent( sceneId, selfId, targetId )
	x050014_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x050014_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x050014_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x050014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x050014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			x050014_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x050014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x050014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x050014_OnDie( sceneId, selfId, killerId )
end
