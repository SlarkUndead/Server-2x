-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400800_g_ScriptId = 400800
x400800_g_ControlScript = 600004

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400800_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400800_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400800_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400800_OnLeaveArea( sceneId, selfId )
	return
end
