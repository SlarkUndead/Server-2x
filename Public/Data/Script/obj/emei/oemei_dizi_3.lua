--Nga MyNPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x015032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<Nh� hoa khoe s, d竨 d鄋g quy猲 r�>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
