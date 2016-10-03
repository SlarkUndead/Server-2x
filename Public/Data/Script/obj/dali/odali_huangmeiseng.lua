--»ÆÃ¼É®

--½Å±¾ºÅ
x002007_g_scriptId = 002007

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x002007_g_eventList={210230, 210231, 210232}  --201103,201201,201202,201601,201602,210222

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002007_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{OBJ_dali_0002}");
	for i, eventId in x002007_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	if IsHaveMission(sceneId,selfId,701) > 0 then
		AddNumText(sceneId,x002007_g_scriptId,"Hß¾ng ðªn H§u Hoa Viên",10,0)
	end
	if IsHaveMission(sceneId,selfId,711) > 0 then
		AddNumText(sceneId,x002007_g_scriptId,"Hß¾ng ðªn Ti¬u Mµc Nhân HÕng",10,1)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002007_OnDefaultEvent( sceneId, selfId,targetId )
	x002007_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x002007_OnEventRequest( sceneId, selfId, targetId, eventId )
	local BackGarden = { [2] = 62, [71] = 82, [72] = 182 }
	local WoodenLane = { [2] = 61, [71] = 50, [72] = 81 }
	local destScene

	if	GetNumText()==0	then
		destScene = BackGarden[sceneId]
		if not destScene then
			destScene = 82
		end

		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, destScene, 102, 109)
	elseif	GetNumText()==1	then
		destScene = WoodenLane[sceneId]
		if not destScene then
			destScene = 81
		end

		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, destScene, 82, 76)
	end
	for i, findId in x002007_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x002007_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002007_g_eventList do
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
function x002007_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x002007_g_eventList do
		if missionScriptId == findId then
			x002007_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x002007_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x002007_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002007_OnDie( sceneId, selfId, killerId )
end
