--T� Ch�uNPC   200083
--����
--m�t ��

--�ű���
x001022_g_scriptId = 001022

--��ӵ��to� � �¼�ID�б�
x001022_g_eventList={200083,200084,200099,200100}

x001022_g_RSMissionId = 101
x001022_g_ActivateMissionId = 15			-- ��������
x001022_g_SongXinScriptId = 006668		-- ����
x001022_g_ShaGuaiScriptId = 006666		-- ɱ��
x001022_g_XunWuScriptId = 006667		-- Ѱ��

x001022_g_RoundStorytelling = {
		[0] = { misIndex = { 1039500 }, script = x001022_g_XunWuScriptId },
		[1] = { misIndex = { 1039501 }, script = x001022_g_XunWuScriptId },
		[2] = { misIndex = { 1039502 }, script = x001022_g_XunWuScriptId },
		[3] = { misIndex = { 1039503 }, script = x001022_g_XunWuScriptId },
		[4] = { misIndex = { 1039504 }, script = x001022_g_XunWuScriptId }}
			
x001022_g_SongXinMissionList = {
		[0] = { misIndex = { 1018560 }, script = x001022_g_SongXinScriptId },
		[1] = { misIndex = { 1018561 }, script = x001022_g_SongXinScriptId },
		[2] = { misIndex = { 1018562 }, script = x001022_g_SongXinScriptId },
		[3] = { misIndex = { 1018563 }, script = x001022_g_SongXinScriptId },
		[4] = { misIndex = { 1018564 }, script = x001022_g_SongXinScriptId },
		[5] = { misIndex = { 1018565 }, script = x001022_g_SongXinScriptId },
		[6] = { misIndex = { 1018566 }, script = x001022_g_SongXinScriptId }}
					
x001022_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039505 }, script = x001022_g_XunWuScriptId },
		[1] = { misIndex = { 1039506 }, script = x001022_g_XunWuScriptId },
		[2] = { misIndex = { 1039507 }, script = x001022_g_XunWuScriptId },
		[3] = { misIndex = { 1039508 }, script = x001022_g_XunWuScriptId },
		[4] = { misIndex = { 1039509 }, script = x001022_g_XunWuScriptId },
		[5] = { misIndex = { 1039510 }, script = x001022_g_XunWuScriptId },
		[6] = { misIndex = { 1039511 }, script = x001022_g_XunWuScriptId }}		


--**********************************
--�¼��б�
--**********************************
function x001022_UpdateEventList( sceneId, selfId,targetId )
	
	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end

	BeginEvent( sceneId )
		AddText(sceneId,"  Kh�ng bi�t t�i sao, c�ng t� gia m�y ng�y � T� Ch�u �u kh�ng vui")

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x001022_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi�m v� A B�ch" and IsMissionHaveDone( sceneId, selfId, x001022_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x001022_g_scriptId, "Nhi�m v� A B�ch", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x001022_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x001022_g_scriptId, "Nhi�m v� A B�ch", 3, 1 )
		end

		for _, eventId in x001022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
		
end

--**********************************
--�¼��������
--**********************************
function x001022_OnDefaultEvent( sceneId, selfId,targetId )
	x001022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001022_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local num = GetNumText()
	if num == 1 then										-- Nhi�m v� A B�ch
		if IsHaveMission( sceneId, selfId, x001022_g_RSMissionId ) > 0 then
			x001022_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� c�n c� nhi�m v� quan h� v�i c�c anh h�ng (Nhi�m V� k�ch t�nh tu�n ho�n) ch�a ho�n th�nh, sau khi ho�n th�nh h�y �n t�m ta." )
			return
		end
		
		-- �����ng��Th�a m�n���񼤻�����
		if IsMissionHaveDone( sceneId, selfId, x001022_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--���½���to� � Nhi�m v� A B�ch��ng����ng����50����
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_ABI_LIMITI)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--��m�t �ν�����to� � ʱ��(����)
		local nDayTime = 	nTime								--��m�t �ν�����to� � ʱ��(����)
		
		--local CurTime = GetHourTime()				--��ǰʱ��
		local CurTime = GetDayTime()					--��ǰʱ��
		--local CurDaytime = floor(CurTime/100)	--��ǰʱ��(��)
		local CurDaytime = CurTime							--��ǰʱ��(��)
		--end modified by zhangguoxin 090208
		
		if nDayTime == CurDaytime  then -- ����
			if nCount >= 50  then
				BeginEvent( sceneId )
					AddText( sceneId, "  H�m nay b�n �� g�p nhi�u r�c r�i, h�i tr� l�i v�o ng�y mai" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ��to� � m�t ��
			SetMissionData(sceneId, selfId, MD_JQXH_ABI_LIMITI, 0)
		end

		local mission = x001022_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_ABI)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- ��c�p���޴���
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ��������
		if randtype <= 60 then
			if playerlevel == 30 then
				mission = x001022_g_SongXinMissionList[0];
			elseif playerlevel == 40 then
				mission = x001022_g_SongXinMissionList[1];
			elseif playerlevel == 50 then
				mission = x001022_g_SongXinMissionList[2];
			elseif playerlevel == 60 then
				mission = x001022_g_SongXinMissionList[3];
			elseif playerlevel == 70 then
				mission = x001022_g_SongXinMissionList[4];
			elseif playerlevel == 80 then
				mission = x001022_g_SongXinMissionList[5];
			elseif playerlevel == 90 then
				mission = x001022_g_SongXinMissionList[6];			
			end
		-- ɱ������
		elseif randtype <= 95 then
			if playerlevel == 30 then
				mission = x001022_g_ShaGuaiMissionList[0];
			elseif playerlevel == 40 then
				mission = x001022_g_ShaGuaiMissionList[1];
			elseif playerlevel == 50 then
				mission = x001022_g_ShaGuaiMissionList[2];
			elseif playerlevel == 60 then
				mission = x001022_g_ShaGuaiMissionList[3];
			elseif playerlevel == 70 then
				mission = x001022_g_ShaGuaiMissionList[4];
			elseif playerlevel == 80 then
				mission = x001022_g_ShaGuaiMissionList[5];
			elseif playerlevel == 90 then
				mission = x001022_g_ShaGuaiMissionList[6];			
			end
		-- Ѱ������
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x001022_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x001022_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x001022_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x001022_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x001022_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
	
	
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x001022_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001022_g_eventList do
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
function x001022_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x001022_g_eventList do
		if missionScriptId == findId then
			x001022_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x001022_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001022_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--�ύ������to� � ����
--**********************************
function x001022_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001022_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end	
end

--**********************************
--�����¼�
--**********************************
function x001022_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x001022_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�ύ��Ʒ
--**********************************
function x001022_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x001022_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
