--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400006_OnEnterArea( sceneId, selfId )
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 6,43,172)
	--Ôö¼ÓÐÕi Lý2/3 µ½ÎÞÁ¿É½2/3toÕ ðµ ´«ËÍ½Å±¾Ïà¹ØÄÚÈÝ	
	if sceneId ==2 then    -- ÐÕi Lý1¾Íµ½ÎÞÁ¿É½1
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 6,43,172)
	elseif sceneId ==71 then -- ÐÕi Lý2¾Íµ½ÎÞÁ¿É½2
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 73,43,172)		
	elseif sceneId ==72 then -- ÐÕi Lý3¾Íµ½ÎÞÁ¿É½3
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 74,43,172)			
	end

end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400006_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400006_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400006_OnLeaveArea( sceneId, selfId )
end
