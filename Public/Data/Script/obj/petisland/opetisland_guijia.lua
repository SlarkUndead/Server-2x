--ÐþÎäµº
--¹é¼Ñ
--ÆÕÍ¨

x112001_g_ScriptId	= 112001

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ,SceneID,PosX,PosY,ÃÅÅÉID)
x112001_g_mpInfo		= {}
x112001_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x112001_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x112001_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x112001_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x112001_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x112001_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x112001_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x112001_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x112001_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }

x112001_g_Yinpiao = 40002000 
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x112001_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- ¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ðµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x112001_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ðang giæ ngân phiªu ta không th¬ giúp ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "    Hoan nghênh ngß½i ðã t¾i Huy«n Vû Ðäo!")
		AddNumText( sceneId, x112001_g_ScriptId, "Quay v« môn phái", 9, 1000 )
		AddNumText( sceneId, x112001_g_ScriptId, "Thành th¸ - LÕc Dß½ng", 9, 1003 )
		AddNumText( sceneId, x112001_g_ScriptId, "Thành th¸ - Tô Châu", 9, 1001 )
		AddNumText( sceneId, x112001_g_ScriptId, "Thành th¸ - ÐÕi Lý", 9, 1002 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x112001_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x112001_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðang · trong trÕng thái Tào v§n, không th¬ tiªn v« cänh trß¾c" )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x112001_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðang · trong trÕng thái kinh doanh, không th¬ tiªn v« cänh trß¾c" )
		return
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr· v«ÃÅÅÉ
		if id < 0 or id >= 9 then
			x112001_MsgBox( sceneId, selfId, targetId, "  BÕn chßa gia nh§p môn phái nào" )
		else
			mp	= x112001_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--Tô Châu
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162 )
		return
	end
	if arg == 1002 then		--ÐÕi Lý
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241,141 )
		return
	end
	if arg == 1003 then		--LÕc Dß½ng
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132,183 )
		return
	end
	for i, mp in x112001_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
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
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x112001_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x112001_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x112001_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
