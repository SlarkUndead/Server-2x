--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800008_g_scriptId = 800008

--(Tô Châu)×°±¸ÒÂ·şÉÌÈË
x800008_g_shoptableindex=9

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800008_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800008_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800008_OnDie( sceneId, selfId, killerId )
end
