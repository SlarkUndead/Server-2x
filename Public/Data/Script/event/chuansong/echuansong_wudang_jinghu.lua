x400027_g_ScriptId = 400027

x400027_left 	=90.0000
x400027_right	=101.0000

x400027_top  	=190.0000
x400027_bottom	=198.0000


--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400027_OnEnterArea( sceneId, selfId )
	if	GetLevel( sceneId, selfId)<20 then
		BeginEvent(sceneId)
			strText = "ÐÆng c¤p nhö h½n 20 không th¬ vào khu vñc này"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else

        BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400027_g_ScriptId);
		UICommand_AddString(sceneId, "GotoJinghu1");
		UICommand_AddString(sceneId, "#{QZDZCS_100724}");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,45,264, 20)
	end
end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400027_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400027_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400027_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400027_GotoJinghu1( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÐúng²»Ðúng»¹TÕi Cái này ·¶Î§ÄÚ
	if sceneId ~= 12   then
		--Kh±ng th¬ d¸ch chuy¬n ðªn khu vñc yêu c¥u.
		BeginEvent(sceneId)
			AddText(sceneId,"Kh±ng th¬ d¸ch chuy¬n ðªn khu vñc yêu c¥u.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400027_left or
			targetX > x400027_right or
			targetZ < x400027_top  or
			targetZ > x400027_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Kh±ng th¬ d¸ch chuy¬n ðªn khu vñc yêu c¥u.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,34,233, 20)
		
end
