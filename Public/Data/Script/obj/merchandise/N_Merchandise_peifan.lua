--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800007_g_scriptId = 800007

--(Tô Châu)Åä·½ÉÌÈË
x800007_g_shoptableindex=5

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800007_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800007_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800007_OnDie( sceneId, selfId, killerId )
end
