--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800003_g_scriptId = 800003

--(Tô Châu)×°±¸ÉÌÈË
x800003_g_shoptableindex=1

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800003_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800003_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800003_OnDie( sceneId, selfId, killerId )
end
