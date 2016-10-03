-- 001090
-- ¸ßÌ«¹« ·ËÕ¯´«ËÍÈË

--½Å±¾ºÅ
x001090_g_scriptId = 001090

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001090_g_eventList={893063}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001090_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Nghîa phø Phan Xí cüa ta v¯n là kì ngh® thª gia ð® tØ, trong nhà cûng có tuy®t thª kì ngh® bí bäo. Nhßng l¤y c¥m kÏ thß h÷a n±i tiªng giang h°  tÑ tuy®t trang lÕi dùng các loÕi hi¬m ác thü ðoÕn ðem bí bäo cß¾p ði, còn nghî phan gia di®t môn. Ta nghîa phø nhân r½i xu¯ng vách núi ðen có th¬ ðào thoát, nhßng r½i vào hai chân tàn t§t. Nay, ta nghîa phø ðem không lâu cho nhân thª, ta v¯n ð¸nh ðem bí bäo ðoÕt lÕi  này tâm nguy®n, b¤t ð¡c dî lñc b¤t tòng tâm, lúc này kh¦n c¥u chß v¸ ðÕi hi®p trþ ta ðoÕt lÕi bí bäo, làm cho ti¬u næ tØ có th¬ tçn phân hiªu tâm.")
	AddText(sceneId,"#BÐ« ngh¸ t± ðµi nên có Thiên S½n. Bên trong giáo ð¥u có sÑc mÕnh phi thß¶ng lþi hÕi, c¥n sØ døng kÛ nång Qu¥n th¬ tàng hình Th§p Di®n Mai Phøc tàng hình m¾i có th¬ qua.")

	AddNumText( sceneId, x001090_g_scriptId, "Ðªn TÑ Tuy®t Trang",0 ,2  )
	
	for i, eventId in x001090_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001090_OnDefaultEvent( sceneId, selfId,targetId )
	x001090_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001090_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 2 then
	BeginEvent(sceneId)
	    AddText(sceneId,"TÑ Tuy®t Trang phø bän chü yªu r½i xu¯ng nguyên li®u Thång C¤p Võ H°n. M²i ngày 3 lßþt, sau khi giªt chªt Boss · màn cu¯i s¨ th¤y mµt cái TÑ Tuy®t Trang Bäo Sß½ng.#r#YChú ý: KÛ nång cüa Boss cñc kÏ lþi hÕi. C¦n th§n nha. Ð« ngh¸ ðªn c¤p b§c thích hþp m¾i tham gia phø bän.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
		return
	end

	for i, findId in x001090_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001090_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001090_g_eventList do
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
function x001090_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001090_g_eventList do
		if missionScriptId == findId then
			x001090_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001090_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001090_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001090_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001090_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001090_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001090_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
