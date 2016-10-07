--C�i BangNPC
--�Ϲٳ���
--��ͨ

--�ű���
x010009_g_ScriptId = 010009

--��ӵ��to� � �¼�
estudy_lianhualuo = 713531
elevelup_lianhualuo = 713590
edialog_lianhualuo = 713611
--��ӵ��to� � �¼�ID�б�
x010009_g_eventList={estudy_lianhualuo,elevelup_lianhualuo}	
--MessageNum = 1		--MessageNum��ng�Ի����,���ڵ��ò�ͬ�Ի�
--**********************************
--�¼��б�
--**********************************
function x010009_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"K� n�ng c�a ta ch� d�y � t� b�n ph�i.")
	for i, eventId in x010009_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x010009_g_ScriptId, "Gi�i thi�u Li�n Hoa L�c", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x010009_OnDefaultEvent( sceneId, selfId,targetId )
	x010009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x010009_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_026}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	for i, findId in x010009_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x010009_g_ScriptId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x010009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010009_g_eventList do
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
function x010009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x010009_g_eventList do
		if missionScriptId == findId then
			x010009_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x010009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x010009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x010009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x010009_OnDie( sceneId, selfId, killerId )
end