-- ÖĞÇïÈÎÎñ

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x050010_g_ScriptId = 050010

-- ÈÎÎñºÅ
x050010_g_MissionId = 396					-- 395 - 399

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x050010_g_MissionIdPre = 395

-- Møc tiêu nhi®m vønpc
x050010_g_Name = "Dß½ng Vån Quäng"

--ÈÎÎñ¹éÀà
x050010_g_MissionKind = 3

--ĞÆng c¤p nhi®m vø 
x050010_g_MissionLevel = 10000

-- ÈÎÎñÎÄ±¾ÃèÊö
x050010_g_MissionName = "San b¢ng nh¤t ph¦m ğß¶ng"
x050010_g_MissionInfo = "    T¯t, t¤m lòng t§n trung báo qu¯c th§t ğáng khâm phøc. Gi¶ dçn các hÕ ği thåm chiªn khu"			--ÈÎÎñÃèÊö
x050010_g_MissionTarget = "    Kích sát ğªn t× Nh¤t Ph¦m Ğß¶ng cao thü và ğ¥u møc. "						-- Møc tiêu nhi®m vø
x050010_g_ContinueInfo = "    Trên ngß¶i các hÕ hi®n không có l®nh bài, giao tñ t× ğâu nói ğªn?"				--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x050010_g_MissionComplete = "    R¤t t¯t r¤t t¯t, vì qu¯c c¯ng sÑc, tÕi hÕ s¨ giao tr÷ng trách cüa sñ vi®c. "				--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x050010_g_IsMissionOkFail = 0				-- 0ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x050010_g_Param_sceneid = 1					-- 1ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ

-- ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x050010_g_ControlScript = 050009

x050010_g_NumText_Main = 1				-- »÷ÍËmµt Æ·ÌÃ¸ßÊÖÈëÇÖ
x050010_g_NumText_SubmitBooty = 2		-- ½»mµt Æ·ÌÃÁîÅÆ
x050010_g_NumText_Question = 3			-- ÖĞÇï»ı·ÖÓĞÊ²Ã´ÓÃ

x050010_g_CopySceneMap = "bianguan_1.nav"
x050010_g_CopySceneArea = "bianguan_1_area.ini"

x050010_g_CopySceneType = FUBEN_BIANGUAN	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x050010_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x050010_g_TickTime = 5						--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x050010_g_LimitTotalHoldTime = 240			--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x050010_g_CloseTick = 3						--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x050010_g_NoUserTime = 300					--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)

x050010_g_Fuben_X = 29
x050010_g_Fuben_Z = 49

x050010_g_BackInfo = { sceneId = 8, x = 252, z = 146 }

x050010_g_MonsterGroupID = 1
x050010_g_BossGroupID = 2					--C¥n É±ËÀtoÕ ğµ BosstoÕ ğµ GroupID

x050010_g_CopySceneInfo = {}
x050010_g_CopySceneInfo[1] = { odds = 65, bossScore = 3, monsterScore = 1, bootyOdds = 30 }
x050010_g_CopySceneInfo[2] = { odds = 85, bossScore = 5, monsterScore = 1, bootyOdds = 50 }
x050010_g_CopySceneInfo[3] = { odds = 95, bossScore = 7, monsterScore = 1, bootyOdds = 70 }
x050010_g_CopySceneInfo[4] = { odds = 100, bossScore = 10, monsterScore = 1, bootyOdds = 100 }

x050010_g_Booty = 40004302

x050010_g_StdExpTbl = {
	30, 36, 42, 48, 54, 60, 66, 72, 78, 101, 108, 115, 122, 130,
	137, 144, 151, 158, 166, 202, 210, 218, 227, 235, 244, 252,
	260, 269, 277, 326, 336, 346, 355, 365, 374, 384, 394, 403,
	413, 475, 486, 497, 508, 518, 529, 540, 551, 562, 572, 648,
	660, 672, 684, 696, 708, 720, 732, 744, 756, 845, 858, 871,
	884, 898, 911, 924, 937, 950, 964, 1066, 1080, 1094, 1109,
	1123, 1138, 1152, 1166, 1181, 1195, 1310, 1326, 1342, 1357,
	1373, 1388, 1404, 1420, 1435, 1451, 1579, 1596, 1613, 1630,
	1646, 1663, 1680, 1697, 1714, 1730, 1872, 1890, 1908, 1926,
	1944, 1962, 1980, 1998, 2016, 2034, 2189, 2208, 2227, 2246,
	2266, 2285, 2304, 2323, 2342, 2362, 2530,
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x050010_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x050010_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if GetNumText() == x050010_g_NumText_Main then
		x050010_AskEnterCopyScene( sceneId, selfId, targetId )
	elseif GetNumText() == x050010_g_NumText_SubmitBooty then
		x050010_SubmitBooty( sceneId, selfId, targetId )
	elseif GetNumText() == x050010_g_NumText_Question then
		x050010_AnswerQuestion( sceneId, selfId, targetId )
	else
		return
	end
end

--**********************************
--·¢²¼Ö÷ÈÎÎñ
--**********************************
function x050010_AskEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050010_g_MissionIdPre ) <= 0 then			-- Ã»ÓĞÈÎÎñ
		return
	end

	-- È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local i, nearteammembercount, member
	local members = {}
	local validmembercount = 0
	if LuaFnHasTeam( sceneId, selfId ) ~= 0 then
		if LuaFnIsTeamLeader( sceneId, selfId ) ~= 0 then					-- Ğúng¶Ó³¤
			nearteammembercount = GetNearTeamCount( sceneId, selfId )
			for i=0, nearteammembercount-1 do
				member = GetNearTeamMember( sceneId, selfId, i )
				if IsHaveMission( sceneId, member, x050010_g_MissionIdPre ) > 0
				 and GetMissionCount( sceneId, selfId ) < 20 then			-- ÓĞÈÎÎñ
					validmembercount = validmembercount + 1
					members[validmembercount] = member
				end
			end
		else																-- Ğµi viên 
			x050010_NotifyFailBox( sceneId, selfId, targetId, "    Xin m¶i ğµi trß·ng cüa Nhóm t¾i tìm ta" )
			return
		end
	end

	if validmembercount < x050010_g_LimitMembers then
		x050010_NotifyFailBox( sceneId, selfId, targetId, "    Thª ğ¸ch r¤t mÕnh, các hÕ 1 thân sş khó chiªn th¡ng, chí ít cûng c¥n" ..
						x050010_g_LimitMembers .. "Ngß¶i, ta m¾i ti­n các ngß½i" )
		return
	else
		x050010_NotifyFailBox( sceneId, selfId, targetId, "    T¯t, t¤m lòng t§n trung báo qu¯c th§t ğáng khâm phøc. Gi¶ dçn các hÕ ği thåm chiªn khu" )
	end

	-- ËùÓĞÖ®Ç°toÕ ğµ ÈÎÎñÊı¾İÇå¿Õ
	local misIndex
	local mylevel = 0
	for i = 1, validmembercount do
		if IsHaveMission( sceneId, members[i], x050010_g_MissionId ) == 0 then				-- Ã»ÓĞÈÎÎñ
			AddMission( sceneId, members[i], x050010_g_MissionId, x050010_g_ScriptId, 1, 0, 0 )		-- kill¡¢area¡¢item
		end

		misIndex = GetMissionIndexByID( sceneId, members[i], x050010_g_MissionId )
		SetMissionByIndex( sceneId, members[i], misIndex, x050010_g_IsMissionOkFail, 0 )	-- ÈÎÎñÖÃÎªÎ´Íê³É
		SetMissionByIndex( sceneId, members[i], misIndex, x050010_g_Param_sceneid, -1 )		-- ¸±±¾³¡¾°ÖÃÎª -1

		if mylevel < GetLevel( sceneId, members[i] ) then							--  ği¬mµ½×î´óc¤p±ğ
			mylevel = GetLevel( sceneId, members[i] )
		end
	end

	-- ´´½¨¸±±¾
	local subCopySceneType = random( 100 )
	for i = 1, 4 do
		if subCopySceneType <= x050010_g_CopySceneInfo[i].odds then
			subCopySceneType = i
			break
		end
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x050010_g_CopySceneMap )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050010_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x050010_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x050010_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x050010_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, subCopySceneType )				--±£´æ¸±±¾¹ÖÎïÀàĞÍºÅ
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--É±ËÀBosstoÕ ğµ ÊıÁ¿

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x050010_g_CopySceneArea )

	local monsterINI = "bianguan_" .. subCopySceneType .. "_monster_" .. iniLevel .. ".ini"
	LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x050010_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x050010_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end
end

--**********************************
--·ÅÆúÈÎÎñ
--**********************************
function x050010_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050010_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050010_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050010_g_Param_sceneid )

	DelMission( sceneId, selfId, x050010_g_MissionId )

	if sceneId == copyscene then
		x050010_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		x050010_Exit( sceneId, selfId )
	end
end

--**********************************
--½»mµt Æ·ÌÃÁîÅÆ
--**********************************
function x050010_SubmitBooty( sceneId, selfId, targetId )
	local nItemNum = GetItemCount( sceneId, selfId, x050010_g_Booty )

	if nItemNum < 1 then
		x050010_NotifyFailBox( sceneId, selfId, targetId, x050010_g_ContinueInfo )
		return
	end

	--  ği¬mµ½¡°¹ÖÎïKinh nghi®mÎªÆ¥Åä¸ÃµÈc¤p¹ÖÕı³£Kinh nghi®m*1.5¡±
	local exp = x050010_g_StdExpTbl[ GetLevel( sceneId, selfId ) ]
	if not exp then
		exp = 1
	end

	exp = exp * 1.5

	LuaFnDelAvailableItem( sceneId, selfId, x050010_g_Booty, 1 )
	AddExp( sceneId, selfId, exp )

	x050010_NotifyFailBox( sceneId, selfId, targetId, x050010_g_MissionComplete )

	local baoshi_lv1={	50101001,50101002,50102001,50102002,50102003,
						50102004,50103001,50104002,50111001,50111002,
						50112001,50112002,50112003,50112004,50113001,
						50113002,50113003,50113004,50113005,50114001,}
	local baoshiname_lv1={	"Miêu Nhãn ThÕch (c¤p 1)","H± Nhãn ThÕch (c¤p 1)","Hoàng Tinh ThÕch (c¤p 1)","Lam Tinh ThÕch (c¤p 1)","H°ng Tinh ThÕch (c¤p 1)",
							"Løc Tinh ThÕch (c¤p 1)","TØ Ng÷c (c¤p 1)","Biªn ThÕch (c¤p 1)","ThÕchLñu ThÕch (c¤p 1)","Tiêm Tinh ThÕch (c¤p 1)",
							"Hoàng Ng÷c (c¤p 1)","HÕo ThÕch (c¤p 1)","Nguy®t Quang ThÕch (c¤p 1)","Bích TÖ (c¤p 1)","Hoàng Bäo ThÕch (c¤p 1)",
							"Lam Bäo ThÕch (c¤p 1)","Løc Bäo ThÕch (c¤p 1)","H°ng Bäo ThÕch (c¤p 1)","H¡c Bäo ThÕch (c¤p 1)","T± Mçu Løc (c¤p 1)",}
							
	local baoshi_lv2={	50201001,50201002,50202001,50202002,50202003,
						50202004,50203001,50204002,50211001,50211002,
						50212001,50212002,50212003,50212004,50213001,
						50213002,50213003,50213004,50213005,50214001,}
	local baoshiname_lv2={	"Miêu Nhãn ThÕch (c¤p 2)","H± Nhãn ThÕch (c¤p 2)","Hoàng Tinh ThÕch (c¤p 2)","Lam Tinh ThÕch (c¤p 2)","H°ng Tinh ThÕch (c¤p 2)",
							"Løc Tinh ThÕch (c¤p 2)","TØ Ng÷c (c¤p 2)","Biªn ThÕch (c¤p 2)","ThÕch Lñu ThÕch (c¤p 2)","Tiêm Tinh ThÕch (c¤p 2)",
							"Hoàng Ng÷c (c¤p 2)","HÕo ThÕch (c¤p 2)","Nguy®t Quang ThÕch (c¤p 2)","Bích TÖ (c¤p 2)","Hoàng Bäo ThÕch (c¤p 2)",
							"Lam Bäo ThÕch (c¤p 2)","Løc Bäo ThÕch (c¤p 2)","H°ng Bäo ThÕch (c¤p 2)","H¡c Bäo ThÕch (c¤p 2)","T± Mçu Løc (c¤p 2)",}
							
	local jianding={30508041,30508051,30507041,30507051,30506041,30506051}
	local jiandingname={"Giám Ğ¸nh Phù 5","Giám Ğ¸nh Phù 6","Giám Ğ¸nh Thß 5","Giám Ğ¸nh Thß 6","Giám Ğ¸nh Binh 5","Giám Ğ¸nh Binh 6"}

	local yirong={	30501007,30501008,30501009,30501010,30501011,
					30501012,30501013,30501014,30501015,30501016,}
	local yirongname={	"D¸ch Dung Ğan","D¸ch Dung Ğan","D¸ch Dung Ğan","D¸ch Dung Ğan","D¸ch Dung Ğan",
						"D¸ch Dung Ğan","D¸ch Dung Ğan","D¸ch Dung Ğan","D¸ch Dung Ğan","D¸ch Dung Ğan",}
						
	local lihua={30505023,30505024,30505025,30505026,}
	local lihuaname={"Pháo hoa có chæ Trung","Pháo hoa có chæ Thu","Pháo hoa có chæ Khoái","Pháo hoa có chæ LÕc",}

	local rdvalue = random( 10000 )
	local itemSN, itemName
	if rdvalue < 10 then	-- 0~0.1%
		local tp = random( 20 )
		itemSN=baoshi_lv2[tp]
		itemName=baoshiname_lv2[tp]
	elseif rdvalue < 10+100 then	--0.1%~1.1%
		itemSN=20307001
		itemName="Nhi­m Phát T­"
	elseif rdvalue < 10+100+300 then 	--1.1%~4.1%
		local tp = random( 20 )
		itemSN=baoshi_lv1[tp]
		itemName=baoshiname_lv1[tp]
	elseif rdvalue < 10+100+300+500 then 	--4.1%~9.1%
		itemSN=30503011
		itemName="Trân thú hoàn ğ°ng quy¬n trøc"
	elseif rdvalue < 10+100+300+500+500 then 	--9.1~14.1%
		local tp = random( 6 )
		itemSN=jianding[tp]
		itemName=jiandingname[tp]
	elseif rdvalue < 10+100+300+500+500+700 then 	--14.1%~21.1%
		local tp = random( 10 )
		itemSN=yirong[tp]
		itemName=yirongname[tp]
	elseif rdvalue < 10+100+300+500+500+700+1000 then 	--21.1%~31.1%
		local tp = random( 4 )
		itemSN=lihua[tp]
		itemName=lihuaname[tp]
	else
		return
	end

	-- ¸øÓèÍæ¼ÒËæ»ú½±ÀøÎïÆ·
	--local itemSN, itemName, _, bBroadCast = GetOneMissionBonusItem( 26 )
	if itemSN > -1 then
		TryRecieveItem( sceneId, selfId, itemSN, QUALITY_MUST_BE_CHANGE )					-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
	end

	local strText = GetName( sceneId, selfId ) .. "Khi #Ygiao nh¤t ph¦m ğß¶ng#W cho Dß½ng Vån Quäng" ..
					", may m¡n ğÕt ğßşc ban thß·ng #Rcüa tri«u ğình" .. itemName .. "."
	BroadMsgByChatPipe( sceneId, selfId, strText, 4 )
end

--**********************************
--·¢²¼¾ßÌåÈÎÎñ
--**********************************
function x050010_AnswerQuestion( sceneId, selfId, targetId )
	local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
	local strText = "    Ği¬m tích cñc hi®n nay cüa ngß½i là" .. score .. "Ği¬m, ngß½i có th¬ sØ døng ği¬m tích lûy trung thu" ..
					"Ği tìm LÕc Dß½ng-Khß½ng Lı (127, 154) c¥n 100 ği¬m, Tô Châu-Bao Thª Vinh (" ..
					"190, 168) c¥n 200 ği¬m, ĞÕi Lı-Ğ² TØ Ğ¢ng (109, 170) c¥n 50" ..
					"0 ği¬m ğ±i l¤y nguyên li®u n¤u nß¾ng, lÕi ği tìm NhÕc Thß¶ng Viên (193, 148) Tô Châu chuy¬n" ..
					"Ğªn Tây H° ğ¬ ğ±i v§t ph¦m trung thu ğ£c bi®t"
	x050010_NotifyFailBox( sceneId, selfId, targetId, strText )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x050010_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050010_g_Name then						--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if IsHaveMission( sceneId, selfId, x050010_g_MissionIdPre ) <= 0 then		-- Ã»ÓĞÈÎÎñ
		return
	end

	if CallScriptFunction( x050010_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) == 0 then
		return
	end

	AddNumText( sceneId, x050010_g_ScriptId, "Ğã ğ¦y lùi cuµc xâm nh§p cüa cao thü vào nh¤t ph¦m ğß¶ng", -1, x050010_g_NumText_Main )
	AddNumText( sceneId, x050010_g_ScriptId, "Giao l®nh bài nh¤t ph¦m ğß¶ng", -1, x050010_g_NumText_SubmitBooty )
	AddNumText( sceneId, x050010_g_ScriptId, "Ği¬m tích cñc trung thu có tác døng gì", -1, x050010_g_NumText_Question )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x050010_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local i, nearteammembercount, member
	local members = {}
	local validmembercount = 0

	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId )
	for i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050010_g_MissionId ) > 0 then		-- ÓĞÈÎÎñ
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050010_g_LimitMembers then
		x050010_NotifyFailTips( sceneId, leaderObjId, "S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050010_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
			--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
			SetMissionByIndex( sceneId, members[i], misIndex, x050010_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050010_g_MissionId, 0 )			-- ¹ØĞÄÉ±¹ÖÊÂ¼ş
			NewWorld( sceneId, members[i], destsceneId, x050010_g_Fuben_X, x050010_g_Fuben_Z )
		end
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x050010_OnPlayerEnter( sceneId, selfId )
	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", x050010_g_BackInfo.sceneId, x050010_g_BackInfo.x, x050010_g_BackInfo.z )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050010_OnKillObject( sceneId, selfId, objdataId, objId )						--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
	if IsHaveMission( sceneId, selfId, x050010_g_MissionId ) == 0 then
		return
	end

	-- É±ÁË Boss ¾ÍËãÓ®
	local SceneType = LuaFnGetCopySceneData_Param( sceneId, 6 )
	local CopySceneInfo = x050010_g_CopySceneInfo[SceneType]
	if not CopySceneInfo then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050010_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	local score, gainScore
	local gameWin = 0

	--È¡ ği¬mÉ±ËÀ¹ÖÎïtoÕ ğµ GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if x050010_g_MonsterGroupID == GroupID then
		gainScore = CopySceneInfo.monsterScore
	elseif x050010_g_BossGroupID == GroupID then
		gainScore = CopySceneInfo.bossScore
		gameWin = 1
	end

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local i, humanObjId
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local strText = "Anh ğÕt ğßşc ği¬m tích cñc trung thu" .. gainScore .. "Ği¬m"
	local strText2 = "Các hÕ thành công ğánh lui cuµc t§p kích l¥n này cüa cao thü nh¤t ph¦m ğß¶ng"
	for i = 0, num - 1 do
		humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )					--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

		if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then						--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
			score = GetMissionData( sceneId, humanObjId, MD_MIDAUTUMN_SCORE )
			score = score + gainScore
			SetMissionData( sceneId, humanObjId, MD_MIDAUTUMN_SCORE, score )
			x050010_NotifyFailTips( sceneId, humanObjId, strText )
			Msg2Player( sceneId, humanObjId, strText, MSG2PLAYER_PARA )

			if gameWin == 1 then
				Msg2Player( sceneId, humanObjId, strText2, MSG2PLAYER_PARA )
				if random( 100 ) <= CopySceneInfo.bootyOdds then
					AddMonsterDropItem( sceneId, objId, humanObjId, x050010_g_Booty )
				end
			end
		end
	end

	if gameWin == 1 then
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x050010_OnHumanDie( sceneId, selfId, killerId )
	if IsHaveMission( sceneId, selfId, x050010_g_MissionId ) > 0 then
		DelMission( sceneId, selfId, x050010_g_MissionId )								-- É¾³ı´ËÈÎÎñ
	end
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x050010_Exit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050010_g_MissionId ) > 0 then
	--	local misIndex = GetMissionIndexByID( sceneId, selfId, x050010_g_MissionId )
	--	ResetMissionEvent( sceneId, selfId, x050010_g_MissionId, 0 )					-- ²»¹ØĞÄÉ±¹ÖÊÂ¼ş
		DelMission( sceneId, selfId, x050010_g_MissionId )								-- É¾³ı´ËÈÎÎñ
	end

	NewWorld( sceneId, selfId, x050010_g_BackInfo.sceneId, x050010_g_BackInfo.x, x050010_g_BackInfo.z )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x050010_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050010_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050010_Exit( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x050010_g_CloseTick - leaveTickCount ) * x050010_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050010_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050010_g_LimitTotalHoldTime then									--¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050010_NotifyFailTips( sceneId, mems[i], "Nhi®m vø ğã quá gi¶, thoát khöi b¯i cänh" )
				x050010_Exit( sceneId, mems[i] )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		if GetMonsterCount( sceneId ) < 1 then
			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
		end
	end
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x050010_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ĞÑÄ¿ĞÅÏ¢ÌáÊ¾
--**********************************
function x050010_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
