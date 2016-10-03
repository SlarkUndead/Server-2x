-- Áì½±NPC

x002084_g_scriptId = 002084

x002084_g_PrimaryAward = 1
x002084_g_Award2 = 2
x002084_g_Award3 = 3

x002084_g_Intro = 4

x002084_g_NewCard1 = 5
x002084_g_NewCard2 = 6
x002084_g_NewCard3 = 7
x002084_g_NewCard4 = 10
x002084_g_NewCard5 = 11
x002084_g_NewCard6 = 12
x002084_g_NewCard7 = 13
x002084_g_NewCard8 = 14

x002084_g_NewCardIntro = 9
x002084_g_VirtualNew = 30505080

--CD-KEY
x002084_g_AwardList = {}
x002084_g_AwardList[x002084_g_PrimaryAward] = {
	needLevel = -1,
	itemAward = { hashTable = {}, itemList = { 10402001, 10422012, 10423020 } },
	moneyReward = 0,
	PropBagSpaceNeed = 3,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetAward0Flag,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng s½ c¤p r°i, ðªn c¤p 30 lÕi ðªn tìm ta",
	recvMsg = "    M¤y món ð° trang sÑc · ðây, lßu lÕc trên giang h° ít nhi«u ð«u c¥n ðªn ngoài ra chõ ti«n này ð«u t£ng cho các hÕ, chúc các hÕ vui vë trong trò ch½i Thiên Long Bát Bµ",
}
x002084_g_AwardList[x002084_g_Award2] = {
	needLevel = 30,
	itemAward = { hashTable = { 40 }, itemList = {} },
	moneyReward = 0,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 1,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetAward1Flag,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 30 r°i, ðªn c¤p 60 lÕi ðªn tìm ta",
	recvMsg = "    Viên Bäo ThÕch này là mµt chút g÷i là, nh¾ là Bäo ThÕch quý thì phäi ðßþc trÕm khám trên trang b¸ t¯t, chúc ngß½i may m¡n",
}
x002084_g_AwardList[x002084_g_Award3] = {
	needLevel = 60,
	itemAward = { hashTable = { 41 }, itemList = {} },
	moneyReward = 0,
	PropBagSpaceNeed = 1,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetAward2Flag,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 60 r°i",
	recvMsg = "    Bí quyªt quan tr÷ng này là mµt chút g÷i là, nh¾ là bí quyªt quan tr÷ng thì phäi ðßþc dÕy cho trân thú, chúc ngß½i may m¡n",
}
--²Æ¸»¿¨
x002084_g_NewCardList = {}
x002084_g_NewCardList[x002084_g_NewCard1] = {
	needLevel = -1,
	itemAward = { hashTable = {}, itemList = {10402001,10422012,10423020} },
	moneyReward = 0,
	PropBagSpaceNeed = 3,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard0,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 1 r°i, ðªn c¤p 15 lÕi ðªn tìm ta",
	recvMsg = "    Hai món ð° trang sÑc và mµt loÕi vû khí · ðây, lßu lÕc trên giang h° ít nhi«u ð«u c¥n ðªn ngoài ra ch² ti«n này ð«u t£ng cho các hÕ, chúc các hÕ vui vë trong trò ch½i Thiên Long Bát Bµ",
}
x002084_g_NewCardList[x002084_g_NewCard2] = {
	needLevel = 15,
	itemAward = { hashTable = {}, itemList = {10141050,10141051,10413013,10411013,10412013,10421013} },
	moneyReward = 0,
	PropBagSpaceNeed = 6,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard1,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 15 r°i, ðªn c¤p 30 lÕi ðªn tìm ta",
	recvMsg = "#{Mis_NewUserCard_15}",
}
x002084_g_NewCardList[x002084_g_NewCard3] = {
	needLevel = 30,
	itemAward = { hashTable = {}, itemList = {30900015,20109004} },
	moneyReward = 0,
	PropBagSpaceNeed = 2,
	MatBagSpaceNeed = 1,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard2,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 30 r°i",
	recvMsg = "    — ðây cho các hÕ mµt con trân thú, mµt bµ qu¥n áo, mµt thë hþp thành Bäo ThÕch c¤p th¤p, mµt ph¥n tài li®u ðã ðóng l². #r#rTrân thú có th¬ tång thêm nång lñc cüa các hÕ trong chiªn ð¤u, thë hþp thành Bäo ThÕch có th¬ nâng cao tÖ l® thành công cüa hþp thành bäo thÕc, sau khi tài li®u ðã ðóng l² có th¬ ðóng ðßþc l² trên trang b¸, dùng ð¬ trÕm khäm Bäo ThÕch",
}
x002084_g_NewCardList[x002084_g_NewCard4] = {
	needLevel = 40,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 2000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard3,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 40.",
	recvMsg = "    — ðây t£ng cho các hÕ 2000 ði¬m",
}
x002084_g_NewCardList[x002084_g_NewCard5] = {
	needLevel = 50,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 4000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard4,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 50.",
	recvMsg = "    — ðây t£ng cho các hÕ 4000 ði¬m.",
}
x002084_g_NewCardList[x002084_g_NewCard6] = {
	needLevel = 60,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 4000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard5,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 60 r°i",
	recvMsg = "    — ðây t£ng cho các hÕ 4000 ði¬m.",
}
x002084_g_NewCardList[x002084_g_NewCard7] = {
	needLevel = 70,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 6000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard6,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 70.",
	recvMsg = "    — ðây t£ng cho các hÕ 6000 ði¬m.",
}
x002084_g_NewCardList[x002084_g_NewCard8] = {
	needLevel = 80,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 7520,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard7,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 80.",
	recvMsg = "     Cho các hÕ 7520 ði¬m t£ng tÕi ðây. ",
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002084_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "    Hoan nghênh ðªn v¾i thª gi¾i trò ch½i Thiên Long Bát Bµ, ta có th¬ giúp ngß½i ðßþc gì chång? Nªu ngß½i ðã t×ng sØ døng CD-KEY trên mÕng, trß¾c tiên ngß½i c¥n phäi kích hoÕt ði«u ki®n lînh ph¥n thß·ng m¾i có th¬ lînh ðßþc ph¥n thß·ng"
		AddText( sceneId, strText )

		AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ sØ døng thë tài phú", 2, 101 )
		AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ ð±i 5 vàng l¤y 315 KNB", 2, 990 )
		AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ ð±i 10 vàng l¤y 630 KNB", 2, 992 )
		AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ ð±i 50 vàng l¤y 3150 KNB", 2, 994 )
		AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ ð±i 100 vàng l¤y 6300 KNB", 2, 996 )
		--AddNumText( sceneId, x002084_g_scriptId, "ÎÒÊÇÍÆ¹ãÔ±cdkeyÓÃ»§", 2, 201 )

		AddNumText( sceneId, x002084_g_scriptId, "Gi¾i thi®u h® th¯ng khuyªn mãi", 11, x002084_g_Intro )
		AddNumText( sceneId, x002084_g_scriptId, "Gi¾i thi®u v« h® th¯ng thë tài phú", 11, x002084_g_NewCardIntro )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--CD-KEY
function x002084_AddCDKeyNumText(sceneId, selfId, targetId)
	local eventNum = 0
	BeginEvent( sceneId )
		if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Kích hoÕt CD-KEY", 2, 0 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_AwardList[x002084_g_PrimaryAward].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Lînh ph¥n thß·ng CD-KEY", 2, x002084_g_PrimaryAward )
			 eventNum = eventNum + 1
		end

		--if GetMissionFlag( sceneId, selfId, x002084_g_AwardList[x002084_g_Award2].flagBit ) == 0 then
			-- AddNumText( sceneId, x002084_g_scriptId, "ÁìÈ¡" .. x002084_g_AwardList[x002084_g_Award2].needLevel .. "¼¶µÄ½±Àø", 2, x002084_g_Award2 )
			-- eventNum = eventNum + 1
		--end

		--if GetMissionFlag( sceneId, selfId, x002084_g_AwardList[x002084_g_Award3].flagBit ) == 0 then
			-- AddNumText( sceneId, x002084_g_scriptId, "ÁìÈ¡" .. x002084_g_AwardList[x002084_g_Award3].needLevel .. "¼¶µÄ½±Àø", 2, x002084_g_Award3 )
			-- eventNum = eventNum + 1
		--end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	if eventNum == 0 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n t¤t cä ph¥n thß·ng CDKEY." )
	end
end

--²Æ¸»¿¨
function x002084_AddNewUserCardNumText(sceneId, selfId, targetId)
	local eventNum = 0
	BeginEvent( sceneId )
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Kích hoÕt thë tài phú", 2, 8 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard1].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Lînh ph¥n thß·ng c¤p 1", 2, x002084_g_NewCard1 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard2].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard2].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard2 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard3].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard3].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard3 )
			 eventNum = eventNum + 1
		end
		
		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard4].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard4].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard4 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard5].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard5].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard5 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard6].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard6].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard6 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard7].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard7].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard7 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard8].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard8].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard8 )
			 eventNum = eventNum + 1
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	if eventNum == 0 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n t¤t cä ph¥n thß·ng cüa thë tài phú." )
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002084_OnEventRequest( sceneId, selfId, targetId, eventId )


	if x002084_g_NewCardIntro == GetNumText() then
		
		BeginEvent( sceneId )
			AddText( sceneId, "#{XinShouKa_Help_001}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	end
	if GetNumText() == 990 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ð¬ nh§n 315 KNB c¥n phäi t¯n #G5v#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x002084_g_scriptId, "Ð°ng ý", -1, 991)
			AddNumText( sceneId, x002084_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
    elseif GetNumText() == 991 then
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		if (nMoneyJZ + nMoney <50000) then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G5v#W mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = LuaFnCostMoneyWithPriority(sceneId,selfId,50000)
		if reply == -1 then
			x002084_NotifyFailTips( sceneId, selfId, "#G5v#W  mà cûng ko có sao? nghèo quá, ði kiªm ði r°i quay vê ðây v¾i ta." )
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G5v#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,315)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G315 KNB #Pvà m¤t #G5v#W."
			x002084_NotifyFailTips( sceneId, selfId, str )
			x002084_NotifyFailBox( sceneId, selfId, targetId, str )
		end
	end
	if GetNumText() == 992 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ð¬ nh§n 630 KNB c¥n phäi t¯n #G10v#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x002084_g_scriptId, "Ð°ng ý", -1, 993)
			AddNumText( sceneId, x002084_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
    elseif GetNumText() == 993 then
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		if (nMoneyJZ + nMoney <100000) then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G10v#W mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = LuaFnCostMoneyWithPriority(sceneId,selfId,100000)
		if reply == -1 then
			x002084_NotifyFailTips( sceneId, selfId, "#G10v#W  mà cûng ko có sao? nghèo quá, ði kiªm ði r°i quay vê ðây v¾i ta." )
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G10v#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,630)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G630 KNB #Pvà m¤t #G10v#W."
			x002084_NotifyFailTips( sceneId, selfId, str )
			x002084_NotifyFailBox( sceneId, selfId, targetId, str )
		end
	end
	if GetNumText() == 994 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ð¬ nh§n 3150 KNB c¥n phäi t¯n #G50v#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x002084_g_scriptId, "Ð°ng ý", -1, 995)
			AddNumText( sceneId, x002084_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
    elseif GetNumText() == 995 then
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		if (nMoneyJZ + nMoney <500000) then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G50v#W mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = LuaFnCostMoneyWithPriority(sceneId,selfId,500000)
		if reply == -1 then
			x002084_NotifyFailTips( sceneId, selfId, "#G50v#W  mà cûng ko có sao? nghèo quá, ði kiªm ði r°i quay vê ðây v¾i ta." )
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G50v#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,3150)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G3150 KNB #Pvà m¤t #G50v#W."
			x002084_NotifyFailTips( sceneId, selfId, str )
			x002084_NotifyFailBox( sceneId, selfId, targetId, str )
		end
	end
	if GetNumText() == 996 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ð¬ nh§n 6300 KNB c¥n phäi t¯n #G100v#W. Ngß½i xác nh§n chuy¬n d±i chång?" )
			AddNumText( sceneId, x002084_g_scriptId, "Ð°ng ý", -1, 997)
			AddNumText( sceneId, x002084_g_scriptId, "Ta hi®n gi¶ chßa c¥n KNB", -1, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
    elseif GetNumText() == 997 then
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		if (nMoneyJZ + nMoney <1000000) then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G100v#W mà ðòi KNB à? Khôn thª?" )
			return
		end
		local reply = LuaFnCostMoneyWithPriority(sceneId,selfId,1000000)
		if reply == -1 then
			x002084_NotifyFailTips( sceneId, selfId, "#G100v#W  mà cûng ko có sao? nghèo quá, ði kiªm ði r°i quay vê ðây v¾i ta." )
			x002084_NotifyFailBox( sceneId, selfId, targetId, "Không có Ðü #G100v#W mà ðòi KNB à? Khôn thª?" )
			return
		else
			local result =	YuanBao(sceneId,selfId,targetId,1,6300)
			local str = "#PXin chúc m×ng, các hÕ ðã nh§n ðßþc #G6300 KNB #Pvà m¤t #G100v#W."
			x002084_NotifyFailTips( sceneId, selfId, str )
			x002084_NotifyFailBox( sceneId, selfId, targetId, str )
		end
	end
	if GetNumText() == 0 then
		x002084_CheckCDKey( sceneId, selfId, targetId )
	elseif GetNumText() == x002084_g_Intro then
		x002084_Introduce( sceneId, selfId, targetId )
	elseif x002084_g_AwardList[GetNumText()] then
		x002084_GetAward( sceneId, selfId, targetId, GetNumText() )
	elseif GetNumText() == 8 then
		x002084_CheckNewUserCard(sceneId, selfId, targetId)
	elseif x002084_g_NewCardList[GetNumText()] then
		x002084_GetNewCardPrize( sceneId, selfId, targetId, GetNumText())
	elseif GetNumText() == 101 then
		x002084_AddNewUserCardNumText(sceneId,selfId,targetId)
	elseif GetNumText() == 201 then
		x002084_AddCDKeyNumText(sceneId, selfId, targetId)
	end
end

--**********************************
-- ¼ì²é CDKey
--**********************************
function x002084_CheckCDKey( sceneId, selfId, targetId )
	if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) == 1 then
		return
	end

	--if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ÄãÒÑ¾­¼¤»î¹ý²Æ¸»¿¨£¬ÎÞ·¨ÔÙ¼¤»îcdkey¡£" )
		--return
	--end

	--if GetLevel( sceneId, selfId ) >= 10 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ¶Ô²»Æð£¬ÄãÒÑ¾­³¬¹ý10¼¶£¬ÎÞ·¨¼¤»îÁì½±Ìõ¼þ¡£" )
		--return
	--end

	CallScriptFunction( PRIZE_SCRIPT_ID, "AskCDKey", sceneId, selfId )

	-- ÒÔÏÂÎª²âÊÔÊ¹ÓÃ
	-- SetMissionFlag( sceneId, selfId, MF_GetAwardFlag, 1 )
end

--**********************************
-- ¼ì²é ²Æ¸»¿¨
--**********************************
function x002084_CheckNewUserCard( sceneId, selfId, targetId )
	--if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) == 1 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ÄãÒÑ¾­¼¤»î¹ýcdkey£¬ÎÞ·¨ÔÙ¼¤»î²Æ¸»¿¨¡£" )
		--return
	--end
	
	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt thë tài phú, không c¥n kích hoÕt l¥n næa." )
		return
	end

	--if GetLevel( sceneId, selfId ) >= 10 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ÄãµÄµÈ¼¶ÒÑ¾­´óÓÚ10¼¶£¬ÎÞ·¨ÔÙ¼¤»î²Æ¸»¿¨¡£" )
		--return
	--end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, x002084_g_VirtualNew )
	if nItemNum > 0 then
		local ret = LuaFnDelAvailableItem( sceneId, selfId, x002084_g_VirtualNew, 1 )
		if ret < 1 then
			return
		end
		--²Æ¸»¿¨µÄÐéÄâ¿¨¿ª¿¨
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Xin chúc m×ng! Các hÕ ðã kích hoÕt thành công thë tài phú, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
	else
		--´ò¿ªÊäÈë²Æ¸»¿¨¿¨ºÅ½çÃæ
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2006 )
	end

	-- ÒÔÏÂÎª²âÊÔÊ¹ÓÃ
	--SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
end

--**********************************
-- ÍÆ¹ãÔ±ÏµÍ³½éÉÜ
--**********************************
function x002084_Introduce( sceneId, selfId, targetId )
	x002084_NotifyFailBox( sceneId, selfId, targetId, "    Cdkey là dãy s¯ chúng tôi cung c¤p cho khách hàng, sau khi sØ døng dãy s¯ này ð¬ kích hoÕt, có th¬ vào trò ch½i nh§n thß·ng, và mµt nhân v§t chï có th¬ kích hoÕt mµt l¥n mà thôi." )
end

--**********************************
-- ÁìCD-KEY½±Æ·
--**********************************
function x002084_GetAward( sceneId, selfId, targetId, grade )
	local awardInfo = x002084_g_AwardList[grade]
	if not awardInfo then
		return
	end

	if GetMissionFlag( sceneId, selfId, awardInfo.flagBit ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.redundantMsg )
		return													-- Áì¹ýÁË
	end

	if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) ~= 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Tam th¶i ngß½i không th¬ lînh ðßþc ph¥n thß·ng" )
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.needLevel then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    ×, ðÆng c¤p cüa ngß½i chßa ðü, ðþi ð¬ ðÆng c¤p ðÕt t¾i" .. awardInfo.needLevel .. "c¤p lÕi ðªn tìm ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.PropBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ðÕo cø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.PropBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.MatBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh tài li®u ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.MatBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.TaskBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi®m vø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.TaskBagSpaceNeed .. "Ô" )
		return
	end

	local itemSN, itemName, itemDesc, bBroadCast
	for i, row in awardInfo.itemAward.hashTable do
		local itemSN, itemName, itemDesc, bBroadCast = GetOneMissionBonusItem( row )
		if itemSN > -1 then
			TryRecieveItem( sceneId, selfId, itemSN, 9 )								-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
		end
	end

	for i, itemSN in awardInfo.itemAward.itemList do
		TryRecieveItem( sceneId, selfId, itemSN, 9 )
	end

	if awardInfo.moneyReward > 0 then
		AddMoney( sceneId, selfId, awardInfo.moneyReward )
	end

	SetMissionFlag( sceneId, selfId, awardInfo.flagBit, 1 )
	x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
end

--**********************************
-- Áì²Æ¸»¿¨½±Æ·
--**********************************
function x002084_GetNewCardPrize( sceneId, selfId, targetId, grade )
	local awardInfo = x002084_g_NewCardList[grade]
	if not awardInfo then
		return
	end

	if GetMissionFlag( sceneId, selfId, awardInfo.flagBit ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.redundantMsg )
		return													-- Áì¹ýÁË
	end

	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) ~= 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Tam th¶i ngß½i không th¬ lînh ðßþc ph¥n thß·ng" )
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.needLevel then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    ×, ðÆng c¤p cüa ngß½i chßa ðü, ðþi ð¬ ðÆng c¤p ðÕt t¾i" .. awardInfo.needLevel .. "c¤p lÕi ðªn tìm ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.PropBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ðÕo cø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.PropBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.MatBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh tài li®u ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.MatBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.TaskBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi®m vø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.TaskBagSpaceNeed .. "Ô" )
		return
	end
	
	if grade == x002084_g_NewCard3 then
		if TryCreatePet(sceneId,selfId,1) <= 0 then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "    Trân thú ngß½i mang ðã ð¥y, ngß½i có th¬ thä mµt con trân thú ð¬ tÕo ra v¸ trí tr¯ng" )
			return
		end
	end

	local itemSN, itemName, itemDesc, bBroadCast
	for i, row in awardInfo.itemAward.hashTable do
		local itemSN, itemName, itemDesc, bBroadCast = GetOneMissionBonusItem( row )
		if itemSN > -1 then
			TryRecieveItem( sceneId, selfId, itemSN, 9 )								-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
		end
	end

	for i, itemSN in awardInfo.itemAward.itemList do
		TryRecieveItem( sceneId, selfId, itemSN, 9 )
	end

	if awardInfo.moneyReward > 0 then
		if grade == x002084_g_NewCard4 or grade == x002084_g_NewCard5 or grade == x002084_g_NewCard6 or grade == x002084_g_NewCard7 or grade == x002084_g_NewCard8 then
			ZengDian(sceneId,selfId,targetId,1,awardInfo.moneyReward)
		else
			AddMoney( sceneId, selfId, awardInfo.moneyReward )
		end
	end
	
	if grade == x002084_g_NewCard3 then
		local mItem = x002084_GetMenpaiTaoEquip(GetMenPai(sceneId,selfId))
		if mItem > 0 then
			TryRecieveItem( sceneId, selfId, mItem, 9 )
		end
		LuaFnCreatePetToHuman(sceneId, selfId, 3359, 1, 0)
	end

	SetMissionFlag( sceneId, selfId, awardInfo.flagBit, 1 )
	x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002084_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x002084_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x002084_GetMenpaiTaoEquip(mid)
	if(mid == MP_SHAOLIN) then
		return 10500002
	elseif(mid == MP_MINGJIAO) then
		return 10500012
	elseif(mid == MP_GAIBANG) then
		return 10501002
	elseif(mid == MP_WUDANG) then
		return 10502002
	elseif(mid == MP_EMEI) then
		return 10503002
	elseif(mid == MP_XINGSU) then
		return 10503012
	elseif(mid == MP_DALI) then
		return 10505002
	elseif(mid == MP_TIANSHAN) then
		return 10504002
	elseif(mid == MP_XIAOYAO) then
		return 10504012
	else
		return 0
	end
	return 0
end
