--ÂåÑôNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x892004_g_ScriptId = 892004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x892004_g_eventList={}

x892004_g_DarkSkillName = { [40] = {name = "Ném Ám khí", id = 274, needmoney = 20000},
                            [70] = {name = "Ám khí ðä huy®t", id = 275, needmoney = 100000},
                            [90] = {name = "Ám khí hµ th¬", id = 276, needmoney = 500000},
                          }                
x892004_g_DarkSkillTips = { [40] = "#{FBSJ_090106_89}",
                            [70] = "#{FBSJ_090106_90}",
                            [90] = "#{FBSJ_090106_91}",
                          }  
x892004_g_DarkBreachPointNeedMoney = 
{
	[39] = 40000,
	[49] = 50000,
	[59] = 60000,
	[69] = 70000,
	[79] = 80000,
	[89] = 90000,
	[99] = 100000,
	[109] = 110000,
	[119] = 120000,
	[129] = 130000,
}  --Í»ÆÆÆ¿¾±ÐèÒª½ðÇ®

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x892004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Chúng ta Long Th¸ tam huynh ð® ðem su¯t ð¶i tinh lñc ð«u ð£t · Long Vån nghiên cÑu......#rMu¯n biªt? Bí m§t...... Bí m§t......")
		for i, eventId in x892004_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892004_g_ScriptId,"Hþp thành Câu Thiên Thái",6,7)
		AddNumText(sceneId,x892004_g_ScriptId,"#gFF0FA0Long vån m· rµng thuµc tính h÷c t§p",6,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892004_OnDefaultEvent( sceneId, selfId,targetId )
	x892004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892004_g_eventList do
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
	elseif NumText == 7 then  --ÌáÉýLong Vån c¤p µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"M²i 2 cái ðÆng c¤p tß½ng ðß½ng Câu Thiên Thái có th¬ hþp thành mµt cái cao c¤p Câu Thiên Thái.#r Câu Thiên Thái có th¬ tìm ta huynh ð® cho ngß½i Long Vån tiªn hành thång c¤p.")

			AddNumText(sceneId,x892004_g_ScriptId,"Hþp thành trung c¤p Câu Thiên Thái",6,12)
			AddNumText(sceneId,x892004_g_ScriptId,"Hþp thành cao c¤p Câu Thiên Thái",6,13)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --ÁìÎò¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"SØ døng #GChª Long ThÕch #Wcó th¬ làm Long Vån h÷c t§p mµt loÕi c¥m tinh. C¥m tinh Long Vån có ðßþc khä m· rµng thuµc tính, có th¬ tång lên Long Vån c¤p b§c. Cø th¬ gi¾i thi®u ngß½i có th¬ tìm ta. #GLong Vån h÷c t§p mµt loÕi c¥m tinh thì không th¬ ð±i ð±i c¥m tinh.#r#c00ffff(Thao tác này c¥n ðem Long Vån ðã ðßþc khäm bäo thÕch tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddText(sceneId,"#cfff263M· rµng thuµc tính Máu gi¾i hÕn trên c¥n: #cFF0000Chª Long ThÕch - Nguyên")
			AddText(sceneId,"#cfff263M· rµng thuµc tính Giäm Kháng c¥n: #cFF0000Chuª Long ThÕch - BÕo")
			AddText(sceneId,"#cfff263M· rµng thuµc tính Công kích c¥n: #cFF0000Chª Long ThÕch - Thß½ng")
			AddText(sceneId,"Long vån m· rµng thuµc tính h÷c t§p #Yphäi theo thÑ tñ tiªn hành#W, ð¥u tiên h÷c t§p Máu thßþng hÕn, sau ðó h÷c t§p giäm kháng, cu¯i cùng h÷c t§p thuµc tính công kích.")

			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Máu gi¾i hÕn trên",6,16)
			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Giäm Kháng",6,17)
			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Công kích",6,18)
			--AddNumText(sceneId,x892004_g_ScriptId,"H÷c t§p #ccc33cc ðµc c¥m tinh",6,19)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --Long Vån c¤p À©Õ¹ÊôÐÔ
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Long Vån (C¤p 0)",6,19)
			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Long Vån (C¤p 1)",6,20)
			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Long Vån (C¤p 2)",6,21)
			AddNumText(sceneId,x892004_g_ScriptId,"M· rµng thuµc tính Long Vån (C¤p 3)",6,22)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,130)
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
			AddNumText(sceneId,x892004_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892004_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --ÌáÉý ±ù µÈ¼¶
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310177,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 20310178, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, trung c¤p Câu Thiên Thái hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 13 then                   --ÌáÉý »ð µÈ¼¶
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310178,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 20310179, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, cao c¤p Câu Thiên Thái hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
		
	elseif NumText == 130 then
		x892004_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,39910014,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39910015, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, Câu Thiên Thái hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 15 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,39910015,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39910016, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, Câu Thiên Thái hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 16 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157001)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310181)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310181,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157002, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#H h÷c xong mµt loÕi thuµc tính kÛ nång#H! Thßþng c± th¥n khí lâm hàng thiên thái c± cänh, xem ra nhân gian v×a mu¯n nghênh ðón mµt h°i huyªt vû tinh phong!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#YChúc m×ng ngß½i, long vån huyªt thßþng hÕn thuµc tính h÷c t§p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u. Long vån thuµc tính phäi theo thÑ tñ h÷c t§p!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 17 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157002)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310182)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157002,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310182,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157003, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#H h÷c xong mµt loÕi thuµc tính kÛ nång#H! Thßþng c± th¥n khí lâm hàng thiên thái c± cänh, xem ra nhân gian v×a mu¯n nghênh ðón mµt h°i huyªt vû tinh phong!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#YChúc m×ng ngß½i, long vån giäm kháng hÕn cu¯i thuµc tính h÷c t§p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u. Long vån thuµc tính phäi theo thÑ tñ h÷c t§p!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 18 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157003)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310183)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157003,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310183,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157004, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#H h÷c xong mµt loÕi thuµc tính kÛ nång#H! Thßþng c± th¥n khí lâm hàng thiên thái c± cänh, xem ra nhân gian v×a mu¯n nghênh ðón mµt h°i huyªt vû tinh phong!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thuµc tính công kích h÷c t§p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u. Long vån thuµc tính phäi theo thÑ tñ h÷c t§p!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
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
					
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu nguyên li®u!"
		     x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 20 then
		BeginEvent(sceneId)

			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 1 (Bång c¥m tinh) m· rµng thuµc tính",6,51)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 1 (Höa c¥m tinh) m· rµng thuµc tính",6,52)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 1 (Huy«n c¥m tinh) m· rµng thuµc tính",6,53)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 1 (Ðµc c¥m tinh) m· rµng thuµc tính",6,54)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)

			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 2 (Bång c¥m tinh) m· rµng thuµc tính",6,55)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 2 (Höa c¥m tinh) m· rµng thuµc tính",6,56)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 2 (Huy«n c¥m tinh) m· rµng thuµc tính",6,57)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 2 (Ðµc c¥m tinh) m· rµng thuµc tính",6,58)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)

			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 3 (Bång c¥m tinh) m· rµng thuµc tính",6,59)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 3 (Höa c¥m tinh) m· rµng thuµc tính",6,60)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 3 (Huy«n c¥m tinh) m· rµng thuµc tính",6,61)
			AddNumText(sceneId,x892004_g_ScriptId,"Long Vån c¤p 3 (Ðµc c¥m tinh) m· rµng thuµc tính",6,62)
			AddNumText(sceneId,x892004_g_ScriptId,"Quay lÕi",8,130)
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
			AddNumText(sceneId,x892004_g_ScriptId,"#{FBSJ_090304_02}",11,29)
			AddNumText(sceneId,x892004_g_ScriptId,"#{FBSJ_090304_01}",11,30)
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
function x892004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892004_g_eventList do
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
function x892004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x892004_g_eventList do
		if missionScriptId == findId then
			x892004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x892004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x892004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892004_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÊÇ·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892004_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892004_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892004_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892004_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892004_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892004_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892004_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892004_g_DarkSkillName[nSkillIndex].id)
	x892004_ShowNotice(sceneId, selfId, targetId, x892004_g_DarkSkillTips[nSkillIndex]);
	x892004_NotifyTips( sceneId, selfId, x892004_g_DarkSkillTips[nSkillIndex] )
	
	x892004_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892004_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÊÇ·ñÂú×ã°µÆ÷Æ¿¾±Ìõ¼þ
--·µ»ØÖµ£º0»òÕß1£¬1ÎªÂú×ã£¬0
--**********************************
function x892004_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892004_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892004_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892004_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892004_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892004_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892004_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892004_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892004_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892004_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892004_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±£¬ÈÃ°µÆ÷Éý¼¶
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892004_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦£¬¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892004_ShowNotice(sceneId, selfId, targetId, "Ðµt phá th¤t bÕi");
	end
	
	return
end

function x892004_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892004_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜµÄÌØÐ§ Ä¿Ç°Ê¹ÓÃÉý¼¶ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

