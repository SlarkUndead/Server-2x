--Nga MyNPC  
--������
--��ͨ

--�ű���
x015006_g_ScriptId = 015006

--��ӵ��to� � �¼�
estudy_lingxinshu = 713535
elevelup_lingxinshu = 713594
edialog_lingxinshu = 713611
--��ӵ��to� � �¼�ID�б�
x015006_g_eventList={estudy_lingxinshu,elevelup_lingxinshu}	
--MessageNum = 1		--MessageNum��ng�Ի����,���ڵ��ò�ͬ�Ի�
--**********************************
--�¼��б�
--**********************************
function x015006_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"K� n�ng c�a ta ch� d�y � t� b�n ph�i")
	for i, eventId in x015006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x015006_g_ScriptId, "Gi�i thi�u Linh T�m Thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x015006_OnDefaultEvent( sceneId, selfId,targetId )
	x015006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x015006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_034}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x015006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x015006_g_ScriptId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x015006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015006_g_eventList do
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
function x015006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x015006_g_eventList do
		if missionScriptId == findId then
			x015006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x015006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x015006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x015006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x015006_OnDie( sceneId, selfId, killerId )
end