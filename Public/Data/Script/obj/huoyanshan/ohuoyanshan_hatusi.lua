--»ðÑæÉ½NPC
--¹þÍ¼Ë¹
--´«ËÍµ½¶Ø»Í

x042501_g_ScriptId	= 042501

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x042501_g_Transport = 400900
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x042501_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{HYS_20071224_12}" )
		AddNumText( sceneId, x042501_g_ScriptId, "#{HYS_20071224_13}", 9, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x042501_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction((x042501_g_Transport), "TransferFunc",sceneId, selfId, 8, 80, 116, 90, 1000)
end
