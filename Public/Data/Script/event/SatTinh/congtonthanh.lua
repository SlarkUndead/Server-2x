--Th§p nh¸ Sát Tinh
--Công Tôn Thánh
--Author: Hoàng Steven

--******************--
x910102_g_ScriptId=910102
--******************--
x910102_g_Boss_Name="Công Tôn Thánh"															--Tên cüa BOSS
--******************--
x910102_g_Next_Time_Call_Avarta=1																--Th¶i gian g÷i bän sao m¾i
x910102_g_Next_Time_Use_Skill_1=2																--Th¶i gian t¾i sØ døng kÛ nång s¯ 1
x910102_g_Next_Time_Use_Skill_2=3																--Th¶i gian t¾i sØ døng kÛ nång s¯ 2
x910102_g_Next_Time_Use_Skill_3=4																--Th¶i gian t¾i sØ døng kÛ nång s¯ 3
--******************--
x910102_g_Recall_Time=30000																		--Nªu tiêu di®t 1 bän sao thì sau th¶i gian này bän còn lÕi s¨ tñ phân thân tiªp
--******************--
x910102_g_Avarta_Index=13713																	--ID cüa bän sao
--******************--
x910102_g_Skill_Avarta=1321																		--Phân thân phù
--******************--
x910102_g_Skill_1=1322																			--Ð¸nh thân phù
x910102_g_Skill_1_CD=20000																		--Th¶i gian giãn cách kÛ nång Ð¸nh thân phù
x910102_g_Skill_1_Impact=9751																	--Hi®u Ñng Ð¸nh thân phù
x910102_g_Skill_2=1323																			--Phong huy®t phù
x910102_g_Skill_2_CD=25000																		--Th¶i gian giãn cách kÛ nång Phong huy®t phù
x910102_g_Skill_2_Impact=9752																	--Hi®u Ñng Phong huy®t phù
x910102_g_Skill_3=1324																			--Hôn thøy phù
x910102_g_Skill_3_CD=40000																		--Th¶i gian giãn cách kÛ nång Hôn thøy phù
x910102_g_Skill_3_Impact=9750																	--Hi®u Ñng Hôn thøy phù
--******************--
x910102_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="M¤y tên ðáng ghét này. Lão phu không dÕy các ngß½i mµt bài h÷c thì không xong...",		--Boss m¾i xu¤t hi®n
	[2]="Ha ha... Các ngß½i trúng kª cüa lão phu r°i. Mu¯n giªt ta à. D­ thª sao... Ha ha...",	--Tri®u t§p Phân thân
	[3]=x910102_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[4]="Lû các ngß½i s¨ b¸ tr¶i tru ð¤t di®t, chªt không toàn thây...!",						--Boss tØ nÕn
	[5]="Lû các ngß½i nghî ta d­ chªt thª sao... Ha ha... Lão phu ðây này...!",					--Boss nói khi bän sao vçn còn s¯ng
	[6]="%s, v¾i cái Ð¸nh Thân Phù này, ngß½i nên ðÑng ðó ch¶ chªt ði, ð×ng hòng chÕy!",		--Boss nói khi ngß¶i ch½i dính Ð¸nh Thân Phù
	[7]="%s, v¾i cái Phong Huy®t Phù này, ngß½i ð×ng hòng chÕy thoát khöi tay lão phu!",		--Boss nói khi ngß¶i ch½i dính Phong Huy®t Phù
	[8]="%s, ngü ði nào... Ð¬ lão phu ru ngß½i ngü nhé!",										--Boss nói khi ngß¶i ch½i dính Hôn Thøy Phù
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910102_OnInit(sceneId,selfId)

	--******************--
	x910102_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	local Current_Hitpoint=GetHp(sceneId,selfId)												--Hp hi®n tÕi cüa Boss
	local Total_Hitpoint=GetMaxHp(sceneId,selfId)												--Hp thßþng hÕn cüa Boss
	if Current_Hitpoint~=Total_Hitpoint then													--Ðây là phân thân m¾i ðßþc g÷i ra
		return
	end
	--******************--
	MonsterTalk(sceneId,selfId,"",x910102_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910102_GlobalNews(sceneId,x910102_g_Monster_Dialogue[3])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910102_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910102_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không, nªu không còn thì Boss tñ reset
	if nCheck==0 then
		x910102_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		x910102_DeleteMyAvarta(sceneId)															--Xóa bän sao
		return
	end
	--******************--
	x910102_UseMySkills(sceneId,selfId,nTick)													--Boss sØ døng các kÛ nång
	--******************--
	local Recall_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Call_Avarta)--Th¶i gian g÷i bän sao
	if Recall_Time~=99999999 and Recall_Time>0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Call_Avarta,Recall_Time-nTick)--C§p nh§t th¶i gian tÕo bän sao
	end
	--******************--
	local nBoss=x910102_CheckMyAvarta(sceneId)													--Ðªm s¯ bän sao cüa Boss
	if nBoss>=2 then
		return
	end
	--******************--
	local Current_Hitpoint=GetHp(sceneId,selfId)												--Hp hi®n tÕi cüa Boss
	local Total_Hitpoint=GetMaxHp(sceneId,selfId)												--Hp thßþng hÕn cüa Boss
	local Recall_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Call_Avarta)--Th¶i gian g÷i bän sao
	if Current_Hitpoint/Total_Hitpoint<=0.5 and (Recall_Time<=0 or Recall_Time==99999999) then	--Boss ðã m¤t nØa ¯ng máu ho£c giªt chªt 1 bän sao nhßng sau mµt khoäng th¶i gian không giªt ðßþc bän sao còn lÕi
		x910102_CreatMyAvarta(sceneId,selfId)													--TÕo bän sao m¾i cùng mÑc máu hi®n tÕi
	end
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910102_CheckCondition(sceneId,selfId,enmeyId)

	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L¤y t÷a ðµ hi®n tÕi cüa Boss
	local PlayerList={}
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ hi®n tÕi cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=100 then						--Nªu ngß¶i ch½i vçn ðÑng g¥n Boss
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
function x910102_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910102_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910102_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910102_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	x910102_DeleteMyAvarta(sceneId)																--Xóa bän sao
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910102_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Lû chªt nhát nhß ngß½i mà cûng phäi ð¬ lão phu ra tay hä "..PlayerName.."... M¤y tên khác thª nào, ðªn cä ðây ð¬ lão phu ti­n các ngß½i v« MÕnh Bà luôn mµt th¬... Ha ha...!")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910102_OnDie(sceneId,selfId,killerId)

	--******************--
	local Recall_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Call_Avarta)--Th¶i gian g÷i bän sao
	if Recall_Time>0 and Recall_Time~=99999999 then
		MonsterTalk(sceneId,selfId,"",x910102_g_Monster_Dialogue[4])							--Câu nói cüa Boss lúc chªt khi không còn bän sao nào
		x910102_GiveAllHumanRank(sceneId,killerId)												--C§p nh§t s¯ l¥n th¡ng Boss cho t¤t cä ngß¶i ch½i
		local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
		LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
		if nBoss-1==0 then
			LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
		end
	else
		local My_Avarta=0
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if GetName(sceneId,MonsterId)==x910102_g_Boss_Name and LuaFnIsCharacterLiving(sceneId,MonsterId) and MonsterId~=selfId then--Nªu bän sao còn s°ng
				My_Avarta=MonsterId																--ID bän sao còn lÕi
				break
			end
		end
		MonsterTalk(sceneId,My_Avarta,"",x910102_g_Monster_Dialogue[5])							--Câu nói cüa Boss lúc chªt khi bän sao vçn còn
	end
	--******************--
	local My_Avarta=0
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if GetName(sceneId,MonsterId)==x910102_g_Boss_Name and LuaFnIsCharacterLiving(sceneId,MonsterId) and MonsterId~=selfId then--Nªu bän sao còn s°ng
			My_Avarta=MonsterId																--ID bän sao còn lÕi
			break
		end
	end
	--******************--
	if My_Avarta~=0 then																		--Nªu còn t°n tÕi bän sao
		MonsterAI_SetIntParamByIndex(sceneId,My_Avarta,x910102_g_Next_Time_Call_Avarta,x910102_g_Recall_Time)--Th¶i gian g÷i bän sao m¾i
	end
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910102_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_CONGTONTHANH)
			SetMissionData(sceneId,nHumanId,SHENGSI_CONGTONTHANH,Last_Time+1)					--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910102_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910102_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Call_Avarta,99999999)			--Th¶i gian g÷i bän sao m¾i
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_1,x910102_g_Skill_1_CD)--Th¶i gian t¾i sØ døng kÛ nång s¯ 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_2,x910102_g_Skill_2_CD)--Th¶i gian t¾i sØ døng kÛ nång s¯ 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_3,x910102_g_Skill_3_CD)--Th¶i gian t¾i sØ døng kÛ nång s¯ 3
	--******************--
	
end
--**********************************--
--*         Use My Skills          *--
--**********************************--
function x910102_UseMySkills(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_1)		--L¤y th¶i gian lãnh khß¾c hi®n tÕi cüa kÛ nång s¯ 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_1,Time_Skill_1-nTick)		--C§p nh§t th¶i gian lãnh khß¾c kÛ nång s¯ 1
	if Time_Skill_1<0 then
		x910102_UseSkill1(sceneId,selfId)																--SØ døng kÛ nång s¯ 1
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_1,x910102_g_Skill_1_CD)--C§p nh§t th¶i gian lãnh khß¾c cho kÛ nång s¯ 1
	end
	--******************--
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_2)		--L¤y th¶i gian lãnh khß¾c hi®n tÕi cüa kÛ nång s¯ 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_2,Time_Skill_2-nTick)		--C§p nh§t th¶i gian lãnh khß¾c kÛ nång s¯ 2
	if Time_Skill_2<0 then
		x910102_UseSkill2(sceneId,selfId)																--SØ døng kÛ nång s¯ 2
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_2,x910102_g_Skill_2_CD)--C§p nh§t th¶i gian lãnh khß¾c cho kÛ nång s¯ 2
	end
	--******************--
	local Time_Skill_3=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_3)		--L¤y th¶i gian lãnh khß¾c hi®n tÕi cüa kÛ nång s¯ 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_3,Time_Skill_3-nTick)		--C§p nh§t th¶i gian lãnh khß¾c kÛ nång s¯ 3
	if Time_Skill_3<0 then
		x910102_UseSkill3(sceneId,selfId)																--SØ døng kÛ nång s¯ 3
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Use_Skill_3,x910102_g_Skill_3_CD)--C§p nh§t th¶i gian lãnh khß¾c cho kÛ nång s¯ 3
	end
	--******************--
	
end
--**********************************--
--*          Use Skill 1           *--
--**********************************--
function x910102_UseSkill1(sceneId,selfId)

	--******************--
	local Human_List={}
	local nSize=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			nSize=nSize+1
			Human_List[nSize]=nHumanId
		end
	end
	--******************--
	local Victim=Human_List[random(nSize)]														--L¤y nÕn nhân ngçu nhiên s¨ dính kÛ nång này
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910102_g_Skill_1,x,y,Victim,1)							--Boss sØ døng kÛ nång s¯ 1 lên nÕn nhân
	--******************--
	local nTalk=format(x910102_g_Monster_Dialogue[6],GetName(sceneId,Victim))
	MonsterTalk(sceneId,selfId,"",nTalk)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Victim,Victim,Victim,x910102_g_Skill_1_Impact,0)		--Hi®u Ñng kÛ nång 1
	--******************--
	
end
--**********************************--
--*          Use Skill 2           *--
--**********************************--
function x910102_UseSkill2(sceneId,selfId)

	--******************--
	local Human_List={}
	local nSize=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			nSize=nSize+1
			Human_List[nSize]=nHumanId
		end
	end
	--******************--
	local Victim=Human_List[random(nSize)]														--L¤y nÕn nhân ngçu nhiên s¨ dính kÛ nång này
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910102_g_Skill_2,x,y,Victim,1)							--Boss sØ døng kÛ nång s¯ 2 lên nÕn nhân
	--******************--
	local nTalk=format(x910102_g_Monster_Dialogue[7],GetName(sceneId,Victim))
	MonsterTalk(sceneId,selfId,"",nTalk)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Victim,Victim,Victim,x910102_g_Skill_2_Impact,0)		--Hi®u Ñng kÛ nång 2
	--******************--
	
end
--**********************************--
--*          Use Skill 3           *--
--**********************************--
function x910102_UseSkill3(sceneId,selfId)

	--******************--
	local Human_List={}
	local nSize=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			nSize=nSize+1
			Human_List[nSize]=nHumanId
		end
	end
	--******************--
	local Victim=Human_List[random(nSize)]														--L¤y nÕn nhân ngçu nhiên s¨ dính kÛ nång này
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910102_g_Skill_3,x,y,Victim,1)							--Boss sØ døng kÛ nång s¯ 3 lên nÕn nhân
	--******************--
	local nTalk=format(x910102_g_Monster_Dialogue[8],GetName(sceneId,Victim))
	MonsterTalk(sceneId,selfId,"",nTalk)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Victim,Victim,Victim,x910102_g_Skill_3_Impact,0)		--Hi®u Ñng kÛ nång 3
	--******************--
	
end
--**********************************--
--*        Creat My Avarta         *--
--**********************************--
function x910102_CreatMyAvarta(sceneId,selfId)

	--******************--
	local My_Level=GetLevel(sceneId,selfId)														--L¤y level cüa Boss
	local nDec=-2
	if My_Level>=80 and My_Level<90 then
		nDec=0
	elseif My_Level>=90 and My_Level<100 then
		nDec=1
	elseif My_Level>=100 and My_Level<110 then
		nDec=2
	elseif My_Level>=110 and My_Level<120 then
		nDec=3
	else
		nDec=4
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910102_g_Skill_Avarta,x,y,0,1)							--Boss sØ døng kÛ nång ð¬ phân thân
	local Avarta_Index=LuaFnCreateMonster(sceneId,x910102_g_Avarta_Index+nDec,x+random(2)-random(2),y+random(2)-random(2),27,0,x910102_g_ScriptId)--TÕo bän sao m¾i
	--******************--
	local Current_Hitpoint=GetHp(sceneId,selfId)												--Hp hi®n tÕi cüa Boss
	SetHp(sceneId,Avarta_Index,Current_Hitpoint)												--Set Hp cho bän sao ðúng b¢ng cüa Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910102_g_Next_Time_Call_Avarta,99999999)		--Th¶i gian g÷i bän sao m¾i
	--******************--
	MonsterTalk(sceneId,selfId,"",x910102_g_Monster_Dialogue[2])								--Boss nói lúc g÷i bän sao
	--******************--
	
end
--**********************************--
--*        Check My Avarta         *--
--**********************************--
function x910102_CheckMyAvarta(sceneId)

	--******************--
	local Result=0
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910102_g_Boss_Name then
			Result=Result+1
		end
	end
	--******************--
	return Result
	--******************--
	
end
--**********************************--
--*        Delete My Avarta        *--
--**********************************--
function x910102_DeleteMyAvarta(sceneId)

	--******************--
	local Res=0
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910102_g_Boss_Name then
			if Res==0 then
				Res=1
			else
				SetCharacterDieTime(sceneId,selfId,100)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910102_GlobalNews(sceneId,Tips)

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