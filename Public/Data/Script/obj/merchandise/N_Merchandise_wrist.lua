--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800009_g_scriptId = 800009

--(Tô Châu)×°±¸»¤ÍóÉÌÈË
x800009_g_shoptableindex=8

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800009_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800009_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800009_OnDie( sceneId, selfId, killerId )
end
