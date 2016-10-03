--ÂåÑôNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x892001_g_ScriptId = 892001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x892001_g_eventList={}


x892001_g_DarkSkillName = { [40] = {name = "Ném Ám khí", id = 274, needmoney = 20000},
                            [70] = {name = "Ám khí ðä huy®t", id = 275, needmoney = 100000},
                            [90] = {name = "Ám khí hµ th¬", id = 276, needmoney = 500000},
                          }                
x892001_g_DarkSkillTips = { [40] = "#{FBSJ_090106_89}",
                            [70] = "#{FBSJ_090106_90}",
                            [90] = "#{FBSJ_090106_91}",
                          }  
x892001_g_DarkBreachPointNeedMoney = 
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

x892001_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#HTräi qua mµt phen c¯ g¡ng, r¯t cøc hoàn thành thu th§p hþp thành Võ H°n. #YVõ Ð°ng #Wðßa t£ng mµt cái #{_INFOMSG%s} c¤p 1!", 
  "#{_INFOUSR%s} #cff99ccVì #YVõ Ð°ng #cff99cclàm cho ð«u #YLinh H°n trang b¸ tinh hoa#cff99cc, linh h°n trang b¸ sÑ giä dâng lên #{_INFOMSG%s} làm cäm tÕ!", 
  "#{_INFOUSR%s}#H— #YVõ Ð°ng tiªn hành #RVõ H°n #Ithång c¤p, mµt ðß¶ng quá quan träm tß¾ng, không h± là công phu không phø lòng ngß¶i, ð£c t£ng cùng #{_INFOMSG%s}!",
  "#{_INFOUSR%s}#HKhông ng×ng c¯ g¡ng thu th§p #RVõ H°n trang b¸ thång c¤p #Iv§t ph¦m, ðÕt ðßþc #W#{_INFOMSG%s}#H, th§t sñ là làm ngß¶i ta hâm mµ!", 
}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x892001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{WH_NPC_17}")
		for i, eventId in x892001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892001_g_ScriptId,"Hþp thành H°n Bång Châu",6,7)
		AddNumText(sceneId,x892001_g_ScriptId,"C¥m tinh Võ H°n",6,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892001_OnDefaultEvent( sceneId, selfId,targetId )
	x892001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892001_g_eventList do
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
			AddText(sceneId,"CÑ 5 H°n Bång Châu cùng ðÆng c¤p có th¬ hþp thành mµt cái H°n Bång Châu c¤p cao h½n.#r H°n Bång Châu có th¬ tìm sß phó Tiêu Dao TØ cho ngß½i tiªn hành thång c¤p Võ H°n c¥m tinh.")

			AddNumText(sceneId,x892001_g_ScriptId,"Hþp thành H°n Bång Châu c¤p 2",6,12)
			AddNumText(sceneId,x892001_g_ScriptId,"Hþp thành H°n Bång Châu c¤p 3",6,13)
			AddNumText(sceneId,x892001_g_ScriptId,"Hþp thành H°n Bång Châu c¤p 4",6,14)
			AddNumText(sceneId,x892001_g_ScriptId,"Hþp thành H°n Bång Châu c¤p 5",6,15)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --ÁìÎò¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"SØ døng #GVõ H°n D¸ch Tß½ng Ðan #Wcó th¬ c¥m tinh Võ H°n. C¥m tinh võ h°n có ðßþc khä nång m· rµng thuµc tính, có th¬ h÷c t§p kÛ nång võ h°n, có th¬ tång lên võ h°n c¤p b§c. Cø th¬ gi¾i thi®u ngß½i có th¬ tìm sß phø Tiêu Dao TØ.#r #GVõ h°n c¥m tinh xong không th¬ ð±i ð±i c¥m tinh.#r#c00ffff(Thao tác này c¥n tháo gÞ bäo thÕch ra, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892001_g_ScriptId,"C¥m tinh h® #GBång",6,16)
			AddNumText(sceneId,x892001_g_ScriptId,"C¥m tinh h® #cFF0000Höa",6,17)
			AddNumText(sceneId,x892001_g_ScriptId,"C¥m tinh h® #YHuy«n",6,18)
			AddNumText(sceneId,x892001_g_ScriptId,"C¥m tinh h® #ccc33ccÐµc",6,19)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --Îä»êÀ©Õ¹ÊôÐÔ
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 0)",6,19)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 1)",6,20)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 2)",6,21)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 3)",6,22)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,130)
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
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --ÌáÉý ±ù µÈ¼¶
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,39910012,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39910013, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, h°n bång châu hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
				x892001_ShowNotice(sceneId, selfId, targetId, strText);
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 13 then                   --ÌáÉý »ð µÈ¼¶
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,39910013,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39910014, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, h°n bång châu hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
				x892001_ShowNotice(sceneId, selfId, targetId, strText);
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
		
	elseif NumText == 130 then
		x892001_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,39910014,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39910015, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, h°n bång châu hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
				x892001_ShowNotice(sceneId, selfId, targetId, strText);
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 15 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
              if c0 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,39910015,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39910016, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, h°n bång châu hþp thành thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
				x892001_ShowNotice(sceneId, selfId, targetId, strText);
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 16 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156101)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910011)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156101,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910011,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156102, 1)--¸øÓèÎïÆ·
				    local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		            LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
				x892001_ShowNotice(sceneId, selfId, targetId, strText);
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 17 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156101)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910011)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156101,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910011,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156103, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
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
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
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
					x892001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u"
		     x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 20 then
		BeginEvent(sceneId)

			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng, s¨ ð¯i Ñng gi¯ng nhau Võ H°n thuµc tính!")
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 1 (Bång c¥m tinh)",6,51)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 1 (Höa c¥m tinh)",6,52)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 1 (Huy«n c¥m tinh)",6,53)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 1 (Ðµc c¥m tinh)",6,54)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)

			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng, s¨ ð¯i Ñng gi¯ng nhau Võ H°n thuµc tính!")
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 2 (Bång c¥m tinh)",6,55)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 2 (Höa c¥m tinh)",6,56)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 2 (Huy«n c¥m tinh)",6,57)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 2 (Ðµc c¥m tinh)",6,58)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)

			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng, s¨ ð¯i Ñng gi¯ng nhau Võ H°n thuµc tính!")
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 3 (Bång c¥m tinh)",6,59)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 3 (Höa c¥m tinh)",6,60)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 3 (Huy«n c¥m tinh)",6,61)
			AddNumText(sceneId,x892001_g_ScriptId,"M· rµng thuµc tính Võ h°n c¤p 3 (Ðµc c¥m tinh)",6,62)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_081209_12}",8,130)
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
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_090304_02}",11,29)
			AddNumText(sceneId,x892001_g_ScriptId,"#{FBSJ_090304_01}",11,30)
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
function x892001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892001_g_eventList do
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
function x892001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x892001_g_eventList do
		if missionScriptId == findId then
			x892001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x892001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x892001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892001_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÊÇ·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892001_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892001_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892001_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892001_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892001_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892001_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892001_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892001_g_DarkSkillName[nSkillIndex].id)
	x892001_ShowNotice(sceneId, selfId, targetId, x892001_g_DarkSkillTips[nSkillIndex]);
	x892001_NotifyTips( sceneId, selfId, x892001_g_DarkSkillTips[nSkillIndex] )
	
	x892001_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892001_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÊÇ·ñÂú×ã°µÆ÷Æ¿¾±Ìõ¼þ
--·µ»ØÖµ£º0»òÕß1£¬1ÎªÂú×ã£¬0
--**********************************
function x892001_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892001_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892001_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892001_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892001_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892001_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892001_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892001_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892001_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892001_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892001_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±£¬ÈÃ°µÆ÷Éý¼¶
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892001_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦£¬¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892001_ShowNotice(sceneId, selfId, targetId, "Ðµt phá th¤t bÕi");
	end
	
	return
end

function x892001_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892001_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜµÄÌØÐ§ Ä¿Ç°Ê¹ÓÃÉý¼¶ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892001_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
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
