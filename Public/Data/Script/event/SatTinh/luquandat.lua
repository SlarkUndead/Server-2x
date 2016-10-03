--Thßp nh∏ S·t Tinh
--Lﬂ Qu‚n Dßt
--Author: Ho‡ng Steven

--******************--
x910105_g_ScriptId=910105
--******************--
x910105_g_Boss_Name="Lﬂ Qu‚n Dßt"																--TÍn c¸a BOSS
--******************--
x910105_g_Last_Time=1																			--Th∂i gian l•n trﬂæc ra k€ nÂng
--******************--
x910105_g_Skill_Armor=1307																		--K€ nÂng gi‰m s·t thﬂΩng
x910105_g_Impact_Armor=9768																		--ID c¸a hiÆu —ng gi‰m s·t thﬂΩng
x910105_g_Skill_Return_Attack=1308																--K€ nÂng ph‰n Ún
x910105_g_Impact_Return_Attack=9769																--ID c¸a hiÆu —ng ph‰n Ún
x910105_g_Skill_Weak=1309																		--K€ nÂng tÒ g‚y suy y™u c¸a Boss
x910105_g_Impact_Weak=9770																		--ID hiÆu —ng tÒ g‚y suy y™u c¸a Boss
--******************--
x910105_g_Cool_Down=30000																		--Th∂i gian l„nh khﬂæc m≤i l•n ra k€ nÂng
--******************--
x910105_g_Impact_Prepare=9777																	--–ang vßn khÌ
--******************--
x910105_g_Monster_Dialogue={																	--L∂i nÛi c¸a Boss
	[1]="C·c ngﬂ∂i ch·n sØng r∞i hay sao m‡ d·m khiÍu chi™n ta?",								--Boss khai chi™n
	[2]="ThiÍn Cang B· KhÌ ph¯ th¨. D·m ·nh ta, c·c ngﬂ∂i tÒ tÏm ﬂ∂ng ch™t r∞i...",			--Boss nhßn hiÆu —ng gi‰m s·t thﬂΩng v‡ ph‰n Ún
	[3]="ThiÍn Nh‚n Ng˚ Suy. Tr’ng th·i n‡y tuy cÛ hΩi b§t l˛i cho ta nhﬂng c·c ngﬂΩi ◊ng hÚng qua m£t ﬂ˛c...",--Boss nhßn hiÆu —ng Mi≠n d∏ch
	[4]=x910105_g_Boss_Name.." „ v‡o chi™n §u!",												--Boss v‡o chi™n §u
	[5]="Qu‰ nhiÍn vı cÙng cao cﬂ∂ng, chÔ ti™c l‡ do ta sΩ h∑, l•n n‡y c·c ngﬂΩi may m°n th°ng r∞i!",--Boss tÿ n’n
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910105_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910105_g_Monster_Dialogue[1])								--C‚u nÛi khai chi™n c¸a Boss
	x910105_GlobalNews(sceneId,x910105_g_Monster_Dialogue[4])									--ThÙng b·o Boss „ v‡o chi™n §u cho to‡n th¨ ngﬂ∂i chΩi
	x910105_ResetMyAI(sceneId,selfId)															--Set l’i c·c thuµc tÌnh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910105_OnHeartBeat(sceneId,selfId,nTick)												--H‡m n‡y s® check liÍn t¯c m≤i mili gi‚y khi n‡o Boss cÚn sØng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N™u Boss „ ch™t thÏ ng◊ng ho’t µng c¸a Script
		return
	end
	--******************--
	local nCheck=x910105_CheckCondition(sceneId,selfId)											--Ki¨m tra xem cÛ ngﬂ∂i chΩi n‡o —ng xung quanh boss khÙng
	if nCheck==0 then
		x910105_ResetMyAI(sceneId,selfId)														--Set l’i c·c thuµc tÌnh cho Boss
		return
	end
	--******************--
	local Last_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910105_g_Last_Time)			--Th∂i gian l•n trﬂæc Boss b∏ m§t m·u b∑i k€ nÂng c¸a KhÙ Vinh –’i Sﬂ
	if Last_Time>0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910105_g_Last_Time,Last_Time-nTick)		--Cßp nhßt l’i th∂i gian ra k€ nÂng
		if Last_Time<=5000 and Last_Time>0 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910105_g_Impact_Prepare)<1 then--–™n th∂i gian vßn khÌ
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910105_g_Impact_Prepare,0)	--B°t •u vßn khÌ
		end
	elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910105_g_Impact_Prepare)<1 and Last_Time<=0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910105_g_Last_Time,x910105_g_Cool_Down)	--Reset l’i th∂i gian l„nh khﬂæc
		local Ran=random(4)																		--Random væi t÷ lÆ 75% ﬂ˛c tr’ng th·i ph‰n Ún, hµ th¨ v‡ 25% b∏ hﬂ nhﬂ˛c
		if Ran==3 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910105_g_Impact_Weak,0)	--Boss ch∏u hiÆu —ng hﬂ nhﬂ˛c
			MonsterTalk(sceneId,selfId,"",x910105_g_Monster_Dialogue[3])						--Boss thÙng b·o b∏ hﬂ nhﬂ˛c
		else
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910105_g_Impact_Armor,0)--Boss nhßn hiÆu —ng hµ th¨
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910105_g_Impact_Return_Attack,0)--Boss nhßn hiÆu —ng ph‰n Ún
			MonsterTalk(sceneId,selfId,"",x910105_g_Monster_Dialogue[2])						--Boss thÙng b·o nhßn ﬂ˛c tr’ng th·i hµ th¨ v‡ ph‰n Ún
		end
	end
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910105_CheckCondition(sceneId,selfId,enmeyId)

	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L§y t˜a µ hiÆn t’i c¸a Boss
	local PlayerList={}
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L§y t˜a µ hiÆn t’i c¸a ngﬂ∂i chΩi
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=100 then						--N™u ngﬂ∂i chΩi vÁn —ng g•n Boss
			return 1
		end
	end
	--******************--
	return 0
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910105_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910105_ResetMyAI(sceneId,selfId)															--Set l’i c·c thuµc tÌnh cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910105_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910105_ResetMyAI(sceneId,selfId)															--Set l’i c·c thuµc tÌnh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910105_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","C·c h’ l‡m ta r§t th§t v˜ng Û "..PlayerName.."...")	--Boss ch™ di≠u ngﬂ∂i chΩi b∏ gi™t
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910105_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910105_g_Monster_Dialogue[5])								--C‚u nÛi c¸a Boss l˙c ch™t
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¨m tra xem cÛ bao nhiÍu Boss ang chi™n §u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Gi‰m sØ Boss ang chi™n §u xuØng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--Cßp nhßt th∂i gian g˜i Boss ti™p theo l‡ 30 gi‚y
	end
	--******************--
	x910105_GiveAllHumanRank(sceneId,killerId)													--Cßp nhßt rank cho ngﬂ∂i chΩi
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910105_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_LUQUANDAT)
			SetMissionData(sceneId,nHumanId,SHENGSI_LUQUANDAT,Last_Time+1)						--Cßp nhßt sØ l•n th°ng Boss cho ngﬂ∂i chΩi
			BeginEvent(sceneId)
				AddText(sceneId,"SØ l•n chi™n th°ng "..x910105_g_Boss_Name.." c¸a c·c h’ tÂng lÍn "..(Last_Time+1).." l•n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910105_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910105_g_Last_Time,x910105_g_Cool_Down)		--Th∂i gian l„nh khﬂæc k€ nÂng hiÆu —ng
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910105_GlobalNews(sceneId,Tips)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,Tips)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end