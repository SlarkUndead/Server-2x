--BOSS´ºÍí 10ºÅ½ÚÄ¿

--Ð¡Æ·mµt ¼ûÖÓÇé


--½Å±¾ºÅ
x050040_g_scriptId = 050040

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050040_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050040_g_ChapterId = 10

--¶¯×÷²¥·Å±í....
x050040_g_ActionTbl = {

	[31] = { [100]=453 },

	[32] = { [100]=457,[200]=23,[300]=146,[500]=23,[699]=24           },
	[33] = { [200]=459,                                     [300]=459 },

	[34] = { [100]=129,[300]=455 },
	[35] = { [100]=129,[300]=455 },

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050040_OnStartThisChapter( sceneId )

	--´´½¨ËïÃÀÃÀ....
	local MstId = -1
	MstId = CallScriptFunction( x050040_g_MainScriptId, "CreateBossActor", sceneId, "SunMeiMei", 160, 110 )
	SetPatrolId(sceneId, MstId, 31)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050040_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050040_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--ËïÃÀÃÀ×ßµ½´Ë ði¬mÊ±.....
	if patrolPointIndex == 2 and paopaoIndex == -1 then

		if 0 == CallScriptFunction( x050040_g_MainScriptId, "IsSpecificBossActor", sceneId, "SunMeiMei", objId ) then
			return
		end

		--´´½¨Xích tiêu hoä h°n..Xuân Th§p Tam Nß½ng...
		local MstId = -1
		MstId = CallScriptFunction( x050040_g_MainScriptId, "CreateBossActor", sceneId, "ChiXiaoHuoHun", 153, 114, 1 )
		SetPatrolId(sceneId, MstId, 32)
		MstId = CallScriptFunction( x050040_g_MainScriptId, "CreateBossActor", sceneId, "Chun30", 163, 114, 1 )
		SetPatrolId(sceneId, MstId, 33)

		--É¾³ýËïÃÀÃÀ....
		CallScriptFunction( x050040_g_MainScriptId, "DeleteBossActor", sceneId, "SunMeiMei", objId )

		return

	end


	--Xích tiêu hoä h°n×ßµ½´Ë ði¬mÊ±´´½¨Ðµc Ty Tri Thù Vß½ng..²øË¿Ö©ÖëÍõ....
	if patrolPointIndex == 3 and paopaoIndex == 0 then

		if 0 == CallScriptFunction( x050040_g_MainScriptId, "IsSpecificBossActor", sceneId, "ChiXiaoHuoHun", objId ) then
			return
		end

		local MstId = -1
		MstId = CallScriptFunction( x050040_g_MainScriptId, "CreateBossActor", sceneId, "ChanSiZhiZhu", 164, 115, 1 )
		SetPatrolId(sceneId, MstId, 34)
		MstId = CallScriptFunction( x050040_g_MainScriptId, "CreateBossActor", sceneId, "DuSiZhiZhu", 164, 118, 1 )
		SetPatrolId(sceneId, MstId, 35)
		return

	end


	--É¾³ýXích tiêu hoä h°n....
	if patrolPointIndex == 8 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050040_g_MainScriptId, "IsSpecificBossActor", sceneId, "ChiXiaoHuoHun", objId ) then
			CallScriptFunction( x050040_g_MainScriptId, "DeleteBossActor", sceneId, "ChiXiaoHuoHun", objId )
		end
	end

	--É¾³ýXuân Th§p Tam Nß½ng....
	if patrolPointIndex == 4 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050040_g_MainScriptId, "IsSpecificBossActor", sceneId, "Chun30", objId ) then
			CallScriptFunction( x050040_g_MainScriptId, "DeleteBossActor", sceneId, "Chun30", objId )
			--±¾½ÚÄ¿½áÊø....
			x050040_OnEndThisChapter( sceneId )
		end
	end

	--É¾³ýÐµc Ty Tri Thù Vß½ng..²øË¿Ö©ÖëÍõ....
	if patrolPointIndex == 5 and paopaoIndex == -1 then
		if 1 == CallScriptFunction( x050040_g_MainScriptId, "IsSpecificBossActor", sceneId, "DuSiZhiZhu", objId ) then
			CallScriptFunction( x050040_g_MainScriptId, "DeleteBossActor", sceneId, "DuSiZhiZhu", objId )
		elseif 1 == CallScriptFunction( x050040_g_MainScriptId, "IsSpecificBossActor", sceneId, "ChanSiZhiZhu", objId ) then
			CallScriptFunction( x050040_g_MainScriptId, "DeleteBossActor", sceneId, "ChanSiZhiZhu", objId )
		end
	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050040_OnEndThisChapter( sceneId )

	CallScriptFunction( x050040_g_MainScriptId, "OnChapterEnd", sceneId, x050040_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050040_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--·ÅÑÌ»¨....
	if patrolPathIndex == 32 and patrolPointIndex == 2 and paopaoIndex == 0 then
		CreateSpecialObjByDataIndex(sceneId, objId, 5, 159, 116, 0)
	end

	local pathActData = x050040_g_ActionTbl[patrolPathIndex]
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
