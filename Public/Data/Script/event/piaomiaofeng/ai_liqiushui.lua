--Æ®Ãì·å Lý Thu ThüyAI

--A ¡¾Ð¡ÎÞÏà¹¦¡¿¸ø×Ô¼ºÓÃcái¿Õ¼¼ÄÜ....ÔÙ¸øËæ»ú¸ømµt cáiÍæ¼ÒÊ§Ã÷....
--B ¡¾½£Îè¡¿¸ø×Ô¼ºÓÃmµt cái¿Õ¼¼ÄÜ....½ÓÏÂÀ´15sÄÚÒÀ´Î¸øÈ«¸±±¾Íæ¼Ò¼ÓÉËº¦ÖµÖð½¥¼Ó´ótoÕ ðµ ÉËº¦buff....
--C ¡¾È÷ÍÑ¡¿¸ø×Ô¼ºÓÃmµt cáiÇåbufftoÕ ðµ ¼¼ÄÜ....
--D ¡¾±ù±¬¡¿¸ø×Ô¼ºÓÃcái¿Õ¼¼ÄÜ....ÔÙ¸øËæ»ú¸øÍæ¼Ò½ÅÏÂ·ÅcáiÏÝÚå....
--E ¡¾¿ñ±©¡¿¸ø×Ô¼º¼Ó·è¿ñtoÕ ðµ buff....²»ÔÙÊ¹ÓÃÆäËû¼¼ÄÜ....

--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜtoÕ ðµ buff....
--Cuµc chiªn b¡t ð¥uÍ¬Ê±Ã¿¸ô10 giâyÓÃA¼¼ÄÜ....
--µ±HP½µÎª66%ºÍ33%Ê±·Ö±ðÊ¹ÓÃB¼¼ÄÜ....B¼¼ÄÜtoÕ ðµ ³ÖÐøÊ±¼äÄÚ....ÆäËü¼¼ÄÜCDµ½ÁË²»Ê¹ÓÃ....
--Ã¿¸ô20 giâyÓÃC¼¼ÄÜ....
--Ã¿¸ô20 giâyÓÃD¼¼ÄÜ....


--½Å±¾ºÅ
x402269_g_ScriptId	= 402269

--¸±±¾Âß¼­½Å±¾ºÅ....
x402269_g_FuBenScriptId = 402263


--ÃâÒßÌØ¶¨¼¼ÄÜbuff....
x402269_Buff_MianYi1	= 10472	--ÃâÒßmµt Ð©¸ºÃæÐ§¹û....
x402269_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--AÐ¡ÎÞÏà¹¦....
x402269_SkillA_ID			= 1042
x402269_SkillA_Buff		=	10271
x402269_SkillA_CD			= 10000

--B½£Îè....
x402269_SkillB_SkillIDTbl = { 1043, 1044, 1045, 1046, 1047, 1048 }
x402269_SkillB_WeatherTbl = { 11, 12, 13, 14, 15, 16 }
x402269_SkillB_TalkTbl =
{
	"#{PMF_20080530_10}",
	"#{PMF_20080530_11}",
	"#{PMF_20080530_12}",
	"#{PMF_20080530_13}",
	"#{PMF_20080530_14}",
	"#{PMF_20080530_15}"
}

x402269_SkillB_Text =
{
	"#{PMFTS_80917_5}",
	"#{PMFTS_80917_3}",
	"#{PMFTS_80917_6}",
	"#{PMFTS_80917_1}",
	"#{PMFTS_80917_2}",
	"#{PMFTS_80917_4}"
}

x402269_SkillB_BuffIDTbl =
{
	[1] = {10280,10281,10282,10283,10284,10285,10286,10287,10288,10289,10290,10291,10292,10293,10294},
	[2] = {10295,10296,10297,10298,10299,10300,10301,10302,10303,10304,10305,10306,10307,10308,10309},
	[3] = {10310,10311,10312,10313,10314,10315,10316,10317,10318,10319,10320,10321,10322,10323,10324},
	[4] = {10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338,10339},
	[5] = {10340,10341,10342,10343,10344,10345,10346,10347,10348,10349,10350,10351,10352,10353,10354},
	[6] = {10355,10356,10357,10358,10359,10360,10361,10362,10363,10364,10365,10366,10367,10368,10369}
}

--CÈ÷ÍÑ....
x402269_SkillC_ID		= 1049
x402269_SkillC_CD		= 20000

--D±ù±¬....
x402269_SkillD_ID		= 1050
x402269_SkillD_CD		= 20000
x402269_SkillD_SpecObj = 59

--E¿ñ±©....
x402269_SkillE_Buff1	= 10234
x402269_SkillE_Buff2	= 10235
--¿ªÊ¼½øÈë¿ñ±©×´Ì¬toÕ ðµ Ê±¼ä....
x402269_EnterKuangBaoTime	= 10*60*1000


--AI Index....
x402269_IDX_StopWatch						= 1	-- giây±í....
x402269_IDX_SkillA_CD						= 2	--A¼¼ÄÜtoÕ ðµ CDÊ±¼ä....
x402269_IDX_SkillB_HPStep				= 3	--ÑªÁ¿c¤p±ð....
x402269_IDX_SkillB_Step					= 4	--B¼¼ÄÜtoÕ ðµ Step....0=Î´·¢¶¯ 15=buff1 14=buff2 ¡­¡­ 1=buff15
x402269_IDX_SkillB_Type					= 5	--µ±Ç°ÕýTÕi Ê¹ÓÃÄÄÖÖÀàÐÍtoÕ ðµ ½£Îè....
x402269_IDX_SkillC_CD						= 6	--C¼¼ÄÜtoÕ ðµ CDÊ±¼ä....
x402269_IDX_SkillD_CD						= 7	--C¼¼ÄÜtoÕ ðµ CDÊ±¼ä....
x402269_IDX_KuangBaoTimer				= 8	--¿ñ±©toÕ ðµ ¼ÆÊ±Æ÷....


x402269_IDX_CombatFlag 			= 1	--Ðúng·ñ´¦ÓÚCuµc chiªn ×´Ì¬toÕ ðµ ±êÖ¾....
x402269_IDX_IsKuangBaoMode	= 2	--Ðúng·ñ´¦ÓÚ¿ñ±©Ä£Ê½toÕ ðµ ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402269_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x402269_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÐúng²»ÐúngËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÐúng·ñ²»TÕi Cuµc chiªn ×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402269_IDX_CombatFlag ) then
		return
	end

	--¿ñ±©×´Ì¬²»C¥n ×ßÂß¼­....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402269_IDX_IsKuangBaoMode ) then
		return
	end

	--A¼¼ÄÜÐÄÌø....
	if 1 == x402269_TickSkillA( sceneId, selfId, nTick ) then
		return
	end

	--B¼¼ÄÜÐÄÌø....
	if 1 == x402269_TickSkillB( sceneId, selfId, nTick ) then
		return
	end

	--C¼¼ÄÜÐÄÌø....
	if 1 == x402269_TickSkillC( sceneId, selfId, nTick ) then
		return
	end

	--D¼¼ÄÜÐÄÌø....
	if 1 == x402269_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

	--E¼¼ÄÜÐÄÌø....
	if 1 == x402269_TickSkillE( sceneId, selfId, nTick ) then
		return
	end

	-- giây±íÐÄÌø....
	x402269_TickStopWatch( sceneId, selfId, nTick )

end


--**********************************
--½øÈëCuµc chiªn ....
--**********************************
function x402269_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëCuµc chiªn ×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªCuµc chiªn ....
--**********************************
function x402269_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x402269_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402269_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­Khiêu chiªn¹ýLý Thu Thüy....
	CallScriptFunction( x402269_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "LiQiuShui", 2 )

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
		str = format("#{PMF_8812_06}#{_INFOUSR%s}#{PMF_8812_07}#{_INFOUSR%s}#{PMF_8812_08}", playerName, playerName); --Lý Thu Thüy
		AddGlobalCountNews( sceneId, str )
	end
	
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402269_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Type, 1 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD, x402269_SkillC_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD, x402269_SkillD_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_KuangBaoTimer, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_IsKuangBaoMode, 0 )

end

--**********************************
--A¼¼ÄÜÐÄÌø....
--**********************************
function x402269_TickSkillA( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD, x402269_SkillA_CD-(nTick-cd) )
		return x402269_UseSkillA( sceneId, selfId )
	end

end

--**********************************
--B¼¼ÄÜÐÄÌø....
--**********************************
function x402269_TickSkillB( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	local LastStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_HPStep )
	local CurStep = 0
	if CurPercent <= 0.3333 then
		CurStep = 2
	elseif CurPercent <= 0.6666 then
		CurStep = 1
	end

	if CurStep > LastStep then

		--ÉèÖÃ²ÎÊý....
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_HPStep, CurStep )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step, 15 )
		local JianWuType = random( getn(x402269_SkillB_SkillIDTbl) )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Type, JianWuType )

		--º°»°....
		MonsterTalk(sceneId, -1, "", x402269_SkillB_TalkTbl[JianWuType] )
		
		MonsterTalk(sceneId, -1, "", x402269_SkillB_Text[JianWuType] )
		--·ÅÈ«³¡¾°ÑÌ»¨....
		LuaFnSetSceneWeather(sceneId, x402269_SkillB_WeatherTbl[JianWuType], 15000 )

		--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillB_SkillIDTbl[JianWuType], selfId, x, z, 0, 1 )

		return 1

	end

	return 0

end

--**********************************
--C¼¼ÄÜÐÄÌø....
--**********************************
function x402269_TickSkillC( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD, x402269_SkillC_CD-(nTick-cd) )
		return x402269_UseSkillC( sceneId, selfId )
	end

end

--**********************************
--D¼¼ÄÜÐÄÌø....
--**********************************
function x402269_TickSkillD( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD, x402269_SkillD_CD-(nTick-cd) )
		return x402269_UseSkillD( sceneId, selfId )
	end

end

--**********************************
--E¼¼ÄÜÐÄÌø....
--**********************************
function x402269_TickSkillE( sceneId, selfId, nTick )

	--Èç¹ûÕýTÕi ÓÃB¼¼ÄÜÔòÏÈµÈ´ý....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--¼ì²âÐúng·ñµ½ÁË¿ñ±©toÕ ðµ Ê±ºò....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_KuangBaoTimer )
	if kbTime < x402269_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_KuangBaoTimer, kbTime+nTick )
		return 0

	else

		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_IsKuangBaoMode, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_SkillE_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_SkillE_Buff2, 0 )
		return 1

	end

end

--**********************************
-- giây±íÐÄÌø....
--**********************************
function x402269_TickStopWatch( sceneId, selfId, nTick )

	--ÏÞÖÆÃ¿ giây²Å»áÖ´ÐÐmµt ´Î....
	local time = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch )
	if (time + nTick) > 1000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch, time+nTick-1000 )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch, time+nTick )
		return
	end


	-------------------------
	--½£Îè¼¼ÄÜÂß¼­....
	-------------------------
	local buffStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step )
	local skillType = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Type )
	if buffStep >= 1 and buffStep <= 15 then

		--Ñ°ÕÒPhù Mçn Nghi....
		local bossId = CallScriptFunction( x402269_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
		if bossId <= 0 then
			return 0
		end

		--ÈÃPhù Mçn Nghi¸øÍæ¼Ò¼Óbuff....
		local buffTbl = x402269_SkillB_BuffIDTbl[skillType]
		local buffId = buffTbl[16-buffStep]
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
			end
		end

	end

	if buffStep > 0 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step, buffStep-1 )
	end


end

--**********************************
--Ê¹ÓÃA¼¼ÄÜ....
--**********************************
function x402269_UseSkillA( sceneId, selfId )

	--Èç¹ûÕýTÕi ÓÃB¼¼ÄÜÔòÌø¹ý....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

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

	--¶Ô×Ô¼ºÊ¹ÓÃmµt cái¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillA_ID, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼ÓÊ§Ã÷buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, x402269_SkillA_Buff, 0 )

	return 1

end

--**********************************
--Ê¹ÓÃC¼¼ÄÜ....
--**********************************
function x402269_UseSkillC( sceneId, selfId )

	--Èç¹ûÕýTÕi ÓÃB¼¼ÄÜÔòÌø¹ý....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillC_ID, selfId, x, z, 0, 1 )
	return 1

end

--**********************************
--Ê¹ÓÃD¼¼ÄÜ....
--**********************************
function x402269_UseSkillD( sceneId, selfId )

	--Èç¹ûÕýTÕi ÓÃB¼¼ÄÜÔòÌø¹ý....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

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

	--Ê¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillD_ID, selfId, x, z, 0, 1 )

	--TÕi ¸ÃÍæ¼Ò½Åµ×ÏÂ·ÅÏÝÚå....
	x,z = GetWorldPos( sceneId, PlayerId )
	CreateSpecialObjByDataIndex(sceneId, selfId, x402269_SkillD_SpecObj, x, z, 0)

	return 1

end
