-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400806_g_ScriptId = 400806
x400806_g_ControlScript = 600037

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400806_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400806_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400806_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400806_OnLeaveArea( sceneId, selfId )
	return
end
