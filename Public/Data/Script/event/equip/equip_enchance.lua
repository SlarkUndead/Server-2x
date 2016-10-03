--×°±¸Ç¿»¯
--½Å±¾ºÅ
x809262_g_ScriptId = 809262

x809262_g_QianghualuId = 30900045

x809262_g_QianghualuTime = 11
gem_index = 30900045
--×°±¸Ç¿»¯UI 1002

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x809262_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--×°±¸Ç¿»¯¼ì²é
--**********************************
function x809262_FinishEnhance( sceneId, selfId, itemidx1, itemidx2 )
	local ret = LuaFnIsItemAvailable( sceneId, selfId, itemidx1 )
	
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ hi®n ðang b¸ khoá ho£c không th¬ cß¶ng hoá");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemidx2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		--AddText(sceneId,"¸ÃÇ¿»¯Tinh»ª²»¿ÉÓÃ.");
		AddText(sceneId,"Không th¬ sØ døng ".. GetItemName( sceneId, itemidx2 ));
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	equip_level = GetBagItemLevel( sceneId, selfId, itemidx1 )
	gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx2 )
	if equip_level < 40 then
	
		if gem_index ~= 30900005 then
			--µÍc¤pÇ¿»¯Tinh»ª
			str	= format( "Mu¯n cß¶ng hóa trang b¸ c¥n %s ", GetItemName( sceneId, 30900005 ) )
			BeginEvent(sceneId)
			AddText(sceneId,str);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else

		if gem_index ~= 30900006 and gem_index ~= x809262_g_QianghualuId then
			--¸ßc¤pÇ¿»¯Tinh»ª
			str	= format( "Mu¯n cß¶ng hóa trang b¸ c¥n %s»ò%s ", GetItemName( sceneId, 30900006 ), GetItemName( sceneId, x809262_g_QianghualuId ) )
			BeginEvent(sceneId)
			AddText(sceneId,str);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end

	--¼ì²éÐúng·ñÄÜ¹»Ç¿»¯ 
	ret, arg0 = LuaFnEquipEnhanceCheck( sceneId, selfId, itemidx1, itemidx2 )
	local text="×°±¸Ç¿»¯³É¹¦!"
	if ret == 0 then
		--Ç¿»¯ÏûºÄ¼ì²é³É¹¦
		x809262_DoFinishEnhance( sceneId, selfId, itemidx1*1000+itemidx2)
		return
	end
	
	if ret == -1 then
		text="L²i không xác ð¸nh"
	end
	
	if ret == -2 then
		text="Không dùng ðßþc trang b¸ này"
	end
	
	if ret == -3 then
		--text="Ç¿»¯Tinh»ª²»¿ÉÓÃ."
		text="Cß¶ng hóa tinh hoa không th¬ dùng."
	end
	
	if ret == -4 then
		text="ÐÆng c¤p Cß¶ng hóa cüa trang b¸ này ðã l¾n nh¤t"
	end

	if ret == -5 then
		text="Cß¶ng hóa trang b¸ c¥n #{_EXCHG%d}, ngân lßþng trên ngß¶i các hÕ không ðü." --zchw
		text=format( text, arg0 )
	end
	
	if ret == -7 then
		text="Trang b¸ này không cß¶ng hóa ðßþc"
	end

	if ret == -6 then
		--C¥n È·ÈÏ½çÃæ
		--text="Ç¿»¯th¤t bÕiÖ®ºó,Ç¿»¯µÈc¤p½«»á±ä³É"..tostring(arg0)..",Ðúng·ñ¼ÌÐøÇ¿»¯?"
		--BeginUICommand(sceneId)
			--UICommand_AddInt(sceneId,x809262_g_ScriptId);
			--UICommand_AddInt(sceneId,targetId);
			--UICommand_AddInt(sceneId,itemidx1*1000+itemidx2);
			--UICommand_AddString(sceneId,"DoFinishEnhance");
			--UICommand_AddString(sceneId,text);
			--EndUICommand(sceneId)
		--DispatchUICommand(sceneId,selfId, 24)
		x809262_DoFinishEnhance( sceneId, selfId, itemidx1*1000+itemidx2)
		return
	end
	
	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--×°±¸Ç¿»¯
--**********************************
function x809262_DoFinishEnhance( sceneId, selfId, index )
	local itemidx1 = floor(index / 1000)
	local itemidx2 = mod(index , 1000)
	local text = "Cß¶ng hóa trang b¸ thành công"

	--Ç¿»¯
	local ret,arg0 = LuaFnEquipEnhance( sceneId, selfId, itemidx1, itemidx2 )

	if ret == 0 then
		if arg0 >= 5 then
			local	szTranItm1	= GetBagItemTransfer( sceneId, selfId, itemidx1 )
			local	szTranItm2	= GetBagItemTransfer( sceneId, selfId, itemidx2 )
			local	szMsg				= format( "#W#{_INFOUSR%s}#{EQ_1}#{_INFOMSG%s}#{EQ_2}%d#{EQ_3} #{_INFOMSG%s}#{EQ_4}",
														LuaFnGetName( sceneId, selfId ), szTranItm2, arg0, szTranItm1 )
			--¹«¸æTinh¼ò,Ð¡ÓÚ5c¤ptoÕ ðµ Ç¿»¯,²»·¢¹«¸æ
			AddGlobalCountNews( sceneId, szMsg )
			--BroadMsgByChatPipe( sceneId, selfId, szMsg, 4 )
		end
		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);

		gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx2 )
		
		if x809262_g_QianghualuId == gem_index then
			--local r, t = LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			--PrintNum(r);
			--PrintNum(t)
			
			-- BeginEvent(sceneId)
			-- --local str = "Ììî¸Ç¿»¯Â¶Ê£ÓàÊ¹ÓÃ´ÎÊý%d"
			-- local	szMsg				= format( "T¥n su¤t % cß¶ng hóa còn lÕi %d/%d", tonumber(t), tonumber(x809262_g_QianghualuTime) );
			-- AddText(sceneId,szMsg);
			-- EndEvent(sceneId)
			-- DispatchMissionTips(sceneId,selfId)
		else
			LuaFnEraseItem( sceneId, selfId, itemidx2 )
		end
	end

	if ret == -1 then
		text="L²i không xác ð¸nh"
	end
	
	if ret == -2 then
		text="Trang b¸ hi®n ðang b¸ khoá ho£c không th¬ cß¶ng hoá"
	end
	
	if ret == -3 then
		text="Cß¶ng hóa tinh hoa không th¬ dùng."
	end
	
	if ret == -4 then
		text="ÐÆng c¤p Cß¶ng hóa cüa trang b¸ này ðã l¾n nh¤t"
	end

	if ret == -5 then
		text="Cß¶ng hóa trang b¸ c¥n #{_EXCHG%d}, ngân lßþng trên ngß¶i các hÕ không ðü"
		text=format( text, arg0 )
	end

	if ret == -6 then
		text="Ðáng tiªc, cß¶ng hóa th¤t bÕi"
		if x809262_g_QianghualuId == gem_index then
			--local r, t = LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			--PrintNum(r);
			--PrintNum(t)
			
			-- BeginEvent(sceneId)
			-- local	szMsg				= format( "T¥n su¤t % cß¶ng hóa còn lÕi %d/%d", tonumber(t), tonumber(x809262_g_QianghualuTime) );
			-- AddText(sceneId,szMsg);
			-- EndEvent(sceneId)
			-- DispatchMissionTips(sceneId,selfId)
	
		else
			LuaFnEraseItem( sceneId, selfId, itemidx2 )
		end
		--LuaFnEraseItem( sceneId, selfId, itemidx2 )
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
