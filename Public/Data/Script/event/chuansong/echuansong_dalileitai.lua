-- ĞÕi LıÀŞÌ¨¸±±¾´«ËÍ ği¬m

x400917_g_ScriptId = 400917
x400917_g_ChallengeScriptId = 806014

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400917_OnEnterArea( sceneId, selfId )
	CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400917_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400917_OnLeaveArea( sceneId, selfId )
	return
end
