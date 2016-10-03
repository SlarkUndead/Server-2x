--LÕc Dß½ngNPC
--äîÔËÊ¹
--äîÔËÑ­»·ÈÎÎñ

--½Å±¾ºÅ
x311006_g_scriptId = 311006

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x311006_g_eventList={311010}

--Nhi®m vø Rùa-Thö thi chÕyºÅ
x311006_g_MissionId			= 1000
--Nhi®m vø Rùa-Thö thi chÕyÊÂ¼þÁÐ±í
x311006_g_GodFireEventList={}   -- 808080
--Ã¿ÌìRùa-Thö thi chÕy»î¶¯M· ra Ê±¼ä
x311006_g_ActivityTime		= { {tstart=1230, tend=1330},
														  {tstart=1930, tend=2030},
														  {tstart=2130, tend=2230} }

--Nhi®m vø Rùa-Thö thi chÕyÍê³É±ê¼Ç
x311006_g_Mission_IsComplete = 0	--ÈÎÎñ²ÎÊýtoÕ ðµ µÚ0Î»
--Rùa-Thö thi chÕyLÕc Dß½ng´ò¿¨±ê¼Ç
x311006_g_LuoYang_RecordIdx = 1		--ÈÎÎñ²ÎÊýtoÕ ðµ µÚ1Î»
--Rùa-Thö thi chÕyTô Châu´ò¿¨±ê¼Ç
x311006_g_SuZhou_RecordIdx = 2		--ÈÎÎñ²ÎÊýtoÕ ðµ µÚ2Î»
--Rùa-Thö thi chÕyÐÕi Lý´ò¿¨±ê¼Ç
x311006_g_DaLi_RecordIdx = 3			--ÈÎÎñ²ÎÊýtoÕ ðµ µÚ3Î»
--¿×Ã÷µÆÍê³ÉÊýÁ¿±ê¼Ç
x311006_g_KongMing_Lighten = 4		--ÈÎÎñ²ÎÊýtoÕ ðµ µÚ4Î»
--Rùa-Thö thi chÕy´«µÝÈÎÎñÃ¿ÌìÂÖÊý±ê¼Ç
x311006_g_RoundIndex = 7					--ÈÎÎñ²ÎÊýtoÕ ðµ µÚ7Î»

--C¥n  ði¬mÈ¼¿×Ã÷µÆtoÕ ðµ ×ÜÊý
x311006_g_KongMing_CntMax	 = 24

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x311006_UpdateEventList( sceneId, selfId, targetId )

	for i, eventId in x311006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
	end

end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x311006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		--  ði¬mÈ¼LÕc Dß½ng»ðÔ´
		if x311006_OnIsFillPlayCard(sceneId, selfId, targetId) == 1 then

			local misIndex = GetMissionIndexByID(sceneId,selfId,x311006_g_MissionId)
			SetMissionByIndex(sceneId, selfId, misIndex, x311006_g_LuoYang_RecordIdx, 1)
			x311006_NotifyTip( sceneId, selfId, "#{GodFire_Info_002}" )
			
			-- ¼ì²âÈÎÎñÐúng·ñÍê³É
			if GetMissionParam(sceneId, selfId, misIndex, x311006_g_LuoYang_RecordIdx) == 1
				 and GetMissionParam(sceneId, selfId, misIndex, x311006_g_SuZhou_RecordIdx) == 1
				 and GetMissionParam(sceneId, selfId, misIndex, x311006_g_DaLi_RecordIdx) == 1 then
				
				-- ¼ì²âÐúng·ñ ði¬mÈ¼ËùÓÐ¿×Ã÷µÆ
				if GetMissionParam(sceneId, selfId, misIndex, x311006_g_KongMing_Lighten) >= x311006_g_KongMing_CntMax then								
					-- ÈÎÎñÍê³É
					AddText( sceneId, "#{GodFire_Info_028}" )
					SetMissionByIndex( sceneId, selfId, misIndex, x311006_g_Mission_IsComplete, 1 )
				else
					AddText( sceneId, "#{GodFire_Info_037}" )
				end
			else
				--  ði¬mÈ¼»ðÔ´
				AddText( sceneId, "#{GodFire_Info_010}" )
			end
			
		else
			AddText( sceneId, "#{function_caoyun_0}" )
			AddNumText( sceneId, x311006_g_scriptId, "Tìm hi¬u Tào v§n", 11, 1 )
			AddNumText( sceneId, x311006_g_scriptId, "B¡t ð¥u Tào v§n", 7, 2 )
		
			for i, eventId in x311006_g_GodFireEventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
		end
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x311006_OnEventRequest( sceneId, selfId, targetId, eventId )
	local NumText = GetNumText();
	if NumText == 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_051}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif NumText == 2 then
		x311006_UpdateEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x311006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnHandle_QuestUI",sceneId, selfId, targetId, NumText )
			return
		end
	end
	
	for i, findId in x311006_g_GodFireEventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			
			return 0
		end
	end
	
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x311006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311006_g_GodFireEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x311006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,¹Ø±Õ¶Ô»°´°¿Ú
	return
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x311006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311006_g_GodFireEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x311006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x311006_g_GodFireEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x311006_OnDie( sceneId, selfId, killerId )
end


-- ¼ì²âRùa-Thö thi chÕy´«µÝ»î¶¯Ðúng·ñThöa mãn´ò¿¨Ìõ¼þ
function x311006_OnIsFillPlayCard(sceneId, selfId, targetId)

  --Íæ¼ÒÉíÉÏÐúng·ñÓÐNhi®m vø Rùa-Thö thi chÕy
	if IsHaveMission( sceneId, selfId, x311006_g_MissionId ) <= 0 then				
		return 0
	end

	--¼ì²âÍæ¼Ò²Î¼Ó»î¶¯toÕ ðµ Ê±¼ä
	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME )
	
	local nDay = LuaFnGetDayOfThisMonth()
	if nDayTime ~= nDay then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x311006_g_MissionId)
	
	--¼ì²âµ±Ìì²Î¼ÓtoÕ ðµ ÐúngµÚ¼¸ÂÖ
	local nRoundIdx = GetMissionParam(sceneId, selfId, misIndex, x311006_g_RoundIndex)

	local nHour	 = GetHour()
	local nMinute = GetMinute()  
  local curHourTime = nHour*100+nMinute

	if curHourTime < x311006_g_ActivityTime[nRoundIdx].tstart or curHourTime > x311006_g_ActivityTime[nRoundIdx].tend then
		return 0
	end
	
	--¼ì²âÐúng·ñTÕi LÕc Dß½ng´ò¹ý¿¨
	if GetMissionParam(sceneId, selfId, misIndex, x311006_g_LuoYang_RecordIdx) == 1 then
		return 0
	end
	
	return 0
end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x311006_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
