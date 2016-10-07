--�ɱ�������ѧϰ

--�ű���
x713532_g_ScriptId = 713532

--��npc��������to� � ��ߵ�c�p
x713532_g_nMaxLevel = 30

--ѧϰ����Ҫ˵to� � ��
x713532_g_MessageStudy = "Ch� c�n c�c h� ch�u b� #{_MONEY%d} m�i c� th� h�c ���c k� n�ng Th�i B�ngThu�t. C�c h� c� quy�t �nh h�c kh�ng?"


--**********************************
--������ں���
--**********************************
function x713532_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_CAIBINGSHU)
	--��Ҽӹ�����to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_CAIBINGSHU)
	--�����ж�

	--�ж���ng����ngThi�n S�n�ɵ���,����ngThi�n S�n���Ӳ���ѧϰ
		if GetMenPai(sceneId,selfId) ~= MP_TIANSHAN then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� b�n bang, ta kh�ng th� d�y ng߽i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--�ж���ng���Ѿ�ѧ���˲ɱ���,���ѧ����,����ʾ�Ѿ�ѧ����
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"C�c h� �� h�c xong k� n�ng Th�i B�ng Thu�t");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--��� �i�m��to� � ��ng��K� n�ng h�c t�p��(������=0)
	if ButtomNum == 0 then
		
		local tempAbilityId = ABILITY_CAIBINGSHU;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			--AddText(sceneId,x713532_g_MessageStudy)
			local addText = format(x713532_g_MessageStudy, demandMoney);
			AddText(sceneId,addText)
			--X�c nh�nѧϰ��ť
					AddNumText(sceneId,x713532_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�ѧϰ��ť
					AddNumText(sceneId,x713532_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--��� �i�m��to� � ��ng����X�c nh�nҪѧϰ��
		local tempAbilityId = ABILITY_CAIBINGSHU;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			--��������ng����m�t c�i����to� � �ֽ�
			if GetMoney(sceneId,selfId) < demandMoney then			
				BeginEvent(sceneId)
					AddText(sceneId,"C�c h� kh�ng �� ng�n l��ng");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--�����ҵ�c�p��ng��ﵽҪ��
			if GetLevel(sceneId,selfId) < limitLevel then
				BeginEvent(sceneId)
					AddText(sceneId,"��ng c�p c�a ng߽i kh�ng ��");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--ɾ����Ǯ
			CostMoney(sceneId,selfId,demandMoney)
			--�����Linh���1
			SetHumanAbilityLevel(sceneId,selfId,ABILITY_CAIBINGSHU,1)
			--T�i npc���촰��֪ͨ����Ѿ�ѧ����
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� h�c xong k� n�ng Th�i B�ng Thu�t")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	else --��� �i�m������ֻ��ng��������
		CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x713532_OnEnumerate( sceneId, selfId, targetId )
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= 10 then
			AddNumText(sceneId,x713532_g_ScriptId,"H�c k� n�ng Th�i B�ng Thu�t", 12, 0)
		--end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713532_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713532_OnAccept( sceneId, selfId, ABILITY_CAIBINGSHU )
end