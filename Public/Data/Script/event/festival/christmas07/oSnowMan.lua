--07 •µÆ‘™µ©
-- •µÆ ÿ“πªÓ∂Ø
--—©»ÀNPCΩ≈±æ....

--Ω≈±æ∫≈
x050027_g_ScriptId = 050027

x050027_g_GiftTbl = {

	30505150,
	30505151,
	30505152,
	30505153

}

x050027_g_StartTime = 73100
x050027_g_EndTime   = 73108

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x050027_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		local NeedCount = CallScriptFunction( 050023, "GetNeedBallCount", sceneId )
		if NeedCount > 0 then
			AddText(sceneId,"    ¥Ûº“º””Õ∞.¨ªπ≤Ó#Y"..NeedCount.."#Wc·i—©«Ú∂—µΩŒ“…Ì…œŒ“æÕø…“‘≥§¥Û¡À!")
		end
		AddText(sceneId,"#{SDSY_20071206_01}")
		AddNumText(sceneId,x050027_g_ScriptId,"LÓnh  •µÆ ÿ“π¿ÒŒÔ",6,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x050027_OnEventRequest( sceneId, selfId, targetId, eventId )

	-- 12‘¬24»’24 ±µΩ12‘¬25»’2 ±
	local curTimeDay = GetTime2Day();
	local curTimeHour = GetHour();
	-- ±º‰√ªµΩ....
	if curTimeDay < 20081225 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_02}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--–˙ng∑Ò¡Ïπ˝¡À....
	local flag = GetMissionFlag(sceneId, selfId, MF_CHRISTMAS08_GIFT)
	if flag ~= 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_03}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- ±º‰π˝¡À....
	if curTimeDay > 20081225 or (curTimeDay == 20081225 and curTimeHour > 1) then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_04}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--ºÏ≤‚±≥∞¸–˙ng∑Ò”–µÿ∑Ω....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_05}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--∏¯∂´Œ˜....
	local rand = random( getn(x050027_g_GiftTbl) )
	TryRecieveItem( sceneId, selfId, x050027_g_GiftTbl[rand], QUALITY_MUST_BE_CHANGE )

	--∑¢” º˛....
	LuaFnSendSystemMail(sceneId, GetName(sceneId, selfId), "#{SDSY_20071206_06}")

	--º«¬ºÀ˚“—æ≠¡Ïπ˝¡À....
	SetMissionFlag(sceneId, selfId, MF_CHRISTMAS08_GIFT, 1)

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end
