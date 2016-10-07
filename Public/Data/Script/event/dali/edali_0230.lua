--��������
--����ʦѰ�m�t �üɮ
--MisDescBegin
--�ű���
x210230_g_ScriptId = 210230

--Ti�p th�����NPC����
x210230_g_Position_X=275.2234
x210230_g_Position_Z=49.2906
x210230_g_SceneID=2
x210230_g_AccomplishNPC_Name="Ho�ng Mi T�ng"

--�����
x210230_g_MissionId = 710

--��m�t c�i����to� � ID
--g_MissionIdPre =

--Ŀ��NPC
x210230_g_Name	="Ho�ng Mi T�ng"

--�������
x210230_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210230_g_MissionLevel = 9

--��ng����ngTinhӢ����
x210230_g_IfMissionElite = 0

--������
x210230_g_MissionName="�� Ti�u M�c Nh�n H�ng"
x210230_g_MissionInfo="#{event_dali_0043}"
x210230_g_MissionTarget="�i #GNi�m Hoa T� c�a g�c ��ng B�c th�nh ��i L�#W t�m #RHo�ng Mi T�ng #W#{_INFOAIM275,49,2, Ho�ng Mi T�ng}. "
x210230_g_MissionComplete="  Th� ch�, ch�ng ta l�i g�p m�t r�i. Xin th� ch� chu�n b� �y �� d��c ph�m v� trang b� tu luy�n, r�i v�o #GTi�u M�c Nh�n H�ng #W"
x210230_g_MoneyBonus=72
x210230_g_SignPost = {x = 275, z = 50, tip = "Ho�ng Mi T�ng"}

x210230_g_Custom	= { {id="�� t�m th�y Ho�ng Mi T�ng",num=1} }
x210230_g_IsMissionOkFail = 1		--����to� � ��0λ

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210230_OnDefaultEvent( sceneId, selfId, targetId )
    --��������ɹ�C�i n�y ����
    if (IsMissionHaveDone(sceneId,selfId,x210230_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210230_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210230_g_Name then
			x210230_OnContinue( sceneId, selfId, targetId )
		end
    --Th�a m�n�����������
    elseif x210230_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210230_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210230_g_MissionName)
				AddText(sceneId,x210230_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210230_g_MissionTarget)
				AddMoneyBonus( sceneId, x210230_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210230_g_ScriptId,x210230_g_MissionId)
		end
    end
end

--**********************************
--�о��¼�
--**********************************
function x210230_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --��������ɹ�C�i n�y ����
    if IsMissionHaveDone(sceneId,selfId,x210230_g_MissionId) > 0 then
    	return
    --����ѽӴ�����
    elseif IsHaveMission(sceneId,selfId,x210230_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210230_g_Name then
			AddNumText(sceneId, x210230_g_ScriptId,x210230_g_MissionName,2,-1);
		end
    --Th�a m�n�����������
    elseif x210230_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210230_g_Name then
			AddNumText(sceneId,x210230_g_ScriptId,x210230_g_MissionName,1,-1);
		end
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210230_CheckAccept( sceneId, selfId )
	--C�n 9c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 9 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210230_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210230_g_MissionId, x210230_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: �� Ti�u M�c Nh�n H�ng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210230_g_SignPost.x, x210230_g_SignPost.z, x210230_g_SignPost.tip )

	-- ����������ɱ�־
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210230_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x210230_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x210230_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210230_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210230_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210230_g_MissionName)
		AddText(sceneId,x210230_g_MissionComplete)
		AddMoneyBonus( sceneId, x210230_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210230_g_ScriptId,x210230_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210230_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210230_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x210230_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210230_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--����������
		AddMoney(sceneId,selfId,x210230_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,300)
		DelMission( sceneId,selfId,  x210230_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x210230_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: �� Ti�u M�c Nh�n H�ng",MSG2PLAYER_PARA )
		CallScriptFunction( 210231, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x210230_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210230_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210230_OnItemChanged( sceneId, selfId, itemdataId )
end