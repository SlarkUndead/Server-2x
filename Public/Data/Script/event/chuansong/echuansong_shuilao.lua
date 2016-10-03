--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x400914_OnEnterArea( sceneId, selfId )
--misIndex = GetMissionIndexByID(sceneId,selfId,4013)
--num = GetMissionParam(sceneId,selfId,misIndex,0)
--if	num == 1 then
--	NewWorld( sceneId, selfId, 0, 234, 69 )
--else
--	CallScriptFunction((231000), "OnAbandon",sceneId, selfId)
--end

--	BeginEvent(sceneId)
--		AddText(sceneId,"  ÄãXác nh§nÒªÀë¿ªË®ÀÎÂð?")
--		AddNumText(sceneId,g_scriptId,"Xác nh§n",2,0)
--		AddNumText(sceneId,g_scriptId,"HuÖ bö",2,1)
--	EndEvent( )
--	DispatchEventList(sceneId,selfId,targetId)

	misIndex = GetMissionIndexByID(sceneId,selfId,1213)
	num = GetMissionParam(sceneId,selfId,misIndex,0)
	if	num == 1 then
		NewWorld( sceneId, selfId, 4, 52, 96 )
	else
		CallScriptFunction((232002), "OnAbandon",sceneId, selfId)
	end
end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400914_OnTimer( sceneId, selfId )
	-- ºÁ giây,¿´TÕi Cái này  area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 giâyºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400914_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x400914_OnLeaveArea( sceneId, selfId )
end

----**********************************
----ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
----**********************************
--function OnEventRequest( sceneId, selfId, targetId, eventId )
--	if	GetNumText()==0	then
--		if	IsHaveMission( sceneId, selfId, 4012)>0	 then
--			misIndex = GetMissionIndexByID(sceneId,selfId,4013)
--			num = GetMissionParam(sceneId,selfId,misIndex,0)
--			if	num == 1 then
--				NewWorld( sceneId, selfId, 0, 234, 69 )
--			else
--				CallScriptFunction((231000), "OnAbandon",sceneId, selfId)
--			end
--		end
--	end
--end
