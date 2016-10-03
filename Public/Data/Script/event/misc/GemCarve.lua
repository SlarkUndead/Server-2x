--±¦Ê¯µñ×Á

--½Å±¾ºÅ
x800117_g_ScriptId	= 800117
x800117_g_BINDED = 1              -- ÒÑ¾­°ó¶¨
			

function x800117_OnGemCarve( sceneId, selfId, GemItemPos, NeedItemPos,TargetID )

	if (TargetID == nil ) then
		return
	end 
	if (TargetID == -1) then
		return
	end
	if GemItemPos == -1 or NeedItemPos == -1 then
		return
	end

	local GemItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos )
	local NeedItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, NeedItemPos )

	-- ðÕt ðßþc±¦Ê¯µñ×ÁtoÕ ðµ ÐÅÏ¢....
	local ProductID, NeedID, NeedMoney = LuaFnGetGemCarveInfo( GemItemID )
	if  -1 == ProductID then
		return
	end

	--¼ì²âÐúng·ñÓÐËùÐèÎïÆ·....
	if NeedID ~= NeedItemID then
		return
	end
	
	--¼ì²â½ðÇ®Ðúng·ñ×ã¹»....
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
	if PlayerMoney < NeedMoney then
		return
	end

	local ProductNeedBind = 0    -- ²úÉútoÕ ðµ ÐÂ±¦Ê¯Ðúng·ñC¥n °ó¶¨ 0Ðúng²»C¥n °ó¶¨×´Ì¬,1ÐúngC¥n °ó¶¨
	--¸ù¾Ý±¦Ê¯Ðúng·ñ°ó¶¨ºÍ±¦Ê¯µñ×Á·ûÐúng·ñ°ó¶¨,¾ö¶¨Õª³ýºótoÕ ðµ ±¦Ê¯Ðúng·ñ°ó¶¨
	if (LuaFnGetItemBindStatus(sceneId,selfId,GemItemPos) == x800117_g_BINDED or LuaFnGetItemBindStatus(sceneId,selfId,NeedItemPos) == x800117_g_BINDED) then
	  ProductNeedBind = 1
	end	

	local NeedItemInfo = GetBagItemTransfer( sceneId, selfId, NeedItemPos )

	--¿Û³ý±¦Ê¯ºÍËùÐèÎïÆ·....
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos )
	if ret ~= 1 then
		x800117_NotifyTip( sceneId, selfId, "±¦Ê¯ÎÞ·¨Ê¹ÓÃ,±¦Ê¯µñ×Áth¤t bÕi." )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, NeedItemPos )
	if ret ~= 1 then
		x800117_NotifyTip( sceneId, selfId, "ËùÐèÎïÆ·ÎÞ·¨Ê¹ÓÃ,±¦Ê¯µñ×Áth¤t bÕi." )
		return
	end

	LuaFnEraseItem( sceneId, selfId, GemItemPos )
	LuaFnEraseItem( sceneId, selfId, NeedItemPos )

	--¿ÛÇ®....
	ret = LuaFnCostMoneyWithPriority( sceneId, selfId, NeedMoney )    --½»×ÓÆÕ¼° Vega
	if ret < 0 then
		x800117_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng.,±¦Ê¯µñ×Áth¤t bÕi." )
		return
	end

	--¸øÍæ¼Òµñ×ÁºótoÕ ðµ ±¦Ê¯....²»ÓÃ¼ì²â±³°üÐúng·ñÓÐµØ·½....Ã»µØ·½Ç°±ßÒ²del³öµØ·½ÁË....
	local BagIndex = TryRecieveItem( sceneId, selfId, ProductID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x800117_NotifyTip( sceneId, selfId, "±³°üÒÑÂú,±¦Ê¯µñ×Áth¤t bÕi." )
	end
	
	--¸ù¾Ý±¦Ê¯Ðúng·ñ°ó¶¨ºÍ±¦Ê¯µñ×Á·ûÐúng·ñ°ó¶¨,¾ö¶¨Õª³ýºótoÕ ðµ ±¦Ê¯Ðúng·ñ°ó¶¨
	if (ProductNeedBind == 1) then
	  local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
	  if bindidx ~= 1 then
		  local bindmsg = "Buµc ð¸nh th¤t bÕi"													
		  BeginEvent( sceneId )
		    AddText( sceneId, bindmsg )
		  EndEvent( sceneId )
		  DispatchMissionTips( sceneId, selfId )
	  end
	end	

	--Í³¼Æ....
	LuaFnAuditGemCarve( sceneId, selfId, GemItemID)

	--ÐÑÄ¿ÌáÊ¾Íæ¼Òµñ×Á³É¹¦....
	x800117_NotifyTip( sceneId, selfId, "#{_ITEM"..GemItemID.."}³É¹¦toÕ ðµ ±»µñ×ÁÎª#{_ITEM"..ProductID.."}" )

	--¹«¸æ....
	local Name = GetName(sceneId, selfId)
	local SceneName = GetSceneName(sceneId)
	local NPCName   = GetName(sceneId,TargetID)
	local GemItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	local gemQual = GetItemQuality( ProductID )
	--local strText = format("#{_INFOUSR%s}#ITÕi %s#RÅí»³Óñ#I´¦Ê¹ÓÃ#{_INFOMSG%s}#Iµñ×Á³ömµt ¿Å#{_INFOMSG%s}#I,LÕc Dß½ng³Çmµt Ê±±¦¹â³åÌì.", Name, SceneName,NeedItemInfo, GemItemInfo )
	local strText = format("#{_INFOUSR%s}#ITÕi #G%s#R%s#I´¦Ê¹ÓÃ#{_INFOMSG%s}#Iµñ×Á³ömµt ¿Å#{_INFOMSG%s}#I,%smµt Ê±±¦¹â³åÌì.", Name, SceneName,NPCName,NeedItemInfo, GemItemInfo, SceneName)
	
	--¹«¸æTinh¼ò,Ö»±£Áô3c¤pÒÔÉÏtoÕ ðµ ±¦Ê¯µñ×Á¹«¸æ
	if (gemQual > 3) then
		BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end

	-- µñ×Á³É¹¦ÌØÐ§....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x800117_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
