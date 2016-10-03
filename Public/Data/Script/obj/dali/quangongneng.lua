--LÕc Dß½ngNPC
--³é½±
--ÆÕÍ¨
x210531_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u tÕi Âu Tr¸ Vu luy®n h°n thành công! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u tÕi Âu Tr¸ Vu luy®n h°n thành công! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u tÕi Âu Tr¸ Vu luy®n h°n thành công! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi«u c¯ g¡ng cu¯i cùng cûng ðü nguyên li®u tÕi Âu Tr¸ Vu luy®n h°n thành công! #{_INFOMSG%s}",
}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x210531_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#{SQSJ_0708_08}" )
		AddText( sceneId, "#GChú ý: #cfff263Sau khi luy®n h°n t¤t cä ng÷c cß¶ng hóa tÕc kh¡c ð«u b¸ m¤t hªt các hÕ nên chú ý tháo gÞ ng÷c trß¾c khi luy®n h°n." )
		--AddText( sceneId, "#G(#cFF0000ÉñÆ÷ÖØÁ¶#G)" )
		--AddText( sceneId, "Èý¶Î#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü" )
		--AddText( sceneId, "#cff99ffÌáÊ¾(#GÇë²ðÏÂÒÑÏâÇ¶toÕ ðµ ±¦Ê¯#cff99ff)" )
		AddNumText( sceneId, x210531_g_ScriptId, "#{SQSJ_XML_01}", 10, 100 )
		--AddNumText( sceneId, x210531_g_ScriptId, "#G(#cFF0000ÉñÆ÷ÖØÁ¶#G)", 5, 200 )
		--AddNumText( sceneId, x210531_g_ScriptId, "Èý¶Î#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü", 5, 300 )
		--AddNumText( sceneId, x210531_g_ScriptId, "#cff99cc¡ºÄ§»ê¡»#WÖ®ÈÐ#YºÏ³É#G(#cFF0000ÏÉÆ÷#G)#cFF0000¡ü", 5, 400 )
		AddNumText( sceneId, x210531_g_ScriptId, "R¶i khöi", 8, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x210531_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#{SQSJ_XML_02}" )
		      --AddText( sceneId, "#G(#cFF0000LV1-LV3#G)#cFF000050%¡ü" )
		      --AddText( sceneId, "Á¶»¯ÉñÆ÷C¥n ÏûºÄ: " )
		      --AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ ÉñÆ÷#W1#G°Ñ" )
		      --AddText( sceneId, "#cff99ffTh¥n binh phù#W20#cff99ffcái" )
		      --AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "Luy®n H°n Th¥n Khí 102", 10, 101)
			AddNumText( sceneId, x210531_g_scriptId, "Luy®n H°n Th¥n Khí 106", 10, 102)
		--AddNumText( sceneId, x210531_g_scriptId, "Luy®n H°n Lai Th¥n Khí 106", 5, 103)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 8, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffÐ¬ luy®n Th¥n khí 102 c¥n:" )
		      --AddText( sceneId, "#c0066ffmµt ¶Î#G(#cFF0000LV1-LV3#G)#cFF000050%¡ü" )
		      --AddText( sceneId, "Á¶»¯ÉñÆ÷C¥n ÏûºÄ: " )
		      AddText( sceneId, "#cff99ffTh¥n khí 102 g°m #G1 #cff99ffcái" )
		      AddText( sceneId, "#cff99ffThân Binh Phù c¤p 3 #G10 #cff99ffcái" )
		      AddText( sceneId, "#cff0000Chú ý: ÐÆng c¤p sØ døng cüa Th¥n Khí Luy®n H°n c¤p 102 s¨ biªn thành 106. Sau khi luy®n h°n t¤t cä ng÷c cß¶ng hóa tÕc kh¡c ð«u b¸ m¤t hªt các hÕ nên chú ý tháo gÞ ng÷c trß¾c khi luy®n h°n." )
			AddNumText( sceneId, x210531_g_scriptId, "#GCØu Tiêu Di­m Dß½ngG", 10, 1011)
			AddNumText( sceneId, x210531_g_scriptId, "#GH°ng Hoang Long Vû#G", 10, 1012)
			AddNumText( sceneId, x210531_g_scriptId, "#GÐÕt Ma Nh¤t Thán#G", 10, 1013)
			AddNumText( sceneId, x210531_g_scriptId, "#GÖ Thiên Trß¶ng Sinh#G", 10, 1014)
			AddNumText( sceneId, x210531_g_scriptId, "#GÐÕi Di­n Thiên Huy«n#G", 10, 1015)
			--AddNumText( sceneId, x210531_g_scriptId, "#GChuy¬n H°n Di®t Phách Câu#G", 10, 1050)
			AddNumText( sceneId, x210531_g_scriptId, "#GLøc ÐÕo Hoàng Tuy«n#G", 10, 1016)
			AddNumText( sceneId, x210531_g_scriptId, "#GThái C± Ðiêu Linh#G", 10, 1017)
			AddNumText( sceneId, x210531_g_scriptId, "#GVô Tß¾ng Tuy®t Tung#G", 10, 1018)
			AddNumText( sceneId, x210531_g_scriptId, "#GVÕn Thª Khô Vinh#G", 10, 1019)
			AddNumText( sceneId, x210531_g_scriptId, "#GMÕt Thª Vß½ng Quy«n #G", 10, 1020)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10300102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10301102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554501, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10301202
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then	
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301202,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554502, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10303102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)
				       local bagpos01 = TryRecieveItem( sceneId, selfId, 10554503, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1015 then
	       	local nStoneId0 = 10302102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554504, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1016 then
	       	local nStoneId0 = 10303202
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303202,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554505, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1017 then
	       	local nStoneId0 = 10304102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554506, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1018 then
	       	local nStoneId0 = 10305102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554507, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1019 then
	       	local nStoneId0 = 10305202
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305202,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554508, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1020 then
	       	local nStoneId0 = 10302102
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554509, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1050 then
	       	local nStoneId0 = 10157011
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10157011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GLuy®n h°n th¥n khí thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffÐ¬ luy®n Th¥n khí 106 c¥n:" )
		      --AddText( sceneId, "#c0066ffmµt ¶Î#G(#cFF0000LV1-LV3#G)#cFF000050%¡ü" )
		      --AddText( sceneId, "Á¶»¯ÉñÆ÷C¥n ÏûºÄ: " )
		      AddText( sceneId, "#cff99ffTh¥n khí 106 g°m #G1 #cff99ffcái" )
		      AddText( sceneId, "#cff99ffThân Binh Phù c¤p 3 #G20 #cff99ffcái" )
		      AddText( sceneId, "#cff0000Chú ý: ÐÆng c¤p sØ døng cüa Th¥n Khí Luy®n H°n c¤p 106 s¨ biªn thành 106. Sau khi luy®n h°n t¤t cä ng÷c cß¶ng hóa tÕc kh¡c ð«u b¸ m¤t hªt các hÕ nên chú ý tháo gÞ ng÷c trß¾c khi luy®n h°n." )
			AddNumText( sceneId, x210531_g_scriptId, "#GXích Di­m CØu Vån Ðao#G", 10, 1021)
			AddNumText( sceneId, x210531_g_scriptId, "#GTräm ¿u ÐoÕn S¥u Thß½ng#G", 10, 1022)
			AddNumText( sceneId, x210531_g_scriptId, "#GD¸ch Thiên Phá Tà Trßþng#G", 10, 1023)
			AddNumText( sceneId, x210531_g_scriptId, "#GHàm Quang Lµng Änh Kiªm#G", 10, 1024)
			AddNumText( sceneId, x210531_g_scriptId, "#GVÕn Nh§n Long Uyên Kiªm#G", 10, 1025)
			AddNumText( sceneId, x210531_g_scriptId, "#GChuy¬n H°n Di®t Phách Câu#G", 10, 1026)
			AddNumText( sceneId, x210531_g_scriptId, "#GLôi Minh Cách Höa Phiªn#G", 10, 1027)
			AddNumText( sceneId, x210531_g_scriptId, "#GToái Tình Vø Änh Hoàn#G", 10, 1028)
			AddNumText( sceneId, x210531_g_scriptId, "#GThiên Tinh Di®u Dß½ng Hoàn#G", 10, 1029)
			AddNumText( sceneId, x210531_g_scriptId, "#GTinh Di Vô Ngân Kiªm #G", 10, 1030)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10300007
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1022 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301001, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1023 then
	       	local nStoneId0 = 10301199
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301199,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1024 then
	       	local nStoneId0 = 10302007
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1025 then
	       	local nStoneId0 = 10302009
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1026 then
	       	local nStoneId0 = 10303001
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1027 then
	       	local nStoneId0 = 10304009
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1028 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1029 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1030 then
	       	local nStoneId0 = 10302200
	       	local nStoneId1 = 30505818
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302200,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505818,10)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302200, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff¶þ¶ÎLinh»êTinh»ª#W có th¬ · #Y¸÷´óBoss¸ú¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ff¶þ¶Î#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»ê¶þ¶ÎTinh»ª#W100#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "¶þ¶Î#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü", 5, 201)
			--AddNumText( sceneId, x210531_g_scriptId, "¶þ¶Î#G(#cFF0000LV5-LV6#G)#cFF000015%¡ü", 5, 202)
			--AddNumText( sceneId, x210531_g_scriptId, "¶þ¶Î#G(#cFF0000LV6-LV7#G)#cFF000015%¡ü", 5, 203)
			--AddNumText( sceneId, x210531_g_scriptId, "¶þ¶Î#G(#cFF0000LV7-LV8#G)#cFF000015%¡ü", 5, 204)
			--AddNumText( sceneId, x210531_g_scriptId, "¶þ¶Î#G(#cFF0000LV8-LV9#G)#cFF000015%¡ü", 5, 205)
			--AddNumText( sceneId, x210531_g_scriptId, "¶þ¶Î#G(#cFF0000LV9-LV10#G)#cFF000015%¡ü", 5, 206)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff¶þ¶ÎLinh»êTinh»ª#W có th¬ · #Y¸÷´óBoss¸ú¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ff¶þ¶Î#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»ê¶þ¶ÎTinh»ª#W100#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÒõ¡¤#YÔªÉñ½ûïÀ#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü", 5, 2011)
			AddNumText( sceneId, x210531_g_scriptId, "#G¹Å¡¤#YLinhÏ¬Éñ½£#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü", 5, 2012)
			AddNumText( sceneId, x210531_g_scriptId, "#G»ì¡¤#YTiêu Dao½­ºþ#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü", 5, 2013)
			AddNumText( sceneId, x210531_g_scriptId, "#GºÞ¡¤#Y±ðÇéÀëºÞ#G(#cFF0000LV3-LV5#G)#cFF000070%¡ü", 5, 2014)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2011 then
	       	local nStoneId0 = 10300008
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301001, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2012 then
	       	local nStoneId0 = 10302008
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302010, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2013 then
	       	local nStoneId0 = 10304008
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 2014 then
	       	local nStoneId0 = 10305326
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,100)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305328, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 103 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffÐ¬ luy®n Th¥n khí 102 c¥n:" )
		      --AddText( sceneId, "#c0066ffmµt ¶Î#G(#cFF0000LV1-LV3#G)#cFF000050%¡ü" )
		      --AddText( sceneId, "Á¶»¯ÉñÆ÷C¥n ÏûºÄ: " )
		      AddText( sceneId, "#cff99ffTh¥n khí 102 g°m #G1 #cff99ffcái" )
		      AddText( sceneId, "#cff99ffThân Binh Phù c¤p 1 #G20 #cff99ffcái" )
		      AddText( sceneId, "#cff0000Chú ý: ÐÆng c¤p sØ døng cüa Th¥n Khí Luy®n H°n c¤p 82 s¨ biªn thành 86. Sau khi luy®n h°n t¤t cä ng÷c cß¶ng hóa tÕc kh¡c ð«u b¸ m¤t hªt các hÕ nên chú ý tháo gÞ ng÷c trß¾c khi luy®n h°n." )
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccCØu Tiêu Di­m Dß½ng", 10, 2021)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccH°ng Hoang Long Vû", 10, 2022)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccÐÕt Ma Nh¤t Thán", 10, 2023)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccÖ Thiên Trß¶ng Sinh", 10, 2024)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccÐÕi Di­n Thiên Huy«n", 10, 2025)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccLøc ÐÕo Hoàng Tuy«n", 10, 2026)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccThái C± Ðiêu Linh", 10, 2027)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccVô Tß¾ng Tuy®t Tung", 10, 2028)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccVÕn Thª Khô Vinh", 10, 2029)
			AddNumText( sceneId, x210531_g_scriptId, "#c33ffccMÕt Thª Vß½ng Quy«n", 10, 2030)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 2021 then
	       	local nStoneId0 = 10300004
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554500, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2022 then
	       	local nStoneId0 = 10301102
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554501, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2023 then
	       	local nStoneId0 = 10301202
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301202,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554502, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2024 then
	       	local nStoneId0 = 10303102
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554503, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2025 then
	       	local nStoneId0 = 10302102
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554504, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2026 then
	       	local nStoneId0 = 10303202
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303202,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554505, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2027 then
	       	local nStoneId0 = 10304102
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554506, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2028 then
	       	local nStoneId0 = 10305102
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554507, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2029 then
	       	local nStoneId0 = 10305202
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305202,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554508, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 2030 then
	       	local nStoneId0 = 10303102
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303102,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,20)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10554509, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 203 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff¶þ¶ÎLinh»êTinh»ª#W có th¬ · #YÆ®Ãì¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ff¶þ¶Î#G(#cFF0000LV9-LV19#G)#cFF000015%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»ê¶þ¶ÎTinh»ª#W1#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff6633Õ¶ÓÇÇ¹#G(#cFF0000LV6-LV7#G)#cFF000015%¡ü", 5, 2031)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff6633ÅªÓ°µ¶#G(#cFF0000LV6-LV7#G)#cFF000015%¡ü", 5, 2032)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff6633Àë»ð»·#G(#cFF0000LV6-LV7#G)#cFF000015%¡ü", 5, 2033)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2031 then
	       	local nStoneId0 = 10301002
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301002,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301003, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2032 then
	       	local nStoneId0 = 10302011
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302012, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2033 then
	       	local nStoneId0 = 10305008
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305008,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 204 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff¶þ¶ÎLinh»êTinh»ª#W có th¬ · #YÆ®Ãì¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ff¶þ¶Î#G(#cFF0000LV9-LV19#G)#cFF000015%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»ê¶þ¶ÎTinh»ª#W1#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ff¶Ï³îÇ¹#G(#cFF0000LV7-LV8#G)#cFF000015%¡ü", 5, 2041)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ffÁúÔ¨µ¶#G(#cFF0000LV7-LV8#G)#cFF000015%¡ü", 5, 2042)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ffËéÇé»·#G(#cFF0000LV7-LV8#G)#cFF000015%¡ü", 5, 2043)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2041 then
	       	local nStoneId0 = 10301003
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301003,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301004, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2042 then
	       	local nStoneId0 = 10302012
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302012,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302013, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2043 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305010, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 205 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff¶þ¶ÎLinh»êTinh»ª#W có th¬ · #YÆ®Ãì¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ff¶þ¶Î#G(#cFF0000LV9-LV19#G)#cFF000015%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»ê¶þ¶ÎTinh»ª#W1#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ff¶Ï³îÇ¹#G(#cFF0000LV8-LV9#G)#cFF000015%¡ü", 5, 2051)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ffÁúÔ¨µ¶#G(#cFF0000LV8-LV9#G)#cFF000015%¡ü", 5, 2052)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ffËéÇé»·#G(#cFF0000LV8-LV9#G)#cFF000015%¡ü", 5, 2053)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2051 then
	       	local nStoneId0 = 10301004
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301004,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301005, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2052 then
	       	local nStoneId0 = 10302013
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302013,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302014, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2053 then
	       	local nStoneId0 = 10305010
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305010,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305011, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 206 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff¶þ¶ÎLinh»êTinh»ª#W có th¬ · #YÆ®Ãì¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ff¶þ¶Î#G(#cFF0000LV9-LV19#G)#cFF000015%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»ê¶þ¶ÎTinh»ª#W1#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ff¶Ï³îÇ¹#G(#cFF0000LV9-LV10#G)#cFF000015%¡ü", 5, 2061)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ffÁúÔ¨µ¶#G(#cFF0000LV9-LV10#G)#cFF000015%¡ü", 5, 2062)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#cff99ffËéÇé»·#G(#cFF0000LV9-LV10#G)#cFF000015%¡ü", 5, 2063)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2061 then
	       	local nStoneId0 = 10301005
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301005,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301197, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2062 then
	       	local nStoneId0 = 10302014
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302014,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303000, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2063 then
	       	local nStoneId0 = 10305011
	       	local nStoneId1 = 30505819
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305011,1)--É¾³ýÎïÆ·
					LuaFnDelAvailableItem(sceneId,selfId,30505819,1)--É¾³ýÎïÆ·
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305012, 1)--¸øÓèÎïÆ·
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffÈý¶ÎLinh»êTinh»ª#W có th¬ · #Y¸÷´óBoss¸ú¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffÈý¶Î#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»êÈý¶ÎTinh»ª#W200#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "Èý¶Î#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü", 5, 301)
			--AddNumText( sceneId, x210531_g_scriptId, "Èý¶Î#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%¡ü", 5, 302)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffÈý¶ÎLinh»êTinh»ª#W có th¬ · #Y¸÷´óBoss¸ú¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffÈý¶Î#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»êÈý¶ÎTinh»ª#W200#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÍõ¡¤#cff6633Îå»¢¶Ï»ê#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü", 5, 3011)
			AddNumText( sceneId, x210531_g_scriptId, "#GÁú¡¤#cff99ff½ðÁúË«¼ô#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü", 5, 3012)
			AddNumText( sceneId, x210531_g_scriptId, "#GÊÀ¡¤#cff6633ºÆÆø³¤Êæ#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü", 5, 3013)
			AddNumText( sceneId, x210531_g_scriptId, "#GÌì¡¤#cff6633¾ÅÌì½ðÏß#G(#cFF0000LV5-LV6#G)#cFF0000100%¡ü", 5, 3014)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 302 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffÈý¶ÎLinh»êTinh»ª#W có th¬ · #YÆ®Ãì¸±±¾#W ðÕt ðßþc!" )
		      AddText( sceneId, "#c0066ffÈý¶Î#G(#cFF0000LV19-LV#WMAX#G)#cFF000020%¡ü" )
		      AddText( sceneId, "Éýc¤pLinh»ê×°±¸C¥n ÏûºÄ: " )
		      AddText( sceneId, "#GÏà¶ÔÓ¦toÕ ðµ Linh»ê×°±¸#W1#Gcái" )
		      AddText( sceneId, "#cff99ffLinh»êÈý¶ÎTinh»ª#W1#cff99ffcái" )
		      AddText( sceneId, "#GÄãXác nh§nÒªÉýc¤pÂð?" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#ccc33ccÞÄÌìÕÈ#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%¡ü", 5, 3021)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃðÊÀ#ccc33cc×ª»ê¹³#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%¡ü", 5, 3022)
			AddNumText( sceneId, x210531_g_scriptId, "#G¾øÇé#ccc33ccÄ§É·»·#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%¡ü", 5, 3023)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
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
		                     local strText = format("@*;SrvMsg;SCA:#G[H® th¯ng]:#GºÅÍâºÅÍâ,Chúc m×ng#{_INFOUSR%s}LÕc Dß½ngLinh»ê×°±¸Éýc¤pÖÐ,È¡ ði¬mÖÕ¼«ÎïÆ·#{_INFOMSG%s}!Linh»êÉýc¤pºóÊôÐÔ´ó´ó¼ÓÇ¿,ÄËÐúng¾Ó¼ÒÂÃÐÐ,PKÉ±ÈËtoÕ ðµ ±Ø±¸Å¶~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
		                     local strText = format("@*;SrvMsg;SCA:#G[H® th¯ng]:#GºÅÍâºÅÍâ,Chúc m×ng#{_INFOUSR%s}LÕc Dß½ngLinh»ê×°±¸Éýc¤pÖÐ,È¡ ði¬mÖÕ¼«ÎïÆ·#{_INFOMSG%s}!Linh»êÉýc¤pºóÊôÐÔ´ó´ó¼ÓÇ¿,ÄËÐúng¾Ó¼ÒÂÃÐÐ,PKÉ±ÈËtoÕ ðµ ±Ø±¸Å¶~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
		                     local strText = format("@*;SrvMsg;SCA:#G[H® th¯ng]:#GºÅÍâºÅÍâ,Chúc m×ng#{_INFOUSR%s}LÕc Dß½ngLinh»ê×°±¸Éýc¤pÖÐ,È¡ ði¬mÖÕ¼«ÎïÆ·#{_INFOMSG%s}!Linh»êÉýc¤pºóÊôÐÔ´ó´ó¼ÓÇ¿,ÄËÐúng¾Ó¼ÒÂÃÐÐ,PKÉ±ÈËtoÕ ðµ ±Ø±¸Å¶~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ng ngß½i, th¥n khí luy®n h°n thành công!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cff99cc¡ºÄ§»ê¡»#WÖ®ÈÐ#W có th¬ · #GÁºÅÖ×Ó#W ðÕt ðßþc!" )
		      AddText( sceneId, "ºÏ³ÉÏÉÆ÷C¥n ÏûºÄ: " )
		      AddText( sceneId, "#cff99ffÄù˜„Ö®Ê¯" )
		      AddText( sceneId, "#GÄù˜„Ö®Ê¯#W»ñÈ.º#Y¾º¼¼³¡#G´ó±¦Ïä#W¿ªÈ¡" )
		      AddText( sceneId, "#cff99cc¡ºÄ§»ê¡»#WÖ®ÈÐ#G+#cFF0000Äù˜„Ö®Ê¯#G=#cFF0000ÏÉÆ÷" )
			AddNumText( sceneId, x210531_g_scriptId, "ºÏ³É#GÃðÊÀ#Y³àÑæµ¶#G¡¤[LV1]#cFF0000¡üµ¶°ôÀà", 5, 401)
			AddNumText( sceneId, x210531_g_scriptId, "ºÏ³É#GÃðÊÀ#Yº¬¹â½£#G¡¤[LV1]#cFF0000¡üµ¥Ë«¶Ì", 5, 402)
			AddNumText( sceneId, x210531_g_scriptId, "ºÏ³É#GÃðÊÀ#YÀ×ÃùÈÌ#G¡¤[LV1]#cFF0000¡üÉÈ»·Àà", 5, 403)
			AddNumText( sceneId, x210531_g_scriptId, "R¶i khöi", 5, 4)
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ngÄã,¶mµt »³É¹¦!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ngÄã,¶mµt »³É¹¦!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GChúc m×ngÄã,¶mµt »³É¹¦!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GBÕn không ðü nguyên li®u ð¬ luy®n h°n."
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
function x210531_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x210531_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x210531_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x210531_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x210531_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x210531_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x210531_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
