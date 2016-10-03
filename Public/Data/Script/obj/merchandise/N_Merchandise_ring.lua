--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800011_g_scriptId = 800011

--(Tô Châu)×°±¸ÊÎÆ·ÉÌÈË
x800011_g_shoptableindex=10

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800011_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800011_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800011_OnDie( sceneId, selfId, killerId )
end
