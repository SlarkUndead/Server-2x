-- ³èÎïÑÓÊÙµ¤
-- Ôö¼Ó³èÎïÊÙÃü

-- ³èÎïÍ¨ÓÃ¹¦ÄÜ½Å±¾
x335002_g_petCommonId = PETCOMMON

--******************************************************************************
-- ÒÔÏÂ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾ºÅ (¸Ä³ÉÕıÈ·½Å±¾ºÅ)
x335002_g_scriptId = 335002

-- Ôö¼ÓÖµ (¸ù¾İÒªÇó¸ÄĞ´¾ßÌåÊıÖµ)
x335002_g_LifeValue = 200			-- ÊÙÃüÔö¼ÓÖµ

--±ê×¼Ğ§¹ûID (¸Ä³É³èÎïÊ¹ÓÃÑ±ÑøµÀ¾ßtoÕ ğµ ÌØĞ§)
--g_ImpactID = 0

--******************************************************************************
-- ÒÔÉÏ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾

--**********************************
--±ØĞëTr· v« 1 ²ÅÄÜÕıÈ·Ö´ĞĞÒÔÏÂÁ÷³Ì
--**********************************
function x335002_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335002_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end


	petGUID_H = LuaFnGetHighSectionOfTargetPetGuid( sceneId, selfId )
	petGUID_L = LuaFnGetLowSectionOfTargetPetGuid( sceneId, selfId )

	if(LuaFnGetPetLife( sceneId, selfId, petGUID_H, petGUID_L ) >= 
		LuaFnGetPetMaxLife( sceneId, selfId, petGUID_H, petGUID_L )) then
		BeginEvent(sceneId)
			strText = "¸Ã³èÎï²»C¥n ÑÓ³¤ÊÙÃü."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end

	return 1
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x335002_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335002_OnActivateOnce( sceneId, selfId )
	if x335002_g_LifeValue > 0 then
		CallScriptFunction( x335002_g_petCommonId, "IncPetLife", sceneId, selfId, x335002_g_LifeValue )
	end

--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, g_ImpactID, 0)
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335002_OnActivateEachTick( sceneId, selfId )
	return 1
end

-- Cái này º¯ÊıÃ»ÓĞÊ²Ã´ÓÃ,µ«Ğúng±ØĞëÓĞ
function x335002_CancelImpacts( sceneId, selfId )
	return 0
end
