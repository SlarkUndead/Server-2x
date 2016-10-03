--¶¯Ì¬Éú³ÉtoÕ ðµ ½©Ê¬

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002073_OnDefaultEvent( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÄÜ¹»¼¤»î¸ÃnpctoÕ ðµ Ìõ¼þ
	--PrintStr("haha...ÎÒÐúng½©Ê¬")
	local npcLevel = GetCharacterLevel(sceneId, targetId)
	local teamCount = GetTeamMemberCount(sceneId, selfId)
	local teamLeaderID = GetTeamLeader(sceneId, selfId)
	local teamLeaderLevel = GetCharacterLevel(sceneId, teamLeaderID)
	
	PrintNum(teamLeaderID)
	PrintNum(teamCount)
	PrintNum(teamLeaderLevel)
	PrintNum(npcLevel)
	
	if  teamCount < 2 then	
		BeginEvent(sceneId)
			AddText(sceneId, "Dám coi thß¶ng ta, phäi có nhóm 3 ngß¶i m¾i xong, ha ha")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif teamLeaderLevel < npcLevel then
		--ÌáÊ¾Ìõ¼þ²»·û
		BeginEvent(sceneId)
			AddText(sceneId, "Dám coi thß¶ng ta, ðÆng c¤p cao h½n s¨ biªt lþi hÕi cüa ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	else
		--¼¤»înpc, ÆäÊµÐúngÉú³ÉÁËmµt cáiÄ£ÐÍÏàÍ¬toÕ ðµ ÐÂtoÕ ðµ NPC
		local PosX,PosZ=LuaFnGetWorldPos(sceneId, targetId)
		PosX=floor(PosX)
		PosZ=floor(PosZ)
		
		LuaFnDeleteMonster(sceneId, targetId)
		local aifile = random(10)
		LuaFnCreateMonster(sceneId, 1551, PosX, PosZ, 0, aifile, -1)
	
	end
	
end
