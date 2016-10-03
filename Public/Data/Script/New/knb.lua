--ËÕÖÝNPC
--Ã¿ÈÕÔùµãÁìÈ¡Ô±
--Ò»°ã
x002095_g_ScriptId = 002095


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002095_OnDefaultEvent( sceneId, selfId,targetId )
      local 	nam	= LuaFnGetName( sceneId, selfId )
	BeginEvent(sceneId)

		AddText(sceneId,"  #c00ff00Chào m×ng bÕn ðªn v¾i Thiên Long Bát Bµ Linh Kiªm. Dß¾i ðây là danh sách các chÑc nång các hÕ hãy ch÷n nhæng thÑ mình thích !#W")
			--AddNumText(sceneId, x002095_g_scriptId, "H°i phøc khí huyªt", 5, 106)
             --AddNumText( sceneId, x002095_g_ScriptId, "#b#e96491f#gFF0FA0Nh§n tâm pháp 150",5,14 )
			 --AddNumText(sceneId,x990001_g_ScriptId,"Nh§n yªu quyªt phái Mµ Dung",1,325)
              --AddNumText( sceneId, x002095_g_ScriptId, "#b#GNâng level t× 149 lên 150",5,3333 )
              --AddNumText( sceneId, x000146_g_ScriptId, "#cff0000Nh§n danh hi®u",5,1009 )
              --AddNumText( sceneId, x002095_g_ScriptId, "#b#GNh§n 10000 #-02",5,10 )
	       --AddNumText( sceneId, x002093_g_ScriptId, "#b#GNh§n hi®u Ñng trùng lâu",5,101 )
              --AddNumText( sceneId, x002095_g_scriptId, "#42#gffff00Nh§n Ám Khí - Võ H°n#42", 5, 5252)
              --AddNumText( sceneId, x002095_g_ScriptId, "#b#YNh§n Pet",5,12 )
              AddNumText( sceneId, x000146_g_ScriptId, "#b#GNh§n 3000000 KNB",5,13 )
			  --AddNumText( sceneId, x000146_g_ScriptId, "#b#GNh§n 300000 DMP",5,8888 )
              --AddNumText( sceneId, x002093_g_ScriptId, "#b#GNh§n Buff",5,100 )
              AddNumText( sceneId, x002095_g_ScriptId, "#b#GNh§n ði¬m t£ng",5,6666 )
              --AddNumText( sceneId, x002095_g_scriptId, "#b#YNh§n 12 kÛ nång c½ bän", 5, 4242)
            -- AddNumText( sceneId, x002095_g_ScriptId, "#b#BChuy¬n sinh",5,5555 )
              AddNumText( sceneId, x002095_g_ScriptId, "#YSØa l²i kinh nghi®m <0>",5,11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end


function x002095_OnEventRequest( sceneId, selfId, targetId, eventId )
local	key	= GetNumText()
         if key  == 100 then
        
                
               LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30160, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30119, 0) 
               LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30134, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30170, 0) 
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30180, 0) 
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30186, 0) 
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30005, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  8051, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  8052, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  50, 0)
                BeginEvent(sceneId)
	        AddText(sceneId,"Nh§n BUFF thành công !")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end
	 if key == 10 then
		local result =	AddMoney( sceneId, selfId, 100000000 )
			BeginEvent( sceneId )
				AddText( sceneId, "BÕn ðã nh§n ðßþc 10000 Vàng" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
	 if key  == 101 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 10088, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 0, 0)
              
                BeginEvent(sceneId)
	        AddText(sceneId,"#GNh§n Hi®u Ñng Thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
              BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n hi®u Ñng Trùng Lâu thành công!", 4 )
                end
        if key  == 6666 then
   ZengDian(sceneId,selfId,targetId,1,5000000)

		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n thành công 5000000 ði¬m t£ng.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end

--**
	if key == 325 then --Nh§n Yªu quyªt Mµ Dung Gia
		BeginAddItem(sceneId)
		AddItem(sceneId,30308099,1)--YQ 35 - Lñc Chí Ti«n Thích
		AddItem(sceneId,30308097,1)--YQ 45 - Phá Thiên ThÑc
		--AddItem(sceneId,30308096,1)--YQ 65 - Hóa Khí ThÑc
		AddItem(sceneId,30308100,1)--YQ 80 - Lång Thiên ThÑc
		EndAddItem(sceneId,selfId)
		AddItemListToHuman(sceneId,selfId)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng các hÕ nh§n ðßþc 1 bµ yªu quyªt Mµ Dung Gia.")
			x002095_NotifyFailTips(sceneId, selfId, "Nh§n ðßþc 1 bµ yªu quyªt Mµ Dung Gia.")
		EndEvent(sceneId)
		
		DispatchEventList(sceneId,selfId,targetId)
	end
if key  == 106 then
		x002095_FullRestore(sceneId, selfId)
end
if key  == 5252 then
			BeginAddItem(sceneId)
			AddItem( sceneId,10155005,1)
                     AddItem( sceneId,10156005,1)
                     EndAddItem(sceneId,selfId)
		       AddItemListToHuman(sceneId,selfId)
		       BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Ðã nh§n thành công", 0)
end
if key  == 11 then
	x002095_Level12(sceneId, selfId, targetId)
end
if key == 13 then
		local result =	YuanBao(sceneId,selfId,targetId,1,30000000)
			BeginEvent( sceneId )
				AddText( sceneId, "BÕn ðã nh§n ðßþc 30000000 KNB" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
if key == 8888 then
		local result =	SetHumanMenpaiPoint(sceneId,selfId,30000000)
			BeginEvent( sceneId )
				AddText( sceneId, "BÕn ðã nh§n ðßþc 30000000 DMP" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
if key == 18 then

                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh§n BUFF thành công.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end
if key  == 4242 then
			BeginAddItem(sceneId)
			AddItem( sceneId,30308044,1)
			AddItem( sceneId,30308042,1)
			AddItem( sceneId,30308033,1)
			AddItem( sceneId,30308032,1)
			AddItem( sceneId,30308031,1)
			AddItem( sceneId,30308030,1)
		        AddItem( sceneId,30308029,1)
		       AddItem( sceneId,30308028,1)
		       AddItem( sceneId,30308034,1)
                       AddItem( sceneId,30308060,1)
                       AddItem( sceneId,30308026,1)
                       AddItem( sceneId,30308027,1)
		       EndAddItem(sceneId,selfId)
		       AddItemListToHuman(sceneId,selfId)
		       BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Nh§n kÛ nång thành công.", 0)
end
if key == 3333 then
		BeginEvent( sceneId )
		AddText( sceneId, "#gF4F4F4BÕn mu¯n nâng c¤p t× 149 lên 150 ?" )
		AddNumText(sceneId, x181003_g_scriptId, "#gF4F4F4Có, tôi mu¯n.", 7, 4444 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 4444 then
		x002095_Shengji( sceneId, selfId, targetId )
end
if key == 5555 then --chuy¬n sinh
		BeginEvent( sceneId )
		AddText( sceneId, "#GBÕn có ch¡c là mu¯n chuy¬n sinh ?#r#YT× l¥n chuy¬n sinh 1->100 : Yêu c¥u c¤p ðµ #G149#r#YT× l¥n chuy¬n sinh 100->200 : Yêu c¥u c¤p ðµ #G149#r#WSau khi chuy¬n sinh giæ nguyên t¤t cä. Sau khi chuy¬n sinh c¤p ðµ tr· v« #G30." )
		AddNumText(sceneId, x002095_g_scriptId, "#YCó, tôi mu¯n chuy¬n sinh", 6, 5566 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 5566 then
		x002095_ZhuanSheng( sceneId, selfId, targetId )
end
if key == 1009 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#eaf6666Thiên Long Bát Bµ Linh Kiªm" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GXin chúc m×ng, t× gi¶ các hÕ chính thÑc là thành viên cüa Thiên Long Bát Bµ Linh Kiªm." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 12 then

BeginEvent(sceneId)
AddText( sceneId, "Các hÕ hãy ch÷n trân thú bÕn mu¯n Ch÷n ðúng trân thú có th¬ dùng ðßþc nhé bÕn. Lßu ý: chï ðßþc nh§n 1 l¥n !" )
		--AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccTrân thú h°i xuân ðan",5,50 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccTrân thú h°i xuân ðan",5,51 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#b#YTrân thú h°i xuân ðan",5,52 )
		AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccBï Dñc Ði¬u Biªn d¸",5,53 )
		AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccCùng KÏ Biªn D¸",5,54 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#b#GTh¥n Hùng Miêu",5,55 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#b#GDã Trß",5,56 )
		AddNumText( sceneId, x002095_g_ScriptId, "#b#GCông H°n Änh Tßþng",5,57 )
		AddNumText( sceneId, x002095_g_ScriptId, "#b#GH²n Giang Long",5,58 )
EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end
if key == 50 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9110, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin chúc m×ng "..nam.." ðã nh§n thành công PET ", 4 )
			str= "#YBÕn ðã có #WBOSS PET. "
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 51 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9120, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#YBÕn ðã có #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 52 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9130, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#YBÕn ðã có #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 53 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9100, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#YBÕn ðã có #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 54 then
				local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 22068, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#G¹§Ï²Íæ¼Ò #B"..nam.."#G³É¹¦ÁìÈ¡³¬¼¶³èÎï£º95¼¶±äÒìÇîÆæ¡£", 4 )
			str= "#YÄã»ñµÃÁË#W³¬¼¶³èÎï£º95¼¶±äÒìÇîÆæ¡£"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 55 then
				local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
			
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 6206, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n ðßþc 1 Th¥n Hùng Miêu", 4 )
			str= "#YBÕn ðã có #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 56 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 33816, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n ðßþc 1 Dã Trß Ð¥u Møc", 4 )
			str= "#YBÕn ðã có#WPet Boss"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 57 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 880, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n ðßþc 1 Công H°n Änh Tßþng", 4 )
			str= "#YCác hÕ ðã nh§n r°i !"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 58 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 884, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n ðßþc 1 H²n Giang Long", 4 )
			str= "#YBÕn ðã nh§n r°i !"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 13 then
		local result =	YuanBao(sceneId,selfId,targetId,1,300000)
			BeginEvent( sceneId )
				AddText( sceneId, "BÕn ðã nh§n thành công 300000 KNB" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
		if key == 14 then
	BeginEvent( sceneId )
		AddText( sceneId, "Hãy ch÷n môn phái bÕn mu¯n gia nh§p. #r#GSau khi gia nh§p môn phái bÕn s¨ ðßþc tâm pháp 149 bao g°m cä Bí T¸ch. #r#YLßu ý: Nªu các hÕ ðã chuy¬n sinh r°i mà sØ døng chÑc nång này s¯ ði¬m ti«m nång s¨ m¤t." )
		AddNumText(sceneId,x990001_g_ScriptId,"#YMµ Dung",5,29)
		AddNumText( sceneId, x002095_g_ScriptId, "#GTinh Túc",5,20 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GTiêu Dao",5,21 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GThiªu Lâm",5,22 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GThiên S½n",5,23 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GThiên Long",5,24 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GNga My",5,25 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GVõ Ðang",5,26 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GMinh Giáo",5,27 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GCái Bang",5,28 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	end
	--**
	if key == 29 then --Mµ Dung
		--Gia nh§p môn phái
		LuaFnJoinMenpai(sceneId,selfId, targetId, 9) --ID 9 là Mµ Dung
		--Tâm pháp
		LuaFnSetXinFaLevel(sceneId,selfId,64,150)
		LuaFnSetXinFaLevel(sceneId,selfId,65,150)
		LuaFnSetXinFaLevel(sceneId,selfId,66,150)
		LuaFnSetXinFaLevel(sceneId,selfId,67,150)
		LuaFnSetXinFaLevel(sceneId,selfId,68,150)
		LuaFnSetXinFaLevel(sceneId,selfId,69,150)
		LuaFnSetXinFaLevel(sceneId,selfId,70,150)
		LuaFnSetXinFaLevel(sceneId,selfId,71,150)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		--Thång c¤p
		--SetLevel(sceneId,selfId,120)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng ngß½i ðã là ð® tØ Mµ Dung Gia, nh§n thành công tâm pháp 150 môn phái ð°ng th¶i thång lên c¤p 150...")
		EndEvent(sceneId)
			
		DispatchEventList(sceneId,selfId,targetId )
	end
	if key == 20 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,150)
		LuaFnSetXinFaLevel(sceneId,selfId,32,150)
		LuaFnSetXinFaLevel(sceneId,selfId,33,150)
		LuaFnSetXinFaLevel(sceneId,selfId,34,150)
		LuaFnSetXinFaLevel(sceneId,selfId,35,150)
		LuaFnSetXinFaLevel(sceneId,selfId,36,150)
		LuaFnSetXinFaLevel(sceneId,selfId,60,150)
		LuaFnSetXinFaLevel(sceneId,selfId,77,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Tinh Túc !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 21 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,150)
		LuaFnSetXinFaLevel(sceneId,selfId,50,150)
		LuaFnSetXinFaLevel(sceneId,selfId,51,150)
		LuaFnSetXinFaLevel(sceneId,selfId,52,150)
		LuaFnSetXinFaLevel(sceneId,selfId,53,150)
		LuaFnSetXinFaLevel(sceneId,selfId,54,150)
		LuaFnSetXinFaLevel(sceneId,selfId,63,150)
		LuaFnSetXinFaLevel(sceneId,selfId,80,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Tiêu Dao !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)

		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 22 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,150)
		LuaFnSetXinFaLevel(sceneId,selfId,2,150)
		LuaFnSetXinFaLevel(sceneId,selfId,3,150)
		LuaFnSetXinFaLevel(sceneId,selfId,4,150)
		LuaFnSetXinFaLevel(sceneId,selfId,5,150)
		LuaFnSetXinFaLevel(sceneId,selfId,6,150)
		LuaFnSetXinFaLevel(sceneId,selfId,55,150)
		LuaFnSetXinFaLevel(sceneId,selfId,72,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Thiªu Lâm !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 23 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,150)
		LuaFnSetXinFaLevel(sceneId,selfId,44,150)
		LuaFnSetXinFaLevel(sceneId,selfId,45,150)
		LuaFnSetXinFaLevel(sceneId,selfId,46,150)
		LuaFnSetXinFaLevel(sceneId,selfId,47,150)
		LuaFnSetXinFaLevel(sceneId,selfId,48,150)
		LuaFnSetXinFaLevel(sceneId,selfId,62,150)
		LuaFnSetXinFaLevel(sceneId,selfId,79,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Thiên S½n !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )

		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 24 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,150)
		LuaFnSetXinFaLevel(sceneId,selfId,38,150)
		LuaFnSetXinFaLevel(sceneId,selfId,39,150)
		LuaFnSetXinFaLevel(sceneId,selfId,40,150)
		LuaFnSetXinFaLevel(sceneId,selfId,41,150)
		LuaFnSetXinFaLevel(sceneId,selfId,42,150)
		LuaFnSetXinFaLevel(sceneId,selfId,61,150)
		LuaFnSetXinFaLevel(sceneId,selfId,78,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Thiên Long !", 4 )

		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 25 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,150)
		LuaFnSetXinFaLevel(sceneId,selfId,26,150)
		LuaFnSetXinFaLevel(sceneId,selfId,27,150)
		LuaFnSetXinFaLevel(sceneId,selfId,28,150)
		LuaFnSetXinFaLevel(sceneId,selfId,29,150)
		LuaFnSetXinFaLevel(sceneId,selfId,30,150)
		LuaFnSetXinFaLevel(sceneId,selfId,59,150)
		LuaFnSetXinFaLevel(sceneId,selfId,76,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Nga My !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 26 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,150)
		LuaFnSetXinFaLevel(sceneId,selfId,20,150)
		LuaFnSetXinFaLevel(sceneId,selfId,21,150)
		LuaFnSetXinFaLevel(sceneId,selfId,22,150)
		LuaFnSetXinFaLevel(sceneId,selfId,23,150)
		LuaFnSetXinFaLevel(sceneId,selfId,24,150)
		LuaFnSetXinFaLevel(sceneId,selfId,58,150)
		LuaFnSetXinFaLevel(sceneId,selfId,75,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Võ Ðang !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 27 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,150)
		LuaFnSetXinFaLevel(sceneId,selfId,8,150)
		LuaFnSetXinFaLevel(sceneId,selfId,9,150)
		LuaFnSetXinFaLevel(sceneId,selfId,10,150)
		LuaFnSetXinFaLevel(sceneId,selfId,11,150)
		LuaFnSetXinFaLevel(sceneId,selfId,12,150)
		LuaFnSetXinFaLevel(sceneId,selfId,56,150)
		LuaFnSetXinFaLevel(sceneId,selfId,73,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Minh Giáo !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 28 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,150)
		LuaFnSetXinFaLevel(sceneId,selfId,14,150)
		LuaFnSetXinFaLevel(sceneId,selfId,15,150)
		LuaFnSetXinFaLevel(sceneId,selfId,16,150)
		LuaFnSetXinFaLevel(sceneId,selfId,17,150)
		LuaFnSetXinFaLevel(sceneId,selfId,18,150)
		LuaFnSetXinFaLevel(sceneId,selfId,57,150)
		LuaFnSetXinFaLevel(sceneId,selfId,74,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 150 phái Cái Bang !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 15 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "VIP" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GXin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 16 then
		TryRecieveItem( sceneId, selfId, 30900016, 1 )
		Msg2Player( sceneId, selfId, "BÕn ðã nh§n thành công 500 ði¬m các ng÷c quí.", MSG2PLAYER_PARA )
	end

      if key == 181 then

         local  nam= LuaFnGetName( sceneId, selfId )

            local lastDayTime1 = GetMissionData( sceneId, selfId, MF_LINGQUYUANBAOMP2)
	   
            local CurDayTime1 = GetDayTime()

	           if CurDayTime1 > lastDayTime1 then

                  BeginEvent(sceneId)
		   
                             --for i = 0,30 do 

                                    -- TryRecieveItem( sceneId, selfId, 30505107, 1 )

                                 --  end
                            TryRecieveItem( sceneId, selfId, 10113054, 1 )
TryRecieveItem( sceneId, selfId, 10113054, 1 )
TryRecieveItem( sceneId, selfId, 10113054, 1 )
                SetMissionData( sceneId, selfId, MF_LINGQUYUANBAOMP2, CurDayTime1 )

                 str = "#cffffccXin chúc m×ng <#c00ff00"..nam.."#cffffcc>ðã nh§n thành công danh hi®u."

                   BroadMsgByChatPipe(sceneId, selfId, str, 4)

		   AddText(sceneId,"Hãy quay lÕi vào ngày mai. ")

		  EndEvent(sceneId)

		  DispatchEventList(sceneId,selfId,targetId)
                
                                else

		BeginEvent(sceneId)
			AddText(sceneId," Hãy quay lÕi vào ngày mai.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	
	    end
	if key  == 19 then
           TryRecieveItem( sceneId, selfId, 10113054, 1 ) 
                BeginEvent(sceneId)
                            
		  AddText(sceneId,"Thành công. ");
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,targetId)
                  end
	

          end
    
end




--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002095_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x002095_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¶Ô»°ÌáÊ¾
--**********************************
function x002095_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
--**********************************
--×ª»»¾­Ñé
--**********************************
function x002095_Level12 (sceneId, selfId, targetId)
	if GetExp(sceneId,selfId) < 0  then
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
			LuaFnAddExp(sceneId,selfId,GetExp(sceneId,selfId)*-1)
			AddText(sceneId,"¼ÌÐøµãÎÒ°É£¬µã10´ÎÓ¦¸Ã¾Í½â¾öÉý¼¶ÎÊÌâ£¡£¡£¡...")
		EndEvent( sceneId )
	else

		BeginEvent( sceneId )
			AddText(sceneId,"Ê§°Ü,Ö»ÓÐ´ò¹Ö»ñµÃ²»ÁË¾­ÑéµÄÍæ¼Ò²ÅÄÜÊ¹ÓÃ´Ë¹¦ÄÜ!!...")
		EndEvent( sceneId )

	end
	

	DispatchEventList( sceneId, selfId, targetId )

end

function x002095_ZhuanSheng( sceneId, selfId, targetId )
	local zhuanshengTimes = GetMissionData(sceneId, selfId, MD_ZHUANSHENG)
	if zhuanshengTimes >= 90000 then
		BeginEvent( sceneId )
			AddText( sceneId, "HÕn chª 90000 l¥n chuy¬n sinh." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return -1
	end
	
	local	lev	= GetLevel( sceneId, selfId )
	if zhuanshengTimes >= 250 then
		if lev < 149 then
			BeginEvent( sceneId )
			AddText( sceneId, "ÐÆng c¤p nhö h½n #G149#W. Hãy quay lÕi khi ðÕt c¤p ðµ #G149.#W " )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return -1
		end
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 39901002)
		if number<100 then
			BeginEvent( sceneId )
			AddText( sceneId, "#GCác hÕ c¥n thu th§p ðü #Y100 #Gviên #W#{_ITEM30505013} #Gð¬ có th¬ chuy¬n sinh." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return -1
		else
			local reply = LuaFnDelAvailableItem(sceneId,selfId,39901002,100)
		end
	end
	
	--local mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
	
	
	if zhuanshengTimes >100 then
		if lev < 149 then
			BeginEvent( sceneId )
			AddText( sceneId, "ÐÆng c¤p nhö h½n #G149#W. Hãy quay lÕi khi ðÕt c¤p ðµ #G149.#W " )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		return -1
		end
		
	end
	if lev < 130 then
		BeginEvent( sceneId )
		AddText( sceneId, "ÐÆng c¤p nhö h½n #G149#W. Hãy quay lÕi khi ðÕt c¤p ðµ #G149#W " )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end

        SetLevel( sceneId, selfId, 30)
	    
	SetMissionData(sceneId, selfId, MD_ZHUANSHENG, zhuanshengTimes+1 )
	zhuanshengTimes = zhuanshengTimes+1
	BeginEvent(sceneId)
		AddText(sceneId,"#GChúc m×ng, chuy¬n sinh l¥n #Y"..zhuanshengTimes.. " #Gthành công!!!")
		AddText( sceneId, "#WServer gi¾i hÕn s¯ l¥n chuy¬n sinh là #Y1500" )
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	BeginEvent(sceneId)
		AddText(sceneId,"#GChúc m×ng, chuy¬n sinh l¥n #Y"..zhuanshengTimes.. " #Gthành công!!!")
		AddText( sceneId, "#WServer gi¾i hÕn s¯ l¥n chuy¬n sinh là #Y1500" )
	EndEvent(sceneId)
	DispatchEventList( sceneId, selfId, targetId )
	local 	nam	= LuaFnGetName( sceneId, selfId )
	local szMsg = format("#58#gFFFF00Chúc m×ng #W#{_INFOUSR%s} #gFFFF00ðã chuy¬n sinh thành công ! #58",nam)
		
	AddGlobalCountNews( sceneId, szMsg )
	
end

function x002095_Shengji (sceneId, selfId, targetId)
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 148 then
		BeginEvent( sceneId )
		AddText( sceneId, "C¤p ðµ chßa ðü #G149#W. Hãy quay lÕi khi ðÕt c¤p ðµ #G149#W." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end
	SetLevel( sceneId, selfId, 150)
	BeginEvent(sceneId)
		AddText(sceneId,"Chúc m×ng, thành công.!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	BeginEvent( sceneId )
		AddText( sceneId, "Thång c¤p 150 thành công." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#48#eaf0000Chúc m×ng "..nam.." ðã thång lên 150 c¤p !!#48", 4 )
end