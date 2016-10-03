--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800004_g_scriptId = 800004

--(Tô Châu)ÎäÆ÷ÉÌÈË
x800004_g_shoptableindex=2

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800004_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800004_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800004_OnDie( sceneId, selfId, killerId )
end
