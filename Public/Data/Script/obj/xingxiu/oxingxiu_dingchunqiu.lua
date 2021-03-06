--Tinh T鷆NPC
--掌门人
--Thi阯 S絥 邪ng L鉶
--普通

x016000_g_scriptId = 016000        
x016000_g_eventList={229009,229012,808092}

--**********************************
--事件交互入口
--**********************************
function x016000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L鉶 phu v鏽 lu鬾 c鋗 th rg, ng叨i trong giang h� d鵱g dao b鷄 ki猰 th呓ng ch閙 gi猼 l鏽 nhau, qu� th l� m祎 vi甤 t鄋 nh鏽 v� c鵱g. N猽 c� th� d鵱g 鸬c 痄 th呓ng ng叨i, m緄 c� th� khi猲 cho h� ch猼 trong s� b靚h y阯, an nh鄋, h課h ph鷆, vui v�. Cho n阯 械c c鬾g th l� m祎 v� c鬾g c鬾g 鹧c v� l唼ng.")
		
		for i, eventId in x016000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中m祎 项
--**********************************
function x016000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
			return
		end
	end
end
