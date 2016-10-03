--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400019_OnEnterArea( sceneId, selfId )
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 2,39,152)
	if sceneId ==7 then    -- Kiªm Các1¾Íµ½ÐÕi Lý1
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 2,39,152)
	elseif sceneId ==75 then -- Kiªm Các2¾Íµ½ÐÕi Lý2
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 71,39,152)		
	elseif sceneId ==76 then -- Kiªm Các3¾Íµ½ÐÕi Lý3
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 72,39,152)			
	end

end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400019_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400019_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400019_OnLeaveArea( sceneId, selfId )
end
