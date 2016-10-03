-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400805_g_ScriptId = 400805
x400805_g_ControlScript = 600026

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400805_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400805_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400805_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400805_OnLeaveArea( sceneId, selfId )
	return
end
