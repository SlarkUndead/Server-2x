--Thß½ng S½n-Thúc Hà C± Tr¤n´«ËÍNPC
--ËïÀ¤
--ÆÕÍ¨

x025113_g_ScriptId	= 025113

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x025113_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )
		
		AddText(sceneId,"#{SHGZ_0612_38}")
    AddNumText( sceneId, x025113_g_ScriptId, "Ði Thúc Hà C± Tr¤n", 9, 3436 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x025113_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()

  if arg == 3436 then		--Thß½ng S½n
  		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x025113_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i PK s¨ không b¸ sát khí. Xin chú ý an toàn. Các hÕ có xác nh§n tiªn vào không?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end

end

--  add by zchw
function x025113_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 26, 288, 20 )
	return
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x025113_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
