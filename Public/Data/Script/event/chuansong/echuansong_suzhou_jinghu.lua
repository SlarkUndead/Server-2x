x400003_g_ScriptId = 400003

x400003_left 	=59.0000
x400003_right	=68.0000

x400003_top  	=266.0000
x400003_bottom	=275.0000


--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400003_OnEnterArea( sceneId, selfId )

        BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400003_g_ScriptId);
		UICommand_AddString(sceneId, "GotoJinghu");
		UICommand_AddString(sceneId, "#{QZDZCS_100724}");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,277,46)
end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400003_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400003_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400003_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400003_GotoJinghu( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÐúng²»Ðúng»¹TÕi Cái này ·¶Î§ÄÚ
	--if sceneId ~= 1   then
		--Kh±ng th¬ d¸ch chuy¬n ðªn khu vñc yêu c¥u.
		--BeginEvent(sceneId)
			--AddText(sceneId,"Kh±ng th¬ d¸ch chuy¬n ðªn khu vñc yêu c¥u.")
--		EndEvent(sceneId)
	--	DispatchMissionTips(sceneId,selfId)
		--return
	--end
	
	--local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	--if 	targetX < x400003_left or
		--	targetX > x400003_right or
			--targetZ < x400003_top  or
			--targetZ > x400003_bottom   then
		
--		BeginEvent(sceneId)
	--		AddText(sceneId,"Kh±ng th¬ d¸ch chuy¬n ðªn khu vñc yêu c¥u.")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
		--return
			
	--end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,277,46)
		
end

