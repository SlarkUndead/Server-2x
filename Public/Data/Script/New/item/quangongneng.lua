--¬Â—ÙNPC
--≥ÈΩ±
--∆’Õ®
x210531_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#Hæ≠π˝“ª∑¨≈¨¡¶£¨÷’”⁄¡∂ªØ¡À…Ò∆˜£¨Õª»ªŒ⁄‘∆√‹≤ºÃÏø’“ª…˘æﬁœÏ#{_INFOMSG%s}¡∂ªØ≥…π¶£°", 
  "#e6f00c7#b#{_INFOUSR%s}#Hæ≠π˝“ª∑¨≈¨¡¶£¨÷’”⁄¡∂ªØ¡À…Ò∆˜£¨Õª»ªŒ⁄‘∆√‹≤ºÃÏø’“ª…˘æﬁœÏ#{_INFOMSG%s}¡∂ªØ≥…π¶£°", 
  "#e6f00c7#b#{_INFOUSR%s}#Hæ≠π˝“ª∑¨≈¨¡¶£¨÷’”⁄¡∂ªØ¡À…Ò∆˜£¨Õª»ªŒ⁄‘∆√‹≤ºÃÏø’“ª…˘æﬁœÏ#{_INFOMSG%s}¡∂ªØ≥…π¶£°", 
  "#e6f00c7#b#{_INFOUSR%s}#Hæ≠π˝“ª∑¨≈¨¡¶£¨÷’”⁄¡∂ªØ¡À…Ò∆˜£¨Õª»ªŒ⁄‘∆√‹≤ºÃÏø’“ª…˘æﬁœÏ#{_INFOMSG%s}¡∂ªØ≥…π¶£°", 
}
--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x210531_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ffLuyÆn h∞n th•n khÌ c•n: " )
		AddText( sceneId, "#G#cFF0000Th•n khÌ 102 " )
		AddText( sceneId, "#G#cFF0000Th•n Binh Ph˘" )
		--AddText( sceneId, "»˝∂Œ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸" )
		--AddText( sceneId, "#cff99ffÃ· æ£®#G«Î≤œ¬“—œ‚«∂µƒ±¶ Ø#cff99ff£©" )
		AddNumText( sceneId, x210531_g_ScriptId, "#GLuyÆn h∞n th•n khÌ ", 10, 100 )
		--AddNumText( sceneId, x210531_g_ScriptId, "#GLuy?n h°„n th£§n kh®™", 5, 200 )
		--AddNumText( sceneId, x210531_g_ScriptId, "»˝∂Œ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸", 5, 300 )
		--AddNumText( sceneId, x210531_g_ScriptId, "#cff99cc°∫ƒßªÍ°ª#W÷Æ»–#Y∫œ≥…#G£®#cFF0000œ…∆˜#G£©#cFF0000°¸", 5, 400 )
		AddNumText( sceneId, x210531_g_ScriptId, "KhÙng c•n", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
-- ¬º˛¡–±Ì—°÷–“ªœÓ
--**********************************
function x210531_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff–¨ luyÆn th•n khÌ c•n" )
		      --AddText( sceneId, "#G£®#cFF0000LV1-LV3#G£©#cFF000050%°¸" )
		      --AddText( sceneId, "Th£§n kh®™ 102 g°„m 1 c®¢i" )
		      AddText( sceneId, "Th•n khÌ 102 g∞m 1 c·i" )
		      AddText( sceneId, "#cff99ffTh‚n Binh Ph˘ c§p 2 g∞m 200 c·i" )
		      --AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#GXin lÒa ch˜n th•n khÌ", 10, 101)
			--AddNumText( sceneId, x210531_g_scriptId, "#G£®#cFF0000ø™ º÷ÿ¡∂#G£©", 10, 102)
			--AddNumText( sceneId, x210531_g_scriptId, "“ª∂Œ#G£®#cFF0000LV3-LV4#G£©#cFF000010%°¸", 5, 103)
			AddNumText( sceneId, x210531_g_scriptId, "Tr∑ v´", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff–¨ luyÆn th•n khÌ c•n" )
		      --AddText( sceneId, "#c0066ff“ª∂Œ#G£®#cFF0000LV1-LV3#G£©#cFF000050%°¸" )
		      --AddText( sceneId, "¡∂ªØ…Ò∆˜–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "Th•n khÌ 102 g∞m 1 c·i" )
		      AddText( sceneId, "#cff99ffTh‚n Binh Ph˘ c§p 2 g∞m 200 c·i" )
		      --AddText( sceneId, "#Gƒ„»∑∂®“™¡∂ªØ¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#XÌch Di≠m Cÿu VÂn –ao#G", 10, 1011)
			--AddNumText( sceneId, x210531_g_scriptId, "#V?n Nh°Ïn Long Uy®∫n Kiam#G", 10, 1012)
			AddNumText( sceneId, x210531_g_scriptId, "#D∏ch ThiÍn Ph· T‡ Trﬂ˛ng#G", 10, 1013)
			AddNumText( sceneId, x210531_g_scriptId, "#H‡m Quang Lµng ƒnh Ki™m#G", 10, 1014)
			AddNumText( sceneId, x210531_g_scriptId, "#V’n Nhßn Long UyÍn Ki™m#G", 10, 1015)
			AddNumText( sceneId, x210531_g_scriptId, "#Chuy¨n H∞n DiÆt Ph·ch C‚u#G", 10, 1016)
			AddNumText( sceneId, x210531_g_scriptId, "#LÙi Minh Ly Hˆa Phi™n#G", 10, 1017)
			AddNumText( sceneId, x210531_g_scriptId, "#To·i Tinh V¯ ƒnh Ho‡n#G", 10, 1018)
			AddNumText( sceneId, x210531_g_scriptId, "#ThiÍn Tinh DiÆu DﬂΩng Ho‡n#G", 10, 1019)
			AddNumText( sceneId, x210531_g_scriptId, "Tr∑ v´", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10300100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300100,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10301100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301100,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302008, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10301200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301200,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10302100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302100,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1015 then
	       	local nStoneId0 = 10303100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303100,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1016 then
	       	local nStoneId0 = 10303200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303200,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1017 then
	       	local nStoneId0 = 10304100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304100,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1018 then
	       	local nStoneId0 = 10305100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305100,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1019 then
	       	local nStoneId0 = 10305200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305200,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GB’n „ nhßn ﬂ˛c ∞ nhﬂ mong muØn"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GB’n „ sÿ d¯ng ch—c nÂng n‡y"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff…Ò±¯∑˚#Wø…“‘‘⁄#Y—‡◊”∆Æ√Ï∏±±æ#WªÒµ√!" )
		      --AddText( sceneId, "#c0066ff“ª∂Œ#G£®#cFF0000LV1-LV9#G£©#cFF000070%°¸" )
		      AddText( sceneId, "÷ÿ¡∂…Ò∆˜–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ…Ò∆˜#W1#G∞—" )
		      AddText( sceneId, "#cff99ff…Ò±¯∑˚#W5#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™÷ÿ¡∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G≥‡—Êæ≈Œ∆µ∂#G", 10, 1021)
			AddNumText( sceneId, x210531_g_scriptId, "#G’∂”«∂œ≥Ó«π#G", 10, 1022)
			AddNumText( sceneId, x210531_g_scriptId, "#GﬁƒÃÏ∆∆–∞’»#G", 10, 1023)
			AddNumText( sceneId, x210531_g_scriptId, "#G∫¨π‚≈™”∞Ω£#G", 10, 1024)
			AddNumText( sceneId, x210531_g_scriptId, "#GÕÚÿ¡˙‘®Ω£#G", 10, 1025)
			AddNumText( sceneId, x210531_g_scriptId, "#G◊™ªÍ√∆«π≥#G", 10, 1026)
			AddNumText( sceneId, x210531_g_scriptId, "#G¿◊√˘¿Îª…»#G", 10, 1027)
			AddNumText( sceneId, x210531_g_scriptId, "#GÀÈ«ÈŒÌ”∞ª∑#G", 10, 1028)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃÏ–«“´—Ùª∑#G", 10, 1029)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10300007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300007,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302008,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302008, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10301199,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302007,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302009,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10304007,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨…Ò∆˜÷ÿ¡∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff≈Ãπ≈…Ò Ø#W»˝Œ∂’Êª#Yø…“‘‘⁄#Y∏˜¥ÛBoss#WªÒµ√!" )
		      --AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV3-LV5#G£©#cFF000070%°¸" )
		      AddText( sceneId, "∫œ≥…ª—Ê…Ò∆˜–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#G≈Ãπ≈…Ò Ø#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff»˝Œ∂’Êª#W100#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™∫œ≥…¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "∫œ≥…ª—Ê…Ò∆˜#G", 5, 201)
			--AddNumText( sceneId, x210531_g_scriptId, "∂˛∂Œ#G£®#cFF0000LV5-LV6#G£©#cFF000015%°¸", 5, 202)
			--AddNumText( sceneId, x210531_g_scriptId, "∂˛∂Œ#G£®#cFF0000LV6-LV7#G£©#cFF000015%°¸", 5, 203)
			--AddNumText( sceneId, x210531_g_scriptId, "∂˛∂Œ#G£®#cFF0000LV7-LV8#G£©#cFF000015%°¸", 5, 204)
			--AddNumText( sceneId, x210531_g_scriptId, "∂˛∂Œ#G£®#cFF0000LV8-LV9#G£©#cFF000015%°¸", 5, 205)
			--AddNumText( sceneId, x210531_g_scriptId, "∂˛∂Œ#G£®#cFF0000LV9-LV10#G£©#cFF000015%°¸", 5, 206)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff≈Ãπ≈…Ò Ø#W»˝Œ∂’Êª#Yø…“‘‘⁄#Y∏˜¥ÛBoss#WªÒµ√!" )
		      --AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV3-LV5#G£©#cFF000070%°¸" )
		      AddText( sceneId, "∫œ≥…ª—Ê…Ò∆˜–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#G≈Ãπ≈…Ò Ø#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff»˝Œ∂’Êª#W100#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™∫œ≥…¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#c66ffffª—Ê°Ô¬È±‘°Ô»’‘¬(µ•∂Ã£©", 5, 2011)
			AddNumText( sceneId, x210531_g_scriptId, "#c66ffffª—Ê°Ô¬È±‘°Ô±Ø≈≠£®À´∂Ã£©", 5, 2012)
			AddNumText( sceneId, x210531_g_scriptId, "#c66ffffª—Ê°Ô¬È±‘°Ô—Ê”∞£®…»◊”£©", 5, 2013)
			AddNumText( sceneId, x210531_g_scriptId, "#c66ffffª—Ê°Ô¬È±‘°Ôæ™–∞£®ª∑£©", 5, 2014)
			AddNumText( sceneId, x210531_g_scriptId, "#c66ffffª—Ê°Ô¬È±‘°Ô …ªÍ£®µ∂∏´£©", 5, 2015)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2011 then
	       	local nStoneId0 = 40004476
	       	local nStoneId1 = 40004477
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,40004476,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,40004477,100)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553103, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏∫œ≥…≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2012 then
	       	local nStoneId0 = 40004476
	       	local nStoneId1 = 40004477
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,40004476,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,40004477,100)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553104, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏∫œ≥…≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2013 then
	       	local nStoneId0 = 40004476
	       	local nStoneId1 = 40004477
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,40004476,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,40004477,100)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553105, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏∫œ≥…≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 2014 then
	       	local nStoneId0 = 40004476
	       	local nStoneId1 = 40004477
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,40004476,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,40004477,100)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553106, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏∫œ≥…≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 2015 then
	       	local nStoneId0 = 40004476
	       	local nStoneId1 = 40004477
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,40004476,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,40004477,100)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553107, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏∫œ≥…≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 202 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff∂˛∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∏˜¥ÛBoss∏˙∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV9-LV19#G£©#cFF000015%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ∂˛∂Œæ´ª™#W1#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff6633’∂”««π#G£®#cFF0000LV5-LV6#G£©#cFF000015%°¸", 5, 2021)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff6633≈™”∞µ∂#G£®#cFF0000LV5-LV6#G£©#cFF000015%°¸", 5, 2022)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff6633¿Îªª∑#G£®#cFF0000LV5-LV6#G£©#cFF000015%°¸", 5, 2023)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 2021 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 203 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff∂˛∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∆Æ√Ï∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV9-LV19#G£©#cFF000015%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ∂˛∂Œæ´ª™#W1#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff6633’∂”««π#G£®#cFF0000LV6-LV7#G£©#cFF000015%°¸", 5, 2031)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff6633≈™”∞µ∂#G£®#cFF0000LV6-LV7#G£©#cFF000015%°¸", 5, 2032)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff6633¿Îªª∑#G£®#cFF0000LV6-LV7#G£©#cFF000015%°¸", 5, 2033)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2031 then
	       	local nStoneId0 = 10301002
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301002,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301003, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302011,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302012, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305008,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 204 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff∂˛∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∆Æ√Ï∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV9-LV19#G£©#cFF000015%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ∂˛∂Œæ´ª™#W1#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ff∂œ≥Ó«π#G£®#cFF0000LV7-LV8#G£©#cFF000015%°¸", 5, 2041)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ff¡˙‘®µ∂#G£®#cFF0000LV7-LV8#G£©#cFF000015%°¸", 5, 2042)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ffÀÈ«Èª∑#G£®#cFF0000LV7-LV8#G£©#cFF000015%°¸", 5, 2043)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2041 then
	       	local nStoneId0 = 10301003
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301003,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301004, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302012,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302013, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305010, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 205 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff∂˛∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∆Æ√Ï∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV9-LV19#G£©#cFF000015%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ∂˛∂Œæ´ª™#W1#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ff∂œ≥Ó«π#G£®#cFF0000LV8-LV9#G£©#cFF000015%°¸", 5, 2051)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ff¡˙‘®µ∂#G£®#cFF0000LV8-LV9#G£©#cFF000015%°¸", 5, 2052)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ffÀÈ«Èª∑#G£®#cFF0000LV8-LV9#G£©#cFF000015%°¸", 5, 2053)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2051 then
	       	local nStoneId0 = 10301004
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301004,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301005, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302013,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302014, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305010,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305011, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 206 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff∂˛∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∆Æ√Ï∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff∂˛∂Œ#G£®#cFF0000LV9-LV19#G£©#cFF000015%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ∂˛∂Œæ´ª™#W1#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ff∂œ≥Ó«π#G£®#cFF0000LV9-LV10#G£©#cFF000015%°¸", 5, 2061)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ff¡˙‘®µ∂#G£®#cFF0000LV9-LV10#G£©#cFF000015%°¸", 5, 2062)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#cff99ffÀÈ«Èª∑#G£®#cFF0000LV9-LV10#G£©#cFF000015%°¸", 5, 2063)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2061 then
	       	local nStoneId0 = 10301005
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301005,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301197, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302014,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303000, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305011,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305012, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff»˝∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∏˜¥ÛBoss∏˙∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff»˝∂Œ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ»˝∂Œæ´ª™#W200#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "»˝∂Œ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸", 5, 301)
			--AddNumText( sceneId, x210531_g_scriptId, "»˝∂Œ#G£®#cFF0000LV11-LV#WMAX#G£©#cFF000020%°¸", 5, 302)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff»˝∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∏˜¥ÛBoss∏˙∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff»˝∂Œ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ»˝∂Œæ´ª™#W200#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#GÕı°§#cff6633ŒÂª¢∂œªÍ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸", 5, 3011)
			AddNumText( sceneId, x210531_g_scriptId, "#G¡˙°§#cff99ffΩ¡˙À´ºÙ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸", 5, 3012)
			AddNumText( sceneId, x210531_g_scriptId, "#G ¿°§#cff6633∫∆∆¯≥§ Ê#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸", 5, 3013)
			AddNumText( sceneId, x210531_g_scriptId, "#GÃÏ°§#cff6633æ≈ÃÏΩœﬂ#G£®#cFF0000LV5-LV6#G£©#cFF0000100%°¸", 5, 3014)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3011 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305328,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305329, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 302 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff»˝∂Œ¡ÈªÍæ´ª™#Wø…“‘‘⁄#Y∆Æ√Ï∏±±æ#WªÒµ√!" )
		      AddText( sceneId, "#c0066ff»˝∂Œ#G£®#cFF0000LV19-LV#WMAX#G£©#cFF000020%°¸" )
		      AddText( sceneId, "…˝º∂¡ÈªÍ◊∞±∏–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#Gœ‡∂‘”¶µƒ¡ÈªÍ◊∞±∏#W1#G∏ˆ" )
		      AddText( sceneId, "#cff99ff¡ÈªÍ»˝∂Œæ´ª™#W1#cff99ff∏ˆ" )
		      AddText( sceneId, "#Gƒ„»∑∂®“™…˝º∂¬£ø" )
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#ccc33ccﬁƒÃÏ’»#G£®#cFF0000LV11-LV#WMAX#G£©#cFF000020%°¸", 5, 3021)
			AddNumText( sceneId, x210531_g_scriptId, "#G√ ¿#ccc33cc◊™ªÍπ≥#G£®#cFF0000LV11-LV#WMAX#G£©#cFF000020%°¸", 5, 3022)
			AddNumText( sceneId, x210531_g_scriptId, "#Gæ¯«È#ccc33ccƒß…∑ª∑#G£®#cFF0000LV11-LV#WMAX#G£©#cFF000020%°¸", 5, 3023)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
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
					LuaFnDelAvailableItem(sceneId,selfId,10301198,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[œµÕ≥]:#G∫≈Õ‚∫≈Õ‚,πßœ≤#{_INFOUSR%s}¬Â—Ù¡ÈªÍ◊∞±∏…˝º∂÷–,»°µ√÷’º´ŒÔ∆∑#{_INFOMSG%s}!¡ÈªÍ…˝º∂∫Û Ù–‘¥Û¥Ûº”«ø,ƒÀ «æ”º“¬√––,PK…±»Àµƒ±ÿ±∏≈∂~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303002, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[œµÕ≥]:#G∫≈Õ‚∫≈Õ‚,πßœ≤#{_INFOUSR%s}¬Â—Ù¡ÈªÍ◊∞±∏…˝º∂÷–,»°µ√÷’º´ŒÔ∆∑#{_INFOMSG%s}!¡ÈªÍ…˝º∂∫Û Ù–‘¥Û¥Ûº”«ø,ƒÀ «æ”º“¬√––,PK…±»Àµƒ±ÿ±∏≈∂~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10305013,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305014, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[œµÕ≥]:#G∫≈Õ‚∫≈Õ‚,πßœ≤#{_INFOUSR%s}¬Â—Ù¡ÈªÍ◊∞±∏…˝º∂÷–,»°µ√÷’º´ŒÔ∆∑#{_INFOMSG%s}!¡ÈªÍ…˝º∂∫Û Ù–‘¥Û¥Ûº”«ø,ƒÀ «æ”º“¬√––,PK…±»Àµƒ±ÿ±∏≈∂~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨◊∞±∏…˝º∂≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cff99cc°∫ƒßªÍ°ª#W÷Æ»–#Wø…“‘‘⁄#G¡∫≈÷◊”#WªÒµ√!" )
		      AddText( sceneId, "∫œ≥…œ…∆˜–Ë“™œ˚∫ƒ£∫" )
		      AddText( sceneId, "#cff99ffƒ˘òÑ÷Æ Ø" )
		      AddText( sceneId, "#Gƒ˘òÑ÷Æ Ø#WªÒ»°£∫#Yæ∫ºº≥°#G¥Û±¶œ‰#Wø™»°" )
		      AddText( sceneId, "#cff99cc°∫ƒßªÍ°ª#W÷Æ»–#G+#cFF0000ƒ˘òÑ÷Æ Ø#G=#cFF0000œ…∆˜" )
			AddNumText( sceneId, x210531_g_scriptId, "∫œ≥…#G√ ¿#Y≥‡—Êµ∂#G°§[LV1]#cFF0000°¸µ∂∞Ù¿‡", 5, 401)
			AddNumText( sceneId, x210531_g_scriptId, "∫œ≥…#G√ ¿#Y∫¨π‚Ω£#G°§[LV1]#cFF0000°¸µ•À´∂Ã", 5, 402)
			AddNumText( sceneId, x210531_g_scriptId, "∫œ≥…#G√ ¿#Y¿◊√˘»Ã#G°§[LV1]#cFF0000°¸…»ª∑¿‡", 5, 403)
			AddNumText( sceneId, x210531_g_scriptId, "»°œ˚", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 401 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300006, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨∂“ªª≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302006, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨∂“ªª≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--…æ≥˝ŒÔ∆∑
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--…æ≥˝ŒÔ∆∑
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304006, 1)--∏¯”ËŒÔ∆∑
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#Gπßœ≤ƒ„£¨∂“ªª≥…π¶£°"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Gƒ„µƒ≤ƒ¡œ≤ªπª£¨æÕ≤ª“™¿¥¥Ú»≈±æ π’ﬂ¡À£¨–°–ƒŒ“±‚ƒ„≈∂£°£°"
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
-- ∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x210531_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ∆¡ƒª÷–º‰–≈œ¢Ã· æ
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
