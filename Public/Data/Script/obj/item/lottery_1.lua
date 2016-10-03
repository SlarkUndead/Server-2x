-- ÂÖ»ØÉñ·û

-- ½Å±¾ºÅ
x300060_g_ScriptId	= 300060  
x300060_g_ItemId = 40004431        

--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300060_OnDefaultEvent( sceneId, selfId)
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 130 then
		BeginEvent( sceneId )
		AddText( sceneId, "#b#Y ÐÆng c¤p phäi ðÕt 130 m¾i có th¬ sØ døng chÑc nång này." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end
	SetLevel( sceneId, selfId, 30)
        LuaFnDelAvailableItem(sceneId,selfId,x300060_g_ItemId,1)
        local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#gffff00Chúc m×ng "..nam.." ðã chuy¬n sinh b¢ng v§t ph¦m Thi®p thành công", 4 )
	BeginEvent(sceneId)
		AddText(sceneId,"#b#Y chúc m×ng bÕn ðã chuy¬n sinh thành công")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
	
end

--**********************************
-- 
--**********************************
function x300060_IsSkillLikeScript( sceneId, selfId)
	return 0
end
