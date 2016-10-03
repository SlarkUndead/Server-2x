--´«ËÍNPC
--æäÕ¾ÀÏ°å
--ÆÕÍ¨

x000180_g_ScriptId	= 000180

--ÃÅÅÉĞÅÏ¢(ÃÅÅÉÃû³Æ,SceneID,PosX,PosY,ÃÅÅÉID)
x000180_g_mpInfo		= {}
x000180_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x000180_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x000180_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x000180_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x000180_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x000180_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000180_g_mpInfo[6]	= { "Võ Ğang", 12, 103, 140, MP_WUDANG }
x000180_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x000180_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }

x000180_g_Yinpiao = 40002000
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000180_OnDefaultEvent( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x000180_g_Yinpiao)>=1  then
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
			AddText( sceneId, "#{XIYU_20071228_01}" )
			--AddNumText( sceneId, x000180_g_ScriptId, "#gFF83FATr· v«ÃÅÅÉ", 9, 1000 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24ÙíÑôÕò", 9, 1001 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24Í¨ÌìËşËş¶¥", 9, 1002 )
			AddNumText( sceneId, x000180_g_ScriptId, "#cFF0000Í¨ÌìËşÈı²ã", 9, 1003 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24Í¨ÌìËş¶ş²ã", 9, 1006 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24Í¨ÌìËşmµt ²ã", 9, 1007 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF34B3Í¨ÌìËşµØ¹¬", 9, 1008 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF34B3¾ûÌìÍõÁê", 9, 1012 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFA±øÊ¥ÆæÕó", 9, 1013 )
			AddNumText( sceneId, x000180_g_ScriptId, "ÃÅÅÉ - Ä½ÈİÉ½×¯", 9, 1014 )
			AddNumText( sceneId, x000180_g_ScriptId, "¸±±¾ - ²ØÊéË®¸ó", 9, 1015 )
			AddNumText( sceneId, x000180_g_ScriptId, "ÁÖº£Ïª¹È", 9, 1016 )
			AddNumText( sceneId, x000180_g_ScriptId, "Ä®ÄÏÇåÔ­", 9, 1017 )
			AddNumText( sceneId, x000180_g_ScriptId, "#GÍü´¨»¨º£", 9, 1018 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFAÌìáªÄÏ»´", 9, 1019 )
			--AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFAÒ°Íâ - Thúc Hà C± Tr¤n(BOSS×¨Çø)", 9, 1009 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFAÒ°Íâ - À¥ÂØ¸£µØ(BOSS×¨Çø)", 9, 1010 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFFB6C1´øÎÒÈ¥ÆäËûÃÅÅÉ", 9, 1011 )
			for i, mp in x000180_g_mpInfo do
				--AddNumText( sceneId, x000180_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
			end
		else
			AddText( sceneId, "  Ngß½i c¥n µÈ¼¶µ½´ï10¼¶ÒÔÉÏ,²ÅÄÜÈ¥±ğtoÕ ğµ Thành ph¯ ." )
			AddNumText( sceneId, x000180_g_ScriptId, "Thành ph¯  - ĞÕi Lı",  9, 1003 )
			AddNumText( sceneId, x000180_g_ScriptId, "Thành ph¯  - ĞÕi Lı2", 9, 1004 )
			AddNumText( sceneId, x000180_g_ScriptId, "Thành ph¯  - ĞÕi Lı3", 9, 1005 )
		end

		-- ÎÒÔõÑù²ÅÄÜÈ¥Ğôn HoàngºÍTung S½n
		--AddNumText( sceneId, x000180_g_ScriptId, "ÎÒÔõÑù²ÅÄÜÈ¥Ğôn HoàngºÍTung S½n", 11, 2000 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x000180_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1011 then
	local	mp
	local	i		= 0
		BeginEvent( sceneId )
			for i, mp in x000180_g_mpInfo do
				AddNumText( sceneId, x000180_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
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
				x000180_MsgBox( sceneId, selfId, targetId, "  Äã¶ÓÎé³ÉÔ±ÖĞÓĞÈËÓĞäîÔË\»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·şÎñ." )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x000180_MsgBox( sceneId, selfId, targetId, "  ÄãÓĞäîÔË\»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·şÎñ." )
		return
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr· v«ÃÅÅÉ
		if id < 0 or id >= 9 then
			x000180_MsgBox( sceneId, selfId, targetId, "  Äã»¹Ã»ÓĞ¼ÓÈëÈÎºÎÃÅÅÉ!" )
		else
			mp	= x000180_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--ÙíÑôÕò
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 559, 158, 115, 10 )
		return
	end
	if arg == 1002 then		--Í¨ÌìËşËş¶¥
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 548, 256,272, 10 )
		return
	end
	if arg == 1003 then		--Í¨ÌìËşÈı²ã
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 547, 258,314, 10 )
		return
	end
	if arg == 1006 then		--Í¨ÌìËş¶ş²ã
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 546, 255, 367, 10 )
		return
	end
	if arg == 1007 then		--Í¨ÌìËşmµt ²ã
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 545, 255, 380, 10 )
		return
	end
	if arg == 1008 then		--Í¨ÌìËşµØ¹¬
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 544, 255, 384, 10 )
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
	if arg == 1012 then		--¾ûÌìÍõÁê
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 553, 48, 48, 10 )
		return
	end
	if arg == 1013 then		--±øÊ¥ÆæÕó
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 543, 125, 139, 10 )
		return
	end
	if arg == 1014 then		--Ä½ÈİÉ½×¯
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 535, 30, 134, 10 )
		return
	end
	if arg == 1015 then		--²ØÊéË®¸ó
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 527, 16, 42, 10 )
		return
	end
	if arg == 1016 then		--ÁÖº£Ïª¹È
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 552, 220, 196, 10 )
		return
	end
	if arg == 1017 then		--Ä®ÄÏÇåÔ­
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 556, 211, 207, 10 )
		return
	end
	if arg == 1018 then		--Íü´¨»¨º£
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 557, 43, 45, 10 )
		return
	end
	if arg == 1019 then		--ÌìáªÄÏ»´
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 558, 41, 212, 10 )
		return
	end
	if arg == 1003 then		--ĞÕi Lı1
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı1Ôò²»´«ËÍ
		if sceneId == 2 then
			x000180_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi LıÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--ĞÕi Lı2
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı2Ôò²»´«ËÍ
		if sceneId == 71 then
			x000180_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi Lı2ÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--ĞÕi Lı3
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı3Ôò²»´«ËÍ
		if sceneId == 72 then
			x000180_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi Lı3ÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x000180_g_mpInfo do
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
function x000180_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000180_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x000180_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end