--002952

-- ÉÙÊÒÉ½¸±±¾
-- ÈçÒâĞ¡×ÓÁÙÊ±ÖÆ×÷

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x002952_g_ScriptId = 002952
x002952_g_Name = "Huy«n T×"


--MisDescEnd
--************************************************************************
x002952_TIME_2000_01_03_ = 946828868

x002952_g_SceneData_1 = 8   -- ¼ÇÂ¼¸±±¾Ë¢¹Öµ½µÚ¼¸Åú

x002952_g_SceneData_3 = 9	-- 
x002952_g_SceneData_4 = 10	-- 
x002952_g_SceneData_5 = 11	-- 
x002952_g_SceneData_6 = 12	-- 

--x002952_g_SceneData_7 = 13	-- Íæ¼ÒµÈc¤p

x002952_g_SD_Monster_1 	 = 14			-- ÔİÎ´Ê¹ÓÃ
x002952_g_SD_Monster_1_T = 15			-- ÔİÎ´Ê¹ÓÃ


--x002952_g_SD_Monster_2 	 = 16
--x002952_g_SD_Monster_2_T = 17
--x002952_g_SD_Monster_3 	 = 18
--x002952_g_SD_Monster_3_T = 19

--x002952_g_KillMonsCount_Qincheng = 20
--x002952_g_KillMonsCount_Qinjia 	 = 21
--x002952_g_KillMonsCount_Lama		 = 22

-- ¹Ø±Õ¸±±¾toÕ ğµ Ê±¼ä¼ÇÂ¼
x002952_g_CloseTime = 25

-- ¸±±¾th¤t bÕitoÕ ğµ ±ê¼Ç
x002952_g_MissionLost = 26

-- ¿ØÖÆH® th¯ngÌáÊ¾toÕ ğµ Ê±¼ä
x002952_g_SystemTipsTime = 28

--¸±±¾Ãû³Æ
x002952_g_CopySceneName = "Thiªu Th¤t S½n"
x002952_g_CopySceneType = FUBEN_DAZHAN_SSS	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x002952_g_CopySceneMap = "cangjingge_80JQTZ.nav"
x002952_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x002952_g_TickTime = 1						--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x002952_g_DayTime = 3						--mµt ÌìÄÚ¿ÉÒÔ½øÈë¸±±¾toÕ ğµ ´ÎÊı
x002952_g_LimitTotalHoldTime = 360--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x002952_g_LimitTimeSuccess = 500	--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x002952_g_CloseTick = 3						--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x002952_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x002952_g_DeadTrans = 0						--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x002952_g_Fuben_X = 130						--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x002952_g_Fuben_Z = 204						--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x002952_g_Back_X = 282							--Ô´³¡¾°Î»ÖÃX
x002952_g_Back_Z = 228						--Ô´³¡¾°Î»ÖÃZ
x002952_g_Back_SceneId = 2				--Ô´³¡¾°Id

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x002952_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			--AddText(sceneId,"#{yanziwu_info}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetName(sceneId, targetId) ~= x002952_g_Name  then
		return
	end

	-- ¸ù¾İÍæ¼ÒtoÕ ğµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ğµ ¸±±¾
	-- 2,¼ì²âÍæ¼ÒĞúng²»Ğúng×é¶ÓÁË
	if GetTeamSize(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BKhiêu chiªn Thiªu Th¤t S½n");
			AddText(sceneId,"Ğ¬ tham gia c¥n có t± ğµi 3 ngß¶i tr· lên !");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 3,¼ì²âÍæ¼ÒĞúng²»Ğúng¶Ó³¤
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BKhiêu chiªn Thiªu Th¤t S½n");
			AddText(sceneId,"Các hÕ không phäi nhóm trß·ng, hãy g÷i nhóm trß·ng ğªn g£p ta.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 4,¼ì²âĞúng²»ĞúngÈË¶¼µ½Î»ÁË
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BKhiêu chiªn Thiªu Th¤t S½n");
			AddText(sceneId," Thành viên trong nhóm không · g¥n ğây");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--5,¼ì²â¶ÓÎéÀïÍ·toÕ ğµ Ã¿cáiÍæ¼ÒĞúng²»Ğúng¶¼µ½60c¤pÁË
	local nPlayerNum = GetNearTeamCount(sceneId,selfId)

	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		
		if GetLevel(sceneId,nPlayerId) < 60  then
			BeginEvent(sceneId)
				AddText(sceneId,"#BKhiêu chiªn Thiªu Th¤t S½n");
				AddText(sceneId,"C¥n c¤p ğµ 60 ğ¬ tham gia thØ thách này. Trong ğµi cüa ngß½i, có ngß¶i chßa ğü c¤p ğµ.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			return
		end
	end

	-- Ã¿ÌìÖ»ÄÜ3´Î
	--MD_SSS_TIMES		=	246  -- Ã¿Ìì½øÈëÉÙÊÒÉ½toÕ ğµ ´ÎÊı
	--MD_PRE_SSS_TIME	=	247  -- ÉÏmµt ´ÎÈ¥ÉÙÊÒÉ½toÕ ğµ Ê±¼ä

	local strName = {}
	strName[1] = ""
	strName[2] = ""
	strName[3] = ""
	strName[4] = ""
	strName[5] = ""
	strName[6] = ""

	local nPlayerNum = GetNearTeamCount(sceneId,selfId)
	local bOk = 1
	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		
		local nTimes = GetMissionData(sceneId,nPlayerId, MD_SSS_TIMES) 
		local nPreTime = GetMissionData(sceneId,nPlayerId, MD_PRE_SSS_TIME)
		local nCurTime = LuaFnGetCurrentTime()
		if (nCurTime - nPreTime  >= 3600*24)  or
			 (floor((nCurTime-x002952_TIME_2000_01_03_)/(3600*24)) ~= floor((nPreTime-x002952_TIME_2000_01_03_)/(3600*24)))   then
			nTimes = 0
			nPreTime = nCurTime
			SetMissionData(sceneId, nPlayerId, MD_SSS_TIMES, nTimes)
			SetMissionData(sceneId, nPlayerId, MD_PRE_SSS_TIME, nPreTime)
		end
		
		if nTimes >= x002952_g_DayTime then
			bOk = 0
			strName[i+1] = GetName(sceneId, nPlayerId)
		end
		
	end
	local nCount = 0

	if bOk == 0  then
		local szAllName = ""
		for i=1, 6  do
			if strName[i] ~= ""  then
				if nCount == 0  then
					szAllName = strName[i]
				else
					szAllName = szAllName .. "," .. strName[i]
				end
				nCount = nCount+1
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#BKhiêu chiªn Thiªu Th¤t S½n");
			AddText(sceneId,"Thành viên " .. szAllName .. " ğã tham gia ğü lßşt thØ thách trong ngày.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	
	end
	
	-- ËùÓĞtoÕ ğµ ¼ì²âÍ¨¹ı,
	x002952_MakeCopyScene(sceneId, selfId)
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x002952_OnEnumerate( sceneId, selfId, targetId )
	-- ×îºÃTÕi ÕâÀï×ömµt cáiTênÅĞ¶¨
	if GetName(sceneId, targetId) == x002952_g_Name  then
		AddNumText( sceneId, x002952_g_ScriptId, "#GThØ thách #YThiªu Th¤t S½n",10 ,-1  )
		AddNumText( sceneId, x002952_g_ScriptId, "V« Thiªu th¤t s½n",8 ,1  )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x002952_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x002952_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x002952_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x002952_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x002952_MakeCopyScene( sceneId, selfId )
	
	-- Ê¹ÓÃĞµi viên toÕ ğµ µÈc¤pÀ´Ëã³ö¹ÖÎïtoÕ ğµ µÈc¤p
	local param0 = 4;
	local param1 = 3;

	--×îÖÕ½á¹û
	local mylevel = 0;

	--ÁÙÊ±±äÁ¿
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --Ã»ÓĞ¶ÓÎé
		mylevel = GetLevel(sceneId, selfId)
	end
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "cangjingge_80JQTZ.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x002952_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x002952_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x002952_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x002952_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--É±ËÀBosstoÕ ğµ ÊıÁ¿
	
	-- ¾çÇéÓÃµ½toÕ ğµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < 100 then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = 10;
	end

	-- Ê¹ÓÃµÚ13Î»,¼ÇÂ¼¹ÖÎïÊµ¼ÊtoÕ ğµ µÈc¤p
	LuaFnSetCopySceneData_Param(sceneId, x002952_g_SceneData_7, mylevel)
	
	--ÉèÖÃ³¡¾°ÖĞtoÕ ğµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "cangjingge_80JQTZ_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cangjingge_80JQTZ_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công! Vui lòng ğşi giây lát s¨ d¸ch chuy¬n!");
		else
			AddText(sceneId,"S¯ lßşng bän sao vßşt quá gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x002952_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ğµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼şÃ»ÓĞ×é¶Ó,¾Í´«ËÍCái này Íæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,µ«ĞúngÍæ¼Ò²»Ğúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,²¢ÇÒCái này Íæ¼ÒĞúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		x002952_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x002952_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x002952_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x002952_GotoScene(sceneId, ObjId, destsceneId)
	NewWorld( sceneId, ObjId, destsceneId, x002952_g_Fuben_X, x002952_g_Fuben_Z) ;
end


--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x002952_OnPlayerEnter( sceneId, selfId )
	-- 3,ÉèÖ giâyÀÍöÊÂ¼ş
	
	-- ÉèÖÃÍæ¼ÒtoÕ ğµ ÕóÓªÎª 109
	SetUnitCampID(sceneId, selfId, selfId, 109)
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x002952_g_Fuben_X, x002952_g_Fuben_Z )
	
	local nTimes = GetMissionData(sceneId,selfId, MD_SSS_TIMES) 
	local nPreTime = GetMissionData(sceneId,selfId, MD_PRE_SSS_TIME)
	local nCurTime = LuaFnGetCurrentTime()
	
	SetMissionData(sceneId, selfId, MD_SSS_TIMES, nTimes+1) 
	SetMissionData(sceneId, selfId, MD_PRE_SSS_TIME, nCurTime)
	
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x002952_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x002952_OnAbandon( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x002952_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x002952_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x002952_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x002952_OnDie( sceneId, objId, killerId )
	
end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x002952_TipAllHuman( sceneId, Str )
	--  ğÕt ğßşc³¡¾°ÀïÍ·toÕ ğµ ËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x002952_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x002952_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x002952_OnItemChanged( sceneId, selfId, itemdataId )
	
end



