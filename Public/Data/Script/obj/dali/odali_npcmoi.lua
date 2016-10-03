--Tô ChâuNPC
--Ã¿ÈÕÔù ði¬mLînh Ô±
--mµt °ã
x002094_g_ScriptId = 002094


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002094_OnDefaultEvent( sceneId, selfId,targetId )
      local 	nam	= LuaFnGetName( sceneId, selfId )
	BeginEvent(sceneId)
            --AddNumText( sceneId, x002094_g_ScriptId, "Nh§n Vàng  (1l¥n/ngày)",5,10 )
            AddText(sceneId,"          ++#BChào m×ng "..nam.." ðªn v¾i #YTLBB Huy«n")
	                 AddNumText( sceneId, x002094_g_ScriptId, "SØa l²i kinh nghi®m <0>#1",5,11 ) 
            AddNumText( sceneId, x002094_g_ScriptId, "#YNh§n Tâm Pháp ",5,14 )                      
            AddNumText( sceneId, x002093_g_ScriptId, "#b#G Buff Trùng Lâu",5,101 )
            AddNumText( sceneId, x002093_g_ScriptId, "#b#G Buff ám khí,pháp bäo",5,102 )
            AddNumText( sceneId, x002093_g_ScriptId, "#b#G Vînh H¢ng Toàn Gi¾i",5,103 )
            AddNumText( sceneId, x002093_g_ScriptId, "#b#G Nh§n Buff",5,100 )
            --AddNumText( sceneId, x002070_g_ScriptId, "Tôi mu¯n nh§n 30 vàng",5,10 )
            AddNumText( sceneId, x002094_g_scriptId, "#31#gffff00Tôi mu¯n nh§n 12 kÛ nång c½ bän#31", 5, 4242)
            AddNumText( sceneId, x002094_g_ScriptId, "#e195e1a#c72d27cTôi mu¯n nâng level t× 149 lên 150",5,3333 )
            AddNumText( sceneId, x002094_g_ScriptId, "Tôi mu¯n nh§n ði¬m t£ng",5,6666 )
            AddNumText( sceneId, x002094_g_ScriptId, "Tôi mu¯n chuy¬n sinh",5,5555 )
            AddNumText( sceneId, x002094_g_ScriptId, "#cFF0000Nh§n Danh Hi®u",5,105 )
            AddNumText( sceneId, x002094_g_ScriptId, "#e195e1a#c72d27cNh§n Pet",5,12 )
            
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end


function x002094_OnEventRequest( sceneId, selfId, targetId, eventId )
local	key	= GetNumText()
          if key  == 104 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9243, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 15974, 0)
                BeginEvent(sceneId)
	        AddText(sceneId,"#GNh§n Hi®u Ñng Thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end

          if key  == 103 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 75, 0)
               
                BeginEvent(sceneId)
	        AddText(sceneId,"#GNh§n Hi®u Ñng Thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end

        if key  == 102 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 32408, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 32407, 0)
              
                BeginEvent(sceneId)
	        AddText(sceneId,"#GNh§n Hi®u Ñng Thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end


        if key  == 101 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5953, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5954, 0)
              
                BeginEvent(sceneId)
	        AddText(sceneId,"#GNh§n Hi®u Ñng Thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end

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
                BeginEvent(sceneId)
	        AddText(sceneId,"Nh§n BUFF thành công !")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end
	 if key  == 10 then
   		AddMoney( sceneId, selfId, 300000 )

		BeginEvent(sceneId)
		AddText(sceneId,"#BChúc m×ng, nh§n thành công 30 #-02. Cám ½n ðã üng hµ Thiên Long Cu°ng Long Kiªm.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
            end
	 if key  == 6666 then
   ZengDian(sceneId,selfId,targetId,1,300000)

		BeginEvent(sceneId)
		AddText(sceneId,"#gffff00Nh§n thành công 300 000 ði¬m t£ng.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end
if key  == 11 then
	x002094_Level12(sceneId, selfId, targetId)
end
if key == 18 then

                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"#gffff00Nh§n BUFF thành công.")
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
		       BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:#gffff00Nh§n kÛ nång thành công.", 0)
end
if key == 3333 then
		BeginEvent( sceneId )
		AddText( sceneId, "#gF4F4F4BÕn mu¯n nâng c¤p t× 149 lên 150 ?" )
		AddNumText(sceneId, x181003_g_scriptId, "#gF4F4F4Có, tôi mu¯n.", 7, 4444 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 4444 then
		x002094_Shengji( sceneId, selfId, targetId )
end
if key == 5555 then
		BeginEvent( sceneId )
		AddText( sceneId, "#gF4F4F4BÕn có ch¡c là mu¯n chuy¬n sinh ?#r Yêu c¥u c¤p ðµ: #G130 #r#WSau khi chuy¬n sinh giæ nguyên t¤t cä. #GSau khi chuy¬n sinh c¤p ðµ tr· v« 30." )
		AddNumText(sceneId, x181003_g_scriptId, "#gF4F4F4Có, tôi mu¯n chuy¬n sinh", 7, 5566 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 5566 then
		x002094_ZhuanSheng( sceneId, selfId, targetId )
end

if key == 12 then

BeginEvent(sceneId)
AddText( sceneId, "Chào bÕn, hãy ch÷n trân thú bÕn mu¯n #r#GCh÷n ðúng trân thú có th¬ dùng ðßþc nhé bÕn.#b#cFF0000Lßu Y: chï ðßþc ch÷n 1 l¥n" )
		--AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Trân thú h°i xuân ðan",5,50 )
		--AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Trân thú h°i xuân ðan",5,51 )
		--AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Trân thú h°i xuân ðan",5,52 )
		AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Bï Dñc Ði¬u Biªn d¸",5,53 )
		AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Cùng KÏ Biªn D¸",5,54 )
		AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Ðß¶ng Trang ThØ Biªn D¸",5,55 )
		AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Long Quy Biªn D¸",5,56 )
		AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Áp ChuÖ Thú Biªn D¸",5,57 )
		AddNumText( sceneId, x002094_g_ScriptId, "#gffff00Thø ÐÕi Hùng Biªn D¸",5,58 )
EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end
if key == 50 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9110, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." Trân thú h°i xuân ðan", 4 )
			str= "#gffff00BÕn ðã có PET. "
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9120, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." Trân thú h°i xuân ðan", 4 )
			str= "#gffff00BÕn ðã có PET."
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9130, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." Trân thú h°i xuân ðan", 4 )
			str= "#gffff00BÕn ðã có PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 53 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 2 then
			BeginEvent(sceneId)
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 22266, 1, 0);
		if createPetRet and createPetRet == 2 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." ðã nh§n thành công Boss PET", 4 )
			str= "#gffff00BÕn ðã có PET ."
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 22068, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#gffff00BÕn ðã có  PET."
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
			
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 8808, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#gffff00BÕn ðã có PET."
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 3317, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#gffff00BÕn ðã có #WBOSS PET."
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 7568, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#gffff00BÕn ðã có PET."
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
			AddText(sceneId, "#gffff00BÕn ðã nh§n thß·ng.#G Không th¬ nh§n næa.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 8548, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Xin chúc m×ng "..nam.." ðã nh§n thành công PET", 4 )
			str= "#gffff00BÕn ðã có PET."
			BeginEvent( sceneId )

			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 13 then
		local CurTime = GetHourTime();
		local iTime = GetMissionData( sceneId, selfId, MF_LINGQUYUANBAOEXP );
		if iTime+1 >= CurTime then
			BeginEvent( sceneId )
			AddText( sceneId, "#gffff00Kính chào bÕn, bÕn chï có th¬ nh§n ðßþc trong vòng 1 gi¶" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
          for i = 0,300 do
          AddExp(sceneId,selfId,700000)
               end
			
			SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOEXP, CurTime);
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." nh§n thành công 2 tri®u ði¬m kinh nghi®m. ", 4 )
			BeginEvent( sceneId )
				AddText( sceneId, "#gffff00BÕn ðã nh§n thành công 2 tri®u ði¬m kinh nghi®m. Chúc bÕn ch½i vui." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
		if key == 14 then
	BeginEvent( sceneId )
		AddText( sceneId, "Hãy ch÷n môn phái bÕn mu¯n gia nh§p. #GSau khi gia nh§p môn phái bÕn s¨ ðßþc tâm pháp 110.#YLßu ý: ði¬m thuµc tính ( ði¬m cµng +) s¨ tr· v« 0 khi bÕn sØ døng chÑc nång này #G Và chï dùng cho ngß¶i chuy¬n sinh t× 5 l¥n tr· xu¯ng." )
		AddNumText( sceneId, x002094_g_ScriptId, "Tinh Túc",3,20 )
		AddNumText( sceneId, x002094_g_ScriptId, "Tiêu Dao",3,21 )
		AddNumText( sceneId, x002094_g_ScriptId, "Thiªu Lâm",3,22 )
		AddNumText( sceneId, x002094_g_ScriptId, "Thiên S½n",3,23 )
		AddNumText( sceneId, x002094_g_ScriptId, "Thiên Long",3,24 )
		AddNumText( sceneId, x002094_g_ScriptId, "Nga Mi",3,25 )
		AddNumText( sceneId, x002094_g_ScriptId, "Võ Ðang",3,26 )
		AddNumText( sceneId, x002094_g_ScriptId, "Minh Giáo",3,27 )
		AddNumText( sceneId, x002094_g_ScriptId, "Cái Bang",3,28 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 20 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,130)
		LuaFnSetXinFaLevel(sceneId,selfId,32,130)
		LuaFnSetXinFaLevel(sceneId,selfId,33,130)
		LuaFnSetXinFaLevel(sceneId,selfId,34,130)
		LuaFnSetXinFaLevel(sceneId,selfId,35,130)
		LuaFnSetXinFaLevel(sceneId,selfId,36,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 21 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,130)
		LuaFnSetXinFaLevel(sceneId,selfId,50,130)
		LuaFnSetXinFaLevel(sceneId,selfId,51,130)
		LuaFnSetXinFaLevel(sceneId,selfId,52,130)
		LuaFnSetXinFaLevel(sceneId,selfId,53,130)
		LuaFnSetXinFaLevel(sceneId,selfId,54,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)

		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);

		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 22 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,130)
		LuaFnSetXinFaLevel(sceneId,selfId,2,130)
		LuaFnSetXinFaLevel(sceneId,selfId,3,130)
		LuaFnSetXinFaLevel(sceneId,selfId,4,130)
		LuaFnSetXinFaLevel(sceneId,selfId,5,130)
		LuaFnSetXinFaLevel(sceneId,selfId,6,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 23 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,130)
		LuaFnSetXinFaLevel(sceneId,selfId,44,130)
		LuaFnSetXinFaLevel(sceneId,selfId,45,130)
		LuaFnSetXinFaLevel(sceneId,selfId,46,130)
		LuaFnSetXinFaLevel(sceneId,selfId,47,130)
		LuaFnSetXinFaLevel(sceneId,selfId,48,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 24 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,130)
		LuaFnSetXinFaLevel(sceneId,selfId,38,130)
		LuaFnSetXinFaLevel(sceneId,selfId,39,130)
		LuaFnSetXinFaLevel(sceneId,selfId,40,130)
		LuaFnSetXinFaLevel(sceneId,selfId,41,130)
		LuaFnSetXinFaLevel(sceneId,selfId,42,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )

		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 25 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,130)
		LuaFnSetXinFaLevel(sceneId,selfId,26,130)
		LuaFnSetXinFaLevel(sceneId,selfId,27,130)
		LuaFnSetXinFaLevel(sceneId,selfId,28,130)
		LuaFnSetXinFaLevel(sceneId,selfId,29,130)
		LuaFnSetXinFaLevel(sceneId,selfId,30,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 26 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,130)
		LuaFnSetXinFaLevel(sceneId,selfId,20,130)
		LuaFnSetXinFaLevel(sceneId,selfId,21,130)
		LuaFnSetXinFaLevel(sceneId,selfId,22,130)
		LuaFnSetXinFaLevel(sceneId,selfId,23,130)
		LuaFnSetXinFaLevel(sceneId,selfId,24,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 27 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,130)
		LuaFnSetXinFaLevel(sceneId,selfId,8,130)
		LuaFnSetXinFaLevel(sceneId,selfId,9,130)
		LuaFnSetXinFaLevel(sceneId,selfId,10,130)
		LuaFnSetXinFaLevel(sceneId,selfId,11,130)
		LuaFnSetXinFaLevel(sceneId,selfId,12,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 28 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,130)
		LuaFnSetXinFaLevel(sceneId,selfId,14,130)
		LuaFnSetXinFaLevel(sceneId,selfId,15,130)
		LuaFnSetXinFaLevel(sceneId,selfId,16,130)
		LuaFnSetXinFaLevel(sceneId,selfId,17,130)
		LuaFnSetXinFaLevel(sceneId,selfId,18,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#GChúc m×ng "..nam.." ðã nh§n tâm pháp 130 thành công !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GBÕn ðã nh§n BUFF tâm pháp thành công. Chúc bÕn ch½i vui v¨ !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
if key == 105 then  

BeginEvent(sceneId)
local	nam	= LuaFnGetName( sceneId, selfId )
AddText( sceneId, "#gffff00Chào "..nam.." , hãy ch÷n Danh Hi®u bÕn Mu¯n , Danh Hi®u th¬ hi®n bän thân, cûng nhß danh tín cüa các hÕ!" )
		AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #b#cff00f0Kiêu Sa #33Lµng Lçy ",5,1 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #b#ebb3e9f#cfd94b0Thiên Th¥n ",5,3 )  
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #cff9900Ð©p Trai #46Phong Ðµ ",5,2 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0Ông Xã #33Bà Xã ",5,4 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #b#eCD2990V.I.P ",5,15 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0Bà Xã #33Ông Xã ",5,5 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0"..nam.." Tiên TØ",5,6 ) 
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0#46#46"..nam.."#46#46",5,7 )       
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #46#46#46#46#46",5,8 )           
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0Cu°ng Long Kiªm ",5,33 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0"..nam.." Ð©p Trai",5,9 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0"..nam.." Xinh Xinh",5,34 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #b#eCD2990Búp Bê",5,44 )
            AddNumText( sceneId, x002094_g_ScriptId, "Nh§n ðanh hi®u #e96491f#gFF0FA0#4 One Top ",5,70 )
EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end

if key == 70 then
                local   	NameM	= GetName( sceneId, ObjIDM )
                local	nam	= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000#42k11#4" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#e96491f#gFF0FA0Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0#4 2k11#4 ,chúc "..nam.." ch½i game zui zë !!.", 4 )
            AddText( sceneId, "#cff6633Thiên Long Bát Bµ Cu°ng Long Kiªm chúc các member or gamer có khoäng th¶i gian thß giãn khi ch½i game!!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

if key == 34 then
                local   	NameM	= GetName( sceneId, ObjIDM )
                local	nam	= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0"..nam.." Xinh Xinh" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0"..nam.." Xinh Xinh", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 9 then
                local   	NameM	= GetName( sceneId, ObjIDM )
                local	nam	= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0"..nam.." Ð©p Trai" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0"..nam.." Ð©p Trai", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 8 then
                local   	NameM	= GetName( sceneId, ObjIDM )
                local	nam	= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#46#46#46#46#46" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #46#46#46#46#46", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 7 then
                local   	NameM	= GetName( sceneId, ObjIDM )
                local	nam	= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0#46#46"..nam.."#46#46" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0#46#46"..nam.."#46#46", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 6 then
                local   	NameM	= GetName( sceneId, ObjIDM )
                local	nam	= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0"..nam.." Tiên TØ" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0"..nam.." Tiên TØ", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 5 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0Bà Xã #33Ông Xã" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0Bà Xã #33Ông Xã", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 4 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0Ông Xã #33Bà Xã" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0Ông Xã Yêu Bà Xã", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 3 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#ebb3e9f#cfd94b0Thiên Th¥n" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #b#ebb3e9f#cfd94b0Thiên Th¥n  ", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

if key == 2 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cff9900Ð©p Trai #46Phong Ðµ" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #cff9900Ð©p Trai #46Phong Ðµ ", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 1 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#cff00f0Kiêu Sa #33Lµng Lçy" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #b#cff00f0Kiêu Sa #33Lµng Lçy ", 4 )
		AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
            EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end


if key == 15 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#eCD2990V.I.P" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #b#eCD2990V.I.P ", 4 )
            AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
      if key == 33 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e96491f#gFF0FA0Cu°ng Long Kiªm" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã nh§n danh hi®u #e96491f#gFF0FA0Thiên Long Cu°ng Long Kiªm ", 4 )
	      AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
      if key == 44 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "Ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#eCD2990Búp Bê" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#gffff00Xin chúc m×ng bÕn ðã nh§n thành công danh hi®u." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	if key == 16 then
		TryRecieveItem( sceneId, selfId, 30900016, 1 )
		Msg2Player( sceneId, selfId, "#gffff00BÕn ðã nh§n thành công 500 ði¬m các ng÷c quí.", MSG2PLAYER_PARA )
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
function x002094_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x002094_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¶Ô»°ÌáÊ¾
--**********************************
function x002094_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
--**********************************
--×ª»»Kinh nghi®m
--**********************************
function x002094_Level12 (sceneId, selfId, targetId)
	if GetExp(sceneId,selfId) < 0  then
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
			LuaFnAddExp(sceneId,selfId,700000)
                  AddText(sceneId,"#YChúc m×ng bÕn ðã sØa Exp thành công!#r#b#e96491f#gFF0FA0 Nªu Exp vçn = 0 xin vui lòng ¤n sØa tiªp ðªn khi Exp v« Bình thß¶ng... Cám ½n!")
		EndEvent( sceneId )
	else

		BeginEvent( sceneId )
                  local	nam	= LuaFnGetName( sceneId, selfId )
			AddText(sceneId,"#G#14#14#14Ông "..nam.." ½i !Chï nhßng ai có Kn v« <0> m¾i sü døng Tính nång này Thôi ông a.!!...#14#14#14")
		EndEvent( sceneId )

	end
	

	DispatchEventList( sceneId, selfId, targetId )

end


function x002094_ZhuanSheng( sceneId, selfId, targetId )
	local zhuanshengTimes = GetMissionData(sceneId, selfId, MD_ZHUANSHENG)
	if zhuanshengTimes >10000000 then
		x002094_NotifyTip( sceneId, selfId, "HÕn chª 5 l¥n chuy¬n sinh." )
		x002094_MsgBox( sceneId, selfId, targetId, "HÕn chª 5 l¥n chuy¬n sinh." )
		return
	end
	local mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 130 then
		BeginEvent( sceneId )
		AddText( sceneId, "ÐÆng c¤p nhö h½n #G130#W. Hãy quay lÕi khi ðÕt c¤p ðµ #G130#W. " )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end

        SetLevel( sceneId, selfId, 30)
	     YuanBao(sceneId,selfId,targetId,1,500000)
	     ZengDian(sceneId,selfId,targetId,1,450000)
	SetMissionData(sceneId, selfId, MD_ZHUANSHENG, zhuanshengTimes+1 )
	local nCS = GetMissionData(sceneId, selfId, MD_ZHUANSHENG )
	BeginEvent(sceneId)
		AddText(sceneId,"Chúc m×ng, chuy¬n sinh l¥n "..nCS.." thành công!!!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	BeginEvent( sceneId )
		AddText( sceneId, "#WChúc m?ng chuy?n sinh thành công #1." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#48#gFFFF00Chúc m×ng "..nam.." ðã chuy¬n sinh thành công ! #48", 4 )
end

function x002094_Shengji (sceneId, selfId, targetId)
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 149 then
		BeginEvent( sceneId )
		AddText( sceneId, "C¤p ðµ chßa ðü #G140#W. Hãy quay lÕi khi ðÕt c¤p ðµ #G140#W." )
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
	BroadMsgByChatPipe( sceneId, selfId, "#48#gFFFF00Chúc m×ng "..nam.." ðã thång lên 150 c¤p !!#48", 4 )
end
