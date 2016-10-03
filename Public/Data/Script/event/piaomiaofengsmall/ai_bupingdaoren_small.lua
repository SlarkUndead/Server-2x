--Æ®Ãì·å B¤t bình ðÕo nhânAI

--F	¡¾°µÀ×¡¿¶Ô×Ô¼ºÓÃmµt cái¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ócái½áThúc Hà»á»Øµ÷½Å±¾toÕ ðµ buff....»Øµ÷Ê±ÈÃBOSS¸øÆäÖÜÎ§ÈË¼ÓÉËº®buff²¢º°»°....
--G ¡¾TinhËã¡¿¸ø×Ô¼ºÓÃmµt cái¼ÓbufftoÕ ðµ ¼¼ÄÜ....
--H ¡¾ÑÌ»¨¡¿¶Ô×Ô¼ºÓÃmµt cái¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ócái½áThúc Hà»á»Øµ÷½Å±¾toÕ ðµ buff....»Øµ÷Ê±º°»°....
--I	¡¾ÅóÓÑ¡¿Trác B¤t PhàmËÀÊ±¸ø×Ô¼ºÓÃmµt cái¼ÓbufftoÕ ðµ ¼¼ÄÜ....


--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜtoÕ ðµ buff....
--Ã¿¸ô30 giây¶ÔËæ»úÍæ¼ÒËæ»úÊ¹ÓÃFH....
--Ã¿¸ô45 giây¶Ô×Ô¼ºÊ¹ÓÃG....
--ËÀÍö»òÍÑÀëCuµc chiªn Ê±¸øËùÓÐÍæ¼ÒÇå³ýFHtoÕ ðµ buff....
--ËÀÍöÊ±Ñ°ÕÒB¤t bình ðÕo nhân....ÉèÖÃÆäC¥n Ê¹ÓÃ¿ñ±©¼¼ÄÜ....
--ËÀÍöÊ±·¢ÏÖB¤t bình ðÕo nhânÒÑ¾­ËÀÁË....Ôò´´½¨Áímµt cáiBOSS....


--½Å±¾ºÅ
x402281_g_ScriptId	= 402281

--¸±±¾Âß¼­½Å±¾ºÅ....
x402281_g_FuBenScriptId = 402276

--ÃâÒßBuff....
x402281_Buff_MianYi1	= 10472	--ÃâÒßmµt Ð©¸ºÃæÐ§¹û....
x402281_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--¼¼ÄÜ....
x402281_SkillID_F		= 1037
x402281_BuffID_F1		= 19806	--»Øµ÷¼òµ¥°æçÎç¿·åtoÕ ðµ ½Å±¾....
x402281_BuffID_F2		= 19807	--¼òµ¥°æçÎç¿·åÊ¹ÓÃÉËº¦½µµÍÁËtoÕ ðµ °æ±¾....
x402281_SkillID_G		= 1038
x402281_SkillID_H		= 1037
x402281_BuffID_H		= 19899	--»Øµ÷¼òµ¥°æçÎç¿·åtoÕ ðµ ½Å±¾....
x402281_SkillID_I		= 1036
x402281_BuffID_I1		= 10253
x402281_BuffID_I2		= 10254

x402281_SkillCD_FH	=	30000
x402281_SkillCD_G		=	45000


x402281_MyName			= "B¤t bình ðÕo nhân"	--×Ô¼ºtoÕ ðµ Tên....
x402281_BrotherName = "Trác B¤t Phàm"		-- huynh ð®toÕ ðµ Tên....


--AI Index....
x402281_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1C¥n ½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x402281_IDX_CD_SkillFH		= 2	--FH¼¼ÄÜtoÕ ðµ CD....
x402281_IDX_CD_SkillG			= 3	--G¼¼ÄÜtoÕ ðµ CD....
x402281_IDX_CD_Talk				= 4	--FH¼¼ÄÜº°»°toÕ ðµ CD....

x402281_IDX_CombatFlag 		= 1	--Ðúng·ñ´¦ÓÚCuµc chiªn ×´Ì¬toÕ ðµ ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402281_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402281_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x402281_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÐúng²»ÐúngËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÐúng·ñ²»TÕi Cuµc chiªn ×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402281_IDX_CombatFlag ) then
		return
	end

	--FH¼¼ÄÜÐÄÌø....
	if 1 == x402281_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G¼¼ÄÜÐÄÌø....
	if 1 == x402281_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--I¼¼ÄÜÐÄÌø....
	if 1 == x402281_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëCuµc chiªn ....
--**********************************
function x402281_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402281_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402281_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402281_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëCuµc chiªn ×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402281_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªCuµc chiªn ....
--**********************************
function x402281_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402281_ResetMyAI( sceneId, selfId )

	--±éÀú³¡¾°ÀïËùÓÐtoÕ ðµ ¹Ö....Ñ°ÕÒ huynh ð®²¢½«ÆäÉ¾³ý....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402281_BrotherName == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x402281_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402281_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x402281_ResetMyAI( sceneId, selfId )

	local bFind = 0

	--±éÀú³¡¾°ÀïËùÓÐtoÕ ðµ ¹Ö....Ñ°ÕÒ huynh ð®....¸øÆäÉèÖÃC¥n Ê¹ÓÃ¿ñ±©¼¼ÄÜ....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402281_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			bFind = 1
			MonsterAI_SetIntParamByIndex( sceneId, MonsterId, x402281_IDX_KuangBaoMode, 1 )
		end
	end

	--Èç¹ûÃ»ÕÒµ½ huynh ð®ÔòË ði¬m÷¾ÍÊ£×Ô¼ºmµt cáiÁË....
	if 0 == bFind then
		--´´½¨¶ËÄ¾Ôª....
		local MstId = CallScriptFunction( x402281_g_FuBenScriptId, "CreateBOSS", sceneId, "DuanMuYuan_BOSS", -1, -1 )
		LuaFnNpcChat(sceneId, MstId, 0, "#{PMF_20080521_18}")
		--ÉèÖÃÒÑ¾­Khiêu chiªn¹ýË«×Ó....
		CallScriptFunction( x402281_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "ShuangZi", 2 )
	end

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402281_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillFH, x402281_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillG, x402281_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402281_IDX_CombatFlag, 0 )

	--¸øËùÓÐÍæ¼ÒÇå³ýFHtoÕ ðµ buff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x402281_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x402281_BuffID_H )
		end
	end

end


--**********************************
--FH¼¼ÄÜÐÄÌø....
--**********************************
function x402281_TickSkillFH( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillFH, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillFH, x402281_SkillCD_FH-(nTick-cd) )

		--Ëæ»úÊ¹ÓÃFH....
		if random(100) < 50 then
			return x402281_UseSkillF( sceneId, selfId )
		else
			return x402281_UseSkillH( sceneId, selfId )
		end

	end

end


--**********************************
--G¼¼ÄÜÐÄÌø....
--**********************************
function x402281_TickSkillG( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_CD_SkillG, x402281_SkillCD_G-(nTick-cd) )
		return x402281_UseSkillG( sceneId, selfId )
	end

end


--**********************************
--I¼¼ÄÜÐÄÌø....
--**********************************
function x402281_TickSkillI( sceneId, selfId, nTick )

	-- ðÕt ðßþcµ±Ç°¿ñ±©mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402281_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--Èç¹û²»C¥n ¿ñ±©»òÕßÒÑ¾­¿ñ±©ÁËÔòTr· v«....
		return 0

	elseif CurMode == 1 then

		--Èç¹ûC¥n ¿ñ±©ÔòÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
		local ret =  x402281_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402281_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--Ê¹ÓÃF¼¼ÄÜ....
--**********************************
function x402281_UseSkillF( sceneId, selfId )

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

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402281_SkillID_F, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼Ó½áThúc Hà»Øµ÷½Å±¾toÕ ðµ buff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x402281_BuffID_F1, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃG¼¼ÄÜ....
--**********************************
function x402281_UseSkillG( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402281_SkillID_G, selfId, x, z, 0, 1 )
	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_01}" )
	return 1

end


--**********************************
--Ê¹ÓÃH¼¼ÄÜ....
--**********************************
function x402281_UseSkillH( sceneId, selfId )

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

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402281_SkillID_H, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼Ó½áThúc Hà»Øµ÷½Å±¾toÕ ðµ buff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x402281_BuffID_H, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x402281_UseSkillI( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402281_BuffID_I1, 5000 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402281_BuffID_I2, 5000 )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402281_SkillID_I, selfId, x, z, 0, 1 )

	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_02}" )

	return 1

end


--**********************************
--°µÀ×ºÍÑÌ»¨toÕ ðµ buff½áÊøtoÕ ðµ Ê±ºmµt Øµ÷±¾½Ó¿Ú....
--**********************************
function x402281_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ñ°ÕÒBOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402281_MyName == GetName( sceneId, MonsterId ) then
			bossId = MonsterId
		end
	end

	--Ã»ÕÒµ½ÔòTr· v«....
	if bossId == -1 then
		return
	end

	--Èç¹ûÐúngÑÌ»¨toÕ ðµ buffÔòÈÃBOSSº°»°....
	if impactId == x402281_BuffID_H then
		MonsterTalk( sceneId, -1, "", "#{PMF_20080530_03}"..GetName( sceneId, selfId ).."#{PMF_20080530_04}" )
		return
	end

	--Èç¹ûÐúng°µÀ×toÕ ðµ buff....ÔòÈÃBOSS¸ø¸½½ütoÕ ðµ Íæ¼Ò¼Ómµt cáiÉËº¦toÕ ðµ buff²¢º°»°....
	if impactId == x402281_BuffID_F1 then

		MonsterTalk( sceneId, -1, "", "#{PMF_20080530_03}"..GetName( sceneId, selfId ).."#{PMF_20080530_05}" )

		local x = 0
		local z = 0
		local xx = 0
		local zz = 0
		x,z = GetWorldPos( sceneId,selfId )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, PlayerId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, PlayerId) == 1 and LuaFnIsCharacterLiving(sceneId, PlayerId) == 1 and PlayerId ~= selfId then
				xx,zz = GetWorldPos(sceneId,PlayerId)
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 8*8 then
					LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, PlayerId, x402281_BuffID_F2, 0 )
				end
			end
		end

		return

	end

end
