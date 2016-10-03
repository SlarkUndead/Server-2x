--»î¶¯¡ª¡ª
--Ê¥µ®½ÚÔªµ©»î¶¯-ÊÕ¼¯ÃÅÅÉµÀ¾ß»»½±Àø

--½Å±¾ºÅ
x050026_g_ScriptId = 050026



x050026_g_HeKaId = {
	                 20310011,
	                 20310017,
	                 20310012,
	                 20310019,
	                 20310014,
	                 20310018,
	                 20310015,
	                 20310016,
	                 20310013,	
}			                                   --ºØ¿¨ID

x050026_g_GiftId = {
                   30501127,	--Ò×ÈÝµ¤: ÌÇ¹ûºÐ*1
                   30501126,	--Ò×ÈÝµ¤: ´óÁåîõ*1
                   30501125,	--Ò×ÈÝµ¤: Ê¥µ®Ê÷*1
                   30505146,	--ÐÒ¸£Ñ©Çò*10
                   10141101,	--5¸ñ²ÄÁÏ°ü(Ê¥µ®ÍàÍâÐÍ)
                   10141100,	--5¸ñÎïÆ·°ü(Ê¥µ®ÀÏÈË¿Ú´üÍâÐÍ)
                   10141105,	--×øÆï: ÍÒÄñ
                   10141106,	--×øÆï: Ä¾Å£Á÷Âí
                   10141107,	--×øÆï: ÐÜ
                   10141108,	--×øÆï: ÍÃ×Ó
                   10141109,	--×øÆï: Â½Îá
                   10141110,	--×øÆï: ´óÏó
                   10410108,  --Ê¥µ®Ã±(ÎÞÊôÐÔÊ±×°)
                   10410098,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410099,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410100,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410101,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410102,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410103,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410104,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410105,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410106,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
                   10410107,  --»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨)
}			                                   --½±Æ·ID

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050026_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local NumText = GetNumText()


	if NumText == 111 then
	  BeginEvent(sceneId)
			AddText(sceneId, "#{CHRISTMAS_LUOYANG_HTJS_2}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 112 then
	  BeginEvent(sceneId)
	    local nGetgiftcount = x050026_GetGiftCount(sceneId, selfId) + 1
	    local str
	    if nGetgiftcount > 6 then
	       str = "#{SDYD_081007_010}"
	       AddText(sceneId, str);
	    else
	       str = format("#{SDYD_081007_021}%d#{SDYD_081007_022}", nGetgiftcount);
	       AddText(sceneId, str);
	       AddNumText(sceneId, x050026_g_ScriptId,"Duy®t", 8, 113);
				AddNumText(sceneId, x050026_g_ScriptId,"HuÖ", 8, 114);
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113 then
	  x050026_GivePlayerGift( sceneId, selfId, targetId )	
	elseif NumText == 114 then
	  -- ¹Ø±Õ´°¿Ú
	  BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050026_OnEnumerate( sceneId, selfId, targetId )
  
  --¼ì²âÊ±¼äÐúng·ñÕýÈ·
	local isTime = x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x050026_g_ScriptId, "Ð±i l­ ph¦m", 6, 112 )	
	AddNumText(sceneId, x050026_g_ScriptId, "Gi¾i thi®u ð±i l­ ph¦m", 11, 111 )												
end

--**********************************
--¼ì²â»î¶¯Ê±¼äÐúng·ñÕýÈ·
--**********************************
function x050026_CheckRightTime( sceneId )
	  
	local today = GetDayTime()						--µ±Ç°Ê±¼ä
		local firstDay = 8357								-- 2008Äê 12 ÔÂ 23 ÈÕ
		local lastDay = 9007								-- 2009Äê 1  ÔÂ 8  ÈÕ
	  
	-- 12 ÔÂ 31 ÈÕ 0 Ê± ~ 1 ÔÂ 7 ÈÕ 24 Ê±
	if today <= firstDay or today >= lastDay then
		return 0
	end

	return 1

end

--**********************************
--¸øÍæ¼ÒÐÂÄêºØÌû
--**********************************
function x050026_GivePlayerGift( sceneId, selfId, targetId )

	--¹Ø±Õ¶Ô»°´°¿Ú....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--Èç¹ûÍæ¼ÒµÈc¤pÐ¡ÓÚ25²»Óè»»È¡ºØ¿¨
	if	GetLevel( sceneId, selfId) < 25 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SDYD_081007_008}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--·ñÓÐ1cáiÐÂÄê·û½Ú....
	local ShaoLinHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[1])
	local MingJiaoHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[2])
	local GaiBangHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[3])
	local WuDangHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[4])
	local EMeiHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[5])
	local XingSuHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[6])
	local DaLiHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[7])
	local TianShanHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[8])
  local XiaoYaoHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[9])

  local result = 1
  if ShaoLinHeKaCount < 1 then
    result = 0
  elseif MingJiaoHeKaCount < 1 then
    result = 0
  elseif GaiBangHeKaCount < 1 then
    result = 0
  elseif WuDangHeKaCount < 1 then
    result = 0
  elseif EMeiHeKaCount < 1 then
    result = 0
  elseif XingSuHeKaCount < 1 then
    result = 0
  elseif DaLiHeKaCount < 1 then
    result = 0
  elseif TianShanHeKaCount < 1 then
    result = 0
  elseif XiaoYaoHeKaCount < 1 then
    result = 0
  end    
    
  if result == 0 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SDYD_081007_009}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	local td = GetDayTime()
	local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_GETGIFT_TIME)
	if (td<LastGetGiftTime) then
		return
	end
	if td > LastGetGiftTime then
	    SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, 0 )
	    SetMissionData( sceneId, selfId, MD_GETGIFT_TIME, td )
	end
	
	local nGetGiftCount = GetMissionData(sceneId,selfId,MD_GETGIFT_COUNT)
	
	if nGetGiftCount >= 6 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SDYD_081007_010}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end	
	
	--¼ì²â±³°üÐúng·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SDYD_081007_011}" )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--Ðúng·ñÉ¾³ýth¤t bÕi....
	for i, v in x050026_g_HeKaId do
	  if LuaFnDelAvailableItem(sceneId, selfId, v, 1) == 0 then
			 BeginEvent(sceneId)
			 AddText( sceneId, "#{SDYD_081007_009}" )
		   EndEvent(sceneId)
		   DispatchMissionTips( sceneId, selfId )
		   return
		 end
	 end
	    
	    
	local odds = random(1,1000)
	local GiftId = 0   --ÀñÎïID
	local GiftNum = 0  --ÀñÎïÊýÁ¿
	local strtext

	--Ëæ»ú·¢·ÅÀñÎï
	  if( odds >= 1 and odds <= 81 ) then       --81
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎïÒ×ÈÝµ¤: ÌÇ¹ûºÐ,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 82 and odds <= 162 ) then          --81
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎïÒ×ÈÝµ¤: ´óÁåîõ,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 163 and odds <= 281 ) then                  --119
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎïÒ×ÈÝµ¤: Ê¥µ®Ê÷,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 282 and odds <= 371 ) then                  --90
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 10
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎïÐÒ¸£Ñ©Çò,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 372 and odds <= 450 ) then                 --79
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï5¸ñ²ÄÁÏ°ü(Ê¥µ®ÍàÍâÐÍ),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 451 and odds <= 529 ) then                 --79
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï5¸ñÎïÆ·°ü(Ê¥µ®ÀÏÈË¿Ú´üÍâÐÍ),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 530 and odds <= 553 ) then                 --24
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï×øÆï: ÍÒÄñ,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 554 and odds <= 577 ) then                 --24
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï×øÆï: Ä¾Å£Á÷Âí,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 578 and odds <= 601 ) then                 --24
	    GiftId = x050026_g_GiftId[9]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï×øÆï: ÐÜ,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 602 and odds <= 625 ) then                 --24
	    GiftId = x050026_g_GiftId[10]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï×øÆï: ÍÃ×Ó,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 626 and odds <= 636 ) then                 --11
	    GiftId = x050026_g_GiftId[11]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï×øÆï: Â½Îá,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 637 and odds <= 647 ) then                 --11
	    GiftId = x050026_g_GiftId[12]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï×øÆï: ´óÏó,×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 648 and odds <= 655 ) then                 --8
	    GiftId = x050026_g_GiftId[13]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎïÊ¥µ®Ã±(ÎÞÊôÐÔÊ±×°),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 656 and odds <= 656 ) then                 --1
	    GiftId = x050026_g_GiftId[14]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 657 and odds <= 661 ) then                 --5
	    GiftId = x050026_g_GiftId[15]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 662 and odds <= 666 ) then                 --5
	    GiftId = x050026_g_GiftId[16]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 667 and odds <= 684 ) then                 --18
	    GiftId = x050026_g_GiftId[17]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 685 and odds <= 714 ) then                 --30
	    GiftId = x050026_g_GiftId[18]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 715 and odds <= 760 ) then                 --46
	    GiftId = x050026_g_GiftId[19]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 761 and odds <= 814 ) then                 --54
	    GiftId = x050026_g_GiftId[20]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 815 and odds <= 892 ) then                 --78
	    GiftId = x050026_g_GiftId[21]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 893 and odds <= 966 ) then                 --74
	    GiftId = x050026_g_GiftId[22]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  elseif( odds >= 967 and odds <= 1000 ) then                 --34
	    GiftId = x050026_g_GiftId[23]
	    GiftNum = 1
	    strtext = "Chúc m×ngÄú ðÕt ðßþcÀñÎï»¶ÀÖÊ¥µ®Ã±(×°±¸°ó¶¨),×£ÄúÓÎÏ·Óä¿ì!"
	  end
	
	BeginAddItem( sceneId )
		nIndex = AddItem( sceneId, GiftId, GiftNum )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,selfId)
	SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, nGetGiftCount+1 )
	
	--ÈÕÖ¾Í³¼Æ
	local guid = LuaFnObjId2Guid(sceneId, selfId)
	log = format("ItemId=%d,Num=%d", GiftId, GiftNum)
	ScriptGlobal_AuditGeneralLog(LUAAUDIT_MPCARD_PRIZE, guid, log)
	
	BeginEvent( sceneId )
		AddText( sceneId, strtext )
	EndEvent( sceneId )
  DispatchMissionTips( sceneId, selfId )
  
	--H® th¯ng¹«¸æ
	local	bagpos = -1
	bagpos = GetBagPosByItemSn(sceneId, selfId, GiftId)
		
  local ItemInfo
	if bagpos ~= -1 then
	  ItemInfo = GetBagItemTransfer( sceneId, selfId, bagpos )
	end
	local PlayerName = GetName(sceneId,selfId)
	local str = format( "#{SDYD_16} LÕc Dß½ng #{SDYD_17}#{_INFOUSR%s}#{SDYD_18}#{_INFOMSG%s}#{SDYD_19}#{_INFOUSR%s}#{SDYD_20}", PlayerName, ItemInfo, PlayerName )
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

end

--**********************************
-- ðÕt ðßþc½ñÈÕLînh ½±Æ·´ÎÊý
--**********************************
function x050026_GetGiftCount( sceneId, selfId )
	  
	local td = GetDayTime()
	local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_GETGIFT_TIME)

	if td > LastGetGiftTime then
	    SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, 0 )
	    SetMissionData( sceneId, selfId, MD_GETGIFT_TIME, td )
	end
		
	local nGetGiftCount = GetMissionData(sceneId,selfId,MD_GETGIFT_COUNT)

	return nGetGiftCount

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x050026_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x050026_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x050026_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x050026_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050026_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x050026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050026_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x050026_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x050026_OnItemChanged( sceneId, selfId, itemdataId )
end
