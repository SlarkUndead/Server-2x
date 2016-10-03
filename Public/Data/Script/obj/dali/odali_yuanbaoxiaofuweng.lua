--ÐÄ·¨Éýc¤p
--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x890212_g_ScriptId	= 890212

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x890212_OnDefaultEvent( sceneId, selfId, targetId )
	if GetLevel(sceneId,selfId) >= 90  then
		BeginEvent( sceneId )
		AddText( sceneId, "   #WChào bÕn! nªu bÕn mu¯n thay ð±i môn phái thì t¾i g£p tÕi hÕ  #r#G Lßu ý: #WC¥n có #YMôn Phái Chuy¬n Hoán L®nh #Wcó th¬ mua trong Shop Ði¬m T£ng. T¤t cä tâm pháp s¨ v« 80." )
		    --AddText( sceneId, "TÕm ngßng thay ð±i môn phái" )
			--AddNumText( sceneId, x890012_g_ScriptId, "Ta mu¯n nâng tâm pháp",6,14 )
			AddNumText( sceneId, x002095_g_ScriptId, "#GTa mu¯n thay ð±i môn phái",6,120 )
    		EndEvent( sceneId )
	else
		BeginEvent( sceneId )
			AddText(sceneId,"Thay ð±i môn phái chï h² trþ cho ai có c¤p ðµ 90 tr· lên")
		EndEvent( sceneId )
	end
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x890212_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
       x890212_g_MenPai = GetMenPai(sceneId, selfId)	
	if key == 14 then
	BeginEvent( sceneId )
		AddText( sceneId, "Ð¬ nâng c¤p vui lòng ¤n vào môn phái tß½ng Ñng cüa bÕn." )
		AddNumText( sceneId, x002093_g_ScriptId, "Tinh Túc",3,20 )
		AddNumText( sceneId, x002093_g_ScriptId, "Tiêu Giao",3,21 )
		AddNumText( sceneId, x002093_g_ScriptId, "Thiªu Lâm",3,22 )
		AddNumText( sceneId, x002093_g_ScriptId, "Thiên S½n",3,23 )
		AddNumText( sceneId, x002093_g_ScriptId, "Thiên Long",3,24 )
		AddNumText( sceneId, x002093_g_ScriptId, "Nga My",3,25 )
		AddNumText( sceneId, x002093_g_ScriptId, "Võ Ðang",3,26 )
		AddNumText( sceneId, x002093_g_ScriptId, "Minh Giáo",3,27 )
		AddNumText( sceneId, x002093_g_ScriptId, "Cái Bang",3,28 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 20 then
		if x890212_g_MenPai == 5   then
			local	Xingxiulevel = LuaFnGetXinFaLevel(sceneId,selfId,60 )
			if Xingxiulevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,31,80)
				LuaFnSetXinFaLevel(sceneId,selfId,32,80)
				LuaFnSetXinFaLevel(sceneId,selfId,33,80)
				LuaFnSetXinFaLevel(sceneId,selfId,34,80)
				LuaFnSetXinFaLevel(sceneId,selfId,35,80)
				LuaFnSetXinFaLevel(sceneId,selfId,36,80)
				LuaFnSetXinFaLevel(sceneId,selfId,60,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 21 then
		if x890212_g_MenPai == 8   then
			local	Xiaoyaolevel = LuaFnGetXinFaLevel(sceneId,selfId,63 )
			if Xiaoyaolevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,49,80)
				LuaFnSetXinFaLevel(sceneId,selfId,50,80)
				LuaFnSetXinFaLevel(sceneId,selfId,51,80)
				LuaFnSetXinFaLevel(sceneId,selfId,52,80)
				LuaFnSetXinFaLevel(sceneId,selfId,53,80)
				LuaFnSetXinFaLevel(sceneId,selfId,54,80)
				LuaFnSetXinFaLevel(sceneId,selfId,63,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 22 then
		if x890212_g_MenPai == 0   then
			local	Shaolinlevel = LuaFnGetXinFaLevel(sceneId,selfId,55 )
			if Shaolinlevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,1,80)
				LuaFnSetXinFaLevel(sceneId,selfId,2,80)
				LuaFnSetXinFaLevel(sceneId,selfId,3,80)
				LuaFnSetXinFaLevel(sceneId,selfId,4,80)
				LuaFnSetXinFaLevel(sceneId,selfId,5,80)
				LuaFnSetXinFaLevel(sceneId,selfId,6,80)
				LuaFnSetXinFaLevel(sceneId,selfId,55,80)
				LuaFnSetXinFaLevel(sceneId,selfId,72,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 23 then
		if x890212_g_MenPai == 7   then
			local	Tianshanlevel = LuaFnGetXinFaLevel(sceneId,selfId,62 )
			if Tianshanlevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,43,80)
				LuaFnSetXinFaLevel(sceneId,selfId,44,80)
				LuaFnSetXinFaLevel(sceneId,selfId,45,80)
				LuaFnSetXinFaLevel(sceneId,selfId,46,80)
				LuaFnSetXinFaLevel(sceneId,selfId,47,80)
				LuaFnSetXinFaLevel(sceneId,selfId,48,80)
				LuaFnSetXinFaLevel(sceneId,selfId,62,80)
				LuaFnSetXinFaLevel(sceneId,selfId,79,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 24 then
		if x890212_g_MenPai == 6   then
			local	Tianlonglevel = LuaFnGetXinFaLevel(sceneId,selfId,61 )
			if Tianlonglevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,37,80)
				LuaFnSetXinFaLevel(sceneId,selfId,38,80)
				LuaFnSetXinFaLevel(sceneId,selfId,39,80)
				LuaFnSetXinFaLevel(sceneId,selfId,40,80)
				LuaFnSetXinFaLevel(sceneId,selfId,41,80)
				LuaFnSetXinFaLevel(sceneId,selfId,42,80)
				LuaFnSetXinFaLevel(sceneId,selfId,61,80)
				LuaFnSetXinFaLevel(sceneId,selfId,78,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 25 then
		if x890212_g_MenPai == 4   then
			local	Ermeilevel = LuaFnGetXinFaLevel(sceneId,selfId,59 )
			if Ermeilevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,25,80)
				LuaFnSetXinFaLevel(sceneId,selfId,26,80)
				LuaFnSetXinFaLevel(sceneId,selfId,27,80)
				LuaFnSetXinFaLevel(sceneId,selfId,28,80)
				LuaFnSetXinFaLevel(sceneId,selfId,29,80)
				LuaFnSetXinFaLevel(sceneId,selfId,30,80)
				LuaFnSetXinFaLevel(sceneId,selfId,59,80)
				LuaFnSetXinFaLevel(sceneId,selfId,76,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 26 then
		if x890212_g_MenPai == 3   then
			local	Wudanglevel = LuaFnGetXinFaLevel(sceneId,selfId,58 )
			if Wudanglevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,19,80)
				LuaFnSetXinFaLevel(sceneId,selfId,20,80)
				LuaFnSetXinFaLevel(sceneId,selfId,21,80)
				LuaFnSetXinFaLevel(sceneId,selfId,22,80)
				LuaFnSetXinFaLevel(sceneId,selfId,23,80)
				LuaFnSetXinFaLevel(sceneId,selfId,24,80)
				LuaFnSetXinFaLevel(sceneId,selfId,58,80)
				LuaFnSetXinFaLevel(sceneId,selfId,75,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 27 then
		if x890212_g_MenPai == 1   then
			local	Mingjiaolevel = LuaFnGetXinFaLevel(sceneId,selfId,56 )
			if Mingjiaolevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,7,80)
				LuaFnSetXinFaLevel(sceneId,selfId,8,80)
				LuaFnSetXinFaLevel(sceneId,selfId,9,80)
				LuaFnSetXinFaLevel(sceneId,selfId,10,80)
				LuaFnSetXinFaLevel(sceneId,selfId,11,80)
				LuaFnSetXinFaLevel(sceneId,selfId,12,80)
				LuaFnSetXinFaLevel(sceneId,selfId,56,80)
				LuaFnSetXinFaLevel(sceneId,selfId,73,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 28 then
		if x890212_g_MenPai == 2   then
			local	Xingxiulevel = LuaFnGetXinFaLevel(sceneId,selfId,57 )
			if Xingxiulevel >= 119 then
				LuaFnSetXinFaLevel(sceneId,selfId,13,80)
				LuaFnSetXinFaLevel(sceneId,selfId,14,80)
				LuaFnSetXinFaLevel(sceneId,selfId,15,80)
				LuaFnSetXinFaLevel(sceneId,selfId,16,80)
				LuaFnSetXinFaLevel(sceneId,selfId,17,80)
				LuaFnSetXinFaLevel(sceneId,selfId,18,80)
				LuaFnSetXinFaLevel(sceneId,selfId,57,80)
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Chúc mßng bÕn Ðã nâng c¤p Tâm pháp 80 thành công" )
				EndEvent( sceneId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, "#ebb3e9f#cfd94b0Xin vui lòng nâng tâm pháp lên 119 r°i hãy quay tr· lÕi!" )
				EndEvent( sceneId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "#GHãy ch÷n ðúng môn phái ð¬ nâng c¤p Tâm pháp." )
			EndEvent( sceneId )
		end
	DispatchEventList( sceneId, selfId, targetId )
	end
	
----------	Ðoi mon phai ------------
	if key == 120 then
		local	nam	= LuaFnGetName( sceneId, selfId )
		if LuaFnGetAvailableItemCount(sceneId, selfId, 39901003) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Hãy ch÷n môn phái mu¯n thay ð±i. Chúc các hÕ ch½i game vui vë!" )	
			AddNumText( sceneId, x002095_g_ScriptId, "Tinh Túc",3,121 )
			AddNumText( sceneId, x002095_g_ScriptId, "Tiêu Dao",3,122 )
			AddNumText( sceneId, x002095_g_ScriptId, "Thiªu Lâm",3,123 )
			AddNumText( sceneId, x002095_g_ScriptId, "Thiên S½n",3,124 )
			AddNumText( sceneId, x002095_g_ScriptId, "Thiên Long",3,125 )
			AddNumText( sceneId, x002095_g_ScriptId, "Nga My",3,126 )
			AddNumText( sceneId, x002095_g_ScriptId, "Võ Ðang",3,127 )
			AddNumText( sceneId, x002095_g_ScriptId, "Minh Giáo",3,128 )
			AddNumText( sceneId, x002095_g_ScriptId, "Cái Bang",3,129 )
    		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		else
		BeginEvent(sceneId)
			AddText(sceneId, "Các hÕ không ðü ði«u ki®n. Ð¬ thay ð±i môn phái c¥n có#Y Môn Phái Chuy¬n Hoán L®nh")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId) 
		end
	end
	if key == 121 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,80)
		LuaFnSetXinFaLevel(sceneId,selfId,32,80)
		LuaFnSetXinFaLevel(sceneId,selfId,33,80)
		LuaFnSetXinFaLevel(sceneId,selfId,34,80)
		LuaFnSetXinFaLevel(sceneId,selfId,35,80)
		LuaFnSetXinFaLevel(sceneId,selfId,36,80)
		LuaFnSetXinFaLevel(sceneId,selfId,60,80)
		LuaFnSetXinFaLevel(sceneId,selfId,77,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Tinh Túc] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 122 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,80)
		LuaFnSetXinFaLevel(sceneId,selfId,50,80)
		LuaFnSetXinFaLevel(sceneId,selfId,51,80)
		LuaFnSetXinFaLevel(sceneId,selfId,52,80)
		LuaFnSetXinFaLevel(sceneId,selfId,53,80)
		LuaFnSetXinFaLevel(sceneId,selfId,54,80)
		LuaFnSetXinFaLevel(sceneId,selfId,63,80)
		LuaFnSetXinFaLevel(sceneId,selfId,80,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Tiêu Dao] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 123 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,80)
		LuaFnSetXinFaLevel(sceneId,selfId,2,80)
		LuaFnSetXinFaLevel(sceneId,selfId,3,80)
		LuaFnSetXinFaLevel(sceneId,selfId,4,80)
		LuaFnSetXinFaLevel(sceneId,selfId,5,80)
		LuaFnSetXinFaLevel(sceneId,selfId,6,80)
		LuaFnSetXinFaLevel(sceneId,selfId,55,80)
		LuaFnSetXinFaLevel(sceneId,selfId,72,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Thiªu Lâm] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 124 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,80)
		LuaFnSetXinFaLevel(sceneId,selfId,44,80)
		LuaFnSetXinFaLevel(sceneId,selfId,45,80)
		LuaFnSetXinFaLevel(sceneId,selfId,46,80)
		LuaFnSetXinFaLevel(sceneId,selfId,47,80)
		LuaFnSetXinFaLevel(sceneId,selfId,48,80)
		LuaFnSetXinFaLevel(sceneId,selfId,62,80)
		LuaFnSetXinFaLevel(sceneId,selfId,79,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Thiên S½n] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 125 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,80)
		LuaFnSetXinFaLevel(sceneId,selfId,38,80)
		LuaFnSetXinFaLevel(sceneId,selfId,39,80)
		LuaFnSetXinFaLevel(sceneId,selfId,40,80)
		LuaFnSetXinFaLevel(sceneId,selfId,41,80)
		LuaFnSetXinFaLevel(sceneId,selfId,42,80)
		LuaFnSetXinFaLevel(sceneId,selfId,61,80)
		LuaFnSetXinFaLevel(sceneId,selfId,78,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Thiên Long] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 126 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,80)
		LuaFnSetXinFaLevel(sceneId,selfId,26,80)
		LuaFnSetXinFaLevel(sceneId,selfId,27,80)
		LuaFnSetXinFaLevel(sceneId,selfId,28,80)
		LuaFnSetXinFaLevel(sceneId,selfId,29,80)
		LuaFnSetXinFaLevel(sceneId,selfId,30,80)
		LuaFnSetXinFaLevel(sceneId,selfId,59,80)
		LuaFnSetXinFaLevel(sceneId,selfId,76,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Nga Mi] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 127 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,80)
		LuaFnSetXinFaLevel(sceneId,selfId,20,80)
		LuaFnSetXinFaLevel(sceneId,selfId,21,80)
		LuaFnSetXinFaLevel(sceneId,selfId,22,80)
		LuaFnSetXinFaLevel(sceneId,selfId,23,80)
		LuaFnSetXinFaLevel(sceneId,selfId,24,80)
		LuaFnSetXinFaLevel(sceneId,selfId,58,80)
		LuaFnSetXinFaLevel(sceneId,selfId,75,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Võ Ðang] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 128 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,80)
		LuaFnSetXinFaLevel(sceneId,selfId,8,80)
		LuaFnSetXinFaLevel(sceneId,selfId,9,80)
		LuaFnSetXinFaLevel(sceneId,selfId,10,80)
		LuaFnSetXinFaLevel(sceneId,selfId,11,80)
		LuaFnSetXinFaLevel(sceneId,selfId,12,80)
		LuaFnSetXinFaLevel(sceneId,selfId,56,80)
		LuaFnSetXinFaLevel(sceneId,selfId,73,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[Phái Minh Giáo] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 129 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,80)
		LuaFnSetXinFaLevel(sceneId,selfId,14,80)
		LuaFnSetXinFaLevel(sceneId,selfId,15,80)
		LuaFnSetXinFaLevel(sceneId,selfId,16,80)
		LuaFnSetXinFaLevel(sceneId,selfId,17,80)
		LuaFnSetXinFaLevel(sceneId,selfId,18,80)
		LuaFnSetXinFaLevel(sceneId,selfId,57,80)
		LuaFnSetXinFaLevel(sceneId,selfId,74,80)
		LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GHoang nghênh các hÕ gia nh§p #B[phái Cái Bang] #GChúc các hÕ có nhæng träi nghi®m vui vë!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end