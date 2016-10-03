--姓i L齆PC
--天仙 mu礽 mu礽
--普通

--**********************************
--事件交互入口
--**********************************
function x007007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Kh呓ng Gia t 餫ng r痠 ren chuy畁 鹫o t!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
