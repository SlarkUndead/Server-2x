--Th§p nh¸ Sát Tinh
--Quan Th¸nh
--Author: Hoàng Steven

--******************--
x910106_g_ScriptId=910106
--******************--
x910106_g_Boss_Name="Quan Th¸nh"																--Tên cüa BOSS
--******************--
x910106_g_Skill_Timer=1																			--Th¶i gian kÛ nång Di®t Thª Ðao Tr§n kªt hþp th¤t minh toàn th¬
--******************--
x910106_g_Skill_Vip=1315																		--KÛ nång Di®t Thª Ðao Tr§n
x910106_g_Impact_Support=5983																	--Hi®u Ñng th¤t minh 10 giây
x910106_g_Skill_CD=30000																		--Th¶i gian lãnh khß¾c cüa kÛ nång
x910106_g_Skill_Impact=9771																		--Hi®u Ñng rút 45% máu nªu ðÑng · khoäng cách xa h½n 5m so v¾i Boss
--******************--
x910106_g_Impact_Prepare=9777																	--Ðang v§n khí
--******************--
x910106_g_Skill_Distance_Affect=5																--Khoäng cách t¯i thi¬u t× ch² ngß¶i ch½i ðªn ch² Boss b¸ änh hß·ng b·i kÛ nång Di®t Thª Ðào Tr§n
--******************--
x910106_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="Dám khiêu chiªn Quan Th¸nh này, xem ra bän lînh cûng không vØa. Lãnh giáo!",			--Boss khai chiªn
	[2]="Di®t thª chi tr§n, cØu tØ nh¤t sinh... Các ngß½i ch¸u chªt ði!",						--Boss ra kÛ nång Di®t Thª Ðao Tr§n
	[3]=x910106_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[4]="Xem ra ta quá coi thß¶ng các ngß½i. Khá l¡m...",										--Boss tØ nÕn
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910106_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910106_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910106_GlobalNews(sceneId,x910106_g_Monster_Dialogue[3])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910106_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910106_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910106_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không
	if nCheck==0 then
		x910106_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		return
	end
	--******************--
	x910106_UseMySkill(sceneId,selfId,nTick)													--Boss sØ døng kÛ nång
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910106_CheckCondition(sceneId,selfId,enmeyId)

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
function x910106_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910106_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910106_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910106_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910106_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Các hÕ làm ta r¤t th¤t v÷ng ðó "..PlayerName.."...")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910106_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910106_g_Monster_Dialogue[4])								--Câu nói cüa Boss lúc chªt
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910106_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910106_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_QUANTHINH)
			SetMissionData(sceneId,nHumanId,SHENGSI_QUANTHINH,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910106_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910106_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910106_g_Skill_Timer,x910106_g_Skill_CD)		--Th¶i gian kÛ nång
	--******************--
	
end
--**********************************--
--*      Blind All My Enemies      *--
--**********************************--
function x910106_BlindAllMyEnemies(sceneId)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910106_g_Impact_Support,0)--Ngß¶i ch½i dính th¤t minh
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910106_g_Impact_Support,0)--Trân thú cûng b¸ dính hi®u Ñng th¤t minh
				break
			end
		end
	end
	--******************--	
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910106_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910106_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910106_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then
		x910106_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910106_g_Skill_Timer,x910106_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	elseif Time_Skill<=5000 and Time_Skill>4000 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910106_g_Impact_Prepare)<1 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910106_g_Impact_Prepare,0)	--Hi®u Ñng v§n công
		x910106_BlindAllMyEnemies(sceneId)														--Gây mù cho t¤t cä ngß¶i ch½i
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910106_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910106_g_Skill_Vip,x,y,0,1)								--Boss sØ døng kÛ nång qu¥n th¬ Di®t Thª Ðao Tr§n
	--******************--
	MonsterTalk(sceneId,selfId,"",x910106_g_Monster_Dialogue[2])								--Boss nói khi xu¤t chiêu
	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L¤y t÷a ðµ hi®n tÕi cüa Boss
	local Human_List={}
	local nPlayer=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ hi®n tÕi cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))>=x910106_g_Skill_Distance_Affect then--Ngß¶i ch½i này không trong phÕm vi an toàn
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910106_g_Skill_Impact,0)--Nh§n hi®u Ñng công kích cüa Di®t Thª Ðao Tr§n
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				local x,y=GetWorldPos(sceneId,Pet_Index)										--L¤y t÷a ðµ cüa trân thú này
				if floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))>=x910106_g_Skill_Distance_Affect then--Trân thú trong vùng kÛ nång
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910106_g_Skill_Impact,0)--Trân thú cûng b¸ dính kÛ nång nªu không trong phÕm vi an toàn
				end
				break
			end
		end
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910106_GlobalNews(sceneId,Tips)

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