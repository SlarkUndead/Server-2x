-- L誧 D呓ng擂台副本传送 餴琺

x400916_g_ScriptId = 400916
x400916_g_ChallengeScriptId = 806012

-- 玩家进入传送 餴琺
function x400916_OnEnterArea( sceneId, selfId )
	CallScriptFunction(x400916_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- 玩家停留T読 传送 餴琺
function x400916_OnTimer( sceneId, selfId )
	return
end

-- 玩家离开传送 餴琺
function x400916_OnLeaveArea( sceneId, selfId )
	return
end
