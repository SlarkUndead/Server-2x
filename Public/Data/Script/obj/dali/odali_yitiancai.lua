--ÂåÑôNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x892003_g_ScriptId = 892003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x892003_g_eventList={}

x892003_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#H Träi qua mµt phen c¯ g¡ng, r¯t cøc thu th§p ðßþc v§t ph¦m nhuµm màu trang phøc th¶i trang. #YY Thiên Thái #Wð£c ðßa t£ng mµt cái #{_INFOMSG%s}!", 
  "#{_INFOUSR%s} #cff99ccVì #YY Thiên Thái #cff99cclàm cho nhuµm màu #YTrang phøc th¶i trang#cff99cc, linh h°n trang b¸ sÑ giä dâng lên #{_INFOMSG%s} làm cäm tÕ!", 
  "#{_INFOUSR%s}#H — #YY Thiên Thái #Wtiªn hành #RNhuµm màu trang phøc th¶i trang #Ithång c¤p trung, mµt ðß¶ng quá quan träm tß¾ng, không h± là công phu không phø lòng ngß¶i, ð£c t£ng cùng #{_INFOMSG%s}!",
  "#{_INFOUSR%s}#H Träi qua không ng×ng c¯ g¡ng thu th§p #RThu¯c nhuµm trang phøc th¶i trang #Is· hæu v§t ph¦m, ðÕt ðßþc #W#{_INFOMSG%s}#H, th§t sñ là làm ngß¶i ta hâm mµ!", 
}

-----È¾É«Ê±×°ID
x892003_XUEYU = { 10553167, 10553168, 10553169, 10553170,10553171, 10553172, 10553173, 10553174, }
x892003_XIANLV = { 10553176, 10553177, 10553178, 10553179, 10553180, 10553181, 10553182, 10553183, }
x892003_ANDAN = { 10553185, 10553186, 10553187, 10553188, 10553189, 10553190, 10553191, 10553192, }
x892003_SHUKUANG = { 10553194, 10553195, 10553196, 10553197, 10553198, 10553199, 10553200, 10553201, }
x892003_CHUNFENG = { 10553203, 10553204, 10553205, 10553206, 10553207, 10553208, 10553209, 10553210, }
x892003_QINGFENG = { 10553212, 10553213, 10553214, 10553215, 10553216, 10553217, 10553218, 10553219, }


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x892003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Chán ghét trang phøc cû ð½n ði®u s¡c thái? Chán ghét chính là trang phøc äm ðÕm quang mang? Mu¯n theo ðu±i chính mình m¾i mÛ cäm cùng cá tính, ta có th¬ giúp ngß½i gi¤c mµng tr· thành sñ th§t.")
		AddText(sceneId,"Trang phøc th¶i trang nhuµm màu có th¬ cho ngß½i thay ð±i s¡c thái trang phøc th¶i trang, m£c ra muôn tía nghìn h°ng.")
		AddText(sceneId,"Hæu tình nêu lên: Thïnh ðem nhuµm màu trang phøc th¶i ð£t · tay näi.")

		for i, eventId in x892003_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText(sceneId,x892003_g_ScriptId,"Test",6,6)
		AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu",6,7)
		AddNumText(sceneId,x892003_g_ScriptId,"Gi¾i thiªu nhuµm màu",6,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892003_OnDefaultEvent( sceneId, selfId,targetId )
	x892003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local NumText = GetNumText();
	if NumText == 6 then  --È¡ÏûÁË
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	elseif NumText == 7 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"M²i loÕi trang phøc th¶i trang ð«u có #Gnhi«u loÕi ki¬u dáng phong cách khác nhau#W, c¥n tiêu hao mµt cái #cFF0000H°ng Di®u ThÕch #Wð¬ nhuµm màu mµt l¥n. Sau khi nhuµm màu tùy c½ ðÕt ðßþc mµt loÕi ki¬u dáng phong cách trang phøc th¶i trang.")
			AddText(sceneId,"Sau khi nhuµm màu trang phøc th¶i trang vë ngoài cùng thuµc tính ðßþc tång lên, nhßng trang phøc th¶i trang ðßþc khäm bäo thÕch, tß ch¤t, cß¶ng hóa c¤p b§c s¨ b¸ m¤t, c¥n tháo xu¯ng bäo thÕch ðßþc khäm.")

			AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu Tuyªt vû sß½ng y",6,12)
			AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu Tiên læ tình duyên",6,13)
			AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu Äm ðÕm ðiêu linh",6,14)
			AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu S¾ Cu°ng Ám Hß½ng",6,15)
			AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu Xuân phong dß tuyªt",6,16)
			AddNumText(sceneId,x892003_g_ScriptId,"Nhuµm màu Thanh phong di giang",6,17)

			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --ÁìÎò¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"#YB¤t ð°ng  s¡c thái chß½ng hi¬n ngß½i ðµc ðáo  m¾i thß·ng thÑc, hoa mÛ s¡c thái cho ngß½i vô hÕn  th¸ giác hß·ng thø!")
			AddText(sceneId,"Trang phøc th¶i trang nhuµm màu sØ døng H°ng Di®u ThÕch có th¬ biªn hóa nhan s¡c, m²i l¥n nhuµm màu ð«u tùy c½ nhuµm màu thành mµt khoän hình thÑc, còn khä nång th¤t bÕi. Sau khi th¤t bÕi trang phøc m¯t cùng h°ng di®u thÕch ð«u biªn m¤t.")
			AddText(sceneId,"Còn không biªt trang phøc th¶i trang có th¬ nhuµm màu sao? Xem ra chính mình trang phøc th¶i trang phía dß¾i bi¬u hi®n thuyªt minh là có th¬ biªt, có th¬ nhuµm màu trang phøc th¶i trang phía dß¾i có chï dçn.")

		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --Îä»êÀ©Õ¹ÊôÐÔ
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x892003_g_ScriptId,"»ñÈ¡ Îä»ê£¨0¼¶£© À©Õ¹ÊôÐÔ",6,19)
			AddNumText(sceneId,x892003_g_ScriptId,"»ñÈ¡ Îä»ê£¨1¼¶£© À©Õ¹ÊôÐÔ",6,20)
			AddNumText(sceneId,x892003_g_ScriptId,"»ñÈ¡ Îä»ê£¨2¼¶£© À©Õ¹ÊôÐÔ",6,21)
			AddNumText(sceneId,x892003_g_ScriptId,"»ñÈ¡ Îä»ê£¨3¼¶£© À©Õ¹ÊôÐÔ",6,22)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 10 then  --ÖØÏ´°µÆ÷¼¼ÄÜ
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 6 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)

	elseif NumText == 11 then  --ÖØÖÃ°µÆ÷
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --Tuyªt vû sß½ng y
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124069)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124069,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--É¾³ýÎïÆ·
			              local GemListSize = getn(x892003_XUEYU)
			              local RandomGem = x892003_XUEYU[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--¸øÓèÎïÆ·
			              --local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					--x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trang phøc nhuµm màu thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 13 then                   --Tiên læ tình duyên
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124072)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124072,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--É¾³ýÎïÆ·
			              local GemListSize = getn(x892003_XIANLV)
			              local RandomGem = x892003_XIANLV[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--¸øÓèÎïÆ·
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trang phøc nhuµm màu thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
		
	elseif NumText == 130 then
		x892003_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then        ---Äm ðÕm ðiêu linh
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124100)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124100,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--É¾³ýÎïÆ·
			              local GemListSize = getn(x892003_ANDAN)
			              local RandomGem = x892003_ANDAN[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--¸øÓèÎïÆ·
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trang phøc nhuµm màu thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 15 then       ----Êè¿ñ°µÏã
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124133)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124133,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--É¾³ýÎïÆ·
			              local GemListSize = getn(x892003_SHUXIANG)
			              local RandomGem = x892003_SHUXIANG[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--¸øÓèÎïÆ·
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trang phøc nhuµm màu thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 16 then         ----´º·çÓàÑ©
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124140)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124140,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--É¾³ýÎïÆ·
			              local GemListSize = getn(x892003_CHUNFENG)
			              local RandomGem = x892003_CHUNFENG[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--¸øÓèÎïÆ·
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trang phøc nhuµm màu thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 17 then         ----Çå·çâù½­
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124103)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124103,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--É¾³ýÎïÆ·
			              local GemListSize = getn(x892003_QINGFENG)
			              local RandomGem = x892003_QINGFENG[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--¸øÓèÎïÆ·
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trang phøc nhuµm màu thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 18 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156101)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910011)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156101,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910011,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156104, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G¹§Ï²Äã£¬Îä»êÉý¼¶³É¹¦£¡"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GÇë¼ì²éÄú°ü¹üµÄÎä»êºÍ Îä»êÒ×Ïàµ¤ ÊÇ·ñÆëÈ«£¬Òª²ÄÁÏÏë¶ÔÓ¦·ÅÔÚ°ü¹üÄÚ²Å¿ÉÒÔ×¢ÈëÊôÏàÅ¶£¡£¡"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 19 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156101)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910011)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156101,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910011,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156105, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G¹§Ï²Äã£¬Îä»êÉý¼¶³É¹¦£¡"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GÇë¼ì²éÄú°ü¹üµÄÎä»êºÍ Îä»êÒ×Ïàµ¤ ÊÇ·ñÆëÈ«£¬Òª²ÄÁÏÏë¶ÔÓ¦·ÅÔÚ°ü¹üÄÚ²Å¿ÉÒÔ×¢ÈëÊôÏàÅ¶£¡£¡"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 20 then
		BeginEvent( sceneId ) 
			AddText(sceneId,"ÇëÑ¡ÔñÒª»ñÈ¡µÄÀ©Õ¹ÊôÐÔ£¬Òª¶ÔÓ¦ÏàÍ¬µÄÎä»êÊôÐÔÅ¶£¡")
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê1¼¶£¨±ùÊôÏà£©À©Õ¹ÊôÐÔ",6,51)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê1¼¶£¨»ðÊôÏà£©À©Õ¹ÊôÐÔ",6,52)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê1¼¶£¨ÐþÊôÏà£©À©Õ¹ÊôÐÔ",6,53)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê1¼¶£¨¶¾ÊôÏà£©À©Õ¹ÊôÐÔ",6,54)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent( sceneId ) 
			AddText(sceneId,"ÇëÑ¡ÔñÒª»ñÈ¡µÄÀ©Õ¹ÊôÐÔ£¬Òª¶ÔÓ¦ÏàÍ¬µÄÎä»êÊôÐÔÅ¶£¡")
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê2¼¶£¨±ùÊôÏà£©À©Õ¹ÊôÐÔ",6,55)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê2¼¶£¨»ðÊôÏà£©À©Õ¹ÊôÐÔ",6,56)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê2¼¶£¨ÐþÊôÏà£©À©Õ¹ÊôÐÔ",6,57)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê2¼¶£¨¶¾ÊôÏà£©À©Õ¹ÊôÐÔ",6,58)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent( sceneId ) 
			AddText(sceneId,"ÇëÑ¡ÔñÒª»ñÈ¡µÄÀ©Õ¹ÊôÐÔ£¬Òª¶ÔÓ¦ÏàÍ¬µÄÎä»êÊôÐÔÅ¶£¡")
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê3¼¶£¨±ùÊôÏà£©À©Õ¹ÊôÐÔ",6,59)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê3¼¶£¨»ðÊôÏà£©À©Õ¹ÊôÐÔ",6,60)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê3¼¶£¨ÐþÊôÏà£©À©Õ¹ÊôÐÔ",6,61)
			AddNumText(sceneId,x892003_g_ScriptId,"Îä»ê3¼¶£¨¶¾ÊôÏà£©À©Õ¹ÊôÐÔ",6,62)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 3 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 24 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 4 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 25 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 5 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 26 then
	 	BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 7 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 27 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 8 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 28 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_69}")
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090304_02}",11,29)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090304_01}",11,30)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 29 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_090304_03}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 30 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_090304_04}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 31 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 9 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x892003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x892003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			x892003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x892003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x892003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892003_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÊÇ·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892003_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñ¹»ÁË
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892003_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892003_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return
	end
	
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñ¹»ÁË
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892003_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].id)
	x892003_ShowNotice(sceneId, selfId, targetId, x892003_g_DarkSkillTips[nSkillIndex]);
	x892003_NotifyTips( sceneId, selfId, x892003_g_DarkSkillTips[nSkillIndex] )
	
	x892003_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892003_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÊÇ·ñÂú×ã°µÆ÷Æ¿¾±Ìõ¼þ
--·µ»ØÖµ£º0»òÕß1£¬1ÎªÂú×ã£¬0
--**********************************
function x892003_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892003_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892003_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892003_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±£¬ÈÃ°µÆ÷Éý¼¶
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892003_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦£¬¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892003_ShowNotice(sceneId, selfId, targetId, "Ðµt phá th¤t bÕi");
	end
	
	return
end

function x892003_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892003_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜµÄÌØÐ§ Ä¿Ç°Ê¹ÓÃÉý¼¶ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892003_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x210531_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x210531_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x210531_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x210531_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end