--Nga MyNPC
--李十二娘
--普通

x015001_g_scriptId = 015001
x015001_g_eventList={226900,808004}
--**********************************
--事件交互入口
--**********************************
function x015001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L鉶 th鈔 l� L� Th Nh� N呓ng. #r#rCh叻ng m鬾 hi畁 餫ng ch錷 ch� nghi阯 c製 b� m c黙 朽o Hoa tr, m chuy畁 l v nh� nh h鱟 tr� th鈛 甬 t� 皤u do l鉶 th鈔 n鄖 cai qu鋘")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x015001_g_scriptId, "Gia nh m鬾 ph醝",6,0)
		end
		AddNumText(sceneId, x015001_g_scriptId, "Gi緄 thi畊 m鬾 ph醝",8,1)
		AddNumText(sceneId, x015001_g_scriptId, "H鱟 K� n錸g c黙 m鬾 ph醝?",8,6)		--指路到技能学习人
		for i, eventId in x015001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x015001_OnDefaultEvent( sceneId, selfId,targetId )
	x015001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x015001_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==0	then

		x015001_g_MenPai = GetMenPai(sceneId, selfId)
		if x015001_g_MenPai == 4 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ng呓i l読 t緄 qu r s� ph�, ng呓i 疸 l� 甬 t� ph醝 Nga My, c騨 b醝 s� g� n鎍")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x015001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng呓i 疸 l� cao 鸢 c黙 m鬾 ph醝 kh醕, ch鷑g ta kh鬾g thu nh ng呓i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_004}")
			AddNumText(sceneId, x015001_g_scriptId, "Ta mu痭 b醝 nh ph醝 Nga My",6,3)
			AddNumText(sceneId, x015001_g_scriptId, "T読 h� ch遖 mu痭 b醝 s�",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end

	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  H銀 s x猵 l読 tay n鋓, c 2 v� tr� tr痭g, ta s� th叻ng cho ng呓i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"C醕 h� h銀 瘙i t緄 sau c 10 l読 t緄 b醝 s� h鱟 ngh�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x015001_g_MenPai = GetMenPai(sceneId, selfId)
			if x015001_g_MenPai == 4 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ng呓i l読 t緄 qu r s� ph�, ng呓i 疸 l� 甬 t� ph醝 Nga My, c騨 b醝 s� g� n鎍")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--Tr� v滴�9表示无门派
			elseif x015001_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 4)

				-- 设置初始to� 鸬 Npc关系值
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )
				
				-- 把相关to� 鸬 心法设置为10c别  25,28,29
				LuaFnSetXinFaLevel(sceneId,selfId,25,10)
				LuaFnSetXinFaLevel(sceneId,selfId,28,10)
				LuaFnSetXinFaLevel(sceneId,selfId,29,10)
				
				BeginEvent(sceneId)
					AddText(sceneId,"C醕 h� 疸 gia nh ph醝 Nga My!");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				--给玩家发信,告诉他到哪里打怪,怎样赚钱
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_4}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_emei_0001}" )
				
				--门派奖励召集令
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x015001_MsgBox( sceneId, selfId, "L 疬㧟 20 t Chi陁 t l畁h c黙 m鬾 ph醝" )
				
				if TryRecieveItem( sceneId, selfId, 10124003, 1 ) >= 0 then
					str		= "#YC醕 h� 疸 nh 疬㧟 "..GetItemName( sceneId, 10124003 ).."."
					x015001_MsgBox( sceneId, selfId, str )
				end

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"C醕 h� 疸 gia nh ph醝 Nga My!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 164, 0)
					CallScriptFunction( 226900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"C醕 h� 疸 gia nh ph醝 Nga My!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 164, 0)
					CallScriptFunction( 226900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ng呓i 疸 l� cao 鸢 c黙 m鬾 ph醝 kh醕, ch鷑g ta kh鬾g thu nh ng呓i")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_emei_0002}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		for i, findId in x015001_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_EMEI )
				return
			end
		end
	end
	--指路
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Th鬷 L鴆 Hoa [98,51] c� th� d誽 ng呓i k� n錸g chi猲 黏u c黙 ph醝 ta, 鬾g ta � ngay b阯 c課h ")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 98, 51, "崔绿华" )
		return
	end
end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x015001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015001_g_eventList do
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
--拒绝此NPCto� 鸬 任务
--**********************************
function x015001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
	for i, findId in x015001_g_eventList do
		if missionScriptId == findId then
			x015001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续(已经接了任务)
--**********************************
function x015001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x015001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x015001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x015001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--消息提示
--**********************************
function x015001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
