--ÏÊ»¨toÕ ðµ ÖÖ×Ó
--ÈçÒâÐ¡×ÓÁÙÊ±ÖÆ×÷
--½Å±¾ºÅ
x000174_g_scriptId = 000174

x000174_g_ItemId = 30309813

x000174_g_PlantingFlowersScriptId = 000175

x000174_g_minValue = 6000
x000174_g_maxValue = 9000

x000174_g_SceneMapDefine = {	
										{sceneId=18,	sceneName="NhÕn Nam",	CorpseMonsterId=3512},
										{sceneId=19,	sceneName="NhÕn B¡c",	CorpseMonsterId=3513},
										{sceneId=20,	sceneName="Thäo Nguyên",	CorpseMonsterId=3515},
										{sceneId=21,	sceneName="Liêu Tây",	CorpseMonsterId=3516},
										{sceneId=22,	sceneName="Trß¶ng BÕch S½n",	CorpseMonsterId=3518},
										{sceneId=23,	sceneName="Hoàng Long Phü",	CorpseMonsterId=3519},
										{sceneId=24,	sceneName="Nhî Häi",	CorpseMonsterId=3511},
										{sceneId=25,	sceneName="Thß½ng S½n",	CorpseMonsterId=3513},
										{sceneId=26,	sceneName="ThÕch Lâm",	CorpseMonsterId=3514},
										{sceneId=27,	sceneName="Ng÷c Khê",	CorpseMonsterId=3516},
										{sceneId=28,	sceneName="Nam Chiêu",	CorpseMonsterId=3517},
										{sceneId=29,	sceneName="Miêu Cß½ng",	CorpseMonsterId=3518},
										{sceneId=30,	sceneName="Tây H°",	CorpseMonsterId=3511},
										{sceneId=31,	sceneName="Long Tuy«n",	CorpseMonsterId=3512},
										{sceneId=32,	sceneName="Võ Di",	CorpseMonsterId=3514},
										{sceneId=33,	sceneName="Mai Lînh",	CorpseMonsterId=3515},
										{sceneId=34,	sceneName="Nam Häi",	CorpseMonsterId=3517},
										{sceneId=35,	sceneName="QuÏnh Châu",	CorpseMonsterId=3518},
									}
								 
x000174_g_GhoulMonsterTable = {
												{level=11, id=42130},{level=21, id=42131},
												{level=31, id=42132},{level=41, id=42133},
												{level=51, id=42134},{level=61, id=42135},
												{level=71, id=42136},{level=81, id=42137},
												{level=91, id=42138},{level=101, id=42139},
												{level=111, id=42140},{level=121, id=42141},
												{level=131, id=42142},{level=141, id=42143},
												{level=151, id=42144},{level=161, id=42145},
												{level=171, id=42146},{level=181, id=42147},
												{level=191, id=42148},{level=201, id=42149},
											}									 
									 
--**********************************
-- ði¬mµ½itemtoÕ ðµ ²ÎÊýÐÅÏ¢
--**********************************
function x000174_GetItemParam(sceneId, selfId, BagPos)							
	--local BagPos = GetBagPosByItemSn(sceneId, selfId, x000174_g_ItemId)
	--PrintNum(BagPos)
	local targetsceneId = GetBagItemParam(sceneId, selfId, BagPos, 1, 1)
	--PrintNum(targetsceneId)
	local targetX = GetBagItemParam(sceneId, selfId, BagPos, 3, 1)
	--PrintNum(targetX)
  local targetZ = GetBagItemParam(sceneId, selfId, BagPos, 5, 1)
  --PrintNum(targetZ)
  local r = GetBagItemParam(sceneId, selfId, BagPos, 7, 1)
  return targetsceneId, targetX, targetZ, r
end

--**********************************
--ÖÖÖ²³É¹¦ --OK
--**********************************
function x000174_DiscoverGhoulMonster(sceneId, selfId)
	local humanLevel = LuaFnGetLevel(sceneId, selfId)
	local dataId = x000174_g_GhoulMonsterTable[1].id
	local ct = getn(x000174_g_GhoulMonsterTable)
	for i=1, ct do
		if humanLevel >= x000174_g_GhoulMonsterTable[i].level then
			dataId = x000174_g_GhoulMonsterTable[i].id
		end
	end

	local aifile = random(10)
	local x, z = GetWorldPos(sceneId, selfId)
	local MonsterId = LuaFnCreateMonster(sceneId, dataId, x, z-2, 0, aifile, -1)
	SetLevel(sceneId, MonsterId, humanLevel+(random(2)-random(2)) )
	SetCharacterDieTime(sceneId, MonsterId, 60*60000)

	local strTitle, strName = CallScriptFunction(x000174_g_PlantingFlowersScriptId, "CreateTitleAndName_ForCangBaoTu", sceneId, selfId)
	SetCharacterTitle(sceneId, MonsterId, strTitle)
	SetCharacterName(sceneId, MonsterId, strName)			
		
	BeginEvent(sceneId)		
		AddText(sceneId, "Hoa tß½i m¥m non gieo tr°ng thành công");

	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
       local _, sceneName = CallScriptFunction(x000174_g_PlantingFlowersScriptId, "GetScenePosInfo", sceneId,sceneId)
		
	local playerName = GetName(sceneId,selfId)
	local strText = format("#cFF0000Hoa tiên tØ tinh linh #Wc¥m trong tay #c00ffff[Ba Tß Mân Côi]#W, ðang · #G%s#W ð¡c ý dào dÕt thß·ng thÑc, không ng¶ b¸ #cff6633#{_INFOUSR%s}#W theo trong mµng ð©p b×ng tïnh!", 
				sceneName,playerName )

	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
	
end

--**********************************
--¸ù¾Ý³¡¾°Id ði¬m³ö¶ÔÓ¦toÕ ðµ ID
--**********************************
function x000174_GetDataIDbySceneID(sceneId)
		for i, SceneMapInfo in x000174_g_SceneMapDefine do
			if SceneMapInfo.sceneId == sceneId then
				return SceneMapInfo.CorpseMonsterId
			end
		end
		return x000174_g_DefaultCorpseDataId
end

--**********************************
--Ä¬ÈÏÊÂ¼þ
--**********************************
function x000174_OnDefaultEvent( sceneId, selfId, BagPos)
	
	-- /////////////////////////////////////////////////////////////////
	-- ÏÈÈ¡³öÎïÆ·ÖÐÊý¾Ý,Èç¹ûÐúngÄ¬ÈÏÖµ0ÔòË ði¬m÷ÐúngµÚmµt ´ÎÊ¹ÓÃ,Á¢¼´Éú³ÉÊý¾Ý
	-- Èç¹ûÒÑ¾­ÓÐÊý¾ÝÔòÊ²Ã´¶¼²»×ö
	local targetSceneId, targetX, targetZ, r = x000174_GetItemParam(sceneId, selfId, BagPos)
	if targetSceneId==nil or targetSceneId<=0
		or targetX==nil or targetX<=0
		or targetZ==nil or targetZ<=0
		or r==nil or r<=0 then
		--PrintStr("the first time .... nil nil nil")
		--Á¢¼´Éú³ÉÊý¾Ý
		CallScriptFunction(x000174_g_PlantingFlowersScriptId, "ProduceItemParamData", sceneId, selfId, BagPos)
		--ÖØÐÂ»ñÈ¡ÎïÆ·Êý¾Ý
		targetSceneId, targetX, targetZ, r = x000174_GetItemParam(sceneId, selfId, BagPos)
	end
	-- ÓÐÐ©BT ÎÒÃÇÔÙ×ömµt ´Î¼ì²â
	if targetSceneId==nil or targetSceneId<=0
		or targetX==nil or targetX<=0
		or targetZ==nil or targetZ<=0
		or r==nil or r<=0 then
		--PrintStr("the second time .... nil nil nil")
		--Á¢¼´Éú³ÉÊý¾Ý
		CallScriptFunction(x000174_g_PlantingFlowersScriptId, "ProduceItemParamData", sceneId, selfId, BagPos)
		--ÖØÐÂ»ñÈ¡ÎïÆ·Êý¾Ý
		targetSceneId, targetX, targetZ, r = x000174_GetItemParam(sceneId, selfId, BagPos)
	end
	--Èç¹û²»TÕi Ö¸¶¨toÕ ðµ ³¡¾°, Ö¸¶¨toÕ ðµ ×ø±ê¾Íµ¯³ö¶Ô»°¿òÌáÊ¾Íæ¼ÒÈ¥ÄÄ¶ùÄÄ¶ùÄÄ¶ù
	local sceneName = CallScriptFunction(x000174_g_PlantingFlowersScriptId, "GetSceneName", sceneId, selfId, targetSceneId)
	-- /////////////////////////////////////////////////////////////////
	
	--local sceneName = GetSceneName(targetSceneId)
	--PrintStr(sceneName)
	local strText = format("Ngß½i c¥n phäi ðem hÕt gi¯ng t¾i #R%s#c66ccff[%d,%d]", sceneName, targetX, targetZ)
	
	--È¡ ði¬mÍæ¼Òµ±Ç°×ø±ê
	local PlayerX = GetHumanWorldX(sceneId, selfId)
	local PlayerZ = GetHumanWorldZ(sceneId, selfId)
	--¼ÆËãÍæ¼ÒÓëÄ¿±ê ði¬mtoÕ ðµ ¾àÀë
	local Distance = floor(sqrt((targetX-PlayerX)*(targetX-PlayerX)+(targetZ-PlayerZ)*(targetZ-PlayerZ)))
	--print(PlayerX,PlayerZ)

	if targetSceneId ~= sceneId or Distance > r then
		--print(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId, strText);
			AddText(sceneId, "#GHoa tßþng trong: #cffcc88hÕt gi¯ng hoa tß½i là r¤t sinh lñc th¥n kÏ, c¥n hi¬u yêu quý nhân tài có th¬ chân chính lînh hµi, làm ngß½i ðÕt ðßþc kªt quä t¯t ð©p #c66ccff[Ba Tß Mân Côi]#cffcc88 v« sau, ngß½i phäi nghî nhß v§y.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)

		--test code begin
		--EraseItem( sceneId, selfId, BagPos )
		--test cod end
		return
	end	
	
	--É¾³ý¸ÃÎïÆ·
	if LuaFnIsItemAvailable(sceneId, selfId, BagPos) <= 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "V§t ph¦m hi®n tÕi không th¬ sØ døng ho£c ðã b¸ khoá.")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)	
		return	
	end	
	
	--PrintStr("begin random...")
	--Èç¹ûTÕi Ê¹ÓÃ·¶Î§, ÔòËæ»ú´¥·¢ÒÔÏÂÊÂ¼þ,ÎÞÂÛ¼¸ÂÊ¶àÉÙ¶¼ÐúngÖÖÖ²³É¹¦toÕ ðµ 
	local ret = random(100)
	if ret < 30 then --ÖÖÖ²³É¹¦
		x000174_DiscoverGhoulMonster(sceneId, selfId)
	elseif ret < 40 then --ÖÖÖ²³É¹¦
		x000174_DiscoverGhoulMonster(sceneId, selfId)
	elseif ret < 80 then --ÖÖÖ²³É¹¦
		x000174_DiscoverGhoulMonster(sceneId, selfId)
		if retval == 0 then
		  --¼ÇÂ¼Í³¼ÆÐÅÏ¢
	    LuaFnAuditWaBao(sceneId, selfId)
			return
		end
	elseif ret < 85 then --ÖÖÖ²³É¹¦
		x000174_DiscoverGhoulMonster(sceneId, selfId)
	elseif ret < 95 then --ÖÖÖ²³É¹¦
		x000174_DiscoverGhoulMonster(sceneId, selfId)
	else --ÖÖÖ²³É¹¦
		x000174_DiscoverGhoulMonster(sceneId, selfId)
	end
	
  EraseItem( sceneId, selfId, BagPos )
	
	--¼ÇÂ¼Í³¼ÆÐÅÏ¢
	LuaFnAuditWaBao(sceneId, selfId)
		
end

function x000174_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
