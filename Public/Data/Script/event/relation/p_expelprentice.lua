--Öð³öNhi®m vø sß môn

--½Å±¾ºÅ
x806009_g_ScriptId	= 806009

--Öð³öÊ¦ÃÇ
x806009_g_ExpelPrentice					= {}
x806009_g_ExpelPrentice["Id"]		= 1006
x806009_g_ExpelPrentice["Name"]	= "Khai tr× ra khöi sß môn"

--ÌáÊ¾ÐÅÏ¢
x806009_g_msg				=
{
	["gld"]= "  Ð° ð® mu¯n ra khöi sß môn c¥n phäi nµp #{_EXCHG%d}.",
	["con"]= "  Khai tr× ð° ð® s¨ b¸ tr× #{_EXCHG%d}, có th§t các hÕ mu¯n khai tr× ngß¶i ð° ð®: %s",
}

--¿ª³ýÍ½µÜ,¿Û³ý½ðÇ®
x806009_g_Gold			= 25000

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806009_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local guid
	local PrenticeName
	local	log	= 0
	local	str

	if key == -1 then
		BeginEvent( sceneId )
		for i=0, 7 do
			guid = LuaFnGetPrenticeGUID( sceneId, selfId, i )
			if guid ~= -1 then
				log	= 1
				PrenticeName	= LuaFnGetFriendName( sceneId, selfId, guid )
				AddNumText( sceneId, x806009_g_ScriptId, "S¨ "..PrenticeName.." B¸ ðu±i ra khöi sß môn", 6, i )
			end
		end

		if log == 0 then
			AddText( sceneId, "  Ngß½i không có ð° ð®" )
		end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key >= 0 and key <=7 then
		guid	= LuaFnGetPrenticeGUID( sceneId, selfId, key )
		if guid ~= -1 then
			PrenticeName	= LuaFnGetFriendName( sceneId, selfId, guid )
		end
		str	= format( x806009_g_msg["con"], x806009_g_Gold, PrenticeName )
		BeginEvent( sceneId )
			AddText( sceneId, str )
			AddNumText( sceneId, x806009_g_ScriptId, "Có", 6, (key+1)*100 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	if key >= 100 then
		if x806009_CheckAccept( sceneId, selfId, targetId ) > 0 then
			x806009_OnAccept( sceneId, selfId, targetId, floor(key/100)-1 )
		end
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806009_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806009_g_ScriptId, x806009_g_ExpelPrentice["Name"], 6, -1 )
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x806009_CheckAccept( sceneId, selfId, targetId )
	--¼ì²éÊ¦¸µÉíÉÏ½ðÇ®
	--if LuaFnGetMoney( sceneId, selfId ) < x806009_g_Gold then
	--hzp 2008-12-9
	local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
	local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
	local nMoneySelf = nMoneyJZ + nMoneyJB;
	if nMoneySelf < x806009_g_Gold then
		str	= format( x806009_g_msg["gld"], x806009_g_Gold )
		x806009_MsgBox( sceneId, selfId, targetId, str )
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x806009_OnAccept( sceneId, selfId, targetId, nIndex )
	
	-- [ QUFEI 2007-08-16 16:53 UPDATE BugID 23624 ]
	local PrenticeGUID = LuaFnGetPrenticeGUID( sceneId, selfId, nIndex )
	if PrenticeGUID == -1 then
		BeginEvent( sceneId )
		AddText( sceneId, "  Ngß½i không có ð° ð®" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		
	local PrenticeName	= LuaFnGetFriendName( sceneId, selfId, PrenticeGUID )
	local selfName	= LuaFnGetName( sceneId, selfId )

	--¿Û³ýÉíÉÏ½ðÇ®
	--LuaFnCostMoney( sceneId, selfId, x806009_g_Gold )
	--str	= format( "Bö quan h® sß-ð° b¸ phÕt #{_MONEY%d}.", x806009_g_Gold )
	--Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	
	--hzp 2008-12-9
	local nMoneyJZ, nMoneyJB = LuaFnCostMoneyWithPriority( sceneId, selfId, x806009_g_Gold )
	--Èç¹ûÖ»¿Û³ý½ð±Ò
	if nMoneyJZ == 0 then
		str	= format( "Bö quan h® sß-ð° b¸ phÕt #{_MONEY%d}.", x806009_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--Èç¹ûÖ»¿Û³ý½»×Ó
	if nMoneyJB == 0 then
		str	= format( "Bö quan h® sß-ð° b¸ phÕt #{_EXCHG%d}.", x806009_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--Èç¹û¼ÈÓÐ½»×ÓÓÖÓÐ½ð±Ò
	if nMoneyJB ~= 0 and nMoneyJZ ~= 0 then
		str	= format( "Bö quan h® sß-ð° b¸ phÕt #{_EXCHG%d}: #{_MONEY%d}.", nMoneyJZ, nMoneyJB )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	x806009_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã bö quan h® v¾i "..PrenticeName.."Quan h® sß ð° cüa" )

	--·¢ÆÕÍ¨ÓÊ¼þ¸øÍ½µÜ
	LuaFnSendSystemMail( sceneId, PrenticeName, "Sß phø cüa ngß½i, " .. selfName .. ", không tiªp tøc dÕy bäo và ðã thoát khöi quan h® sß ð° v¾i ngß½i." )
	--LuaFnSendNormalMail( sceneId, selfId, PrenticeName, "Cüa ngß½i Ê¦¸¸" .. selfName .. "ÎÞÒâÓÚ¼ÌÐø½Ìµ¼Äã,ÒÑÓëÄãÍÑÀëÁËÊ¦Í½¹ØÏµ." )
	--·¢¿ÉÖ´ÐÐÓÊ¼þ¸øÍ½µÜ
	LuaFnSendScriptMail( sceneId, PrenticeName, MAIL_EXPELPRENTICE, 0, 0, 0 )

	--×îÖÕÇåÀíÃÅ»§
	LuaFnExpelPrentice( sceneId, selfId, PrenticeGUID )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806009_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
