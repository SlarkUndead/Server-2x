--姓i L齆PC
--扫院老僧
--普通

--**********************************
--事件交互入口
--**********************************
function x009008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Danh ti猲g th� ch� tr阯 giang h�, l鉶 n誴 疸 s緈 疬㧟 nghe. H鬽 nay 疬㧟 g, qu� nhi阯 danh b h� truy玭.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
