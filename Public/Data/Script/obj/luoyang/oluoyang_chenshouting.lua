--L誧 D呓ngNPC
--陈寿庭
--跑商任务

--**********************************
--事件交互入口
--**********************************
function x000053_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Hi畁 t読 th呓ng h礽 thi猽 h鄋g, c醕 h� 瘙i v鄆 ng鄖 n鎍 h莕g t緄.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
