--»î¶¯¡ª¡ª
--ÖÐÇï»î¶¯-ÍÅÔ²»¶ÇìÔÂ±ý»î¶¯

--½Å±¾ºÅ
x050020_g_ScriptId = 050020

--x050020_g_EndDayTime = 7290   --»î¶¯½áÊøÊ±¼ä 2007-10-18
x050020_g_EndDayTime = 8304   --»î¶¯½áÊøÊ±¼ä 2008-10-31,°üº¬µ±ÈÕ

x050020_g_PingFengSn = 40004428			--ÆÁ·çID
x050020_g_BianShenPieSn = 30505132	--Ò×ÈÝµ¤ÔÂ±ýID

x050020_g_strBianShenPieInfo = "#{ZHONGQIUBIANSHEN_001}"
x050020_g_strGongGaoInfo = {

	"#Y NhÕc Thß¶ng Viên#cff99cc cß¶i to nói: #{_INFOUSR%s}#cff99cc anh hùng, 3 cái#W#{_INFOMSG%s}#cff99cc này có phäi chång ðoÕt t× trong tay #YDß Ðµc#cff99cc không? Ta s¨ không th¤t tín, cái #{_INFOMSG%s}#cff99cc này s¨ là cüa ngß½i! ",
	"#Y NhÕc Thß¶ng Viên#cff99cckinh hãi: #{_INFOUSR%s}#cff99cc, các hÕ th§t sñ t× trong tay #YH°ng Hùng Vß½ng#cff99cc ðoÕt ðßþc 3 miªng #{_INFOMSG%s}#cff99cc! Viên #{_INFOMSG%s}#cff99cc này nói sao thì cûng nh§n l¤y ði! ",
	"#Y NhÕc Thß¶ng Viên#cff99cc nhìn#{_INFOUSR%s}#cff99cc t× trong tay #YCát Vinh#cff99cc ðoÕt ðßþc 3 miªng #{_INFOMSG%s}#cff99cc vui m×ng vô cùng, l¤y ra 1 viên #{_INFOMSG%s}#cff99cc ð¬ ð«n ðáp. ",

}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050020_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x050020_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local NumText = GetNumText()

	if NumText == 101 then

		BeginEvent(sceneId)
			AddText(sceneId, x050020_g_strBianShenPieInfo)
			AddNumText(sceneId, x050020_g_ScriptId, "Ð±i", 6, 201 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 201 then

		--ÁìÒ×ÈÝµ¤ÔÂ±ý....
		x050020_GivePlayerPie( sceneId, selfId, targetId )
	elseif NumText == 102 then
	
		BeginEvent(sceneId)
			AddText(sceneId, "#{ZQHD_20070916_013}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050020_OnEnumerate( sceneId, selfId, targetId )

	local isTime = x050020_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x050020_g_ScriptId, "Ta mu¯n biªn thân thành bánh Trung Thu", 6, 101 )													
end

--**********************************
--¼ì²â»î¶¯Ðúng·ñÒÑ½áÊø
--**********************************
function x050020_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime <= x050020_g_EndDayTime then
		return 1
	else
		return 0
	end

end

--**********************************
--¸øÍæ¼ÒÒ×ÈÝµ¤ÔÂ±ý
--**********************************
function x050020_GivePlayerPie( sceneId, selfId, targetId )

	--¹Ø±Õ¶Ô»°´°¿Ú....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--Ðúng·ñÓÐ3cái....
	local itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050020_g_PingFengSn)
	if itemCount < 3 then
		BeginEvent(sceneId)
			AddText( sceneId, "Nhi®m vø ðÕo cø không ðü, không th¬ ð±i" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--É¾³ýÇ°»ñÈ¡ÆÁ·çtoÕ ðµ Transfer....
	local pingFengPos = GetItemBagPos( sceneId, selfId, x050020_g_PingFengSn, 0 )
	if pingFengPos < 0 then
		BeginEvent(sceneId)
			AddText( sceneId, "Nhi®m vø ðÕo cø không ðü, không th¬ ð±i" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
	end
	local pingFengTransfer = GetBagItemTransfer(sceneId,selfId,pingFengPos)

	--¼ì²â±³°üÐúng·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "Ch² tr¯ng trong túi xách không ðü" )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--Ðúng·ñÉ¾³ýth¤t bÕi....
	if 0 == DelItem(sceneId, selfId, x050020_g_PingFengSn, 3) then
		BeginEvent(sceneId)
			AddText( sceneId, "Nhi®m vø ðÕo cø không ðü, không th¬ ð±i" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--¸øÎïÆ·²¢¹«¸æ....
	local BagIndex = TryRecieveItem( sceneId, selfId, x050020_g_BianShenPieSn, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then

		BeginEvent( sceneId )
			AddText( sceneId, "Các hÕ ð±i ðßþc 1 D¸ch Dung Ðan: Bánh Trung Thu" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )

		--ÊÀ½ç¹«¸æ....
		local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
		local PlayerName = GetName(sceneId, selfId)
		local nMsgIndex = random(3)
		local str
		if nMsgIndex == 1 then
			str = format( x050020_g_strGongGaoInfo[1], PlayerName, pingFengTransfer, ItemTransfer )
		elseif nMsgIndex == 2 then
			str = format( x050020_g_strGongGaoInfo[2], PlayerName, pingFengTransfer, ItemTransfer )
		else
			str = format( x050020_g_strGongGaoInfo[3], PlayerName, pingFengTransfer, ItemTransfer )
		end
		BroadMsgByChatPipe( sceneId, selfId, str, 4 )

	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x050020_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x050020_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x050020_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x050020_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050020_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x050020_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050020_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x050020_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x050020_OnItemChanged( sceneId, selfId, itemdataId )
end
