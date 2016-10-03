--玩家进入m祎 c醝 area 时触发
function x400030_OnEnterArea( sceneId, selfId )
--	if	GetLevel( sceneId, selfId)<20 then
--		BeginEvent(sceneId)
--			strText = "C黙 ng呓i 等c不足20c"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--	else
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 7,277,168)
--	end
end

--玩家T読 m祎 c醝 area 呆了m祎 段时间没走则定时触发
function x400030_OnTimer( sceneId, selfId )
	-- 毫 gi鈟,看T読 C醝 n鄖  area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi鈟后仍未传送
	if StandingTime >= 5000 then
		x400030_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开m祎 c醝 area 时触发
function x400030_OnLeaveArea( sceneId, selfId )
end
