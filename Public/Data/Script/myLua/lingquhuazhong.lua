--ÈçÒâĞ¡×Ó
--Lînh »¨ÖÖ×Ó
--Äã¿´²»µ½ÎÒ,¿´²»µ½,¿´²»µ½O(¡É_¡É)O~ OKÎÒÃÇ¿ªÊ¼°É¡£¡£¡£¡£¡£¡£
x000178_g_ScriptId	= 000178
--************************************************************************
function x000178_OnDefaultEvent( sceneId, selfId, targetId )
		local CurTime = GetQuarterTime();
		local iTime = GetMissionData( sceneId, selfId, MD_XIANHUAZHONGZI );
		if iTime+3 >= CurTime then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000ÏÊ»¨toÕ ğµ ÖÖ×ÓÃ¿¸ômµt Ğ¡Ê±Lînh mµt ´Î,Çë¹ımµt »áÔÙÀ´." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
	    BeginEvent( sceneId )
		  AddText( sceneId, "#WĞÕi LıÕæĞúngcáiÃÀÀötoÕ ğµ µØ·½,ËÄ¼¾Èç´º,¶ÔÓÚmµt cáiÖÖ»¨ÈËÀ´Ëµ,ÕâÀï¾ÍĞúngÌìÌÃ¡£½ñÄêÎÒ´øÀ´ÁËmµt Ğ©²¨Ë¹toÕ ğµ Ãµ¹å,²»ÁÏ±»Hoa tiên tØTinhLinh¸øµÁ×ß." )
		  AddNumText( sceneId, x000178_g_ScriptId, "ÏÊ»¨toÕ ğµ ÖÖ×Ó#GÃ¿Ğ¡Ê±Lînh mµt ´Î",5,10 )
	    EndEvent( sceneId )
	    DispatchEventList( sceneId, selfId, targetId )
    end
end
--************************************************************************
function x000178_OnEventRequest( sceneId, selfId, targetId, eventId )
	  local	key	= GetNumText()
	  if key == 10 then
	  local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	  if FreeSpace < 4  then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000Ch² tr¯ng trong túi xách không ğü,ÇëTÕi µÀ¾ß°ü±£ÁôËÄcái¿ÕÎ»." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
	 local level = GetLevel( sceneId, selfId )
	 if level < 60 then
		  BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000µÈ¼¶²»×ã60¼¶ÎŞ·¨Lînh " )
		  EndEvent( sceneId )
		  DispatchEventList( sceneId, selfId, targetId )
		  return
		else
		  BeginEvent( sceneId ) 
			TryRecieveItem( sceneId, selfId, 30309813,1)
			TryRecieveItem( sceneId, selfId, 30309813,1)
			TryRecieveItem( sceneId, selfId, 30309813,1)
			AddText( sceneId, "#GChúc m×ngÄã ğÕt ğßşcÈı¿ÅÏÊ»¨toÕ ğµ ÖÖ×Ó!" )
			EndEvent( sceneId )
      DispatchEventList( sceneId, selfId, targetId )
	local playerName = GetName(sceneId,selfId)
	local strText = format("#G#{_INFOUSR%s}#WÕıTÕi #c00ffffĞÕi Lı[307,164]#cff99ff°¢Àï#W´¦Ñ¯ÎÊ×ÅÖÖ»¨toÕ ğµ Kinh nghi®m,°¢Àï¾¹È»¿¶¿®toÕ ğµ  ğßa cho ËûÈı¿Å#GÏÊ»¨toÕ ğµ ÖÖ×Ó!",playerName ) 
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		local CurTime = GetQuarterTime();
	    SetMissionData(sceneId, selfId, MD_XIANHUAZHONGZI, CurTime);
      end
	  end
	end
end	

--ÈçÒâĞ¡×ÓĞ´toÕ ğµ ,¿´ËÆ¼òµ¥ÆäÊµºÜ¸´ÔÓ,µÁÓÃtoÕ ğµ ¶¼Ğúng¾Õ»¨*************************************
