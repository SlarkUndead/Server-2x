-- ÖíÈâ³èÁ¸ (¸Ä³ÉÕıÈ·Tên)
-- Ôö¼Ó³èÎïÉúÃüÖµ

-- ³èÎïÍ¨ÓÃ¹¦ÄÜ½Å±¾
x334606_g_petCommonId = PETCOMMON

--******************************************************************************
-- ÒÔÏÂ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾ºÅ (¸Ä³ÉÕıÈ·½Å±¾ºÅ)
x334606_g_scriptId = 334606

-- Ôö¼ÓÖµ (¸ù¾İÒªÇó¸ÄĞ´¾ßÌåÊıÖµ)
x334606_g_HPValue = 8148			-- ÉúÃüÖµÔö¼ÓÖµ
x334606_g_MaxHPValue = 0		-- ×î´óÉúÃüÖµÔö¼ÓÖµ
x334606_g_LifeValue = 0			-- ÊÙÃüÔö¼ÓÖµ
x334606_g_HappinessValue = 0	-- ¿ìÀÖ¶ÈÔö¼ÓÖµ

--±ê×¼Ğ§¹ûID (¸Ä³É³èÎï³Ô³èÁ¸toÕ ğµ ÌØĞ§)
--g_ImpactID = 0

--******************************************************************************
-- ÒÔÉÏ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾

--**********************************
--±ØĞëTr· v« 1 ²ÅÄÜÕıÈ·Ö´ĞĞÒÔÏÂÁ÷³Ì
--**********************************
function x334606_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x334606_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	--  ği¬mµ½µ±Ç°ÕıTÕi Ê¹ÓÃtoÕ ğµ ÎïÆ·toÕ ğµ trí tay näi
	nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	ret = CallScriptFunction( x334606_g_petCommonId, "IsPetCanUseFood", sceneId, selfId, nIndex )
	return ret
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x334606_OnDeplete( sceneId, selfId )
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
function x334606_OnActivateOnce( sceneId, selfId )
	if x334606_g_HPValue > 0 then
		CallScriptFunction( x334606_g_petCommonId, "IncPetHP", sceneId, selfId, x334606_g_HPValue )
	end

	if x334606_g_MaxHPValue > 0 then
		CallScriptFunction( x334606_g_petCommonId, "IncPetMaxHP", sceneId, selfId, x334606_g_MaxHPValue )
	end

	if x334606_g_LifeValue > 0 then
		CallScriptFunction( x334606_g_petCommonId, "IncPetLife", sceneId, selfId, x334606_g_LifeValue )
	end

	if x334606_g_HappinessValue > 0 then
		CallScriptFunction( x334606_g_petCommonId, "IncPetHappiness", sceneId, selfId, x334606_g_HappinessValue )
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
function x334606_OnActivateEachTick( sceneId, selfId )
	return 1
end

-- Cái này º¯ÊıÃ»ÓĞÊ²Ã´ÓÃ,µ«Ğúng±ØĞëÓĞ
function x334606_CancelImpacts( sceneId, selfId )
	return 0
end
