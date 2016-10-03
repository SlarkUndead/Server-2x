--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:


--±ŞÅÚ
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾

--½Å±¾ºÅ
x050053_g_scriptId = 050053

--bufftoÕ ğµ ÁĞ±í
x050053_g_Impact = {

		5910,
		5911,
}

x050053_g_strDropNotice ="#{NSBS_20071228_12}"

x050053_g_BianPao1 = 30505165
x050053_g_BianPao2 = 30505166
x050053_g_MosterDataID = 11355
x050053_g_Distance = 16
x050053_g_DropItem = 0


x050053_g_PosTbl = {

	{154,47},	{154,59},
	{148,51},	{160,55},
	{148,55},	{160,51},
}

--Éú³¤ ği¬mid
x050053_g_GrowPointID = 781
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x050053_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x050053_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x050053_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x050053_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	return 1;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x050053_OnDeplete( sceneId, selfId )
	--²»ÏûºÄ....ºó±ß»¹ÒªÊ¹ÓÃ´æµ½ÎïÆ·ÉÏtoÕ ğµ ĞÅÏ¢ÄØ....
	return 1;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x050053_OnActivateOnce( sceneId, selfId )
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return
	end
	
	--¼ÆËãÉËº¦Öµ
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local damagevale = 2
	
	local impactID = x050053_g_Impact[1]
		
	if x050053_g_BianPao2==itemTblIndex then
		damagevale = 20
		impactID = x050053_g_Impact[2]
		
		--¸øµÀ¾ßºÍ¸øbuff
	end
	
	--¿ÛÎïÆ·....
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
	end

	if x050053_g_BianPao2==itemTblIndex then
		
		local rand = random(100)
			
		
		if rand < 11 then
			
			if rand < 6 then  	--ÃÅÉñ
				
				local BagIndex = TryRecieveItem( sceneId, selfId, 30501158, QUALITY_MUST_BE_CHANGE )

				if BagIndex ~= -1 then					
					LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4874, 0);
				end
				
			else								--¶şÌß½Å	
				
				local BagIndex = TryRecieveItem( sceneId, selfId, 30501157, QUALITY_MUST_BE_CHANGE )

				if BagIndex ~= -1 then
					LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4875, 0);
				end	
			end
			
		end
	end
	
	--Ö»ÓĞĞúngmµt ¹Ò±ŞÅÚÊ±¼Óbuff....Ôö¼ÓÌØĞ§
	if x050053_g_BianPao2==itemTblIndex then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);
	end
	
	--ÉËº¦boss
	--È¡ ği¬mÍæ¼Òµ±Ç°×ø±ê
	local mosterid = -1;
	
	local PlayerX = GetHumanWorldX(sceneId,selfId)
	local PlayerY = GetHumanWorldZ(sceneId,selfId)
	local MosterX = 0;
	local MosterY = 0;
	local mosterid = -1;
	local IsCreateBox = 0;
	local IsFindMonster = 0;


	--±éÀú³¡¾°ÖĞËùÓĞtoÕ ğµ ¹Ö....¸üĞÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		mosterid = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, mosterid )
		
		if MosDataID == x050053_g_MosterDataID then
			MosterX = GetMonsterWorldX(sceneId,i)
			MosterY = GetMonsterWorldZ(sceneId,i)
			IsFindMonster = 1
			IsCreateBox = x050053_IsCreateSixBox(sceneId,i,damagevale)
			break;
		end
	end

	
	local Distance = floor(sqrt((MosterX-PlayerX)*(MosterX-PlayerX)+(MosterY-PlayerY)*(MosterY-PlayerY)))
	
	if Distance < x050053_g_Distance and IsFindMonster == 1 then	--boss¼õÑª
		LuaFnSetDamage(sceneId, selfId, mosterid, damagevale)
		
		if IsCreateBox ==1 then 
			x050053_CreateSixBox(sceneId, selfId)
		end
	end
	return 1;
end

function x050053_ClearDromItemFlag( sceneId )
	x050053_g_DropItem = 0;
end

function x050053_IsCreateSixBox( sceneId, index, damagevale)

		local HP = GetMonsterHP(sceneId,index)
		local MaxHP = GetMonsterMaxHP(sceneId,index)
		
		local HP3 = MaxHP*3/4
		local HP2 = MaxHP*2/4
		local HP1 = MaxHP*1/4
		
		if HP >= HP3 and HP-damagevale < HP3 and x050053_g_DropItem == 0 then
			x050053_g_DropItem =1
			return 1
		elseif HP >= HP2 and (HP-damagevale) < HP2 and x050053_g_DropItem == 1 then
			x050053_g_DropItem =2
			return 1
		elseif HP >= HP1 and (HP-damagevale) < HP1 and x050053_g_DropItem == 2 then
			x050053_g_DropItem =3
			return 1
		end
		
		return 0;
end

function x050053_CreateSixBox( sceneId, selfId)

	--µôÂä¹«¸æ
	BroadMsgByChatPipe( sceneId, selfId, x050053_g_strDropNotice, 4 )
	
	--´´½¨±¦Ïä
	for _, Pos in x050053_g_PosTbl do
		
		local ItemBoxId = ItemBoxEnterScene( Pos[1], Pos[2], x050053_g_GrowPointID, sceneId, QUALITY_MUST_BE_CHANGE, 1, 30501157 )
	
		AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30501158)	
		
		local rand = random(100)
		if rand < 26 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30505107)
		end
	
		rand = random(100)
		if rand < 16 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30501159)
		end
	
		rand = random(100)
		if rand < 16 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 30501160)
		end
	
		rand = random(1000)
		if rand < 16 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 10141105)
		end
	
		rand = random(1000)
		if rand < 16 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 10141106)
		end
	
		rand = random(1000)
		if rand < 16 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 10141107)
		end
	
		rand = random(1000)
		if rand < 16 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 10141108)
		end
	
		rand = random(1000)
		if rand < 7 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 10141109)
		end
		
		rand = random(1000)
		if rand < 7 then
			AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, 10141110)
		end
		
		SetItemBoxMaxGrowTime( sceneId, ItemBoxId, 5400000 )
	end
end
--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x050053_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end
