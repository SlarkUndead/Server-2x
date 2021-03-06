--姓i L齆PC
--余助之
--普通

x002088_g_ScriptId	= 002088

--操作集
x002088_g_Key				=
{
		["mis"]					= 100,	--我想删除所有to� 鸬 任务
		["itm"]					= 101,	--我想删除任务道具
		["do"]					= 102,	--确认删除所有to� 鸬 任务
}

-- C T読 删除所有任务to� 鸬 时候,同时删除to� 鸬 任务物品to� 鸬 列表
x002088_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,	
		40004465, 40004462, 40004463, 40004464,				--Nguy畉 L鉶葫芦,L竎h Th誧h,Th Di畃 Li阯,縩g Linh zchw						
}

--******************************************************
--事件交互入口
--******************************************************
function x002088_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta ph鴑g m畁h c黙 ho鄋g 皙 n呔c 姓i L�, 皙n 疴y 瓞 gi鷓 anh h鵱g trong thi阯 h� l鄊 nhi甿 v�. N猽 ng呓i mu痭 hu� 餴 t c� m鱥 nhi甿 v� trong danh s醕h nhi甿 v�, ho hu� 餴 m祎 鹫o c� nhi甿 v� n鄌 痼, ta 皤u c� th� gi鷓 疝. N鄌 ng呓i mu痭 l鄊 g�?" )
		AddNumText( sceneId, x002088_g_ScriptId, "Ta mu痭 x骯 t c� m鱥 nhi甿 v�", -1, x002088_g_Key["mis"] )
		AddNumText( sceneId, x002088_g_ScriptId, "Ta mu痭 x骯 鹫o c� nhi甿 v�", -1, x002088_g_Key["itm"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


function x002088_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
    local DayTime = GetDayTime()
    local LastTime = GetMissionData( sceneId, selfId, MD_NPC_DELMISSION ) --取出上次放弃时间
    
    if DayTime > LastTime then
        SetMissionData( sceneId, selfId, MD_NPC_DELMISSION, DayTime )
        return 1
    end
    
    return -1
    
end


--**********************************
--事件列表选中m祎 项
--**********************************
function x002088_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002088_g_Key["mis"]	then
		if GetMissionCount( sceneId, selfId ) <= 0 then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr阯 ng叨i ng呓i c錸 b鋘 kh鬾g c� nhi甿 v�!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  X骯 nhi甿 v� s� x骯 餴 t c� m鱥 nhi甿 v� tr阯 ng叨i, c� ch ch l� s� x骯 餴?" )
				AddNumText( sceneId, x002088_g_ScriptId, "Duy畉", -1, x002088_g_Key["do"] )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end

	elseif key == x002088_g_Key["itm"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )
		
	elseif key == x002088_g_Key["do"]	then
	    
	    local CanDel = x002088_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
	    if CanDel ~= 1 then
			BeginEvent( sceneId )
				AddText( sceneId, "L tr呔c c醕 h� t� b� nhi甿 v� � ch� t読 h� 皙n nay ch遖 瘘 24h, b鈟 gi� v鏽 kh鬾g th� gi鷓 c醕 h�." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
				        
	        return
	    end
	    
	  if IsHaveMission( sceneId, selfId, 1258 ) > 0 then --玄佛珠物品不能写列表里面,不然他删第m祎 环或第二环to� 鸬 时候也籐inh緈祎 c醝玄佛珠.doing 38427
	  	DelItem(sceneId, selfId, 40004454, 1)
	  end
	  
		DelAllMission( sceneId, selfId )
	  
	  -- C T読 删除任务to� 鸬 同时删除to� 鸬 任务物品
		for i, nItemId in x002088_g_MisItemList do
			--  鹫t 疬㧟C醝 n鄖 物品to� 鸬 数量
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				DelItem(sceneId, selfId, nItemId, nItemCount)
			end
		
		end
	    
		Msg2Player( sceneId, selfId, "#r秀 x骯 th鄋h c鬾g t c� m鱥 nhi甿 v�!", MSG2PLAYER_PARA )
		BeginEvent( sceneId )
			AddText( sceneId, "  秀 x骯 th鄋h c鬾g t c� m鱥 nhi甿 v�!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--******************************************************
--销毁任务物品
--由Client\Interface\MissionObjDel\MissionObjDel.lua发出
--******************************************************
function x002088_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end

	EraseItem( sceneId, selfId, posItem )
end
