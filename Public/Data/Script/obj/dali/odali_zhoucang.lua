--ÐÕi LýNPC
--ÖÜ²Ö
--ÆÕÍ¨

x002091_g_ScriptId	= 2091

--²Ù×÷¼¯
x002091_g_Key				=
{
		["do"]					= 100,	--Xác nh§n
		["undo"]				= 101,	--HuÖ bö
		["del"]					= 103,	--ÎÒ¾ö¶¨ÍË³ö½­ºþ
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002091_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta ÐÕi T¯ng Hán Th÷ ðình H¥u võ thánh nhân Quan Hán Th÷ dß¾i tß¾ng quân Châu Xß½ng. Thay m£t anh hùng trong giang h° chü trì nghi thÑc rØa tay gác kiªm. Nªu nhß mu¯n xóa nhân v§t, rút lui khöi giang h° thì có th¬ ðªn tìm ta" )
		AddNumText( sceneId, x002091_g_ScriptId, "Ta mu¯n xóa nhân v§t", -1, x002091_g_Key["do"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x002091_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002091_g_Key["do"] then
		--1,		//ÇëÇó³É¹¦,¿ÉÒÔÉ¾³ý
		--2,		//TÕi °ïÅÉÖÐ²»¿ÉÒÔ×ÔÉ±
		--3,		//½á»é×´Ì¬
		--4,		//ÎïÆ·ÉÏËø²»ÄÜÉ¾³ý
		--5,		//ÓµÓÐÍæ¼ÒÉÌµê
		--6,		//ÓµÓÐ½á°Ý huynh ð®
		--7,		//ÓµÓÐÊ¦Í½¹ØÏµ
		BeginEvent(sceneId)
			local result = QueryDeleteCharState(sceneId,selfId)
			if result == 1 then
				AddText(sceneId,"  RØa tay gác kiªm, r¶i bö giang h°")
				AddNumText(sceneId,x002091_g_ScriptId,"Ta quyªt ð¸nh r¶i bö giang h°",6,x002091_g_Key["del"])
			end
			if result == 2 then
				AddText(sceneId,"  Không th¬ tñ sát trong bang phái")
			end
			if result == 3 then
				AddText(sceneId,"  Ngß½i vçn trong trÕng thái kªt hôn, không th¬ tñ sát")
			end
			if result == 4 then
				AddText(sceneId,"  Ngß½i có v§t ph¦m b¸ khóa, không th¬ tñ sát")
			end
			if result == 5 then
				AddText(sceneId,"  Ngß½i ðang s· hæu thß½ng ti®m, không th¬ tñ sát")
			end
			if result == 6 then
				AddText(sceneId,"  Ngß½i có huynh ð® kªt bái, không th¬ tñ sát")
			end
			if result == 7 then
				AddText(sceneId,"  Ngß½i có quan h® sß ð°, không th¬ tñ sát")
			end
			if result == 8 then
					local lefttime = GetLeftDeleteTime(sceneId,selfId)-7
					if lefttime > 0 then
						AddText(sceneId,"  Th¶i gian tñ sát cüa ngß½i chßa t¾i, vçn còn thiªu" ..lefttime.."Ngày")
					else
						AddText(sceneId,"  Ngß½i không ðång ký xin tñ sát!");
					end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif key == x002091_g_Key["del"] then
		--ExecuteDeleteChar(sceneId, selfId)
		x002091_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )
	end
end

function x002091_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )    
    BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x002091_g_ScriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,eventId)
		UICommand_AddString(sceneId,"OnMsgAccept");
		local str = format("Ngß½i xác ð¸nh mu¯n xóa nhân v§t này không?")
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	
	DispatchUICommand(sceneId,selfId, 24)
end

function x002091_OnMsgAccept( sceneId, selfId, targetId, eventId )
    local result = QueryDeleteCharState(sceneId,selfId)
    
    if( 1 == result ) then        
        ExecuteDeleteChar(sceneId, selfId)
    end
    
end
