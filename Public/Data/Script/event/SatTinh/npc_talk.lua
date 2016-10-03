--Th§p nh¸ Sát Tinh
--Khô Vinh ÐÕi Sß, Monster talk
--Author: Hoàng Steven

--************************--
x910114_g_ScriptId=910114												
x910114_g_Event_ScriptId=910112															--Script event
--************************--
x910114_g_Introduce="Không biªt t× ðâu ra có #G12 tên#W tñ xßng #GTh§p nh¸ Sát Tinh#W hoành hành ngang ngßþc, uy hiªp bá tính. Thiên hÕ anh hùng, phàm là ngß¶i hành hi®p trßþng nghîa, các hÕ không th¬ bö qua cho chúng!"
x910114_g_Monster_Talk="Thiên ðß¶ng rµng bß¾c ngß½i không ði. Ð¸a ngøc vô môn ngß½i lÕi ðªn. Ngß½i mu¯n khiêu chiªn ta nhßng cån bän là ta không có hÑng. Ðþi mµt lát næa xem sao..."
--************************--
x910114_g_Monk_Name="Khô Vinh ÐÕi Sß"													--Tên cüa Khô Vinh ÐÕi Sß
--******************--
x910114_g_Back_Scene_Index=2															--ID cänh quay tr· lÕi
x910114_g_Back_Pos_X=129																--Pos X cänh quay tr· lÕi
x910114_g_Back_Pos_Y=76																--Pos Y cänh quay tr· lÕi
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910114_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		if GetName(sceneId,targetId)==x910114_g_Monk_Name then
			AddText(sceneId,x910114_g_Introduce)
			AddNumText(sceneId,x910114_g_ScriptId,"R¶i khöi n½i này",9,0)			--R¶i phø bän
			AddNumText(sceneId,x910114_g_ScriptId,"Bö qua",-1,1)					--Bö qua
		else
			AddText(sceneId,x910114_g_Monster_Talk)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910114_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()

	--************************--
	if key==1 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--************************--
	if key==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ s¨ không th¬ quay lÕi n½i này næa. Hãy ch¡c ch¡n r¢ng các hÕ ðã hoàn thành nhi®m vø trß¾c tiên. Các hÕ xác nh§n r¶i bö n½i này?")
			AddNumText(sceneId,x910114_g_ScriptId,"Xác nh§n",-1,2)					--Xác nh§n
			AddNumText(sceneId,x910114_g_ScriptId,"Hüy bö",-1,1)					--Bö qua
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	if key==2 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,x910114_g_Back_Scene_Index,x910114_g_Back_Pos_X,x910114_g_Back_Pos_Y)
	end
	--************************--
	
end