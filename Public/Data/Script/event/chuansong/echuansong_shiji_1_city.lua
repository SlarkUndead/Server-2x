-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400808_g_ScriptId			= 400808
x400808_g_ControlScript	= 600042

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400808_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400808_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400808_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400808_OnLeaveArea( sceneId, selfId )
	return
end
