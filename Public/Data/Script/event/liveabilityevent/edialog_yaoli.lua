--�Ի��¼� 

--�ű���
x713620_g_ScriptId = 713620

--**********************************
--������ں���
--**********************************
function x713620_OnDefaultEvent( sceneId, selfId, targetId)
	dialog = "#{event_liveabilityevent_0029}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713620_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713620_g_ScriptId,"T�i h� mu�n t�m hi�u d��c l�",11,-1)
end

--**********************************
--���Ti�p th�����
--**********************************
function x713620_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713620_OnAccept( sceneId, selfId, AbilityId )
end