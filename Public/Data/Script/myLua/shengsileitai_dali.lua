--µØÍ¼´«ËÍ ği¬mNPC
--´«ËÍ
--µ¥¼òÍêÉÆ

x002938_g_ScriptId	= 002938
x002938_g_Yinpiao = 40002000
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002938_OnDefaultEvent( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x002938_g_Yinpiao)>=1  then
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
			--AddText( sceneId, "#W×î½ü²»Öª´ÓºÎ´¦À´ÁËÊ®¶şcái¶ñÈË,×Ô³ÆÊ®¶şÉ·ĞÇ,TÕi ÕâĞÕi LıÄÚºáĞĞÎŞ¼É,ÓãÈâ°ÙĞÕ,ÕâÊ®¶şÈËÎäÒÕ¸ßÇ¿,ÏùÕÅ°Ïìè,½üÈÕ¸üĞúngÓĞ²»ÉÙ½­ºşÏüĞ¡Ö®±²Í¶±¼ËûÃÇ,Ê¹ÆäÊÆÁ¦´óÕÇ,ÀÏñÄËêÌıÎÅºóÑ¸ËÙ¸ÏÀ´,ÄÎºÎÊÆ¹ÂÁ¦µ¥,Õâ¿ÉÈçºÎĞúngºÃ?" )
			AddNumText( sceneId, x002938_g_ScriptId, "ÔİÊ±Àë¿ªÉúËÀÀŞÌ¨", 9, 101 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Tô Châu", 9, 200 )
			--AddNumText( sceneId, x002938_g_ScriptId, "ĞÕi Lı", 9, 300 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Lâu Lan", 9, 400 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Nam Häi", 9, 500 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Nam Häi", 9, 600 )
			--AddNumText( sceneId, x002938_g_ScriptId, "Trß¶ng BÕch S½n", 9, 700 )
						for i, mp in x002026_g_mpInfo do
			end
		else
			AddText( sceneId, "  Ngß½i c¥n µÈ¼¶µ½´ï10¼¶ÒÔÉÏ,²ÅÄÜÈ¥±ğtoÕ ğµ Thành ph¯ ." )
			AddNumText( sceneId, x002938_g_ScriptId, "Thành ph¯  - ĞÕi Lı",  9, 1003 )
			AddNumText( sceneId, x002938_g_ScriptId, "Thành ph¯  - ĞÕi Lı2", 9, 1004 )
			AddNumText( sceneId, x002938_g_ScriptId, "Thành ph¯  - ĞÕi Lı3", 9, 1005 )
		end


	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x002938_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 101)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 101 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 130, 78, 10 )
	end

	if GetNumText() == 200 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 201)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 201 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  ¶Ô²»ÆğÄútoÕ ğµ Không ğü ngân lßşng£¡ÎŞ·¨´«ËÍ" )
		AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 156, 10 )
	end

	if GetNumText() == 300 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 301)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 301 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  ¶Ô²»ÆğÄútoÕ ğµ Không ğü ngân lßşng£¡ÎŞ·¨´«ËÍ" )
		AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 246, 106, 10 )
	end

	if GetNumText() == 400 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 401)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 401 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  ¶Ô²»ÆğÄútoÕ ğµ Không ğü ngân lßşng£¡ÎŞ·¨´«ËÍ" )
		AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 184, 294, 90, 10 )
	end

	if GetNumText() == 500 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 501)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 501 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  ¶Ô²»ÆğÄútoÕ ğµ Không ğü ngân lßşng£¡ÎŞ·¨´«ËÍ" )
		AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 206, 266, 10 )
	end

	if GetNumText() == 600 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 601)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 601 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  ¶Ô²»ÆğÄútoÕ ğµ Không ğü ngân lßşng£¡ÎŞ·¨´«ËÍ" )
		AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 186, 43, 10 )
	end

	if GetNumText() == 700 then
		BeginEvent( sceneId )
					AddText( sceneId, "±¾´Î´«ËÍ½«»¨·ÑÄú50Òø£¡Xác nh§n´«ËÍÂğ?" )
			AddNumText( sceneId, x002938_g_scriptId, "Xác nh§n", -1, 701)
			AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 701 then
	local PlayerMoney = GetMoney(sceneId,selfId)
	if PlayerMoney < 5000 then
		BeginEvent( sceneId )
		AddText( sceneId, "  ¶Ô²»ÆğÄútoÕ ğµ Không ğü ngân lßşng£¡ÎŞ·¨´«ËÍ" )
		AddNumText( sceneId, x002938_g_scriptId, "Hüy bö", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		CostMoney(sceneId,selfId,5000)
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 22, 158, 113, 10 )
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
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
				x002938_MsgBox( sceneId, selfId, targetId, "  Äã¶ÓÎé³ÉÔ±ÖĞÓĞÈËÓĞäîÔË\»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·şÎñ." )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002938_MsgBox( sceneId, selfId, targetId, "  ÄãÓĞäîÔË\»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·şÎñ." )
		return
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr· v«ÃÅÅÉ
		if id < 0 or id >= 9 then
			x002938_MsgBox( sceneId, selfId, targetId, "  Äã»¹Ã»ÓĞ¼ÓÈëÈÎºÎÃÅÅÉ!" )
		else
			mp	= x002938_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--LÕc Dß½ng
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
		return
	end
	if arg == 1002 then		--Tô Châu
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162, 10 )
		return
	end
	if arg == 1006 then		--LÕc Dß½ngÉÌ»á
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
		return
	end
	if arg == 1003 then		--ĞÕi Lı1
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı1Ôò²»´«ËÍ
		if sceneId == 2 then
			x002938_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi LıÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--ĞÕi Lı2
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı2Ôò²»´«ËÍ
		if sceneId == 71 then
			x002938_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi Lı2ÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--ĞÕi Lı3
		--Èç¹ûÍæ¼Ò¾ÍTÕi ĞÕi Lı3Ôò²»´«ËÍ
		if sceneId == 72 then
			x002938_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­TÕi ĞÕi Lı3ÁË." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002938_g_mpInfo do
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
function x002938_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002938_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x002938_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
