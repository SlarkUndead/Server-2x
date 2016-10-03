--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:


--4846.lua
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾
--¶¨Î»·û(ºìÉ«¡¢À¶É«¡¢°×É«¡¢ÂÌÉ«¡¢»ÆÉ«¡¢×ÏÉ«)
--½Å±¾ºÅ
x334846_g_ScriptId	= 334846

--Ğ§¹ûtoÕ ğµ ID
x334846_g_Impact		= -1	--Ê¹ÓÃmµt cáiÌØ¶¨toÕ ğµ ÌØĞ§±àºÅ

--²Ù×÷¼¯
x334846_g_Key				= {}
x334846_g_Key["nul"]= 0		--É¶¶¼Ã»×ö
x334846_g_Key["log"]= 1		--¼ÇÂ¼×ø±ê
x334846_g_Key["bus"]= 2		--³É¹¦´«ËÍ

--²»Í¬µÈc¤ptoÕ ğµ ¶¨Î»·ûÊ¹ÓÃ´ÎÊı²»Í¬
x334846_g_UseTim		= { 8, 13, 20,30 }

x334846_g_Yinpiao = 40002000

x334846_g_Impact_NotTransportList = { 5929 } -- ½ûÖ¹´«ËÍtoÕ ğµ Impact
x334846_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ½ûÖ¹´«ËÍtoÕ ğµ ImpactÌáÊ¾ĞÅÏ¢

--½ûÖ¹´«ËÍµ½Lâu Lan³¡¾°µÈc¤pÉÏÏŞ	--add by xindefeng
x334846_g_LimitTransLevel = 75

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x334846_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x334846_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x334846_CancelImpacts( sceneId, selfId )
	return 0	 --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x334846_OnConditionCheck( sceneId, selfId )

	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end

	--ÅĞ¶Ïµ±Ç°×´Ì¬Ğúng·ñ¿ÉÊ¹ÓÃ¶¨Î»·û
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x334846_MsgBox( sceneId, selfId, "Äú´¦ÓÚ²»ÔÊĞí´«ËÍtoÕ ğµ ×´Ì¬,²»ÄÜÊ¹ÓÃ¶¨Î»·û!" )
		return 0
	end

	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x334846_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	--¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x334846_g_Yinpiao) >= 1  then
		x334846_MsgBox(sceneId, selfId, "Äú´¦ÓÚÅÜÉÌ×´Ì¬,²»ÄÜÊ¹ÓÃ¶¨Î»·û!")
		return 0
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x334846_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x334846_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	local	opx, opy	--¼ÇÒä×ø±ê
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )
	local osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )--ÒÑ¶¨Î»³¡¾°ID
	--ÈôÎ´¼ÇÂ¼¹ı¶¨Î»ĞÅÏ¢
	if opx <= 0 and opy <= 0 then
		--ÅĞ¶Ïµ±Ç°³¡¾°Ğúng·ñ¿ÉÊ¹ÓÃ¶¨Î»·û
		if sceneId ~= SCENE_DALI and sceneId ~= SCENE_LUOYANG and sceneId ~= SCENE_SUZHOU and sceneId ~= SCENE_LOULAN then	--Lâu LanÒ²ĞúngÖ÷³Ç--modify by xindefeng
			x334846_MsgBox( sceneId, selfId, "³ıÁËTô Châu¡¢LÕc Dß½ng¡¢ĞÕi Lı¡¢Lâu LanÍâ,²»¿ÉTÕi ÆäËû³¡¾°Ê¹ÓÃ¶¨Î»·û!" )
			return 0
		end		
	else	
		--ÒÑ¾­¶¨Î»,²¢ÇÒ¶¨Î»µ½Lâu Lan,ÔòÅĞ¶Ïc¤p±ğ,<90c¤p½ûÈë!--add by xindefeng
		if (osid == SCENE_LOULAN) and (GetLevel(sceneId, selfId) < x334846_g_LimitTransLevel) then
			local szMsg = format("Lâu LanC¥n %dc¤pm¾i có th¬ tiªn vào", x334846_g_LimitTransLevel)
			x334846_MsgBox( sceneId, selfId, szMsg )
			return 0
		end
	end

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
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
function x334846_OnDeplete( sceneId, selfId )
--if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
--	return 1
--end
--return 0

	return 1
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x334846_OnActivateOnce( sceneId, selfId )
	if( -1 ~= x334846_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x334846_g_Impact, 0 )
	end
	
	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	key, tim	= x334846_OnUse( sceneId, selfId )
	
	--ÅĞ¶ÏĞúng·ñÏú»ÙÎïÆ·
	if key == x334846_g_Key["bus"] and tim <= 0 then
--	LuaFnDepletingUsedItem( sceneId, selfId )
		if bagId >= 0 then
			EraseItem( sceneId, selfId, bagId )
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
function x334846_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--Ê¹ÓÃ,Tr· v«²Ù×÷Ö¸ÁîÒÔ¼°Ê£ÓàÊ¹ÓÃ´ÎÊı
--**********************************
function x334846_OnUse( sceneId, selfId )

	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return x334846_g_Key["nul"]
	end

	--ÅĞ¶Ïµ±Ç°×´Ì¬Ğúng·ñ¿ÉÊ¹ÓÃ¶¨Î»·û
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x334846_MsgBox( sceneId, selfId, "Äú´¦ÓÚ²»ÔÊĞí´«ËÍtoÕ ğµ ×´Ì¬,²»ÄÜÊ¹ÓÃ¶¨Î»·û!" )
		return x334846_g_Key["nul"]
	end

	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x334846_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return x334846_g_Key["nul"]
	end

	--¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x334846_g_Yinpiao) >= 1  then
		x334846_MsgBox(sceneId, selfId, "Äú´¦ÓÚÅÜÉÌ×´Ì¬,²»ÄÜÊ¹ÓÃ¶¨Î»·û!")
		return x334846_g_Key["nul"]
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x334846_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x334846_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	--¶¨Î»·ûtoÕ ğµ ×î´óÊ¹ÓÃ´ÎÊı
	local	oid		= LuaFnGetItemTableIndexByIndex( sceneId, selfId, bagId )
	local	olev	= GetCommonItemGrade( oid )
	local	omax	= x334846_g_UseTim[olev]

	--»ñÈ¡¼ÇÂ¼TÕi ÎïÆ·ÉíÉÏtoÕ ğµ Êı¾İ½á¹¹
	local	otim			--¶¨Î»·ûtoÕ ğµ Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	--ÈôÒÑ¼ÇÂ¼¹ı¶¨Î»ĞÅÏ¢Ôò´«ËÍ,·ñÔò¼ÇÂ¼µ±Ç°ĞÅÏ¢
	--Í¬Ê±¿ÉÊ¹ÓÃ´ÎÊı¼õ1,µ±ÆäÖµÎª0Ê±É¾³ı¸ÃÎïÆ·
	if opx > 0 and opy > 0 then
		if sceneId == osid then
			--Í¬mµt ³¡¾°´«ËÍ
			SetPos( sceneId, selfId, opx, opy )
		else
			--Lâu Lan<90c¤p½ûÈë--add by xindefeng
			if (osid == SCENE_LOULAN) and (GetLevel(sceneId, selfId) < x334846_g_LimitTransLevel) then
				local szMsg = format("Lâu LanC¥n %dc¤pm¾i có th¬ tiªn vào", x334846_g_LimitTransLevel)
				x334846_MsgBox( sceneId, selfId, szMsg )
				return x334846_g_Key["nul"]
			end
			--¼ì²âĞúng·ñ¿ÉÒÔÇĞ»»µ½Ä¿±ê³¡¾°
			if IsCanNewWorld( sceneId, selfId, osid, opx, opy ) ~= 1 then
				return x334846_g_Key["nul"]
			end
			--²»Í¬³¡¾°´«ËÍ
			NewWorld( sceneId, selfId, osid, opx, opy )
		end
		SetBagItemParam( sceneId, selfId, bagId, 3, 0, (otim-1) )
		--¼ÇÂ¼Í³¼ÆĞÅÏ¢
		LuaFnAuditGPS(sceneId, selfId, 0)

		--Ë¢ĞÂClient¶ËtoÕ ğµ ±³°üÎïÆ·ĞÅÏ¢
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )
		return x334846_g_Key["bus"], (otim-1)
	end

	--¼ÇÂc¤p¨Î»ĞÅÏ¢	
	--ÅĞ¶Ïµ±Ç°³¡¾°Ğúng·ñ¿ÉÊ¹ÓÃ¶¨Î»·û
	if sceneId ~= SCENE_DALI and sceneId ~= SCENE_LUOYANG and sceneId ~= SCENE_SUZHOU and sceneId ~= SCENE_LOULAN then	--Lâu LanÒ²ĞúngÖ÷³Ç--modify by xindefeng
		x334846_MsgBox( sceneId, selfId, "³ıÁËTô Châu¡¢LÕc Dß½ng¡¢ĞÕi Lı¡¢Lâu LanÍâ,²»¿ÉTÕi ÆäËû³¡¾°Ê¹ÓÃ¶¨Î»·û!" )
		return x334846_g_Key["nul"]
	end	

	--»ñÈ¡Íæ¼ÒtoÕ ğµ µ±Ç°×ø±ê
	osid			= sceneId
	opx, opy	= LuaFnGetUnitPosition( sceneId, selfId )
	opx	= floor( opx )
	opy	= floor( opy )

	SetBagItemParam( sceneId, selfId, bagId, 0, 1, 10 )		--Key,ÕâÎ»±êÊ¶²Ù×÷¼¯ºÏ,Ò²ĞúngClientĞŞÕıTooltipstoÕ ğµ ÒÀ¾İ
	SetBagItemParam( sceneId, selfId, bagId, 2, 0, omax )	--×î´óÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, bagId, 3, 0, omax )	--Ê£ÓàÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, bagId, 4, 1, osid )	--³¡¾°±àºÅ
	SetBagItemParam( sceneId, selfId, bagId, 6, 1, opx )	--X×ø±ê
	SetBagItemParam( sceneId, selfId, bagId, 8, 1, opy )	--Y×ø±ê
	--Ë¢ĞÂClient¶ËtoÕ ğµ ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditGPS(sceneId, selfId, 1)

	return x334846_g_Key["log"], omax
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x334846_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
