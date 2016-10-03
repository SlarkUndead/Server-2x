--Ï´É±Æø

--½Å±¾ºÅ 
x800112_g_scriptId = 800112

-- *****************************
-- ¼ì²éÐúng·ñÓÐ×ã¹»toÕ ðµ ÉÆ¶ñÖµºÍ½ðÇ®
-- ******************************
-- nValue : µ±Ç°É±ÆøÖµ
function x800112_CheckCost( sceneId, selfId, targetId ,nValue )

	-- ÉÆ¶ñÖµ¿Û³ýÇ°toÕ ðµ ÅÐ¶Ï
	local gb_value = LuaFnGetHumanGoodBadValue( sceneId, selfId )
	if not gb_value or gb_value < nValue * 2000 then
		x800112_NotifyFail( sceneId, selfId, "Các hÕ không có sát khí " .. nValue * 2000 .. "" ,targetId)
--		Msg2Player( sceneId, selfId, "Cüa ngß½i ÉÆ¶ñÖµ²»×ã" .. nValue * 1000 .. ".", MSG2PLAYER_PARA )
--		x800112_NotifyFailTips(sceneId, selfId, "Các hÕ không có sát khí " .. nValue * 2000 .. " ði¬mÉÆ¶ñÖµ,Ä¿Ç°ÄúÉíÉÏtoÕ ðµ ÉÆ¶ñ ði¬mÊý²»×ã.");
		return 0
	end

	-- ½ðÇ®¿Û³ýÇ°toÕ ðµ ÅÐ¶Ï
	local money = GetMoney( sceneId, selfId )
	if not money or money < nValue * 50000 then
		x800112_NotifyFail( sceneId, selfId, "Ti«n cüa các hÕ không ðü #{_MONEY" .. nValue * 50000 .. "}", targetId )
--		Msg2Player( sceneId, selfId, "Cüa ngß½i Không ðü ngân lßþng.#{_MONEY" .. nValue * 50000 .. "}.", MSG2PLAYER_PARA )
--		x800112_NotifyFailTips(sceneId, selfId, "Ti«n cüa các hÕ không ðü #{_MONEY" .. nValue * 20000 .. "},ÄútoÕ ðµ Không ðü ngân lßþng..");
		return 0
	end

	return 1

end

-- *****************
-- ¿Û³ýÉÆ¶ñÖµºÍ½ð±Ò
-- *****************
-- nValue : µ±Ç°É±ÆøÖµ
function x800112_PayForClean( sceneId, selfId, nValue )
	local gb_value = LuaFnGetHumanGoodBadValue( sceneId, selfId )

	-- Ã¿mµt  ði¬mÉ±Æø¿Û³ý2000 ði¬mÉÆ¶ñÖµ
	LuaFnSetHumanGoodBadValue( sceneId, selfId, gb_value - ( nValue * 2000 ) )
	
	-- Ã¿mµt  ði¬mÉ±Æø¿Û³ý5cái½ð±Ò
	CostMoney( sceneId, selfId, nValue * 50000 )
end

-- *************
-- ÊÂ¼þ´¦Àíº¯Êý
-- *************
function x800112_OnDefaultEvent( sceneId, selfId, targetId )

	--  ði¬mµ½µ±Ç°É±ÆøÖµ
	local pk_value = LuaFnGetHumanPKValue(sceneId, selfId);
	if pk_value then
	else
		return 0;
	end

	-- ÅÐ¶ÏÐúng·ñÓÐÉ±Æø
	if pk_value < 1 then
		x800112_NotifyFail( sceneId, selfId,"Các hÕ không có sát khí",targetId)
--		Msg2Player(sceneId, selfId, "Các hÕ không có sát khí", MSG2PLAYER_PARA);
		return 0;
	end

	-- ¼ì²éÐúng·ñÓÐ×ã¹»toÕ ðµ ÉÆ¶ñÖµºÍ½ðÇ®À´¿Û³ýËùÓÐÉ±Æø
	if x800112_CheckCost( sceneId, selfId, targetId, pk_value ) ~= 1 then
		return 0
	end

	-- ¸ù¾Ýµ±Ç°É±ÆøÖµÀ´¿Û³ýÉÆ¶ñÖµºÍ½ð±Ò
	x800112_PayForClean( sceneId, selfId, pk_value )

	-- ÖØÐÂÉèÖÃÍæ¼Òµ±Ç°toÕ ðµ É±ÆøÖµÎª0
	LuaFnSetHumanPKValue(sceneId, selfId, 0)
	LuaFnAuditGoodbadDecPKValue( sceneId, selfId, 0 ); --¼ÇÂ¼ÓÃÉÆ¶ñÖµ¼õÉÙÉ±ÆøtoÕ ðµ Í³¼ÆÐÅÏ¢....(0´ú±íÇå³ýËùÓÐÉ±Æø)
	
	x800112_NotifyFail( sceneId, selfId,"Các hÕ giäi tr× thành công t¤t cä sát khí.",targetId)
--	x800112_NotifyFailTips(sceneId, selfId, "Các hÕ giäi tr× thành công t¤t cä sát khí.");
	
	-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
	local LogInfo	= format( "[ChangePKValue]:ClearPKValue sceneId=%d, GUID=%0X, PKValueBgn=%d, PKValueEnd=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),			
			pk_value,
			LuaFnGetHumanPKValue(sceneId, selfId) )
	WriteCheckLog( sceneId, selfId, LogInfo )

end

-- ************************
-- NPC¶Ô»°´°¿ÚÖÐµ÷ÓÃtoÕ ðµ º¯Êý
-- ************************
function x800112_OnEnumerate( sceneId, selfId,targetId )

	AddNumText(sceneId, x800112_g_scriptId, "Tr× t¤t cä sát khí", 6, x800112_g_scriptId)

end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x800112_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--¶Ô»°¿òÌáÊ¾
function x800112_NotifyFail( sceneId, selfId, Tip ,targetId)
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
