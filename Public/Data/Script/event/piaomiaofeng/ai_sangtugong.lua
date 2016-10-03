--Æ®Ãì·å Tang Th± CôngAI

--A ¡¾ÍÁ¶Ý¡¿BOSStoÕ ðµ HPÃ¿ËðÊ§20%Ômµt áÏûÊ§20 giây....Í¬Ê±´´½¨Ð¡¹ÖÒÀ´ÎÎª1122Ö»..ËÀÍöorÍÑÀëCuµc chiªn ÏûÊ§....
--B ¡¾Å£Ã«¶¾Õë¡¿·ÇÍÁ¶Ý×´Ì¬Ê±Ã¿¸ô20mµt ´Î´ó·¶Î§¹¥»÷....ÍÁ¶Ý×´Ì¬ÏÂCDÕý³£×ßÖ»Ðúng²»Ê¹ÓÃ....ÍÁ¶Ý½áÊøÊ±ÇåCD....
--C ¡¾³öÍÁÎÄÎï¡¿½øÈëÍÁ¶ÝÊ±Ëæ»ú ðÕt ðßþc2cáibuff....Í¬Ê±Çå³ýÉÏ´ÎtoÕ ðµ 2cáibuff....
--D ¡¾·è¿ñ¡¿Cuµc chiªn 5 phútºó¸ø×Ô¼ººÍËùÓÐ½©Ê¬¼Ómµt »÷ÖÂÃübuff....²»ÔÙÊ¹ÓÃAB(C)....

--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜtoÕ ðµ buff....
--ÍÑÀëCuµc chiªn »òËÀÍöÊ±É¾³ý½©Ê¬....


--½Å±¾ºÅ
x402265_g_ScriptId	= 402265

--¸±±¾Âß¼­½Å±¾ºÅ....
x402265_g_FuBenScriptId = 402263


--ÃâÒßÌØ¶¨¼¼ÄÜbuff....
x402265_Buff_MianYi1	= 10472	--ÃâÒßmµt Ð©¸ºÃæÐ§¹û....
x402265_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--AÍÁ¶Ý....
x402265_SkillA_TuDun				= 1028
x402265_SkillA_ChildName		= "Bích lân cß½ng thi"
x402265_SkillA_ChildBuff		= 10246
x402265_SkillA_ChildTime		= 5000		--ÍÁ¶Ý¶à³¤Ê±¼äºó¿ªÊ¼Ë¢Ð¡¹Ö....
x402265_SkillA_Time					= 20000		--ÍÁ¶Ý³ÖÐøtoÕ ðµ Ê±¼ä....


--BÅ£Ã«¶¾Õë....
x402265_SkillB_NiuMaoDuZhen = 1029
--ÀäÈ´Ê±¼ä....
x402265_SkillB_CD						= 20000


--C³öÍÁÎÄÎï¼¼ÄÜtoÕ ðµ buffÁÐ±í....
x402265_SkillC_ChutuBuff1 = { 10237, 10238 }
x402265_SkillC_ChutuBuff2 = { 10239, 10240, 10241, 10242 }


--D·è¿ñ....
x402265_SkillD_Buff1	= 10234
x402265_SkillD_Buff2	= 10235
--¿ªÊ¼½øÈë¿ñ±©×´Ì¬toÕ ðµ Ê±¼ä....
x402265_EnterKuangBaoTime	= 5*60*1000


--AI Index....
x402265_IDX_HPStep							= 1	--ÑªÁ¿c¤p±ð....
x402265_IDX_SkillB_CD						= 2	--B¼¼ÄÜtoÕ ðµ CDÊ±¼ä....
x402265_IDX_KuangBaoTimer				= 3	--¿ñ±©toÕ ðµ ¼ÆÊ±Æ÷....
x402265_IDX_TuDunTimer					= 4	--ÍÁ¶ÝtoÕ ðµ ¼ÆÊ±Æ÷....ÓÃÓÚ¼ÆËãºÎÊ±ÍÁ¶Ý½áÊø....
x402265_IDX_NeedCreateChildNum	= 5	--C¥n ´´½¨toÕ ðµ Ð¡¹ÖtoÕ ðµ ÊýÁ¿....

x402265_IDX_CombatFlag 			= 1	--Ðúng·ñ´¦ÓÚCuµc chiªn ×´Ì¬toÕ ðµ ±êÖ¾....
x402265_IDX_IsTudunMode			= 2	--Ðúng·ñ´¦ÓÚÍÁ¶ÝÄ£Ê½toÕ ðµ ±êÖ¾....
x402265_IDX_IsKuangBaoMode	= 3	--Ðúng·ñ´¦ÓÚ¿ñ±©Ä£Ê½toÕ ðµ ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402265_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402265_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x402265_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÐúng²»ÐúngËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÐúng·ñ²»TÕi Cuµc chiªn ×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402265_IDX_CombatFlag ) then
		return
	end

	--¿ñ±©×´Ì¬²»C¥n ×ßÂß¼­....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsKuangBaoMode ) then
		return
	end

	--Ö´ÐÐ¿ñ±©Âß¼­....
	if 1 == x402265_DoSkillD_KuangBao( sceneId, selfId, nTick ) then
		return
	end

	--Ö´ÐÐÍÁ¶ÝÂß¼­....
	if 1 == x402265_SkillLogicA_TunDun( sceneId, selfId, nTick ) then
		return
	end

	--Ö´ÐÐÅ£Ã«¶¾ÕëÂß¼­....
	if 1 == x402265_SkillLogicB_NiuMaoDuZhen( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëCuµc chiªn ....
--**********************************
function x402265_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402265_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëCuµc chiªn ×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªCuµc chiªn ....
--**********************************
function x402265_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402265_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

	--´´½¨¶Ô»°NPC....
	local MstId = CallScriptFunction( x402265_g_FuBenScriptId, "CreateBOSS", sceneId, "SangTuGong_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x402265_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402265_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x402265_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­Khiêu chiªn¹ýTang Th± Công....
	CallScriptFunction( x402265_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "SangTuGong", 2 )

	--Èç¹û»¹Ã»ÓÐKhiêu chiªn¹ýÔ Lão ÐÕiÔò¿ÉÒÔKhiêu chiªnÔ Lão ÐÕi....
	if 2 ~= CallScriptFunction( x402265_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "WuLaoDa" )	then
		CallScriptFunction( x402265_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "WuLaoDa", 1 )
	end
	
	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïtoÕ ðµ Ðúng³èÎïÔmµt ñÈ¡ÆäÖ÷ÈËtoÕ ðµ Tên....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔmµt ñÈ¡¶Ó³¤toÕ ðµ Tên....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("#{_INFOUSR%s}#{PMF_8812_02}", playerName); --Tang Th± Công
		AddGlobalCountNews( sceneId, str )
	end
	
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402265_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_SkillB_CD, x402265_SkillB_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_KuangBaoTimer, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_TuDunTimer, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_NeedCreateChildNum, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsTudunMode, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsKuangBaoMode, 0 )

	--Çå³ýbuff....
	for i, buffId in x402265_SkillC_ChutuBuff1 do
		LuaFnCancelSpecificImpact( sceneId, selfId, buffId )
	end

	for i, buffId in x402265_SkillC_ChutuBuff2 do
		LuaFnCancelSpecificImpact( sceneId, selfId, buffId )
	end

	LuaFnCancelSpecificImpact( sceneId, selfId, x402265_SkillD_Buff1 )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402265_SkillD_Buff2 )

	--Çå³ýÐ¡¹Ö....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, MonsterId) == x402265_SkillA_ChildName then
			LuaFnDeleteMonster(sceneId, MonsterId)
		end
	end

end


--**********************************
--¿ñ±©¼¼ÄÜ....
--**********************************
function x402265_DoSkillD_KuangBao( sceneId, selfId )

	--¼Ó¿ñ±©buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_SkillD_Buff1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_SkillD_Buff2, 0 )

	--¸øËùÓÐÐ¡¹Ö¼Ó¿ñ±©....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, MonsterId) == x402265_SkillA_ChildName then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x402265_SkillD_Buff1, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x402265_SkillD_Buff2, 0 )
		end
	end

end


--**********************************
--ÍÁ¶ÝÂß¼­....
--**********************************
function x402265_SkillLogicA_TunDun( sceneId, selfId, nTick )


	--ÍÁ¶ÝÄ£Ê½Ôò¸üÐÂÍÁ¶ÝtoÕ ðµ ¼ÆÊ±Æ÷....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsTudunMode ) then

		local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402265_IDX_TuDunTimer )
		if cd > nTick then

			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_TuDunTimer, cd-nTick )
			--Èç¹ûµ½ÁËË¢Ð¡¹ÖtoÕ ðµ Ê±¼ä²¢ÇÒ±¾´ÎÍÁ¶Ý»¹Ã»Ë¢¹ýÐ¡¹Ö....
			if cd < (x402265_SkillA_Time-x402265_SkillA_ChildTime) then
				local needCreateNum = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402265_IDX_NeedCreateChildNum )
				if needCreateNum > 0 then
					--´´½¨Ð¡¹Ö....
					MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_NeedCreateChildNum, 0 )
					local x,z = GetWorldPos( sceneId, selfId )
					for i=1, needCreateNum do
						local MstId = CallScriptFunction( x402265_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x402265_SkillA_ChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x402265_SkillA_ChildName )
					end
				end
			end

		else

			--ÍÁ¶Ý½áÊø....ÉèÖÃÀë¿ªÍÁ¶Ý×´Ì¬....
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_TuDunTimer, 0 )
			MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsTudunMode, 0 )
			--ÖØÖÃÅ£Ã«¶¾ÕëCD....
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_SkillB_CD, x402265_SkillB_CD )

		end


	--·ÇÍÁ¶ÝÄ£Ê½Ôò¼ì²âÐúng·ñ¿ÉÒÔ½øÈëÍÁ¶ÝÄ£Ê½....
	else


		--Ã¿¼õÉÙ20%ÑªÊ±½øÈëÍÁ¶ÝÄ£Ê½....
		local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
		local LastStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402265_IDX_HPStep )
		local CurStep = -1
		if CurPercent <= 0.2 then
			CurStep = 4
		elseif CurPercent <= 0.4 then
		 	CurStep = 3
		elseif CurPercent <= 0.6 then
		 	CurStep = 2
		elseif CurPercent <= 0.8 then
			CurStep = 1
		end

		--½øÐÐÍÁ¶Ý....
		if CurStep > LastStep then
			--¸ø×Ô¼ºÉèÖÃÒþÉíand²»ÄÜ¹¥»÷....
			local x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x402265_SkillA_TuDun, selfId, x, z, 0, 1 )

			--Ëæ»ú ðÕt ðßþc2cáibuff(³öÍÁÎÄÎï)....
			local idx1 = random( getn(x402265_SkillC_ChutuBuff1) )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_SkillC_ChutuBuff1[idx1], 0 )
			local idx2 = random( getn(x402265_SkillC_ChutuBuff2) )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_SkillC_ChutuBuff2[idx2], 0 )

			local NeedCreateNum = 1
			if CurStep == 3 or CurStep == 4 then
				NeedCreateNum = 2
			end

			MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsTudunMode, 1 )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_NeedCreateChildNum, NeedCreateNum )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_HPStep, CurStep )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_TuDunTimer, x402265_SkillA_Time )
			return 1
		end


	end

	return 0

end


--**********************************
--Å£Ã«¶¾ÕëÂß¼­....
--**********************************
function x402265_SkillLogicB_NiuMaoDuZhen( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402265_IDX_SkillB_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_SkillB_CD, cd-nTick )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_SkillB_CD, x402265_SkillB_CD-(nTick-cd) )
		--·ÇÍÁ¶Ý×´Ì¬²Å¿ÉÒÔÓÃ....
		if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsTudunMode ) then
			local x,z = GetWorldPos( sceneId, selfId )
			MonsterTalk( sceneId, -1, "", "#{PMF_20080530_16}" )
			LuaFnUnitUseSkill( sceneId, selfId, x402265_SkillB_NiuMaoDuZhen, selfId, x, z, 0, 0 )
			return 1
		end
	end

	return 0

end


--**********************************
--¿ñ±©Âß¼­....
--**********************************
function x402265_DoSkillD_KuangBao( sceneId, selfId, nTick )

	--¼ì²âÐúng·ñµ½ÁË¿ñ±©toÕ ðµ Ê±ºò....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402265_IDX_KuangBaoTimer )
	if kbTime < x402265_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402265_IDX_KuangBaoTimer, kbTime+nTick )

	else

		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402265_IDX_IsKuangBaoMode, 1 )
		--¼Ó¿ñ±©buff....
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_SkillD_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402265_SkillD_Buff2, 0 )
		--¸øËùÓÐÐ¡¹Ö¼Ó¿ñ±©buff....
		local nMonsterNum = GetMonsterCount(sceneId)
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x402265_SkillA_ChildName then
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x402265_SkillD_Buff1, 0 )
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x402265_SkillD_Buff2, 0 )
			end
		end
		return 1

	end


	return 0

end
