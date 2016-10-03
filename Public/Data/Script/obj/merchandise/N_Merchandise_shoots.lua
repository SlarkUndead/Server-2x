--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800010_g_scriptId = 800010

--(Tô Châu)×°±¸Ñ¥×ÓÉÌÈË
x800010_g_shoptableindex=7

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800010_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800010_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800010_OnDie( sceneId, selfId, killerId )
end
