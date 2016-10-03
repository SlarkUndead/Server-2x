--Thái H°NPC
--Ôì·´¶ñÔô
--ÆÕÍ¨

--½Å±¾ºÅ
x808017_g_ScriptId	= 808017

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x808017_g_EventList	= { 808016,808027,808028,808029,808030,808031,808032,808033,808034 }

--³¡¾°idµ½ÊÂ¼þ½Å±¾ºÅtoÕ ðµ Ó³Éä±í
x808017_g_Scene2EventList = {{9,808027}, {16,808028}, {13,808029}, {17,808030},{11,808031},{10,808032},{12,808033},{15,808034},{14,808016}}

--½ÓÈ¡ÈÎÎñtoÕ ðµ ×îµÍµÈ¼¶
x808017_g_minLevel			= 20

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x808017_UpdateEventList( sceneId, selfId, targetId )
		for _,FindsceneId in x808017_g_Scene2EventList do
				if FindsceneId[1] == sceneId then
						CallScriptFunction( FindsceneId[2], "OnEnumerate", sceneId, selfId, targetId )
				end
		end
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x808017_OnDefaultEvent( sceneId, selfId, targetId )
	x808017_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x808017_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x808017_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x808017_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x808017_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x808017_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x808017_g_EventList do
		if missionScriptId == findId then
			x808017_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x808017_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x808017_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x808017_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x808017_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x808017_OnDie( sceneId, selfId, killerId )
end
