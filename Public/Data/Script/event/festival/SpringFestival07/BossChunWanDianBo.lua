--BOSS´ºÍí ði¬m²¥½Å±¾

--½Å±¾ºÅ
x050044_g_ScriptId = 050044

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050044_g_MainScriptId = 050030

--ÆÕÍ¨ ði¬m²¥È¯½ÚÄ¿±í....
x050044_g_ChapterTblA = {

	[1] = { id=2,  name="¸èÇú: ÏòÌìÔÙ½èÎå°ÙÄê"				},
	[2] = { id=3,  name="¸èÇú: ±£ÎÀÈýÁ¬»·"						},
	[3] = { id=5,  name="¸èÇú: ½¡¿µ¸è"								},
	[4] = { id=6,  name="Ð¡Æ·: Æó¶ìÍõtoÕ ðµ ¹ÊÊÂ"					},
	[5] = { id=8,  name="¸èÇú: Ë«½Ú¹÷"								},
	[6] = { id=10, name="Ð¡Æ·: mµt ¼ûÖÓÇé"							}

}

--¸ßc¤p ði¬m²¥È¯½ÚÄ¿±í....
x050044_g_ChapterTblB = {

	[1] = { id=2,  name="¸èÇú: ÏòÌìÔÙ½èÎå°ÙÄê"				},
	[2] = { id=3,  name="¸èÇú: ±£ÎÀÈýÁ¬»·"						},
	[3] = { id=5,  name="¸èÇú: ½¡¿µ¸è"								},
	[4] = { id=6,  name="Ð¡Æ·: Æó¶ìÍõtoÕ ðµ ¹ÊÊÂ"					},
	[5] = { id=7,  name="Îèµ¸: ¶ÇÆ¤Îè"								},
	[6] = { id=8,  name="¸èÇú: Ë«½Ú¹÷"								},
	[7] = { id=10, name="Ð¡Æ·: mµt ¼ûÖÓÇé"							},
	[8] = { id=11, name="¸èÇú: ÎÒÃÇÐúng¼«Æ·±¦Îï½Ó°àÈË"	}

}

--ÆÕÍ¨ ði¬m²¥È¯ID....
x050044_g_TicketIdA = 30900046

--¸ßc¤p ði¬m²¥È¯ID....
x050044_g_TicketIdB = 30900047


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050044_OnDefaultEvent( sceneId, selfId,targetId )

	local NumText = GetNumText()

	if NumText == 0	then

		--ÏÔÊ¾ÆÕÍ¨ ði¬m²¥È¯½ÚÄ¿ÁÐ±í....
		BeginEvent(sceneId)
			AddText(sceneId,"#{CWDB_20080225_02}")
			local ChapterCount = getn( x050044_g_ChapterTblA )
			for i=1, ChapterCount do
				AddNumText( sceneId, x050044_g_ScriptId, x050044_g_ChapterTblA[i].name, 6, i+100 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 1	then

		--ÏÔÊ¾¸ßc¤p ði¬m²¥È¯½ÚÄ¿ÁÐ±í....
		BeginEvent(sceneId)
			AddText(sceneId,"#{CWDB_20080225_03}")
			local ChapterCount = getn( x050044_g_ChapterTblB )
			for i=1, ChapterCount do
				AddNumText( sceneId, x050044_g_ScriptId, x050044_g_ChapterTblB[i].name, 6, i+200 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

	if NumText > 200 then

		--Ê¹ÓÃ¸ßc¤p ði¬m²¥È¯ ði¬m²¥½ÚÄ¿....
		x050044_DianBo( sceneId, selfId, targetId, 2, NumText - 200 )

	elseif NumText > 100 then

		--Ê¹ÓÃÆÕÍ¨ ði¬m²¥È¯ ði¬m²¥½ÚÄ¿....
		x050044_DianBo( sceneId, selfId, targetId, 1, NumText - 100 )

	end

end


--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050044_OnEnumerate( sceneId, selfId, targetId )

--		AddNumText( sceneId, x050044_g_ScriptId, "ÆÕÍ¨ ði¬m²¥È¯ ði¬m²¥", 6, 0 )
--		AddNumText( sceneId, x050044_g_ScriptId, "¸ßc¤p ði¬m²¥È¯ ði¬m²¥", 6, 1 )

end


--**********************************
-- ði¬m²¥Ö¸¶¨½ÚÄ¿....
--**********************************
function x050044_DianBo( sceneId, selfId, targetId, type, idx )

	--¼ì²âµ±Ç°Ðúng·ñTÕi ²¥·Å½ÚÄ¿....
	if 1 == CallScriptFunction( x050044_g_MainScriptId, "IsChapterPlaying", sceneId ) then
		BeginEvent(sceneId)
			AddText( sceneId, "#{CWDB_20080225_04}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	local ChapterData = nil
	if type == 1 then
		ChapterData = x050044_g_ChapterTblA[idx]
	elseif type == 2 then
		ChapterData = x050044_g_ChapterTblB[idx]
	end
	if not ChapterData then
		return
	end

	local needItemId = -1
	if type == 1 then
		needItemId = x050044_g_TicketIdA
	elseif type == 2 then
		needItemId = x050044_g_TicketIdB
	end

	local needItemName = "#{_ITEM"..needItemId.."}"
	local msgNoItem = "ÄúÃ»ÓÐÐ¯´ø"..needItemName..",ËùÒÔÎÞ·¨ ði¬m²¥½ÚÄ¿Å¶!"

	--¼ì²âÐúng·ñÓÐ ði¬m²¥µÀ¾ß....
	if LuaFnGetAvailableItemCount(sceneId, selfId, needItemId) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--É¾³ýÇ°»ñÈ¡µÀ¾ßtoÕ ðµ Transfer....
	local itemPos = GetItemBagPos( sceneId, selfId, needItemId, 1 )
	if itemPos < 0 then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	local needItemTransfer = GetBagItemTransfer(sceneId,selfId,itemPos)

	--É¾³ý ði¬m²¥µÀ¾ß....
	if 1 ~= LuaFnDelAvailableItem( sceneId, selfId, needItemId, 1 ) then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	-- ði¬m²¥....
	CallScriptFunction( x050044_g_MainScriptId, "PlayChapter", sceneId, ChapterData.id )

	--¹«¸æ....
	local PlayerName = GetName(sceneId, selfId)
	local str
	if type == 1 then
		str = format( "#{_INFOUSR%s}#PSØ døng #{_INFOMSG%s}#P,¿ÉÒÔ ði¬m²¥ÐÂ´ºBOSSÁª»¶»átoÕ ðµ ¾ø´ó²¿·Ö½ÚÄ¿Å¶,Tinh²Ê²»ÈÝ´í¹ý£..¡", PlayerName, needItemTransfer )
	elseif type == 2 then
		str = format( "#{_INFOUSR%s}#PSØ døng #{_INFOMSG%s}#P,ÐÂ´ºBOSSÁª»¶»á½ÚÄ¿ËæÒâ ði¬m,Tinh²Ê²»ÈÝ´í¹ýÅ¶£..¡", PlayerName, needItemTransfer )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

	--¹Ø±Õ¶Ô»°¿ò....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end
