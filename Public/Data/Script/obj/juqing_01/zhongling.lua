--��Linh

--�ű���
x119002_g_scriptId = 119002

--��ӵ��to� � �¼�ID�б�
x119002_g_eventList={200003, 200081}

--**********************************
--�¼��б�
--**********************************
function x119002_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		-- ��������to� � ������,���в�ͬto� � �԰�
		if IsMissionHaveDone(sceneId,selfId,3) == 1 then
			AddText(sceneId,"#{JQ_WJG_Y_007}")
		else
			AddText(sceneId,"#{JQ_WJG_Y_006}")
		end
		
		for i, eventId in x119002_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x119002_OnDefaultEvent( sceneId, selfId,targetId )
	x119002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x119002_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	for i, findId in x119002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x119002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x119002_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId,targetId  )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId,targetId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x119002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x119002_g_eventList do
		if missionScriptId == findId then
			x119002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x119002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x119002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x119002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x119002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x119002_OnDie( sceneId, selfId, killerId )
end