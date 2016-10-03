--Ç®×¯NPC
--ÄªÑ°
--ÆÕÍ¨

x181004_g_ScriptId	= 181004

--²Ù×÷¼¯
x181004_g_Key				=
{
	["inf"]	= 1000,		--Ôª±¦½éÉÜ
	["bak"]	= 1001,		--Tr· v«ÉÏmµt Ò³
}

--Ôª±¦ÉÌµê
--Ë÷Òý(Ë³ÐòµÝÔö 1-N),name = ÉÌµêÃû³Æ,id = ÉÌµêID,key = GetNumText(Ë³ÐòµÝÔö)
x181004_g_LnShop		=
{
	["nam"]	= "Thß½ng ti®m tinh luy®n",
	["key"]	= 1,
--	[1]	= { name = "¹ºÂòTinhÌú(TinhÁ¶²ÄÁÏ)", id = 153, key = 101 },
	[1]	= { name = "Mua ÐÕi ðao và Trß¶ng thß½ng Ðä TÕo Ð°", id = 156, key = 101 },
	[2]	= { name = "Mua Ð½n ðoän và Song ðoän Ðä TÕo Ð°", id = 157, key = 102 },
	[3]	= { name = "Mua Phiªn và Hoàn Ðä TÕo Ð°", id = 158, key = 103 },
}
x181004_g_ZhShop		=
{
	["nam"]	= "Thß½ng ti®m tinh chª",
	["key"]	= 2,
--	[1]	= { name = "¹ºÂòÃÞ²¼(TinhÖÆ²ÄÁÏ)", id = 154, key = 201 },
	[1]	= { name = "Mua Mão và Y phøc Ðä TÕo Ð°", id = 159, key = 201 },
	[2]	= { name = "Mua Bao tay và Hài Ðä TÕo Ð°", id = 160, key = 202 },
	[3]	= { name = "Mua Hµ uy¬n và Hµ kiên Ðä TÕo Ð°", id = 161, key = 203 },
	[4]	= { name = "Mua Yêu ðái Ðä TÕo Ð°", id = 162, key = 204 },
}
x181004_g_GnShop		=
{
	["nam"]	= "Thß½ng ti®m tinh công",
	["key"]	= 3,
--	[1]	= { name = "¹ºÂòÃØÒø(Tinh¹¤²ÄÁÏ)", id = 155, key = 301 },
	[1]	= { name = "Mua HÕng liên Ðä TÕo Ð°", id = 163, key = 301 },
	[2]	= { name = "Mua Gi¾i chï Ðä TÕo Ð°", id = 164, key = 302 },
	[3]	= { name = "Mua Hµ phù Ðä TÕo Ð°", id = 165, key = 303 },
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181004_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "    KÏ trân nguyên li®u, các loÕi Ðä TÕo Ð°, xin khách quan lña ch÷n!" )
		AddNumText( sceneId, x181004_g_ScriptId, x181004_g_LnShop["nam"], 7, x181004_g_LnShop["key"] )
		AddNumText( sceneId, x181004_g_ScriptId, x181004_g_ZhShop["nam"], 7, x181004_g_ZhShop["key"] )
		AddNumText( sceneId, x181004_g_ScriptId, x181004_g_GnShop["nam"], 7, x181004_g_GnShop["key"] )
		AddNumText( sceneId, x181004_g_ScriptId, "Gi¾i thi®u Kim Nguyên Bäo", 11, x181004_g_Key["inf"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x181004_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()
	
	if key == x181004_g_LnShop["key"] then
		x181004_OnOpenShop( sceneId, selfId, targetId, x181004_g_LnShop )

	elseif key == x181004_g_ZhShop["key"] then
		x181004_OnOpenShop( sceneId, selfId, targetId, x181004_g_ZhShop )
		
	elseif key == x181004_g_GnShop["key"] then
		x181004_OnOpenShop( sceneId, selfId, targetId, x181004_g_GnShop )

	elseif floor( key / 100 ) == x181004_g_LnShop["key"] then
		for i = 1, getn( x181004_g_LnShop ) do
			if key == x181004_g_LnShop[i].key then
				DispatchShopItem( sceneId, selfId, targetId, x181004_g_LnShop[i].id )
				break
			end
		end
	
	elseif floor( key / 100 ) == x181004_g_ZhShop["key"] then
		for i = 1, getn( x181004_g_ZhShop ) do
			if key == x181004_g_ZhShop[i].key then
				DispatchShopItem( sceneId, selfId, targetId, x181004_g_ZhShop[i].id )
				break
			end
		end
	
	elseif floor( key / 100 ) == x181004_g_GnShop["key"] then
		for i = 1, getn( x181004_g_GnShop ) do
			if key == x181004_g_GnShop[i].key then
				DispatchShopItem( sceneId, selfId, targetId, x181004_g_GnShop[i].id )
				break
			end
		end
		
	elseif key == x181004_g_Key["inf"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif key == x181004_g_Key["bak"] then
		x181004_OnDefaultEvent( sceneId, selfId, targetId )
	end

end

--**********************************
--Õ¹¿ªÉÌµê
--**********************************
function x181004_OnOpenShop( sceneId, selfId, targetId, lstShop )

	BeginEvent( sceneId )
		for i = 1, getn( lstShop ) do
			AddNumText( sceneId, x181004_g_ScriptId, lstShop[i].name, 7, lstShop[i].key )
		end
		AddNumText( sceneId, x181004_g_ScriptId, "Tr· v« trang trß¾c", -1, x181004_g_Key["bak"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end
