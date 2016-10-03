--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800006_g_scriptId = 800006

--(Tô Châu)ÔÆÓÎÉÌÈË
x800006_g_shoptableindex=4

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800006_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800006_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800006_OnDie( sceneId, selfId, killerId )
end
