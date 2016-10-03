-- ´´½¨ÈË[ QUFEI 2007-09-30 21:53 UPDATE BugID 25497 ]
-- ĞŞ¸Ä[ñÒÉÙÎ¢ 2008.5.22 Ìí¼ÓĞÂtoÕ ğµ 27cáiÉñÆ÷]

-- ÉñÆ÷ºÏ³ÉÅä·½
-- ItemID = 10300000~10305005(ÉñÆ÷Åä·½)				10300100~10305202(102c¤pÉñÆ÷)
-- ResourceID = 30505900~30505905(Á¬ÈÖÉñ½Ú)		30505906(Á¬ÈÖÉñ½Ú7c¤p)
-- 335134
-- Í¨¹ıÁ¬ÈÖÉñ½ÚÓëÉñÆ÷Åä·½ºÏ³ÉÉñÆ÷
-- ²ÄÁÏ¿ÉÒÔÊ¹ÓÃ1´Î
-- Ê¹ÓÃÍê¾ÍÉ¾³ı²ÄÁÏ

-- ¸Ã½Å±¾ÓĞÒÔÏÂ¶şcái±Ø±¸¹¦ÄÜº¯Êı: 
-- x335134_AbilityCheck		- ¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
-- x335134_AbilityProduce	-  ºÏ³É³É¹¦,¸ºÔğÏûºÄÒÔ¼°²ú³ö²úÆ·

-- ½Å±¾ºÅ
x335134_g_ScriptId	= 335134

-- ²ÄÁÏ±í Á¬ÈÖÉñ½Ú
x335134_g_Stuff			= { 30505900, 30505901, 30505902, 30505903, 30505904, 30505905, 30505906 }		-- ñÒÉÙÎ¢ 2008.5.22 Ìí¼ÓÁ¬ÈÖÉñ½Ú7c¤p 30505906

-- Åä·½±í
-- Ë÷ÒıÎªÅä·½ ID
-- abilityId: Éú»î¼¼ÄÜºÅ
-- recipeLevel: Åä·½µÈc¤p
-- matTbl: ¸ÃÅä·½Ê¹ÓÃtoÕ ğµ ²ÄÁÏ×é±í
--		matList:Ä³cáiµµ´ÎtoÕ ğµ ²ÄÁÏÇåµ¥
--		count:Ê¹ÓÃ¸Ãµµ´ÎtoÕ ğµ ²ÄÁÏC¥n toÕ ğµ ÊıÁ¿
-- Product: ²úÆ·
x335134_g_CompoundInfo			= {}
-- ÉñÆ÷Åä·½±í ÈÛ½ğÂäÈÕ
x335134_g_CompoundInfo[419]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[1], count = 1, Product = 10300000, },
		{ matList = x335134_g_Stuff[2], count = 1, Product = 10300001, },
		{ matList = x335134_g_Stuff[3], count = 1, Product = 10300002, },
		{ matList = x335134_g_Stuff[4], count = 1, Product = 10300003, },
		{ matList = x335134_g_Stuff[5], count = 1, Product = 10300004, },
		{ matList = x335134_g_Stuff[6], count = 1, Product = 10300005, },
	},
}

-- ÉñÆ÷Åä·½±í ÇïË®ÎŞºÛ
x335134_g_CompoundInfo[420]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[1], count = 1, Product = 10302000, },
		{ matList = x335134_g_Stuff[2], count = 1, Product = 10302001, },
		{ matList = x335134_g_Stuff[3], count = 1, Product = 10302002, },
		{ matList = x335134_g_Stuff[4], count = 1, Product = 10302003, },
		{ matList = x335134_g_Stuff[5], count = 1, Product = 10302004, },
		{ matList = x335134_g_Stuff[6], count = 1, Product = 10302005, },
	},	
}

-- ÉñÆ÷Åä·½±í ±Ìº£ÒøÌÎ
x335134_g_CompoundInfo[421]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[1], count = 1, Product = 10305000, },
		{ matList = x335134_g_Stuff[2], count = 1, Product = 10305001, },
		{ matList = x335134_g_Stuff[3], count = 1, Product = 10305002, },
		{ matList = x335134_g_Stuff[4], count = 1, Product = 10305003, },
		{ matList = x335134_g_Stuff[5], count = 1, Product = 10305004, },
		{ matList = x335134_g_Stuff[6], count = 1, Product = 10305005, },
	},	
}

-- ÉñÆ÷Åä·½±í ÍòÛÖËÉ·ç
x335134_g_CompoundInfo[422]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[1], count = 1, Product = 10304000, },
		{ matList = x335134_g_Stuff[2], count = 1, Product = 10304001, },
		{ matList = x335134_g_Stuff[3], count = 1, Product = 10304002, },
		{ matList = x335134_g_Stuff[4], count = 1, Product = 10304003, },
		{ matList = x335134_g_Stuff[5], count = 1, Product = 10304004, },
		{ matList = x335134_g_Stuff[6], count = 1, Product = 10304005, },
	},
}

----------------------------------------------------------------------------------------
-- ñÒÉÙÎ¢ 2008.5.22 Ìí¼Ó7ÖÖ102c¤pÉñÆ÷
----------------------------------------------------------------------------------------
-- ÉñÆ÷Åä·½±í ´óÏÄÁúÈ¸
x335134_g_CompoundInfo[980]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10300100, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÏÄÁúÈ¸1
x335134_g_CompoundInfo[981]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10300101, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÏÄÁúÈ¸2
x335134_g_CompoundInfo[982]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10300102, },
	},
}


-- ÉñÆ÷Åä·½±í ´óÉÌ³¾Ó°
x335134_g_CompoundInfo[983]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10302100, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÉÌ³¾Ó°1
x335134_g_CompoundInfo[984]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10302101, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÉÌ³¾Ó°2
x335134_g_CompoundInfo[985]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10302102, },
	},
}

-- ÉñÆ÷Åä·½±í ´óÖÜá°Ò¹
x335134_g_CompoundInfo[986]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10303100, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÖÜá°Ò¹1
x335134_g_CompoundInfo[987]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10303101, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÖÜá°Ò¹2
x335134_g_CompoundInfo[988]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10303102, },
	},
}

-- ÉñÆ÷Åä·½±í ´óÇØ·æïá
x335134_g_CompoundInfo[989]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10301100, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÇØ·æïá1
x335134_g_CompoundInfo[990]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10301101, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÇØ·æïá2
x335134_g_CompoundInfo[991]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10301102, },
	},
}

-- ÉñÆ÷Åä·½±í ´óºººë¸Ù
x335134_g_CompoundInfo[992]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10305100, },
	},
}
-- ÉñÆ÷Åä·½±í ´óºººë¸Ù1
x335134_g_CompoundInfo[993]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10305101, },
	},
}
-- ÉñÆ÷Åä·½±í ´óºººë¸Ù2
x335134_g_CompoundInfo[994]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10305102, },
	},
}

-- ÉñÆ÷Åä·½±í ´ó½úĞÇºÛ
x335134_g_CompoundInfo[995]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10303200, },
	},
}
-- ÉñÆ÷Åä·½±í ´ó½úĞÇºÛ1
x335134_g_CompoundInfo[996]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10303201, },
	},
}
-- ÉñÆ÷Åä·½±í ´ó½úĞÇºÛ2
x335134_g_CompoundInfo[997]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10303202, },
	},
}

-- ÉñÆ÷Åä·½±í ´óËåÄıËª
x335134_g_CompoundInfo[998]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10305201, },
	},
}

-- Bug ID´íÎó
-- ÉñÆ÷Åä·½±í ´óËåÄıËª1
x335134_g_CompoundInfo[999]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10305200, },
	},
}
-- ÉñÆ÷Åä·½±í ´óËåÄıËª2
x335134_g_CompoundInfo[1000]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10305202, },
	},
}

-- ÉñÆ÷Åä·½±í ´óÌÆÀ¥ÔÀ
x335134_g_CompoundInfo[1001]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10301200, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÌÆÀ¥ÔÀ1
x335134_g_CompoundInfo[1002]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10301201, },
	},
}
-- ÉñÆ÷Åä·½±í ´óÌÆÀ¥ÔÀ2
x335134_g_CompoundInfo[1003]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10301202, },
	},
}

-- ÉñÆ÷Åä·½±í ´óËÎ¾ıá¯
x335134_g_CompoundInfo[1004]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10304100, },
	},
}
-- ÉñÆ÷Åä·½±í ´óËÎ¾ıá¯
x335134_g_CompoundInfo[1005]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10304101, },
	},
}
-- ÉñÆ÷Åä·½±í ´óËÎ¾ıá¯
x335134_g_CompoundInfo[1006]	= {
	abilityId = ABILITY_ZHUZAO,
	recipeLevel = 1,
	matTbl = 
	{
		{ matList = x335134_g_Stuff[7], count = 1, Product = 10304102, },
	},
}
----------------------------------------------------------------------------------------
-- ñÒÉÙÎ¢ 2008.5.22 Ìí¼Ó7ÖÖ102c¤pÉñÆ÷
----------------------------------------------------------------------------------------

-- ±³°üC¥n toÕ ğµ ¿Õ¼ä
x335134_g_BagSpace	= 1

-- Ê¹ÓÃÅä·½Öı³ÉÉñÆ÷Ê±toÕ ğµ ÌØĞ§ID
x335134_g_ImpactID = 152

----------------------------------------------------------------------------------------
--	¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
----------------------------------------------------------------------------------------
function x335134_AbilityCheck( sceneId, selfId, recipeId )
	-- PrintStr("AbilityCheck...")
	
	local CompoundInfo = x335134_g_CompoundInfo[recipeId]
	
	--PushDebugMessage("CompoundInfo ="..CompoundInfo)
	 
	if not CompoundInfo then
		return OR_ERROR
	end

	-- ¼ì²â±³°üĞúng²»ĞúngÓĞ¿Õ¸ñ,Ã»ÓĞ¿Õ¸ñ¾Í²»ÄÜ½øĞĞ
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < x335134_g_BagSpace then
		return OR_BAG_OUT_OF_SPACE
	end

	local abilityLevel = QueryHumanAbilityLevel( sceneId, selfId, CompoundInfo.abilityId )
	if abilityLevel < CompoundInfo.recipeLevel then
		return OR_NO_LEVEL
	end

	-- ÅĞ¶ÏÉíÉÏtoÕ ğµ ²ÄÁÏĞúng·ñ×ã¹»
	local i, matInfo, tblCount, bMatEnoughFlag, idx, MatSN, Count

	tblCount = getn( CompoundInfo.matTbl )
	bMatEnoughFlag = 0

	-- PrintStr("tblCount ="..tblCount)

	for i = 1, tblCount do
		
		Count = 0
		matInfo = CompoundInfo.matTbl[i]
		-- PrintStr("matInfo ="..matInfo.matList)
		if not matInfo then			
			print( "Exception: An unexpected value of the variable [i] in function [x335134_AbilityCheck], the value is ", i )
			-- PrintStr("not matInfo")
			return OR_STUFF_LACK
		end

		if not matInfo.matList then			
			print( "Exception: An unexpected value of the variable [matInfo] in function [x335134_AbilityCheck], the value is ", matInfo )
			--PrintStr("matInfo.matList")
			return OR_STUFF_LACK
		end		

		-- PrintStr("matList ="..matInfo.matList)
		
		MatSN = matInfo.matList
		-- PrintStr("MatSN ="..MatSN)
		Count = Count + LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )
		-- PrintStr("Count ="..Count)

		-- TÕi ÕâÀï½øĞĞÅĞ¶Ï,ÒÔ¼õÉÙÑ­»·´ÎÊı(ÌØ±ğĞúngµ±²ÄÁÏ³äÔ£Ê±)
		if Count >= matInfo.count then
			bMatEnoughFlag = 1			
		end

		-- PrintStr("bMatEnoughFlag ="..bMatEnoughFlag)

		if bMatEnoughFlag == 1 then
			break
		end
	end

	if bMatEnoughFlag == 1 then
		return OR_OK
	end

	return OR_STUFF_LACK
end

----------------------------------------------------------------------------------------
--	²ú³ö²úÆ·
----------------------------------------------------------------------------------------
function x335134_AbilityProduce( sceneId, selfId, recipeId )
	-- PrintStr("AbilityProduce...")
	local CompoundInfo = x335134_g_CompoundInfo[recipeId]
	if not CompoundInfo then
		return OR_ERROR
	end

	-- ÏûºÄ²ÄÁÏ
	local i, matInfo, tblCount, bMatEnoughFlag, idx, MatSN, Count, DelCount

	tblCount = getn( CompoundInfo.matTbl )
	bMatEnoughFlag = 0
	DelCount = 0

	for i = 1, tblCount do
		Count = 0
		matInfo = CompoundInfo.matTbl[i]
		if not matInfo then
			print( "Exception: An unexpected value of the variable [i] in function [x335134_AbilityCheck], the value is ", i )
			return OR_STUFF_LACK
		end

		if not matInfo.matList then
			print( "Exception: An unexpected value of the variable [matInfo] in function [x335134_AbilityCheck], the value is ", matInfo )
			return OR_STUFF_LACK
		end

		MatSN = matInfo.matList
		-- PrintStr("MatSN ="..MatSN)
		Count = Count + LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )

		-- TÕi ÕâÀï½øĞĞÅĞ¶Ï,ÒÔ¼õÉÙÑ­»·´ÎÊı(ÌØ±ğĞúngµ±²ÄÁÏ³äÔ£Ê±)
		if Count >= matInfo.count then
			bMatEnoughFlag = 1			
		end

		-- PrintStr("bMatEnoughFlag ="..bMatEnoughFlag)

		if bMatEnoughFlag == 1 then
			Count = matInfo.count

			MatSN = matInfo.matList
			-- PrintStr("MatSN ="..MatSN)
			DelCount = LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )
			-- PrintStr("DelCount ="..DelCount)
			if DelCount > 0 then
				if DelCount > Count then
					DelCount = Count
				end

				LuaFnDelAvailableItem( sceneId, selfId, MatSN, DelCount )
				Count = Count - DelCount
				-- PrintStr("Count ="..Count)

				-- TÕi ÕâÀï½øĞĞÅĞ¶Ï,ÒÔ¼õÉÙÑ­»·´ÎÊı(ÌØ±ğĞúngµ±²ÄÁÏ³äÔ£Ê±)
				if Count < 1 then
					bMatEnoughFlag = 2					
				end
			end
		end

		-- PrintStr("bMatEnoughFlag ="..bMatEnoughFlag)

		if bMatEnoughFlag == 1 then
			return OR_ERROR
		elseif bMatEnoughFlag == 2 then
			break
		end
	end
	
	if bMatEnoughFlag ~= 2 then
		return OR_STUFF_LACK
	end

	local bagidx = LuaFnTryRecieveItem( sceneId, selfId, matInfo.Product, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË							

	if bagidx < 0 then
		LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 0)
		return OR_ERROR
	end

	-- PrintStr("Product ="..matInfo.Product)
	-- PrintStr("abilityId ="..CompoundInfo.abilityId)

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335134_g_ImpactID, 0 )

	-- ¼ÇÂ¼Í³¼ÆĞÅÏ¢				-- ñÒÉÙÎ¢,102ÉñÆ÷. ÕâĞĞ´úÂëĞúng¼ÇÂ¼ÉñÆ÷ÈÕÖ¾.
	LuaFnAuditShenQi(sceneId, selfId, matInfo.Product)
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagidx )

	local playername = GetName(sceneId, selfId)
	
	-- ·¢ËÍH® th¯ng¹«¸æ				-- ñÒÉÙÎ¢,102ÉñÆ÷.Èç¹ûĞúng102c¤pÉñÆ÷,¹«¸æ·¢Éú

	local shenJie = matInfo.matList
	local strText
	if shenJie == 30505906 then
		strText = format("#{DQSJ_20080512_09}#{_INFOMSG%s}#{DQSJ_20080512_10}#{_INFOUSR%s}#{DQSJ_20080512_11}", itemInfo, playername )	
	else
		strText = format("#{XYSB_92812}#{_INFOUSR%s}#P#{XYSB_92813}#{_INFOMSG%s}.", playername, itemInfo)	
	end	

	BroadMsgByChatPipe(sceneId,selfId, strText, 4)				 											

	-- ·¢ËÍH® th¯ng¹«¸æ				-- ñÒÉÙÎ¢,102ÉñÆ÷.Èç¹ûĞúng102c¤pÉñÆ÷,¹«¸æ·¢Éú end

	LuaFnSendAbilitySuccessMsg( sceneId, selfId, CompoundInfo.abilityId, recipeId, matInfo.Product )
	LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 1)
	return OR_OK
end

function x335134_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
