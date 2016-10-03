--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400017_OnEnterArea( sceneId, selfId )
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 2,280,152)
	if sceneId ==6 then    -- ÎÞÁ¿É½1¾Íµ½ÐÕi Lý1
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 2,280,152)
	elseif sceneId ==73 then -- ÎÞÁ¿É½2¾Íµ½ÐÕi Lý2
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 71,280,152)		
	elseif sceneId ==74 then -- ÎÞÁ¿É½3¾Íµ½ÐÕi Lý3
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 72,280,152)			
	end

end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400017_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400017_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400017_OnLeaveArea( sceneId, selfId )
end
