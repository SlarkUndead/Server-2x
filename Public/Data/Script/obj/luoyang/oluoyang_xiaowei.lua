--L誧 D呓ngNPC
--校尉
--普通

--**********************************
--事件交互入口
--**********************************
function x000091_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  V呓ng ph� nghi阭 m, kh鬾g 疬㧟 餴 l読 t鵼 ti畁!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
