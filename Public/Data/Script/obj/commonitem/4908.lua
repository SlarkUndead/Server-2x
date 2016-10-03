-- ÖÕc¤p»¹Í¯µ¤


-- ³èÎïÍ¨ÓÃ¹¦ÄÜ½Å±¾
x334908_g_petCommonId = PETCOMMON

x334908_g_itemList = {}
x334908_g_itemList[30503016] = {minLevel = 1, maxLevel = 85}	--ÖÕc¤pÕäÊŞ»¹Í¯¾íÖá
x334908_g_itemList[30503017] = {minLevel = 1, maxLevel = 35}	--µÍc¤pÕäÊŞ»¹Í¯ÌìÊé
x334908_g_itemList[30503018] = {minLevel = 1, maxLevel = 65}	--ÖĞc¤pÕäÊŞ»¹Í¯ÌìÊé
x334908_g_itemList[30503019] = {minLevel = 1, maxLevel = 85}	--¸ßc¤pÕäÊŞ»¹Í¯ÌìÊé
x334908_g_itemList[30503020] = {minLevel = 1, maxLevel = 95}	--³¬c¤pÕäÊŞ»¹Í¯ÌìÊé
--******************************************************************************
-- ÒÔÏÂ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾ºÅ (¸Ä³ÉÕıÈ·½Å±¾ºÅ)
x334908_g_scriptId = 334908

--±ê×¼Ğ§¹ûID (¸Ä³É³èÎïÊ¹ÓÃÑ±ÑøµÀ¾ßtoÕ ğµ ÌØĞ§)
--g_ImpactID = 0

--******************************************************************************
-- ÒÔÉÏ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾

--**********************************
--±ØĞëTr· v« 1 ²ÅÄÜÕıÈ·Ö´ĞĞÒÔÏÂÁ÷³Ì
--**********************************
function x334908_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x334908_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local petItem = x334908_g_itemList[itemTblIndex];
	if not petItem then
		x334908_NotifyTip(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	local petGUID_H = LuaFnGetHighSectionOfTargetPetGuid( sceneId, selfId )
	local petGUID_L = LuaFnGetLowSectionOfTargetPetGuid( sceneId, selfId )

	if LuaFnPetCanReturnToChild( sceneId, selfId, petGUID_H, petGUID_L, 1, -1) == 0 then
		return 0
	end
	
	local petDataID = LuaFnGetPetDataIDByGUID(sceneId, selfId, petGUID_H, petGUID_L);
	if not petDataID or petDataID < 0 then
		x334908_NotifyTip(sceneId, selfId, "ÎŞ·¨¶ÔÖ¸¶¨ÕäÊŞ½øĞĞ»¹Í¯.");
		return 0;
	end
	
	local petTakeLevel = GetPetTakeLevel(petDataID);
	if not petTakeLevel or petTakeLevel < 1 then
		x334908_NotifyTip(sceneId, selfId, "ÎŞ·¨Ê¶±ğÕäÊŞtoÕ ğµ Ğ¯´øµÈc¤p.");
		return 0;
	end
	
	if petTakeLevel > petItem.maxLevel then
		if (petTakeLevel == 95) then
			x334908_NotifyTip(sceneId, selfId, "#{95ZSH_081121_01}");
			return 0;
		else
			x334908_NotifyTip(sceneId, selfId, "²»ÄÜ¶ÔĞ¯´øµÈc¤pÎª"..petItem.maxLevel.."c¤pÒÔÉÏtoÕ ğµ ÕäÊŞ½øĞĞ»¹Í¯.");
			return 0;
		end
	end

	return 1
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x334908_OnDeplete( sceneId, selfId )
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
function x334908_OnActivateOnce( sceneId, selfId )
	petGUID_H = LuaFnGetHighSectionOfTargetPetGuid( sceneId, selfId )
	petGUID_L = LuaFnGetLowSectionOfTargetPetGuid( sceneId, selfId )

	-- ÕäÊŞ»¹Í¯
	local ret, perLevel = LuaFnPetReturnToChild( sceneId, selfId, petGUID_H, petGUID_L, 1, -1)
	if ret and ret == 1 then
		local szMsg = "ÕäÊŞ»¹Í¯³É¹¦!";
		x334908_NotifyTip( sceneId, selfId, szMsg );															-- ĞÑÄ¿ÌáÊ¾
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);		-- ÌØĞ§
		
		local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );			--by Vega 20080919
		local nGrowLevel = 0;
		if (itemTblIndex == 30503017 or itemTblIndex == 30503018 or itemTblIndex == 30503019 or itemTblIndex == 30503020 or itemTblIndex == 30503016) then		
			nGrowLevel = LuaFnGetPetGrowRateByGUID( sceneId, selfId, petGUID_H, petGUID_L )      
		end											--by Vega 20080919

		local selfName = LuaFnGetName(sceneId, selfId);
		local petTransfer = LuaFnGetPetTransferByGUID(sceneId, selfId, petGUID_H, petGUID_L);
		if perLevel and perLevel >= 6 and selfName and petTransfer then
			local strWorldChat = "#{_INFOUSR"..selfName.."}#HÊ¹ÓÃ#Y»¹Í¯ÌìÊé#Hºó,#{_INFOMSG"..petTransfer.."}#H´ÓÌì¶ø½µ!";
			BroadMsgByChatPipe(sceneId, selfId, strWorldChat, 4);
		end
		
		-- ³É³¤ÂÊTÕi ½Ü³ö(º¬)ÒÔÉÏÊ±²¥·ÅH® th¯ng¹«¸æ
		-- add by WTT	20090116
		if (nGrowLevel >= 4) then
			local strTbl = {"ÆÕÍ¨","ÓÅĞã","½Ü³ö","×¿Ô½","ÍêÃÀ"};
			-- AAAºÜÏ²»¶Ğ¡¶¯Îï,½«ÕäÊŞ»¹Í¯ºó¾¹È»ÒâÍâtoÕ ğµ  ği¬mµ½ÁË³É³¤ÂÊÎªCCCtoÕ ğµ BBB£¡°®ĞÄtoÕ ğµ »Ø±¨¹ûÈ»·áºñ.
			-- AAAÎªÍæ¼ÒÁ´½Ó  BBBÎª»¹Í¯ºóÕäÊŞtoÕ ğµ Á´½Ó	 CCCÎª³É³¤ÂÊ(½Ü³ö¼°ÒÔÉÏ).
			local Msg = "#W#{_INFOUSR%s}#{HT14}#Y"..strTbl[nGrowLevel].."#{HT15}#{_INFOMSG%s}#{HT16}"
			local szPetTrans = GetPetTransString ( sceneId, selfId, petGUID_H, petGUID_L )
			local str = format( Msg, selfName, szPetTrans )
				
			BroadMsgByChatPipe (sceneId, selfId, str, 4)
		end
		
	end
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x334908_OnActivateEachTick( sceneId, selfId )
	return 1
end

-- Cái này º¯ÊıÃ»ÓĞÊ²Ã´ÓÃ,µ«Ğúng±ØĞëÓĞ
function x334908_CancelImpacts( sceneId, selfId )
	return 0
end


--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x334908_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
