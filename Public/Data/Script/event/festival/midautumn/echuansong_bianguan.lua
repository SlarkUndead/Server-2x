-- ÖĞÇïÈÎÎñ¸±±¾»ØĞôn HoàngtoÕ ğµ ´«ËÍ ği¬m

x050011_g_ScriptId = 050011
x050011_g_ControlScript = 050010

-- Íæ¼Ò½øÈë´«ËÍ ği¬m
function x050011_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x050011_g_ControlScript, "Exit", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ği¬m
function x050011_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ği¬m
function x050011_OnLeaveArea( sceneId, selfId )
	return
end
