--L誧 D呓ngNPC
--白颖中
--补药店

x000085_g_shoptableindex=29

--**********************************
--事件交互入口
--**********************************
function x000085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  T読 h� 餫ng nghi阯 c製 b鄌 ch� b� d唼c d呔i s� h呔ng d鏽 c黙 s� ph�, 瘙i h鬽 n鄌 th鄋h c鬾g, t読 h� c� th� b醤 v痭 cho c醕 h�. Su躷 -... Ng叨i b靚h th叨ng t読 h� kh鬾g bao gi� cho bi猼")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--DispatchShopItem( sceneId, selfId,targetId, x000085_g_shoptableindex )
end
