--Nga MyNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x015031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là ð® tØ phái Nga My")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
