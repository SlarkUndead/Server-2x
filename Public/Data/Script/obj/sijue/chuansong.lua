-- Áì½±NPC

x899994_g_scriptId = 899994
x899994_g_duihuan_scriptId = 77

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x899994_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 10 then
			BeginEvent(sceneId)
	   			AddText( sceneId, "Bän ð° m¾i nh¤t ðang · TÑ Tuy®t Trang....!" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "  #GÎÒÀ´×ÔÉÙÁÖËÂtoÕ ðµ #YÉ¨µØÉ®,#G½üÆÚÓÐÈË´«ÎÅÔÚTÑ Tuy®t ×¯·¢ÏÖ#YÁú°Ë²¿Ê®´ó¾ø¶¥¸ßÊÖ#GÅÅÃûµÚmµt toÕ ðµ #cFF0000É¨µØÉ®toÕ ðµ ×Ù¼£,#GÖ»ÒªÄã¸øÎÒÕÒÀ´ÕâÐ©,#WÎÒ¾Í´ðÓ¦Äã²¢ÓëÄú²¢¼ç×÷Õ½,³ÉÎªCüa ngß½i ÕäÊÞ£¡" )	
		   		--AddText( sceneId, "  ¼¯Æë#cFF0000Ìì #Y¡¢#cFF0000Áú#Y¡¢#cFF0000Õù#Y¡¢#cFF0000°Ô#Y¡¢#cFF0000Èü#Y¡¢#G¼È¿ÉÒÔ¸úÎÒ¶mµt »#YÉ¨µØÉ®¾íÖá£¡#G¾íÖá¿ÉÒÔÕÙ»½³ö#cFF0000É¨µØÉ®ÕäÊÞ#Gmµt Ö»,ËùÓÐÔ­Ê¼×ÊÖÊ#cFF0000100000#G ði¬m,É¨µØÉ®ÕäÊÞ¿ÉÒÔÁìÎò#GÉñÃØÕäÊÞ¼¼ÄÜ£¡" )	
		   		AddText( sceneId, "  TÑ tuy®t trang bän sao r½i ra: T¯i tân bäo bäo, Bäo thÕch, Nguy®t quang bäo hÕp, Bäo thÕch tß½ng khäm, BOSS tÕp, Chung cñc th¥n khí ðä tÕo ð° và các loÕi cao c¤p hþp thành phù!" )	
		   		--AddText( sceneId, "  #G×¢Òâ#Y:#cFF0000ÑªÕ½TÑ Tuy®t ×¯#YË¢¹ÖË ði¬m÷£º#GÃ¿ÈÕ#cFF0000°ë ði¬m#GË¢¹Ö,Ê±¼äÎª#Y30 phút#G¼ä¸ô¡£" )
		   		--AddNumText( sceneId, x899994_g_ScriptId, "#e6f00c7¶mµt »[ÌìÏÂµÚmµt ±¦±¦]", 4, 10 )
		   		--AddNumText( sceneId, x899994_g_ScriptId, "#cf30768É¨µØÉ®¾ø¼¼:[Phøc h± hàng long chß·ng]»ñÈ¡", 4, 20 )
		   		AddNumText( sceneId, x899994_g_ScriptId, "#e0ba4b6Ân oán TÑ Tuy®t Trang", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x899994_OnEventRequest( sceneId, selfId, targetId, eventId )
	--if eventId == x805016_g_duihuan_scriptId then
		--CallScriptFunction( x805016_g_duihuan_scriptId, "OnEventRequest",sceneId, selfId, targetId, GetNumText() )	
		--return
	--end

	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "Trß¾c m£t s¯ lßþng quái v§t là: "..n..", làm giäm s¯ lßþng quái xu¯ng 170 thì nó s¨ h°i sinh con khác,!"
  		AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
   		else 
		BeginEvent( sceneId )
		LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
                AddText( sceneId, "G÷i quái v§t m¾i thành công! B±n quan cùng quái v§t t±ng s¯ lßþng là: "..n.."!" )
           	AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		end

	elseif GetNumText() == 10 then
	    if LuaFnGetAvailableItemCount(sceneId, selfId, 30505099) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505100) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505101) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505102) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505103) < 1	then
		x899994_MsgBox( sceneId, selfId, "Thñc xin l²i, v§t ph¦m không ðü, không th¬ ð±i!" )	
		return
           else
	       local bDelOk1 = LuaFnDelAvailableItem(sceneId,selfId, 30505099, 1)
	       local bDelOk2 = LuaFnDelAvailableItem(sceneId,selfId, 30505100, 1)
	       local bDelOk3 = LuaFnDelAvailableItem(sceneId,selfId, 30505101, 1)
	       local bDelOk4 = LuaFnDelAvailableItem(sceneId,selfId, 30505102, 1)
	       local bDelOk5 = LuaFnDelAvailableItem(sceneId,selfId, 30505103, 1)

	       if bDelOk1 < 1 or bDelOk2 < 1 or bDelOk3 < 1 or bDelOk4 < 1 or bDelOk5 < 1 then
		x899994_MsgBox( sceneId, selfId, "Thñc xin l²i, v§t ph¦m không ðü, không th¬ ð±i!" )	
		return
	       else
		--¸øÍê¼Ò¶«Î÷,Íê³É
		local nBagIndex = TryRecieveItem( sceneId, selfId, 30503060, 1 )
		x899994_MsgBox( sceneId, selfId, "Ð±i thành công!" )	
				
		local message;	
		local randMessage = random(2);
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		else
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	       end
      end

	elseif GetNumText() == 20 then
		BeginEvent( sceneId )
		AddText( sceneId, "  Thu th§p #cFF000088#Grß½ng #Yc± thß tàn hi®t #G m· ra nh§n ðßþc #cFF0000täo ð¸a trân thú#G, có th¬ lînh #cFF0000Täo ð¸a tuy®t kÛ #Gphøc h± hàng long chß·ng,#G ðªn #Ytrân thú thß½ng nhân #cFF0000Vân Mi¬u Mi¬u #Gðôi!" )	
		AddText( sceneId, "  #G[#YTuy®t kÛ: Phøc h± hàng long chß·ng]#cFF0000 kÛ nång qu¥n th¬,#W ðánh trß¾c m£t,#G15 thß¾c #Wtrong phÕm vi nhi«u nh¤t #Y6 møc tiêu #Wð°ng th¶i b¸ thß½ng t±n trñc tiªp,#G giäm #cFF000025% huyªt,#W cùng lúc møc tiêu lâm vào #cFF0000trÕng thái ð¸nh thân, #Y không th¬ di chuy¬n #W và #YsØ døng kÛ nång,#G liên tøc #cFF00005#Ggiây, #Wphøc h°i #cFF00005phút!" )	
		AddNumText( sceneId, x899994_g_ScriptId, "#cf30768Thu ðßþc [Phøc h± hàng long chß·ng]", 5, 40 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 40 then

	petcount = LuaFnGetPetCount(sceneId, selfId) --È¡ ði¬mÕäÊÞÊýÁ¿
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --È¡ ði¬mÕäÊÞ±àºÅ
		if petdataid==427 then
			nThisFound = 1
			break
		end
	end

	if nThisFound == 1 then
	       	local nStoneId0 = 30503026
		       c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
                          if c0 >=88 then
			         LuaFnDelAvailableItem(sceneId,selfId,30503026,88)--É¾³ýÎïÆ·
		--¸øÍê¼Ò¶«Î÷,Íê³É
		local nBagIndex = TryRecieveItem( sceneId, selfId, 30402289, 1 )
		
		BeginEvent(sceneId)
			strText = "Ð±i thành công!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		
		local message;	
		local randMessage = random(2);
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		else
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
                          else
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#GÐ×ng tùy tùy ti®n li«n ðªn l×a d¯i ta! Ngß½i trên ngß¶i cån bän không có s· hæ v§t ph¦m" )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
       	            end
	else
		x899994_NotifyFailTips(sceneId, selfId, "Ngß½i không có täo ð¸a süng v§t, Phøc h± hàng long chß·ng chï có kÛ nång täo ð¸a, thïnh ðÕt ðßþc täo ð¸a süng v§t sau lÕi ðªn ð±i!")
	end


          elseif GetNumText() == 30 then

	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		BeginEvent(sceneId)
		AddText(sceneId,"  TrÕng thái cßÞi thú, không th¬ tiªn nh§p, cám ½n!");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	if LuaFnHasTeam( sceneId, selfId ) > 0 then
		BeginEvent( sceneId )
		AddText( sceneId, "Chúng ta tôn kính ngoÕn gia, bän ð° nhi«u nh¤t mµt ngß¶i ði vào. HuÖ bö t± ðµi ði!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return 
	end
     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 98,79,10 )--´«ËÍ
    end
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x899994_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x899994_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x899994_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¶Ô»°ÌáÊ¾
--**********************************
function x899994_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
