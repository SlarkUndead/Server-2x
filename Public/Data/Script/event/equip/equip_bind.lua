--装备绑定
--脚本号
x809266_g_ScriptId = 809266

--装备绑定UI 1005

--**********************************
--列举事件
--**********************************
function x809266_OnEnumerate( sceneId, selfId, targetId )
	
end

--**********************************
--装备绑定
--**********************************
function x809266_FinishBind( sceneId, selfId, itemIndex1, itemIndex2 )
	local text = ""
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemIndex1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g c� trang b�");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- 褚少微,2008.6.11.重楼戒10422016,重楼玉10423024无法铭刻.
	local itemTableIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemIndex1 )
	if itemTableIndex == 10422016 or itemTableIndex == 10423024 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g d鵱g 疬㧟 trang b� n鄖.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g d鵱g 疬㧟 ph� b� kh骯");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local equip_level = GetBagItemLevel( sceneId, selfId, itemIndex1 )
	local gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemIndex2 )
	if equip_level < 50 then
		if gem_index ~= 30900013 then
			--低c锁定符
			BeginEvent(sceneId)
			AddText(sceneId,"Trang b� kh minh c c� kh minh ph� c th.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else
		if gem_index ~= 30900014 then
			--高c锁定符
			BeginEvent(sceneId)
			AddText(sceneId,"Trang b� kh minh c c� kh minh ph� c cao.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end
	
	local EquipPoint = LuaFnGetBagEquipType( sceneId, selfId, itemIndex1 )
	local need_money = 0
	local HumanMoney = LuaFnGetMoney( sceneId, selfId ) + GetMoneyJZ(sceneId, selfId);
	if EquipPoint == HEQUIP_WEAPON or EquipPoint == HEQUIP_ARMOR then
		need_money = 500 + equip_level * 200
	else
		need_money = 250 + equip_level * 100
	end
	
	if HumanMoney < need_money then
		text="Mu痭 kh trang b� n鄖 c #{_EXCHG%d}, ng鈔 l唼ng tr阯 ng叨i c醕 h� kh鬾g 瘘."
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--检查喧ng否能够锁定
	ret = LuaFnLockCheck( sceneId, selfId, itemIndex1, need_money )

	if ret == 0 then --成功了
		text="Trang b� kh th鄋h c鬾g"
		LuaFnEquipLock( sceneId, selfId, itemIndex1 )
		LuaFnEraseItem( sceneId, selfId, itemIndex2 )
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		
		szTranItm	= GetBagItemTransfer( sceneId, selfId, itemIndex1 )
		if szTranItm ~= nil then
			szMsg		= format( "#W#{_INFOUSR%s}#{AQ_9}#W#{_INFOMSG%s}#{AQ_10}",
									LuaFnGetName( sceneId, selfId ), szTranItm )
									
			--公告Tinh简,需求等c30以下to� 鸬 装备,不发铭刻公告						
			if (equip_level >= 30) then
				AddGlobalCountNews( sceneId, szMsg )
			end
			
		end
	end

	if ret == -1 then
		text="Kh鬾g bi猼 l瞚"
	end
	
	if ret == -2 then
		text="Kh鬾g d鵱g 疬㧟 trang b� n鄖"
	end
	
	if ret == -3 then
		text="Trang b� 疸 疬㧟 kh"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end



--**********************************
--装备解除绑定
--**********************************
function x809266_FinishUnBind( sceneId, selfId, itemIndex1, itemIndex2 )
	local text = ""
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemIndex1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"您to� 鸬 装备没有刻铭,不C 进行除铭.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"除铭符不可用.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	

	local need_money = 10000
	local HumanMoney = LuaFnGetMoney( sceneId, selfId ) + GetMoneyJZ(sceneId, selfId);
	
	if HumanMoney < need_money then
		text="除铭该装备C #{_EXCHG%d},您身上to� 鸬 现金不足."
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--检查喧ng否能够除铭
	ret = LuaFnUnLockCheck( sceneId, selfId, itemIndex1, need_money )

	if ret == 0 then --成功了
		LuaFnEquipUnLock( sceneId, selfId, itemIndex1 )
		LuaFnEraseItem( sceneId, selfId, itemIndex2 )
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		
		szTranItm	= GetBagItemTransfer( sceneId, selfId, itemIndex1 )
		if szTranItm ~= nil then
			text		= format( "#{_INFOMSG%s}已经完成除铭.",
									szTranItm )
			--AddGlobalCountNews( sceneId, szMsg )
		end
	end

	if ret == -1 then
		text="未知错误."
	end
	
	if ret == -2 then
		text="装备不可用."
	end
	
	if ret == -3 then
		text="您to� 鸬 装备没有刻铭,不C 进行除铭."
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
