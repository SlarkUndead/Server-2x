--Ëï°ËÒ¯

--½Å±¾ºÅ
x002032_g_scriptId = 002032


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002032_g_eventList={210210,210211,210212}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002032_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local PlayerName=GetName(sceneId,selfId)	
	local PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " muµi muµi"
	else
		PlayerSex = " huynh ð®"
	end
	AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0014}")
	for i, eventId in x002032_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x002032_g_scriptId, "HoÕt ðµng T¥n hoàng chiªn th¥n", 6, 200 )
	AddNumText( sceneId, x002032_g_scriptId, "Xoa hoÕt ðµng T¥n hoàng chiªn th¥n", 6, 201 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002032_OnDefaultEvent( sceneId, selfId,targetId )
	x002032_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002032_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	for i, findId in x002032_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	if nNumText == 200 then
		BeginEvent(sceneId)
			--5965 Chan.Trung Lau Ngoc
			--5952 TLGioi
			--5953 TLNgoc
			--20000-21000 Co tan hoang chien than
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5970) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5970, 0 )
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 ) --Hieu ung thang cap
				--CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
				AddText(sceneId,"  Chúc m×ng các hÕ ðã nh§n hi®u Ñng cüa hoÕt ðµng T¥n hoàng chiªn th¥n thành công, hãy bôn t¦u giang h° Thiên Long Bát Bµ cùng nó nhé!")
			else
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 49, 0 ) --Hieu ung thang cap vo hon
				AddText(sceneId,"  Các hÕ ðang giæ trên ngß¶i trÕng thái này r°i!")
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 201 then
		BeginEvent(sceneId)
			for i=5000,5970 do
			LuaFnCancelSpecificImpact(sceneId,selfId,i)
			end
			AddText(sceneId,"  Xoa OK")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002032_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002032_g_eventList do
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
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x002032_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			x002032_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002032_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002032_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002032_OnDie( sceneId, selfId, killerId )
end
