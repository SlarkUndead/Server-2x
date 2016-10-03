--LÕc Dß½ngNPC
--³é½±
--ÆÕÍ¨
x001154_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u ð¬ trao ð±i thành công! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u ð¬ trao ð±i thành công! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u ð¬ trao ð±i thành công! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u ð¬ trao ð±i thành công! #{_INFOMSG%s}",
}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001154_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#W— giæa hoang mÕc, th¤y ngß¶i ðó ðang chª luy®n mµt loÕi Ám khí th¥n kÏ#Y Bång Phách Th¥n Châm#W. Do tÕi hÕ kh¦n c¥u, næ hi®p ðó ðã truy«n thø cách thÑc chª luy®n cho tÕi hÕ." )
		AddText( sceneId, "#WChï c¥n có #G1 #YMai Hoa Tiêu#W và #G20 #YHàn bång tinh thiªt#W r½i trong #GThäo PhÕt Yªn TØ ‘#W C¤p 90 tr· lên." )
		--AddText( sceneId, "#G(#cFF0000ÉñÆ÷ÖØÁ¶#G)" )
		--AddText( sceneId, "Tam ðoÕn#G(#cFF0000LV5-LV6#G)#cFF0000100%" )
		AddText( sceneId, "#cff99ffÌáÊ¾(#GÐã ðßþc khäm  bäo thÕch#cff99ff)" )
		AddNumText( sceneId, x001154_g_ScriptId, "#G(#cFF0000Thång c¤p ám khí#G)", 10, 100 )
		--AddNumText( sceneId, x001154_g_ScriptId, "#G(#cFF0000ÉñÆ÷ÖØÁ¶#G)", 5, 200 )
		--AddNumText( sceneId, x001154_g_ScriptId, "Tam ðoÕn#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 300 )
		--AddNumText( sceneId, x001154_g_ScriptId, "#cff99cc¡ºÄ§»ê¡»#WÖ®ÈÐ#YHþp thành #G(#cFF0000ÏÉÆ÷#G)#cFF0000¡ü", 5, 400 )
		AddNumText( sceneId, x001154_g_ScriptId, "R¶i khöi", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001154_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffHàn bång tinh thiªt#W có th¬ · #Yphø bän Yªn TØ ‘#W ðÕt ðßþc!" )
		      --AddText( sceneId, "#G(#cFF0000LV1-LV3#G)#cFF000050%" )
		      AddText( sceneId, "Ám khí thång c¤p c¥n tiêu hao: " )
		      AddText( sceneId, "#GMai Hoa Tiêu #W1#G ðem" )
		      AddText( sceneId, "#cff99ffHàn bång tinh thiªt#W 20#cff99ff cái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#G(#cFF0000¿ªÊ¼Éý¼¶#G)", 10, 101)
			--AddNumText( sceneId, x001154_g_scriptId, "#G(#cFF0000¿ªÊ¼ÖØÁ¶#G)", 10, 102)
			--AddNumText( sceneId, x001154_g_scriptId, "mµt ¶Î#G(#cFF0000LV3-LV4#G)#cFF000010%", 5, 103)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#WChï c¥n có #G1 #YMai Hoa Tiêu#W và #G20 #YHàn bång tinh thiªt#W r½i trong #GThäo PhÕt Yªn TØ ‘#W C¤p 90 tr· lên." )
			AddNumText( sceneId, x001154_g_scriptId, "#GÐúc Bång Phách Th¥n Châm", 6, 1011)
			--AddNumText( sceneId, x001154_g_scriptId, "#GTräm ßu ðoÕn s¥u thß½ng#G", 10, 1012)
			--AddNumText( sceneId, x001154_g_scriptId, "#GD¸ch thiên phá tà trßþng#G", 10, 1013)
			--AddNumText( sceneId, x001154_g_scriptId, "#GHàm quang lµng änh kiªm#G", 10, 1014)
			--AddNumText( sceneId, x001154_g_scriptId, "#GVÕn nh§n long uyên kiªm#G", 10, 1015)
			--AddNumText( sceneId, x001154_g_scriptId, "#GChuy¬n h°n di®t phách câu#G", 10, 1016)
			--AddNumText( sceneId, x001154_g_scriptId, "#GLôi minh cách höa phiªn#G", 10, 1017)
			--AddNumText( sceneId, x001154_g_scriptId, "#GToái tình vø änh hoàn#G", 10, 1018)
			--AddNumText( sceneId, x001154_g_scriptId, "#GThiên Tinh di®u dß½ng hoàn#G", 10, 1019)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10155003
	       	local nStoneId1 = 20310113
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10155003,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,20310113,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10155002, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCác hÕ ðã nh§n ðßþc #YBång Phách Th¥n Châm"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GCác hÕ không ðü nguyên li®u ð¬ ð±i"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10301100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301100,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302008, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10301200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301200,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10302100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302100,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1015 then
	       	local nStoneId0 = 10303100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303100,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1016 then
	       	local nStoneId0 = 10303200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303200,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1017 then
	       	local nStoneId0 = 10304100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304100,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1018 then
	       	local nStoneId0 = 10305100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305100,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1019 then
	       	local nStoneId0 = 10305200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305200,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTh¥n binh phù #Wcó th¬ · #phø bän Yªn TØ ‘, Phiêu Mi¬u Phong#W ðÕt ðßþc!" )
		      --AddText( sceneId, "#c0066ffmµt ¶Î#G(#cFF0000LV1-LV9#G)#cFF000070%" )
		      AddText( sceneId, "Luy®n h°n th¥n khí c¥n tiêu hao: " )
		      AddText( sceneId, "#GÐ¬ ð±i th¥n khí c¥n ðem" )
		      AddText( sceneId, "#cff99ffTh¥n binh phù#W5#cff99ffcái" )
			AddNumText( sceneId, x001154_g_scriptId, "#GXích Di­m cØu vån ðao#G", 10, 1021)
			AddNumText( sceneId, x001154_g_scriptId, "#GTräm ßu ðoÕn s¥u thß½ng#G", 10, 1022)
			AddNumText( sceneId, x001154_g_scriptId, "#GD¸ch thiên phá tà trßþng#G", 10, 1023)
			AddNumText( sceneId, x001154_g_scriptId, "#GHàm quang lµng änh kiªm#G", 10, 1024)
			AddNumText( sceneId, x001154_g_scriptId, "#GVÕn nh§n long uyên kiªm#G", 10, 1025)
			AddNumText( sceneId, x001154_g_scriptId, "#GChuy¬n h°n di®t phách câu#G", 10, 1026)
			AddNumText( sceneId, x001154_g_scriptId, "#GLôi minh cách höa phiªn#G", 10, 1027)
			AddNumText( sceneId, x001154_g_scriptId, "#GToái tình vø änh hoàn#G", 10, 1028)
			AddNumText( sceneId, x001154_g_scriptId, "#GThiên Tinh di®u dß½ng hoàn#G", 10, 1029)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10300007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1022 then
	       	local nStoneId0 = 10302008
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302008, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1023 then
	       	local nStoneId0 = 10301199
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301199,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1024 then
	       	local nStoneId0 = 10302007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1025 then
	       	local nStoneId0 = 10302009
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1026 then
	       	local nStoneId0 = 10303001
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1027 then
	       	local nStoneId0 = 10304007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1028 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1029 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Ycác phø bän ho£c sån Boss#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV3-LV5#G)#cFF000070%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W100#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "Nh¸ ðoÕn#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 201)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh¸ ðoÕn#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 202)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh¸ ðoÕn#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 203)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh¸ ðoÕn#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 204)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh¸ ðoÕn#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 205)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh¸ ðoÕn#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 206)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Ycác phø bän ho£c sån Boss#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV3-LV5#G)#cFF000070%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W100#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GÂm . #YNguyên th¥n giam c¥m#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2011)
			AddNumText( sceneId, x001154_g_scriptId, "#GC± . #YLinh Tê th¥n kiªm#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2012)
			AddNumText( sceneId, x001154_g_scriptId, "#GH±n . #YTiêu dao giang h°#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2013)
			AddNumText( sceneId, x001154_g_scriptId, "#GH§n . #YÐ×ng tình cách h§n#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2014)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2011 then
	       	local nStoneId0 = 10300008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301001, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2012 then
	       	local nStoneId0 = 10302008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302010, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2013 then
	       	local nStoneId0 = 10304008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 2014 then
	       	local nStoneId0 = 10305326
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305328, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 202 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Ycác phø bän ho£c sån Boss#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W1#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff6633Träm ßu thß½ng#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 2021)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff6633Lµng änh ðao#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 2022)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff6633Cách höa hoàn#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 2023)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 2021 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2022 then
	       	local nStoneId0 = 10302010
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2023 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 203 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Yphø bän Phiêu Mi¬u Phong #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W1#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff6633Träm ßu thß½ng#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 2031)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff6633Lµng änh ðao#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 2032)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff6633Cách höa hoàn#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 2033)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2031 then
	       	local nStoneId0 = 10301002
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301002,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301003, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2032 then
	       	local nStoneId0 = 10302011
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302012, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2033 then
	       	local nStoneId0 = 10305008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 204 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Yphø bän Phiêu Mi¬u Phong #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W1#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffÐoÕn s¥u thß½ng#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 2041)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffLong uyên ðao#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 2042)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffToái tình hoàn#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 2043)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2041 then
	       	local nStoneId0 = 10301003
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301003,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301004, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2042 then
	       	local nStoneId0 = 10302012
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302013, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2043 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305010, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 205 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Yphø bän Phiêu Mi¬u Phong #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W1#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffÐoÕn s¥u thß½ng#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 2051)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffLong uyên ðao#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 2052)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffToái tình hoàn#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 2053)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2051 then
	       	local nStoneId0 = 10301004
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301005, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2052 then
	       	local nStoneId0 = 10302013
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302013,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302014, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2053 then
	       	local nStoneId0 = 10305010
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305010,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305011, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 206 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn linh h°n tinh hoa #Wcó th¬ · #Yphø bän Phiêu Mi¬u Phong #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffNh¸ ðoÕn#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n nh¸ ðoÕn tinh hoa #W1#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffÐoÕn s¥u thß½ng#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 2061)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffLong uyên ðao#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 2062)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #cff99ffToái tình hoàn#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 2063)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2061 then
	       	local nStoneId0 = 10301005
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301005,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301197, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2062 then
	       	local nStoneId0 = 10302014
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302014,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303000, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2063 then
	       	local nStoneId0 = 10305011
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305012, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTam ðoÕn linh h°n tinh hoa #Wcó th¬ · #Ycác bän sao ho£c sån Boss #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffTam ðoÕn#G(#cFF0000LV5-LV6#G)#cFF0000100%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n tam ðoÕn tinh hoa#W200#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "Tam ðoÕn#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 301)
			--AddNumText( sceneId, x001154_g_scriptId, "Tam ðoÕn#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 302)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTam ðoÕn linh h°n tinh hoa #Wcó th¬ · #Ycác bän sao ho£c sån Boss #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffTam ðoÕn#G(#cFF0000LV5-LV6#G)#cFF0000100%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n tam ðoÕn tinh hoa#W200#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GÍõ.#cff6633Ngû h± ðoÕn h°n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3011)
			AddNumText( sceneId, x001154_g_scriptId, "#GÁú.#cff99ffKim long song ti­n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3012)
			AddNumText( sceneId, x001154_g_scriptId, "#GÊÀ.#cff6633HÕo khí trß¶ng thß#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3013)
			AddNumText( sceneId, x001154_g_scriptId, "#GÌì.#cff6633CØu thiên kim tuyªn#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3014)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3011 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3012 then
	       	local nStoneId0 = 10302010
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3013 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3014 then
	       	local nStoneId0 = 10305328
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305328,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305329, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 302 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTam ðoÕn linh h°n tinh hoa #Wcó th¬ · #Yphø bän Phiêu Mi¬u Phong #WðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffTam ðoÕn#G(#cFF0000LV19-LV#WMAX#G)#cFF000020%" )
		      AddText( sceneId, "Thång c¤p trang b¸ luy®n h°n c¥n tiêu hao: " )
		      AddText( sceneId, "#GTß½ng ð¯i Ñng  linh h°n trang b¸ #W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh h°n tam ðoÕn tinh hoa#W1#cff99ffcái" )
		      AddText( sceneId, "#GNgß½i xác ð¸nh thång c¤p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #ccc33ccD¸ch thiên trßþng#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 3021)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi®t thª #ccc33ccChuy¬n h°n câu#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 3022)
			AddNumText( sceneId, x001154_g_scriptId, "#G¾øÇé#ccc33ccMa sát hoàn#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 3023)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3021 then
	       	local nStoneId0 = 10301198
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId )
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10301198,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[H® th¯ng]:#GPhø trß½ng phø trß½ng, chúc m×ng#{_INFOUSR%s}LÕc Dß½ng trang b¸ luy®n h°n thång c¤p #{_INFOMSG%s}! L¤y ðßþc chung cñc v§t ph¦m, Luy®n h°n sau khi thång c¤p thuµc tính ðßþc nâng cao ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3022 then
	       	local nStoneId0 = 10303001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303002, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[H® th¯ng]:#GPhø trß½ng phø trß½ng, chúc m×ng#{_INFOUSR%s}LÕc Dß½ng trang b¸ luy®n h°n thång c¤p #{_INFOMSG%s}! L¤y ðßþc chung cñc v§t ph¦m, Luy®n h°n sau khi thång c¤p thuµc tính ðßþc nâng cao ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3023 then
	       	local nStoneId0 = 10305013
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10305013,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305014, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[H® th¯ng]:#GPhø trß½ng phø trß½ng, chúc m×ng#{_INFOUSR%s}LÕc Dß½ng trang b¸ luy®n h°n thång c¤p #{_INFOMSG%s}! L¤y ðßþc chung cñc v§t ph¦m, Luy®n h°n sau khi thång c¤p thuµc tính ðßþc nâng cao ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, trang b¸ thång c¤p thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cff99cc[ma h°n]#W chi nh§n #Wcó th¬ · #GLß½ng Bàn TØ #WðÕt ðßþc!" )
		      AddText( sceneId, "Hþp thành tiên khí c¥n tiêu hao: " )
		      AddText( sceneId, "#cff99ffNiªt bàn chi thÕch" )
		      AddText( sceneId, "#GNiªt bàn chi thÕch#W thu ðßþc tÕi: #YCÕnh kî trß¶ng#G ÐÕi bäo tß½ng#W" )
		      AddText( sceneId, "#cff99cc[ma h°n]#W chi nh§n #G+#cFF0000 niªt bàn chi thÕch #G=#cFF0000 tiên khí" )
			AddNumText( sceneId, x001154_g_scriptId, "Hþp thành #GDi®t thª #YXích Di­m ðao#G.[LV1]#cFF0000 ðao b±ng loÕi", 5, 401)
			AddNumText( sceneId, x001154_g_scriptId, "Hþp thành #GDi®t thª #YHàm quang kiªm#G.[LV1]#cFF0000 ðan song ðoän", 5, 402)
			AddNumText( sceneId, x001154_g_scriptId, "Hþp thành #GDi®t thª #YLôi minh nhçn#G.[LV1]#cFF0000 phiªn hoàn loÕi", 5, 403)
			AddNumText( sceneId, x001154_g_scriptId, "Hüy bö", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 401 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300006, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G Chúc m×ng ngß½i, ð±i thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 402 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302006, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G Chúc m×ng ngß½i, ð±i thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 403 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304006, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G Chúc m×ng ngß½i, ð±i thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguyên li®u cüa ngß½i không ðü, ð×ng t¾i qu¤y r¥y bän sÑ giä!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end
--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001154_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x001154_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x001154_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x001154_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x001154_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x001154_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x001154_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
