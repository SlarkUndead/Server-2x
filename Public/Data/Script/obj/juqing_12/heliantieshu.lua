--038004

-- ����ͬ 038004

--�ű���
x038004_g_scriptId = 038004

--��ӵ��to� � �¼�ID�б�
x038004_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x038004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"#{JQ_YPT_B_005}")
	AddNumText(sceneId, x038004_g_scriptId,"R�i b� n�i n�y",9,999);
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x038004_OnDefaultEvent( sceneId, selfId,targetId )
	x038004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x038004_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==999	then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0,115,66)
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x038004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x038004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			x038004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x038004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x038004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x038004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x038004_OnDie( sceneId, selfId, killerId )
end