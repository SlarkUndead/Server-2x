--梅岭NPC
--荆棘
--普通

--**********************************
--事件交互入口
--**********************************
function x033003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  � 疴u c� 醦 b裞, � 痼 c� 黏u tranh. S絥 Vi畉 H� Ph醦 ch鷑g ta kh鬾g th� gi痭g nh� t� ti阯, ch竨 醦 b裞 c黙 S絥 Vi畉 n� t� t� n鎍! Cho d� 鸲i n鄖 ch鷑g ta th b崭, th� con ch醬 ch鷑g ta c鹡g ti猵 t鴆 黏u tranh 皙n c鵱g!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
