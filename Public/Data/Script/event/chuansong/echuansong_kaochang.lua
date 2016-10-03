--玩家进入m祎 c醝 area 时触发
function x400922_OnEnterArea( sceneId, selfId )
	misIndex = GetMissionIndexByID(sceneId,selfId,1220)
	if misIndex < 0 or misIndex > 20 then
		return
	end
	num = GetMissionParam(sceneId,selfId,misIndex,0)
	if	num == 1 then
		NewWorld( sceneId, selfId, 0, 268, 87 )
	else
		CallScriptFunction((801018), "OnAbandon",sceneId, selfId)
		CallScriptFunction((801018), "BackToCity",sceneId, selfId)

	end
end

--玩家T読 m祎 c醝 area 呆了m祎 段时间没走则定时触发
function x400922_OnTimer( sceneId, selfId )
	-- 毫 gi鈟,看T読 C醝 n鄖  area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi鈟后仍未传送
	if StandingTime >= 5000 then
		x400922_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开m祎 c醝 area 时触发
function x400922_OnLeaveArea( sceneId, selfId )
end


