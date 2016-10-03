--ÈÈÂôÔª±¦ NPC
--×¢Òâ±¾½Å±¾º¬ÓĞËæÉíÔª±¦Ïà¹Ø¹¦ÄÜ,Çëmµt ¶¨²ÎÕÕÏÖÓĞtoÕ ğµ Àı×Ó½øĞĞĞŞ¸Ä.

x181002_g_scriptId 	= 181002
x181002_g_buyrate 	= 0.5

x181002_g_shoptableindex=151
x181002_g_goodact		= 1		--ÈÈÂôÔª±¦ÉÌµê
x181002_g_YuanBaoIntro	= 18	--Ôª±¦½éÉÜ

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x181002_OnDefaultEvent( sceneId, selfId, targetId )
	if targetId == -1 then
		x181002_OnEventRequest( sceneId, selfId, targetId, nil )
	else
		BeginEvent( sceneId )
			strText = "    Ğªn ğây mà xem, thß½ng ph¦m bán chÕy nh¤t, giá rë nh¤t. Khách quan, ngài mau ch÷n vài món ği, bäo ğäm ngài mua v« xong ğêm nay n¢m m½ cûng phäi cß¶i "
			AddText( sceneId, strText )
			--AddNumText( sceneId, x181002_g_scriptId, "Mua nhi®t mÕi thß½ng ph¦m", 5, x181002_g_goodact)
			AddNumText( sceneId, x181002_g_scriptId, "Gi¾i thi®u Kim Nguyên Bäo", 11, x181002_g_YuanBaoIntro)
			if targetId < 0 then
				targetId = -1	--ÎªÁËÄÜÕı³£µ¯³öÑ¡Ïî
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x181002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x181002_g_goodact then
		x181002_NewDispatchShopItem( sceneId, selfId,targetId, x181002_g_shoptableindex )
	elseif GetNumText() == x181002_g_YuanBaoIntro	then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--°´ĞèÀ´µ¯³öÉÌµê,·ÖÎªËæÉíÉÌµêºÍNPCÉÌµê
--**********************************
function x181002_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
