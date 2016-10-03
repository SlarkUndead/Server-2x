-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400801_g_ScriptId = 400801
x400801_g_ControlScript = 600009

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400801_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400801_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400801_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400801_OnLeaveArea( sceneId, selfId )
	return
end
