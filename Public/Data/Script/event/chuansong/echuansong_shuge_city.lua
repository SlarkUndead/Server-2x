-- Thành th¸ÈÎÎñ¸±±¾»ØThành th¸toÕ ğµ ´«ËÍ ği¬m

x400802_g_ScriptId = 400802
x400802_g_ControlScript = 600014

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x400802_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400802_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x400802_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x400802_OnLeaveArea( sceneId, selfId )
	return
end
