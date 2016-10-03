--ÐÕi LýNPC
--³õ»÷Æ½
--¼ø¶¨·ûÉÌÈË

x002077_g_scriptId = 002077
x002077_g_shoptableindex = 10

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002077_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    B±n nhân bán giám ð¸nh phù m§t chª ðµc gia, có th¬ giám ð¸nh t¤t cä các loÕi hình trang b¸, hoan nghênh t¾i mua!" )
		AddNumText( sceneId, x002077_g_scriptId, "Ngß½i mu¯n mua gì nào?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x002077_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002077_g_shoptableindex )
	end
end
