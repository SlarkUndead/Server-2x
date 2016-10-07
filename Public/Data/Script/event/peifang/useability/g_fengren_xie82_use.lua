-- �����䷽�ű� ����ʹ�ü���������Ʒ
-- *******
-- ���� 10 c�p
-- �ýű���������c�i�ر����ܺ���: 
-- x700946_AbilityCheck ��������ʹ�ü�麯��
-- x700946_AbilityConsume �����ϳɽ���,�����������
-- x700946_AbilityProduce �����ϳɳɹ�,������Ʒ

--------------------------------------------------------------------------------
-- ���²���C�n ��д
--------------------------------------------------------------------------------
--�ű�������
--2c�pñ�䷽ ������Ʒ

-- �ű���
x700946_g_ScriptId = 700946

-- ����ܺ�
x700946_g_AbilityID = ABILITY_FENGREN

-- ���������to� � ���c�p��
x700946_g_AbilityMaxLevel = 12

-- �䷽��
x700946_g_RecipeID = 120

-- �䷽��c�p(������to� � ��c�p)
x700946_g_RecipeLevel = 10

-- ���ϱ�
x700946_g_CaiLiao = {
	{ID = 20105010, Count = 18},
	{ID = 20107013, Count = 20},
	{ID = 20108118, Count = 30},
	{ID = 20308099, Count = 1},
}

-- ��Ʒ��
x700946_g_ChanPin = {
	{ID = 10211036, Odds = 2000},
	{ID = 10211037, Odds = 4000},
	{ID = 10211038, Odds = 6000},
	{ID = 10211039, Odds = 8000},
	{ID = 10211040, Odds = 10000},
}
--------------------------------------------------------------------------------
-- ���ϲ���C�n ��д
--------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--	����ʹ�ü�麯��
----------------------------------------------------------------------------------------
function x700946_AbilityCheck(sceneId, selfId)

	-- ��ⱳ����ng����ng�пո�,û�пո�Ͳ��ܽ���
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		return OR_BAG_OUT_OF_SPACE
	end

	-- �����������
	VigorValue = x700946_g_RecipeLevel * 2 + 1
	if GetHumanVigor(sceneId, selfId) < VigorValue then
		return OR_NOT_ENOUGH_VIGOR
	end

	-- �����ng������㹻

	for idx, Mat in x700946_g_CaiLiao do
		nCount = Mat.Count

		ret = LuaFnGetAvailableItemCount(sceneId, selfId, Mat.ID)
		if ret < nCount then
			return OR_STUFF_LACK
		end
	end

	return OR_OK
end

----------------------------------------------------------------------------------------
--	�ϳɽ���,�����������
----------------------------------------------------------------------------------------
function x700946_AbilityConsume(sceneId, selfId)
	-- ���Ƚ�����������
	VigorCost = x700946_g_RecipeLevel * 2 + 1
	VigorValue = GetHumanVigor(sceneId, selfId) - VigorCost
	SetHumanVigor(sceneId, selfId, VigorValue)

	-- Ȼ����в�������

	for idx, Mat in x700946_g_CaiLiao do
		nCount = Mat.Count

		ret = LuaFnDelAvailableItem(sceneId, selfId, Mat.ID, nCount)
		if ret ~= 1 then
			return 0
		end
	end

	return 1
end

----------------------------------------------------------------------------------------
--	�ϳɳɹ�,������Ʒ
----------------------------------------------------------------------------------------
function x700946_AbilityProduce(sceneId, selfId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x700946_g_AbilityID)

	-- �����m�t c�i�� [1, 10000]
	rand = random(10000)

	for i, item in x700946_g_ChanPin do
		if item.Odds >= rand then
			Quality = CallScriptFunction( ABILITYLOGIC_ID, "CalcQuality", sceneId, x700946_g_RecipeLevel, AbilityLevel, x700946_g_AbilityMaxLevel,item.ID )

			local pos = LuaFnTryRecieveItem(sceneId, selfId, item.ID,QUALITY_MUST_BE_CHANGE)
			if pos ~= -1 then
				LuaFnSetItemCreator( sceneId, selfId, pos, LuaFnGetName( sceneId, selfId ) )
			else
				return OR_ERROR
			end

			LuaFnAuditAbility( sceneId, selfId, x700946_g_AbilityID, x700946_g_RecipeID, Quality )
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, x700946_g_AbilityID, x700946_g_RecipeID, item.ID )
			return OR_OK
		end
		LuaFnAuditAbility( sceneId, selfId, x700946_g_AbilityID, x700946_g_RecipeID, 0 )
	end

	return OR_ERROR
end