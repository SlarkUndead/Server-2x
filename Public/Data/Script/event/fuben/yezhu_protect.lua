-- 402102
-- �����ڱ���

--************************************************************************
--MisDescBegin
--�ű���
x402102_g_ScriptId = 402102

--MisDescEnd
--************************************************************************

x402102_g_Item = 40004426

--��������
x402102_g_CopySceneName = "Ti�p c�u Linh Th�"

x402102_g_CopySceneType = FUBEN_PORTECT_PET	--��������,����T�i ScriptGlobal.lua����

x402102_g_CopySceneMap = "petisland_2.nav"
x402102_g_Exit = "petisland_2.ini"
x402102_g_LimitMembers = 3				--���Խ�����to� � ��С��������
x402102_g_TickTime = 1						--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x402102_g_LimitTotalHoldTime = 360--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x402102_g_LimitTimeSuccess = 500	--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x402102_g_CloseTick = 3						--�����ر�ǰ����ʱ(��λ: ����)
x402102_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x402102_g_DeadTrans = 0						--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x402102_g_Fuben_X = 87						--���븱��to� � λ��X
x402102_g_Fuben_Z = 64						--���븱��to� � λ��Z
x402102_g_Back_X = 87							--Դ����λ��X
x402102_g_Back_Z = 64							--Դ����λ��Z
x402102_g_Back_SceneId = 158			--Դ����Id

-- Th�nh Th� S�n����Id
x402102_g_PetSceneId = 158

-- ÿ��c�iСҰ��ˢ��to� � ���ʱ��
x402102_g_SetpTime = 10

-- ÿm�t ����ˢ��to� � �ȴ�ʱ��
x402102_g_SetpWaiteTime_1 = 15
x402102_g_SetpWaiteTime_2 = 60
x402102_g_SetpWaiteTime_3 = 120 
x402102_g_SetpWaiteTime_4 = 150
x402102_g_SetpWaiteTime_5 = 240
x402102_g_SetpWaiteTime_6 = 180
x402102_g_SetpWaiteTime_7 = 100
x402102_g_SetpWaiteTime_8 = 50 


-- Ұ��to� � ��Ϣ
x402102_g_MonsterInfo_1 = {	{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
}

x402102_g_MonsterInfo_2 = {	{id=3780,num=5,x=150,z=46,ai=22,ai_f=205,p=1},
														{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
}

x402102_g_MonsterInfo_3 = {	{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
														{id=3850,num=5,x=61,z=96,ai=22,ai_f=257,p=4},
														{id=3860,num=5,x=150,z=46,ai=22,ai_f=258,p=1},
}

x402102_g_MonsterInfo_4 = {	{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
														{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
														{id=3860,num=5,x=61,z=96,ai=22,ai_f=258,p=4},
														{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
}

x402102_g_MonsterInfo_5 = {	{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
														{id=3860,num=5,x=150,z=46,ai=22,ai_f=258,p=1},
														{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
}

x402102_g_MonsterInfo_6 = {	{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
														{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
}

x402102_g_MonsterInfo_7 = {	{id=3860,num=5,x=61,z=96,ai=22,ai_f=258,p=4},
}

x402102_g_MonsterInfo_8 = {	{id=3790,num=5,x=85,z=18,ai=22,ai_f=206,p=3},
}

-- Ҫ����to� � ����
x402102_g_MonsterAI = { {id=3730,ai=200},
												{id=3740,ai=201},
												{id=3750,ai=202},
												{id=3760,ai=203},
												{id=3770,ai=204},
}

-- ÿc�iˢ�µ gi�y���to� � Ұ������
x402102_g_MonsterInfo_Count_1 = 7
x402102_g_MonsterInfo_Count_2 = 8
x402102_g_MonsterInfo_Count_3 = 8
x402102_g_MonsterInfo_Count_4 = 10
x402102_g_MonsterInfo_Count_5 = 12
x402102_g_MonsterInfo_Count_6 = 12
x402102_g_MonsterInfo_Count_7 = 13
--**********************************
--������ں���
--**********************************
function x402102_OnDefaultEvent( sceneId, selfId, targetId )

	-- �����ng����ngT�i Th�nh Th� S�n����,����ng��ֱ��Tr� v�
	if sceneId ~= 158  then
		return
	end
	
	if GetNumText()==1010 then
		BeginEvent(sceneId)
				AddText(sceneId,"#{YZBZ_20070930_002}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	-- 0
	if LuaFnHasTeam(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi�p c�u Linh Th�");
			AddText(sceneId,"   <Linh th� lo l�ng nh�n ng߽i b�ng n�a con m�t, t�a h� mu�n n�i: Kh�ng �� ba ng߶i, c�c ng߽i n�y kh�ng ph�i kh�ng c�ng ch�u ch�t sao!>#R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2,��������ng����ng������
	if GetTeamSize(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi�p c�u Linh Th�");
			AddText(sceneId,"  <Linh th� lo l�ng nh�n ng߽i b�ng n�a con m�t, t�a h� mu�n n�i: Kh�ng �� ba ng߶i, c�c ng߽i n�y kh�ng ph�i kh�ng c�ng ch�u ch�t sao!>#R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 3,��������ng����ng�ӳ�
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi�p c�u Linh Th�");
			AddText(sceneId,"  <Linh th� lo l�ng nh�n ng߽i b�ng n�a con m�t, t�a h� mu�n n�i: Kh�ng �� ba ng߶i, c�c ng߽i n�y kh�ng ph�i kh�ng c�ng ch�u ch�t sao!>#R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 4,�����ng����ng�˶���λ��
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi�p c�u Linh Th�");
			AddText(sceneId,"  <Linh th� lo l�ng ngo�nh �u, t�a h� mu�n n�i: Ng߽i c�n c� �i vi�n kh�ng � g�n ��y, mau t�p h�p!>");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 1,��ҵ�c�p
	local nPlayerNum = GetNearTeamCount(sceneId,selfId)
	local strName = {}
	strName[1] = ""
	strName[2] = ""
	strName[3] = ""
	strName[4] = ""
	strName[5] = ""
	strName[6] = ""
	local ret = 1
 	
	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		if GetLevel(sceneId, nPlayerId) < 40  then
			ret = 0
			strName[i+1] = GetName(sceneId, nPlayerId)
		end
	end
	
	local nCount = 0
	if ret == 0  then
		local szAllName = ""
		for i=1, 6  do
			if strName[i] ~= ""  then
				if nCount == 0  then
					szAllName = strName[i]
				else
					szAllName = szAllName .. ", " .. strName[i]
				end
				nCount = nCount+1
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#BTi�p c�u Linh Th�");
			AddText(sceneId,"  Trong �i ng� c� th�nh vi�n (" .. szAllName .. ") c�p b�c th�p h�n 40 c�p, kh�ng th� tham gia c�u v�t linh th�.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- ����to� � ���ͨ��,��������,ɾ���Ի�����
	-- ��m�t c�i��ȫ���
	if sceneId==x402102_g_PetSceneId  then
		x402102_MakeCopyScene(sceneId, selfId, targetId)
		LuaFnDeleteMonster(sceneId, targetId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x402102_OnEnumerate( sceneId, selfId, targetId )

	if sceneId ~= 158  then
		return
	end

	-- ���T�i ������m�t c�iT�n�ж�
	AddNumText( sceneId, x402102_g_ScriptId, "Ti�p c�u Linh Th�",10 ,-1  )
	AddNumText( sceneId, x402102_g_ScriptId, "#{YZBZ_20070930_001}",11 ,1010  )

end

--**********************************
--���Ti�p th�����
--**********************************
function x402102_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x402102_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x402102_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x402102_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x402102_MakeCopyScene( sceneId, selfId, targetId )
	
	-- ʹ��еi vi�n to� � ��c�p���������to� � ��c�p
	local param0 = 4;
	local param1 = 3;

	--���ս��
	local mylevel = 0;

	--��ʱ����
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --û�ж���
		mylevel = GetLevel(sceneId, selfId)
	end
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "petisland_2.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402102_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402102_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402102_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402102_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--ɱ��Bossto� � ����
	
	-- �����õ�to� � �������
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = floor(PlayerMaxLevel/10);
	end
	
	-- ʹ�õ�8λ,��¼����ʵ��to� � ��c�p
	LuaFnSetCopySceneData_Param(sceneId,8, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,9, iniLevel)
	
	-- ��¼ҪTi�p c�u to� � ����to� � ����Id
	LuaFnSetCopySceneData_Param(sceneId,10, GetMonsterDataID(sceneId, targetId))

	-- ��16,17λ�������to� � ��ǰ����
	local x,z = GetWorldPos(sceneId,selfId)
	LuaFnSetCopySceneData_Param(sceneId,16, x)
	LuaFnSetCopySceneData_Param(sceneId,17, z)
	
	
	--���ó�����to� � ����Npc������
	--LuaFnSetSceneLoad_Area( sceneId, "petisland_2_area.ini" )
	--LuaFnSetSceneLoad_Monster( sceneId, "petisland_2_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)

	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!")
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!")
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����¼�
--**********************************
function x402102_OnCopySceneReady( sceneId, destsceneId )
	
	--���븱��to� � ����
	-- 1,���C�i n�y �ļ�û�����,�ʹ���C�i n�y ����Լ����븱��
	-- 2, �������ж���,����ng��Ҳ���ng�ӳ�,�ʹ����Լ����븱��
	-- 3,�������ж���,����C�i n�y �����ng�ӳ�,�ʹ����Լ��͸�������m�t ���ȥ

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end
	
	-- ��������ng����ng�ж���
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- û�ж���
		x402102_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x402102_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x402102_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x402102_GotoScene(sceneId, ObjId, destsceneId)
	NewWorld( sceneId, ObjId, destsceneId, x402102_g_Fuben_X, x402102_g_Fuben_Z) ;
end


--**********************************
--����ҽ��븱���¼�
--**********************************
function x402102_OnPlayerEnter( sceneId, selfId )
	-- ���������ӪΪ100
	SetUnitCampID(sceneId, selfId, selfId, 100)
	-- ���볡����ʾ
	x402102_TipAllHuman( sceneId, "D� tr� b�o lo�n 15 gi�y sau b�t �u ti�n c�ng, ch� � trong 20 ph�t b�o h� linh th� an to�n!" )
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x402102_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x402102_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh th����񸱱����Ե��ô˽ӿ�
--**********************************
function x402102_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x402102_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x402102_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x402102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x402102_OnDie( sceneId, objId, killerId )
	x402102_TipAllHuman(sceneId, "Ti�p c�u Linh Th� th�t b�i!")
		LuaFnSetCopySceneData_Param(sceneId, 12, 10)
end

--**********************************
--��ʾ���и��������
--**********************************
function x402102_TipAllHuman( sceneId, Str )
	--  ��t ���c������ͷto� � ������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x402102_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--���������¼�
--**********************************
function x402102_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x402102_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x402102_OnCopySceneTimer( sceneId, nowTime )
	
	-- ��ʱ����ҪҪ����ʱ��������ˢ��
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 11)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 12)
	
	local nStep_1 = LuaFnGetCopySceneData_Param(sceneId, 13)
	local nPreTime_1 = LuaFnGetCopySceneData_Param(sceneId, 14)
	
	local nBeginTime = LuaFnGetCopySceneData_Param(sceneId, 21)
	local nBeginTimeFlag = LuaFnGetCopySceneData_Param(sceneId, 22)
	
	if nCurTime-nBeginTime >= 18*60 and nBeginTimeFlag==1  then
		x402102_TipAllHuman( sceneId, "Ho�t �ng 2 ph�t sau ch�m d�t, ch� � b�o h� linh th� an to�n!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 2)
	end
	
	if nCurTime-nBeginTime >= 19*60 and nBeginTimeFlag==2  then
		x402102_TipAllHuman( sceneId, "Ho�t �ng 1 ph�t sau ch�m d�t, ch� � b�o h� linh th� an to�n!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 3)
	end
	
	if nCurTime-nBeginTime >= 19*60+30 and nBeginTimeFlag==3  then
		x402102_TipAllHuman( sceneId, "Ho�t �ng 30 gi�y sau ch�m d�t, ch� � b�o h� linh th� an to�n!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 4)
	end

	-- ����Ҫ����to� � ����
	if nStep == 0  then
		local nMonterLevel = LuaFnGetCopySceneData_Param(sceneId, 8)
		local nMonterIniID = LuaFnGetCopySceneData_Param(sceneId, 9)
		local nMonterID 	 = LuaFnGetCopySceneData_Param(sceneId, 10)
		
		local nAi = 0
		for i=1, 5  do
			if x402102_g_MonsterAI[i].id == nMonterID  then
				nAi = x402102_g_MonsterAI[i].ai
			end
		end
		
		local nRetrievalMonterID = 0
		if nMonterIniID >= 11 then
		   nRetrievalMonterID = nMonterID + nMonterIniID - 11 + 30000		
		else
		   nRetrievalMonterID = nMonterID + nMonterIniID - 1		
		end
		
		local nNpcId = LuaFnCreateMonster(sceneId, nRetrievalMonterID,
										 89, 64, 9, nAi, 402102)
		SetUnitCampID(sceneId, nNpcId, nNpcId, 100)
		SetCharacterTitle(sceneId, nNpcId, "Linh Th�")
		SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 21, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 22, 1)
		
		-- ����C�i n�y ����to� � Id
		LuaFnSetCopySceneData_Param(sceneId, 15, nNpcId)
	end
	
	--
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_1 and nStep==1  then
		for i, Npc in x402102_g_MonsterInfo_1  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t�n c�ng l�n th� 1! (C�n 6 l�n c�ng k�ch)" )
		x402102_TipAllHuman( sceneId, "60 gi�y sau d� tr� b�t �u ti�n c�ng ti�p theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==2) and 
				(nStep_1<x402102_g_MonsterInfo_Count_1-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_1  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end
	
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_2 and nStep==2  then
		for i, Npc in x402102_g_MonsterInfo_2  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t�n c�ng l�n th� 2! (C�n 5 l�n c�ng k�ch)" )
		x402102_TipAllHuman( sceneId, "120 gi�y sau d� tr� b�t �u ti�n c�ng ti�p theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==3) and 
				(nStep_1<x402102_g_MonsterInfo_Count_2-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_2  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end
	
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_3 and nStep==3  then
		for i, Npc in x402102_g_MonsterInfo_3  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t�n c�ng l�n th� 3! (C�n 4 l�n c�ng k�ch)" )
		x402102_TipAllHuman( sceneId, "150 gi�y sau d� tr� b�t �u ti�n c�ng ti�p theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==4) and 
				(nStep_1<x402102_g_MonsterInfo_Count_3-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_3  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_4 and nStep==4  then
		for i, Npc in x402102_g_MonsterInfo_4  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t�n c�ng l�n th� 4! (C�n 3 l�n c�ng k�ch)" )
		x402102_TipAllHuman( sceneId, "240 gi�y sau d� tr� b�t �u ti�n c�ng ti�p theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==5) and 
				(nStep_1<x402102_g_MonsterInfo_Count_4-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_4  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_5 and nStep==5  then
		for i, Npc in x402102_g_MonsterInfo_5  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t�n c�ng l�n th� 5! (C�n 2 l�n c�ng k�ch)" )
		x402102_TipAllHuman( sceneId, "180 gi�y sau d� tr� b�t �u ti�n c�ng ti�p theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==6) and 
				(nStep_1<x402102_g_MonsterInfo_Count_5-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_6 and nStep==6  then
		for i, Npc in x402102_g_MonsterInfo_6  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� t�n c�ng l�n th� 6! (C�n 1 l�n c�ng k�ch)" )
		x402102_TipAllHuman( sceneId, "100 gi�y sau d� tr� b�t �u ti�n c�ng ti�p theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==7) and 
				(nStep_1<x402102_g_MonsterInfo_Count_6-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_6  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_7 and nStep==7  then
		for i, Npc in x402102_g_MonsterInfo_7  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "D� tr� b�t �u t�n c�ng l�n cu�i c�ng!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==8) and 
				(nStep_1<x402102_g_MonsterInfo_Count_7-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_7  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	--BOSS
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_8 and nStep==8  then
		for i, Npc in x402102_g_MonsterInfo_8  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetCharacterTitle(sceneId, nNpcId, "L�o nha �i tr߶ng")
				-- ����Ѳ��·����
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "C�nh gi�c! D� tr� �u m�c xu�t hi�n!!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	local nLastTime = 20*60 -(x402102_g_SetpWaiteTime_1+
														x402102_g_SetpWaiteTime_2+
														x402102_g_SetpWaiteTime_3+
														x402102_g_SetpWaiteTime_4+
														x402102_g_SetpWaiteTime_5+
														x402102_g_SetpWaiteTime_6+
														x402102_g_SetpWaiteTime_7+
														x402102_g_SetpWaiteTime_8)
	
	-- ʱ�����,
	if nCurTime-nPreTime>=nLastTime and nStep==9  then

		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)

		-- ���Ҫ����to� � ������ng����ng������,
		local nNpcId = LuaFnGetCopySceneData_Param(sceneId, 15)
		local bOk = 0
		local nMonsterCount = GetMonsterCount(sceneId)
		for i=0, nMonsterCount-1   do
			local nMontserid = GetMonsterObjID(sceneId, i)
			if nNpcId == nMontserid   then
				-- ���
				bOk = 1
			end
		end
		
		if bOk == 1  then
			x402102_TipAllHuman(sceneId, "Ti�p c�u Linh Th� th�nh c�ng!")
			
			-- ���繫��
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum < 1 then
				return
			end
			local nLeaderId = 0
			for i=0, nHumanNum-1  do
				local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				if GetTeamLeader(sceneId, nPlayerId) == nPlayerId  then
					nLeaderId = nPlayerId
				end
			end
			if nLeaderId == 0  then
				return
			end
			
			local szLeaderName = GetName(sceneId, nLeaderId)
			local str = format("#GTh�nh th� s�n#P, c�i th� anh h�ng #{_INFOUSR%s}#P c�ng �i h�u �em h�t to�n l�c, ��nh l�i #YD� Tr� b�o lo�n #P�i�n cu�ng ti�n c�ng, cam �oan linh th� an to�n!",szLeaderName)
			BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
		end
	end
	
	if nStep==10  then
		x402102_TipAllHuman(sceneId, "C�c h� s� r�i kh�i n�i n�y trong v�ng 30 gi�y n�a.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- ʱ�����,
	if nCurTime-nPreTime>=15 and nStep==11  then
		x402102_TipAllHuman(sceneId, "C�c h� s� r�i kh�i n�i n�y trong v�ng 15 gi�y n�a.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- ʱ�����,
	if nCurTime-nPreTime>=10 and nStep==12  then
		x402102_TipAllHuman(sceneId, "C�c h� s� r�i kh�i n�i n�y trong v�ng 5 gi�y n�a.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- ʱ�����,
	if nCurTime-nPreTime>=5 and nStep==13  then
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			local x = LuaFnGetCopySceneData_Param(sceneId, 16)
			local z = LuaFnGetCopySceneData_Param(sceneId, 17)
			NewWorld( sceneId, nPlayerId, x402102_g_Back_SceneId, x, z) ;
		end
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
end

--**********************************
-- ͨ�ô������ﺯ��
--**********************************
function x402102_CreateNpc(sceneId, NpcId, x, y, Ai, AiFile, Script)
	local PlayerLevel = LuaFnGetCopySceneData_Param(sceneId, 8)
	local ModifyLevel = LuaFnGetCopySceneData_Param(sceneId, 9)
	local nNpcId = 0
	
	if ModifyLevel >= 11 then
	   nNpcId = NpcId + ModifyLevel-11 + 30000
	else
	   nNpcId = NpcId + ModifyLevel-1
	end
	
	local nMonsterId = LuaFnCreateMonster(sceneId, nNpcId, x, y, Ai, AiFile, Script)
	SetLevel(sceneId, nMonsterId, PlayerLevel)
	return nMonsterId
end
