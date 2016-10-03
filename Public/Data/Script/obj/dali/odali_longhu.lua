--ÂåÑôNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x892005_g_ScriptId = 892005

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x892005_g_eventList={}


x892005_g_DarkSkillName = { [40] = {name = "Ném Ám khí", id = 274, needmoney = 20000},
                            [70] = {name = "Ám khí ðä huy®t", id = 275, needmoney = 100000},
                            [90] = {name = "Ám khí hµ th¬", id = 276, needmoney = 500000},
                          }                
x892005_g_DarkSkillTips = { [40] = "#{FBSJ_090106_89}",
                            [70] = "#{FBSJ_090106_90}",
                            [90] = "#{FBSJ_090106_91}",
                          }  
x892005_g_DarkBreachPointNeedMoney = 
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
function x892005_UpdateEventList( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"  Long Vån Hµi tß½ng truy«n ngàn nåm, duy có bµ tµc này chân lý......#r ta t×ng có hÕnh ch¸u quá có sào bµ tµc h§u du® long th¸ tam huynh ð® chï ði¬m, ð¯i v¾i Long Vån có nghiên cÑu......")
		for i, eventId in x892005_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån",6,7)
		AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån",6,8)
		--AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån",6,9)
		--AddNumText(sceneId,x892005_g_ScriptId,"Gi¾i thi®u Long Vån",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892005_OnDefaultEvent( sceneId, selfId,targetId )
	x892005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892005_g_eventList do
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
			AddNumText(sceneId,x892005_g_ScriptId,"ÁúÎÆÀ´ÓÉ",6,666)
			AddNumText(sceneId,x892005_g_ScriptId,"ÔõÑù»ñµÃÁúÎÆ",6,667)
			AddNumText(sceneId,x892005_g_ScriptId,"ÁúÎÆÔõÑùÉý¼¶",6,668)
			AddNumText(sceneId,x892005_g_ScriptId,"ÔõÑù»ñµÃÁúÎÆÏà¹ØµÀ¾ß",6,669)
			AddNumText(sceneId,x892005_g_ScriptId,"ÁúÎÆÀ©Õ¹ÊôÐÔ½éÉÜ",6,670)
			AddNumText(sceneId,x892005_g_ScriptId,"ÁúÎÆÑ§Ï°ÊôÐÔ½éÉÜ",6,671)
			--AddNumText(sceneId,x892005_g_ScriptId,"ÊôÏàÏà¿ËÐ§¹û",6,672)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"ÓÐ³²ÊÏÀú¾­Ç§Äê´«³Ð£¬ÃØ¾³ÖÐ±¦²ØËäÍòÇ§£¬µ«¸ü¶à¹ÅÏ¡Ö®ÎïÒÑº±¼ûÖÁ¼«¡£ÖÆ×÷ÁúÎÆËùÐèµÄÖî¶à¸¨ÁÏËäÉÐÎ´¾ø¼££¬µ«ÆäÖÐÒ»Á½ÖÖÖ÷ÒªÖ®ÎïÈ´ÒÑµ±ÊÀ²»¶à¡£µ±Ê±¸÷·½ÊÀ×åÓ¿ÈëÓÐ³²ÃØ¾³£¬ÃÙµÃÓÐ³²ÊÏÖÆ×÷ÁúÎÆÖ®·¨£¬È´¿àÓÚÖÆ×÷²ÄÁÏµÄÏ¡ÉÙ£¬ËùÒÔÎ©ÓÐÎä¹¦¸ß¾øÇÒµØÎ»³¬ÈºÖ®ÈË·½ÄÜÈ¡µÃ´ËÁúÎÆ£¬³ÉÎª×Ô¼ºÐ¦°Á½­ºþµÄÁ¦Ö¤£¡")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÔõÑù»ñµÃÁúÎÆ:#r¡¡¡¡#WÔÚ#G±øÊ¥ÆæÕó#W¸±±¾ÖÐ´ò°ÜBOSS£¬ÓÐÒ»¶¨¼¸ÂÊ»ñµÃ#RÁúÎÆ£º³õ¼¶ÁúÎÆ#W¡£")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÁúÎÆÔõÑùÉý¼¶:#r¡¡¡¡#WÊ¹ÓÃ#G3#W¿ÅÏàÓ¦µÈ¼¶µÄ#GÓñÁúËè#W¿É¶ÔÁúÎÆ½øÐÐÉý¼¶¡£Éý¼¶ºóµÄÁúÎÆ#R×ÔÉíÊôÐÔ#W¡¢#RÐ¯´øµÈ¼¶#WºÍ#RÁúÎÆÀ©Õ¹ÊôÐÔÖµ#W¾ù»áµÃµ½Ìá¸ß¡£#r#P(Ö»ÓÐÑ§Ï°ÁËÊôÏàµÄÁúÎÆ²ÅÄÜ½øÐÐÉý¼¶)")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8f#rÔõÑù»ñµÃÁúÎÆÏà¹ØµÀ¾ß:#r#YËùÓÐÁúÎÆÉý¼¶µÀ¾ß¾ù¿ÉÔÚ±øÊ¥ÆæÕóÖÐ»ñµÃ¡£")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÁúÎÆÀ©Õ¹ÊôÐÔ½éÉÜ:#r¡¡¡¡#WÊ¹ÓÃ×ºÁúÊ¯¶ÔÁúÎÆÑ§Ï°ÊôÏàºó£¬ÁúÎÆ½«×Ô¶¯»ñµÃÒ»¸ö¶ÔÓ¦ÊôÏàµÄ#GÔöÒæÀà#WÀ©Õ¹ÊôÐÔ¡£Ò»¹²ÓÐÈý¸öÊôÐÔ¿ÉÒÔÑ§Ï°¡£")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fÁúÎÆÉý¼¶½éÉÜ:#r#YÔõÑù»ñµÃÊôÏà:¡¡¡¡#r#WÊ¹ÓÃ#G×ºÁúÊ¯#W¿É¶ÔÎÞÊôÏàµÄÁúÎÆ½øÐÐÑ§Ï°ÊôÏà¡£ÁúÎÆµÄÊôÏàÓÐÈýÖÖ¡£ÁúÎÆ×¢ÈëÊôÏàºó£¬¿ÉÒÔÊ¹ÓÃÓñÁúËèºÍ¹´Ìì²ÊÉý¼¶¡£")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#YÊôÏàÏà¿ËÐ§¹û:¡¡¡¡#r#WÊôÏàÏà¿ËµÄ×îÖÕÐ§¹û£¬ÔÚÒ»¶¨³Ì¶ÈÉÏÊÜµ½ÁúÎÆµÈ¼¶µÄÓ°Ïì¡£#r¡¡¡¡¼ÙÊ¹A¡¢BÁ½¸öÍæ¼Ò·Ö±ð×°±¸ÓÐÁ½¸öÁúÎÆ£¬AÍæ¼ÒµÄÁúÎÆ¿ËÖÆBÍæ¼ÒµÄÁúÎÆ¡£Èç¹ûAÍæ¼ÒµÄÁúÎÆºÏ³ÉµÈ¼¶¸ßÓÚBÍæ¼ÒµÄÁúÎÆµÈ¼¶£¬ÉËº¦·Å´óÐ§¹û¸ü¼ÓÃ÷ÏÔ£»Èç¹ûAÍæ¼ÒµÄÁúÎÆµÈ¼¶µÍÓÚBÍæ¼ÒµÄÁúÎÆµÈ¼¶£¬ÉËº¦·Å´óÐ§¹û½«ÓÐËù¼õÈõ¡£")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --ÌáÉýÁúÎÆµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n thång c¤p Long Vån, trß¾c hªt ðem Long Vån #GC¥m tinh#W, và nhß thª nào là Long Vån c¥m tinh, ngß½i có th¬ tìm ngß¶i huynh ð® #GLong Viên #Wgiúp ngß½i.")
			AddText(sceneId,"#cfff263Thång c¤p Long Vån th¤p h½n 5, ngß½i có th¬ tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy#W. Thång c¤p Long Vån  t× 5 ðªn 6 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YS½ c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"Thång c¤p Long Vån c¤p 7 ðªn 8, c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YTrung c¤p Câu Thiên Thái#W. Long vån thång c¤p lên 9 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YCao c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")

			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån (Bång)",6,12)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån (Höa)",6,13)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån (Huy«n)",6,14)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån (Ðµc)",6,15)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --ÁìÎò¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"    #cfff263T¦y thuµc tính Long Vån c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #GT¸nh Vân Thüy#cfff263.#r Long Vån sau khi t¦y thuµc tính, khä nång xu¤t hi®n thuµc tính ng¦u nhiên, chï c¥n ngß½i nhân ph¦m t¯t, có th¬ ra 16 thuµc tính cñc ph¦m.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")

			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån (Bång) ÊôÐÔ",6,16)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån (Höa)",6,17)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån (Huy«n)",6,18)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån (Ðµc)",6,19)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
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
			AddNumText(sceneId,x892005_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892005_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --ÌáÉý ±ù µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfff263Thång c¤p Long Vån th¤p h½n 5, ngß½i có th¬ tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy#W. Thång c¤p Long Vån  t× 5 ðªn 6 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YS½ c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"Thång c¤p Long Vån c¤p 7 ðªn 8, c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YTrung c¤p Câu Thiên Thái#W. Long vån thång c¤p lên 9 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YCao c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 1)",6,23)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 2)",6,24)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 3)",6,25)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 4)",6,70)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 5)",6,71)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 6)",6,72)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 7)",6,73)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 8)",6,74)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 9)",6,75)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Bång (C¤p 10)",6,76)
			AddNumText(sceneId,x892005_g_ScriptId,"Long Vån tài li®u thuyªt minh",6,800)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --ÌáÉý »ð µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfff263Thång c¤p Long Vån th¤p h½n 5, ngß½i có th¬ tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy#W. Thång c¤p Long Vån  t× 5 ðªn 6 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YS½ c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"Thång c¤p Long Vån c¤p 7 ðªn 8, c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YTrung c¤p Câu Thiên Thái#W. Long vån thång c¤p lên 9 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YCao c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 1)",6,26)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 2)",6,27)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 3)",6,28)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 4)",6,77)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 5)",6,78)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 6)",6,79)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 7)",6,80)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 8)",6,81)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 9)",6,82)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Höa (C¤p 10)",6,83)
			AddNumText(sceneId,x892005_g_ScriptId,"Long Vån tài li®u thuyªt minh",6,800)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 130 then
		x892005_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"#cfff263Thång c¤p Long Vån th¤p h½n 5, ngß½i có th¬ tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy#W. Thång c¤p Long Vån  t× 5 ðªn 6 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YS½ c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"Thång c¤p Long Vån c¤p 7 ðªn 8, c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YTrung c¤p Câu Thiên Thái#W. Long vån thång c¤p lên 9 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YCao c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 1)",6,29)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 2)",6,30)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 3)",6,31)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 4)",6,84)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 5)",6,85)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 6)",6,86)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 7)",6,87)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 8)",6,88)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 9)",6,89)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Huy«n (C¤p 10)",6,90)
			AddNumText(sceneId,x892005_g_ScriptId,"Long Vån tài li®u thuyªt minh",6,800)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"#cfff263Thång c¤p Long Vån th¤p h½n 5, ngß½i có th¬ tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy#W. Thång c¤p Long Vån  t× 5 ðªn 6 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YS½ c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"Thång c¤p Long Vån c¤p 7 ðªn 8, c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YTrung c¤p Câu Thiên Thái#W. Long vån thång c¤p lên 9 c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #YNg÷c Long Thüy #Wvà #YCao c¤p Câu Thiên Thái#W.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 1)",6,32)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 2)",6,33)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 3)",6,34)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 4)",6,91)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 5)",6,92)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 6)",6,93)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 7)",6,94)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 8)",6,95)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 9)",6,96)
			AddNumText(sceneId,x892005_g_ScriptId,"Thång c¤p Long Vån - Ðµc (C¤p 10)",6,97)
			AddNumText(sceneId,x892005_g_ScriptId,"Long Vån tài li®u thuyªt minh",6,800)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"    #cfff263T¦y thuµc tính Long Vån c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #GT¸nh Vân Thüy#cfff263.#r Long Vån sau khi t¦y thuµc tính, khä nång xu¤t hi®n thuµc tính ng¦u nhiên, chï c¥n ngß½i nhân ph¦m t¯t, có th¬ ra 16 thuµc tính cñc ph¦m.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 1)",6,35)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 2)",6,36)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 3)",6,37)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 4)",6,38)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 5)",6,98)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 6)",6,99)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 7)",6,100)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 8)",6,101)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 9)",6,102)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Bång (C¤p 10)",6,103)
			AddNumText(sceneId,x892005_g_ScriptId,"Gi¾i thi®u t¦y thuµc tính Long Vån",6,999)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"    #cfff263T¦y thuµc tính Long Vån c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #GT¸nh Vân Thüy#cfff263.#r Long Vån sau khi t¦y thuµc tính, khä nång xu¤t hi®n thuµc tính ng¦u nhiên, chï c¥n ngß½i nhân ph¦m t¯t, có th¬ ra 16 thuµc tính cñc ph¦m.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 1)",6,39)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 2)",6,40)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 3)",6,41)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 4)",6,42)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 5)",6,104)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 6)",6,105)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 7)",6,106)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 8)",6,107)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 9)",6,108)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Höa (C¤p 10)",6,109)
			AddNumText(sceneId,x892005_g_ScriptId,"Gi¾i thi®u t¦y thuµc tính Long Vån",6,999)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"    #cfff263T¦y thuµc tính Long Vån c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #GT¸nh Vân Thüy#cfff263.#r Long Vån sau khi t¦y thuµc tính, khä nång xu¤t hi®n thuµc tính ng¦u nhiên, chï c¥n ngß½i nhân ph¦m t¯t, có th¬ ra 16 thuµc tính cñc ph¦m.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 1)",6,43)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 2)",6,44)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 3)",6,45)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 4)",6,46)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 5)",6,110)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 6)",6,111)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 7)",6,112)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 8)",6,113)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 9)",6,114)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Huy«n (C¤p 10)",6,115)
			AddNumText(sceneId,x892005_g_ScriptId,"Gi¾i thi®u t¦y thuµc tính Long Vån",6,999)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)
			AddText(sceneId,"    #cfff263T¦y thuµc tính Long Vån c¥n tiêu hao nh¤t ð¸nh s¯ lßþng #GT¸nh Vân Thüy#cfff263.#r Long Vån sau khi t¦y thuµc tính, khä nång xu¤t hi®n thuµc tính ng¦u nhiên, chï c¥n ngß½i nhân ph¦m t¯t, có th¬ ra 16 thuµc tính cñc ph¦m.")
			AddText(sceneId,"#r#c00ffff(Thao tác này c¥n ðem Long Vån ðßþc khäm bäo thÕch toàn bµ tháo xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 1)",6,47)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 2)",6,48)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 3)",6,49)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 4)",6,50)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 5)",6,116)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 6)",6,117)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 7)",6,118)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 8)",6,119)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 9)",6,120)
			AddNumText(sceneId,x892005_g_ScriptId,"T¦y thuµc tính Long Vån Ðµc (C¤p 10)",6,121)
			AddNumText(sceneId,x892005_g_ScriptId,"Gi¾i thi®u t¦y thuµc tính Long Vån",6,999)

			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 1 (Bång)",6,51)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 1 (Höa)",6,52)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 1 (Huy«n)",6,53)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 1 (Ðµc)",6,54)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 2 (Bång)",6,55)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 2 (Höa)",6,56)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 2 (Huy«n)",6,57)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 2 (Ðµc)",6,58)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 3 (Bång)",6,59)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 3 (Höa)",6,60)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 3 (Huy«n)",6,61)
			AddNumText(sceneId,x892005_g_ScriptId,"M· rµng thuµc tính Long Vån c¤p 3 (Ðµc)",6,62)
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157004)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157005, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157005)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157005,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )

		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157009)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=40 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,40)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157013, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y40 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 70 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157013)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=80 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157013,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,80)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157017, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y80 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 71 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157017)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=160 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157017,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,160)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157021, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y160 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 72 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157021)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=240 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157021,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,240)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157025, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y240 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 73 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157025)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=300 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157025,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,300)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157029, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y300 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 74 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157029)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=400 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157029,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,400)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157033, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y400 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 75 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157033)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=450 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157033,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,450)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157037, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y450 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 76 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157037)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=500 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157037,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,500)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157041, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y500 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157004)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157006, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157006)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157006,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157010, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )

		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157010)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=40 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157010,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,40)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157014, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y40 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 77 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157014)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=80 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157014,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,80)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157018, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y80 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 78 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157018)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=160 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157018,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,160)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157022, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y160 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 79 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157022)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=240 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157022,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,240)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157026, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y240 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 80 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157026)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=300 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157026,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,300)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157030, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y300 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 81 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157030)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=400 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157030,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,400)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157034, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y400 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 82 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157034)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=450 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157034,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,450)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157038, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y450 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 83 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157038)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=500 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157038,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,500)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157042, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y500 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157004)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157007)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157011, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )

		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 31 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157011)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=40 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,40)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157015, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y40 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 84 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157015)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=80 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157015,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,80)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157019, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y80 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 85 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157019)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=160 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157019,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,160)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157023, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y160 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 86 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157023)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=240 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157023,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,240)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157027, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y240 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 87 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157027)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=300 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157027,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,300)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157031, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y300 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 88 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157031)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=400 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157031,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,400)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157035, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y400 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 89 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157035)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=450 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157035,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,450)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157039, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y450 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 90 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157039)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=500 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157039,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,500)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157043, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y500 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157004)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157008, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157008)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157012, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )

		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y20 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157012)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=40 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,40)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157016, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y40 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 91 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157016)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
              if c0 >=1 and c1 >=80 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157016,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,80)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157020, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån cùng #Y80 cái #GNg÷c Long Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 92 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157020)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=160 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157020,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,160)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157024, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y160 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 93 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157024)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310177)
              if c0 >=1 and c1 >=240 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157024,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,240)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310177,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157028, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y240 cái #GNg÷c Long Thüy cùng #Y30 cái #GS½ c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 94 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157028)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=300 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157028,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,300)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157032, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y300 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 95 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157032)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310178)
              if c0 >=1 and c1 >=400 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157032,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,400)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310178,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157036, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y400 cái #GNg÷c Long Thüy cùng #Y30 cái #GTrung c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 96 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157036)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=450 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157036,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,450)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157040, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y450 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 97 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157040)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310176)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310179)
              if c0 >=1 and c1 >=500 and c2 >=30 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157040,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310176,500)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310179,30)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157044, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#H#W#{_INFOMSG%s}#W thång c¤p! Thu¤n nhiên gian tân thành LÕc Dß½ng nµi thiên hôn ð¸a ám, chï th¤y m÷i ngß¶i ð«u thèm nhö dãi, t× nay v« sau lÕi có mµt th¥n binh lþi khí r½i xu¯ng nhân gian!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y500 cái #GNg÷c Long Thüy cùng #Y30cái #GCao c¤p Câu Thiên Thái!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157005)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157005,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157005, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y1 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 36 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157009)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=2 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,2)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y2 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 37 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157013)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157013,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157013, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y3 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 38 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157017)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=4 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157017,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,4)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157017, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y4 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 98 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157021)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157021,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157021, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y5 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 99 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157025)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=6 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157025,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,6)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157025, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y6 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 100 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157029)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=7 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157029,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,7)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157029, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y7 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 101 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157033)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=8 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157033,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,8)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157033, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y8 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 102 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157037)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=9 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157037,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,9)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157037, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y9 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 103 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157041)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157041,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157041, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y10 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end



	elseif NumText == 39 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157006)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157006,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157006, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y1 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 40 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157010)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=2 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157010,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,2)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157010, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y2 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 41 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157014)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157014,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157014, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y3 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 42 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157018)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=4 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157018,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,4)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157018, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y4 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 104 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157022)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157022,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157022, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y5 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 105 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157026)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=6 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157026,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,6)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157026, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y6 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 106 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157030)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=7 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157030,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,7)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157030, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y7 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 107 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157034)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=8 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157034,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,8)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157034, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y8 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 108 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157038)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=9 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157038,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,9)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157038, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y9 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 109 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157042)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157042,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157042, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y10 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157007)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y1 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 44 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157011)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=2 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,2)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157011, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y2 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 45 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157015)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157015,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157015, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y3 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 46 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157019)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=4 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157019,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,4)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157019, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y4 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 110 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157023)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157023,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157023, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y5 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 111 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157027)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=6 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157027,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,6)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157027, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y6 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 112 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157031)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=7 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157031,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,7)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157031, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y7 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 113 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157035)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=8 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157035,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,8)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157035, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y8 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 114 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157039)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=9 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157039,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,9)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157039, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y9 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 115 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157043)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157043,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157043, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y10 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157008)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157008, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y1 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 48 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157012)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=2 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,2)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157012, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y2 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 49 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157016)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157016,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157016, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y3 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 50 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157020)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=4 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157020,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,4)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157020, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y4 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 116 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157024)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157024,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157024, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y5 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 117 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157028)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=6 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157028,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,6)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157028, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y6 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 118 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157032)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=7 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157032,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,7)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157032, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y7 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 119 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157036)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=8 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157036,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,8)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157036, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y8 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 120 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157040)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=9 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157040,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,9)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157040, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y9 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 121 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10157044)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310180)
              if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157044,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310180,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10157044, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					local name = GetName( sceneId, selfId )
					local message = format("#W#{_INFOUSR%s}#W Th§t c¦n th§n hß¾ng long vån thßþng g¡n mµt phen t¸nh vân thüy, mµt cái m¾i tinh #W#{_INFOMSG%s}#W xu¤t hi®n · trß¾c m¡t!", name, szItemTransfer)
					BroadMsgByChatPipe( sceneId, selfId, message, 4 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, long vån tr÷ng t¦y thuµc tính thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GThiªu Nguyên li®u. C¥n Long Vån và #Y10 cái #GT¸nh Vân Thüy!!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 800 then
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p t×: #G1~2#cfff263 c¥n:#G20 cái #cfff263Ng÷c Long Thüy #r c¤p #G3#cfff263 c¥n :#G40 cái #cfff263Ng÷c Long Thüy #r c¤p #G4#cfff263 c¥n #G80 cái #cfff263Ng÷c Long Thüy")
			AddText(sceneId,"    #G5#cfff263 C¤p: #G160 cái #cfff263Ng÷c Long Thüy, #G30 cái #cfff263S½ c¤p Câu Thiên Thái#r    #G6#cfff263 C¤p: #G240 cái #cfff263Ng÷c Long Thüy, #G30 cái #cfff263S½ c¤p Câu Thiên Thái#r    #G7#cfff263 C¤p: #G300 cái #cfff263Ng÷c Long Thüy, #G30 cái #cfff263Trung c¤p Câu Thiên Thái")
			AddText(sceneId,"    #G8#cfff263 C¤p: #G400 cái #cfff263Ng÷c Long Thüy, #G30 cái #cfff263Trung c¤p Câu Thiên Thái#r    #G9#cfff263 C¤p: #G450 cái #cfff263Ng÷c Long Thüy, #G30 cái #cfff263Cao c¤p Câu Thiên Thái#r    #G10#cfff263 C¤p: #G500 cái #cfff263Ng÷c Long Thüy, #G30 cái #cfff263Cao c¤p Câu Thiên Thái")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 999 then
		BeginEvent(sceneId)
			AddText(sceneId,"#G1#cfff263 C¤p: #G1 cái #cfff263T¸nh Vân Thüy#r    #G2#cfff263 C¤p: #G2 cái #cfff263T¸nh Vân Thüy#r    #G3#cfff263 C¤p: #G3 cái #cfff263T¸nh Vân Thüy#r    #G4#cfff263 C¤p: #G4 cái #cfff263T¸nh Vân Thüy")
			AddText(sceneId,"    #G5#cfff263 C¤p: #G5 cái #cfff263T¸nh Vân Thüy#r    #G5#cfff263 C¤p: #G5 cái #cfff263T¸nh Vân Thüy#r    #G7#cfff263 C¤p: #G7 cái #cfff263T¸nh Vân Thüy#r    #G8#cfff263 C¤p: #G8 cái #cfff263T¸nh Vân Thüy")
			AddText(sceneId,"    #G9#cfff263 C¤p: #G9 cái #cfff263T¸nh Vân Thüy#r    #G10#cfff263 C¤p: #G10 cái #cfff263T¸nh Vân Thüy")
			AddNumText(sceneId,x892005_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 53 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25010, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 54 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25011, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 55 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25016, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 56 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25017, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 57 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25018, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 58 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25019, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 59 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25024, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 60 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25025, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 61 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25026, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 62 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25027, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, long vån m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu Nguyên li®u!"
		     x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x892005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892005_g_eventList do
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
function x892005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x892005_g_eventList do
		if missionScriptId == findId then
			x892005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x892005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x892005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892005_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÊÇ·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892005_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892005_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892005_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892005_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892005_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892005_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892005_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892005_g_DarkSkillName[nSkillIndex].id)
	x892005_ShowNotice(sceneId, selfId, targetId, x892005_g_DarkSkillTips[nSkillIndex]);
	x892005_NotifyTips( sceneId, selfId, x892005_g_DarkSkillTips[nSkillIndex] )
	
	x892005_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892005_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÊÇ·ñÂú×ã°µÆ÷Æ¿¾±Ìõ¼þ
--·µ»ØÖµ£º0»òÕß1£¬1ÎªÂú×ã£¬0
--**********************************
function x892005_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892005_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892005_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892005_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892005_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892005_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892005_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892005_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892005_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892005_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892005_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±£¬ÈÃ°µÆ÷Éý¼¶
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892005_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦£¬¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892005_ShowNotice(sceneId, selfId, targetId, "Ðµt phá th¤t bÕi");
	end
	
	return
end

function x892005_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892005_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜµÄÌØÐ§ Ä¿Ç°Ê¹ÓÃÉý¼¶ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end
