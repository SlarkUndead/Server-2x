-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400803_g_ScriptId = 400803
x400803_g_ControlScript = 600019

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400803_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400803_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400803_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400803_OnLeaveArea( sceneId, selfId )
	return
end
