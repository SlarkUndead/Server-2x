--BOSS´ºÍí 06ºÅ½ÚÄ¿

--Ð¡Æ·´ò¶¹¶¹


--½Å±¾ºÅ
x050036_g_scriptId = 050036

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050036_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050036_g_ChapterId = 6

--¶¯×÷²¥·Å±í....
x050036_g_ActionTbl = {

	[24] = { [1401]=23 },

	[25] = { [200]=458 },
	[26] = { [200]=456 },
	[27] = { [200]=457 },
	[28] = { [300]=24  },

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050036_OnStartThisChapter( sceneId )

	--´´½¨ËïÃÀÃÀ....
	local MstId = -1
	MstId = CallScriptFunction( x050036_g_MainScriptId, "CreateBossActor", sceneId, "SunMeiMei", 160, 109 )
	SetPatrolId(sceneId, MstId, 24)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050036_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050036_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--ËïÃÀÃÀ×ßµ½´Ë ði¬mÊ±´´½¨Ä¾Í°²®..°×µÛ..»ì½­Áú..Æó¶ìÍõ....
	if patrolPointIndex == 4 and paopaoIndex == 0 then

		if 0 == CallScriptFunction( x050036_g_MainScriptId, "IsSpecificBossActor", sceneId, "SunMeiMei", objId ) then
			return
		end

		local MstId = -1
		MstId = CallScriptFunction( x050036_g_MainScriptId, "CreateBossActor", sceneId, "MuTongBo", 155, 107, 1 )
		SetPatrolId(sceneId, MstId, 25)
		MstId = CallScriptFunction( x050036_g_MainScriptId, "CreateBossActor", sceneId, "BaiDi", 158, 107, 1 )
		SetPatrolId(sceneId, MstId, 26)
		MstId = CallScriptFunction( x050036_g_MainScriptId, "CreateBossActor", sceneId, "HunJiangLong", 161, 107, 1 )
		SetPatrolId(sceneId, MstId, 27)
		MstId = CallScriptFunction( x050036_g_MainScriptId, "CreateBossActor", sceneId, "QiEWang", 164, 107, 1 )
		SetPatrolId(sceneId, MstId, 28)
		return

	end


	--É¾³ýËïÃÀÃÀ....
	if patrolPointIndex == 16 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050036_g_MainScriptId, "IsSpecificBossActor", sceneId, "SunMeiMei", objId ) then
			CallScriptFunction( x050036_g_MainScriptId, "DeleteBossActor", sceneId, "SunMeiMei", objId )
		end
		--±¾½ÚÄ¿½áÊø....
		x050036_OnEndThisChapter( sceneId )
	end


	--É¾³ýÄ¾Í°²®..°×µÛ..»ì½­Áú....
	if patrolPointIndex == 3 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050036_g_MainScriptId, "IsSpecificBossActor", sceneId, "MuTongBo", objId ) then
			CallScriptFunction( x050036_g_MainScriptId, "DeleteBossActor", sceneId, "MuTongBo", objId )
		elseif 1 == CallScriptFunction( x050036_g_MainScriptId, "IsSpecificBossActor", sceneId, "BaiDi", objId ) then
			CallScriptFunction( x050036_g_MainScriptId, "DeleteBossActor", sceneId, "BaiDi", objId )
		elseif 1 == CallScriptFunction( x050036_g_MainScriptId, "IsSpecificBossActor", sceneId, "HunJiangLong", objId ) then
			CallScriptFunction( x050036_g_MainScriptId, "DeleteBossActor", sceneId, "HunJiangLong", objId )
		end
	end

	--É¾³ýÆó¶ìÍõ....
	if patrolPointIndex == 4 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050036_g_MainScriptId, "IsSpecificBossActor", sceneId, "QiEWang", objId ) then
			CallScriptFunction( x050036_g_MainScriptId, "DeleteBossActor", sceneId, "QiEWang", objId )
		end
	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050036_OnEndThisChapter( sceneId )

	CallScriptFunction( x050036_g_MainScriptId, "OnChapterEnd", sceneId, x050036_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050036_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	local pathActData = x050036_g_ActionTbl[patrolPathIndex]
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
