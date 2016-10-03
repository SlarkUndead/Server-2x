--ÂåÑôNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x892000_g_ScriptId = 892000

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x892000_g_eventList={}


x892000_g_DarkSkillName = { [40] = {name = "Ném Ám khí", id = 274, needmoney = 20000},
                            [70] = {name = "Ám khí ðä huy®t", id = 275, needmoney = 100000},
                            [90] = {name = "Ám khí hµ th¬", id = 276, needmoney = 500000},
                          }                
x892000_g_DarkSkillTips = { [40] = "#{FBSJ_090106_89}",
                            [70] = "#{FBSJ_090106_90}",
                            [90] = "#{FBSJ_090106_91}",
                          }  
x892000_g_DarkBreachPointNeedMoney = 
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
function x892000_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "¹ÃÄï"
	else
		PlayerSex = "ÉÙÏÀ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Ngài häo, thiªu hi®p hay không cûng nghe quá: Võ phá r£ng mây ðö kinh nh§t nguy®t, h°n lâm thiên vû nhiªp Càn Khôn. Ta ð¯i võ h°n này bäo v§t xem nhß lßþc có nghiên cÑu, nªu ngài mu¯n nghe ðßþc, ta nh¤t ð¸nh tri vô b¤t ngôn, ngôn vô b¤t tçn.")
		for i, eventId in x892000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892000_g_ScriptId,"Thång c¤p Võ H°n",6,7)
		AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ kî nång Võ H°n",6,8)
		AddNumText(sceneId,x892000_g_ScriptId,"M· rµng thuµc tính Võ H°n",6,9)
		AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n thuyªt minh",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892000_OnDefaultEvent( sceneId, selfId,targetId )
	x892000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892000_g_eventList do
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
			AddNumText(sceneId,x892000_g_ScriptId,"Võ H°n",6,666)
			AddNumText(sceneId,x892000_g_ScriptId,"Làm sao có Võ H°n",6,667)
			AddNumText(sceneId,x892000_g_ScriptId,"Làm sao thång c¤p Võ H°n",6,668)
			AddNumText(sceneId,x892000_g_ScriptId,"Làm thª nào ðÕt ðßþc Võ H°n tß½ng quan ðÕo cø",6,669)
			AddNumText(sceneId,x892000_g_ScriptId,"Gi¾i thi®u m· rµng thuµc tính Võ H°n",6,670)
			AddNumText(sceneId,x892000_g_ScriptId,"Gi¾i thi®u Võ H°n c¥m tinh",6,671)
			--AddNumText(sceneId,x892000_g_ScriptId,"C¥m tinh tß½ng kh¡c",6,672)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"Không biªt qua bao nhiêu nåm, Trung Nguyên võ lâm g£p ðßþc mµt h°i hÕo kiªp, · cß¶ng ðÕi kë thù bên ngoài phía trß¾c, chí tôn võ h°n r¯t cøc thÑc tïnh, biªn äo phân thân tr· thành thiên thiên vÕn vÕn cái võ h°n thü hµ tu±i trë hi®p sî, tr· thành ð°ng sinh cµng tØ. Nªu ngß½i may m¡n chiªm ðßþc bäo v§t, ngß½i s¨ ðÕt ðßþc nång lñc toàn di®n m· rµng cùng tång lên, cho ngß½i ðÕt t¾i trß¾c nay chßa có tân cänh gi¾i!")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fNhß thª nào ðÕt ðßþc võ h°n:#r #W · #G tÑ tuy®t trang #W bän sao trung ðä bÕi BOSS, có nh¤t ð¸nh tÖ l® ðÕt ðßþc #R võ h°n: Ngñ dao bàn #W.")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fThång c¤p Võ H°n:#r #WSØ døng #G3 #GH°n Bång Châu #Wc¤p b§c tß½ng Ñng ð¬ tiªn hành thång c¤p. Võ H°n sau khi thång c¤p #RThuµc tính#W, #RGiá tr¸ thuµc tính Võ H°n m· rµng.")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8f#rNhß thª nào ðÕt ðßþc võ h°n tß½ng quan ðÕo cø:#r#YCó th¬ · TÑ Tuy®t Trang ð¬ kiªm ðÕo cø thång c¤p Võ H°n.")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fGi¾i thi®u m· rµng thuµc tính Võ H°n:#r #WSØ døng Võ H°n D¸ch Tß½ng Ðan, Võ H°n tñ ðµng ðÕt ðßþc mµt cái ð¯i Ñng c¥m tinh m· rµng thuµc tính #GGiäm kháng#W. Võ h°n c¤p b§c càng cao, m· rµng thuµc tính giá tr¸ càng l¾n. Càng nhi«u  m· rµng thuµc tính ðem t×ng bß¾c ð±i m¾i m· ra.")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#cfabf8fGi¾i thi®u Võ H°n c¥m tinh:#r#Y Nhß thª nào ðÕt ðßþc c¥m tinh: #r#WSØ døng #GVõ H°n D¸ch Tß½ng Ðan #Wð¬ tiªn hành c¥m tinh. Võ H°n c¥m tinh có bång, höa, huy«n, ðµc 4 loÕi. Có th¬ tñ do lña ch÷n mµt loÕi, nhßng võ h°n ðã c¥m tinh, không th¬ ð±i m¾i c¥m tinh.")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#YÊôÏàÏà¿ËÐ§¹û:¡¡¡¡#r#WÊôÏàÏà¿ËµÄ×îÖÕÐ§¹û£¬ÔÚÒ»¶¨³Ì¶ÈÉÏÊÜµ½Îä»êµÈ¼¶µÄÓ°Ïì¡£#r¡¡¡¡¼ÙÊ¹A¡¢BÁ½¸öÍæ¼Ò·Ö±ð×°±¸ÓÐÁ½¸öÎä»ê£¬AÍæ¼ÒµÄÎä»ê¿ËÖÆBÍæ¼ÒµÄÎä»ê¡£Èç¹ûAÍæ¼ÒµÄÎä»êºÏ³ÉµÈ¼¶¸ßÓÚBÍæ¼ÒµÄÎä»êµÈ¼¶£¬ÉËº¦·Å´óÐ§¹û¸ü¼ÓÃ÷ÏÔ£»Èç¹ûAÍæ¼ÒµÄÎä»êµÈ¼¶µÍÓÚBÍæ¼ÒµÄÎä»êµÈ¼¶£¬ÉËº¦·Å´óÐ§¹û½«ÓÐËù¼õÈõ¡£")
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --ÌáÉýÎä»êµÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n Thång c¤p Võ H°n, trß¾c hªt ðem võ h°n #GChú nh§p chúc tß½ng#W, v« nhß thª nào vì võ h°n Chú nh§p chúc tß½ng, ngß½i có th¬ tìm ti¬u ð° nhi #GVõ Ð°ng #Wgiúp ngß½i.")
			AddText(sceneId,"Thång c¤p Võ H°n #Gl¾n h½n 3#W, ðªn Lý Thß½ng Häi ch² tiªn hành Thång c¤p Võ H°n c¤p cao.")
			AddText(sceneId,"#r#c00ffff(Thao tác Thång c¤p Võ H°n phäi tháo gÞ bäo thÕch toàn bµ xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")

			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Bång",6,12)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Höa",6,13)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Huy«n",6,14)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Ðµc",6,15)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --ÁìÎò¼¼ÄÜ
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có Võ H°n #Gc¤p 1 h½n #Wm¾i có th¬ lînh ngµ kÛ nång, võ h°n kÛ nång cûng chia làm ba c¤p b§c, ð«u có ðßþc t× chúc tß½ng kî nång, cùng c¥n thông qua tß½ng Ñng #GVõ H°n kÛ nång thß #Wcùng mang theo tß½ng Ñng #Rc¤p b§c #Wcùng tß½ng Ñng #RChúc Tß½ng #Wvõ h°n tài khä lînh ngµ.")
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ Võ H°n kÛ nång (C¤p 1)",6,16)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ Võ H°n kÛ nång (C¤p 2)",6,17)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ Võ H°n kÛ nång (C¤p 3)",6,18)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --Îä»êÀ©Õ¹ÊôÐÔ
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có Võ H°n #Gc¤p 1 h½n #Wm¾i có th¬ lînh ngµ kÛ nång, võ h°n kÛ nång cûng chia làm ba c¤p b§c, ð«u có ðßþc t× chúc tß½ng kî nång, cùng c¥n thông qua tß½ng Ñng #GVõ H°n kÛ nång thß #Wcùng mang theo tß½ng Ñng #Rc¤p b§c #Wcùng tß½ng Ñng #RChúc Tß½ng #Wvõ h°n tài khä lînh ngµ.")
			AddNumText(sceneId,x892000_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 0)",6,19)
			AddNumText(sceneId,x892000_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 1)",6,20)
			AddNumText(sceneId,x892000_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 2)",6,21)
			AddNumText(sceneId,x892000_g_ScriptId,"M· rµng thuµc tính Võ H°n (C¤p 3)",6,22)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
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
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --ÌáÉý ±ù µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_3}")
			AddText(sceneId,"#r#c00ffff(Thao tác Thång c¤p Võ H°n phäi tháo gÞ bäo thÕch toàn bµ xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Bång (C¤p 1)",6,23)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Bång (C¤p 2)",6,24)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Bång (C¤p 3)",6,25)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --ÌáÉý »ð µÈ¼¶
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_5}")
			AddText(sceneId,"#r#c00ffff(Thao tác Thång c¤p Võ H°n phäi tháo gÞ bäo thÕch toàn bµ xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Höa (C¤p 1)",6,26)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Höa (C¤p 2)",6,27)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Höa (C¤p 3)",6,28)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 130 then
		x892000_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n th¢ng c¤p #RNgñ Dao Bàn - Huy«n#W, c¥n sØ døng #G3#W cái #GH°n Bång Châu #Wm¾i ðßþc.#r Tång lên t¾i (C¤p 1) c¥n #G3 #RH°n Bång Châu (C¤p 1)#r#W tång lên t¾i (C¤p 2) c¥n #G3 #RH°n Bång Châu (C¤p 2)#r#W tång lên t¾i (C¤p 3) c¥n #G3 #RH°n Bång Châu (C¤p 3)")
			AddText(sceneId,"#r#c00ffff(Thao tác Thång c¤p Võ H°n phäi tháo gÞ bäo thÕch toàn bµ xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Huy«n (C¤p 1)",6,29)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Huy«n (C¤p 2)",6,30)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Huy«n (C¤p 3)",6,31)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n th¢ng c¤p #RNgñ Dao Bàn - Ðµc#W, c¥n sØ døng #G3#W cái #GH°n Bång Châu #Wm¾i ðßþc.#r Tång lên t¾i (C¤p 1) c¥n #G3 #RH°n Bång Châu (C¤p 1)#r#W tång lên t¾i (C¤p 2) c¥n #G3 #RH°n Bång Châu (C¤p 2)#r#W tång lên t¾i (C¤p 3) c¥n #G3 #RH°n Bång Châu (C¤p 3)")
			AddText(sceneId,"#r#c00ffff(Thao tác Thång c¤p Võ H°n phäi tháo gÞ bäo thÕch toàn bµ xu¯ng, nªu không bäo thÕch s¨ biªn m¤t)")
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Ðµc (C¤p 1)",6,32)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Ðµc (C¤p 2)",6,33)
			AddNumText(sceneId,x892000_g_ScriptId,"Tång lên Ngñ Dao Bàn - Ðµc (C¤p 3)",6,34)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có Võ H°n #Gc¤p 1 h½n #Wm¾i có th¬ lînh ngµ kÛ nång, võ h°n kÛ nång cûng chia làm ba c¤p b§c, ð«u có ðßþc t× chúc tß½ng kî nång, cùng c¥n thông qua tß½ng Ñng #GVõ H°n kÛ nång thß #Wcùng mang theo tß½ng Ñng #Rc¤p b§c #Wcùng tß½ng Ñng #RChúc Tß½ng #Wvõ h°n tài khä lînh ngµ.")
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ kích - Hàn Bång",6,35)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ kích - Sí Di­m",6,36)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ kích - Thß½ng Huy«n",6,37)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ kích - Sang Ðµc",6,38)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có Võ H°n #Gc¤p 1 h½n #Wm¾i có th¬ lînh ngµ kÛ nång, võ h°n kÛ nång cûng chia làm ba c¤p b§c, ð«u có ðßþc t× chúc tß½ng kî nång, cùng c¥n thông qua tß½ng Ñng #GVõ H°n kÛ nång thß #Wcùng mang theo tß½ng Ñng #Rc¤p b§c #Wcùng tß½ng Ñng #RChúc Tß½ng #Wvõ h°n tài khä lînh ngµ.")
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ phá - Ngßng Bång",6,39)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ phá - Li®t Viêm",6,40)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ phá - LÕc Huy«n",6,41)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ phá - Th¸ Ðµc",6,42)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có Võ H°n #Gc¤p 1 h½n #Wm¾i có th¬ lînh ngµ kÛ nång, võ h°n kÛ nång cûng chia làm ba c¤p b§c, ð«u có ðßþc t× chúc tß½ng kî nång, cùng c¥n thông qua tß½ng Ñng #GVõ H°n kÛ nång thß #Wcùng mang theo tß½ng Ñng #Rc¤p b§c #Wcùng tß½ng Ñng #RChúc Tß½ng #Wvõ h°n tài khä lînh ngµ.")
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ bÕo - Th¯i Bång",6,43)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ bÕo - Lçm Höa",6,44)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ bÕo - Trùng Huy«n",6,45)
			AddNumText(sceneId,x892000_g_ScriptId,"Lînh ngµ bÕo - K¸ch Ðµc",6,46)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 0 (Bång) m· rµng thuµc tính",6,47)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 0 (Höa) m· rµng thuµc tính",6,48)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 0 (Huy«n) m· rµng thuµc tính",6,49)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 0 (Ðµc) m· rµng thuµc tính",6,50)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 1 (Bång) m· rµng thuµc tính",6,51)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 1 (Höa) m· rµng thuµc tính",6,52)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 1 (Huy«n) m· rµng thuµc tính",6,53)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 1 (Ðµc) m· rµng thuµc tính",6,54)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 2 (Bång) m· rµng thuµc tính",6,55)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 2 (Höa) m· rµng thuµc tính",6,56)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 2 (Huy«n) m· rµng thuµc tính",6,57)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 2 (Ðµc) m· rµng thuµc tính",6,58)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)
			AddText(sceneId,"M¶i lña ch÷n thuµc tính m· rµng!")
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 3 (Bång) m· rµng thuµc tính",6,59)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 3 (Höa) m· rµng thuµc tính",6,60)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 3 (Huy«n) m· rµng thuµc tính",6,61)
			AddNumText(sceneId,x892000_g_ScriptId,"Võ h°n c¤p 3 (Ðµc) m· rµng thuµc tính",6,62)
			AddNumText(sceneId,x892000_g_ScriptId,"Quay lÕi",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156102)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156106, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và 3 H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156106)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156106,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156110, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156110)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156110,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156114, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156103)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156103,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156107, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156107)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156107,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156111, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156111)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156111,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156115, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156104)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156104,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156108, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156108)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156108,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156112, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 31 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156112)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156112,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156116, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156105)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156105,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156109, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156109)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156109,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156113, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156113)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156113,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156117, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng ngß½i, võ h°n thång c¤p thành công!"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#GKi¬m tra tay näi xem ðã có Võ H°n và H°n Bång Châu hay không, nªu thiªu thì s¨ không th¬ thång c¤p Võ H°n!!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = GetItemCount(sceneId, selfId, 10156106)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910017)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1700) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1700)
			LuaFnDelAvailableItem(sceneId,selfId,39910017,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 36 then
		c0 = GetItemCount(sceneId, selfId, 10156107)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910018)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1701) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1701)
			LuaFnDelAvailableItem(sceneId,selfId,39910018,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 37 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910019)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1702) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1702)
			LuaFnDelAvailableItem(sceneId,selfId,39910019,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 38 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910020)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1703) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1703)
			LuaFnDelAvailableItem(sceneId,selfId,39910020,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 39 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910021)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1704) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1700) > 0  then
			   DelSkill(sceneId, selfId, 1700)
		      end
			AddSkill(  sceneId, selfId, 1704)
			LuaFnDelAvailableItem(sceneId,selfId,39910021,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 40 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910022)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1705) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1701) > 0  then
			   DelSkill(sceneId, selfId, 1701)
		      end
			AddSkill(  sceneId, selfId, 1705)
			LuaFnDelAvailableItem(sceneId,selfId,39910022,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 41 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910023)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1706) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   DelSkill(sceneId, selfId, 1702)
		      end
			AddSkill(  sceneId, selfId, 1706)
			LuaFnDelAvailableItem(sceneId,selfId,39910023,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 42 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910024)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1707) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1703) > 0  then
			   DelSkill(sceneId, selfId, 1703)
		      end
			AddSkill(  sceneId, selfId, 1707)
			LuaFnDelAvailableItem(sceneId,selfId,39910024,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910025)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1708) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1704) > 0  then
			   DelSkill(sceneId, selfId, 1704)
		      end
			AddSkill(  sceneId, selfId, 1708)
			LuaFnDelAvailableItem(sceneId,selfId,39910025,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 44 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910026)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1709) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1705) > 0  then
			   DelSkill(sceneId, selfId, 1705)
		      end
			AddSkill(  sceneId, selfId, 1709)
			LuaFnDelAvailableItem(sceneId,selfId,39910026,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 45 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910027)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1710) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1706) > 0  then
			   DelSkill(sceneId, selfId, 1706)
		      end
			AddSkill(  sceneId, selfId, 1710)
			LuaFnDelAvailableItem(sceneId,selfId,39910027,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 46 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910028)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1711) > 0  then
		          strNotice = "#YNgß½i ðã h÷c kÛ nång này r°i!!"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1707) > 0  then
			   DelSkill(sceneId, selfId, 1707)
		      end
			AddSkill(  sceneId, selfId, 1711)
			LuaFnDelAvailableItem(sceneId,selfId,39910028,1)--É¾³ýÎïÆ·
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, lînh ngµ kÛ nång võ h°n thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ lînh ngµ kÛ nång võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = GetItemCount(sceneId, selfId, 10156102)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25000, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 48 then
		c0 = GetItemCount(sceneId, selfId, 10156103)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25001, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 49 then
		c0 = GetItemCount(sceneId, selfId, 10156104)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25002, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 50 then
		c0 = GetItemCount(sceneId, selfId, 10156105)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25003, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 51 then
		c0 = GetItemCount(sceneId, selfId, 10156106)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25008, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 52 then
		c0 = GetItemCount(sceneId, selfId, 10156107)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25009, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 53 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25010, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 54 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25011, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 55 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25016, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 56 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25017, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 57 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25018, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 58 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25019, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 59 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25024, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 60 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25025, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 61 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25026, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 62 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25027, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#GChúc m×ng ngß½i, võ h°n m· rµng thuµc tính thành công!"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "Thiªu nguyên li®u, không th¬ m· rµng thuµc tính võ h°n!"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x892000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892000_g_eventList do
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
function x892000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			x892000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x892000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x892000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892000_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÊÇ·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892000_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892000_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª£º40£¬70£¬90£¬·Ö±ðÑ§Ï°¶ÔÓ¦¼¶±ðµÄ¼¼ÄÜ
--**********************************
function x892000_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÊÇ·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892000_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id)
	x892000_ShowNotice(sceneId, selfId, targetId, x892000_g_DarkSkillTips[nSkillIndex]);
	x892000_NotifyTips( sceneId, selfId, x892000_g_DarkSkillTips[nSkillIndex] )
	
	x892000_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892000_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÊÇ·ñÂú×ã°µÆ÷Æ¿¾±Ìõ¼þ
--·µ»ØÖµ£º0»òÕß1£¬1ÎªÂú×ã£¬0
--**********************************
function x892000_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892000_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892000_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷ÊÇ·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈ¼¶ÊÇ·ñºÍ°µÆ÷µÈ¼¶ÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈ¼¶¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹»µÄÇ®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892000_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòÒ»£¬²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý£¬¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±£¬ÈÃ°µÆ÷Éý¼¶
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892000_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦£¬¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892000_ShowNotice(sceneId, selfId, targetId, "Ðµt phá th¤t bÕi");
	end
	
	return
end

function x892000_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892000_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜµÄÌØÐ§ Ä¿Ç°Ê¹ÓÃÉý¼¶ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end
