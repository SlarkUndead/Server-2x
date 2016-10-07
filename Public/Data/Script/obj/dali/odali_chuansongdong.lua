--��i L�NPC
--ʿ��
--��ͨ
--�ű���
x002034_g_scriptId = 002034

--��ӵ��to� � �¼�ID�б�
x002034_g_eventList={500040}

--**********************************
--�¼��б�
--**********************************
function x002034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� N߽ng "
		else
			PlayerSex = " c�c h� "
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0008}")
		for i, eventId in x002034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002034_OnDefaultEvent( sceneId, selfId,targetId )
	x002034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x002034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x002034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002034_g_eventList do
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
function x002034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x002034_g_eventList do
		if missionScriptId == findId then
			x002034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x002034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x002034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002034_OnDie( sceneId, selfId, killerId )
end