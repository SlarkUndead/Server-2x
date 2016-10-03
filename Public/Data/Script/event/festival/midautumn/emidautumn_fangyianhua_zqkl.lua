--Ò¹Tây H° ÃÀÀötoÕ ðµ Ò¹Tây H° ÖÐÇï¿ìÀÖ
--050018

--MisDescBegin
--½Å±¾ºÅ
x050018_g_ScriptId = 050018


--ÈÎÎñºÅ
x050018_g_MissionId = 131

--Ä¿±êNPC
x050018_g_Name	="Lång Ch¤n"

--ÈÎÎñ¹éÀà
x050018_g_MissionKind = 3

--ÐÆng c¤p nhi®m vø 
x050018_g_MissionLevel = 10

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x050018_g_IfMissionElite = 0

--ÈÎÎñÃû
x050018_g_MissionName="#{ZQSY_2007912_007}"
x050018_g_MissionInfo="#{ZQSY_2007912_008}"
x050018_g_MissionTarget="#{ZQSY_2007912_009}"
x050018_g_MissionContinue="#{ZQSY_2007912_010}"
x050018_g_MissionComplete="#{ZQSY_2007912_011}"

x050018_g_Custom	= { {id="Ðã phóng Trung Thu Vui Vë",num=1} }
x050018_g_IsMissionOkFail = 0
--MisDescEnd

x050018_g_MissionId_mutex = 132;

--»î¶¯Ê±¼ä
x050018_g_StartDayTime = 8257   --»î¶¯¿ªÊ¼Ê±¼ä 2008-9-14,°üº¬µ±ÈÕ
x050018_g_EndDayTime = 8282   --»î¶¯½áÊøÊ±¼ä 2008-10-09,°üº¬µ±ÈÕ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050018_OnDefaultEvent( sceneId, selfId, targetId )
	if IsHaveMission(sceneId, selfId, x050018_g_MissionId) > 0 then
		local bDone = x050018_CheckSubmit( sceneId, selfId )
		BeginEvent(sceneId)
			AddText(sceneId,x050018_g_MissionName)
			AddText(sceneId,x050018_g_MissionContinue)
		EndEvent( )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x050018_g_ScriptId,x050018_g_MissionId,bDone)		
	elseif x050018_CheckAccept(sceneId,selfId) > 0 then
	
		if x050018_AcceptCountCheck(sceneId, selfId) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,x050018_g_MissionName)
				AddText(sceneId,x050018_g_MissionInfo)
				AddText(sceneId,x050018_g_MissionTarget)
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x050018_g_ScriptId,x050018_g_MissionId)
		else
			x050018_NotifyBox(sceneId, selfId, targetId, "#{ZQSY_2007912_012}");
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050018_OnEnumerate( sceneId, selfId, targetId )
	if IsHaveMission(sceneId, selfId, x050018_g_MissionId) > 0 then
		AddNumText(sceneId, x050018_g_ScriptId, x050018_g_MissionName, 4, -1);
	elseif x050018_CheckAccept(sceneId, selfId) == 1 then
		AddNumText(sceneId, x050018_g_ScriptId, x050018_g_MissionName, 3, -1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x050018_CheckAccept( sceneId, selfId )
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x050018_g_MissionLevel then
		return 0;
	end

	--ÒÑ¾­ÓÐÁË
	if IsHaveMission(sceneId, selfId, x050018_g_MissionId) > 0
	 or IsHaveMission(sceneId, selfId, x050018_g_MissionId_mutex) > 0 then
		return 0;
	end

	local timeCheck = x050018_TimeCheck(sceneId, selfId);
	if not timeCheck or timeCheck ~= 1 then
		return 0;
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x050018_OnAccept( sceneId, selfId, targetId )
	if x050018_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	if x050018_AcceptCountCheck(sceneId, selfId) ~= 1 then
		return 0
	end

	local ret = AddMission( sceneId,selfId, x050018_g_MissionId, x050018_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(sceneId, selfId, "#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y", MSG2PLAYER_PARA);
		return
	end

	Msg2Player(sceneId, selfId, "#YNh§n nhi®m vø: "..x050018_g_MissionName..".", MSG2PLAYER_PARA);

	-- ÈÎÎñ±äÁ¿
	local misIndex = GetMissionIndexByID(sceneId, selfId, x050018_g_MissionId);
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
end

function x050018_OnSceneTimer(sceneId, selfId)
end

--**********************************
--·ÅÆú
--**********************************
function x050018_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission(sceneId, selfId, x050018_g_MissionId);
end

--**********************************
--¼ÌÐø
--**********************************
function x050018_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x050018_g_MissionName)
	AddText(sceneId,x050018_g_MissionComplete)
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x050018_g_ScriptId,x050018_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050018_CheckSubmit( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x050018_g_MissionId) <= 0 then
		return 0;
	end

	local misIndex = GetMissionIndexByID(sceneId, selfId, x050018_g_MissionId);
	if not misIndex or misIndex < 0 then
		return 0;
	end
	
	local misParam0 = GetMissionParam(sceneId, selfId, misIndex, 0);
	if not misParam0 or misParam0 ~= 1 then
		return 0;
	end
	
	return 1;
end

--**********************************
--Ìá½»
--**********************************
function x050018_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x050018_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		local level = GetLevel(sceneId, selfId);
		local k = 80;
		local b = -326;
		local c = 2;
		local exp = (k*level+b)*c;
		if exp > 0 then
			LuaFnAddExp( sceneId, selfId, exp)
		end
		DelMission( sceneId, selfId, x050018_g_MissionId )
		MissionCom( sceneId, selfId, x050018_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thành nhi®m vø: "..x050018_g_MissionName..".",MSG2PLAYER_PARA )
	
		--¸üÐÂ½ñÌì½ÓÁË¼¸´ÎÈÎÎñ
		local misData = GetMissionData(sceneId, selfId, MD_SHANG_YUE_FANG_YIAN_HUA);
		if misData then
			local lastDay = floor(misData / 1000);
			local dayCount = misData - lastDay * 1000;
			local thisDay = GetDayTime();
			thisDay = (thisDay * 1000);
			thisDay = floor(thisDay / 1000);
			if thisDay ~= lastDay then
				dayCount = 1;
			else
				dayCount = dayCount + 1;
			end

			misData = thisDay * 1000 + dayCount;
			SetMissionData(sceneId, selfId, MD_SHANG_YUE_FANG_YIAN_HUA, misData);
		end
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050018_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x050018_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x050018_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x050018_OnItemUsed( sceneId, selfId, itemdataId )
	if not itemdataId or itemdataId ~= 30505123 then
		return 0;
	end
	
	local timeCheck = x050018_TimeCheck(sceneId, selfId);
	if not timeCheck or timeCheck ~= 1 then
		return 0;
	end
	
	local xPos, zPos = LuaFnGetWorldPos(sceneId, selfId);
	if xPos and zPos and sceneId
		and xPos >= 267 and xPos <= 282
		and zPos >= 173 and zPos <= 187
		and sceneId == 121
		and IsHaveMission(sceneId, selfId, x050018_g_MissionId) > 0 then
		
		local misIndex = GetMissionIndexByID(sceneId, selfId, x050018_g_MissionId);
		if not misIndex or misIndex < 0 then
			return 0;
		end
		
		local misParam0 = GetMissionParam(sceneId, selfId, misIndex, 0);
		if misParam0 and misParam0 ~= 1 then
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
			SetMissionByIndex(sceneId, selfId, misIndex, 1, 1);
			
			x050018_NotifyTips(sceneId, selfId, "Nhi®m vø ðã hoàn thành");
		end
	end
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050018_NotifyBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x050018_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--½ñÌìÐúng·ñÒÑ¾­×ö¹»´ÎÊý
--**********************************
function x050018_AcceptCountCheck(sceneId, selfId)
	local misData = GetMissionData(sceneId, selfId, MD_SHANG_YUE_FANG_YIAN_HUA);
	if not misData then
		return 0;
	end
	
	local lastDay = floor(misData / 1000);
	local dayCount = misData - lastDay * 1000;
	local thisDay = GetDayTime();
	thisDay = (thisDay * 1000);
	thisDay = floor(thisDay / 1000);
	if thisDay == lastDay and dayCount >= 10 then
		return 0;
	end
	
	return 1;
end

--**********************************
--Ê±¼ätoÕ ðµ ¼ì²â
--**********************************
function x050018_TimeCheck(sceneId, selfId)
	local curDay = GetDayTime();
	if not curDay then
		return 0;
	end
	
	if curDay < x050018_g_StartDayTime or curDay > x050018_g_EndDayTime then
		return 0;
	end

	local nHour = GetHour();
	if (nHour >= 12 and nHour < 13) or (nHour >= 18 and nHour < 19) then
	else
		return 0;
	end
	
	return 1;
end
