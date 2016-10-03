--2007Ê¥µ®Ôªµ©»î¶¯....
--ÐÂÊÖ³é½±_Ï²´ÓÌì½µ»î¶¯....

--´ðÌâÈÎÎñ ¶mµt »½±È¯½Å±¾....


--½Å±¾ºÅ
x050022_g_ScriptId = 050022

--»î¶¯Ê±¼ä
x050022_g_StartDayTime = 2008080610		--»î¶¯¿ªÊ¼Ê±¼ä 2007-12-24
x050022_g_EndDayTime =2008081309			--»î¶¯½áÊøÊ±¼ä 2008-1-7

--´ðÌâ½Å±¾½Å±¾ºÅ
x050022_g_QuizScriptId = 050021

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050022_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	if 1 ~= x050022_CheckRightTime() then
		return
	end

	local NumText = GetNumText()

	if NumText == 801 then

		--ÏÔÊ¾ÐÂÊÖ´ðÌâ½çÃæ....
		x050022_ShowQuiz( sceneId, selfId, targetId )

	elseif NumText == 802 then

		BeginEvent( sceneId )
			AddText( sceneId, "  Ngài xác ð¸nh sØ døng vé x± s¯ tiªn hành ð±i t£ng ph¦m sao?" )
			AddNumText(sceneId,x050022_g_ScriptId,"Xác ð¸nh",8,803)
			AddNumText(sceneId,x050022_g_ScriptId,"Hüy bö",8,804)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif NumText == 811 then

		x050022_MsgBox( sceneId, selfId, targetId, "#{XSCJ_20071205_02}" )

	elseif NumText == 812 then

		x050022_MsgBox( sceneId, selfId, targetId, "#{XSCJ_20071205_02}" )

	elseif NumText == 803 then

		--¶mµt »½±È¯....
		local ret = x050022_GiveGift( sceneId, selfId, targetId )
		if ret == 1 then
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
		end

	elseif NumText == 804 then

		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050022_OnEnumerate( sceneId, selfId, targetId )

	if 1 ~= x050022_CheckRightTime() then
		return
	end

	if LuaFnGetName( sceneId, targetId ) == "Tri®u Thiên Sß" then
		AddNumText(sceneId,x050022_g_ScriptId,"Hï tòng thiên hàng",6,801)
		AddNumText(sceneId,x050022_g_ScriptId,"V« Hï tòng thiên hàng",11,811)
	elseif LuaFnGetName( sceneId, targetId ) == "Cüng Thái Vân" then
		AddNumText(sceneId,x050022_g_ScriptId,"Lãnh thß·ng Hï tòng thiên hàng",6,802)
		AddNumText(sceneId,x050022_g_ScriptId,"V« ph¥n thß·ng Hï tòng thiên hàng",8,812)
	end

end

--**********************************
--ÏÔÊ¾Ï²´ÓÌì½µ´ðÌâ½çÃæ
--**********************************
function x050022_ShowQuiz( sceneId, selfId, targetId )

	--¼ì²âÐúng·ñ¿ÉÒÔ´ðÌâ....
	local ret, msg = x050022_CheckCanDoQuiz( sceneId, selfId )
	if 0 == ret then
		x050022_MsgBox( sceneId, selfId, targetId, msg )
		return
	end

	--´ò¿ªÏ²´ÓÌì½µ´ðÌâ½çÃæ....
	CallScriptFunction( x050022_g_QuizScriptId, "ShowQuizUI",sceneId, selfId, targetId )

end

--**********************************
--¼ì²âÍæ¼Òµ±Ç°Ðúng·ñ¿ÉÒÔ×ö´ðÌâ
--**********************************
function x050022_CheckCanDoQuiz( sceneId, selfId )

	if 1 ~= x050022_CheckRightTime() then
		return 0, "  Hi®n tÕi không phäi th¶i gian hoÕt ðµng"
	end

	local CurLevel = GetLevel( sceneId, selfId )
	local LastLevel = GetMissionData( sceneId, selfId, MD_XICONGTIANJIANG_LASTLV )

	if CurLevel < 2 then
		return 0, "#{XSCJ_20071205_03}"
	end

	if CurLevel > 25 then
		return 0, "#{XSCJ_20071205_04}"
	end

	if LastLevel >= CurLevel then
		return 0, "#{XSCJ_20071205_05}" 
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		return 0, "#{XSCJ_20071205_06}"
	end

	return 1

end

--**********************************
--¼ì²âµ±Ç°Ðúng·ñÐúng»î¶¯Ê±¼ä
--**********************************
function x050022_CheckRightTime()
local nYear	 = LuaFnGetThisYear()
	local nMonth = LuaFnGetThisMonth()
  local nDay   = LuaFnGetDayOfThisMonth()
  local nHour	 = GetHour()
  local curDayTime = nYear*1000000+(nMonth+1)*10000+nDay*100+nHour

	if curDayTime >= x050022_g_StartDayTime and curDayTime <= x050022_g_EndDayTime then
		return 1
	else
		return 0
	end

end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050022_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--Íæ¼Ò´ð¶ÔËùÓÐÌâÄ¿Ê±»Øµ÷´Ëº¯Êý
--**********************************
function x050022_OnPlayerFinishQuiz( sceneId, selfId )

	--¼ÇÂ¼±¾c¤pÒÑ¾­×ö¹ý´ðÌâÈÎÎñÁË....
	local Level = GetLevel( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_XICONGTIANJIANG_LASTLV, Level )

	--¸ø½±È¯....
	TryRecieveItem( sceneId, selfId, 30505147, QUALITY_MUST_BE_CHANGE )

	--ÐÑÄ¿ÌáÊ¾
	BeginEvent( sceneId )
		AddText( sceneId, "#{XSCJ_20071205_10}" )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

	--ÌØÐ§....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 151, 0)

end

--**********************************
--Íæ¼ÒÉýc¤pÊ±»Øµ÷´Ëº¯Êý
--**********************************
function x050022_OnPlayerLevelUp( sceneId, selfId )

	if 1 ~= x050022_CheckRightTime() then
		return
	end

	local CurLevel = GetLevel( sceneId, selfId )
	if CurLevel > 25 then
		return
	end

	LuaFnSendSystemMail(sceneId, GetName(sceneId, selfId), "#{XSCJ_20071205_01}")

end

--**********************************
--¶mµt »½±È¯
--**********************************
function x050022_GiveGift( sceneId, selfId, targetId )

	if 1 ~= x050022_CheckRightTime() then
		return 0
	end

	local CurLevel = GetLevel( sceneId, selfId )
	if CurLevel > 25 then
		x050022_MsgBox( sceneId, selfId, targetId, "#{XSCJ_20071205_12}" )
		return 0
	end

	--¼ì²â±³°üÐúng·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x050022_MsgBox( sceneId, selfId, targetId, "#{XSCJ_20071205_13}" )
		return 0
	end

	--¿Û½±È¯....
	if 0 == DelItem(sceneId, selfId, 30505147, 1) then
		x050022_MsgBox( sceneId, selfId, targetId, "#{XSCJ_20071205_14}" )
		return 0
	end

	--¸ø½±Æ·....
	local GiftTbl = {

		--C¥n Ç¿ÖÆ°ó¶¨toÕ ðµ ÎïÆ·....
		{ itemId=30505146, odds=200 },
		{ itemId=30505171, odds=200 },
		{ itemId=30505170, odds=200 },

		--C¥n ¹«¸ætoÕ ðµ ÎïÆ·....
		{ itemId=10141096, odds=50 },
		{ itemId=10141097, odds=50 },
		{ itemId=10141098, odds=40 },
		{ itemId=10141099, odds=40 },
		{ itemId=30501128, odds=110 },
		{ itemId=30501129, odds=110 },

	}
	
	local index = 0
	local randValue = random(1000);
	randValue = randValue - 1;

	for i, item in GiftTbl do
		if item.odds >= randValue then
			index = i
			break;
		end
		randValue = randValue - item.odds;
	end

	if index == 0 then
		return 0
	end

	if index < 4 then

		local BagIndex = TryRecieveItem( sceneId, selfId, GiftTbl[index].itemId, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			BeginEvent( sceneId )
				AddText( sceneId, "Hï tòng thiên hàng! Chúc m×ng ngß½i ðßþc #{_ITEM"..GiftTbl[index].itemId.."}, hi v÷ng ngß½i tiªp tøc c¯ g¡ng!" )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
			LuaFnItemBind( sceneId, selfId, BagIndex)
		end

	else

		local BagIndex = TryRecieveItem( sceneId, selfId, GiftTbl[index].itemId, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then

			BeginEvent( sceneId )
				AddText( sceneId, "Hï tòng thiên hàng! Chúc m×ng ngß½i ðßþc #{_ITEM"..GiftTbl[index].itemId.."}, hi v÷ng ngß½i tiªp tøc c¯ g¡ng!" )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )

			local strTrans = GetBagItemTransfer( sceneId, selfId, BagIndex )
			local strName = GetName(sceneId, selfId)
			local strMsg = format("#PChúc m×ng #{_INFOUSR%s} ðßþc #{_INFOMSG%s}, hi v÷ng #{_INFOUSR%s} tiªp tøc c¯ g¡ng!", strName, strTrans, strName)

			MonsterTalk(sceneId, targetId, "ÐÕi Lý", strMsg)

		end

	end

	--ÌØÐ§....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 151, 0)

	return 1

end

