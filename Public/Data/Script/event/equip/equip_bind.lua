--×°±¸°ó¶¨
--½Å±¾ºÅ
x809266_g_ScriptId = 809266

--×°±¸°ó¶¨UI 1005

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x809266_OnEnumerate( sceneId, selfId, targetId )
	
end

--**********************************
--×°±¸°ó¶¨
--**********************************
function x809266_FinishBind( sceneId, selfId, itemIndex1, itemIndex2 )
	local text = ""
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemIndex1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Không có trang b¸");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ñÒÉÙÎ¢,2008.6.11.ÖØÂ¥½ä10422016,ÖØÂ¥Óñ10423024ÎÞ·¨Ãú¿Ì.
	local itemTableIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemIndex1 )
	if itemTableIndex == 10422016 or itemTableIndex == 10423024 then
		BeginEvent(sceneId)
		AddText(sceneId,"Không dùng ðßþc trang b¸ này.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Không dùng ðßþc phù b¸ khóa");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local equip_level = GetBagItemLevel( sceneId, selfId, itemIndex1 )
	local gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemIndex2 )
	if equip_level < 50 then
		if gem_index ~= 30900013 then
			--µÍc¤pËø¶¨·û
			BeginEvent(sceneId)
			AddText(sceneId,"Trang b¸ kh¡c minh c¥n có kh¡c minh phù c¤p th¤p.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else
		if gem_index ~= 30900014 then
			--¸ßc¤pËø¶¨·û
			BeginEvent(sceneId)
			AddText(sceneId,"Trang b¸ kh¡c minh c¥n có kh¡c minh phù c¤p cao.");
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
		text="Mu¯n kh¡c trang b¸ này c¥n #{_EXCHG%d}, ngân lßþng trên ngß¶i các hÕ không ðü."
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--¼ì²éÐúng·ñÄÜ¹»Ëø¶¨
	ret = LuaFnLockCheck( sceneId, selfId, itemIndex1, need_money )

	if ret == 0 then --³É¹¦ÁË
		text="Trang b¸ kh¡c thành công"
		LuaFnEquipLock( sceneId, selfId, itemIndex1 )
		LuaFnEraseItem( sceneId, selfId, itemIndex2 )
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		
		szTranItm	= GetBagItemTransfer( sceneId, selfId, itemIndex1 )
		if szTranItm ~= nil then
			szMsg		= format( "#W#{_INFOUSR%s}#{AQ_9}#W#{_INFOMSG%s}#{AQ_10}",
									LuaFnGetName( sceneId, selfId ), szTranItm )
									
			--¹«¸æTinh¼ò,ÐèÇóµÈc¤p30ÒÔÏÂtoÕ ðµ ×°±¸,²»·¢Ãú¿Ì¹«¸æ						
			if (equip_level >= 30) then
				AddGlobalCountNews( sceneId, szMsg )
			end
			
		end
	end

	if ret == -1 then
		text="Không biªt l²i"
	end
	
	if ret == -2 then
		text="Không dùng ðßþc trang b¸ này"
	end
	
	if ret == -3 then
		text="Trang b¸ ðã ðßþc kh¡c"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end



--**********************************
--×°±¸½â³ý°ó¶¨
--**********************************
function x809266_FinishUnBind( sceneId, selfId, itemIndex1, itemIndex2 )
	local text = ""
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemIndex1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"ÄútoÕ ðµ ×°±¸Ã»ÓÐ¿ÌÃú,²»C¥n ½øÐÐ³ýÃú.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"³ýÃú·û²»¿ÉÓÃ.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	

	local need_money = 10000
	local HumanMoney = LuaFnGetMoney( sceneId, selfId ) + GetMoneyJZ(sceneId, selfId);
	
	if HumanMoney < need_money then
		text="³ýÃú¸Ã×°±¸C¥n #{_EXCHG%d},ÄúÉíÉÏtoÕ ðµ ÏÖ½ð²»×ã."
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--¼ì²éÐúng·ñÄÜ¹»³ýÃú
	ret = LuaFnUnLockCheck( sceneId, selfId, itemIndex1, need_money )

	if ret == 0 then --³É¹¦ÁË
		LuaFnEquipUnLock( sceneId, selfId, itemIndex1 )
		LuaFnEraseItem( sceneId, selfId, itemIndex2 )
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		
		szTranItm	= GetBagItemTransfer( sceneId, selfId, itemIndex1 )
		if szTranItm ~= nil then
			text		= format( "#{_INFOMSG%s}ÒÑ¾­Íê³É³ýÃú.",
									szTranItm )
			--AddGlobalCountNews( sceneId, szMsg )
		end
	end

	if ret == -1 then
		text="Î´Öª´íÎó."
	end
	
	if ret == -2 then
		text="×°±¸²»¿ÉÓÃ."
	end
	
	if ret == -3 then
		text="ÄútoÕ ðµ ×°±¸Ã»ÓÐ¿ÌÃú,²»C¥n ½øÐÐ³ýÃú."
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
