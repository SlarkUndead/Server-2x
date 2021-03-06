--装备升c
--脚本号
x809263_g_ScriptId = 809263

--装备升cUI 1003

--**********************************
--列举事件
--**********************************
function x809263_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--装备升c
--**********************************
function x809263_EquipLevelUp( sceneId, selfId, nItemIndex1, nItemIndex2)
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex1 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g d鵱g 疬㧟 trang b� n鄖");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Th錸g c B鋙 Th誧h kh鬾g c� t醕 d鴑g");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	equip_level = GetBagItemLevel( sceneId, selfId, nItemIndex1 )
	if equip_level < 60 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� t� c 60 tr� xu痭g kh鬾g 疬㧟 th錸g c");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, nItemIndex2 )
	if gem_index ~= 30900008 then
		--升c宝石
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� th錸g c c th錸g c B鋙 Th誧h");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	money = GetMoney( sceneId, selfId )
	need_money = GetBagItemLevel( sceneId, selfId, nItemIndex1 ) * 20000
	if money < need_money then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g 瘘 ng鈔 l唼ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = GetGemEmbededCount( sceneId, selfId, nItemIndex1 )
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� kh鋗 B鋙 Th誧h trang b� kh鬾g 疬㧟 th錸g c");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	ret, arg0 = LuaFnEquipLevelUp( sceneId, selfId, nItemIndex1, nItemIndex2 )
	
	local text="Th錸g c trang b� th鄋h c鬾g"
	if ret == 0 then
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		LuaFnCostMoney( sceneId, selfId, need_money )
		if arg0 == 0 then
			text="Ch鷆 m譶g!! Trang b� n鈔g c th鄋h c鬾g, mau 餴 xem trang b� m緄 sau khi th錸g c"
		else
			text="Ch鷆 m譶g!! Trang b� n鈔g c th鄋h c鬾g, nh遪g 鹌ng c l鄊 m課h b� gi鋗 1, gi� 疴y 鹌ng c l鄊 m課h trang b� l� "..tostring(arg0)
		end
	end

	if ret == -1 then
		text="Kh鬾g bi猼 l瞚"
	end

	if ret == -2 then
		text="Kh鬾g d鵱g 疬㧟 trang b� n鄖"
	end
	
	if ret == -3 then
		text="Th錸g c B鋙 Th誧h kh鬾g c� t醕 d鴑g"
	end

	if ret == -6 then
		text="Kh鬾g bi猼 l瞚"
	end

	if ret == -7 then
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnCostMoney( sceneId, selfId, need_money )
		text="Th kh鬾g may, trang b� th錸g c c黙 c醕 h� b� th b読!"
	end

	if ret == -8 then
		text="Trang b� kh鬾g th� th錸g c"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
