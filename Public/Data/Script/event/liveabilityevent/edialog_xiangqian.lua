--�Ի��¼� 

--�ű���
x713603_g_ScriptId = 713603

--**********************************
--������ں���
--**********************************
function x713603_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0003}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713603_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713603_g_ScriptId,"T�i h� mu�n t�m hi�u ch�m kh�m",11,-1)
end

--**********************************
--���Ti�p th�����
--**********************************
function x713603_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713603_OnAccept( sceneId, selfId, AbilityId )
end