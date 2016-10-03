--»Á“‚–°◊”
--–“∏£to’ µ ¥Û÷”
--ƒ„ø¥≤ªµΩŒ“,ø¥≤ªµΩ,ø¥≤ªµΩO(°…_°…)O~ OKŒ“√«ø™ º∞…°£°£°£°£°£°£
x000177_g_ScriptId	= 000177
--************************************************************************
function x000177_OnDefaultEvent( sceneId, selfId, targetId )
		local lastDayTime = GetMissionData( sceneId, selfId, MD_ZHONGCHUI );
		local CurTime = GetDayTime();
		if CurTime <= lastDayTime then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000Ω÷ ÷”ñ˚√øÃÏ÷ªƒ‹LÓnh mµt ¥Œ,«Îƒ„√˜ÃÏ‘Ÿ¿¥." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
	    BeginEvent( sceneId )
		  AddText( sceneId, "#Y¬°¬°÷”…˘«Ï‘™µ©,…˘…˘◊£∏£”≠–¬ƒÍ£°#G12‘¬21»’-1‘¬31»’,#W∑≤µ»º∂°›60º∂to’ µ ÕÊº“√øÃÏæ˘ø…µΩŒ“’‚¿ÔLÓnh #cff99ffΩ÷ ÷”ñ˚#Wmµt √∂,«√œÏ–¬ƒÍto’ µ ÷”…˘,Œ™–¬to’ µ mµt ƒÍ◊£∏££°ƒ„Ω´ª·”–“‚Õ‚ ’ªÒ£° " )
		  AddNumText( sceneId, x000177_g_ScriptId, "LÓnh Ω÷ ÷”ñ˚",5,10 )
	    EndEvent( sceneId )
	    DispatchEventList( sceneId, selfId, targetId )
    end
end
--************************************************************************
function x000177_OnEventRequest( sceneId, selfId, targetId, eventId )
	  local	key	= GetNumText()
	  if key == 10 then
	  local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	  if FreeSpace < 2  then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000Ch≤ trØng trong t˙i x·ch khÙng ¸,«ÎT’i µ¿æﬂ∞¸±£¡Ù¡Ωc·iø’Œª." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
	 local level = GetLevel( sceneId, selfId )
	 if level < 60 then
		  BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000µ»º∂≤ª◊„60º∂Œﬁ∑®LÓnh " )
		  EndEvent( sceneId )
		  DispatchEventList( sceneId, selfId, targetId )
		  return
		else
		  BeginEvent( sceneId ) 
			TryRecieveItem( sceneId, selfId, 30309825, 1)
			AddText( sceneId, "#GCh˙c m◊ngƒ„ ’t ﬂ˛cmµt √∂Ω÷ ÷”ñ˚!" )
			EndEvent( sceneId )
      DispatchEventList( sceneId, selfId, targetId )
	local playerName = GetName(sceneId,selfId)
	local strText = format("#G#{_INFOUSR%s}#W’˝T’i #c00ffffL’c DﬂΩngπ„≥°[256,252]#cff99ff–“∏£to’ µ ¥Û÷”#W¥¶æŸƒøπ€Õ˚,≤ª¡œæπ»ª∑¢œ÷mµt √∂#GΩ÷ to’ µ ÷”ñ˚#W≤ÿT’i ƒ«¿Ô!",playerName ) 
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
	local CurTime = GetDayTime();
	    SetMissionData(sceneId, selfId, MD_ZHONGCHUI, CurTime);
      end
	  end
	end
end	

--»Á“‚–°◊”–¥to’ µ ,ø¥À∆ºÚµ•∆‰ µ∫‹∏¥‘”,µ¡”√to’ µ ∂º–˙ngæ’ª®*************************************
