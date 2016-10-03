-- Thúc Hà C± Tr¤nNPC
-- Íõäì 
-- ¾º¼¼³¡´«ËÍ½Å±¾

--½Å±¾ºÅ
x001173_g_scriptId = 001173

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001173_g_eventList={125020}
x001173_g_MsgInfo = { "#{SHGZ_0612_02}",
											"#{SHGZ_0620_04}",
											"#{SHGZ_0620_05}",
											"#{SHGZ_0620_06}",
										}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001173_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001173_g_MsgInfo))
		AddText( sceneId, x001173_g_MsgInfo[msgidx] )	
		for i, eventId in x001173_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x001173_g_scriptId, "Tiªn vào Tung S½n Phong Thi«n Ðài", 9, 1000 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001173_OnDefaultEvent( sceneId, selfId,targetId )
	x001173_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001173_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001173_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	local arg = GetNumText()
	if arg == 1000 then
		if GetTeamId(sceneId,selfId)>=0 then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 414, 37,50, 10 )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"  #GCác hÕ trß¾c khi bß¾c vào phong thi«n ðài nh¤t thiªt phäi l§p 1 t± ðµi, t¤t cä ngß¶i trong t± ðµi lúc vào phong thi«n ðài s¨ thuµc tr§n hình");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		return
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001173_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001173_g_eventList do
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
function x001173_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001173_g_eventList do
		if missionScriptId == findId then
			x001173_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001173_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001173_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001173_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001173_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001173_OnDie( sceneId, selfId, killerId )
	
end
