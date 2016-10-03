-- 125011
-- ÉñÒ½

--½Å±¾ºÅ
x125011_g_scriptId = 125011

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x125011_g_eventList={}

x125011_g_shoptableindex = 14

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x125011_OnDefaultEvent( sceneId, selfId, targetId )
	DispatchShopItem( sceneId, selfId,targetId, x125011_g_shoptableindex )
end


