--Th§p nh¸ Sát Tinh
--Khô Vinh ÐÕi Sß
--Author: Hoàng Steven

--************************--
x910113_g_ScriptId=910113												
x910113_g_Event_ScriptId=910112												--Script event
--************************--
x910113_g_Introduce="Không biªt t× ðâu ra có #G12 tên#W tñ xßng #GTh§p nh¸ Sát Tinh#W hoành hành ngang ngßþc, uy hiªp bá tính. Thiên hÕ anh hùng, phàm là ngß¶i hành hi®p trßþng nghîa, các hÕ không th¬ bö qua cho chúng!"
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910113_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910113_g_Introduce)
		CallScriptFunction(x910113_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910113_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910113_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910113_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end