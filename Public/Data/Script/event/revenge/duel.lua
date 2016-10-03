--ÁË½â¾Å´óÃÅÅÉÌØÉ«

--½Å±¾ºÅ
x800115_g_ScriptId	= 800115



--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x800115_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
    if key == 1 then
	    --PrintStr( " =1 ")
	   local Level = GetLevel( sceneId, selfId )
	   local Energy = GetHumanEnergy( sceneId, selfId )
	   
	   if( Level < 20 ) then
            BeginEvent( sceneId )
		        AddText(sceneId,"  ÄútoÕ ðµ µÈc¤p²»×ã20c¤p,ÎÞ·¨Ìá³ö¾ö¶·ÒªÇó")
				AddNumText( sceneId, x800115_g_ScriptId, "ÖªµÀÁË¡­¡­", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        elseif Energy < 100 then
            BeginEvent( sceneId )
		        AddText(sceneId,"  ¶Ô²»Æð,ÄútoÕ ðµ TinhÁ¦Öµ²»×ã100,ÎÞ·¨Ìá³ö¾ö¶·ÒªÇó.")
				AddNumText( sceneId, x800115_g_ScriptId, "ÖªµÀÁË¡­¡­", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        else
        	OpenDuelDataInputWnd( sceneId, selfId, targetId, 123 )
        end
        

	elseif  key == 2 then
	    --PrintStr( " =2 ")
		--¹Ø±Õ½çÃæ
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
			    
	else
		return
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800115_OnEnumerate( sceneId, selfId, targetId )
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		--AddNumText( sceneId, x800115_g_ScriptId, "ÎÒÒªÌá³ö¾ö¶·", -1, 100 )
	--end
	
	--local Level = GetLevel( sceneId, selfId )
	--if( Level >= 20 ) then
                BeginEvent( sceneId )
		AddText(sceneId,"  ½­ºþÖÐ³äÂúÁË¶÷Ô¹,Èç¹ûÄú²»ÏëÖ±½ÓÒÔµ¶ÏàÏò,Ò²¿ÉÒÔÑ¡Ôñmµt ÖÖ±È½ÏÎÄÃ÷toÕ ðµ ·½Ê½,¾ö¶·.¶Ô·½Í¬ÒâÖ®ºó¾ö¶·½«»á¿ªÊ¼,mµt cáiÐ¡Ê±Ö®ºó½áÊø.TÕi ¾ö¶·ÖÐËÀÍöÒ²»áÓÐ³Í·£.")
		AddNumText( sceneId, x800115_g_ScriptId, "ÎÒÒªÌá³ö¾ö¶·", 6, 1 )
		AddNumText( sceneId, x800115_g_ScriptId, "ÎÒÏëÏëÔÙËµ¡­¡­", 8, 2 )
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--else
          --      BeginEvent( sceneId )
	--	AddText(sceneId,"  ÄútoÕ ðµ µÈc¤p²»×ã20c¤p,ÎÞ·¨Ìá³ö¾ö¶·ÒªÇó")
	--	AddNumText( sceneId, x800115_g_ScriptId, "ÖªµÀÁË¡­¡­", -1, 2 )
			
	--	EndEvent( sceneId )
	--	DispatchEventList( sceneId, selfId, targetId )	
	--end
	
	
		
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x800115_CheckAccept( sceneId, selfId )
	--C¥n 10c¤p²ÅÄÜ½Ó
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
	--	return 1
	--else
	--	return 0
	--end
end

--**********************************
--Tiªp thø
--**********************************
function x800115_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x800115_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x800115_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x800115_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x800115_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x800115_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x800115_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x800115_OnItemChanged( sceneId, selfId, itemdataId )
end
