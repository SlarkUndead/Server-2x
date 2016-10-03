-- ¶mµt »ÓñÍÃÁåîõ

-- ½Å±¾ºÅ
x050017_g_ScriptId = 050017

x050017_g_eventId_cancel = 0;		-- HuÖ bö
x050017_g_eventId_redeem = 1;		-- ¶mµt »
x050017_g_eventId_redeem_5 = 2;		-- ¶mµt »5c¤p
x050017_g_eventId_redeem_45 = 3;	-- ¶mµt »45c¤p
x050017_g_eventId_redeem_55 = 4;	-- ¶mµt »55c¤p
x050017_g_eventId_redeem_65 = 5;	-- ¶mµt »65c¤p
x050017_g_eventId_about = 10;		-- ¹ØÓÚ

--¶mµt »ÁÐ±í
x050017_g_redeemList = {};
 x050017_g_redeemList[x050017_g_eventId_redeem_5] = {count=10, level=5, item=30505126, petName="Thö ng÷c"}
x050017_g_redeemList[x050017_g_eventId_redeem_45] = {count=45, level=45, item=30505127, petName="HÕo Nguy®t Ng÷c Th¯"}
x050017_g_redeemList[x050017_g_eventId_redeem_55] = {count=55, level=55, item=30505128, petName="Thi«m Cung Ng÷c Th¯"}
x050017_g_redeemList[x050017_g_eventId_redeem_65] = {count=65, level=65, item=30505129, petName="H¢ng Nga Ng÷c Th¯"}

--ÐèÇóµÀ¾ß
x050017_g_redeemItemId = 30505125;

--»î¶¯Ê±¼ä
x050017_g_StartDayTime = 8257   --»î¶¯¿ªÊ¼Ê±¼ä 2008-9-14,°üº¬µ±ÈÕ
x050017_g_EndDayTime = 8304   --»î¶¯½áÊøÊ±¼ä 2008-10-31,°üº¬µ±ÈÕ

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050017_OnEnumerate( sceneId, selfId, targetId )
	local check = x050017_IsMidAutumnPeriod(sceneId, selfId);
	if not check or check ~= 1 then
		return
	end
	AddNumText(sceneId, x050017_g_ScriptId, "Ta mu¯n ð±i Ng÷c Th¯", 6, x050017_g_eventId_redeem);
	--AddNumText(sceneId, x050017_g_ScriptId, "¹ØÓÚ¶mµt »ÓñÍÃÁåîõ", 11, x050017_g_eventId_about);
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050017_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	local selEventId = GetNumText();
	if selEventId then
		if selEventId == x050017_g_eventId_redeem then
			BeginEvent(sceneId);
				AddText( sceneId, "#{YUTUXIAFAN_DB1}");
				AddNumText(sceneId, x050017_g_ScriptId, "Ð±i Ng÷c Th¯ ðÆng c¤p mang theo c¤p 5", 6, x050017_g_eventId_redeem_5);
				AddNumText(sceneId, x050017_g_ScriptId, "Ð±i HÕo Nguy®t Ng÷c Th¯ ðÆng c¤p mang theo c¤p 45", 6, x050017_g_eventId_redeem_45);
				AddNumText(sceneId, x050017_g_ScriptId, "Ð±i Thi«m Cung Ng÷c Th¯ ðÆng c¤p mang theo c¤p 55", 6, x050017_g_eventId_redeem_55);
				AddNumText(sceneId, x050017_g_ScriptId, "Ð±i H¢ng Nga Ng÷c Th¯ ðÆng c¤p mang theo c¤p 65", 6, x050017_g_eventId_redeem_65);
				AddNumText(sceneId, x050017_g_ScriptId, "TÕm th¶i không ð±i Ng÷c Th¯", 6, x050017_g_eventId_cancel);
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
			return 1;
		elseif selEventId == x050017_g_eventId_redeem_5
			or selEventId == x050017_g_eventId_redeem_45
			or selEventId == x050017_g_eventId_redeem_55
			or selEventId == x050017_g_eventId_redeem_65 then
			local redeemItem = x050017_g_redeemList[selEventId];
			if not redeemItem then
				x050017_NotifyBox(sceneId, selfId, targetId, "Chßa m· ðÕo cø, không th¬ ð±i!");
				return 0;
			end
			
			local redeemItemName = GetItemName(sceneId, x050017_g_redeemItemId);
			local itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050017_g_redeemItemId);
			if not itemCount or itemCount < redeemItem.count then
				x050017_NotifyBox(sceneId, selfId, targetId, "Ð±i"..GetItemName(sceneId, redeemItem.item).."C¥n "..redeemItem.count.."Cái"..redeemItemName..", trên ngß¶i các hÕ"..redeemItemName.."Không ðü! Không th¬ ð±i!");
				return 0;
			end
			
			local addItemIndex;
			BeginAddItem(sceneId);
				addItemIndex = AddItem(sceneId, redeemItem.item, 1);
			local ret = EndAddItem(sceneId, selfId);
			if not ret or ret ~= 1 then
				x050017_NotifyBox(sceneId, selfId, targetId, "Xin l²i, cµt v§t ph¦m cüa các hÕ ðã không còn ch± tr¯ng ho£c các hÕ ðang trong trÕng thái m®t möi!");
				return 0;
			end
			
			local delRet = LuaFnDelAvailableItem(sceneId, selfId, x050017_g_redeemItemId, redeemItem.count);
			if not delRet or delRet ~= 1 then
				x050017_NotifyBox(sceneId, selfId, targetId, "Không th¬ kh¤u tr× "..GetItemName(sceneId, redeemItem.item).."!");
				return 0;
			end
			
			AddItemListToHuman(sceneId, selfId);
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
			
			local itemTransfer;
			if addItemIndex and addItemIndex  > -1 then
				itemTransfer = GetItemTransfer(sceneId, selfId, addItemIndex);
			end
			
			if itemTransfer then
				if selEventId == x050017_g_eventId_redeem_45 then
					msg = "#Y NhÕc Thß¶ng Viên: #cff99cccác v¸ quan khách, #W#{_INFOUSR"..GetName(sceneId, selfId).."}#l là có th¬ dùng nó ð±i #{_INFOMSG"..itemTransfer.."}#cff99cc m¶i ra #G HÕo Nguy®t Ng÷c Th¯#cff99cc ðáng yêu cüa chúng ta, m÷i ngß¶i xin hãy ch¶ ðþi nhé!";
				elseif selEventId == x050017_g_eventId_redeem_55 then
					msg = "#Y NhÕc Thß¶ng Viên: #cff99ccNß½ng tØ, mau ra ðây xem #W#{_INFOUSR"..GetName(sceneId, selfId).."}#l lÕi dùng#{_INFOMSG"..itemTransfer.."}tri®u g÷i #G Thi«m Cung Ng÷c Th¯#cff99cc r°i!";
				elseif selEventId == x050017_g_eventId_redeem_65 then
					msg = "#Y NhÕc Thß¶ng Viên: #cff99ccKhông l¨ là Ng÷c Th¯ trong tß½ng truy«n t±ng ðµng viên không thành, #W#{_INFOUSR"..GetName(sceneId, selfId).."}#l cûng ð±i #{_INFOMSG"..itemTransfer.."} tri®u g÷i #G H¢ng Nga Ng÷c Th¯#cff99cc nào! ";
				else
					msg = "#Y NhÕc Thß¶ng Viên: #cff99ccS¤m sét ði! Tr¶i mßa ði! Ng÷c Th¯ lÕi hÕ phàm r°i! #W#{_INFOUSR"..GetName(sceneId, selfId).."}#l ðÕt ðßþc cái mà tß½ng truy«n r¢ng #{_INFOMSG"..itemTransfer.."}, cu¯i cùng ðã tri®u g÷i ðßþc #GNg÷c Th¯#cff99cc r°i! ";
				end
				
				if msg then
					BroadMsgByChatPipe(sceneId, selfId, msg, 4);
				end
			end
			
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
			return 1;
		elseif selEventId == x050017_g_eventId_cancel then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		elseif selEventId == x050017_g_eventId_about then
			BeginEvent(sceneId);
				AddText( sceneId, "#{YUTUXIAFAN_ABOUT}");
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
			return 1;
		end
	end
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050017_NotifyBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x050017_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--»î¶¯Ðúng·ñM· ra 
--**********************************
function x050017_IsMidAutumnPeriod(sceneId, selfId)
	local curDay = GetDayTime();
	if not curDay then
		return 0;
	end

	if curDay < x050017_g_StartDayTime or curDay > x050017_g_EndDayTime then
		return 0;
	end

	return 1
end
