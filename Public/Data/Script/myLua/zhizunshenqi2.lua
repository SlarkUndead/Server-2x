-- 002956 ÖÁ×ğÉñÆ÷¼¤»î×¨ÓÃ½Å±¾ 
-- ÈçÒâĞ¡×ÓĞ´
-- ½Å±¾ºÅ
x002956_g_ScriptId = 002956
--**********************************
--²ÎÈë¼¤»îtoÕ ğµ ×°±¸
--**********************************
x002956_g_eventList={}
x002956_g_EquipList={	
-- ·ï¸èğ½Îèmµt ¼¶
{n=110,id=10305203},
-- ·ï¸èğ½Îè¶ş¼¶
{n=120,id=10305204},
-- ·ï¸èğ½ÎèÈı¼¶
{n=130,id=10305205},
-- ·ï¸èğ½ÎèËÄ¼¶
{n=140,id=10305206},
-- ¡¾¶¾¡¿·ï¸èğ½Îè
{n=150,id=10305207},
-- ¡¾±ù¡¿·ï¸èğ½Îè
{n=160,id=10305208},
-- ¡¾»ğ¡¿·ï¸èğ½Îè
{n=170,id=10305209},
-- ¡¾Ğş¡¿·ï¸èğ½Îè
{n=180,id=10305210},
-- ÓÎÔÆ¾ªÁúmµt ¼¶
{n=190,id=10305211},
-- ÓÎÔÆ¾ªÁú¶ş¼¶
{n=200,id=10305212},
-- ÓÎÔÆ¾ªÁúÈı¼¶
{n=210,id=10305213},
-- ÓÎÔÆ¾ªÁúËÄ¼¶
{n=220,id=10305214},
-- ¡¾¶¾¡¿ÓÎÔÆ¾ªÁú
{n=230,id=10305215},
-- ¡¾±ù¡¿ÓÎÔÆ¾ªÁú
{n=240,id=10305216},
-- ¡¾»ğ¡¿ÓÎÔÆ¾ªÁú
{n=250,id=10305217},
-- ¡¾Ğş¡¿ÓÎÔÆ¾ªÁú
{n=260,id=10305218},
-- ¼¤»îµÀ¾ß
{n=270,id=20310116},
}
--**********************************
--µÀ¾ßC¥n ÊıÁ¿
--**********************************
x002956_g_StoneList={
-- ·ï¸èğ½Îèmµt ¼¶ 
-- ÓÎÔÆ¾ªÁúmµt ¼¶
{n=1,id=20310116,num=20,str="Linh ThúTinhÆÇ"},
-- ·ï¸èğ½Îè¶ş¼¶
{n=2,id=10305203,num=3,str="·ï¸èğ½Îèmµt ¼¶"},
-- ·ï¸èğ½ÎèÈı¼¶
{n=3,id=10305204,num=3,str="·ï¸èğ½Îè¶ş¼¶"},
-- ·ï¸èğ½ÎèËÄ¼¶
{n=4,id=10305205,num=3,str="·ï¸èğ½ÎèÈı¼¶"},
-- ·ï¸èğ½Îè¡¾¶¾¡¿¡¾±ù¡¿¡¾»ğ¡¿¡¾Ğş¡¿
{n=5,id=10305206,num=3,str="·ï¸èğ½ÎèËÄ¼¶"},
-- ÓÎÔÆ¾ªÁú¶ş¼¶
{n=6,id=10305211,num=3,str="ÓÎÔÆ¾ªÁúmµt ¼¶"},
-- ÓÎÔÆ¾ªÁúÈı¼¶
{n=7,id=10305212,num=3,str="ÓÎÔÆ¾ªÁú¶ş¼¶"},
-- ÓÎÔÆ¾ªÁúËÄ¼¶
{n=8,id=10305213,num=3,str="ÓÎÔÆ¾ªÁúÈı¼¶"},
-- ÓÎÔÆ¾ªÁú¡¾¶¾¡¿¡¾±ù¡¿¡¾»ğ¡¿¡¾Ğş¡¿
{n=9,id=10305214,num=3,str="ÓÎÔÆ¾ªÁúËÄ¼¶"},
}
--**********************************
--NPC¶Ô»°
--**********************************
function x002956_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #gFF3E96ÖÁ×ğÉñÆ÷C¥n Ï¡ÓĞtoÕ ğµ Linh ThúTinhÆÇÀ´»½ĞÑ,Ö»ÒªÄãÊÕ¼¯µ½ÁË×ã¹»toÕ ğµ ²ÄÁÏ±ã¿ÉÀ´ÕÒÎÒ.")
		for i, eventId in x002956_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»îÖÁ×ğÉñÆ÷·ï¸èğ½Îè", 1, 100 )
		AddNumText( sceneId, x002956_g_ScriptId, "Àë¿ª¡­¡­", 13, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002956_OnDefaultEvent( sceneId, selfId,targetId )
	x002956_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x002956_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText == 0  then
		-- ¹Ø±Õ´°¿Ú
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	if nNumText == 100 then
		BeginEvent(sceneId)
			AddText(sceneId, "  ÇëÑ¡Ôñmµt ÏÂÄãÒª»½ĞÑtoÕ ğµ ÖÁ×ğÉñÆ÷")
			if nNumText == 100 then
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#Y·ï¸èğ½Îèmµt ¼¶", 1, nNumText+10)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#Y·ï¸èğ½Îè¶ş¼¶", 1, nNumText+20)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#Y·ï¸èğ½ÎèÈı¼¶", 1, nNumText+30)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#Y·ï¸èğ½ÎèËÄ¼¶", 1, nNumText+40)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾¶¾¡¿·ï¸èğ½Îè", 1, nNumText+50)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾±ù¡¿·ï¸èğ½Îè", 1, nNumText+60)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾»ğ¡¿·ï¸èğ½Îè", 1, nNumText+70)
			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾Ğş¡¿·ï¸èğ½Îè", 1, nNumText+80)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#YÓÎÔÆ¾ªÁúmµt ¼¶", 1, nNumText+90)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#YÓÎÔÆ¾ªÁú¶ş¼¶", 1, nNumText+100)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#YÓÎÔÆ¾ªÁúÈı¼¶", 1, nNumText+110)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#YÓÎÔÆ¾ªÁúËÄ¼¶", 1, nNumText+120)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾¶¾¡¿ÓÎÔÆ¾ªÁú", 1, nNumText+130)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾±ù¡¿ÓÎÔÆ¾ªÁú", 1, nNumText+140)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾»ğ¡¿ÓÎÔÆ¾ªÁú", 1, nNumText+150)
--			AddNumText(sceneId, x002956_g_ScriptId, "#gFF6A6A#G¼¤»î#I¡¾Ğş¡¿ÓÎÔÆ¾ªÁú", 1, nNumText+160)
			end																	
			AddNumText( sceneId, x002956_g_ScriptId, "Àë¿ª¡­¡­", 0, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
			
	if nNumText > 100 and nNumText < 800  then
		BeginEvent(sceneId)
			AddText(sceneId, "  ÖÁ×ğÉñÆ÷ÒÑ¾­³ÁË¯Ç§Äê,ÓÃCái này ²ÄÁÏÀ´»½ĞÑ!")
			
			local nLevel = 0
			if nNumText > 100 then    -- ¼¤»î·ï¸èğ½Îèmµt ¼¶
				nLevel = 1
			end
			if nNumText > 110 then    -- ¼¤»î·ï¸èğ½Îè¶ş¼¶
				nLevel = 2
			end
			if nNumText > 120 then    -- ¼¤»î·ï¸èğ½ÎèÈı¼¶
				nLevel = 3
			end			
			if nNumText > 130 then    -- ¼¤»î·ï¸èğ½ÎèËÄ¼¶
				nLevel = 4
			end			
			if nNumText > 140 then    -- ¡¾¶¾¡¿·ï¸èğ½Îè
				nLevel = 5
			end			
			if nNumText > 150 then    -- ¡¾±ù¡¿·ï¸èğ½Îè
				nLevel = 5
			end			
			if nNumText > 160 then    -- ¡¾»ğ¡¿·ï¸èğ½Îè
				nLevel = 5
			end			
			if nNumText > 170 then    -- ¡¾Ğş¡¿·ï¸èğ½Îè
				nLevel = 5
			end			
			if nNumText > 180 then    -- ÓÎÔÆ¾ªÁúmµt ¼¶
				nLevel = 1
			end			
			if nNumText > 190 then    -- ÓÎÔÆ¾ªÁú¶ş¼¶
				nLevel = 6
			end			
			if nNumText > 200 then    -- ÓÎÔÆ¾ªÁúÈı¼¶
				nLevel = 7
			end					
			if nNumText > 210 then    -- ÓÎÔÆ¾ªÁúËÄ¼¶
				nLevel = 8
			end					
			if nNumText > 220 then    -- ¡¾¶¾¡¿ÓÎÔÆ¾ªÁú
				nLevel = 9
			end					
			if nNumText > 230 then    -- ¡¾±ù¡¿ÓÎÔÆ¾ªÁú
				nLevel = 9
			end					
			if nNumText > 240 then    -- ¡¾»ğ¡¿ÓÎÔÆ¾ªÁú
				nLevel = 9
			end				
			if nNumText > 250 then    -- ¡¾Ğş¡¿ÓÎÔÆ¾ªÁú
				nLevel = 9
			end				

			local szStr = "  Òª ğÕt ğßşcÕâĞ©×°±¸,Ngß½i c¥n ¸øÎÒ#gfff0f0¡°" .. x002956_g_StoneList[nLevel].str
										.. "¡±#cFFCC00¡°".. tostring(x002956_g_StoneList[nLevel].num) .. "¡±#Wcái  #r#cFFCC00 ği¬mÆäÕß ği¬mÌìÏÂ,ÎäÁÖÖĞÈËÃÎÃÂÒÔÇótoÕ ğµ ÉñÆ÷£¡#W"
			AddText(sceneId, szStr)
			
			for i, item in x002956_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
   		DispatchMissionContinueInfo(sceneId,selfId,targetId, x002956_g_ScriptId, 0)		
	end
			
	for i, findId in x002956_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ğµ ÈÎÎñ
--**********************************
function x002956_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002956_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ğµ ÈÎÎñ
--**********************************
function x002956_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ğµ ÊÂ¼şÁĞ±í
	for i, findId in x002956_g_eventList do
		if missionScriptId == findId then
			x002956_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x002956_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌĞø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x002956_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002956_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ğµ ÈÎÎñ
--**********************************
function x002956_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	--´¦ÀíÌá½»ºótoÕ ğµ ÏÔÊ¾Çé¿ö
	--ÎªÁË°²È«,ÕâÀïÒª×ĞÏ¸,²»ÄÜ³ö´í
	local nItemIndex = -1
	
	for i, item in x002956_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	
	if nItemIndex == -1  then
		return
	end
	
	-- ¿´Íê¼ÒĞúng²»Ğúng¹»²ÄÁÏÌá½»
	local nLevel = 0
	if x002956_g_EquipList[nItemIndex].n > 100 then
		nLevel = 1
	end
	if x002956_g_EquipList[nItemIndex].n > 110 then
		nLevel = 2
	end
	if x002956_g_EquipList[nItemIndex].n > 120 then
		nLevel = 3
	end	
	if x002956_g_EquipList[nItemIndex].n > 130 then
		nLevel = 4
	end	
	if x002956_g_EquipList[nItemIndex].n > 140 then
		nLevel = 5
	end	
	if x002956_g_EquipList[nItemIndex].n > 150 then
		nLevel = 5
	end	
	if x002956_g_EquipList[nItemIndex].n > 160 then
		nLevel = 5
	end	
	if x002956_g_EquipList[nItemIndex].n > 170 then
		nLevel = 5
	end	
	if x002956_g_EquipList[nItemIndex].n > 180 then
		nLevel = 1
	end	
	if x002956_g_EquipList[nItemIndex].n > 190 then
		nLevel = 6
	end	
	if x002956_g_EquipList[nItemIndex].n > 200 then
		nLevel = 7
	end	
	if x002956_g_EquipList[nItemIndex].n > 210 then
		nLevel = 8
	end	
	if x002956_g_EquipList[nItemIndex].n > 220 then
		nLevel = 9
	end	
	if x002956_g_EquipList[nItemIndex].n > 230 then
		nLevel = 9
	end	
	if x002956_g_EquipList[nItemIndex].n > 240 then
		nLevel = 9
	end	
	if x002956_g_EquipList[nItemIndex].n > 250 then
		nLevel = 9
	end	
		
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x002956_g_StoneList[nLevel].id) >= x002956_g_StoneList[nLevel].num  then
		bStoneOk = 1
	end
	
	if  bStoneOk == 0 then
		BeginEvent(sceneId)
			strText = "ÄãÃ»ÓĞ×ã¹»toÕ ğµ ²ÄÁÏ,²»ÄÜ¼¤»îÖÁ×ğÉñÆ÷."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ¼ì²éĞúng²»ĞúngÓĞ×ã¹»toÕ ğµ Ê¯Í·¿ÉÒÔ¿Û³ı
	if LuaFnGetAvailableItemCount(sceneId, selfId, x002956_g_StoneList[nLevel].id) < x002956_g_StoneList[nLevel].num   then
		BeginEvent(sceneId)
			strText = "ÄãÃ»ÓĞ×ã¹»toÕ ğµ ²ÄÁÏ¿ÉÒÔ±»¿Û³ı,Çë¼ì²éÎïÆ·Ğúng·ñÉÏËø."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
		
	end
	
	-- ¼ì²é±³°ü¿Õ¼ä
	BeginAddItem(sceneId)
		AddItem(sceneId, selectRadioId, 1)
	local bBagOk = EndAddItem(sceneId, selfId)
	
	if bBagOk < 1 then
		BeginEvent(sceneId)
			strText = "Cüa ngß½i ±³°üÃ»ÓĞ¿Õ¼äÁË."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x002956_g_StoneList[nLevel].id)
	local szTransferStone = GetBagItemTransfer(sceneId,selfId, nItemBagIndexStone)
	
	-- É¾³ıÏà¹ØtoÕ ğµ Ê¯Í·
	local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x002956_g_StoneList[nLevel].id, x002956_g_StoneList[nLevel].num)
	
	if bDelOk < 1  then
		BeginEvent(sceneId)
			strText = "¿Û³ö²ÄÁÏth¤t bÕi."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	else
		--¸øÍê¼Ò¶«Î÷,Íê³É
		local nBagIndex = TryRecieveItem( sceneId, selfId, x002956_g_EquipList[nItemIndex].id, 1 );
		
		BeginEvent(sceneId)
			strText = "¼¤»î³É¹¦."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	for i, findId in x002956_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x002956_OnDie( sceneId, selfId, killerId )
end
