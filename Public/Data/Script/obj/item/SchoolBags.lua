--注意: 

--物品技能to� 鸬 逻辑只能使用基础技能和脚本来实现

--脚本:

--以下喧ng脚本样例:

------------------------------------------------------------------------------------------
--校服礼包to� 鸬 默认脚本

--脚本号
x889034_g_scriptId = 889034

x009034_SchoolBags = {{ID = 30504059, BagsSpaces =3,FailNotify ="#{TSJH_090224_12}",SucessNotify ="#{TSJH_090224_13}"},
											{ID = 30504060, BagsSpaces =5,FailNotify ="#{TSJH_090224_14}",SucessNotify ="#{TSJH_090224_15}"},
											{ID = 30504061, BagsSpaces =4,FailNotify ="#{TSJH_090224_16}",SucessNotify ="#{TSJH_090224_17}"},
											{ID = 30504062, BagsSpaces =4,FailNotify ="#{TSJH_090224_18}",SucessNotify ="#{TSJH_090224_19}"},
											{ID = 30504063, BagsSpaces =2,FailNotify ="#{TSJH_090224_20}",SucessNotify ="#{TSJH_090224_22}"},
											{ID = 30504064, BagsSpaces =4,FailNotify ="#{TSJH_090224_23}",SucessNotify ="#{TSJH_090224_24}"},
											{ID = 30504065, BagsSpaces =5,FailNotify ="#{TSJH_090224_25}",SucessNotify ="#{TSJH_090224_26}"},
									}


--奖励物品列表
x889034_Gift ={}
x889034_Gift[1] ={30504060,10124141,10141805,30308035}
x889034_Gift[2] ={30504061,30505215,30504068,30309748,30504066,30504067}
x889034_Gift[3] ={30504062,31000005,30008027,30607000,30504055}
x889034_Gift[4] ={30504063,30008027,30504038,30504038,30505217,30504056}
x889034_Gift[5] ={30504064,30008044,20307002,20109004,20109004,20109004,30504057}
x889034_Gift[6] ={30509500,31000001,30504040,30504041,30504058}
x889034_Gift[7] ={30509500,30008044,30504040,30504041,30505076,10124141}
--**********************************
--事件交互入口
--**********************************
function x889034_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不C C醝 n鄖 接口,但要保留空函数
end

--**********************************
--C醝 n鄖 物品to� 鸬 使用过程喧ng否类似于技能: 
--H� th痭g会T読 执行开始时检测C醝 n鄖 函数to� 鸬 Tr� v�,如果Tr� v玹h b読则忽略后面to� 鸬 类似技能to� 鸬 执行.
--Tr� v�1: 技能类似to� 鸬 物品,可以继续类似技能to� 鸬 执行；Tr� v�0: 忽略后面to� 鸬 操作.
--**********************************
function x889034_IsSkillLikeScript( sceneId, selfId)
	return 1; --C醝 n鄖 脚本C 动作支持
end

--**********************************
--直接Hu� b鲂Ч�: 
--H� th痭g会直接调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 已经Hu� b龆杂πЧ�,不再执行后续操作；Tr� v�0: 没有检测到相关效果,继续执行.
--**********************************
function x889034_CancelImpacts( sceneId, selfId )
	return 0; --不C C醝 n鄖 接口,但要保留空函数,并且始终Tr� v�0.
end

--**********************************
--条件检测入口: 
--H� th痭g会T読 技能检测to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 条件检测通过,可以继续执行；Tr� v�0: 条件检测th b読,中断后续执行.
--**********************************
function x889034_OnConditionCheck( sceneId, selfId )
	
	--校验使用to� 鸬 物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	-- 鹫t 疬㧟物品ID
	local Item = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local iIndex = -1
	for i=1,getn(x009034_SchoolBags) do
		if (x009034_SchoolBags[i].ID == Item) then
			iIndex = i
		end
	end
	
	if (iIndex ==-1) then
		return 0
	end

	--检测背包空间喧ng否足够
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x009034_SchoolBags[iIndex].BagsSpaces ) then
	   local strNotice = x009034_SchoolBags[iIndex].FailNotify
		 x889034_MsgBox( sceneId, selfId, strNotice)
	   return 0
	end
	
	--40c礼包有材料栏to� 鸬 物品
	if (iIndex ==5 ) then
		FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 4 ) then
	   local strNotice = "#{TSJH_090224_21}"
		 x889034_MsgBox( sceneId, selfId, strNotice)
	   return 0
	end
	end
	
	return 1; --不C 任何条件,并且始终Tr� v�1.
end

--**********************************
--消耗检测及处理入口: 
--H� th痭g会T読 技能消耗to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 消耗处理通过,可以继续执行；Tr� v�0: 消耗检测th b読,中断后续执行.
--注意: 这不光负责消耗to� 鸬 检测也负责消耗to� 鸬 执行.
--**********************************
function x889034_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--只会执行m祎 次入口: 
--聚气和瞬发技能会T読 消耗完成后调用C醝 n鄖 接口(聚气结束并且各种条件都Th鯽 m鉵to� 鸬 时候),而引导
--技能也会T読 消耗完成后调用C醝 n鄖 接口(技能to� 鸬 m祎 开始,消耗成功执行之后).
--Tr� v�1: 处理成功；Tr� v�0: 处理th b読.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x889034_OnActivateOnce( sceneId, selfId )

	-- 鹫t 疬㧟物品ID
	local Item = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local iIndex = -1
	for i=1,getn(x009034_SchoolBags) do
		if (x009034_SchoolBags[i].ID == Item) then
			iIndex = i
		end
	end
	
	if (iIndex ==-1) then
		return 0
	end
	
		--给玩家每c醝礼包to� 鸬 礼物
	BeginAddItem( sceneId )
	for i, v in x889034_Gift[iIndex] do
			local bagpos01 = TryRecieveItem( sceneId, selfId, v, 9 )								-- 放不下就没有了
			LuaFnItemBind( sceneId, selfId, bagpos01 )
	end
	x889034_MsgBox( sceneId, selfId, x009034_SchoolBags[iIndex].SucessNotify)
	
	AuditUseSChoolBags(sceneId, selfId,iIndex,LuaFnGetSex(sceneId,selfId))
	return 1;
end

--**********************************
--引导心跳处理入口: 
--引导技能会T読 每次心跳结束时调用C醝 n鄖 接口.
--Tr� v�: 1继续下次心跳；0: 中断引导.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x889034_OnActivateEachTick( sceneId, selfId)
	return 1; --不喧ng引导性脚本, 只保留空函数.
end

--**********************************
--醒目信息提示
--**********************************
function x889034_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
