-- challenge.lua
-- Khiêu chiªnÏà¹Ø½Å±¾

x806010_g_ScriptId = 806010

-- ÅÐ¶Ï¸ÃÍæ¼ÒÐúng·ñ´¦TÕi Khiêu chiªnÇøÓò
function x806010_HaveChallengeFlag( sceneId, selfId )
	return (GetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT ) > 0)
end

-- ÈÃ selfId (¼°¶ÓÓÑ) Khiêu chiªn targetId (¼°¶ÓÓÑ)
function x806010_ProcChallenge( sceneId, selfId, targetId )
	local ChallengeScript = GetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT )

	if ChallengeScript ~= GetMissionData( sceneId, targetId, MD_TIAOZHAN_SCRIPT ) then
		return
	end

	-- µ÷ÓÃ¾ßÌåtoÕ ðµ Khiêu chiªn½Å±¾,Ã¿cáiÀÞÌ¨Ó¦¸Ã°ó¶¨mµt cái½Å±¾
	CallScriptFunction(ChallengeScript, "DoChallenge", sceneId, selfId, targetId )
end
