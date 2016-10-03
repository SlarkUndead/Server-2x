-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400807_g_ScriptId = 400807
x400807_g_ControlScript = 600039

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400807_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400807_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400807_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400807_OnLeaveArea( sceneId, selfId )
	return
end
