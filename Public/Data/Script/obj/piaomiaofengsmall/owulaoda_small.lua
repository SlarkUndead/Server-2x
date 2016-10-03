--çÎç¿·å¸±±¾....
--Ô Lão ÐÕi¶Ô»°½Å±¾....

--½Å±¾ºÅ
x402285_g_ScriptId = 402285

--¸±±¾Âß¼­½Å±¾ºÅ....
x402285_g_FuBenScriptId = 402276

--Õ½°ÜÔ Lão ÐÕi¶Ô»°½Å±¾ºÅ....
x402285_g_LossScriptId = 402288

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x402285_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "#{PMF_20080521_10}" )
		AddNumText( sceneId, x402285_g_ScriptId, "Khiêu chiªn", 10, 1 )

		--ÅÐ¶Ïµ±Ç°Ðúng·ñ¿ÉÒÔKhiêu chiªnLý Thu Thüy....	
		if 1 == CallScriptFunction( x402285_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			AddNumText( sceneId, x402285_g_ScriptId, "Quyªt chiªn Lý Thu Thüy?", 10, 2 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402285_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýTÕi ¼¤»îBOSSÔòTr· v«....
	if 1 == CallScriptFunction( x402285_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--Ðúng²»Ðúng¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Èç¹ûÕýTÕi ºÍ±ðtoÕ ðµ BOSSCuµc chiªn ÔòTr· v«....
	local ret, msg = CallScriptFunction( x402285_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	if GetNumText() == 1 then

		--ÅÐ¶Ïµ±Ç°Ðúng·ñ¿ÉÒÔKhiêu chiªnÔ Lão ÐÕi....	
		if 1 ~= CallScriptFunction( x402285_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "WuLaoDa" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--M· ra çÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
		CallScriptFunction( x402285_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402285_g_ScriptId, -1 ,-1 )

	elseif GetNumText() == 2 then

		--ÅÐ¶Ïµ±Ç°Ðúng·ñ¿ÉÒÔKhiêu chiªnLý Thu Thüy....	
		if 1 ~= CallScriptFunction( x402285_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			return
		end
		--M· ra çÎç¿·å¼ÆÊ±Æ÷À´¼¤»îLý Thu Thüy....
		CallScriptFunction( x402285_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402285_g_LossScriptId, -1 ,-1 )

	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷toÕ ðµ OnTimer....
--**********************************
function x402285_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 5 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 6 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 4 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 5 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 3 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 4 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 2 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 3 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 1 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 2 == step then
		--ÌáÊ¾Cuµc chiªn b¡t ð¥u....
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn b¡t ð¥u" )
		--É¾³ýNPC....
		CallScriptFunction( x402285_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x402285_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa_BOSS", -1, -1 )
		return
	end

end
