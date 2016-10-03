--ÁìCD-KEY¡¢²éÑ¯ ði¬mÊý¡¢¹ºÂòÔª±¦

x888899_g_scriptId = PRIZE_SCRIPT_ID

x888899_g_prizeGems = {
50101001,
50101002,
50102001,
50102002,
50102003,
50102004,
50103001,
50104002,
50111001,
50111002,
50112001,
50112002,
50112003,
50112004,
50113001,
50113002,
50113003,
50113004,
50113005,
50114001
};



--**********************************
-- ¼ì²é CDKey
--**********************************
function x888899_AskCDKey( sceneId, selfId )
	GetCharPrize( sceneId, selfId, 1, 980,0,0 )					--ÁìCD-KEY (980ÐúngCD-KEYTÕi BillingtoÕ ðµ ÎïÆ·ÀàÐÍ)
end

--**********************************
-- ¼ì²é ²Æ¸»¿¨
--**********************************
function x888899_AskNewUserCard( sceneId, selfId, card, op)
	NewUserCard( sceneId, selfId, card, op)									--Áì²Æ¸»¿¨/ÌåÓý¾º²Â¿¨ (cardÐúng¿¨ºÅ×Ö·û´®)
end

--**********************************
-- ¹ºÂò Ôª±¦
--**********************************
function x888899_AskYuanBao( sceneId, selfId, nYuanBao, nPoint )
	GetCharPrize(sceneId,selfId,3,999,nYuanBao,nPoint);	--ÂònYuanBaocái¹²nPoint ði¬mtoÕ ðµ Ôª±¦
end

--**********************************
-- ²éÑ¯  ði¬mÊý
--**********************************
function x888899_AskPoint( sceneId, selfId )
	GetCharPrize(sceneId,selfId,2,0,0,0);								--²éÑ¯ÈËÎï ði¬mÊý
end

--**********************************
-- ³é½±
--**********************************
function x888899_AskPrize( sceneId, selfId )
	GetCharPrize(sceneId,selfId,6,0,0,0);								--ÏÈ²éÑ¯ÈËÎï½±Æ·
end

--**********************************
-- ¼ì²é CDKey toÕ ðµ Tr· v«»Øµ÷º¯Êý
-- ntype Çë²Î¿¼ enum PRIZE_TYPE_ENUM
--**********************************
function x888899_PrizeRet( sceneId, selfId, ntype, nserial, num )
--	ÁíÍâ,ÕâÀïÃ»ÓÐ targetId,²»ÖªµÀÐ´ -1 »á²»»áÓÐÎÊÌâ
	local targetId = -1

	--CD-KEY
	if( 1 == ntype ) then
		SetMissionFlag( sceneId, selfId, MF_GetAwardFlag, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt thành công ði«u ki®n lînh thß·ng, có th¬ t¾i ch² tÕi hÕ nh§n v§t ph¦m t£ng thß·ng" )
	--²Æ¸»¿¨
	elseif( 3 == ntype ) then
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin chúc m×ng! Các hÕ ðã kích hoÕt thành công thë tài phú, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
	--Ôù ði¬m
	elseif( 4 == ntype ) then
		ZengDian(sceneId,selfId,-1,1,nserial*num)
	--ÎïÆ·
	elseif( 5 == ntype ) then
		LuaFnBeginAddItem( sceneId )
			LuaFnAddItem( sceneId, nserial, num)
		local ret = LuaFnEndAddItem( sceneId, selfId )
		if 1 == ret then
			AddItemListToHuman(sceneId,selfId)
			--ÉñµÑmµt cáiÍæ¼ÒÖ»ÄÜ²Î¼Ómµt ´Î»î¶¯
			if( nserial == 30309052 ) then
				SetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard, 1 )
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Chúc m×ng các hÕ ðã nh§n giäi thß·ng thành công, xin hãy ki¬m tra", 0);
			end
			x888899_NotifyFailBox( sceneId, selfId, targetId, "ÎïÆ·»»È¡³É¹¦£¡¸ÐÐ»Äú¶Ô¡¶Thiên Long°Ë²¿¡·toÕ ðµ Ö§³Ö!" )
		end
	--ÌåÓý¾º²Â¿¨
	elseif( 6 == ntype ) then
		local prizeItem = x888899_GetSportsPrize()
		if prizeItem then
			LuaFnBeginAddItem( sceneId )
				LuaFnAddItem( sceneId, prizeItem, 1)
			local ret = LuaFnEndAddItem( sceneId, selfId )
			if 1 == ret then
				AddItemListToHuman(sceneId,selfId)
				SetMissionFlag( sceneId, selfId, MF_ActiveSportsCard, 1 )
				--x888899_NotifyFailBox( sceneId, selfId, targetId, "     Chúc m×ng các hÕ ðã nh§n giäi thß·ng thành công, xin hãy ki¬m tra." )
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Chúc m×ng các hÕ ðã nh§n giäi thß·ng thành công, xin hãy ki¬m tra", 0);
			end
		end
	--Íø¾Û»î¶¯¿¨
	elseif( 7 == ntype ) then
		LuaFnBeginAddItem( sceneId )
		LuaFnAddItem( sceneId, 30505108, 1 )
		local ret = LuaFnEndAddItem( sceneId, selfId )
		if 1 == ret then
			AddItemListToHuman( sceneId, selfId )
			SetMissionFlag( sceneId, selfId, MF_ActiveJuCard, 1 )
			BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Chúc m×ng các hÕ ðã nh§n giäi thß·ng thành công, xin hãy ki¬m tra", 0);
		end
		
	elseif( 8 == ntype ) then	
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Chúc m×ng£¡ÄãÒÑ¾­³É¹¦Æô¶¯³¬c¤p´óÁ¦¿¨,µ½´ïmµt ¶¨µÈc¤pÖ®ºó¿ÉÒÔµ½ÐÕi Lý¶¼´óË¬(157,164)´¦Lînh ½±Àø." )
	end

	return
end

--**********************************
-- ³é½±³É¹¦ºó¸øÍæ¼ÒÌáÊ¾ÐÅÏ¢
--**********************************
function x888899_PrizeRetEnd( sceneId, selfId, retId )
	if retId and retId == 15 then
		x888899_NotifyFailBox( sceneId, selfId, -1, "     Chúc m×ng các hÕ ðã nh§n giäi thß·ng thành công, xin hãy ki¬m tra." )
	elseif( retId == 12 ) then
	  x888899_NotifyFailBox( sceneId, selfId, -1, "     Chúc m×ng các hÕ ðã nh§n giäi thß·ng thành công, xin hãy ki¬m tra." )
	end
end

--**********************************
-- ÐÂÊÖ¿¨»òÌåÓý³é½±¿¨¼ì²é
--**********************************
function x888899_OpenCard(sceneId,selfId,card)
	if nil == card then return end
	--PrintStr(card)
	local targetId = -1
	local firstbyte = strbyte(card)
	--'k' ÌåÓý¿¨
	if 107 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveSportsCard ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n giäi thß·ng r°i, không th¬ tiªp tøc nh§n næa." )
			return
		end
	--'t' ÐÂÊÖ¿¨
	elseif 116 == firstbyte or 115 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt Thë Tài Phú, không th¬ kích hoÕt tiªp næa" )
			return
		end
	elseif 99 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666 ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n giäi thß·ng r°i, không th¬ tiªp tøc nh§n næa." )
			return
		end
	end
	
	x888899_AskNewUserCard( sceneId, selfId, card, 0)
end

--**********************************
-- ¹ºÂò Ôª±¦ toÕ ðµ Tr· v«»Øµ÷º¯Êý
-- ntype Çë²Î¿¼ enum PRIZE_TYPE_ENUM
-- 1 ´ú±í OPT_YUANBAO_ADD Ôö¼ÓÔª±¦
--**********************************
function x888899_BuyRet( sceneId, selfId, ntype, nYuanBao, nLeftPoint )
--	ÁíÍâ,ÕâÀïÃ»ÓÐ targetId,²»ÖªµÀÐ´ -1 »á²»»áÓÐÎÊÌâ
	local targetId = -1

	if( 2 == ntype ) then
		YuanBao(sceneId,selfId,targetId,1,nYuanBao)
		BuyYuanBaoCount(sceneId,selfId,targetId,1,nYuanBao)
		x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
		
		--¸ø¿Í»§¶ËÌáÊ¾ÐÅÏ¢
		local strText = ""
		BeginEvent(sceneId)
			strText = "Các hÕ hoán ð±i thành công r°i. "..tostring(nYuanBao).."ði¬m Nguyên Bäo."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		LuaFnMsg2Player( sceneId, selfId,strText,MSG2PLAYER_PARA)
		
		--´óÓÚµÈÓÚ1200Ôª±¦¸øÉñÃØ²ÊÍà
		local curTime = GetHourTime()
	--»î¶¯Ê±¼ä1ÔÂ21ÈÕ¡ª¡ª2ÔÂ26ÈÕ
	--if (curTime>75100 and curTime<78750) then
		if (nYuanBao and nYuanBao >=1200) then
			local BagIndex = TryRecieveItem( sceneId, selfId, 30504085, QUALITY_MUST_BE_CHANGE )
				
				if BagIndex == -1 then
					return
				end
				
				LuaFnItemBind(sceneId, selfId,BagIndex)
				
				BeginEvent(sceneId);
					AddText(sceneId, "Xin chúc m×ng các hÕ ðßþc 1 viên bäo thÕch, xin hãy nh§n l¤y. ");
				EndEvent(sceneId);
				DispatchMissionTips(sceneId, selfId);
		end
	--end	

		--200+Ôª±¦¸ø3c¤pºì±¦Ê¯-°ó¶¨
		
		if nYuanBao and nYuanBao >= 200 then
			local countPrize = GetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT);
			if countPrize and countPrize == 0 then
				local BagIndex = TryRecieveItem( sceneId, selfId, 50313004, QUALITY_MUST_BE_CHANGE )
				
				if BagIndex == -1 then
					return
				end
				
				LuaFnItemBind(sceneId, selfId,BagIndex)
					SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
				
				BeginEvent(sceneId);
					AddText(sceneId, "Xin l²i, tay näi cüa các hÕ không ðü ch± tr¯ng ð¬ chÑa bäo ng÷c.");
				EndEvent(sceneId);
				DispatchMissionTips(sceneId, selfId);
			end
		end
	end
	return	

--		local randidx = random(100)
--		¶mµt »Ôª±¦¸ø±¦Ê¯
-- 		Ö»ÓÐ50%toÕ ðµ ¼¸ÂÊ ðÕt ðßþc±¦Ê¯
--		if nYuanBao and nYuanBao >= 600 then
--			local countPrize = GetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT);
--			if countPrize and countPrize == 0 then
--				if randidx <= 50 then
--					local maxIndex = getn(x888899_g_prizeGems);
--					local randIndex = random(maxIndex) - 1;
--					if not x888899_g_prizeGems[randIndex] then
--						randIndex = 0;
--					end
--					local itemDataId = x888899_g_prizeGems[randIndex];
--					LuaFnBeginAddItem(sceneId);
--					LuaFnAddItem(sceneId, itemDataId, 1);
--					local addItemRet = LuaFnEndAddItem(sceneId, selfId);
--					if addItemRet and addItemRet == 1 then
--						SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
--						
--						LuaFnAddItemListToHuman(sceneId, selfId);
--						BeginEvent(sceneId);
--							AddText(sceneId, "Chúc m×ngÄú»ñÔù±¦Ê¯mµt ¿Å,Çë²éÊÕ.");
--						EndEvent(sceneId);
--						DispatchMissionTips(sceneId, selfId);
--					else
--						BeginEvent(sceneId);
--							AddText(sceneId, "¶Ô²»Æð,ÄútoÕ ðµ ±³°üÃ»ÓÐ×ã¹»¿Õ¼äÈÝÄÉÔùËÍtoÕ ðµ ±¦Ê¯.");
--						EndEvent(sceneId);
--						DispatchMissionTips(sceneId, selfId);
--					end
--				else
--					SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
--				end
--			end
--		end
end

--**********************************
-- ²éÑ¯ ði¬mÊý toÕ ðµ Tr· v«»Øµ÷º¯Êý
--**********************************
function x888899_PointRet( sceneId, selfId, nLeftPoint )
	x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
end

--**********************************
-- ¼ì²é½±Æ· b¡t ð¥utoÕ ðµ »Øµ÷º¯Êý
--**********************************
function x888899_CheckRetBegin(sceneId,selfId)
	LuaFnBeginAddItem( sceneId )
end
--**********************************
-- ¼ì²é½±Æ· Ìí¼Ó¼ì²éÎïÆ·toÕ ðµ »Øµ÷º¯Êý
--**********************************
function x888899_CheckAddItem(sceneId,selfId,itemid,num)
	LuaFnAddItem( sceneId, itemid, num)
end

--**********************************
-- ¼ì²é½±Æ· ½áÊøtoÕ ðµ »Øµ÷º¯Êý
--**********************************
function x888899_CheckRetEnd(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--¼ì²é³É¹¦,¿ªÊ¼³é½±
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki¬m tra thành công, xin ðþi... ðang lînh thß·ng." )
		GetCharPrize(sceneId,selfId,4,0,0,0);		--²éÑ¯ÈËÎïÏÖTÕi ÓµÓÐtoÕ ðµ ½±Æ·
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin l²i, các hÕ không ðü ô tr¯ng, xin s¡p xªp lÕi r°i hãy ðªn nh§n." )
	end
end

--**********************************
-- ¿¨Æ¬¼ì²é½±Æ· ½áÊøtoÕ ðµ »Øµ÷º¯Êý
--**********************************
function x888899_CardCheckRetEnd(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--¼ì²é³É¹¦,¿ªÊ¼¿ª¿¨
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki¬m tra thành công, xin ðþi... ðang lînh thß·ng." )
		x888899_AskNewUserCard( sceneId, selfId, "MagicString", 1);
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin l²i, các hÕ không ðü ô tr¯ng, xin s¡p xªp lÕi r°i hãy ðªn nh§n." )
	end
end
--**********************************
-- ¿¨Æ¬¼ì²é½±Æ· ½áÊøtoÕ ðµ »Øµ÷º¯Êý,¶ÔÌìÊ¹Àñ°ü·Å³ö×öÌØÊâÈÕÖ¾ By Vega 20090121
--**********************************
function x888899_CardCheckRetEndTSLB(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--¼ì²é³É¹¦,¿ªÊ¼¿ª¿¨
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki¬m tra thành công, xin ðþi... ðang lînh thß·ng." )
		x888899_AskNewUserCard( sceneId, selfId, "MagicString", 1);

		local guid = LuaFnObjId2Guid(sceneId, selfId);
		
		if guid ~= nil then
			--local LogInfo = format("0X%08X,", guid);
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_TSLBOUT, guid);
		end
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin l²i, các hÕ không ðü ô tr¯ng, xin s¡p xªp lÕi r°i hãy ðªn nh§n." )
	end
end

--**********************************
-- ¼ì²é CDKey toÕ ðµ ³ö´íTr· v«»Øµ÷º¯Êý
--**********************************
function x888899_PrizeRetErr( sceneId, selfId, retId )
--enum	UserPrizeResult
--{
--	UPR_SUCCESS,							//³é½±ÐÅÏ¢³É¹¦
--	UPR_ASKPOINT_SUCCESS,			//²éÑ¯ ði¬mÊý³É¹¦
--	UPR_ASKBUY_SUCCESS,				//¹ºÂò³É¹¦
--
--	UPR_ERR_NO_PRIZE,					//Ã»ÓÐÖÐ½±
--	UPR_ERR_PRE_REQUEST,			//ÕýTÕi ´¦ÀíÉÏ´ÎtoÕ ðµ ÇëÇóÐÅÏ¢
--	UPR_ERR_PRIZE_BUSY,				//µÈ´ý´¦ÀítoÕ ðµ Áì½±ÐÅÏ¢¹ý¶à
--	UPR_ERR_TIME_OUT,					//´¦ÀíÁì½±ÐÅÏ¢³¬Ê±
--	UPR_ERR_EXPIRE_PRIZE,			//½±Æ·¹ýÆÚ
--	UPR_ERR_CANT_NOW,					//ÏÖTÕi ²»ÄÜ´¦Àí³é½±ÇëÇó
--	UPR_ERR_NOENOUGH_POINT,		// ði¬mÊý²»×ã
--	UPR_ERR_GOODSCODE_ERR,		//ÎïÆ·´úÂë´íÎó
--	UPR_ERR_ALREADYGET_PRIZE,	//ÒÑ¾­Áì½±
--	UPR_NEWUSERCARD_SUCCESS,	//²Æ¸»¿¨³É¹¦
--	UPR_ERR_WRONGCARDNUMBER,	//¿¨ºÅ´íÎó
--	UPR_ERR_OTHERUSERUSE,		//ÆäËûÈËÒÑ¾­Ê¹ÓÃ
--	};
	local targetId = -1

	if retId == 3 then								-- Ã»ÓÐ CD-Key
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    CDK cüa các hÕ không kích hoÕt, xin lên trang http://tl.gate.vn ð¬ ki¬m tra" )
	elseif retId == 4 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Ðang xØ lý, xin ch¶" )
	elseif retId == 5 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    H® th¯ng b§n, ch¶ mµt lát hãy thØ lÕi" )
	elseif retId == 6 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    XØ lý quá th¶i gian, ch¶ mµt lát hãy thØ lÕi" )
	elseif retId == 9 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    S¯ B€C cüa các hÕ không ðü" )
	elseif retId == 11 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Account cüa các hÕ ðã t×ng nh§n t£ng thß·ng, không th¬ kích hoÕt thêm ði«u ki®n nh§n thß·ng" )
	elseif retId == 13 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin l²i, chu²i kí tñ thë cüa các hÕ là chu²i vô hi®u, xin ki¬m tra lÕi r°i hãy nh§p lÕi." )
	elseif retId == 14 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Chu²i kí tñ thë cüa các hÕ ðã sØ døng qua r°i, hãy ki¬m tra lÕi." )
	elseif retId == 16 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Máy phøc vø không khai thông chÑc nång b¯c thåm trúng thß·ng, xin xác nh§n" )
	elseif retId == 17 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Tài khoän này ðã qua c¤p 10, không th¬ sØ døng lÕi thë tài phú." )
	elseif retId == 20 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin l²i, các hÕ không có ph¥n thß·ng ð¬ nh§n lînh" )
	else
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Quy ð±i th¤t bÕi, xin ch¶ mµt lát hãy thØ lÕi. Nªu thao tác không thành công, xin liên h® v¾i nhân viên phøc vø ð¬ xØ lý" )
	end
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x888899_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- Í¨Öª¿Í»§¶ËÊ£Óà ði¬mÊý
--**********************************
function x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, nLeftPoint)
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2003 )
end

--**********************************
-- ÌåÓý¾º²Â¿¨Ëæ»ú ðÕt ðßþc½±Æ·
--**********************************
function x888899_GetSportsPrize()
	local total = getn(SPORTS_CARD_PRIZE)
	if total and total >= 1 then
		local idx = random(1,total)
		return SPORTS_CARD_PRIZE[idx]
	else
		return nil
	end
end
