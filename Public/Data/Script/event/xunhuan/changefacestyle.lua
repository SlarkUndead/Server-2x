--µ÷ÕûÁ³ĞÍ
--½Å±¾ºÅ
x805029_g_ScriptId = 805029

--µ÷ÕûÁ³ĞÍUI 21

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x805029_OnEnumerate( sceneId, selfId, targetId )
	-- µ÷ÊÔĞÅÏ¢
	--BeginEvent(sceneId)
	--	AddText(sceneId, "½øÈëµ÷ÕûÁ³ĞÍ½Å±¾");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	
	
	-- ÎªÊ²Ã´Òª NPC Tên?
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 928)
	return
end

--**********************************
--µ÷ÕûÁ³ĞÍ
--**********************************
function x805029_FinishAdjust( sceneId, selfId, styleId)

	--  ği¬mµ½µ÷ÕûÁ³ĞÍËùĞèÎïÆ·toÕ ğµ id¼°ÆäÊıÁ¿
	local ItemId, ItemCount = GetChangeFaceItemIdAndItemCount(styleId)
		
	-- Tr· v«Öµ·Ç·¨
	if ItemId < 0 or ItemCount < 0 then
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- ÎïÆ·Ğúng·ñ¹»ÓÃ»òËø¶¨
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "ÄúÃ»ÓĞ¶¨ÑÕÖé,»òÕß¶¨ÑÕÖé±»Ëø¶¨.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
		--  ğÕt ğßşc¶¨ÑÕÖéTÕi ±³°üÖĞtoÕ ğµ Î»ÖÃ(¶¨ÑÕÖé»áTÕi ¸Ä±äÁ³ĞÍtoÕ ğµ ¹ı³ÌÖĞ±»É¾³ı,ËùÒÔC¥n ÏÈ±£´æËütoÕ ğµ ĞÅÏ¢)
	local ItemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, ItemId, 0)
	local szItemTransfer = GetBagItemTransfer(sceneId, selfId, ItemPos)
	
	-- ÎïÆ·¼ì²âÍ¨¹ı,ÔÙ¼ì²éÍæ¼Ò½ğÇ®
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- ÎïÆ·ºÍ½ğÇ®¼ì²â¶¼Í¨¹ı
	if (moneyJZ + money >= 50000)	then	
		-- ÉèÖÃÍæ¼ÒĞÂÁ³ĞÍ(»áTÕi Cái này ¹ı³ÌÖĞÏûºÄÎïÆ·ºÍ½ğÇ®)
		local ret = ChangeHumanFaceModel( sceneId, selfId, styleId )
		if ret == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"¸Ä±äÁ³ĞÍ³É¹¦.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		
		-- ¸Ä±äÁ³ĞÍth¤t bÕi
		elseif ret == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÇëÑ¡Ôñmµt ÖÖĞÂÁ³ĞÍ.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then
			BeginEvent(sceneId)
				AddText(sceneId, "ÄúÃ»ÓĞ¶¨ÑÕÖé,»òÕß¶¨ÑÕÖé±»Ëø¶¨.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Không ğü ngân lßşng.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- Không ğü ngân lßşng.
	else
		BeginEvent(sceneId)
			AddText(sceneId, "Không ğü ngân lßşng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	-- ·¢ËÍ¹ã²¥
	local message;	
	local randMessage = random(3);
	local nsex = LuaFnGetSex(sceneId, selfId)
	local str1,str2
	if nsex == 0  then
		str1 = "muµi ¤y "
		str2 = "Ğ©p"
	else
		str1 = "huynh ¤y "
		str2 = "ğ©p trai"
	end
	
	if randMessage == 1 then
		message = format("#c00FFFFCon ngß¶i mu¯n khuôn m£t, cây mu¯n vö cây, #W#{_INFOUSR%s}#c00FFFF r¤t hi¬u ğÕo lı này nên hôm nay dùng #W#{_INFOMSG%s}#c00FFFF ğ¬ thay ğ±i dung mÕo, làm cho Phan An phäi tÑc chªt, Ğiêu Thuy«n cûng phäi h± th©n!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	elseif randMessage == 2 then
		message = format("#c00FFFFMa Kính nói trên thª gi¾i này" .. str2 .. "Ğã sinh ra r°i! Chính là #W#{_INFOUSR%s}#c00FFFF lúc nãy con NhÕn l¾n làm r½i t× trên tr¶i xu¯ng, mau ği xem" .. str1 .. "ği, cái#W#{_INFOMSG%s}#c00FFFF này sau khi sØ døng quä nhiên hi®u quä vô cùng!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	else
		message = format("#c00FFFFA! Sao cá trong dòng su¯i này ğ«u ngØa bøng lên hªt ? Không l¨ b¸ trúng ğµc mà chªt ? Không phäi, thì ra là do #W#{_INFOUSR%s}#c00FFFF m¾i v×a ği ngang qua, lû cá m¡c c·. Tr¶i Õ!" .. str1 .. "Dùng #W#{_INFOMSG%s}#c00FFFF thì sau này s¨ có 1 dung mÕo tuy®t thª nhß thª này!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	end

	BroadMsgByChatPipe(sceneId, selfId, message, 4);
end
