--BOSS´ºÍí 03ºÅ½ÚÄ¿

--¸èÇú±£ÎÀÈýÁ¬»·


--½Å±¾ºÅ
x050033_g_scriptId = 050033

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050033_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050033_g_ChapterId = 3

--¶¯×÷²¥·Å±í....
x050033_g_ActionTbl = {

	[48] = { [100]=453 },

	[13] = { [100]=129,                    [600]=129,[700]=450,          [900]=450 },
	[14] = {           [200]=129,          [600]=129,                    [900]=450 },
	[15] = {                     [300]=129,[600]=129,          [800]=461,[900]=461 },

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050033_OnStartThisChapter( sceneId )

	--´´½¨ËïÃÀÃÀ....
	local MstId = -1
	MstId = CallScriptFunction( x050033_g_MainScriptId, "CreateBossActor", sceneId, "SunMeiMei", 160, 110 )
	SetPatrolId(sceneId, MstId, 48)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050033_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050033_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--ËïÃÀÃÀ×ßµ½´Ë ði¬mÊ±....
	if patrolPointIndex == 2 and paopaoIndex == -1 then

		if 0 == CallScriptFunction( x050033_g_MainScriptId, "IsSpecificBossActor", sceneId, "SunMeiMei", objId ) then
			return
		end

		--´´½¨Óà¶¾..ºìÐÜÍõ..¸ðÈÙ....
		local MstId = -1
		MstId = CallScriptFunction( x050033_g_MainScriptId, "CreateBossActor", sceneId, "YuDu", 157, 106, 1 )
		SetPatrolId(sceneId, MstId, 13)
		MstId = CallScriptFunction( x050033_g_MainScriptId, "CreateBossActor", sceneId, "HongXiongWang", 160, 106, 1 )
		SetPatrolId(sceneId, MstId, 14)
		MstId = CallScriptFunction( x050033_g_MainScriptId, "CreateBossActor", sceneId, "GeRong", 163, 106, 1 )
		SetPatrolId(sceneId, MstId, 15)

		--É¾³ýËïÃÀÃÀ....
		CallScriptFunction( x050033_g_MainScriptId, "DeleteBossActor", sceneId, "SunMeiMei", objId )

		return

	end


	--É¾³ýÓà¶¾..ºìÐÜÍõ..¸ðÈÙ....
	if patrolPointIndex == 10 and paopaoIndex == -1 then

		if 1 == CallScriptFunction( x050033_g_MainScriptId, "IsSpecificBossActor", sceneId, "YuDu", objId ) then
			CallScriptFunction( x050033_g_MainScriptId, "DeleteBossActor", sceneId, "YuDu", objId )
		elseif 1 == CallScriptFunction( x050033_g_MainScriptId, "IsSpecificBossActor", sceneId, "HongXiongWang", objId ) then
			CallScriptFunction( x050033_g_MainScriptId, "DeleteBossActor", sceneId, "HongXiongWang", objId )
		elseif 1 == CallScriptFunction( x050033_g_MainScriptId, "IsSpecificBossActor", sceneId, "GeRong", objId ) then
			CallScriptFunction( x050033_g_MainScriptId, "DeleteBossActor", sceneId, "GeRong", objId )
			--±¾½ÚÄ¿½áÊø....
			x050033_OnEndThisChapter( sceneId )
		end

	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050033_OnEndThisChapter( sceneId )

	CallScriptFunction( x050033_g_MainScriptId, "OnChapterEnd", sceneId, x050033_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050033_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	local pathActData = x050033_g_ActionTbl[patrolPathIndex]
	if pathActData then

		local idx = patrolPointIndex * 100
		if -1 == paopaoIndex then
			idx = idx + 99
		else
			idx = idx + paopaoIndex
		end

		local actId = pathActData[ idx ]
		if actId and actId > 0 then
			MonsterDoAction( sceneId, objId, actId, -1 )
		end

	end

end
