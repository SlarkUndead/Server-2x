--ÊÂ¼ş
--´«ËÍµ½LÕc Dß½ng

--½Å±¾ºÅ
x400919_g_ScriptId = 400919

--ÈÎÎñÎÄ±¾ÃèÊö
x400919_g_MissionName="ËÍÎmµt ØLÕc Dß½ng°É"
x400919_g_MissionInfo="°³ÃÇÀ¼Áê¿¤ĞúngLinh¹úÔËËÍÁ¸²İtoÕ ğµ ±Ø¾­Ö®µØ,ÏÖTÕi Â·ÉÏ¶à³öºÃ¶àThäo NguyênÀÇÀ´, ği¬mÓĞÈËÉ± ği¬mÀÇ°³ÃÇ²Å¸Ò³öÈ¥ÔË²İÁÏ."  --ÈÎÎñÃèÊö
x400919_g_MissionTarget="É±ËÀ5Ö»Thäo NguyênÀÇ"		--Møc tiêu nhi®m vø
x400919_g_ContinueInfo="ÄãÒÑ¾­É±ÁË5Ö»Thäo NguyênÀÇÂğ?ËüÃÇ¾ÍTÕi ´å×ÓÄÏ±ß,×ß×ß¾Í¿´¼ûÁË.Ğ¡ĞÄ ği¬m°.¬±»mµt ÈºÀÇÎ§¹¥ÁËÄÇÄã¾Í°×Ï¹ÁË."		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x400919_g_MissionComplete="Ğ»Ğ»°.¬°³ÃÇÖÕÓÚ¸Ò³öÃÅÁË"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--**********************************
--Èë¿Úº¯Êı
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end
