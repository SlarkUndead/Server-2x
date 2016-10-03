--ÎÞÁ¿É½ ÄêÊÞBOSSÈºË¢ÐÂ½Å±¾

--½Å±¾ºÅ
x050050_g_ScriptId	= 050050

--ÎÞµÐbuffid,ÏÖÈ±ÉÙ?????
x050050_g_Wudibuff = 10489

--Ë¢ÐÂ·½Ê½Îª:
--¼¤»î´Ë½Å±¾Ê±¶¨µ giây¢³ö10cáiBOSS....

--C¥n Ë¢³ötoÕ ðµ BOSStoÕ ðµ Êý¾Ý±í....
--BOSStoÕ ðµ MonsterID²»ÄÜÖØ¸´....TÕi ³¡¾°ÖÐÍ¬mµt Ê±¿ÌÍ¬mµt cáiMonsterIDtoÕ ðµ ¹ÖÖ»ÄÜ´æTÕi mµt cái....ÓÐÁË¾Í²»Ë¢ÁË....
x050050_g_BossData = {

	-- ID						BOSStoÕ ðµ  monster id
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSStoÕ ðµ BaseAI....
	-- ExtAIScript	BOSStoÕ ðµ À©Õ¹AI....
	-- ScriptID			BOSStoÕ ðµ ½Å±¾ID....
	-- NeedCreate		¶¼Ìî1....

	{ ID=11355, PosX=154,  PosY=53, BaseAI=0, ExtAIScript=260, ScriptID=050051, NeedCreate=1 },
}

--»î¶¯Ê±¼ä
x050050_g_StartDayTime = 8030   --»î¶¯½áÊøÊ±¼ä 2008-1-31
x050050_g_EndDayTime = 8044   --»î¶¯½áÊøÊ±¼ä 2008-2-14

--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x050050_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )
	--¼ì²éÊ±¼ä
	local isTime = x050050_CheckRightTime()
	if 1 ~= isTime then
		return
	end
	
	--M· ra »î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSSÊý¾Ý±íÎª¿Õ¾Í²»Ë¢BOSS....
	if getn(x050050_g_BossData) < 1 then
		return
	end

	CallScriptFunction( 050053, "ClearDromItemFlag", sceneId)

	--ÖØÖÃBossÖØ½¨×´Ì¬....
	for _, Data in x050050_g_BossData do
		Data.NeedCreate = 1
	end

	--±éÀú³¡¾°ÖÐËùÓÐtoÕ ðµ ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x050050_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--ÖØ½¨C¥n ÖØ½¨toÕ ðµ BOSS....
	for _, BossData in x050050_g_BossData do
		if BossData.NeedCreate == 1 then
			local npcobjid = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			LuaFnSendSpecificImpactToUnit(sceneId, npcobjid, npcobjid, npcobjid, x050050_g_Wudibuff, 0 )
		end
	end

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x050050_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--ÓÃÓÚ¸üÐÂÖØ½¨×´Ì¬....
--**********************************
function x050050_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x050050_g_BossData do
		if DataID == Data.ID then
			x050050_g_BossData[i].NeedCreate = 0
			break
		end
	end

end

--**********************************
--¼ì²â»î¶¯Ðúng·ñÒÑ½áÊø
--**********************************
function x050050_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime >= x050050_g_StartDayTime and curDayTime <= x050050_g_EndDayTime then
		return 1
	else
		return 1
	end

end
