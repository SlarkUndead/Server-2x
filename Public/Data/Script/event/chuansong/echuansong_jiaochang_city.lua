-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400804_g_ScriptId = 400804
x400804_g_ControlScript = 600025

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400804_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400804_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400804_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400804_OnLeaveArea( sceneId, selfId )
	return
end
