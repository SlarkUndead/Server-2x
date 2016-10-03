--BOSS´ºÍí 04ºÅ½ÚÄ¿

--¹ã¸æ·½±ãÃæ


--½Å±¾ºÅ
x050034_g_scriptId = 050034

--´ºÍíÖ÷¿Ø½Å±¾½Å±¾ºÅ....
x050034_g_MainScriptId = 050030

--±¾½ÚÄ¿toÕ ðµ ½ÚÄ¿ºÅ....
x050034_g_ChapterId = 4

--¶¯×÷²¥·Å±í....
x050034_g_ActionTbl = {

	[17] = { [100]=460,[200]=1 },

}

--**********************************
--¿ªÊ¼±¾½ÚÄ¿....
--**********************************
function x050034_OnStartThisChapter( sceneId )

	--ËïÃÀÃÀº°»°....
	local msg = "#P[´ºÍíÖ÷³ÖÈË-ËïÃÀÃÀ]: #YÏÂÃæ²å²¥¹ã¸æ£¡ÔÞÖúÉÌ: ºú·±."
	MonsterTalk(sceneId, -1, "LÕc Dß½ng", msg )

	--´´½¨Ðoàn Dñ..Mµ Dung Phøc..ÍõÓïæÌ....
	local MstId = -1
	MstId = CallScriptFunction( x050034_g_MainScriptId, "CreateBossActor", sceneId, "DuanYu", 163, 111, 1 )
	SetPatrolId(sceneId, MstId, 16)
	MstId = CallScriptFunction( x050034_g_MainScriptId, "CreateBossActor", sceneId, "MuRongFu", 160, 112, 1 )
	SetPatrolId(sceneId, MstId, 17)
	MstId = CallScriptFunction( x050034_g_MainScriptId, "CreateBossActor", sceneId, "WangYuYan", 164, 111, 1 )
	SetPatrolId(sceneId, MstId, 18)

end

--**********************************
--¹ÖÎïÑ²Âßµ½Ä³ ði¬mÊ±»Øµ÷±¾½Ó¿Ú....
--**********************************
function x050034_OnPatrolPoint( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	--Èç¹û¶¯×÷±íÖÐÅäÖÃÁË¶¯×÷Ôò²¥·Å¶¯×÷....
	x050034_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)


	--Ðúng·ñ×ßµ½ÁË×îºómµt cáiÑ²Âß ði¬m....
	if patrolPointIndex ~= 3 then
		return
	end

	--É¾³ýÐoàn Dñ..Mµ Dung Phøc..ÍõÓïæÌ....
	if 1 == CallScriptFunction( x050034_g_MainScriptId, "IsSpecificBossActor", sceneId, "DuanYu", objId ) then
		CallScriptFunction( x050034_g_MainScriptId, "DeleteBossActor", sceneId, "DuanYu", objId )
	elseif 1 == CallScriptFunction( x050034_g_MainScriptId, "IsSpecificBossActor", sceneId, "MuRongFu", objId ) then
		CallScriptFunction( x050034_g_MainScriptId, "DeleteBossActor", sceneId, "MuRongFu", objId )
	elseif 1 == CallScriptFunction( x050034_g_MainScriptId, "IsSpecificBossActor", sceneId, "WangYuYan", objId ) then
		CallScriptFunction( x050034_g_MainScriptId, "DeleteBossActor", sceneId, "WangYuYan", objId )
		--±¾½ÚÄ¿½áÊø....
		x050034_OnEndThisChapter( sceneId )
	end

end

--**********************************
--½áÊø±¾½ÚÄ¿....
--**********************************
function x050034_OnEndThisChapter( sceneId )

	CallScriptFunction( x050034_g_MainScriptId, "OnChapterEnd", sceneId, x050034_g_ChapterId )

end

--**********************************
--²¥·Å¶¯×÷±íÖÐÄ³cái¶¯×÷....
--**********************************
function x050034_PlayAct( sceneId, objId, patrolPathIndex, patrolPointIndex, paopaoIndex	)

	local pathActData = x050034_g_ActionTbl[patrolPathIndex]
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
