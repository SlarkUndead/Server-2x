--´«ËÍNPC
--æäÕ¾ÀÏ°å
--ÆÕÍ¨

x002924_g_ScriptId	= 002924
x002924_g_Yinpiao = 40002000
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002924_OnDefaultEvent( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x002924_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ğang giæ ngân phiªu ta không th¬ giúp ğßşc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			AddText( sceneId, "#W½­ºşÏÕ¶ñ,²»¼°Ìì½ÙÂ¥ÏÕ¡£ÕâÌì½ÙÂ¥ÄËÉñÃØ¶ñÈËËù½¨Ö®Â¥,ÔÆ¼¯ÁËÕâmµt ´øtoÕ ğµ mµt Èº¶ñÈË¡£ÎÒÎªÌ½ÆäĞéÊµÇ±ÈëÂ¥ÖĞ,È´ÄÑÄÍËêÔÂ²»ÈÄÈË,¶øÇÒ¶ñÈËÖÚ¶àÒÔÖÁ....." )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF83FATr· v«ÃÅÅÉ", 9, 1000 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Ç°ÍùÌì½ÙÂ¥", 9, 1001 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Thành ph¯  - Tô Châu", 9, 1002 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#cFF0000Ò°Íâ - À¥ÂØÉ½(120¼¶)", 9, 1003 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Thành ph¯  - LÕc Dß½ng - ¾ÅÖİÉÌ»á", 9, 1006 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF7F24Thành ph¯  - Tô Châu - Ìú½³ÆÌ", 9, 1007 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF34B3Thành ph¯  - Lâu Lan(Ñ°±¦¸±±¾Èë¿Ú)", 9, 1008 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFF34B3Thành ph¯  - Lâu Lan(ĞÂÈı»·Èë¿Ú)", 9, 1012 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFAÒ°Íâ - À¥ÂØÉ½(Éı¼¶×¨Çø)", 9, 1013 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ÇåÔ´", 9, 1014 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ÇåÔ´É½¶´", 9, 1015 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ·ï»ËÁêÄ¹", 9, 1016 )
			--AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ·ï»ËÆ½Ô­", 9, 1017 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#GThành ph¯  - ÖğÂ¹Õ½³¡(ÖÆ×÷ÖĞ)", 9, 1018 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFAÒ°Íâ - ·ï»Ë¹ÅÕò(Éı¼¶×¨Çø)", 9, 1019 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFAÒ°Íâ - Thúc Hà C± Tr¤n(BOSS×¨Çø)", 9, 1009 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFAFAFAÒ°Íâ - À¥ÂØ¸£µØ(BOSS×¨Çø)", 9, 1010 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gFFB6C1´øÎÒÈ¥ÆäËûÃÅÅÉ", 9, 1011 )
			for i, mp in x002924_g_mpInfo do
				--AddNumText( sceneId, x002924_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
			end
		else
			AddText( sceneId, "  Ngß½i c¥n µÈ¼¶µ½´ï10¼¶ÒÔÉÏ,²ÅÄÜÈ¥±ğtoÕ ğµ Thành ph¯ ." )
			AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ĞÕi Lı",  9, 1003 )
			AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ĞÕi Lı2", 9, 1004 )
			AddNumText( sceneId, x002924_g_ScriptId, "Thành ph¯  - ĞÕi Lı3", 9, 1005 )
		end

		-- ÎÒÔõÑù²ÅÄÜÈ¥Ğôn HoàngºÍTung S½n
		--AddNumText( sceneId, x002924_g_ScriptId, "ÎÒÔõÑù²ÅÄÜÈ¥Ğôn HoàngºÍTung S½n", 11, 2000 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x002924_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1011 then
	local	mp
	local	i		= 0
		BeginEvent( sceneId )
			for i, mp in x002924_g_mpInfo do
				AddNumText( sceneId, x002924_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
			end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
		--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x002924_MsgBox( sceneId, selfId, targetId, "  Äã¶ÓÎé³ÉÔ±ÖĞÓĞÈËÓĞäîÔË\»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·şÎñ." )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002924_MsgBox( sceneId, selfId, targetId, "  ÄãÓĞäîÔË\»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·şÎñ." )
		return
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr· v«ÃÅÅÉ
		if id < 0 or id >= 9 then
			x002924_MsgBox( sceneId, selfId, targetId, "  Äã»¹Ã»ÓĞ¼ÓÈëÈÎºÎÃÅÅÉ!" )
		else
			mp	= x002924_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--³ı¶ñÌì½ÙÂ¥
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 533, 82, 78, 10 )
		return
	end
	if arg == 1002 then		--Tô Châu
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162, 10 )
		return
	end
	if arg == 1003 then		--À¥ÂØÉ½
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110,18, 10 )
		return
	end
	if arg == 1006 then		--LÕc Dß½ngÉÌ»á
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
		return
	end
	if arg == 1007 then		--Ìú½³ÆÌ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
		return
	end
	if arg == 1008 then		--Lâu Lan¹Å³Ç
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 184, 162, 75, 10 )
		return
	end
	if arg == 1009 then		--Thúc Hà C± Tr¤n
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 422, 200, 211, 10 )
		return
	end
	if arg == 1010 then		--À¥ÂØ¸£µØ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
		return
	end
	if arg == 1012 then		--Lâu LanÈı»·Èë¿Úwww.tlbb20 0.com ÓÑÇéÌá¹© Ãâ·Ñ¶ËÇë²»ÒªÉÏµ±
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 184, 290, 66, 10 )
		return
	end
	if arg == 1013 then		--À¥ÂØÉ½
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110, 18, 10 )
		return
	end
	if arg == 1014 then		--ÇåÔ´
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 531, 272, 45, 10 )
		return
	end
	if arg == 1015 then		--ÇåÔ´É½¶´
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 532, 45, 225, 10 )
		return
	end
	if arg == 1016 then		--·ï»ËÁêÄ¹
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 440, 93, 36, 10 )
		return
	end
	if arg == 1017 then		--·ï»ËÆ½Ô­
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 441, 93, 36, 10 )
		return
	end
	if arg == 1018 then		--ÖğÂ¹Õ½³¡
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 402, 93, 36, 10 )
		return
	end
	if arg == 1019 then		--·ï»Ë¹Å³Ç
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 180, 53, 36, 10 )
		return
	end
	if arg == 1003 then		--ĞÕi Lı1
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı1Ôò²»´«ËÍ
		if sceneId == 2 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi LıÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--ĞÕi Lı2
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı2Ôò²»´«ËÍ
		if sceneId == 71 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi Lı2ÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--ĞÕi Lı3
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı3Ôò²»´«ËÍ
		if sceneId == 72 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi Lı3ÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002924_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end

	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		return
	end

end

--**********************************
--¸ù¾İÃÅÅÉID»ñÈ¡ÃÅÅÉĞÅÏ¢
--**********************************
function x002924_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002924_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x002924_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end