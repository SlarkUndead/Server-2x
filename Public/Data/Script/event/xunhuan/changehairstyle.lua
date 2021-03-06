--调整发型
--脚本号
x801010_g_ScriptId = 801010

--调整发型UI 21

--**********************************
--列举事件
--**********************************
function x801010_OnEnumerate( sceneId, selfId, targetId )
	-- 调试信息
	--BeginEvent(sceneId)
	--	AddText(sceneId, "进入调整发型脚本");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)		

	-- 为什么要 NPC T阯?
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 21)
	return

end


--**********************************
--调整发型
--**********************************
function x801010_FinishAdjust( sceneId, selfId, styleId)

	-- 发型未选中或选中无效
	if styleId < 0 then														
		BeginEvent(sceneId)
			AddText(sceneId, "Thay 鸨i ki瑄 t骳 th鄋h c鬾g");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--  餴琺到调整发型所需物品to� 鸬 id及其数量
	local ItemId, ItemCount = GetChangeHairItemIdAndItemCount(styleId)
	
	-- Tr� v捣欠�
	if ItemId < 0 or ItemCount < 0 then		
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- 物品喧ng否够用或锁定
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "Kh鬾g c� ph醫 h靚h 鸢 ho ph醫 h靚h 鸬 疸 kho�!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- 物品检测通过,再检查玩家金钱
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- 物品和金钱检测都通过
	if (moneyJZ + money >= 50000)	then
		-- 设置玩家新发型(会T読 C醝 n鄖 过程中消耗物品和金钱)
		local ret = LuaFnChangeHumanHairModel( sceneId, selfId, styleId )
		if ret == 0 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Thay 鸨i ki瑄 t骳 th鄋h c鬾g.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		-- 以下为操作th b読时to� 鸬 错误信息
		elseif ret == 1  then														--所选to� 鸬 发型与玩家当前to� 鸬 发型m祎 致
			BeginEvent(sceneId)
				AddText(sceneId, "请选择m祎 种和你当前不同to� 鸬 发型.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then														--没有C 消耗to� 鸬 物品或该物品被锁定
			BeginEvent(sceneId)
				AddText(sceneId, "Kh鬾g c� ph醫 h靚h 鸢 ho ph醫 h靚h 鸬 疸 kho�!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then														
			BeginEvent(sceneId)
				AddText(sceneId, "Kh鬾g 瘘 ng鈔 l唼ng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- Kh鬾g 瘘 ng鈔 l唼ng.
	else
		BeginEvent(sceneId)
			AddText(sceneId, "Kh鬾g 瘘 ng鈔 l唼ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- 发送m祎 条随机to� 鸬 广播消息
	local message;	
	local randMessage = random(3);
		
	if randMessage == 1 then	
		message = format("#{FaXing_00}#{_INFOUSR%s}#{FaXing_01}", LuaFnGetName(sceneId, selfId));
	elseif randMessage == 2 then
		message = format("#{FaXing_02}#{_INFOUSR%s}#{FaXing_03}", LuaFnGetName(sceneId, selfId));
	else
		message = format("#{FaXing_04}#{_INFOUSR%s}#{FaXing_05}", LuaFnGetName(sceneId, selfId));
	end
		
	BroadMsgByChatPipe(sceneId, selfId, message, 4);
	
end
