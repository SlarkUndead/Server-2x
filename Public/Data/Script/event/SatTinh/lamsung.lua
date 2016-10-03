--Th§p nh¸ Sát Tinh
--Lâm Sung
--Author: Hoàng Steven

--******************--
x910109_g_ScriptId=910109
--******************--
x910109_g_Boss_Name="Lâm Sung"																	--Tên cüa BOSS
--******************--
x910109_g_Skill_Timer=1																			--Th¶i gian dùng kÛ nång cüa Boss
--******************--
x910109_g_Buff_Reduce_Victim_Res=9762															--Buff giäm Bång kháng cüa møc tiêu
x910109_g_Buff_Reduce_Self_Res=9775																--Bän thân sþ Höa công
--******************--
x910109_g_Skill=1317																			--KÛ nång Hàn Bång Chân Khí
x910109_g_Skill_CD=20000																		--Th¶i gian lãnh khß¾c cüa kÛ nång
x910109_g_Skill_Impact=9763																		--Hi®u Ñng tång Bång công
--******************--
x910109_g_Impact_Prepare=9777																	--Ðang v§n khí
--******************--
x910109_g_Skill_Distance_Affect=10																--Trong khoäng cách này, ngß¶i ch½i s¨ lînh nh§n Hàn Bång Chân Khí
--******************--
x910109_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="Các ngß½i ch¡c mu¯n nªm thØ Hàn Bång Chân Khí Cüa ta ðây. Chu¦n b¸ ðÞ ðòn ði!",		--Boss khai chiªn
	[2]="Ðây là ð¸a bàn cüa ta. B¤t k¬ Bång kháng nào cûng ð«u b¸ ta phá vÞ cä thôi...!",		--Boss ra kÛ nång Hàn Bång Chân Khí
	[3]=x910109_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[4]="A... Các ngß½i... Các ngß½i ðã phá vÞ Hàn Bång Hµ Th¬ cüa ta r°i. Ta...",				--Boss tØ nÕn
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910109_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910109_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910109_GlobalNews(sceneId,x910109_g_Monster_Dialogue[3])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910109_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910109_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910109_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không
	if nCheck==0 then
		x910109_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		return
	end
	--******************--
	x910109_ReduceAllEnemiesRest(sceneId)														--Giäm kháng cüa t¤t cä kë ð¸ch xu¯ng 100 ði¬m
	--******************--
	x910109_UseMySkill(sceneId,selfId,nTick)													--Boss sØ døng kÛ nång
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910109_CheckCondition(sceneId,selfId,enmeyId)

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
function x910109_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910109_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910109_g_Buff_Reduce_Self_Res,0)--Giäm kháng cüa bän thân
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910109_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910109_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910109_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","C½ bän là ngß½i không ch¸u n±i Hàn Bång Chân Khí ðâu, "..PlayerName.."...")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910109_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910109_g_Monster_Dialogue[4])								--Câu nói cüa Boss lúc chªt
	--******************--
	x910109_CancelAllImpacts(sceneId)
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910109_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910109_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_LAMSUNG)
			SetMissionData(sceneId,nHumanId,SHENGSI_LAMSUNG,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910109_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910109_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910109_g_Skill_Timer,x910109_g_Skill_CD)		--Th¶i gian kÛ nång
	--******************--
	LuaFnCancelSpecificImpact(sceneId,selfId,x910109_g_Buff_Reduce_Self_Res)					--Hüy bö hi®u Ñng giäm kháng cüa bän thân
	--******************--
	
end
--**********************************--
--*       Cancel All Impacts       *--
--**********************************--
function x910109_CancelAllImpacts(sceneId)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and LuaFnHaveImpactOfSpecificDataIndex(sceneId,nHumanId,x910109_g_Buff_Reduce_Victim_Res)>=1 then
			LuaFnCancelSpecificImpact(sceneId,nHumanId,x910109_g_Buff_Reduce_Victim_Res,0)		--Ngß¶i ch½i b¸ giäm kháng
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index and LuaFnHaveImpactOfSpecificDataIndex(sceneId,Pet_Index,x910109_g_Buff_Reduce_Victim_Res)>=1 then												--Nªu trân thú này ðang xu¤t chiªn
				LuaFnCancelSpecificImpact(sceneId,Pet_Index,x910109_g_Buff_Reduce_Victim_Res,0)	--Trân thú b¸ giäm kháng
				break
			end
		end
	end
	--******************--
	
end
--**********************************--
--*    Reduce All Enemies Rest     *--
--**********************************--
function x910109_ReduceAllEnemiesRest(sceneId,selfId)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and LuaFnHaveImpactOfSpecificDataIndex(sceneId,nHumanId,x910109_g_Buff_Reduce_Victim_Res)<1 then--Ngß¶i ch½i này chßa có trÕng thái giäm kháng
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910109_g_Buff_Reduce_Victim_Res,0)--Ngß¶i ch½i b¸ giäm kháng
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index and LuaFnHaveImpactOfSpecificDataIndex(sceneId,Pet_Index,x910109_g_Buff_Reduce_Victim_Res)<1 then													--Nªu trân thú này ðang xu¤t chiªn
				LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910109_g_Buff_Reduce_Victim_Res,0)--Trân thú b¸ giäm kháng
				break
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910109_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910109_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910109_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		x910109_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910109_g_Skill_Timer,x910109_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	elseif Time_Skill<=5000 and Time_Skill>4000 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910109_g_Impact_Prepare)<1 then--Ðªn th¶i gian v§n công
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910109_g_Impact_Prepare,0)	--Hi®u Ñng v§n công
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910109_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910109_g_Skill,x,y,0,1)									--Boss sØ døng kÛ nång
	--******************--
	MonsterTalk(sceneId,selfId,"",x910109_g_Monster_Dialogue[2])								--Boss nói khi xu¤t chiêu
	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L¤y t÷a ðµ hi®n tÕi cüa Boss
	local Human_List={}
	local nPlayer=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	--******************--
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ hi®n tÕi cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910109_g_Skill_Distance_Affect then--Ngß¶i ch½i này không trong phÕm vi an toàn
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910109_g_Skill_Impact,0)--Nh§n hi®u Ñng công kích kÛ nång
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				local x,y=GetWorldPos(sceneId,Pet_Index)										--L¤y t÷a ðµ cüa trân thú này
				if floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910109_g_Skill_Distance_Affect then--Trân thú trong vùng kÛ nång
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910109_g_Skill_Impact,0)--Trân thú cûng b¸ dính kÛ nång nªu trong vùng kÛ nång änh hß·ng
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
function x910109_GlobalNews(sceneId,Tips)

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