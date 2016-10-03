--玩家进入m祎 c醝 area 时触发
function x400083_OnEnterArea( sceneId, selfId )
	local WoodenLane = { [61] = 2, [50] = 71, [81] = 72 }
	local destScene = WoodenLane[sceneId]
	if not destScene then
		destScene = 72
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, destScene,275,50)
end

--玩家T読 m祎 c醝 area 呆了m祎 段时间没走则定时触发
function x400083_OnTimer( sceneId, selfId )
	-- 毫 gi鈟,看T読 C醝 n鄖  area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi鈟后仍未传送
	if StandingTime >= 5000 then
		x400083_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开m祎 c醝 area 时触发
function x400083_OnLeaveArea( sceneId, selfId )
end
