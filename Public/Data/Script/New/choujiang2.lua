--´óÀíNPC
--³é½±
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000159_OnDefaultEvent( sceneId, selfId,targetId )
	local temp = random(10)
	local msgStr = format( "  #GBÕn mu¯n thØ tài v§n may ? Hãy ðem 15 con thäo ngß ð¬ có th¬ tham gia sñ ki®n này. Nhæng viên bäo thÕch c¤p 5 vô cùng giá tr¸ ðang ch¶ các bÕn.")
	BeginEvent(sceneId)
		AddText(sceneId,msgStr)
		AddNumText( sceneId, x000160_g_ScriptId, "Có ! Tôi có mang theo 15 con Thäo Ngß", 10, 1 )
		AddNumText( sceneId, x000160_g_ScriptId, "Không ! Tôi chßa ðü s¯ cá này", 10, 2 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000159_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 1 then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000159_NotifyFailTips( sceneId, selfId, "Tay näy ðã ð¥y" )
			x000159_NotifyFailBox( sceneId, selfId, targetId, "  Tay näi ðã ð¥y" )
			return
		end
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 20102001)
		if number<1 then
			x000159_NotifyFailBox( sceneId, selfId, targetId, " BÕn không có Thäo Ngß hãy h÷c ngh« câu cá và t¾i Kiªm Các, Vô Lßþng S½n, Thái H°... thu th§p ðü 15 con Thäo Ngß r°i hãy tìm ta." )
			return
		else
			local reply = LuaFnDelAvailableItem(sceneId,selfId,20102001,15)
			if reply > 0 then
				local temp = random(60)
			local equipID
			if temp==1 then
				equipID=50514001
			elseif temp==2 then
				equipID=50513006
			elseif temp==3 then
				equipID=20102001
			elseif temp==4 then
				equipID=50513005
			elseif temp==5 then
				equipID=50513005
			elseif temp==6 then
				equipID=50513004
			elseif temp==7 then
				equipID=50513004
			elseif temp==8 then
				equipID=50513003
			elseif temp==9 then
				equipID=50513003
			elseif temp==10 then
				equipID=50513003
			elseif temp==11 then
				equipID=50513002
			elseif temp==12 then
				equipID=50513002
			elseif temp==13 then
				equipID=50513001
			elseif temp==14 then
				equipID=50513001
			elseif temp==15 then
				equipID=50512008
			elseif temp==16 then
				equipID=50512008
			elseif temp==17 then
				equipID=50512007
			elseif temp==18 then
				equipID=50512007
			elseif temp==19 then
				equipID=50512006
			elseif temp==20 then
				equipID=50512006
			elseif temp==21 then
				equipID=50512005
			elseif temp==22 then
				equipID=50501001
			elseif temp==23 then
				equipID=50512004
			elseif temp==24 then
				equipID=50512004
			elseif temp==25 then
				equipID=50512003
			elseif temp==26 then
				equipID=50512003
			elseif temp==27 then
				equipID=50512002
			elseif temp==28 then
				equipID=50501001
			elseif temp==29 then
				equipID=50512002
			elseif temp==30 then
				equipID=50512001
			elseif temp==31 then
				equipID=50512001
			elseif temp==32 then
				equipID=50512001
			elseif temp==33 then
				equipID=50511002
			elseif temp==34 then
				equipID=50511001
			elseif temp==35 then
				equipID=50504002
			elseif temp==36 then
				equipID=50503001
			elseif temp==37 then
				equipID=50502008
			elseif temp==38 then
				equipID=50502007
			elseif temp==39 then
				equipID=50502006
			elseif temp==40 then
				equipID=50502005
			elseif temp==41 then
				equipID=50502004
			elseif temp==42 then
				equipID=50502003
			elseif temp==43 then
				equipID=50502002
			elseif temp==44 then
				equipID=50502001
			elseif temp==45 then
				equipID=50501002
			else
				equipID=0
			end
			local str = "  #YXin chúc m×ng bÕn ðã ðÕt 1 #W"..GetItemName( sceneId, equipID ).."£¡"
			if equipID~=0 then
				if TryRecieveItem( sceneId, selfId, equipID, 1 ) >= 0 then
					x000159_NotifyFailTips( sceneId, selfId, str )
					x000159_NotifyFailBox( sceneId, selfId, targetId, str )
				end
			else
				local str = "  Hôm nay bÕn không may m¡n."
				x000159_NotifyFailTips( sceneId, selfId, str )
				x000159_NotifyFailBox( sceneId, selfId, targetId, str )
			end
			else
				x000159_NotifyFailBox( sceneId, selfId, targetId, "Thao tác sai, không thñc hi®n trao ð±i." )
			end
		end
	elseif GetNumText() == 2 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return		
	end
end
--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000159_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x000159_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
