--Nga MyNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x015032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<Nhß hoa khoe s¡c, d¸u dàng quyªn rû>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
