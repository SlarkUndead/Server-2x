--玩家进入m祎 c醝 area 时触发
function x400084_OnEnterArea( sceneId, selfId )
	local BackGarden = { [62] = 2, [82] = 71, [182] = 72 }
	local destScene = BackGarden[sceneId]
	if not destScene then
		destScene = 71
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, destScene,275,50)
end

--玩家T読 m祎 c醝 area 呆了m祎 段时间没走则定时触发
function x400084_OnTimer( sceneId, selfId )
	-- 毫 gi鈟,看T読 C醝 n鄖  area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi鈟后仍未传送
	if StandingTime >= 5000 then
		x400084_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开m祎 c醝 area 时触发
function x400084_OnLeaveArea( sceneId, selfId )
end
