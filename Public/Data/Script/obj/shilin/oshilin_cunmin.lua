--石林NPC
--村民
--普通

--**********************************
--事件交互入口
--**********************************
function x026008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Vi阯 Nguy畉 Th鬾, trong th鬾 kh鬾g c騨 m nh� v鏽 l� ho鄋 to鄋 餺鄋 vi阯.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
