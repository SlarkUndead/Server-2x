--BOSS´ºÍí 01ºÅ½ÚÄ¿

--ËïÃÀÃÀ´ºÍí¿ª³¡


--½Å±¾ºÅ
x050031_g_scriptId = 050031

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050031_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050031_g_ChapterId = 1

--¶¯×÷²¥·Å±í....
x050031_g_ActionTbl = {

	[7] = { [200]=453,[202]=456 },

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050031_OnStartThisChapter( sceneId )

	--´´½¨ËïÃÀÃÀ....
	local MstId = -1
	MstId = CallScriptFunction( x050031_g_MainScriptId, "CreateBossActor", sceneId, "SunMeiMei", 153, 112 )

	--ÉèÖÃ¿ª³¡Ñ²ÂßÂ·¾¶....
	SetPatrolId(sceneId, MstId, 7)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050031_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050031_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--×ßµ½×îºómµt cáiÂ·¾¶ ði¬m....
	if patrolPointIndex == 5 then
		--¼ì²âÐúng²»ÐúngËïÃÀÃÀ....
		if 1 == CallScriptFunction( x050031_g_MainScriptId, "IsSpecificBossActor", sceneId, "SunMeiMei", objId ) then
			--É¾³ýËïÃÀÃÀ....
			CallScriptFunction( x050031_g_MainScriptId, "DeleteBossActor", sceneId, "SunMeiMei", objId )
			--±¾½ÚÄ¿½áÊø....
			x050031_OnEndThisChapter( sceneId )
		end
		return
	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050031_OnEndThisChapter( sceneId )

	CallScriptFunction( x050031_g_MainScriptId, "OnChapterEnd", sceneId, x050031_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050031_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--·ÅÑÌ»¨....
	if patrolPointIndex == 2 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 39, 159, 116, 0)
	end

	local pathActData = x050031_g_ActionTbl[patrolPathIndex]
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
