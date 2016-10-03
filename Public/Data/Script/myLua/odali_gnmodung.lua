x889065_g_scriptId = 889065

function x889065_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Trß·ng môn sß huynh có vi®c tr÷ng ðÕi phäi làm, nhæng vi®c nh§n ð° ð® bái sß giao cho ta phø trách.")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x889065_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x889065_g_scriptId, "Gi¾i thi®u môn phái",8,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

