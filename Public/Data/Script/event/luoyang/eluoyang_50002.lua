--×½ÕäÊŞÈÎÎñ
--×½ÕäÊŞ
--MisDescBegin
--½Å±¾ºÅ
x250002_g_ScriptId = 250002

--ÈÎÎñºÅ
x250002_g_MissionId = 720

--Møc tiêu nhi®m vønpc
x250002_g_Name	="Vân Hàm Nhi"

--ÈÎÎñ¹éÀà
x250002_g_MissionKind = 11

--ĞÆng c¤p nhi®m vø 
x250002_g_MissionLevel = 10

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x250002_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x250002_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»

x250002_g_PetDataID=3010	--ÈÎÎñÕäÊŞtoÕ ğµ ±àºÅ
--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x250002_g_MissionName="B¡t trân thú"
x250002_g_MissionInfo="Ti¬u thß nhà tôi mu¯n 1 con Th¯. "  --ÈÎÎñÃèÊö
x250002_g_MissionTarget="Bang Vân Hán Nhi tìm ğßşc 1 con Th¯. "		--Møc tiêu nhi®m vø
x250002_g_ContinueInfo="Các hÕ b¡t ğßşc Th¯ chßa?"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x250002_g_MissionComplete="Làm t¯t l¡m. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--ÈÎÎñ½±Àø
x250002_g_MoneyBonus = 180

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x250002_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x250002_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250002_g_MissionName)
			AddText(sceneId,x250002_g_ContinueInfo)
		EndEvent( )
		bDone = x250002_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x250002_g_ScriptId,x250002_g_MissionId,bDone)
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x250002_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250002_g_MissionName)
			AddText(sceneId,x250002_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x250002_g_MissionTarget)
			--AddMoneyBonus( sceneId, x250002_g_MoneyBonus )
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x250002_g_ScriptId,x250002_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x250002_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250002_g_MissionId) > 0 then
		AddNumText(sceneId,x250002_g_ScriptId,x250002_g_MissionName,3,-1);
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x250002_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x250002_g_ScriptId,x250002_g_MissionName,4,-1);
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x250002_CheckAccept( sceneId, selfId )
	--C¥n 1c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--¼ì²âĞúng·ñÀë·ÅÆú³¬¹ı15 phút,Èç¹ûÎ´³¬¹ı,Ôò²»¿ÉÒÔTiªp thøÈÎÎñ.Ô­ÒòĞúngÎªÁË·ÀÖ¹Íæ¼ÒÀ´»ØË¢ÈÎÎñ,ÒÔË¢µ½×Ô¼ººÃ×¥toÕ ğµ ÕäÊŞ.
--**********************************
function x250002_GetTimePass( sceneId, selfId )        --create by Steven.Han
   
  --¼ì²â×½ÕäÊŞÈÎÎñ·ÅÆúÊ±¼äĞúng·ñ³¬¹ı15 phút,Èç¹û³¬¹ı,Tr· v«1,·ñÔò,Tr· v«0

  local iDayCount=GetMissionData( sceneId, selfId, MD_CAPTUREPETABANDON_TIME )
  
  if( 0 == iDayCount ) then
      return 1                   --Èç¹ûĞúng0,±íÊ¾»¹Î´·ÅÆú¹ı´ËÈÎÎñ,Ğúng¿ÉÒÔTiªp thøtoÕ ğµ .
  end
  
  local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)

	local OldDaytime = floor(iDayCount/100)	--ÉÏ´Î·ÅÆútoÕ ğµ Ê±¼ä(Ìì)
	local OldQuarterTime = mod(iDayCount,100)	--ÉÏ´Î·ÅÆútoÕ ğµ Ê±¼ä(¿Ì)  	
  
  if( CurDaytime > OldDaytime ) then
      return 1               --Èç¹ûÒÑ¾­³¬¹ımµt ÌìÁË,ÔòÈÏÎª³¬¹ıÁË15 phút.
  end
  
  if( OldQuarterTime == CurQuarterTime ) then
      return 0
  end	
	
	return 1

end

--**********************************
--Tiªp thø
--**********************************
function x250002_OnAccept( sceneId, selfId )

  if( 0 == x250002_GetTimePass( sceneId, selfId ) ) then      
      --Msg2Player(  sceneId, selfId,"#Y¾à·ÅÆú´ËÈÎÎñ²»×ã15 phút,ÎŞ·¨ÔÙ´ÎTiªp thø",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
      
		  BeginEvent(sceneId)
			  strText = format("Th¶i gian bö nhi®m vø không ğü 15 phút, không th¬ tiªp nh§n tiªp")
			  AddText(sceneId,strText)
 		  EndEvent(sceneId)

 		  DispatchMissionTips(sceneId,selfId)
 		      
      return
  end	
  
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x250002_g_MissionId, x250002_g_ScriptId,0,0,0 )	SetMissionEvent(sceneId, selfId, x250002_g_MissionId, 3)
	misIndex = GetMissionIndexByID(sceneId,selfId,x250002_g_MissionId)			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionEvent(sceneId, selfId, x250002_g_MissionId, 3)
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex(sceneId,selfId,misIndex,1,x250002_g_ScriptId)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
	--¼ì²âÍæ¼ÒÉíÉÏtoÕ ğµ µÀ¾ßĞúng·ñÒÑ¾­Thöa mãnÍê³ÉÌõ¼ş,Èç¹ûÒÑ¾­Thöa mãn,Ôò°ÑHoàn t¤t nhi®m vøtoÕ ğµ ±äÁ¿ÖÃÎª1
	if x250002_CheckSubmit( sceneId, selfId ) == 2 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
	end
	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
--	BeginEvent(sceneId)
--		AddText(sceneId,x250002_g_MissionInfo)
--	EndEvent(sceneId)
--	DispatchEventList(sceneId,selfId,targetId)	--¶Ô»°¿òÏÔÊ¾MissionInfo
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: b¡t Trân thú",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
end

--**********************************
--·ÅÆú
--**********************************
function x250002_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x250002_g_MissionId )
    
    local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä	
	  SetMissionData(sceneId,selfId,MD_CAPTUREPETABANDON_TIME,CurTime )     --°Ñµ±Ç°Ê±¼äÉèÖÃÎª·ÅÆúÊ±¼ä  Steven.Han
    --Msg2Player(  sceneId, selfId,"#YÄã·ÅÆúÁË²¶×½ÕäÊŞÈÎÎñ,15 phútÖ®ÄÚÄã½«ÎŞ·¨ÔÙ´ÎTiªp thø´ËÈÎÎñ",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
    
end

--**********************************
--¼ÌĞø
--**********************************
function x250002_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x250002_g_MissionName)
    AddText(sceneId,x250002_g_MissionComplete)
    --AddMoneyBonus( sceneId, x250002_g_MoneyBonus )
    --for i, item in g_ItemBonus do
	--	AddItemBonus( sceneId, item.id, item.num )
	--end
    --for i, item in g_RadioItemBonus do
	--	AddRadioItemBonus( sceneId, item.id, item.num )
	--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x250002_g_ScriptId,x250002_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x250002_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x250002_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	-- ği¬mµ½Ğ¯´øÕäÊŞÊıÁ¿
	PetNum = LuaFnGetPetCount(sceneId,selfId)
	if PetNum ~= 0 then
		for i = 1,PetNum,1 do
			PetIndex = i - 1		--ÕäÊŞindex´Ó0¿ªÊ¼
			if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == x250002_g_PetDataID then
				return 2
			end
		end
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x250002_OnSubmit( sceneId, selfId, targetId,selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x250002_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x250002_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x250002_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Íæ¼ÒÌá½»toÕ ğµ ÎïÆ·¼°ÕäÊŞ
--**********************************
function x250002_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if indexpet == 255 then --Ë÷ÒıÖµTr· v«255±íÊ¾¿Õ,Ã»Ìá½»ÕäÊŞ
		BeginEvent(sceneId)
			strText = "Hãy ğem trân thú vào trong cØa s±"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		-- ği¬mµ½·ÅÈë´°¿ÚÖĞtoÕ ğµ ÕäÊŞ±àºÅ
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, indexpet )
		if petdataid == x250002_g_PetDataID then
			--½±Àø½ğÇ®²¢ÌáÊ¾
			
				BeginEvent(sceneId)
					AddText(sceneId,"Chúc m×ng ğã Hoàn t¤t nhi®m vø, t£ng cho các hÕ #{_MONEY"..x250002_g_MoneyBonus.."}")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,npcid)
			ret0 = DelMission( sceneId, selfId, x250002_g_MissionId ) --É¾³ıÈÎÎñ
			ret1 = LuaFnDeletePet(sceneId, selfId, indexpet ) --É¾³ıÕäÊŞ
			if ret0>0 and ret1>0 then
				Msg2Player(  sceneId, selfId,"Hoàn t¤t nhi®m vø: b¡t trân thú",MSG2PLAYER_PARA )
				AddMoney(sceneId, selfId, x250002_g_MoneyBonus )
			end
			
			BeginEvent(sceneId)
				strText = "Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				strText = "Ği«u ki®n trân thú không phù hşp"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--ÕäÊŞ¸Ä±ä
--**********************************
function x250002_OnPetChanged( sceneId, selfId, petDataId)
	misIndex = GetMissionIndexByID(sceneId,selfId,x250002_g_MissionId)			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	--¼ì²âÍæ¼ÒÉíÉÏtoÕ ğµ µÀ¾ßĞúng·ñÒÑ¾­Thöa mãnÍê³ÉÌõ¼ş,Èç¹ûÒÑ¾­Thöa mãn,Ôò°ÑHoàn t¤t nhi®m vøtoÕ ğµ ±äÁ¿ÖÃÎª1
	if x250002_CheckSubmit( sceneId, selfId )  == 2 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
	else
		SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª0
	end
end
