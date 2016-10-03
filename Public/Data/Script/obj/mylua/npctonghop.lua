-- Áì½±NPC

x889062_g_scriptId = 889062
x889062_g_MaxBagSize	= 60
x889062_g_shoptableindex=235
--½±Àø±ê¼Ç
x889062_g_flag = {

    [80]	= MF_LINGQUYUANBAO80,
    [90]	= MF_LINGQUYUANBAO90,
    [100]	= MF_LINGQUYUANBAO100,
    [110]	= MF_LINGQUYUANBAO110,
    [120]	= MF_LINGQUYUANBAO120,
    
}
x889062_g_Title		={}
x889062_g_Title[1] = "S½ c¤p sß phó"

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x889062_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "  #RCác chÑc nång t±ng hþp. #c00ff00#bNh§n lînh danh hi®u ðµc ðáo#W"		
		AddText( sceneId, strText )
	    --AddNumText( sceneId, x889062_g_scriptId, "#gffff00Nh§n lînh Lôi chï nam", 1, 870 )
		--AddNumText( sceneId, x889062_g_scriptId, "#gffff00NhÕn ði¬m t£ng", 5, 102 )
		--AddNumText( sceneId, x889062_g_scriptId, "#gffff00[Open Beta thång c¤p vô hÕn]", 5, 103 )
			 AddNumText( sceneId, x889062_g_scriptId, "#GNh§n #YTùy thân Bäo ThÕch", 5, 1100 )
             AddNumText( sceneId, x889062_g_scriptId, "#GNh§n nguyên bäo", 5, 106 )
             AddNumText( sceneId, x889062_g_scriptId, "#cffcc00h°i phøc khí huyªt", 5, 860 )
             AddNumText( sceneId, x889062_g_scriptId, "#cff99ccThanh lý bao khöa phª ph¦m", 5, 301 )
			 AddNumText( sceneId, x889062_g_ScriptId, "#GNh§n toàn chúc quang hoàn",5,840 )
             --AddNumText( sceneId, x889062_g_scriptId, "#b#GNh§n danh hi®u", 5, 501 )
             AddNumText( sceneId, x889062_g_scriptId, "#cFF0000Biªn thân", 5, 850 )
             AddNumText( sceneId, x889062_g_ScriptId, "#GÐ£c hi®u phong höa luân #gffff00(tång t¯c 10%)",5,800 )
             AddNumText( sceneId, x889062_g_ScriptId, "#GÐ£c hi®u häi chi lam #gffff00(tång t¯c 10%)",5,810 )
             AddNumText( sceneId, x889062_g_ScriptId, "#GÐ£c hi®u tØ mçu løc #gffff00(tång t¯c 10%)",5,820 )
             AddNumText( sceneId, x889062_g_ScriptId, "#GÐ£c hi®u yên chi tuyªt #gffff00(tång t¯c 10%)",5,830 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x889062_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 102 then
   		ZengDian(sceneId,selfId,targetId,1,300000)
              --SetMissionFlag( sceneId, selfId, MF_LINGQUZENGDIAN, 1 )
		BeginEvent(sceneId)
		AddText(sceneId,"Chúc m×ng các hÕ nh§n thành công 300000 ði¬m t£ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
			
	elseif GetNumText() == 103 then
			for i = 0,100 do
		--BeginEvent(sceneId)
		LuaFnAddExp( sceneId, selfId,60000000)
		--LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
	        --local menpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
		--SetHumanMenpaiPoint(sceneId, selfId, menpaiPoint+30000 )
		--AddText(sceneId,"Lînh ði¬m c¯ng hiªn môn phái thành công các hÕ ðßþc 30000 ði¬m công hiªn")
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
            end
			  
 	elseif GetNumText() == 1100 then
	         BeginAddItem(sceneId)
			AddItem( sceneId, 39999999, 1 )
		EndAddItem(sceneId,selfId)
		AddItemListToHuman(sceneId,selfId)
       		BeginEvent(sceneId)
		AddText(sceneId,"#YNh§n #GTùy thân bäo thÕch #Ythành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 840 then
              LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5928, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n hi®u Ñng thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 301 then

		BeginEvent( sceneId )
			AddText( sceneId, "#YChÑc nång [Thanh lý tay näi],#cFF0000 sau khi sØ døng công nång toàn bµ v§t ph¦m b¸ xóa hªt!#Y Hãy ch¡c r¢ng các v§t ph¦m quan tr÷ng ðã ðßþc c¤t vào thß½ng kh¯." )
			AddNumText( sceneId, x889062_g_ScriptId, "#effc9d8#cf30768Xác nh§n thanh lý tay näi", 5, 302 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 302 then
		local ClearCount = 0
		for i = 0, x889062_g_MaxBagSize - 1 do
			if LuaFnEraseItem(sceneId, selfId, i) > 0 then
				ClearCount = ClearCount + 1
			end
		end
		x889062_NotifyFailTips(sceneId, selfId, "#YC±ng cµng có #effc9d8#cf30768"..ClearCount.."#Y v§t ph¦m b¸ thanh lý")

      elseif GetNumText() == 450 then

			DispatchShopItem( sceneId, selfId,targetId, x889062_g_shoptableindex )
	elseif GetNumText() == 800 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14017, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n hi®u Ñng thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 810 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14018, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n hi®u Ñng thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 820 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14019, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n hi®u Ñng thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 830 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14020, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n hi®u Ñng thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

       elseif GetNumText() == 850 then
             	BeginEvent( sceneId )
		AddText( sceneId, "#cFF0000Gi¾i thi®u: #YM¶i các hÕ lña ch÷n loÕi hình biªn thân" )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YTh¯ Gia",7,8501 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YThö Ng÷c",7,8502 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YH¡c Hùng",7,8503 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YÐång Mê",7,8504 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YCây thông Noel",7,8505 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YChuông l¾n",7,8506 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YÐß¶ng quä hÕp",7,8507 )
		AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YPh¤n H°ng hHùng",7,8508 )
		--AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YTi¬u H° Tiên",7,8509 )
		--AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YÐÕi B±n Hùng",7,8510 )
		--AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YCông Phu Hùng Miêu",7,8511 )
		--AddNumText( sceneId, x889062_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YSiêu Nhân Hùng Miêu",7,8512 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 8501 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4878, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8502 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4867, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8503 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4828, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8504 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5723, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8505 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4863, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8506 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4864, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8507 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4865, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8508 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4866, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8509 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5710, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8510 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5006, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8511 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5708, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8512 then
              LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5709, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công, chúc các hÕ ch½i game vui vë!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

      elseif GetNumText() == 860 then
              x889062_Restore_hpmp( sceneId, selfId, targetId )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Tr¸ li®u thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

      elseif GetNumText() == 870 then
	       if GetItemCount(sceneId, selfId, 39910008) < 10 then
                 TryRecieveItem( sceneId, selfId, 10305007, 10)

		   LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		   BeginEvent(sceneId)
		   AddText(sceneId,"Nh§n lînh thành công!")
		   EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
              else
               	BeginEvent( sceneId ) 
					strText = "Äã°ü¹üÒÑ¾­ÓÐÖ¸ÄÏÁË,²»ÒªÏûÇ²±¾NPCÁË!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
	        end

      elseif GetNumText() == 104 then

             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Lînh hi®u Ñng thành công! Tñ thân thuµc tính tång mÕnh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
      elseif GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "#cFF0000Gi¾i thi®u: #YCác hÕ · ðây có th¬ lña ch÷n danh hi®u mà các hÕ thích." )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-¸çÍæµÄÊÇ¼ÅÄ¯#gff00f0(³ÆºÅ)",7,791 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÏëÅÝæ¤#gff00f0(³ÆºÅ)",7,210 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÎÒÊÇÁ÷Ã¥ÎÒÅÂË­#gff00f0(³ÆºÅ)",7,211 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÎÒ¾ÍÊÇÅ£X#gff00f0(³ÆºÅ)",7,212 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÎÒÐÍÎÒÐã#gff00f0(³ÆºÅ)",7,15 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-¿ñÈÈ·Ö×Ó#gff00f0(³ÆºÅ)",7,17 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÌìÁú²ÆÖ÷#gff00f0(³ÆºÅ)",7,18 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÐèÒª°®Çé#gff00f0(³ÆºÅ)",7,19 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-²»·þÀ´PK#gff00f0(³ÆºÅ)",7,201 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÎÒ×îÏùÕÅ#gff00f0(³ÆºÅ)",7,202 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÎÒÊÇ»ªÇÈÎÒÅÂË­Ë­#gff00f0(³ÆºÅ)",7,203 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÎÒÊÇÀÏ´ó#gff00f0(³ÆºÅ)",7,204 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ö¦Å®ÎÞµÐ#gff00f0(³ÆºÅ)",7,205 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÁÒÅ®ºì´½#gff00f0(³ÆºÅ)",7,206 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-ÌìÀÇÕ½¶Ó#gff00f0(³ÆºÅ)",7,207 )
		AddNumText( sceneId, x889062_g_ScriptId, "Ãâ·Ñ-Ð¡ÖíÕ½¶Ó#gff00f0(³ÆºÅ)",7,208 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 15 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#6ÎÒÐÍÎÒÐã#6" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË³¬¿áÍæ¼Ò³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 16 then
		TryRecieveItem( sceneId, selfId, 30900016, 1 )
		Msg2Player( sceneId, selfId, "Äã»ñµÃÁË500Ôª±¦ºÍÒ»¸ö¸ß¼¶±¦Ê¯ºÏ³É·û¡£", MSG2PLAYER_PARA )
	elseif GetNumText() == 17 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#63¿ñÈÈ·Ö×Ó#63" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË¿ñÈÈ·Ö×Ó³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 18 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#56´ó²ÆÖ÷#56" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË´ó²ÆÖ÷³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 19 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "ÐèÒª#33Çé" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÐèÒª#33Çé³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 201 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#70²»·þÀ´PK#70" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË#70²»·þÀ´PK#70³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 202 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#3ÎÒ×îÏùÕÅ#3" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË#3ÎÒ×îÏùÕÅ#3³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 203 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#58ÎÒÊÇ»ªÇÈÎÒÅÂË­#58" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË#58ÎÒÊÇ»ªÇÈÎÒÅÂË­#58³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 204 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "ÎÒÊÇÀÏ´ó#r#58#58#58#58#58" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË#58±ðÈÇÎÒ#58³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 205 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#40ö¦Å®ÎÞµÐ#40" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË#40ö¦Å®ÎÞµÐ#40³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 206 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "ÁÒÅ®ºì#40" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÁÒÅ®ºì#40³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 206 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "ÁÒÅ®ºì#40" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÁÒÅ®ºì#40³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 207 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "Ìì#93Õ½¶Ó" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÌì#93Õ½¶Ó³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText()  == 208 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "Ð¡#94Õ½¶Ó" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÐ¡#94Õ½¶Ó³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )


	elseif GetNumText()  == 791 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#101#gffff00¸çÍæµÄÊÇ¼ÅÄ¯#101" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁË¸çÍæµÄ²»ÊÇÌìÁú/ÊÇ¼ÅÄ¯³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
  
	elseif GetNumText()  == 210 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#122#gffff00ÏëÅÝæ¤#122" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÏëÅÝæ¤³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText()  == 211 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#118#gffff00ÎÒÊÇÁ÷Ã¥ÎÒÅÂË­#101" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÎÒÊÇÁ÷Ã¥ÎÒÅÂË­¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText()  == 212 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#129#gffff00ÎÒ¾ÍÊÇÅ£X#129" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G¹§Ï²£¬Äú³É¹¦ÁìÈ¡ÁËÎÒ¾ÍÊÇÅ£X³ÆºÅ¡£" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

    elseif GetNumText() == 106 then
		x889062_lingquyuanbao ( sceneId, selfId, targetId )
			BeginEvent( sceneId )
			AddText( sceneId, "#b#Y    ÓÒ¼üµã»÷#GËæÉí±¦Ê¯#Y¡úËæÉí¹¦ÄÜ£¬ÁìÈ¡ÎÞÏÞÔª±¦¡£" )
			EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
    
	elseif GetNumText() == 107 then
                
-- Ç§·ðÁ«µÆµÄID
	       local nStoneId = 30505022
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=5 then
                        BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,5)
			TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        AddText( sceneId, "ÁìÈ¡³É¹¦£¬Çëµ½Éý¼¶NPCÄÄ¶ù½øÐÐÉý¼¶£¡" )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "ÇëËÑ¼¯¹»5Ç§·ðÁ«µÆÎïÆ·ÔÙÀ´¶Ò»»,129¼¶Ö®ºóÇëÓÃ»ØÃÎÊ¯»òÕß°ï¹±ÕÒNPC½øÐÐÉý c¤p" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 
          elseif GetNumText() == 108 then
                
-- Ç§·ðÁ«µÆµÄID
	       local nStoneId = 30505155
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=6 then
                        BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,6)
			TryRecieveItem( sceneId, selfId, 30505156, 1 )
                       TryRecieveItem( sceneId, selfId, 30505156, 1 )
                       TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        AddText( sceneId, "ÁìÈ¡³É¹¦£¬Çëµ½Éý¼¶NPCÄÄ¶ù½øÐÐÉý¼¶£¡" )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "ÇëËÑ¼¯¹»6Ç§Ìì¾¡É³ÎïÆ·ÔÙÀ´¶Ò»»5¸ö»ØÃÎÊ¯,129¼¶Ö®ºóÇëÓÃ»ØÃÎÊ¯ÕÒNPC½øÐÐÉý c¤p" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 
elseif GetNumText() == 109 then
local cityguildid = GetCityGuildID(sceneId, selfId)
if cityguildid ~=-1 then
AddText( sceneId, "¶Ô²»Æð£¡Äã»¹Ã»ÓÐ¼ÓÈë°ïÅÉ,¶øÇÒ°ïÅÉÒªÓÐ³ÇÊÐ,Òª²»ÄÄÀ´µÄ°ï¹±µã°¡" )
		return
	end
	      local    bg = CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT )

            if bg >= 50  then
                        BeginEvent( sceneId ) 
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -100 )
			TryRecieveItem( sceneId, selfId, 30008019, 1 )
                   
                        AddText( sceneId, "ÁìÈ¡ÌØÉâÁî³É¹¦" )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "ÇëË¢°ï¹±µ½100µã²ÅÄÜ½øÐÐ¶Ò»»,Çëµ½100µãºóÔÙÀ´¶Ò»»" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 

elseif GetNumText() == 110 then
    local cityguildid = GetCityGuildID(sceneId, selfId)
if cityguildid ~=-1 then
AddText( sceneId, "¶Ô²»Æð£¡Äã»¹Ã»ÓÐ¼ÓÈë°ïÅÉ,¶øÇÒ°ïÅÉÒªÓÐ³ÇÊÐ,Òª²»ÄÄÀ´µÄ°ï¹±µã°¡" )
		return
	end            


	      local    bg = CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT )

              local nStoneId = 30505156
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=10 then
                        BeginEvent( sceneId ) 
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 10 )
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,10)
                   
                        AddText( sceneId, "³É¹¦¶Ò»»10µã°ï¹±" )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "ÇëÈ·ÈÏÄã°üÀïÓÐ10¸ö»ØÃÎÊ¯,ÔÙÀ´¶Ò»»"..cityguildid.."" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 


	end	
end
--**********************************
--¶Ô»°ÌáÊ¾
--**********************************
function x889062_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x889062_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--»Ö¸´ÑªºÍÆø
--**********************************
function x889062_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end
--**********************************
--ÁìÈ¡Ôª±¦
--**********************************
function x889062_lingquyuanbao( sceneId, selfId, targetId )
  local mylevel = GetLevel( sceneId, selfId )
  if mylevel <  GetNumText() then
  local strText = format("ÄúµÄµÈ¼¶²»¹»£¬´ýµÈ¼¶´ïµ½%d¼¶ÔÙÀ´ÕÒÎÒ°É¡£", GetNumText() )
  x889062_TalkMsg( sceneId, selfId, targetId, strText )
  return
  end
  if GetNumText()==80 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO80 )
      if index == 1 then
        x889062_TalkMsg( sceneId, selfId, targetId, "ÄúÒÑ¾­ÁìÈ¡¹ý¸ÃÏî½±Àø£¬²»ÄÜÔÙÁìÁË¡£" )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,50000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO80, 1 )
    x889062_TalkMsg( sceneId, selfId, targetId, "ÁìÈ¡Ôª±¦³É¹¦£¬Äú»ñµÃÁË50000Ôª±¦¡£Ð»Ð»Äã¶ÔÌìÁúµÄÖ§³Ö¡£" )
  elseif GetNumText()==90 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO90 )
      if index == 1 then
        x889062_TalkMsg( sceneId, selfId, targetId, "ÄúÒÑ¾­ÁìÈ¡¹ý¸ÃÏî½±Àø£¬²»ÄÜÔÙÁìÁË¡£" )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,100000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO90, 1 )
    x889062_TalkMsg( sceneId, selfId, targetId, "ÁìÈ¡Ôª±¦³É¹¦£¬Äú»ñµÃÁË100000Ôª±¦¡£Ð»Ð»Äã¶ÔÌìÁúµÄÖ§³Ö¡£" )
    elseif GetNumText()==100 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO100 )
      if index == 1 then
        x889062_TalkMsg( sceneId, selfId, targetId, "ÄúÒÑ¾­ÁìÈ¡¹ý¸ÃÏî½±Àø£¬²»ÄÜÔÙÁìÁË¡£" )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,150000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO100, 1 )
    x889062_TalkMsg( sceneId, selfId, targetId, "ÁìÈ¡Ôª±¦³É¹¦£¬Äú»ñµÃÁË150000Ôª±¦¡£Ð»Ð»Äã¶ÔÌìÁúµÄÖ§³Ö¡£" )
    elseif GetNumText()==110 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO110 )
      if index == 1 then
        x889062_TalkMsg( sceneId, selfId, targetId, "ÄúÒÑ¾­ÁìÈ¡¹ý¸ÃÏî½±Àø£¬²»ÄÜÔÙÁìÁË¡£" )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,200000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO110, 1 )
    x889062_TalkMsg( sceneId, selfId, targetId, "ÁìÈ¡Ôª±¦³É¹¦£¬Äú»ñµÃÁË200000Ôª±¦¡£Ð»Ð»Äã¶ÔÌìÁúµÄÖ§³Ö¡£" )
    elseif GetNumText()==120 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO120 )
      if index == 1 then
        x889062_TalkMsg( sceneId, selfId, targetId, "ÄúÒÑ¾­ÁìÈ¡¹ý¸ÃÏî½±Àø£¬²»ÄÜÔÙÁìÁË¡£" )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,300000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO120, 1 )
    x889062_TalkMsg( sceneId, selfId, targetId, "ÁìÈ¡Ôª±¦³É¹¦£¬Äú»ñµÃÁË300000Ôª±¦¡£Ð»Ð»Äã¶ÔÌìÁúµÄÖ§³Ö¡£" )
   end
end
