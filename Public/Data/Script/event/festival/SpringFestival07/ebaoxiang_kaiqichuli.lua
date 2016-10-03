--ÄêÊŞbossµôÂä±¦ÏäÉú³¤ ği¬m
--ÎŞµĞbuff
x050052_g_impactID = 54
x050052_strErrorNotice = "#{NSBS_20071228_10}"

x050052_g_strNotice0 = "#{NSBS_20071228_16}"
x050052_g_strNotice1 = "#{NSBS_20071228_17}"
--»î¶¯Ê±¼ä
x050052_g_StartDayTime = 8030   --»î¶¯½áÊøÊ±¼ä 2008-1-31
x050052_g_EndDayTime = 8044   --»î¶¯½áÊøÊ±¼ä 2008-2-14

function x050052_OnRecycle(sceneId,selfId,targetId)
	
	--1.Í¨ÖªÄêÊŞboss½Å±¾¼ÌĞøµôÂä±¦Ïä
	CallScriptFunction( 050051, "DropNianShouBox", sceneId)
	

	return 1;
end

function x050052_OnCreate(sceneId,growPointType,x,y)

end

function x050052_OnOpen(sceneId,selfId,targetId)
	local level = GetLevel( sceneId, selfId )
	
	if level < 10 then
			BeginEvent(sceneId)
			AddText(sceneId, x050052_strErrorNotice);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return OR_NEED_HIGH_LEVEL;
	end
	

	return OR_OK;
end

function x050052_OnProcOver(sceneId,selfId,targetId)
		--2.¸øM· ra Õß¼ÓÌØĞ§
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x050052_g_impactID, 0)
end

--**********************************
--¼ì²â»î¶¯Ğúng·ñÒÑ½áÊø
--**********************************
function x050052_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime >= x050052_g_StartDayTime and curDayTime <= x050052_g_EndDayTime then
		return 1
	else
		return 0
	end

end

--**********************************
-- Íæ¼ÒTÕi Õ¨ÄêÊŞÖĞÊ°È¡±¦ÏäÖĞÎïÆ·Ê±»Øµ÷±¾½Ó¿Ú
--**********************************
function x050052_OnPlayerPickUpItemInNianShou( sceneId, selfId, itemId, bagidx )

	local isTime = x050052_CheckRightTime()
	if 1 ~= isTime then
		return
	end
	
	--¹«¸æ....
	if itemId == 30505107 or itemId == 30501159 or itemId ==30501160 or itemId == 10141105 or itemId == 10141106 or itemId == 10141107 or itemId == 10141108 or itemId == 10141109  or itemId == 10141110 then

		local playerName = GetName(sceneId, selfId)
		local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)
		local str = format( "#{_INFOUSR%s}", playerName)
		local str1 = format( "#{_INFOMSG%s}", transfer)
		
		local message = str..x050052_g_strNotice0..str1..x050052_g_strNotice1
		--format("#{_INFOUSR%s}#PÏòÄêÊŞÈÓ³ömµt ´®±ŞÅÚ,àèàèÅ¾Å¾mµt Õó±¬Õ¨Ö®ºó,ÄêÊŞÈÓÏÂmµt cái#{_INFOMSG%s}#PºóÂä»Ä¶øÌÓ!", playerName, transfer )
		BroadMsgByChatPipe(sceneId, selfId, message, 4)

	end

end
