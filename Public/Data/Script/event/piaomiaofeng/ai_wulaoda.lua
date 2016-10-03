--Æ®Ãì·å Ô Lão ÐÕiAI

--A	¡¾½ðµÆÍòÕµ¡¿¶¾ÊôÐÔÈº¹¥....
--B ¡¾Âé±Ô¶¾Ò©¡¿ÆÕÍ¨¼¼ÄÜ....È«¸±±¾Ëæ»úÌômµt cáiÈË¶ÔÆäÊÍ·Å¿Õ¼¼ÄÜ....ÔÙ¸øÆä¼Ócáibuff....
--C ¡¾ÂÌ²¨ÏãÂ¶¡¿¶Ô×Ô¼ºÊ¹ÓÃmµt cái¿Õ¼¼ÄÜ....Í¬Ê±TÕi µ±Ç°µÐÈË½ÅÏÂ·ÅcáiÏÝÚå....
--D ¡¾¶¾ÐÔ±ä»»¡¿Ã¿¸ô5 giây¸øÈ«¸±±¾ËùÓÐÈË¼Ómµt cáibuff....

--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜtoÕ ðµ buff....
--20 giâyºó¿ªÊ¼Ñ­»·ÊÍ·ÅABC¼¼ÄÜ....ÀäÈ´20 giây....
--Ã¿5 giâyÊ¹ÓÃmµt ´ÎD....
--BOSSËÀÍö»òÍÑÀëCuµc chiªn »á¸øËùÓÐÈËÇå³ýDtoÕ ðµ buff....


--½Å±¾ºÅ
x402266_g_ScriptId	= 402266

--¸±±¾Âß¼­½Å±¾ºÅ....
x402266_g_FuBenScriptId = 402263

--ÃâÒßBuff....
x402266_Buff_MianYi1	= 10472	--ÃâÒßmµt Ð©¸ºÃæÐ§¹û....
x402266_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--ABC¼¼ÄÜ....
x402266_SkillA			= 1030
x402266_SkillB			= 1032
x402266_BuffB				= 10244
x402266_SkillC			= 1031
x402266_SpeObjC			= 54
x402266_SkillABC_CD	=	20000

--D¼¼ÄÜ....
x402266_BuffD				= 10249
x402266_SkillD_CD		= 5000


--AI Index....
x402266_IDX_CD_SkillABC		= 1	--ABC¼¼ÄÜtoÕ ðµ CD....
x402266_IDX_CurSkillIndex	= 2	--½ÓÏÂÀ´¸ÃÊ¹ÓÃABCÖÐtoÕ ðµ ÄÄcái¼¼ÄÜ....
x402266_IDX_CD_SkillD			= 3	--D¼¼ÄÜtoÕ ðµ CD....

x402266_IDX_CombatFlag 		= 1	--Ðúng·ñ´¦ÓÚCuµc chiªn ×´Ì¬toÕ ðµ ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402266_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402266_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x402266_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÐúng²»ÐúngËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÐúng·ñ²»TÕi Cuµc chiªn ×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402266_IDX_CombatFlag ) then
		return
	end

	--ABC¼¼ÄÜÐÄÌø....
	if 1 == x402266_TickSkillABC( sceneId, selfId, nTick ) then
		return
	end

	--D¼¼ÄÜÐÄÌø....
	if 1 == x402266_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëCuµc chiªn ....
--**********************************
function x402266_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402266_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402266_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402266_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëCuµc chiªn ×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402266_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªCuµc chiªn ....
--**********************************
function x402266_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402266_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

	--´´½¨¶Ô»°NPC....
	local MstId = CallScriptFunction( x402266_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x402266_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402266_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x402266_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	SetCharacterDieTime( sceneId, selfId, 3000 )

	--M· ra Ô Lão ÐÕiËÀÍötoÕ ðµ ¼ÆÊ±Æ÷....
	local x,z = GetWorldPos( sceneId, selfId )
	CallScriptFunction( x402266_g_FuBenScriptId, "OpenWuLaoDaDieTimer", sceneId, 4, x402266_g_ScriptId, x, z )

	--ÉèÖÃÒÑ¾­Khiêu chiªn¹ýÔ Lão ÐÕi....
	CallScriptFunction( x402266_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "WuLaoDa", 2 )

	--Èç¹û»¹Ã»ÓÐKhiêu chiªn¹ýË«×ÓÔò¿ÉÒÔKhiêu chiªnË«×Ó....
	if 2 ~= CallScriptFunction( x402266_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" )	then
		CallScriptFunction( x402266_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "ShuangZi", 1 )
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
		str = format("#{_INFOUSR%s}#{PMF_8812_03}", playerName); --Ô Lão ÐÕi
		AddGlobalCountNews( sceneId, str )
	end
	
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402266_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillABC, x402266_SkillABC_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CurSkillIndex, 1 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillD, x402266_SkillD_CD )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402266_IDX_CombatFlag, 0 )

	--¸øËùÓÐÈËÇå³ýDtoÕ ðµ buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x402266_BuffD )
		end
	end

end


--**********************************
--ABC¼¼ÄÜÐÄÌø....
--**********************************
function x402266_TickSkillABC( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillABC )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillABC, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillABC, x402266_SkillABC_CD-(nTick-cd) )

		local CurSkill = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402266_IDX_CurSkillIndex )
		if CurSkill == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CurSkillIndex, 2 )
			return x402266_UseSkillA( sceneId, selfId )
		elseif CurSkill == 2 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CurSkillIndex, 3 )
			return x402266_UseSkillB( sceneId, selfId )
		elseif CurSkill == 3 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CurSkillIndex, 1 )
			return x402266_UseSkillC( sceneId, selfId )
		end

	end

end


--**********************************
--D¼¼ÄÜÐÄÌø....
--**********************************
function x402266_TickSkillD( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillD )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillD, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402266_IDX_CD_SkillD, x402266_SkillD_CD-(nTick-cd) )
		return x402266_UseSkillD( sceneId, selfId )

	end

end


--**********************************
--Ê¹ÓÃA¼¼ÄÜ....
--**********************************
function x402266_UseSkillA( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402266_SkillA, selfId, x, z, 0, 1 )
	return 1

end


--**********************************
--Ê¹ÓÃB¼¼ÄÜ....
--**********************************
function x402266_UseSkillB( sceneId, selfId )

	--¸±±¾ÖÐÓÐÐ§toÕ ðµ Íæ¼ÒtoÕ ðµ ÁÐ±í....
	local PlayerList = {}

	--½«ÓÐÐ§toÕ ðµ ÈË¼ÓÈëÁÐ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡mµt cáiÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--¶ÔÆäÊ¹ÓÃ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, PlayerId )
	LuaFnUnitUseSkill( sceneId, selfId, x402266_SkillB, PlayerId, x, z, 0, 1 )

	--¸øÆä¼Óbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, x402266_BuffB, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃC¼¼ÄÜ....
--**********************************
function x402266_UseSkillC( sceneId, selfId )

	-- ðÕt ðßþcµ±Ç°µÐÈË....
	local enemyId = GetMonsterCurEnemy( sceneId, selfId )
	if enemyId <= 0 then
		return 0
	end
	if GetCharacterType( sceneId, enemyId ) == 3 then
		enemyId = GetPetCreator( sceneId, enemyId )
	end

	--TÕi ¸ÃµÐÈË½ÅÏÂ·ÅcáiÏÝÚå....
	local x,z = GetWorldPos( sceneId, enemyId )
	CreateSpecialObjByDataIndex( sceneId, selfId, x402266_SpeObjC, x, z, 0 )

	--º°»°....
	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_17}" )

	--¶Ô×Ô¼ºÊ¹ÓÃmµt cáiÖ»ÓÐÌØÐ§toÕ ðµ ¿Õ¼¼ÄÜ....
	x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402266_SkillC, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--Ê¹ÓÃD¼¼ÄÜ....
--**********************************
function x402266_UseSkillD( sceneId, selfId )

	--¸ø¸±±¾ÀïËùÓÐÈË¼Óbuff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, nHumanId, x402266_BuffD, 0 )
		end
	end

end


--**********************************
--Ô Lão ÐÕiËÀÍö¼ÆÊ±Æ÷OnTimer....
--ÓÃÓÚ¿ØÖÆËÀÍöºóÑÓ³ÙË¢³öÕ½°ÜÔ Lão ÐÕi....
--**********************************
function x402266_OnHaDaBaDieTimer( sceneId, step, posX, posY )

	if 1 == step then
		--´´½¨Õ½°ÜtoÕ ðµ Ô Lão ÐÕiNPC....
		local MstId = CallScriptFunction( x402266_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDaLoss_NPC", posX, posY )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		SetPatrolId(sceneId, MstId, 0)
	end

end
