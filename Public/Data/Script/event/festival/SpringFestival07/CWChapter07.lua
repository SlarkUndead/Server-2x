--BOSS´ºÍí 07ºÅ½ÚÄ¿

--¶¹¶¹Îèµ¸


--½Å±¾ºÅ
x050037_g_scriptId = 050037

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050037_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050037_g_ChapterId = 7

--¶¯×÷²¥·Å±í....
x050037_g_ActionTbl = {

	[50] = {
						[100]=152,[200]=152,[300]=153,[400]=153,
						[900] =154,[1000]=154,[1100]=154,[1200]=154,
						[1300]=129,[1400]=129,[1500]=152,
						[1600]=129,[1700]=129,[1800]=24,
						[1900]=129,[2000]=152,
						[2100]=129,[2200]=152,
						[2300]=155,[2400]=153,[2500]=153,[2600]=155,
						[2800]=152,[2900]=152,[3000]=153,[3100]=153,
						[3200]=155,[3300]=155,
					},

	[51] = {
						[100]=152,[200]=152,[300]=153,[400]=153,
						[500]=155,[600]=155,
					},

	[52] = {
						[100]=152,[200]=152,[300]=153,[400]=153,
						[500]=155,[600]=155,
					},

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050037_OnStartThisChapter( sceneId )

	--´´½¨Æó¶ìÍõA....
	local MstId = -1
	MstId = CallScriptFunction( x050037_g_MainScriptId, "CreateBossActor", sceneId, "QiEWang", 160, 104 )
	SetPatrolId(sceneId, MstId, 50)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050037_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050037_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--Æó¶ìÍõA×ßµ½´Ë ði¬mÊ±....
	if patrolPathIndex == 50 and patrolPointIndex == 27 and paopaoIndex == -1 then

		--´´½¨Æó¶ìÍõB..Æó¶ìÍõC....
		local MstId = -1
		MstId = CallScriptFunction( x050037_g_MainScriptId, "CreateBossActor", sceneId, "QiEWang", 157, 109 )
		SetPatrolId(sceneId, MstId, 51)
		MstId = CallScriptFunction( x050037_g_MainScriptId, "CreateBossActor", sceneId, "QiEWang", 163, 109 )
		SetPatrolId(sceneId, MstId, 52)
		return

	end

	--É¾³ýÆó¶ìÍõA....
	if patrolPathIndex == 50 and patrolPointIndex == 34 and paopaoIndex == -1 then
		CallScriptFunction( x050037_g_MainScriptId, "DeleteBossActor", sceneId, "QiEWang", objId )
		--±¾½ÚÄ¿½áÊø....
		x050037_OnEndThisChapter( sceneId )
		return
	end

	--É¾³ýÆó¶ìÍõB....
	if patrolPathIndex == 51 and patrolPointIndex == 7 and paopaoIndex == -1 then
		CallScriptFunction( x050037_g_MainScriptId, "DeleteBossActor", sceneId, "QiEWang", objId )
		return
	end

	--É¾³ýÆó¶ìÍõC....
	if patrolPathIndex == 52 and patrolPointIndex == 7 and paopaoIndex == -1 then
		CallScriptFunction( x050037_g_MainScriptId, "DeleteBossActor", sceneId, "QiEWang", objId )
		return
	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050037_OnEndThisChapter( sceneId )

	CallScriptFunction( x050037_g_MainScriptId, "OnChapterEnd", sceneId, x050037_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050037_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--·ÅÑÌ»¨....
	if patrolPathIndex == 50 and patrolPointIndex == 23 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 9, 157, 114, 3000 )
		CreateSpecialObjByDataIndex(sceneId, objId, 9, 163, 114, 3000 )
	elseif patrolPathIndex == 50 and patrolPointIndex == 32 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 11, 160, 114, 3000 )
	end

	local pathActData = x050037_g_ActionTbl[patrolPathIndex]
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
