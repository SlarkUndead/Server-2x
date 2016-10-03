--²âÊÔÉÌÈËNPC½Å±¾

--½Å±¾ºÅ
x800005_g_scriptId = 800005

--(Tô Châu)ÔÓ»õÉÌÈË
x800005_g_shoptableindex=3

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x800005_OnDefaultEvent( sceneId, selfId,targetId )
	
	DispatchShopItem( sceneId, selfId,targetId, x800005_g_shoptableindex )
	
end


--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x800005_OnDie( sceneId, selfId, killerId )
end
