--×½ÕäÊÞÈÎÎñ
--×½ÕäÊÞ
--MisDescBegin
--½Å±¾ºÅ
x250021_g_ScriptId = 250021

--ÈÎÎñºÅ
x250021_g_MissionId = 720

--Møc tiêu nhi®m vønpc
x250021_g_Name	="Vân Hàm Nhi"

--ÈÎÎñ¹éÀà
x250021_g_MissionKind = 11

--ÐÆng c¤p nhi®m vø 
x250021_g_MissionLevel = 55

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x250021_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x250021_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

x250021_g_PetDataID=3200	--ÈÎÎñÕäÊÞtoÕ ðµ ±àºÅ
--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x250021_g_MissionName="B¡t trân thú"
x250021_g_MissionInfo="Ti¬u thß nhà tôi mu¯n 1 con Dã Trß. "  --ÈÎÎñÃèÊö
x250021_g_MissionTarget="Bang Vân Hán Nhi tìm ðßþc 1 con Dã Trß. "		--Møc tiêu nhi®m vø
x250021_g_ContinueInfo="Các hÕ b¡t ðßþc Dã Trß chßa?"		--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x250021_g_MissionComplete="Làm t¯t l¡m. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

--ÈÎÎñ½±Àø
x250021_g_MoneyBonus = 2340

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x250021_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x250021_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250021_g_MissionName)
			AddText(sceneId,x250021_g_ContinueInfo)
		EndEvent( )
		bDone = x250021_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x250021_g_ScriptId,x250021_g_MissionId,bDone)
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x250021_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250021_g_MissionName)
			AddText(sceneId,x250021_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x250021_g_MissionTarget)
			--AddMoneyBonus( sceneId, x250021_g_MoneyBonus )
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x250021_g_ScriptId,x250021_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x250021_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250021_g_MissionId) > 0 then
		AddNumText(sceneId,x250021_g_ScriptId,x250021_g_MissionName,3,-1);
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x250021_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x250021_g_ScriptId,x250021_g_MissionName,4,-1);
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x250021_CheckAccept( sceneId, selfId )
	--C¥n 1c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--¼ì²âÐúng·ñÀë·ÅÆú³¬¹ý15 phút,Èç¹ûÎ´³¬¹ý,Ôò²»¿ÉÒÔTiªp thøÈÎÎñ.Ô­ÒòÐúngÎªÁË·ÀÖ¹Íæ¼ÒÀ´»ØË¢ÈÎÎñ,ÒÔË¢µ½×Ô¼ººÃ×¥toÕ ðµ ÕäÊÞ.
--**********************************
function x250021_GetTimePass( sceneId, selfId )        --create by Steven.Han
   
  --¼ì²â×½ÕäÊÞÈÎÎñ·ÅÆúÊ±¼äÐúng·ñ³¬¹ý15 phút,Èç¹û³¬¹ý,Tr· v«1,·ñÔò,Tr· v«0

  local iDayCount=GetMissionData( sceneId, selfId, MD_CAPTUREPETABANDON_TIME )
  
  if( 0 == iDayCount ) then
      return 1                   --Èç¹ûÐúng0,±íÊ¾»¹Î´·ÅÆú¹ý´ËÈÎÎñ,Ðúng¿ÉÒÔTiªp thøtoÕ ðµ .
  end
  
  local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)

	local OldDaytime = floor(iDayCount/100)	--ÉÏ´Î·ÅÆútoÕ ðµ Ê±¼ä(Ìì)
	local OldQuarterTime = mod(iDayCount,100)	--ÉÏ´Î·ÅÆútoÕ ðµ Ê±¼ä(¿Ì)  	
  
  if( CurDaytime > OldDaytime ) then
      return 1               --Èç¹ûÒÑ¾­³¬¹ýmµt ÌìÁË,ÔòÈÏÎª³¬¹ýÁË15 phút.
  end
  
  if( OldQuarterTime == CurQuarterTime ) then
      return 0
  end	
	
	return 1

end

--**********************************
--Tiªp thø
--**********************************
function x250021_OnAccept( sceneId, selfId )

  if( 0 == x250021_GetTimePass( sceneId, selfId ) ) then      
      --Msg2Player(  sceneId, selfId,"#Y¾à·ÅÆú´ËÈÎÎñ²»×ã15 phút,ÎÞ·¨ÔÙ´ÎTiªp thø",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
      
		  BeginEvent(sceneId)
			  strText = format("Th¶i gian bö nhi®m vø không ðü 15 phút, không th¬ tiªp nh§n tiªp")
			  AddText(sceneId,strText)
 		  EndEvent(sceneId)

 		  DispatchMissionTips(sceneId,selfId)
 		      
      return
  end	
  
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x250021_g_MissionId, x250021_g_ScriptId,0,0,0 )
	misIndex = GetMissionIndexByID(sceneId,selfId,x250021_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex(sceneId,selfId,misIndex,1,x250021_g_ScriptId)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
	--¼ì²âÍæ¼ÒÉíÉÏtoÕ ðµ µÀ¾ßÐúng·ñÒÑ¾­Thöa mãnÍê³ÉÌõ¼þ,Èç¹ûÒÑ¾­Thöa mãn,Ôò°ÑHoàn t¤t nhi®m vøtoÕ ðµ ±äÁ¿ÖÃÎª1
	if x250021_CheckSubmit( sceneId, selfId ) then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
	end
	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
--	BeginEvent(sceneId)
--		AddText(sceneId,x250021_g_MissionInfo)
--	EndEvent(sceneId)
--	DispatchEventList(sceneId,selfId,targetId)	--¶Ô»°¿òÏÔÊ¾MissionInfo
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: b¡t Trân thú",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
end

--**********************************
--·ÅÆú
--**********************************
function x250021_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x250021_g_MissionId )
    
    local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä	
	  SetMissionData(sceneId,selfId,MD_CAPTUREPETABANDON_TIME,CurTime )     --°Ñµ±Ç°Ê±¼äÉèÖÃÎª·ÅÆúÊ±¼ä  Steven.Han
    --Msg2Player(  sceneId, selfId,"#YÄã·ÅÆúÁË²¶×½ÕäÊÞÈÎÎñ,15 phútÖ®ÄÚÄã½«ÎÞ·¨ÔÙ´ÎTiªp thø´ËÈÎÎñ",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
    
end

--**********************************
--¼ÌÐø
--**********************************
function x250021_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x250021_g_MissionName)
    AddText(sceneId,x250021_g_MissionComplete)
    --AddMoneyBonus( sceneId, x250021_g_MoneyBonus )
    --for i, item in g_ItemBonus do
	--	AddItemBonus( sceneId, item.id, item.num )
	--end
    --for i, item in g_RadioItemBonus do
	--	AddRadioItemBonus( sceneId, item.id, item.num )
	--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x250021_g_ScriptId,x250021_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x250021_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x250021_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	-- ði¬mµ½Ð¯´øÕäÊÞÊýÁ¿
	PetNum = LuaFnGetPetCount(sceneId,selfId)
	if PetNum ~= 0 then
		for i = 1,PetNum,1 do
			PetIndex = i - 1		--ÕäÊÞindex´Ó0¿ªÊ¼
			if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == x250021_g_PetDataID then
				return 2
			end
		end
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x250021_OnSubmit( sceneId, selfId, targetId,selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x250021_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x250021_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x250021_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Íæ¼ÒÌá½»toÕ ðµ ÎïÆ·¼°ÕäÊÞ
--**********************************
function x250021_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if indexpet == 255 then --Ë÷ÒýÖµTr· v«255±íÊ¾¿Õ,Ã»Ìá½»ÕäÊÞ
		BeginEvent(sceneId)
			strText = "Hãy ðem trân thú vào trong cØa s±"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		-- ði¬mµ½·ÅÈë´°¿ÚÖÐtoÕ ðµ ÕäÊÞ±àºÅ
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, indexpet )
		if petdataid == x250021_g_PetDataID then
			--½±Àø½ðÇ®²¢ÌáÊ¾
			
				BeginEvent(sceneId)
					AddText(sceneId,"Chúc m×ng ðã Hoàn t¤t nhi®m vø, t£ng cho các hÕ #{_MONEY"..x250021_g_MoneyBonus.."}")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,npcid)
			ret0 = DelMission( sceneId, selfId, x250021_g_MissionId ) --É¾³ýÈÎÎñ
			ret1 = LuaFnDeletePet(sceneId, selfId, indexpet ) --É¾³ýÕäÊÞ
			if ret0>0 and ret1>0 then
				Msg2Player(  sceneId, selfId,"Hoàn t¤t nhi®m vø: b¡t trân thú",MSG2PLAYER_PARA )
				AddMoney(sceneId, selfId, x250021_g_MoneyBonus )
			end
			
			BeginEvent(sceneId)
				strText = "Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				strText = "Ði«u ki®n trân thú không phù hþp"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

