--��ҽ���m�t c�i area ʱ����
function x400074_OnEnterArea( sceneId, selfId )
	if (IsHaveMission(sceneId,selfId,1096) > 0)  then
		CallScriptFunction((227901), "OnAbandon",sceneId, selfId)
	else
		NewWorld( sceneId, selfId, 16, 126, 77 )
	end
end

--���T�i m�t c�i area ����m�t ��ʱ��û����ʱ����
function x400074_OnTimer( sceneId, selfId )
	-- �� gi�y,��T�i C�i n�y  area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi�y����δ����
	if StandingTime >= 5000 then
		x400074_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪m�t c�i area ʱ����
function x400074_OnLeaveArea( sceneId, selfId )
end

----**********************************
----�¼��б�ѡ��m�t ��
----**********************************
--function OnEventRequest( sceneId, selfId, targetId, eventId )
--	if	GetNumText()==0	then
--		if	IsHaveMission( sceneId, selfId, 4013)>0	 then
--			misIndex = GetMissionIndexByID(sceneId,selfId,4013)
--			num = GetMissionParam(sceneId,selfId,misIndex,0)
--			if	num == 1 then
--				NewWorld( sceneId, selfId, 0, 268, 87 )
--			else
--				CallScriptFunction((231001), "OnAbandon",sceneId, selfId)
--			end
--		end
--	end
--end