--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400913_OnEnterArea( sceneId, selfId )
	if	IsHaveMission( sceneId, selfId, 702)>0	then
		CallScriptFunction((210222), "OnAbandon",sceneId, selfId)
	elseif	IsHaveMission( sceneId, selfId, 711)>0	then
		misIndex = GetMissionIndexByID(sceneId,selfId,711)
		num = GetMissionParam(sceneId,selfId,misIndex,0)
		if	num == 1 then
			NewWorld( sceneId, selfId, 2, 275, 50 )
		else
			CallScriptFunction((210231), "OnAbandon",sceneId, selfId)
		end

		--BeginEvent(sceneId)
		--	AddText(sceneId,"  ÄãXác nh§nÒªÀë¿ªÄ¾ÈË¶þÏïÂð?")
		--	AddNumText(sceneId,g_scriptId,"Xác nh§n",2,0)
		--	AddNumText(sceneId,g_scriptId,"HuÖ bö",2,1)
		--EndEvent( )
		--DispatchEventList(sceneId,selfId,targetId)
	end
end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400913_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400913_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400913_OnLeaveArea( sceneId, selfId )
end

----**********************************
----ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
----**********************************
--function OnEventRequest( sceneId, selfId, targetId, eventId )
--	if	GetNumText()==0	then
--		if	IsHaveMission( sceneId, selfId, 711)>0	 then
--			misIndex = GetMissionIndexByID(sceneId,selfId,711)
--			num = GetMissionParam(sceneId,selfId,misIndex,0)
--			if	num == 1 then
--				NewWorld( sceneId, selfId, 2, 275, 50 )
--			else
--				CallScriptFunction((210231), "OnAbandon",sceneId, selfId)
--			end
--		end
--	end
--end
