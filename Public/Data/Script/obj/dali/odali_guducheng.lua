--ÐÕi LýNPC
--¹ÅóÆ³Ï
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002012_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", lâu l¡m không g£p, hoàng thßþng ðang ðþi các hÕ ð¤y")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
