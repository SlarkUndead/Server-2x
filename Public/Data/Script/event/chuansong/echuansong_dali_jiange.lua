--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400007_OnEnterArea( sceneId, selfId )
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 7,40,278)
	--Ôö¼ÓKiªm Các2/3 µ½ÐÕi Lý2/3toÕ ðµ ´«ËÍ½Å±¾Ïà¹ØÄÚÈÝ	
	if sceneId ==2 then    -- ÐÕi Lý1¾Íµ½Kiªm Các1
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 7,40,278)
	elseif sceneId ==71 then -- ÐÕi Lý2¾Íµ½Kiªm Các3
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 75,40,278)		
	elseif sceneId ==72 then -- ÐÕi Lý3¾Íµ½Kiªm Các3
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 76,40,278)			
	end
end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400007_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400007_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400007_OnLeaveArea( sceneId, selfId )
end
