--NPC Tong Hop Chuc Nang
x000163_g_ScriptId = 000163
--So Script 000163

--**********************************
--By Tandat102 TIEN KIEM KY HIEP
--**********************************
function x000163_OnDefaultEvent( sceneId, selfId,targetId )
     local 	nam	= LuaFnGetName( sceneId, selfId )
	local msgStr = format ( "#e0e8de5#c00ffffChào m×ng "..nam.." ðªn v¾i Tiên Kiªm KÏ Hi®p")
	BeginEvent(sceneId)
		AddText(sceneId,msgStr)
		--AddNumText( sceneId, x000163_g_ScriptId, "Nh§n lÕi skill c½ bän", 6, 1000 )		
		--AddNumText( sceneId, x000163_g_ScriptId, "#GNh§n #{_EXCHG10000000} Ðón Xuân 1 ngày/L¥n", 5, 1010 )		
		AddNumText( sceneId, x000163_g_ScriptId, "M¤t #{_EXCHG500000} ð¬ ð±i 1000 KNB", 6, 100 )
		AddNumText( sceneId, x000163_g_ScriptId, "#GM¤t #{_EXCHG5000000} ð¬ ð±i 10000 KNB", 6, 300 )
		AddNumText( sceneId, x000163_g_ScriptId, "M¤t #{_MONEY1000000} ð¬ ð±i 2500 KNB", 6, 200 )
		AddNumText( sceneId, x000163_g_ScriptId, "#GNh§n Ám khí Phi hoàn thÕch", 6, 4444 )

		AddNumText( sceneId, x000163_g_ScriptId, "Ð¡t v§y! Ta không c¥n...", 8, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--Thuc thien chuc nang
--**********************************
function x000163_OnEventRequest( sceneId, selfId, targetId, eventId)

--Nhan lai skill co ban
	if GetNumText() == 1000 then 
		x000163_g_skillList = { 
				{id=241,name=" NgoÕi công hµ th¬"},
				{id=242,name=" D¯c sÑc t¤n công"},
				{id=243,name=" Công kích yªu ði¬m"},
				{id=244,name=" Công kích b¢ng ngoÕi kình"},
				{id=245,name=" Tr¸ li®u s½ c¤p"},
				{id=246,name=" Nµi công hµ th¬"},
				{id=247,name=" Công kích vào n½i s½ h·"},
				{id=248,name=" †n ðµn s½ c¤p"},
				{id=249,name=" CÕm bçy thêu ð¯t"}};
		BeginEvent( sceneId )
			AddText( sceneId, "#YKhi b¸ m¤t các kÛ nång c½ bän. Các hÕ có th¬ quay lÕi ðây ð¬ lînh nh§n lÕi!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	end
--nhan vat pham
	if GetNumText()  == 4444 then 
		BeginAddItem(sceneId)
			AddItem( sceneId,10155001,1)
		EndAddItem(sceneId,selfId)
		       AddItemListToHuman(sceneId,selfId)
		       x000163_NotifyFailBox( sceneId, selfId, targetId, "Các hÕ ðã nh§n thành công Ám khí." )

	end
 -- Nhan vang don xuan	
	if GetNumText() == 1010 then
        local day = GetDayTime();
        local lastDay = GetMissionData(sceneId, selfId, AddMoneyJZ );
            if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#gffff00Chào bÕn, hôm nay bÕn ðã sØ døng chÑc nång này. M²i ngày chï ðßþc dùng chÑc nång này mµt l¥n. #rHãy quay lÕi vào hôm sau." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
            end
			AddMoneyJZ( sceneId, selfId, 10000000 )
            local	nam	= LuaFnGetName( sceneId, selfId )
            BroadMsgByChatPipe( sceneId, selfId, "#HChúc m×ng #cFF0000"..nam.." #Hðã nh§n Vàng ðón xuân thành công!", 4 )
			SetMissionData(sceneId, selfId, AddMoneyJZ, day);

		BeginEvent(sceneId)
        local	nam	= LuaFnGetName( sceneId, selfId )
			AddText(sceneId,"#HChúc m×ng #cFF0000"..nam.." #Hðã nh§n thành công #G#{_EXCHG10000000}#H. Cám ½n ðã üng hµ #e0e8de5#c00ffffTiên Kiªm KÏ Hi®p. #HChúc bÕn nåm m¾i #PAn Khang Th¸nh Vßþng.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
-- doi 50 vang lay 1000 diem tang
	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "Ð¬ nh§n KNB c¥n phäi t¯n #G#{_EXCHG500000}#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x000163_g_scriptId, "Ð°ng ý", -1, 101)
			AddNumText( sceneId, x000163_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 101 then
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		if (nMoneyJZ + nMoney <500000) then
			--x000163_NotifyFailTips( sceneId, selfId, "#G#{_EXCHG500000}#W mà cûng ko có sao?" )
			x000163_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G#{_EXCHG500000}#W mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = LuaFnCostMoneyWithPriority(sceneId,selfId,500000)
		if reply == -1 then
			x000163_NotifyFailTips( sceneId, selfId, "#G#{_EXCHG500000}#W  mà cûng ko có sao? nghèo quá, ði kiªm ði r°i quay vê ðây v¾i ta." )
			x000163_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G#{_EXCHG500000}#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,1000)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G1000 KNB #Pvà m¤t #G#{_EXCHG500000}#W."
			x000163_NotifyFailTips( sceneId, selfId, str )
			x000163_NotifyFailBox( sceneId, selfId, targetId, str )
		end
		end
-- doi 100 vang lay 2500 diem tang		
	if GetNumText() == 200 then
		BeginEvent( sceneId )
					AddText( sceneId, "Ð¬ nh§n KNB c¥n phäi t¯n #G#{_MONEY1000000}#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x000163_g_scriptId, "Ð°ng ý", -1, 201)
			AddNumText( sceneId, x000163_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 201 then
		local	SelfMoney = GetMoney(sceneId, selfId)
		if SelfMoney<1000000 then
			--x000163_NotifyFailTips( sceneId, selfId,  "#G#{_MONEY1000000}#W mà cûng ko có sao?" )
			x000163_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü 100 Vàng  mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = CostMoney(sceneId,selfId,1000000)
		if reply == -1 then
			x000163_NotifyFailTips( sceneId, selfId, "#G#{_MONEY1000000}#W  mà cûng ko có sao? nghèo quá ,ði kiªm ði r°i quay vê ðây v¾i ta." )
			x000163_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G#{_MONEY1000000}#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,2500)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G2500 KNB #Pvà m¤t #G#{_MONEY1000000}#W."
			x000163_NotifyFailTips( sceneId, selfId, str )
			x000163_NotifyFailBox( sceneId, selfId, targetId, str )
		end
				end
				
-- doi 500 vang lay 10000 diem tang
	if GetNumText() == 300 then
		BeginEvent( sceneId )
					AddText( sceneId, "Ð¬ nh§n KNB c¥n phäi t¯n #G#{_EXCHG5000000}#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x000163_g_scriptId, "Ð°ng ý", -1, 301)
			AddNumText( sceneId, x000163_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 301 then
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		if (nMoneyJZ + nMoney <5000000) then
			--x000163_NotifyFailTips( sceneId, selfId,"#G#{_MONEY3000000}#W mà cûng ko có sao?" )
			x000163_NotifyFailBox( sceneId, selfId, targetId,  "Không có Ðü #G#{_EXCHG5000000}#W  mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = LuaFnCostMoneyWithPriority(sceneId,selfId,5000000)
		if reply == -1 then
			x000163_NotifyFailTips( sceneId, selfId, "#G#{_EXCHG5000000}#W  mà cûng ko có sao? nghèo quá ði kiªm ði r°i quay vê ðây v¾i ta." )
			x000163_NotifyFailBox( sceneId, selfId, targetId,"Không có Ðü #G#{_EXCHG5000000}#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,10000)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G10000 KNB #Pvà m¤t #G#{_EXCHG5000000}#W."
			x000163_NotifyFailTips( sceneId, selfId, str )
			x000163_NotifyFailBox( sceneId, selfId, targetId, str )
		end
		end
	if GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end
--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000163_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x000163_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
