--Nga MyNPC
--Ð¡Ê«
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x015005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Chß·ng môn tÖ tÖ g¥n ðây luôn nh¡c t¾i mµt ngß¶i tên là Hàn Thª Trung, nói anh ta là mµt ðÕi anh hùng, có th¬ sánh v¾i \"B¡c Ki«u Phong\" và \"Nam Mµ Dung\"")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
