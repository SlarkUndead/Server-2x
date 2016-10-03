x889066_g_scriptId = 889066
--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x889066_OnDefaultEvent( sceneId, selfId )
	if GetNumText()>=100 and GetNumText()<200 then
		x889066_SuiShen(sceneId, selfId)
	elseif GetNumText()>=200 and GetNumText()<300 then
		x889066_JiaRuMenPai(sceneId, selfId,0)
	elseif GetNumText()>=300 and GetNumText()<400 then
		x889066_BaoShi(sceneId, selfId)
	elseif GetNumText()>=400 and GetNumText()<500 or GetNumText()>=1000 and GetNumText()<2000 then
		x889066_ChuanSong(sceneId, selfId, 0,0)
	elseif GetNumText()>=500 and GetNumText()<600 then
		x889066_EquipBase(sceneId,selfId)
	elseif GetNumText()>=600 and GetNumText()<700 then
		x889066_Pet(sceneId,selfId)
	elseif GetNumText() == 7777  then
		x889066_XinFa(sceneId,selfId)
	elseif GetNumText() == 8888  then
		x889066_BackToIndex( sceneId, selfId )
	elseif GetNumText() == 9999  then
		x889066_CloseMe(sceneId, selfId)
	end
end
--**********************************
--×°±¸¹¦ÄÜ
--**********************************
function x889066_Pet(sceneId,selfId)
	if GetNumText()==600 then
		BeginEvent(sceneId)
			--AddText(sceneId, "#G    ËæÉí±¦Ê¯±¦±¦Ïà¹Ø¹¦ÄÜ¼¯ºÏ¡£")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffLuy®n kÛ nång Trân Thú", 5, 601)
			AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif GetNumText()==601 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,selfId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 223)
	end
end
--**********************************
--×°±¸¹¦ÄÜ
--**********************************
function x889066_EquipBase(sceneId,selfId)
	if GetNumText()==500 then
		BeginEvent(sceneId)
			AddText(sceneId, "#G    Gia công Trang b¸")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffGiám ð¸nh tß ch¤t trang b¸", 5, 501)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffTái giám ð¸nh trang b¸", 5, 502)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffCß¶ng hóa trang b¸", 5, 503)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffTång s¯ l¥n sØa chæa", 5, 504)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffKh¡c Danh Trang B¸", 5, 505)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffGÞ kh¡c danh trang b¸", 5, 506)
			AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif GetNumText()==501 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )
	elseif GetNumText()==502 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112233 )
	elseif GetNumText()==503 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1002)
	elseif GetNumText()==504 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1004)
	elseif GetNumText()==505 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1005)
	elseif GetNumText()==506 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1006)
	end
end
--**********************************
--´«ËÍ¹¦ÄÜ
--**********************************
function x889066_ChuanSong(sceneId,selfId,key,isNPC)
	if key==0 then
		key=GetNumText()	
	end
	if key==400 then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y    ËæÉí´«ËÍ¹¦ÄÜÖ»ÔÊÐíÔÚ#RËÄ#Y´óÖ÷³Ç£¨Â¥À¼¡¢´óÀí¡¢ËÕÖÝ¡¢ÂåÑô£©ºÍ#RÊ®#Y´óÃÅÅÉ³¡¾°ÄÚÊ¹ÓÃ£¬ÈçÔÚÒ°ÍâÐèÒª´«ËÍ£¬ÇëÊ¹ÓÃ¡°#G·µ»ØÖ÷³Ç#Y¡±¼¼ÄÜ·µ»ØÖ÷³ÇºóÔÙÊ¹ÓÃ´«ËÍ¹¦ÄÜ¡£")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐßa ta ðªn các Thành th¸", 9, 401)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐßa ta ðªn nhæng môn phái khác", 9, 402)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÁ·¼¶ÇøÓò     #G¡¾¿ìËÙÌáÉýµÈ¼¶¡¿", 9, 403)
			AddNumText(sceneId, x889066_g_scriptId,"#Y¸±±¾ÇøÓò     #R¡¾¶À´´¸±±¾ÏµÍ³¡¿", 9, 406)
			AddNumText(sceneId, x889066_g_scriptId,"#cff0000Ð°¶ñÇøÓò     #R¡¾¿ìËÙ»ñÈ¡±¦Îï¡¿", 9, 404)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÆäËûÇøÓò     #R¡¾ÆäËûÁ·¹¦µØµã¡¿", 9, 405)
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==401 then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y    Ði ðªn các thành ph¯:")
			AddNumText(sceneId, x889066_g_scriptId,"#cff0000Thành Th¸ - Lâu Lan", 9, 424)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffThành Th¸ - ÐÕi Lý", 9, 421)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffThành Th¸ - LÕc Dß½ng", 9, 422)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffThành Th¸ - Tô Châu", 9, 423)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffKhong Biet 1", 9, 1502)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffVõ quán LÕc Dß½ng", 9, 425)
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==425 then
		x889066_MsgBox( sceneId, selfId, "#cfff263    Â¥À¼Ö÷³ÇÒÑÖØÐÂ¹æ»®£¬¿É½øÐÐÇÐ´èÁË£¬Ö±½Ó·µ»ØÖ÷³ÇÌôÕ½¶Ô·½¡£" )
		x889066_GoTo(sceneId,selfId,0, 186, 328)--ÂåÑô
	elseif key==402 then
		BeginEvent(sceneId)
			--AddText(sceneId, "#Y    Ê®´óÃÅÅÉ´«ËÍ½çÃæ:")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Mµ Dung", 9, 440)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Tinh Túc", 9, 441)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Tiêu Dao", 9, 442)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Thiªu Lâm", 9, 443)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Thiên S½n", 9, 444)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Thiên Long", 9, 445)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Nga My", 9, 446)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Võ Ðang", 9, 447)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Minh Giáo", 9, 448)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffMôn phái - Cái Bang", 9, 449)
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==404 then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y    Ð°¶ñÇøÓòÎª´ò±¦ÇøÓò£¬³öÃÅÔÚÍâ£¬Ð¡ÐÄ°²È«:")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÒ°Íâ - ÊøºÓ¹ÅÕò  #R¡¾BOSS×¨Çø¡¿", 9, 1501)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÒ°Íâ - ¹ÅÄ¹¾Å²ã  #R¡¾BOSS×¨Çø¡¿", 9, 1503)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¾º¼¼ - áÔÉ½¾º¼¼  #R¡¾BOSS×¨Çø¡¿", 9, 1504)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÒ°Íâ - ·ïÃùÕò    #R¡¾BOSS×¨Çø¡¿", 9, 1502)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - À¥ÂØÉ½¡¿", 9, 461)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ·ï»Ë¹Å³Ç¡¿", 9, 462)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ÇåÔ´¡¿", 9, 463)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - Ìì½ÙÂ¥¡¿", 9, 464)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ÇåÔ´É½¶´¡¿", 9, 465)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ·ï»ËÆ½Ô­¡¿", 9, 466)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ÖðÂ¹Õ½³¡¡¿", 9, 467)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ·ï»ËÁêÄ¹¡¿", 9, 468)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - ÊøºÓ¹ÅÕò¡¿", 9, 469)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¡¾Ò°Íâ - À¥ÂØ¸£µØ¡¿", 9, 470)
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==1504 then
		x889066_GoTo(sceneId,selfId,414, 100, 98)--ÊøºÓ¹ÅÕò
	elseif key==1503 then
		x889066_GoTo(sceneId,selfId,167, 56, 79)--ÊøºÓ¹ÅÕò
	elseif key==1501 then
		x889066_GoTo(sceneId,selfId,420, 200, 211)--ÊøºÓ¹ÅÕò
	elseif key==1502 then
		x889066_GoTo(sceneId,selfId,580, 158, 61)--·ïÃùÕò
	elseif key==403 then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y    ÒÔÏÂÎªÁ·¼¶Ò»ÌõÁú³¡¾°£¬¹Ö³¬¶à£¬¾­Ñé³¬Ë¬:")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÍ¨ÌìËþµØ¹¬     #R¡¾45-100³¡Ëù¡¿", 9, 450)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÑàÍõ¹ÅÄ¹1²ã       #R¡¾35 - 60¡¿", 9, 1401)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÑàÍõ¹ÅÄ¹7²ã       #R¡¾60 - 80¡¿", 9, 1402)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÇØ»ÊµØ¹¬1²ã      #R¡¾80 - 100¡¿", 9, 1403)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÇØ»ÊµØ¹¬2²ã      #R¡¾80 - 100¡¿", 9, 1404)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÇØ»ÊµØ¹¬3²ã      #R¡¾80 - 100¡¿", 9, 1405)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÊ¥»ð¹¬           #R¡¾100 - 150¡¿", 9, 1406)
			AddNumText(sceneId, x889066_g_scriptId,"#cff0000Í¨ÌìËþµØ¹¬       #R¡¾150 +¡¿", 9, 450)
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==1401 then
		x889066_GoTo(sceneId,selfId,159, 68, 93)--ÑàÍõ¹ÅÄ¹1²ã
	elseif key==1402 then
		x889066_GoTo(sceneId,selfId,165, 29, 106)--ÑàÍõ¹ÅÄ¹7²ã
	elseif key==1403 then
		x889066_GoTo(sceneId,selfId,400, 228, 219)--ÇØ»ÊµØ¹¬1²ã
	elseif key==1404 then
		x889066_GoTo(sceneId,selfId,401, 185, 163)--ÇØ»ÊµØ¹¬2²ã
	elseif key==1405 then
		x889066_GoTo(sceneId,selfId,402, 225, 214)--ÇØ»ÊµØ¹¬3²ã
	elseif key==1406 then
		x889066_GoTo(sceneId,selfId,537, 22, 106)--Ê¥»ð¹¬

	elseif key==461 then
		x889066_GoTo(sceneId,selfId,421,  109, 21)--À¥ÂØÉ½
	elseif key==462 then
		x889066_GoTo(sceneId,selfId,180,  39, 43)--·ï»Ë¹Å³Ç
	elseif key==463 then
		x889066_GoTo(sceneId,selfId,442,  104, 299)--ÇåÔ´
	elseif key==464 then
		x889066_GoTo(sceneId,selfId,433,  100, 100)--Ìì½ÙÂ¥
	elseif key==465 then
		x889066_GoTo(sceneId,selfId,443,  43, 218)--ÇåÔ´É½¶´
	elseif key==466 then
		x889066_GoTo(sceneId,selfId,441,  92, 91)--·ï»ËÆ½Ô­
	elseif key==467 then
		x889066_GoTo(sceneId,selfId,421,  100, 100)--ÖðÂ¹Õ½³¡
	elseif key==468 then
		x889066_GoTo(sceneId,selfId,440,  100, 100)--·ï»ËÁêÄ¹
	elseif key==469 then
		x889066_GoTo(sceneId,selfId,420,  100, 100)--ÊøºÓ¹ÅÕò
	elseif key==470 then
		x889066_GoTo(sceneId,selfId,422,  100, 100)--À¥ÂØ¸£µØ
	elseif key==450 then
		x889066_GoTo(sceneId,selfId,581,  256.211, 378.436)--Í¨ÌìËþµØ¹¬
	elseif key==422 then
		x889066_GoTo(sceneId,selfId,0, 233, 321)--ÂåÑô
	elseif key==423 then
		x889066_GoTo(sceneId,selfId,1, 196, 259)--ËÕÖÝ
	elseif key==424 then
		x889066_GoTo(sceneId,selfId,186, 158, 44)--Â¥À¼
	elseif key==421 then
		x889066_GoTo(sceneId,selfId,2, 375, 225)--´óÀí
	elseif key==440 then
		x889066_GoTo(sceneId,selfId,380, 154, 165)--Mµ Dung
	elseif key==441 then
		x889066_GoTo(sceneId,selfId,16,  96, 152)--ÐÇËÞ
	elseif key==442 then
		x889066_GoTo(sceneId,selfId,14,  67, 145)--åÐÒ£
	elseif key==443 then
		x889066_GoTo(sceneId,selfId,9,  96, 127)--ÉÙÁÖ
	elseif key==444 then
		x889066_GoTo(sceneId,selfId,17,  95, 120)--ÌìÉ½
	elseif key==445 then
		x889066_GoTo(sceneId,selfId,13,  96, 120)--ÌìÁú
	elseif key==446 then
		x889066_GoTo(sceneId,selfId,15,  89, 139)--¶ëÃ¼
	elseif key==447 then
		x889066_GoTo(sceneId,selfId,12, 103, 150)--Îäµ±
	elseif key==448 then
		x889066_GoTo(sceneId,selfId,11,  98, 167)--Ã÷½Ì
	elseif key==449 then
		x889066_GoTo(sceneId,selfId,10,  91, 116)--Ø¤°ï
	elseif key==405 then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y    ÆäËû³¡¾°´«ËÍ:")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÊ¥ÊÞÉ½         #R¡¾ÆäËûÁ·¹¦µã¡¿", 9, 1301)			
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÎäÒÄ           #R¡¾ÆäËûÁ·¹¦µã¡¿", 9, 1302)			
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÒø°¨Ñ©Ô­       #R¡¾ÆäËûÁ·¹¦µã¡¿", 9, 1303)			
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff²ÝÔ­           #R¡¾ÆäËûÁ·¹¦µã¡¿", 9, 1304)			
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff²ÔÉ½           #R¡¾ÆäËûÁ·¹¦µã¡¿", 9, 1305)			
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffËþ¿ËÀ­Âê¸É     #R¡¾ÆäËûÁ·¹¦µã¡¿", 9, 1306)			
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==1301 then
		x889066_GoTo(sceneId,selfId,158, 231,226)--Ê¥ÊÞÉ½
	elseif key==1302 then
		x889066_GoTo(sceneId,selfId,32, 43, 37)--ÎäÒÄ
	elseif key==1303 then
		x889066_GoTo(sceneId,selfId,188, 60, 214)--Òø°¨Ñ©Ô­
	elseif key==1304 then
		x889066_GoTo(sceneId,selfId,20, 279, 255)--²ÝÔ­
	elseif key==1305 then
		x889066_GoTo(sceneId,selfId,25, 276, 52)--²ÔÉ½
	elseif key==1306 then
		x889066_GoTo(sceneId,selfId,427, 34, 25)--Ëþ¿ËÀ­Âê¸É
	elseif key==406 then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y    ÌìÁú¸±±¾£¬ÌØÊâ³¡¾°´«ËÍ:")
			AddNumText(sceneId, x889066_g_scriptId,"#cff0000BOSS¿¨ÕÙ»½µØÍ¼   #R¡¾ÌØÊâ³¡¾°¡¿", 9, 1201)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffõí¾Ï¸±±¾         #R¡¾ÌìÁú¸±±¾¡¿", 9, 1202)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÆå¾Ö¸±±¾         #R¡¾ÌìÁú¸±±¾¡¿", 9, 1203)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffË®ÀÎ¸±±¾         #R¡¾ÌìÁú¸±±¾¡¿", 9, 1204)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÑà×Ó¸±±¾         #R¡¾ÌìÁú¸±±¾¡¿", 9, 1205)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÂ¥À¼Ñ°±¦         #R¡¾ÌìÁú¸±±¾¡¿", 9, 1206)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐÂÈý»·           #R¡¾ÌìÁú¸±±¾¡¿", 9, 1207)						
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐÂÉÙÊÒÉ½Æ®Ãì     #R¡¾ÌìÁú¸±±¾¡¿", 9, 1208)						
			if isNPC==0 then
				AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif key==1201 then
		x889066_GoTo(sceneId,selfId,458, 32, 33)--BOSS¿¨ÕÙ»½µØÍ¼
	elseif key==1202 then
		x889066_GoTo(sceneId,selfId,2, 443, 231)--õí¾Ï¸±±¾
	elseif key==1203 then
		x889066_GoTo(sceneId,selfId,2, 430, 234)--Æå¾Ö¸±±¾
	elseif key==1204 then
		x889066_GoTo(sceneId,selfId,1, 339, 310)--Ë®ÀÎ¸±±¾
	elseif key==1205 then
		x889066_GoTo(sceneId,selfId,4, 70, 121)--Ñà×Ó¸±±¾
	elseif key==1206 then
		x889066_GoTo(sceneId,selfId,186, 162, 75)--Â¥À¼Ñ°±¦
	elseif key==1207 then
		x889066_GoTo(sceneId,selfId,186, 290, 66)--ÐÂÈý»·
	elseif key==1208 then
		x889066_GoTo(sceneId,selfId,186, 191, 219)--ÐÂÉÙÊÒÉ½Æ®Ãì
	end
end
--**********************************
--´«ËÍ¹¦ÄÜ
--**********************************
function x889066_GoTo( sceneId, selfId, toSceneId, x, y )
	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x210504_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  ÄãÉíÉÏÓÐÒøÆ±£¬ÕýÔÚÅÜÉÌ£¡ÎÒ²»ÄÜ°ïÖúÄã¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	if sceneId~=0 and sceneId~=1 and sceneId~=2 and sceneId~=16 and sceneId~=14 and sceneId~=9 and sceneId~=17 and sceneId~=13 and sceneId~=15 and sceneId~=12 and sceneId~=11 and sceneId~=10 and sceneId~=380 and sceneId~=186 then
		x889066_Tips( sceneId, selfId, "ÄúÄ¿Ç°ËùÔÚµÄ³¡¾°ÎÞ·¨Ê¹ÓÃ´«ËÍ¹¦ÄÜ£¬Çë»Ø³ÇºóÔÙÊ¹ÓÃ" )
		x889066_CloseMe(sceneId, selfId)
		return
	end
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, toSceneId, x, y )
end
--**********************************
--Quay v«
--**********************************
function x889066_BackToIndex( sceneId, selfId )
	x399999_OnDefaultEvent( sceneId, selfId, -1 )
end
--**********************************
--Íæ¼ÒÆÁÄ»ÖÐ¼äÌáÊ¾
--**********************************
function x889066_Tips( sceneId, selfId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x889066_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end
--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x889066_CloseMe(sceneId, selfId)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
--**********************************
--±¦Ê¯¹¦ÄÜ
--**********************************
function x889066_BaoShi(sceneId,selfId)
	if GetNumText()==300 then
		BeginEvent(sceneId)
			AddText(sceneId, "#G    Ngß½i có th¬ ðem m¤y viên Bäo ThÕch gi¯ng nhau hþp thành 1 viên Bäo ThÕch cao h½n 1 c¤p, ðem nguyên li®u cüa m¤y viên c¤p th¤p hþp thành 1 nguyên li®u cao h½n 1 c¤p, cûng có th¬ khoan l² khäm Bäo ThÕch lên trang b¸, cûng có th¬ gÞ bö Bäo ThÕch")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐøc 3 l² cho t¤c cä trang b¸", 5, 301)
			AddNumText(sceneId, x889066_g_scriptId,"#cff0000Ðøc l² thÑ 4", 5, 302)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffBäo ThÕch Hþp Thành", 5, 303)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffKhäm Bäo ThÕch", 5, 306)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffTháo gÞ Bäo ThÕch", 5, 304)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffNguyên li®u hþp thành", 5, 305)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐiêu Trác", 5, 307)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffBäo ThÕch Dung Luy®n", 5, 308)
			--AddNumText(sceneId, x889066_g_scriptId,"#c00fffftest", 5, 309)
			AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif GetNumText()==301 then
		local tEquipGemTable = { 0, 1, 2, 3, 4, 5, 6, 7, 12, 14, 15 ,8,17 }--8,×øÆï,17°µÆ÷
		local bagbegin = GetBasicBagStartPos(sceneId, selfId)
		local bagend = GetBasicBagEndPos(sceneId, selfId)		
		for i=bagbegin, bagend do
			local itemIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )			
			if itemIndex>0 then
				local ret = LuaFnIsItemLocked( sceneId, selfId, i )
				if ret ~= 0 then
					return
				end	
				local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )				
				local find = 0
				for j, gem in tEquipGemTable do
					if gem == EquipType then
						find = 1
					end
				end
				if find == 1 then	
					local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )					
					while equipMaxGemCount<3 do				
						local ret = AddBagItemSlot( sceneId, selfId, i )
						equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )			
					end
				end
			end
		end
		x889066_MsgBox( sceneId, selfId, "#Y    T¤c cä các trang b¸ cüa các hÕ ðã ðßþc ðøc [#R3#Y] l²" )
	elseif GetNumText()==302 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		UICommand_AddInt( sceneId, 1 )--type£¬µã½ðÖ®¼ý
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	elseif GetNumText()==303 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 23 )
	elseif GetNumText()==304 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 27 )
	elseif GetNumText()==305 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810424 )
	elseif GetNumText()==306 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19830424 )
	elseif GetNumText()==307 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112236 )
	elseif GetNumText()==308 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112237 )
	elseif GetNumText()==309 then
		CallScriptFunction( 380002, "OnDefaultEvent", sceneId, selfId )
	end
end

--**********************************
--ËæÉí¹¦ÄÜ
--**********************************
function x889066_SuiShen(sceneId,selfId)
	if GetNumText() == 100 then
		BeginEvent(sceneId)
			AddText(sceneId, "#G    [ÁìÈ¡Ôª±¦]ÇëÈ·±£ÉíÉÏÔª±¦Î¬³ÖÔÚ2000ÍòÒÔÏÂ£¬·ñÔòÓÐ¿ÉÄÜ»áÔì³ÉÎÞ·¨ÉÏÏßµÄÇé¿ö£¬ÇëÊ¹ÓÃÍêÔÙÁìÈ¡¡£")
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffNh§n 500.000KNB", 5, 101)			
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÐ±i vàng thành Ði¬m t£ng", 7, 120)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffTi«n Trang", 7, 102)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffNâng tâm pháp", 12, 7777)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffffÁìÈ¡½±Àø     #R¡¾ÁìÈ¡³å¼¶½±Àø¡¿", 12, 130)
			AddNumText(sceneId, x889066_g_scriptId,"#c00ffff¾­ÑéÇåÁã     #R¡¾¾­Ñé²»Õý³£ÓÃ¡¿", 12, 104)
			AddNumText(sceneId, x889066_g_scriptId,"#cff0000Nhuµm màu th¶i trang", 12, 106)
			--AddNumText(sceneId, x889066_g_scriptId,"#cff0000Test     #cff0000¡¾Test¡¿", 12, 107)
			--AddNumText(sceneId, x889066_g_scriptId,"#cff0000½â³ýäîÔË     #R¡¾ÁÙÊ±½â¾ö×´Ì¬¡¿", 5, 108)
			--AddNumText(sceneId, x889066_g_scriptId,"#c00ffff²é¿´¹«¸æ     #R¡¾Íæ¼ÒÉÏÏß¹«¸æ¡¿", 12, 103)
			AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif GetNumText() == 108  then
		LuaFnCancelSpecificImpact(sceneId,selfId,113)
		LuaFnCancelSpecificImpact(sceneId,selfId,200)
		LuaFnCancelSpecificImpact(sceneId,selfId,33815)
		x889066_CloseMe(sceneId, selfId)
	elseif GetNumText() == 107  then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, 0 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20111202)
	elseif GetNumText() == 106  then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	elseif GetNumText() == 105  then
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
			for i = 0,1000  do
				AddExp(sceneId,selfId,GetExp(sceneId,selfId)*-1)
			end
			AddText(sceneId,"¹§Ï²Äú£¬ÒÑ¾­³É¹¦ÎªÄãÇå¿ÕÁË¾­Ñé£¡")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
	elseif GetNumText() == 104  then
		BeginEvent( sceneId )
		AddText( sceneId, "±¾¹¦ÄÜÌá¸ß¸øÄ³Ð©Íæ¼Ò¾­Ñé³öÏÖ¸ºÊýµÄÇé¿ö£¬ÇëÍæ¼Ò²»Òª±£´æ¾­Ñé£¬ÉýÍêÁË¾¡¿ìÓÃµô¡£²»Òª°Ñ¾­Ñé´æµ½±¬ÁËÈ¥£¬¾Í³öÏÖ¸ºÊýµÄÇé¿öÁË¡£" )
		AddNumText(sceneId, x889066_g_scriptId, "ÊÇµÄ£¬ÎÒÒªÇåÁã¡£1", 12, 105 )
		AddNumText(sceneId, x889066_g_scriptId,"ÎÒµã´íÁË", 8, 8888)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
	elseif GetNumText() == 101  then
		local getYB=500000;
		ZengDian(sceneId,selfId,targetId,1,getYB)
		YuanBao(sceneId,selfId,targetId,1,getYB)
		x889066_Tips( sceneId, selfId, "¹§Ï²Äã£¬³É¹¦ÁìÈ¡ "..getYB.." Ôª±¦¡£" )
		x889066_CloseMe(sceneId, selfId)
	elseif GetNumText() == 102  then
		if sceneId==0 or sceneId==1 or sceneId==2 or sceneId==186 then
			BankBegin(sceneId, selfId, selfId)				
		else
			x889066_Tips( sceneId, selfId, "Ö»ÓÐÖ÷³ÇµØÍ¼²Å¿ÉÊÇÓÃÔ¶³ÌÒøÐÐ" )
			x889066_CloseMe(sceneId, selfId)
		end		
	elseif GetNumText() == 103  then
		CallScriptFunction( 380002, "OnDefaultEvent", sceneId, selfId )
	elseif GetNumText() == 120  then
		BeginEvent(sceneId)
			AddText(sceneId,"#G    ÔÚÕâÀï£¬Äú¿ÉÒÔÀûÓÃÄúÉíÉÏµÄ½ð±Ò¶Ò»»±¾·þµÄÔùµã£¬¶Ò»»±ÈÀýÎª #r#e6f00c7#c00ffff[#R#{_MONEY10000}#c00ffff]:[#R10#c00ffffÔùµã]")
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffff¿ªÊ¼¶Ò»»", 5, 121 )
			AddNumText( sceneId, x889066_g_scriptId, "ÏÂ´ÎÔÙÀ´", 8, 9999 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif GetNumText() == 121  then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5430 )
	elseif GetNumText() == 130  then
		BeginEvent(sceneId)
			AddText(sceneId,"    #GÕâÀï¿ÉÒÔÁìÈ¡µÈ¼¶½±Àø£¡µ±Äã´ïµ½ÒÔÏÂµÈ¼¶£¡¾Í¿ÉÒÔÑ¡ÔñÒÔÏÂÑ¡ÏîÑ¡Ôñ½±Àø£¡¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡")
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡80¼¶½±Àø      #gFF3E96[5W]Ôùµã", 5, 131 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡100¼¶½±Àø     #gFF3E96[10W]Ôùµã", 5, 132 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡130¼¶½±Àø     #gFF3E96[15W]Ôùµã", 5, 133 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡140¼¶½±Àø     #gFF3E96[20W]Ôùµã", 5, 134 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡150¼¶½±Àø     #gFF3E96[30W]Ôùµã", 5, 135 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡160¼¶½±Àø     #gFF3E96[50W]Ôùµã", 5, 136 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡170¼¶½±Àø     #gFF3E96[60W]Ôùµã", 5, 137 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡180¼¶½±Àø     #gFF3E96[70W]Ôùµã", 5, 138 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡190¼¶½±Àø     #gFF3E96[80W]Ôùµã", 5, 139 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡200¼¶½±Àø     #gFF3E96[90W]Ôùµã", 5, 140 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡210¼¶½±Àø     #gFF3E96[100W]Ôùµã", 5, 141 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡220¼¶½±Àø     #gFF3E96[200W]Ôùµã", 5, 142 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡230¼¶½±Àø     #gFF3E96[300W]Ôùµã", 5, 143 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡240¼¶½±Àø     #gFF3E96[400W]Ôùµã", 5, 144 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffÁìÈ¡250¼¶½±Àø     #gFF3E96[500W]Ôùµã", 5, 145 )
			AddNumText(sceneId, x889066_g_scriptId,"#RQuay v«", 8, 8888)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif GetNumText() == 145  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<250 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½250¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL250 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,5000000)
			SetMissionData( sceneId, selfId, DANJIAN_JL250, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡250¼¶½±Àø: #G[500W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 144  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<240 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½240¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL240 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,4000000)
			SetMissionData( sceneId, selfId, DANJIAN_JL240, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡240¼¶½±Àø: #G[400W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 143  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<230 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½230¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL230 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,3000000)
			SetMissionData( sceneId, selfId, DANJIAN_JL230, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡230¼¶½±Àø: #G[300W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 142  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<220 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½220¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL220 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,2000000)
			SetMissionData( sceneId, selfId, DANJIAN_JL220, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡220¼¶½±Àø: #G[200W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 141  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<210 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½210¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL210 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,1000000)
			SetMissionData( sceneId, selfId, DANJIAN_JL210, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡210¼¶½±Àø: #G[100W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 140  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<200 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½200¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL200 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,900000)
			SetMissionData( sceneId, selfId, DANJIAN_JL200, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡200¼¶½±Àø: #G[90W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 139  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<190 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½190¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL190 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,800000)
			SetMissionData( sceneId, selfId, DANJIAN_JL190, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡190¼¶½±Àø: #G[80W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 138  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<180 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½180¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL180 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,700000)
			SetMissionData( sceneId, selfId, DANJIAN_JL180, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡180¼¶½±Àø: #G[70W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 137  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<170 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½170¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL170 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,600000)
			SetMissionData( sceneId, selfId, DANJIAN_JL170, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡170¼¶½±Àø: #G[60W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 136  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<160 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½160¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL160 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,500000)
			SetMissionData( sceneId, selfId, DANJIAN_JL160, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡160¼¶½±Àø: #G[50W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 135  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<150 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½150¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL150 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,300000)
			SetMissionData( sceneId, selfId, DANJIAN_JL150, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡150¼¶½±Àø: #G[30W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 134  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<140 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½140¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL140 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,200000)
			SetMissionData( sceneId, selfId, DANJIAN_JL140, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡140¼¶½±Àø: #G[20W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 133  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<130 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½130¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL130 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,150000)
			SetMissionData( sceneId, selfId, DANJIAN_JL130, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡130¼¶½±Àø: #G[15W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 132  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<100 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½100¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL100 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,100000)
			SetMissionData( sceneId, selfId, DANJIAN_JL100, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡100¼¶½±Àø: #G[10W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 131  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev<80 then
			x889066_Tips( sceneId, selfId, "ÄúµÄµÈ¼¶²»¹»£¬Çë´ïµ½80¼¶ºóÔÙÀ´ÕÒÎÒ¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		end
		local index =	GetMissionData( sceneId, selfId, DANJIAN_JL80 )
		if index == 1 then
			x889066_Tips( sceneId, selfId, "²»ºÃÒâË¼£¬ÄúÒÑ¾­ÁìÈ¡¹ý¸Ã½±Àø¡£" )
			x889066_CloseMe(sceneId, selfId)
			return
		else
			ZengDian(sceneId,selfId,targetId,1,50000)
			SetMissionData( sceneId, selfId, DANJIAN_JL80, 1 )
			x889066_Tips( sceneId, selfId, "¹§Ï²Äú£¬³É¹¦ÁìÈ¡80¼¶½±Àø: #G[5W] Ôöµã#W¡£¸ÐÐ»ÄúµÄÖ§³Ö£¬×£ÄúÓÎÏ·Óä¿ì£¡" )
			x889066_CloseMe(sceneId, selfId)
		end
	elseif GetNumText() == 132  then
		
	end
end

--**********************************
--¼ÓÈëÃÅÅÉ½±ÀøÎïÆ·
--**********************************
function x889066_JiaRuMenPaiAddItem(sceneId,selfId,menpaiId)
	local qishu=0
	local zuoqi=0
	if menpaiId ==0 then
		qishu=30308081
		zuoqi=10149024
	elseif menpaiId ==1 then
		qishu=30308080
		zuoqi=10149029
	elseif menpaiId ==2 then
		qishu=30308079
		zuoqi=10149025
	elseif menpaiId ==3 then
		qishu=30308084
		zuoqi=10149023
	elseif menpaiId ==4 then
		qishu=30308078
		zuoqi=10149022
	elseif menpaiId ==5 then
		qishu=30308086
		zuoqi=10149028
	elseif menpaiId ==6 then
		qishu=30308082
		zuoqi=10149027
	elseif menpaiId ==7 then
		qishu=30308083
		zuoqi=10149021
	elseif menpaiId ==8 then
		qishu=30308085
		zuoqi=10149026
	elseif menpaiId ==9 then
		qishu=39920006
		zuoqi=10149035
	end
	BeginAddItem(sceneId)
		AddItem( sceneId, qishu, 1 )
		AddItem( sceneId, zuoqi, 1 )
	EndAddItem(sceneId,selfId)
	AddItemListToHuman(sceneId,selfId)
end

--**********************************
--¼ÓÈëÃÅÅÉ¼ì²é
--**********************************
function x889066_CheckJiaRuMenPai(sceneId,selfId)
	local index =	GetMissionData( sceneId, selfId, MY_JIARUMENPAI )
	if index ==0 then
		return 1
	else
		if LuaFnGetAvailableItemCount(sceneId, selfId, 39910006) >= 1 then
			return 1
		else
			x889066_MsgBox( sceneId, selfId, "    #b#YBÕn ðã gia nh§p môn phái, nªu mu¯n thay ð±i c¥n có #GTam Sinh ThÕch#Y!" )
			return 0
		end
	end
	
end

--**********************************
--¼ÓÈëÃÅÅÉ
--**********************************
function x889066_JiaRuMenPai(sceneId,selfId,key)
	if key==0 then
		key=GetNumText()
	end
	if key == 200 then
		BeginEvent( sceneId )
			AddText(sceneId,"Xin chào!")
			AddText( sceneId, "    #b#YCác hÕ mu¯n gia nh§p môn phái nào?" )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Mµ Dung",3,201 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Tinh Túc",3,202 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Tiêu Dao",3,203 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Thiªu Lâm",3,204 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Thiên S½n",3,205 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Thiên Long",3,206 )		
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Võ Ðang",3,207 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Minh Giáo",3,208 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Cái Bang",3,209 )
			AddNumText( sceneId, x889066_g_scriptId, "#c00ffffGia nh§p Môn phái Nga My",3,210 )
			AddNumText(sceneId, x889066_g_scriptId,"#RQuay lÕi", 8, 8888)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
	elseif key == 201  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 9)
			LuaFnSetXinFaLevel(sceneId,selfId,64,150)
			LuaFnSetXinFaLevel(sceneId,selfId,65,150)
			LuaFnSetXinFaLevel(sceneId,selfId,66,150)
			LuaFnSetXinFaLevel(sceneId,selfId,67,150)
			LuaFnSetXinFaLevel(sceneId,selfId,68,150)
			LuaFnSetXinFaLevel(sceneId,selfId,69,150)
			LuaFnSetXinFaLevel(sceneId,selfId,70,150)
			LuaFnSetXinFaLevel(sceneId,selfId,71,150)
			AddSkill(  sceneId, selfId, 200)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,9)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);			
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#BChúc m×ng #Y"..nam.." #Bðã gia nh§p môn phái #GMµ Dung!", 4 )	
		end
	elseif key == 202  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 5)
			LuaFnSetXinFaLevel(sceneId,selfId,31,150)
			LuaFnSetXinFaLevel(sceneId,selfId,32,150)
			LuaFnSetXinFaLevel(sceneId,selfId,33,150)
			LuaFnSetXinFaLevel(sceneId,selfId,34,150)
			LuaFnSetXinFaLevel(sceneId,selfId,35,150)
			LuaFnSetXinFaLevel(sceneId,selfId,36,150)
			LuaFnSetXinFaLevel(sceneId,selfId,60,150)
			LuaFnSetXinFaLevel(sceneId,selfId,77,150)
			AddSkill(  sceneId, selfId, 28)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,5)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GÐÇËÞ#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GÐÇËÞ#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 203  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 8)
			LuaFnSetXinFaLevel(sceneId,selfId,49,150)
			LuaFnSetXinFaLevel(sceneId,selfId,50,150)
			LuaFnSetXinFaLevel(sceneId,selfId,51,150)
			LuaFnSetXinFaLevel(sceneId,selfId,52,150)
			LuaFnSetXinFaLevel(sceneId,selfId,53,150)
			LuaFnSetXinFaLevel(sceneId,selfId,54,150)
			LuaFnSetXinFaLevel(sceneId,selfId,63,150)
			LuaFnSetXinFaLevel(sceneId,selfId,80,150)
			AddSkill(  sceneId, selfId, 31)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,8)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GåÐÒ£#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GåÐÒ£#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 204  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 0)
			LuaFnSetXinFaLevel(sceneId,selfId,1,150)
			LuaFnSetXinFaLevel(sceneId,selfId,2,150)
			LuaFnSetXinFaLevel(sceneId,selfId,3,150)
			LuaFnSetXinFaLevel(sceneId,selfId,4,150)
			LuaFnSetXinFaLevel(sceneId,selfId,5,150)
			LuaFnSetXinFaLevel(sceneId,selfId,6,150)
			LuaFnSetXinFaLevel(sceneId,selfId,55,150)
			LuaFnSetXinFaLevel(sceneId,selfId,72,150)
			AddSkill(  sceneId, selfId, 23)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,0)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GÉÙÁÖ#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GÉÙÁÖ#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 205  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 7)
			LuaFnSetXinFaLevel(sceneId,selfId,43,150)
			LuaFnSetXinFaLevel(sceneId,selfId,44,150)
			LuaFnSetXinFaLevel(sceneId,selfId,45,150)
			LuaFnSetXinFaLevel(sceneId,selfId,46,150)
			LuaFnSetXinFaLevel(sceneId,selfId,47,150)
			LuaFnSetXinFaLevel(sceneId,selfId,48,150)
			LuaFnSetXinFaLevel(sceneId,selfId,62,150)
			LuaFnSetXinFaLevel(sceneId,selfId,79,150)
			AddSkill(  sceneId, selfId, 30)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,7)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GÌìÉ½#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GÌìÉ½#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 206  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 6)
			LuaFnSetXinFaLevel(sceneId,selfId,37,150)
			LuaFnSetXinFaLevel(sceneId,selfId,38,150)
			LuaFnSetXinFaLevel(sceneId,selfId,39,150)
			LuaFnSetXinFaLevel(sceneId,selfId,40,150)
			LuaFnSetXinFaLevel(sceneId,selfId,41,150)
			LuaFnSetXinFaLevel(sceneId,selfId,42,150)
			LuaFnSetXinFaLevel(sceneId,selfId,61,150)
			LuaFnSetXinFaLevel(sceneId,selfId,78,150)
			AddSkill(  sceneId, selfId, 29)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,6)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GÌìÁú#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GÌìÁú#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 207  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 3)
			LuaFnSetXinFaLevel(sceneId,selfId,19,150)
			LuaFnSetXinFaLevel(sceneId,selfId,20,150)
			LuaFnSetXinFaLevel(sceneId,selfId,21,150)
			LuaFnSetXinFaLevel(sceneId,selfId,22,150)
			LuaFnSetXinFaLevel(sceneId,selfId,23,150)
			LuaFnSetXinFaLevel(sceneId,selfId,24,150)
			LuaFnSetXinFaLevel(sceneId,selfId,58,150)
			LuaFnSetXinFaLevel(sceneId,selfId,75,150)
			AddSkill(  sceneId, selfId, 26)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,3)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GÎäµ±#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GÎäµ±#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 208  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 1)
			LuaFnSetXinFaLevel(sceneId,selfId,7,150)
			LuaFnSetXinFaLevel(sceneId,selfId,8,150)
			LuaFnSetXinFaLevel(sceneId,selfId,9,150)
			LuaFnSetXinFaLevel(sceneId,selfId,10,150)
			LuaFnSetXinFaLevel(sceneId,selfId,11,150)
			LuaFnSetXinFaLevel(sceneId,selfId,12,150)
			LuaFnSetXinFaLevel(sceneId,selfId,56,150)
			LuaFnSetXinFaLevel(sceneId,selfId,73,150)
			AddSkill(  sceneId, selfId, 24)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,1)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GÃ÷½Ì#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GÃ÷½Ì#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 209  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 2)
			LuaFnSetXinFaLevel(sceneId,selfId,13,150)
			LuaFnSetXinFaLevel(sceneId,selfId,14,150)
			LuaFnSetXinFaLevel(sceneId,selfId,15,150)
			LuaFnSetXinFaLevel(sceneId,selfId,16,150)
			LuaFnSetXinFaLevel(sceneId,selfId,17,150)
			LuaFnSetXinFaLevel(sceneId,selfId,18,150)
			LuaFnSetXinFaLevel(sceneId,selfId,57,150)
			LuaFnSetXinFaLevel(sceneId,selfId,74,150)
			AddSkill(  sceneId, selfId, 25)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,2)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#GØ¤°ï#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #GØ¤°ï#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	elseif key == 210  then
		if x889066_CheckJiaRuMenPai(sceneId,selfId) == 1 then
			LuaFnJoinMenpai(sceneId, selfId, selfId, 4)
			LuaFnSetXinFaLevel(sceneId,selfId,25,150)
			LuaFnSetXinFaLevel(sceneId,selfId,26,150)
			LuaFnSetXinFaLevel(sceneId,selfId,27,150)
			LuaFnSetXinFaLevel(sceneId,selfId,28,150)
			LuaFnSetXinFaLevel(sceneId,selfId,29,150)
			LuaFnSetXinFaLevel(sceneId,selfId,30,150)
			LuaFnSetXinFaLevel(sceneId,selfId,59,150)
			LuaFnSetXinFaLevel(sceneId,selfId,76,150)
			AddSkill(  sceneId, selfId, 27)
			x889066_JiaRuMenPaiAddItem(sceneId,selfId,4)
			LuaFnDelAvailableItem(sceneId,selfId,39910006,1)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			SetMissionData(sceneId, selfId, MY_JIARUMENPAI, 1);
			x889066_MsgBox( sceneId, selfId, "#YChúc m×ng bÕn ðã gia nh§p môn phái thành công!" )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#B¹§Ï²Íæ¼Ò #Y"..nam.." #BÍ¨¹ýÁËÖÖÖÖ¿¼ºË£¬°ÝÈëÁË#G¶ëÃ¼#BÃÅÏÂ£¬ÓÐÁËËûµÄ¼ÓÈë£¬ #G¶ëÃ¼#B±ÈÖ®Ç°¸üÎªÇ¿´óÁË£¡", 4 )
		end
	end
end
--**********************************
--¶Ò»»Ôùµã
--**********************************
function x889066_GoldToZD( sceneId, selfId, toZDNum)
	local needMoney=toZDNum*1000;
	local	SelfMoney = GetMoney(sceneId, selfId)
	if SelfMoney<needMoney then
		local sMessage = format("#Y    ½ðÇ®²»×ã£¬Çë¼ì²é¡£")
		x399999_MsgBox( sceneId, selfId, sMessage )
		return
	end
	local reply = CostMoney(sceneId,selfId,needMoney)
	if reply == -1 then
		local sMessage = format("#Y    ½ðÇ®²»×ã£¬Çë¼ì²é¡£")
		x399999_MsgBox( sceneId, selfId, sMessage )
		return
	else
		local result =	ZengDian(sceneId,selfId,targetId,1,toZDNum)
		local sMessage = format("#Y¹§Ï²Äú¶Ò»»³É¹¦¡£#rÏûºÄÁË [#R#{_MONEY%d}#Y]#r»ñµÃÁË [#R%dÔùµã]",needMoney,toZDNum)
		x399999_MsgBox( sceneId, selfId, sMessage )
	end
end
--**********************************
--ÐÄ·¨Ñ§Ï°£¬µã»÷Ñ§Ï°°´Å¥
--**********************************
function x889066_MRXinFa(sceneId,selfId,xinfaId,money,exp)
	if GetExp(sceneId,selfId) < exp  then
		x889066_Tips( sceneId, selfId, "¾­Ñé²»×ã£¬Çë¼ì²é£¡" )
		return
	elseif GetMoney(sceneId, selfId) < money  then
		x889066_Tips( sceneId, selfId, "½ðÇ®²»×ã£¬Çë¼ì²é£¡" )
		return
	end
	local reply = CostMoney(sceneId,selfId,money)
	if reply ~= -1 then
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, xinfaId) + 1
		LuaFnAddExp(sceneId,selfId,0-exp)
		LuaFnSetXinFaLevel(sceneId,selfId,xinfaId,nXinfaLevel)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 151, 0)
		x889066_Tips( sceneId, selfId, nXinfaLevel.." ¼¶ÐÄ·¨Ñ§Ï°³É¹¦!" )	
		DispatchXinfaLevelInfo( sceneId, selfId, selfId, 10 );
	end
end

--**********************************
--ÐÄ·¨Ñ§Ï°
--**********************************
function x889066_XinFa(sceneId,selfId)
	DispatchXinfaLevelInfo( sceneId, selfId, selfId, 10 );
end
