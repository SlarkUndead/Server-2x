--Æ®Ãì·å Cáp ĞÕi BáAI

--A ¡¾ÄÄÀï×ß¡¿¸ø×Ô¼ºÓÃmµt cái¿Õ¼¼ÄÜ....ËùÓĞ·ÇThiªu LâmÍæ¼Ò¼Ó¶¨Éíbuff....
--B ¡¾ĞüÊàÖ®Í´¡¿¸ø×Ô¼º¼Ó²»ÄÜÒÆ¶¯Ë«±¶¹¥»÷buff....
--C ¡¾Æøº£Ö®Í´¡¿¸ø×Ô¼º¼ÓÊÜµ½ÉËº¦¼Ó±¶buff....
--D ¡¾Ë¿Öñ¿ÕÖ®Í´¡¿¸ø×Ô¼º¼Ó±»Íæ¼ÒÌôĞÆtoÕ ğµ buff....
--E ¡¾·è¿ñ¡¿¸ø×Ô¼º¼Ómµt »÷ÖÂÃübuff....

--È«³Ì¶¼´øÓĞÃâÒßÖÆ¶¨¼¼ÄÜtoÕ ğµ buff....
--20 giâyºó¿ªÊ¼Ê¹ÓÃA¼¼ÄÜ....ÀäÈ´20 giây....
--25 giâyºó¿ªÊ¼Ñ­»·ÊÍ·ÅBCD¼¼ÄÜ....ÀäÈ´·Ö±ğĞúng20..20..30....
--5 phútºó½øÈë¿ñ±©Ä£Ê½....Í£Ö¹Ê¹ÓÃABCD....Çå³ıABCDtoÕ ğµ buff....Ê¹ÓÃE¼¼ÄÜ....

--½Å±¾ºÅ
x402264_g_ScriptId	= 402264

--¸±±¾Âß¼­½Å±¾ºÅ....
x402264_g_FuBenScriptId = 402263

--buff....
x402264_Buff_MianYi1	= 10472	--ÃâÒßmµt Ğ©¸ºÃæĞ§¹û....
x402264_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒşÉí....
x402264_Skill_A			=	1024
x402264_Buff_A			= 10230
x402264_Skill_B			=	1025
x402264_Buff_B			= 10231
x402264_Skill_C			=	1026
x402264_Buff_C			= 10232
x402264_Skill_D			=	1027
x402264_Buff_D			= 10233
x402264_Buff_E1			= 10234
x402264_Buff_E2			= 10235

--¼¼ÄÜÊÍ·ÅÊ±¼ä±í....
x402264_UseSkillList =
{
	{ 20,  "A" },
	{ 25,  "B" },
	{ 40,  "A" },
	{ 45,  "C" },
	{ 60,  "A" },
	{ 65,  "D" },
	{ 80,  "A" },
	{ 95,  "B" },
	{ 100, "A" },
	{ 115, "C" },
	{ 120, "A" },
	{ 135, "D" },
	{ 140, "A" },
	{ 160, "A" },
	{ 165, "B" },
	{ 180, "A" },
	{ 185, "C" },
	{ 200, "A" },
	{ 205, "D" },
	{ 220, "A" },
	{ 235, "B" },
	{ 240, "A" },
	{ 255, "C" },
	{ 260, "A" },
	{ 275, "D" },
	{ 280, "A" },
	{ 300, "E" }
}


--AI Index....
x402264_IDX_CombatTime		= 1	--½øÈëCuµc chiªn toÕ ğµ ¼ÆÊ±Æ÷....ÓÃÓÚ¼ÇÂ¼ÒÑ¾­½øÈëCuµc chiªn ¶à³¤Ê±¼äÁË....
x402264_IDX_UseSkillIndex	= 2	--½ÓÏÂÀ´¸ÃÊ¹ÓÃ¼¼ÄÜ±íÖĞtoÕ ğµ µÚ¼¸cái¼¼ÄÜ....

x402264_IDX_CombatFlag 			= 1	--Ğúng·ñ´¦ÓÚCuµc chiªn ×´Ì¬toÕ ğµ ±êÖ¾....
x402264_IDX_IsKuangBaoMode	= 2	--Ğúng·ñ´¦ÓÚ¿ñ±©Ä£Ê½toÕ ğµ ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402264_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402264_ResetMyAI( sceneId, selfId )
end


--**********************************
--ĞÄÌø....
--**********************************
function x402264_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âĞúng²»ĞúngËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âĞúng·ñ²»TÕi Cuµc chiªn ×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402264_IDX_CombatFlag ) then
		return
	end

	--¿ñ±©×´Ì¬²»C¥n ×ßÂß¼­....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402264_IDX_IsKuangBaoMode ) then
		return
	end

	--==================================
	--¸ù¾İ½ÚÄ¿µ¥ÊÍ·Å¼¼ÄÜ....
	--==================================

	-- ğÕt ğßşcCuµc chiªn Ê±¼äºÍÒÑ¾­Ö´ĞĞµ½¼¼ÄÜ±íÖĞtoÕ ğµ µÚ¼¸Ïî....
	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402264_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402264_IDX_UseSkillIndex )
	--ÀÛ¼Ó½øÈëCuµc chiªn toÕ ğµ Ê±¼ä....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402264_IDX_CombatTime, CombatTime + nTick )

	--Èç¹ûÒÑ¾­Ö´ĞĞÍêÕûÕÅ¼¼ÄÜ±íÔò²»Ê¹ÓÃ¼¼ÄÜ....
	if NextSkillIndex < 1 or NextSkillIndex > getn( x402264_UseSkillList ) then
		return
	end

	--Èç¹ûÒÑ¾­µ½ÁËÓÃCái này ¼¼ÄÜtoÕ ğµ Ê±¼äÔòÊ¹ÓÃ¼¼ÄÜ....
	local SkillData = x402264_UseSkillList[NextSkillIndex]
	if ( CombatTime + nTick ) >= SkillData[1]*1000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402264_IDX_UseSkillIndex, NextSkillIndex+1 )
		x402264_UseMySkill( sceneId, selfId, SkillData[2] )
	end


end


--**********************************
--½øÈëCuµc chiªn ....
--**********************************
function x402264_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402264_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402264_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402264_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëCuµc chiªn ×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402264_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªCuµc chiªn ....
--**********************************
function x402264_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402264_ResetMyAI( sceneId, selfId )

	--É¾³ı×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

	--´´½¨¶Ô»°NPC....
	local MstId = CallScriptFunction( x402264_g_FuBenScriptId, "CreateBOSS", sceneId, "HaDaBa_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )

end


--**********************************
--É±ËÀµĞÈË....
--**********************************
function x402264_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402264_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x402264_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­Khiêu chiªn¹ıCáp ĞÕi Bá....
	CallScriptFunction( x402264_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "HaDaBa", 2 )

	--Èç¹û»¹Ã»ÓĞKhiêu chiªn¹ıTang Th± CôngÔò¿ÉÒÔKhiêu chiªnTang Th± Công....
	if 2 ~= CallScriptFunction( x402264_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "SangTuGong" ) then
		CallScriptFunction( x402264_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "SangTuGong", 1 )
	end
		
	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïtoÕ ğµ Ğúng³èÎïÔmµt ñÈ¡ÆäÖ÷ÈËtoÕ ğµ Tên....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔmµt ñÈ¡¶Ó³¤toÕ ğµ Tên....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("#{_INFOUSR%s}#{PMF_8812_01}", playerName); --Cáp ĞÕi Bá
		AddGlobalCountNews( sceneId, str )
	end

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402264_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊı....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402264_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402264_IDX_UseSkillIndex, 1 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402264_IDX_IsKuangBaoMode, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402264_IDX_CombatFlag, 0 )

	--Çå³ıbuff....
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_B )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_C )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_D )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_E1 )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_E2 )

end


--**********************************
--BOSSÊ¹ÓÃ¼¼ÄÜ....
--**********************************
function x402264_UseMySkill( sceneId, selfId, skill )

	if skill == "A" then

		x402264_SkillA_NaLiZou( sceneId, selfId )

	elseif skill == "B" then

		MonsterTalk(sceneId, -1, "", "#{PMF_20080530_06}" )
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x402264_Skill_B, selfId, x, z, 0, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402264_Buff_B, 2000 )

	elseif skill == "C" then

		MonsterTalk(sceneId, -1, "", "#{PMF_20080530_07}" )
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x402264_Skill_C, selfId, x, z, 0, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402264_Buff_C, 0 )

	elseif skill == "D" then

		local enemyId = GetMonsterCurEnemy( sceneId, selfId )
		if enemyId > 0 then
			if GetCharacterType( sceneId, enemyId ) == 3 then
				enemyId = GetPetCreator( sceneId, enemyId )
			end
			MonsterTalk(sceneId, -1, "", "#{PMF_20080530_08}" )
			local x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x402264_Skill_D, selfId, x, z, 0, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, enemyId, selfId, x402264_Buff_D, 0 )
		end

	elseif skill == "E" then

		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402264_IDX_IsKuangBaoMode, 1 )
		x402264_SkillE_KuangBao( sceneId, selfId )

	end

end


--**********************************
--ÄÄÀï×ß¼¼ÄÜ....¶Ô·ÇThiªu LâmÍæ¼Ò¼Óbuff....
--**********************************
function x402264_SkillA_NaLiZou( sceneId, selfId )

	MonsterTalk(sceneId, -1, "", "#{PMF_20080530_09}" )

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do

		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			if GetMenPai(sceneId,nHumanId) ~= MP_SHAOLIN then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, nHumanId, x402264_Buff_A, 0 )
				local x,z = GetWorldPos( sceneId, selfId )
				LuaFnUnitUseSkill( sceneId, selfId, x402264_Skill_A, selfId, x, z, 0, 0 )
			end
		end

	end

end


--**********************************
--¿ñ±©¼¼ÄÜ....
--**********************************
function x402264_SkillE_KuangBao( sceneId, selfId )

	--HuÖ böBCDtoÕ ğµ buff....
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_B )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_C )
	LuaFnCancelSpecificImpact( sceneId, selfId, x402264_Buff_D )

	--¼Ó¿ñ±©buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402264_Buff_E1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402264_Buff_E2, 0 )

end
