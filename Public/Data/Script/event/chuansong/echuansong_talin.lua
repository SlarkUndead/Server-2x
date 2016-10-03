--玩家进入m祎 c醝 area 时触发
function x400066_OnEnterArea( sceneId, selfId )
	if (IsHaveMission(sceneId,selfId,1061) > 0)  then
		CallScriptFunction((220901), "OnAbandon",sceneId, selfId)
	else
		NewWorld( sceneId, selfId, 9, 62, 63 )
	end
end

--玩家T読 m祎 c醝 area 呆了m祎 段时间没走则定时触发
function x400066_OnTimer( sceneId, selfId )
	-- 毫 gi鈟,看T読 C醝 n鄖  area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi鈟后仍未传送
	if StandingTime >= 5000 then
		x400066_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开m祎 c醝 area 时触发
function x400066_OnLeaveArea( sceneId, selfId )
end

----**********************************
----事件列表选中m祎 项
----**********************************
--function OnEventRequest( sceneId, selfId, targetId, eventId )
--	if	GetNumText()==0	then
--		if	IsHaveMission( sceneId, selfId, 4013)>0	 then
--			misIndex = GetMissionIndexByID(sceneId,selfId,4013)
--			num = GetMissionParam(sceneId,selfId,misIndex,0)
--			if	num == 1 then
--				NewWorld( sceneId, selfId, 0, 268, 87 )
--			else
--				CallScriptFunction((231001), "OnAbandon",sceneId, selfId)
--			end
--		end
--	end
--end
