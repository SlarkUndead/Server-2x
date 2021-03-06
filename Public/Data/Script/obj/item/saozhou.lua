--注意: 

--物品技能to� 鸬 逻辑只能使用基础技能和脚本来实现

--脚本号
x300020_g_ScriptId = 300020

--任务号
x300020_g_MissionId = 1060

x300020_g_Impact = 213

x300020_g_TreasureAddress = {{scene=9,x1=84,x2=108,z1=64,z2=86},
						{scene=9,x1=122,x2=146,z1=132,z2=159},
						{scene=9,x1=89,x2=102,z1=110,z2=137},
						{scene=9,x1=54,x2=83,z1=52,z2=71}}

--**********************************
--事件交互入口
--**********************************
function x300020_OnDefaultEvent( sceneId, selfId, bagIndex )
--扫帚
end

--**********************************
--C醝 n鄖 物品to� 鸬 使用过程喧ng否类似于技能: 
--H� th痭g会T読 执行开始时检测C醝 n鄖 函数to� 鸬 Tr� v�,如果Tr� v玹h b読则忽略后面to� 鸬 类似技能to� 鸬 执行.
--Tr� v�1: 技能类似to� 鸬 物品,可以继续类似技能to� 鸬 执行；Tr� v�0: 忽略后面to� 鸬 操作.
--**********************************
function x300020_IsSkillLikeScript( sceneId, selfId)
	return 1; --C醝 n鄖 脚本C 动作支持
end

--**********************************
--直接Hu� b鲂Ч�: 
--H� th痭g会直接调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 已经Hu� b龆杂πЧ�,不再执行后续操作；Tr� v�0: 没有检测到相关效果,继续执行.
--**********************************
function x300020_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--条件检测入口: 
--H� th痭g会T読 技能检测to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 条件检测通过,可以继续执行；Tr� v�0: 条件检测th b読,中断后续执行.
--**********************************
function x300020_OnConditionCheck( sceneId, selfId )
	local x,z = GetWorldPos( sceneId, selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x300020_g_MissionId)
	if	sceneId ~= x300020_g_TreasureAddress[1].scene  then
		Msg2Player( sceneId,selfId,"B痠 c鋘h n鄖 kh鬾g th� ti猲 h鄋h d鱪 d﹑",MSG2PLAYER_PARA) --通知玩家
		return 0
	elseif	IsHaveMission(sceneId,selfId,x300020_g_MissionId) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,4) == 1  then
			if	x>x300020_g_TreasureAddress[1].x1  and  x<x300020_g_TreasureAddress[1].x2  and  z>x300020_g_TreasureAddress[1].z1  and  z<x300020_g_TreasureAddress[1].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"姓i 餴畁 疸 疬㧟 d鱪 d﹑ s誧h s� r癷",MSG2PLAYER_PARA) --通知玩家
					return 0
				else
					Msg2Player( sceneId,selfId,"C醕 h� b 馥u d鱪 d﹑ 鹫i 餴畁...",MSG2PLAYER_PARA) --通知玩家
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C: 姓i 餴畁",MSG2PLAYER_PARA) --通知玩家
				return 0
			end
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 2  then
			if  x>x300020_g_TreasureAddress[2].x1  and  x<x300020_g_TreasureAddress[2].x2  and  z>x300020_g_TreasureAddress[2].z1  and  z<x300020_g_TreasureAddress[2].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"T鄋g Kinh C醕 疸 疬㧟 d鱪 d﹑ s誧h s� r癷",MSG2PLAYER_PARA) --通知玩家
					return 0
				else
					Msg2Player( sceneId,selfId,"C醕 h� b 馥u d鱪 d﹑ T鄋g Kinh C醕...",MSG2PLAYER_PARA) --通知玩家
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C:T鄋g Kinh C醕",MSG2PLAYER_PARA) --通知玩家
				return 0
			end
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 3  then
			if  x>x300020_g_TreasureAddress[3].x1  and  x<x300020_g_TreasureAddress[3].x2  and  z>x300020_g_TreasureAddress[3].z1  and  z<x300020_g_TreasureAddress[3].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >=1  then
					Msg2Player( sceneId,selfId,"S絥 M鬾 疸 疬㧟 d鱪 d﹑ s誧h s� r癷",MSG2PLAYER_PARA) --通知玩家
					return 0
				else
					Msg2Player( sceneId,selfId,"C醕 h� b 馥u d鱪 d﹑ S絥 M鬾...",MSG2PLAYER_PARA) --通知玩家
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C: S絥 M鬾",MSG2PLAYER_PARA) --通知玩家
				return 0
			end		
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 4  then
			if  x>x300020_g_TreasureAddress[4].x1  and  x<x300020_g_TreasureAddress[4].x2  and  z>x300020_g_TreasureAddress[4].z1  and  z<x300020_g_TreasureAddress[4].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"Th醦 鸢ng h� 疸 疬㧟 d鱪 d﹑ s誧h s� r癷.",MSG2PLAYER_PARA) --通知玩家
					return 0
				else
					Msg2Player( sceneId,selfId,"C醕 h� b 馥u d鱪 d﹑ th醦 鸢ng h�...",MSG2PLAYER_PARA) --通知玩家
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C: th醦 鸢ng h�",MSG2PLAYER_PARA) --通知玩家
				return 0
			end
		end
	else
		return 0
	end
end

--**********************************
--消耗检测及处理入口: 
--H� th痭g会T読 技能消耗to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 消耗处理通过,可以继续执行；Tr� v�0: 消耗检测th b読,中断后续执行.
--注意: 这不光负责消耗to� 鸬 检测也负责消耗to� 鸬 执行.
--**********************************
function x300020_OnDeplete( sceneId, selfId )
	return 1; --不消耗
end

--**********************************
--只会执行m祎 次入口: 
--聚气和瞬发技能会T読 消耗完成后调用C醝 n鄖 接口(聚气结束并且各种条件都Th鯽 m鉵to� 鸬 时候),而引导
--技能也会T読 消耗完成后调用C醝 n鄖 接口(技能to� 鸬 m祎 开始,消耗成功执行之后).
--Tr� v�1: 处理成功；Tr� v�0: 处理th b読.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x300020_OnActivateOnce( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x300020_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5900, 0);
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	BeginEvent(sceneId)
		AddText(sceneId,"Qu閠 d鱪 xong, nhi甿 v� 疸 ho鄋 th鄋h!")
	EndEvent( )
	DispatchMissionTips(sceneId,selfId)
	Msg2Player( sceneId,selfId,"D鱪 dep s誧h s� r癷, nhi甿 v� ho鄋 th鄋h",MSG2PLAYER_PARA) --通知玩家
	return 1;
end

--**********************************
--引导心跳处理入口: 
--引导技能会T読 每次心跳结束时调用C醝 n鄖 接口.
--Tr� v�: 1继续下次心跳；0: 中断引导.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x300020_OnActivateEachTick( sceneId, selfId)
	return 1; --不喧ng引导性脚本, 只保留空函数.
end
