--LÕc Dß½ngNPC
--Öî¸ð¿×ÁÁ
--ËãÃü,ÒÔºó¿ÉÄÜ³ÉÎªÑ­»·ÈÎÎñ

--½Å±¾ºÅ
x000077_g_ScriptId = 000077

x000077_g_ControlScript = 050026


--¶mµt »ÁÐ±í
x000077_g_ChangeLst	=
{
	--Íæ¼Ò¿É ði¬mµ½toÕ ðµ ÎïÆ·,¶mµt »ËùÐèÎïÆ·,¶mµt »ËùÐèÎïÆ·ÊýÁ¿
	--4c¤p
	[1]	= { id = 50401002, NeedItm = 30504031, NeedNum = 72 },
	[2]	= { id = 50401001, NeedItm = 30504031, NeedNum = 72 },
	[3]	= { id = 50403001, NeedItm = 30504031, NeedNum = 72 },
	[4]	= { id = 50414001, NeedItm = 30504031, NeedNum = 72 },
	[5]	= { id = 50402006, NeedItm = 30504031, NeedNum = 72 },
	[6]	= { id = 50402007, NeedItm = 30504031, NeedNum = 72 },
	[7]	= { id = 50402005, NeedItm = 30504031, NeedNum = 72 },
	[8]	= { id = 50402008, NeedItm = 30504031, NeedNum = 72 },
	[9]	= { id = 50413006, NeedItm = 30504031, NeedNum = 72 },
	[10] = { id = 50413004, NeedItm = 30504031, NeedNum = 72 },
	
	
	--5c¤p
	[11]	= { id = 50501002, NeedItm = 30504032, NeedNum = 72 },
	[12]	= { id = 50501001, NeedItm = 30504032, NeedNum = 72 },
	[13]	= { id = 50503001, NeedItm = 30504032, NeedNum = 72 },
	[14]	= { id = 50514001, NeedItm = 30504032, NeedNum = 72 },
	[15]	= { id = 50502006, NeedItm = 30504032, NeedNum = 72 },
	[16]	= { id = 50502007, NeedItm = 30504032, NeedNum = 72 },
	[17]	= { id = 50502005, NeedItm = 30504032, NeedNum = 72 },
	[18]	= { id = 50502008, NeedItm = 30504032, NeedNum = 72 },
	[19]	= { id = 50513006, NeedItm = 30504032, NeedNum = 72 },
	[20]	= { id = 50513004, NeedItm = 30504032, NeedNum = 72 },
	
	--6c¤p
	[21]	= { id = 50601002, NeedItm = 30504033, NeedNum = 72 },
	[22]	= { id = 50601001, NeedItm = 30504033, NeedNum = 72 },
	[23]	= { id = 50603001, NeedItm = 30504033, NeedNum = 72 },
	[24]	= { id = 50614001, NeedItm = 30504033, NeedNum = 72 },
	[25]	= { id = 50602006, NeedItm = 30504033, NeedNum = 72 },
	[26]	= { id = 50602007, NeedItm = 30504033, NeedNum = 72 },
	[27]	= { id = 50602005, NeedItm = 30504033, NeedNum = 72 },
	[28]	= { id = 50602008, NeedItm = 30504033, NeedNum = 72 },
	[29]	= { id = 50613006, NeedItm = 30504033, NeedNum = 72 },
	[30]	= { id = 50613004, NeedItm = 30504033, NeedNum = 72 },
	
	--7c¤p
	[31]	= { id = 50701002, NeedItm = 30504034, NeedNum = 72 },
	[32]	= { id = 50701001, NeedItm = 30504034, NeedNum = 72 },
	[33]	= { id = 50703001, NeedItm = 30504034, NeedNum = 72 },
	[34]	= { id = 50714001, NeedItm = 30504034, NeedNum = 72 },
	[35]	= { id = 50702006, NeedItm = 30504034, NeedNum = 72 },
	[36]	= { id = 50702007, NeedItm = 30504034, NeedNum = 72 },
	[37]	= { id = 50702005, NeedItm = 30504034, NeedNum = 72 },
	[38]	= { id = 50702008, NeedItm = 30504034, NeedNum = 72 },
	[39]	= { id = 50713006, NeedItm = 30504034, NeedNum = 72 },
	[40]	= { id = 50713004, NeedItm = 30504034, NeedNum = 72 },
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000077_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	
		--AddNumText( sceneId, x000077_g_ControlScript, "Dùng Bäo ThÕch toái phiªn ð±i l¤p Bäo ThÕch c¤p 4", 6, 100 )
		--AddNumText( sceneId, x000077_g_ControlScript, "Dùng Bäo ThÕch toái phiªn ð±i l¤p Bäo ThÕch c¤p 5", 6, 200 )
		--AddNumText( sceneId, x000077_g_ControlScript, "Dùng Bäo ThÕch toái phiªn ð±i l¤p Bäo ThÕch c¤p 6", 6, 300 )
		--AddNumText( sceneId, x000077_g_ControlScript, "Dùng Bäo ThÕch toái phiªn ð±i l¤p Bäo ThÕch c¤p 7", 6, 410 )
		
	  if CallScriptFunction( x000077_g_ControlScript, "CheckRightTime", sceneId) == 1 then
			AddText(sceneId, "#{CHRISTMAS_LUOYANG_HTJS_1}")
			CallScriptFunction( x000077_g_ControlScript, "OnEnumerate",sceneId, selfId, targetId )
		else
			local	i=random(0,1)
		  if	i<=0	 then
			  AddText(sceneId,"#{OBJ_luoyang_0023}")
		  else
			  AddText(sceneId,"Tß¾ng t¯t ðÕi phú ðÕi quý biªt bao! Ngß¶i phúc dày nhß các hÕ ch¡c không ð¡n ðo mß¶i lÕng ti«n quë chÑ?")
		  end
		end		
			
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000077_OnEventRequest( sceneId, selfId, targetId, eventId )

	local key = GetNumText();


	if 100 == key or 200 == key or 300 == key or 400 == key then
		BeginEvent(sceneId)
		AddText( sceneId, "#{CHANGE_BAOSHI_KONGMIMG}" )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »H± Nhãn ThÕch", 6, 1 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »Miêu Nhãn ThÕch", 6, 2 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »×ÏÓñ", 6, 3 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »×æÄ¸ÂÌ", 6, 4 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »´¿¾»À¶¾§Ê¯", 6, 5 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »´¿¾»ºì¾§Ê¯", 6, 6 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »´¿¾»Hoàng Tinh ThÕch", 6, 7 + key )
		AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »´¿¾»ÂÌ¾§Ê¯", 6, 8 + key )
		--AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »ÑªTinhÊ¯", 6, 9 + key )
		--AddNumText( sceneId, x000077_g_ControlScript, "¶mµt »ºì±¦Ê¯", 6, 10 + key )
				
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	else
			
			x000077_OnMyChange( sceneId, selfId, targetId, key )		
				
	end
	
	if eventId == x000077_g_ControlScript then
		CallScriptFunction( x000077_g_ControlScript, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end

end


--**********************************
--¶mµt »
--**********************************
function x000077_OnMyChange( sceneId, selfId, targetId, key )

	local num = floor(key/100);
	local numMod = mod(key,100);
	local index = (num-1)*10 + numMod
	
	local unt = x000077_g_ChangeLst[index]
	
	--ÐÐÎªÈÕÖ¾
	
	if  unt == nil then
		return
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, unt.NeedItm ) < unt.NeedNum then
	
		local strMsg = format("¶mµt »#H#{_ITEM%d}#WC¥n 72cái#H#{_ITEM%d}#W,ÄútoÕ ðµ ²ÄÁÏ²»×ã.", unt.id, unt.NeedItm)
		
		x000077_MsgBox( sceneId, selfId, targetId, strMsg )
		return
	end
	
	BeginAddItem( sceneId )
	AddItem( sceneId, unt.id, 1 )
	if EndAddItem( sceneId, selfId ) > 0 then
		if LuaFnDelAvailableItem( sceneId, selfId, unt.NeedItm, unt.NeedNum ) == 1 then
			AddItemListToHuman( sceneId, selfId )
		else
			x000077_MsgBox( sceneId, selfId, targetId, "    Không thành công!" )
			return
		end
	else
		x000077_MsgBox( sceneId, selfId, targetId, "    ¶Ô²»Æð,ÄútoÕ ðµ ±³°üÒÑÂú,ÎÞ·¨¶mµt »." )
		return
	end
	
	local strMsg = format("¶mµt »³É¹¦,Các hÕ ðã nh§n ðßþc #H#{_ITEM%d}#W", unt.id)
	
	x000077_MsgBox( sceneId, selfId, targetId, strMsg )
	
	--ÐÐÎªÈÕÖ¾
	local strLog =  format( "change gem gem:%d gem scrap:%d", unt.id, unt.NeedItm)
	AuditChangeGem(sceneId, selfId, strLog)
	  
	--local	szTran	= GetItemTransfer( sceneId, selfId, 0 )
	--local szUser	= "#{_INFOUSR"..GetName( sceneId, selfId ).."}"
	--local szItem	= "#{_INFOMSG"..szTran.."}"
	--local	szMsg		= format( "#W%s#cff99ccÀú¾¡Ç§ÐÁÎª#GLÕc Dß½ng(111,163)#Y¹¨²ÊÀö#cff99ccÕÒÆëÁË#Y¹Å´ÉËéÆ¬#cff99cc,¹¨²ÊÀöÏ×ÉÏ%s×÷Îª¸ÐÐ».", szUser, szItem )
	--x000077_MsgBox( sceneId, selfId, targetId, "    Äú³É¹¦toÕ ðµ ¶mµt »ÁË"..GetItemName( sceneId, unt.id ).."." )
	--BroadMsgByChatPipe( sceneId, selfId, szMsg, 4 )

end

--**********************************
--Message Box
--**********************************
function x000077_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end
