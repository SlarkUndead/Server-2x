--ÂåÑôNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x892002_g_ScriptId = 892002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x892002_g_eventList={}


x892002_g_DarkSkillName = { [40] = {name = "Ném Ám khí", id = 274, needmoney = 20000},
                            [70] = {name = "Ám khí ðä huy®t", id = 275, needmoney = 100000},
                            [90] = {name = "Ám khí hµ th¬", id = 276, needmoney = 500000},
                          }                
x892002_g_DarkSkillTips = { [40] = "#{FBSJ_090106_89}",
                            [70] = "#{FBSJ_090106_90}",
                            [90] = "#{FBSJ_090106_91}",
                          }  
x892002_g_DarkBreachPointNeedMoney = 
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
function x892002_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Sß huynh t×ng cùng ta ß¾c h©n thoái ¦n giang h°, ¦n cß trong núi vô lßþng. Ðinh Xuân Thu ðµc hÕi sß huynh ðßa h¡n t¾i vách núi ðen, nay không biªt sinh tØ...")
		AddText(sceneId,"Xin chào"..PlayerSex..", ngß½i nhß thª nào ki«m giæ Ngñ Dao Bàn? Có phäi hay không sß huynh còn s¯ng? Thïnh báo cho biªt, ta s¨ hi®p trþ ngß½i phß½ng pháp có ðßþc Ngñ Dao Bàn.")
		for i, eventId in x892002_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p ðÆng c¤p Võ H°n",6,7)
		AddNumText(sceneId,x892002_g_ScriptId,"M· rµng kÛ nång Võ H°n",6,8)
		AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Võ H°n m· rµng kÛ nång",6,9)
		AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n",6,10)
		--AddNumText(sceneId,x892002_g_ScriptId,"Thuyªt minh Võ H°n",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892002_OnDefaultEvent( sceneId, selfId,targetId )
	x892002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892002_g_eventList do
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

	elseif NumText == 888 then  --ËµÃ÷
		BeginEvent(sceneId)
			AddNumText(sceneId,x892002_g_ScriptId,"Îä»êÀ´ÓÉ",6,666)
			AddNumText(sceneId,x892002_g_ScriptId,"ÔõÑù»ñµÃÎä»ê",6,667)
			AddNumText(sceneId,x892002_g_ScriptId,"Îä»êÔõÑùÉý¼¶",6,668)
			AddNumText(sceneId,x892002_g_ScriptId,"ÔõÑù»ñµÃÎä»êÏà¹ØµÀ¾ß",6,669)
			AddNumText(sceneId,x892002_g_ScriptId,"Îä»êÀ©Õ¹ÊôÐÔ½éÉÜ",6,670)
			AddNumText(sceneId,x892002_g_ScriptId,"Îä»êÊôÏà½éÉÜ",6,671)
			AddNumText(sceneId,x892002_g_ScriptId,"ÊôÏàÏà¿ËÐ§¹û",6,672)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"²»Öª¹ýÁË¶àÉÙÄê£¬ÖÐÔ­ÎäÁÖÔâÓöÒ»³¡ºÆ½Ù£¬ÔÚÇ¿´óµÄÍâµÐÇ°Ãæ£¬ÖÁ×ðÎä»êÖÕÓÚ¾õÐÑ£¬»Ã»¯·ÖÉí³ÉÎªÇ§Ç§ÍòÍò¸öÎä»êÊØ»¤×ÅÄêÇáµÄÏÀÊ¿ÃÇ£¬³ÉÎªËûÃÇÍ¬Éú¹²ËÀµÄ»ï°é¡£Èç¹ûÄãÓÐÐÒµÃµ½ÁËÕâÖÁ¸ßÎÞÉÏµÄ±¦Îï£¬Äã½«»á»ñµÃÄÜÁ¦µÄÈ«ÃæÍØÕ¹ºÍÌáÉý£¬ÈÃÄã´ïµ½Ç°ËùÎ´ÓÐµÄÐÂ¾³½ç£¡")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÔõÑù»ñµÃÎä»ê:#r¡¡¡¡#WÔÚ#GËÄ¾ø×¯#W¸±±¾ÖÐ´ò°ÜBOSS£¬ÓÐÒ»¶¨¼¸ÂÊ»ñµÃ#RÎä»ê£ºÓùÑþÅÌ#W¡£")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÎä»êÔõÑùÉý¼¶:#r¡¡¡¡#WÊ¹ÓÃ#G3#W¿ÅÏàÓ¦µÈ¼¶µÄ#G»ê±ùÖé#W¿É¶ÔÎä»ê½øÐÐÉý¼¶¡£Éý¼¶ºóµÄÎä»ê#R×ÔÉíÊôÐÔ#W¡¢#RÐ¯´øµÈ¼¶#WºÍ#RÎä»êÀ©Õ¹ÊôÐÔÖµ#W¾ù»áµÃµ½Ìá¸ß¡£#r#P(Ö»ÓÐ×¢ÈëÁËÊôÏàµÄÎä»ê²ÅÄÜ½øÐÐÉý¼¶)")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8f#rÔõÑù»ñµÃÎä»êÏà¹ØµÀ¾ß:#r#YËùÓÐÎä»êÉý¼¶µÀ¾ß¾ù¿ÉÔÚËÄ¾ø×¯»ñµÃ¡£")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÎä»êÀ©Õ¹ÊôÐÔ½éÉÜ:#r¡¡¡¡#WÊ¹ÓÃÎä»êÒ×Ïàµ¤¶ÔÎä»ê×¢ÈëÊôÏàºó£¬Îä»ê½«×Ô¶¯»ñµÃÒ»¸ö¶ÔÓ¦ÊôÏàµÄ#G¼õ¿¹ÏÂÏÞÀà#WÀ©Õ¹ÊôÐÔ¡£Îä»êµÈ¼¶Ô½¸ß£¬ÆäÀ©Õ¹ÊôÐÔÖµÔòÔ½´ó¡£¸ü¶àµÄÀ©Õ¹ÊôÐÔ½«Öð²½¸üÐÂ¿ª·Å¡£")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÎä»êÊôÏà½éÉÜ:#r#YÔõÑù»ñµÃÊôÏà:¡¡¡¡#r#WÊ¹ÓÃ#GÎä»êÒ×Ïàµ¤#W¿É¶ÔÎÞÊôÏàµÄÓùÑþÅÌ½øÐÐ×¢ÈëÊôÏà¡£Îä»êµÄÊôÏàÓÐ±ù¡¢»ð¡¢Ðþ¡¢¶¾ËÄÖÖ¡£Íæ¼Ò¿É×ÔÓÉÑ¡Ôñ×¢ÈëÒ»ÖÖ£¬µ«Îä»ê×¢ÈëÊôÏàºó£¬½«²»ÄÜ¸ü»»ÊôÏà¡£")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#YÊôÏàÏà¿ËÐ§¹û:¡¡¡¡#r#WÊôÏàÏà¿ËµÄ×îÖÕÐ§¹û£¬ÔÚÒ»¶¨³Ì¶ÈÉÏÊÜµ½Îä»êµÈ¼¶µÄÓ°Ïì¡£#r¡¡¡¡¼ÙÊ¹A¡¢BÁ½¸öÍæ¼Ò·Ö±ð×°±¸ÓÐÁ½¸öÎä»ê£¬AÍæ¼ÒµÄÎä»ê¿ËÖÆBÍæ¼ÒµÄÎä»ê¡£Èç¹ûAÍæ¼ÒµÄÎä»êºÏ³ÉµÈ¼¶¸ßÓÚBÍæ¼ÒµÄÎä»êµÈ¼¶£¬ÉËº¦·Å´óÐ§¹û¸ü¼ÓÃ÷ÏÔ£»Èç¹ûAÍæ¼ÒµÄÎä»êµÈ¼¶µÍÓÚBÍæ¼ÒµÄÎä»êµÈ¼¶£¬ÉËº¦·Å´óÐ§¹û½«ÓÐËù¼õÈõ¡£")
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p b§c Võ H°n ðÕt t¾i 3 c¤p, m¾i có th¬ tiªn giai võ h°n c¤p b§c. Ph¯i hþp sØ døng H°n Bång Châu cùng Nhu§n H°n ThÕch ðem ngñ dao bàn ðµt phá t¾i c¤p 4, Võ H°n sau khi ðµt phá thành công m· ra thuµc tính #GThÑ hai, thÑ 3 #Wcùng #Gm· rµng kÛ nång#W, h½n næa m· rµng thuµc tính cùng m· rµng kÛ nång hi®u quä tùy võ h°n c¤p b§c mà nâng cao.")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Bång",6,12)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Höa",6,13)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Huy«n",6,14)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Ðµc",6,15)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --Lînh ngµ¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n c¤p b§c 4, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ hai.")
			AddText(sceneId,"Võ h°n c¤p b§c 5, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ ba, sØ døng tß½ng Ñng kÛ nång thß thång c¤p thÑ hai m· rµng kÛ nång.")
			AddText(sceneId,"Võ h°n thång c¤p m· rµng kÛ nång tùy võ h°n c¤p b§c mà nâng cao.")

			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p kÛ nång m· rµng Võ H°n (C¤p 4)",6,16)
			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p kÛ nång m· rµng Võ H°n (C¤p 5)",6,17)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --Îä»êÀ©Õ¹ÊôÐÔ
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n c¤p b§c 4, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ hai.")
			AddText(sceneId,"Võ h°n c¤p b§c 5, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ ba, sØ døng tß½ng Ñng kÛ nång thß thång c¤p thÑ hai m· rµng kÛ nång.")
			AddText(sceneId,"Võ h°n thång c¤p m· rµng kÛ nång tùy võ h°n c¤p b§c mà nâng cao.")
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p kÛ nång Công kích",6,19)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p kÛ nång Phòng thü",6,20)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 10 then  --ÖØÏ´°µÆ÷¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p b§c Võ H°n ðÕt t¾i 3 c¤p, m¾i có th¬ tiªn giai võ h°n c¤p b§c. Ph¯i hþp sØ døng H°n Bång Châu cùng Nhu§n H°n ThÕch ðem ngñ dao bàn ðµt phá t¾i c¤p 4, Võ H°n sau khi ðµt phá thành công m· ra thuµc tính #GThÑ hai, thÑ 3 #Wcùng #Gm· rµng kÛ nång#W, h½n næa m· rµng thuµc tính cùng m· rµng kÛ nång hi®u quä tùy võ h°n c¤p b§c mà nâng cao.")
			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p kÛ nång m· rµng Võ H°n (C¤p 4)",6,21)
			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p kÛ nång m· rµng Võ H°n (C¤p 5)",6,22)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 11 then  --ÖØÖÃ°µÆ÷
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x892002_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892002_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --ÌáÉý ±ù µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"Ðµt phá c¤p b§c Võ H°n c¥n ph¯i hþp sØ døng #G3 cái #Wc¤p b§c tß½ng Ñng #GH°n Bång Châu #Wvà #YNhu§n H°n ThÕch.")
			AddText(sceneId,"Tång lên t¾i (C¤p 4) c¥n #G3 cái H°n Bång Châu (C¤p 4) #Wvà #YNhu§n H°n ThÕch - Ngñ")
			AddText(sceneId,"Tång lên t¾i (C¤p 5) c¥n #G3 cái H°n Bång Châu (C¤p 5) #Wvà #YNhu§n H°n ThÕch - Phá")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Bång (C¤p 4)",6,23)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Bång (C¤p 5)",6,24)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --ÌáÉý »ð µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"Ðµt phá c¤p b§c Võ H°n c¥n ph¯i hþp sØ døng #G3 cái #Wc¤p b§c tß½ng Ñng #GH°n Bång Châu #Wvà #YNhu§n H°n ThÕch.")
			AddText(sceneId,"Tång lên t¾i (C¤p 4) c¥n #G3 cái H°n Bång Châu (C¤p 4) #Wvà #YNhu§n H°n ThÕch - Ngñ")
			AddText(sceneId,"Tång lên t¾i (C¤p 5) c¥n #G3 cái H°n Bång Châu (C¤p 5) #Wvà #YNhu§n H°n ThÕch - Phá")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Höa (C¤p 4)",6,25)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Höa (C¤p 5)",6,26)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 130 then
		x892002_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ðµt phá c¤p b§c Võ H°n c¥n ph¯i hþp sØ døng #G3 cái #Wc¤p b§c tß½ng Ñng #GH°n Bång Châu #Wvà #YNhu§n H°n ThÕch.")
			AddText(sceneId,"Tång lên t¾i (C¤p 4) c¥n #G3 cái H°n Bång Châu (C¤p 4) #Wvà #YNhu§n H°n ThÕch - Ngñ")
			AddText(sceneId,"Tång lên t¾i (C¤p 5) c¥n #G3 cái H°n Bång Châu (C¤p 5) #Wvà #YNhu§n H°n ThÕch - Phá")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Huy«n (C¤p 4)",6,27)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Huy«n (C¤p 5)",6,28)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ðµt phá c¤p b§c Võ H°n c¥n ph¯i hþp sØ døng #G3 cái #Wc¤p b§c tß½ng Ñng #GH°n Bång Châu #Wvà #YNhu§n H°n ThÕch.")
			AddText(sceneId,"Tång lên t¾i (C¤p 4) c¥n #G3 cái H°n Bång Châu (C¤p 4) #Wvà #YNhu§n H°n ThÕch - Ngñ")
			AddText(sceneId,"Tång lên t¾i (C¤p 5) c¥n #G3 cái H°n Bång Châu (C¤p 5) #Wvà #YNhu§n H°n ThÕch - Phá")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Ðµc (C¤p 4)",6,29)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ Dao Bàn - Ðµc (C¤p 5)",6,30)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)


	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n c¤p b§c 4, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ hai.")
			AddText(sceneId,"Võ h°n c¤p b§c 5, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ ba, sØ døng tß½ng Ñng kÛ nång thß thång c¤p thÑ hai m· rµng kÛ nång.")
			AddText(sceneId,"Võ h°n thång c¤p m· rµng kÛ nång tùy võ h°n c¤p b§c mà nâng cao.")

			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p Ngñ - Thuçn Giáp (C¤p 1)",6,31)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n c¤p b§c 4, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ hai.")
			AddText(sceneId,"Võ h°n c¤p b§c 5, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ ba, sØ døng tß½ng Ñng kÛ nång thß thång c¤p thÑ hai m· rµng kÛ nång.")
			AddText(sceneId,"Võ h°n thång c¤p m· rµng kÛ nång tùy võ h°n c¤p b§c mà nâng cao.")

			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p Hß - Trì Hoãn (C¤p 1)",6,32)
			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p Hß - MÕn Lñc (C¤p 1)",6,33)
			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p Hß - Phá Giáp (C¤p 1)",6,34)
			AddNumText(sceneId,x892002_g_ScriptId,"H÷c t§p Hß - Hóa Khí (C¤p 1)",6,35)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892002_g_ScriptId,"Lînh ngµ BÕo - Th¯i Bång",6,43)
			AddNumText(sceneId,x892002_g_ScriptId,"Lînh ngµ BÕo - Lçm Höa",6,44)
			AddNumText(sceneId,x892002_g_ScriptId,"Lînh ngµ BÕo - Trùng Huy«n",6,45)
			AddNumText(sceneId,x892002_g_ScriptId,"Lînh ngµ BÕo - K¸ch Ðµc",6,46)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thång c¤p Võ H°n kÛ nång!")
			AddText(sceneId,"Võ h°n c¤p b§c 4, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ hai.")
			AddText(sceneId,"Võ h°n c¤p b§c 5, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ ba, sØ døng tß½ng Ñng kÛ nång thß thång c¤p thÑ hai m· rµng kÛ nång.")
			AddText(sceneId,"Võ h°n thång c¤p m· rµng kÛ nång tùy võ h°n c¤p b§c mà nâng cao.")

			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p LÕc - Ngßng Sß½ng (C¤p 4)",6,36)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p LÕc - Nghi®p Höa (C¤p 4)",6,37)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p LÕc - S§u Lôi (C¤p 4)",6,38)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p LÕc - Ph® C¯t (C¤p 4)",6,39)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Di®t - Lçm Sß½ng (C¤p 5)",6,40)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Di®t - Ð¸a Höa (C¤p 5)",6,41)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Di®t - Thiên Lôi (C¤p 5)",6,42)
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Di®t - Ch§m Ðµc (C¤p 5)",6,43)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n c¤p b§c 4, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ hai.")
			AddText(sceneId,"Võ h°n c¤p b§c 5, có th¬ thông qua tß½ng Ñng Võ H°n m· rµng kÛ nång thß h÷c t§p kÛ nång m· rµng thÑ ba, sØ døng tß½ng Ñng kÛ nång thß thång c¤p thÑ hai m· rµng kÛ nång.")
			AddText(sceneId,"Võ h°n thång c¤p m· rµng kÛ nång tùy võ h°n c¤p b§c mà nâng cao.")
			AddNumText(sceneId,x892002_g_ScriptId,"Thång c¤p Ngñ - V¸ Giáp (C¤p 2)",6,44)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p b§c Võ H°n ðÕt t¾i 3 c¤p, m¾i có th¬ tiªn giai võ h°n c¤p b§c. Ph¯i hþp sØ døng H°n Bång Châu cùng Nhu§n H°n ThÕch ðem ngñ dao bàn ðµt phá t¾i c¤p 4, Võ H°n sau khi ðµt phá thành công m· ra thuµc tính #GThÑ hai, thÑ 3 #Wcùng #Gm· rµng kÛ nång#W, h½n næa m· rµng thuµc tính cùng m· rµng kÛ nång hi®u quä tùy võ h°n c¤p b§c mà nâng cao.")
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 4 (Bång)",6,45)
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 4 (Höa)",6,46)
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 4 (Huy«n)",6,47)
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 4 (Ðµc)",6,48)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p b§c Võ H°n ðÕt t¾i 3 c¤p, m¾i có th¬ tiªn giai võ h°n c¤p b§c. Ph¯i hþp sØ døng H°n Bång Châu cùng Nhu§n H°n ThÕch ðem ngñ dao bàn ðµt phá t¾i c¤p 4, Võ H°n sau khi ðµt phá thành công m· ra thuµc tính #GThÑ hai, thÑ 3 #Wcùng #Gm· rµng kÛ nång#W, h½n næa m· rµng thuµc tính cùng m· rµng kÛ nång hi®u quä tùy võ h°n c¤p b§c mà nâng cao.")
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 5 (Bång)",6,49)
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 5 (Höa)",6,50)
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 5 (Huy«n)",6,51)
			AddNumText(sceneId,x892002_g_ScriptId,"M· rµng thuµc tính Võ H°n c¤p 5 (Ðµc)",6,52)
			AddNumText(sceneId,x892002_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156114)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156114,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156118, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156118)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156118,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156122, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156115)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156115,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156119, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156119)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156119,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156123, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156116)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156116,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156120, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156120)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156120,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156124, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156117)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156117,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156121, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156121)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156121,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156125, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 31 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
		c1 = GetItemCount(sceneId, selfId, 10156119)
		c2 = GetItemCount(sceneId, selfId, 10156120)
		c3 = GetItemCount(sceneId, selfId, 10156121)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910029)
		      if  c4 < 1  then
		          strNotice = "#YNgài không Võ H°n kÛ nång thß, không th¬ h÷c t§p!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1720)
			LuaFnDelAvailableItem(sceneId,selfId,39910029,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910030)
		      if  c4 < 1  then
		          strNotice = "#YNgài không Võ H°n kÛ nång thß, không th¬ h÷c t§p!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1722) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1722)
			LuaFnDelAvailableItem(sceneId,selfId,39910030,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910031)
		      if  c4 < 1  then
		          strNotice = "#YNgài không Võ H°n kÛ nång thß, không th¬ h÷c t§p!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1723) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1723)
			LuaFnDelAvailableItem(sceneId,selfId,39910031,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910032)
		      if  c4 < 1  then
		          strNotice = "#YNgài không Võ H°n kÛ nång thß, không th¬ h÷c t§p!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1724) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1724)
			LuaFnDelAvailableItem(sceneId,selfId,39910032,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910033)
		      if  c4 < 1  then
		          strNotice = "#YNgài không Võ H°n kÛ nång thß, không th¬ h÷c t§p!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1725) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1725)
			LuaFnDelAvailableItem(sceneId,selfId,39910033,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 36 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910041)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1712) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1708) > 0  then
			   DelSkill(sceneId, selfId, 1708)
		      end
			AddSkill(  sceneId, selfId, 1712)
			LuaFnDelAvailableItem(sceneId,selfId,39910041,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 37 then
		c0 = GetItemCount(sceneId, selfId, 10156119)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910042)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1713) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1709) > 0  then
			   DelSkill(sceneId, selfId, 1709)
		      end
			AddSkill(  sceneId, selfId, 1713)
			LuaFnDelAvailableItem(sceneId,selfId,39910042,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 38 then
		c0 = GetItemCount(sceneId, selfId, 10156120)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910043)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1714) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1710) > 0  then
			   DelSkill(sceneId, selfId, 1710)
		      end
			AddSkill(  sceneId, selfId, 1714)
			LuaFnDelAvailableItem(sceneId,selfId,39910043,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 39 then
		c0 = GetItemCount(sceneId, selfId, 10156121)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910044)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1715) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1711) > 0  then
			   DelSkill(sceneId, selfId, 1711)
		      end
			AddSkill(  sceneId, selfId, 1715)
			LuaFnDelAvailableItem(sceneId,selfId,39910044,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 40 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910045)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1716) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1712) > 0  then
			   DelSkill(sceneId, selfId, 1712)
		      end
			AddSkill(  sceneId, selfId, 1716)
			LuaFnDelAvailableItem(sceneId,selfId,39910045,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 41 then
		c0 = GetItemCount(sceneId, selfId, 10156123)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910046)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1717) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1713) > 0  then
			   DelSkill(sceneId, selfId, 1713)
		      end
			AddSkill(  sceneId, selfId, 1717)
			LuaFnDelAvailableItem(sceneId,selfId,39910046,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 42 then
		c0 = GetItemCount(sceneId, selfId, 10156124)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910047)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1718) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1714) > 0  then
			   DelSkill(sceneId, selfId, 1714)
		      end
			AddSkill(  sceneId, selfId, 1718)
			LuaFnDelAvailableItem(sceneId,selfId,39910047,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = GetItemCount(sceneId, selfId, 10156125)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910048)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1719) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1715) > 0  then
			   DelSkill(sceneId, selfId, 1715)
		      end
			AddSkill(  sceneId, selfId, 1719)
			LuaFnDelAvailableItem(sceneId,selfId,39910048,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 44 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910040)
		      if  c4 < 1  then
		          strNotice = "#YNgài không Võ H°n kÛ nång thß, không th¬ h÷c t§p!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1721) > 0  then
		          strNotice = "#YNgß½i ðã h÷c t§p kÛ nång này, không c¥n h÷c lÕi!!"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) <= 0  then
		          strNotice = "#YÄú±ØÐëÏÈH÷c t§p Ngñ - Thuçn Giáp £¬²ÅÄÜÉý¼¶´Ë¼¼ÄÜ£¡£¡"
		          x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) > 0  then
			   DelSkill(sceneId, selfId, 1720)
		      end
			AddSkill(  sceneId, selfId, 1721)
			LuaFnDelAvailableItem(sceneId,selfId,39910040,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n kÛ nång lînh ngµ thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 45 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25032, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 46 then
		c0 = GetItemCount(sceneId, selfId, 10156119)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25033, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = GetItemCount(sceneId, selfId, 10156120)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25034, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 48 then
		c0 = GetItemCount(sceneId, selfId, 10156121)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25035, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 49 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25040, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 50 then
		c0 = GetItemCount(sceneId, selfId, 10156123)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25041, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 51 then
		c0 = GetItemCount(sceneId, selfId, 10156124)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25042, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 52 then
		c0 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25043, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x892002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892002_g_eventList do
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
function x892002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x892002_g_eventList do
		if missionScriptId == findId then
			x892002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x892002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x892002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892002_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÊÇ·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892002_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892002_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892002_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892002_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892002_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892002_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892002_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892002_g_DarkSkillName[nSkillIndex].id)
	x892002_ShowNotice(sceneId, selfId, targetId, x892002_g_DarkSkillTips[nSkillIndex]);
	x892002_NotifyTips( sceneId, selfId, x892002_g_DarkSkillTips[nSkillIndex] )
	
	x892002_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892002_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÊÇ·ñÂú×ã°µÆ÷Æ¿¾±Ìõ¼þ
--·µ»ØÖµ£º0»òÕß1£¬1ÎªÂú×ã£¬0
--**********************************
function x892002_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892002_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892002_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892002_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892002_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892002_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892002_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892002_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892002_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892002_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892002_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±£¬ÈÃ°µÆ÷Éý¼¶
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892002_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦£¬¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892002_ShowNotice(sceneId, selfId, targetId, "Ðµt phá th¤t bÕi");
	end
	
	return
end

function x892002_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892002_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜµÄÌØÐ§ Ä¿Ç°Ê¹ÓÃÉý¼¶ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

