-- ÀŞÌ¨toÕ ğµ ÊÂ¼şÇøÓò½Å±¾

x806013_g_ScriptId = 806013
x806013_g_ChallengeScriptId = 806014

-- Íæ¼Ò½øÈëÀŞÌ¨Ê±ÉèÖÃ
function x806013_OnEnterArea( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT, x806013_g_ChallengeScriptId )
	ResetChallengeData( sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ÀŞÌ¨¶¨Ê±´¥·¢
function x806013_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ªÀŞÌ¨Ê±´¥·¢
function x806013_OnLeaveArea( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT, 0 )
	ResetChallengeData( sceneId, selfId )
end
