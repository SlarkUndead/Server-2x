--BOSS´ºÍí 08ºÅ½ÚÄ¿

--¸èÇúË«½Ú¹÷


--½Å±¾ºÅ
x050038_g_scriptId = 050038

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050038_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050038_g_ChapterId = 8

--¶¯×÷²¥·Å±í....
x050038_g_ActionTbl = {

	[29] = {
						[200]=458,[201]=458,[202]=458,
						[400]=457,[401]=457,[402]=457,
						[600]=456,[601]=456,[602]=456,
						[800]=456,[801]=457,[802]=458,
					}

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050038_OnStartThisChapter( sceneId )

	--´´½¨ËïÃÀÃÀ....
	local MstId = -1
	MstId = CallScriptFunction( x050038_g_MainScriptId, "CreateBossActor", sceneId, "SunMeiMei", 160, 110 )
	SetPatrolId(sceneId, MstId, 36)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050038_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050038_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--ËïÃÀÃÀ×ßµ½´Ë ði¬mÊ±....
	if patrolPointIndex == 2 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050038_g_MainScriptId, "IsSpecificBossActor", sceneId, "SunMeiMei", objId ) then
			--´´½¨Ðoàn Diên Khánh....
			local MstId = -1 
			MstId = CallScriptFunction( x050038_g_MainScriptId, "CreateBossActor", sceneId, "DuanYanQing", 160, 108, 1 )
			SetPatrolId(sceneId, MstId, 29)
			--É¾³ýËïÃÀÃÀ....
			CallScriptFunction( x050038_g_MainScriptId, "DeleteBossActor", sceneId, "SunMeiMei", objId )
		end
		return
	end

	--É¾³ýÐoàn Diên Khánh....
	if patrolPointIndex == 9 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050038_g_MainScriptId, "IsSpecificBossActor", sceneId, "DuanYanQing", objId ) then
			CallScriptFunction( x050038_g_MainScriptId, "DeleteBossActor", sceneId, "DuanYanQing", objId )
			--±¾½ÚÄ¿½áÊø....
			x050038_OnEndThisChapter( sceneId )
		end
	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050038_OnEndThisChapter( sceneId )

	CallScriptFunction( x050038_g_MainScriptId, "OnChapterEnd", sceneId, x050038_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050038_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--·ÅÑÌ»¨....
	if patrolPointIndex == 2 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 9, 162, 115, 0)
		CreateSpecialObjByDataIndex(sceneId, objId, 9, 158, 115, 0)
	elseif patrolPointIndex == 4 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 6, 157, 115, 0)
		--CreateSpecialObjByDataIndex(sceneId, objId, 10, 160, 116, 0)
	elseif patrolPointIndex == 6 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 6, 163, 115, 0)
		--CreateSpecialObjByDataIndex(sceneId, objId, 12, 160, 116, 0)
	elseif patrolPointIndex == 8 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 43, 160, 116, 0)
	end

	local pathActData = x050038_g_ActionTbl[patrolPathIndex]
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
