-- ÀŞÌ¨toÕ ğµ ÊÂ¼şÇøÓò½Å±¾

x806011_g_ScriptId = 806011
x806011_g_ChallengeScriptId = 806012

-- Íæ¼Ò½øÈëÀŞÌ¨Ê±ÉèÖÃ
function x806011_OnEnterArea( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT, x806011_g_ChallengeScriptId )
	ResetChallengeData( sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôTÕi ÀŞÌ¨¶¨Ê±´¥·¢
function x806011_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ªÀŞÌ¨Ê±´¥·¢
function x806011_OnLeaveArea( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT, 0 )
	ResetChallengeData( sceneId, selfId )
end
