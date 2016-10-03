--Bäo thß thiªt t£c

x807003_g_scriptId=807003

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x807003_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅĞ¶ÏĞúng·ñÄÜ¹»¼¤»î¸ÃnpctoÕ ğµ Ìõ¼ş
	
	local npcLevel = GetCharacterLevel(sceneId, targetId)

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if  nearteammembercount < 3 then	
		BeginEvent(sceneId)
			AddText(sceneId, "#{ZSSFC_090211_07}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		return
	end
	
	local maxLevel = 0
	for	i = 0, nearteammembercount - 1 do
		local memberID = GetNearTeamMember( sceneId, selfId, i )
		local memberLevel = GetLevel(sceneId, memberID)
		if memberLevel > maxLevel then
			maxLevel = memberLevel
		end
	end
	
	if maxLevel < npcLevel then
		BeginEvent(sceneId)
			AddText(sceneId, "#{ZSSFC_090211_08}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		return
	end
	
	--¼¤»înpc
	--ÉèÖÃ¶Ô¹ÖÎªµĞ¶ÔtoÕ ğµ  Ä¿Ç°Ğúng28ºÅĞúngµĞ¶ÔtoÕ ğµ ,Èç¹ûÓĞÈË¸Ä±äÁËÏàÓ¦toÕ ğµ ÊÆÁ¦ÉùÍûÄÇÎÒ¾Í²ÒÁË£¡£¡:-(((
	SetUnitReputationID(sceneId, selfId, targetId, 28)

end

function x807003_OnDie(sceneId, selfId, killerId)

end

