--Th§p nh¸ Sát Tinh
--Lý Khôi
--Author: Hoàng Steven

--******************--
x910103_g_ScriptId=910103
--******************--
x910103_g_Boss_Name="Lý Khôi"																	--Tên cüa BOSS
--******************--
x910103_g_Poison_Timer=1																		--Th¶i gian giæa 2 l¥n liên tiªp gây sát khí ôn d¸ch
x910103_g_Poison_Last_Time_Actived=2															--Th¶i gian sát khí ôn d¸ch l¥n trß¾c phát n±
x910103_g_Poison_Victim=3																		--Møc tiêu b¸ dính sát khí ôn d¸ch
x910103_g_Skill_Timer=4																			--Th¶i gian lãnh khß¾c kÛ nång chiªn ð¤u cüa Boss
--******************--
x910103_g_Poison_Time_Actived=2000																--Khoäng cách giæa 2 l¥n phát tác khí ðµc
x910103_g_Poison_Skill=1310																		--KÛ nång ôn d¸ch
x910103_g_Poison_Active_Impact=9754																--Hi®u Ñng khi ôn d¸ch phát tác
x910103_g_Poison_Impact=9753																	--Hi®u Ñng b¸ dính sát khí ôn d¸ch
x910103_g_Poison_Distance_Time=60000															--Khoäng cách giæa 2 l¥n gây ôn d¸ch lên ngß¶i ch½i b¤t kÏ
--******************--
x910103_g_Skill_Index=1314																		--KÛ nång công kích phø cüa Boss
x910103_g_Skill_CD=20000																		--Th¶i gian phøc h°i kÛ nång này
x910103_g_Skill_Distance_Affect=10																--Khoäng cách b¸ dính kÛ nång qu¥n th¬
x910103_g_Skill_Impact=9779																		--Hi®u Ñng cüa kÛ nång
--******************--
x910103_g_Impact_Prepare=9777																	--Ðang v§n khí
--******************--
x910103_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="Ta ðây hành t¦u giang h° ðã nhi«u nåm, nhßng chßa th¤y tên nào l² mãn nhß các ngß½i. Ð¬ ta dÕy cho các ngß½i mµt bài h÷c cho biªt mùi ð¶i...",--Boss khai chiªn
	[2]="Ha ha... Các ngß½i hãy cùng nhau chia së thß½ng ðau v¾i %s ði",						--Boss gây sát khí ôn d¸ch lên ngß¶i ch½i b¤t kÏ
	[3]=x910103_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[4]="Các ngß¶i khá l¡m, th¡ng ðßþc Sát Khí Ôn D¸ch cüa ta. Nhßng xem ra các ngß½i chï g£p may thôi",--Boss tØ nÕn
	[5]="Các ngß¶i hãy nªm mùi kÛ nång Sinh Môn hü thñc cüa ta...",								--Boss ra kÛ nång Sinh Môn
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910103_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910103_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910103_GlobalNews(sceneId,x910103_g_Monster_Dialogue[3])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910103_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910103_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910103_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không
	if nCheck==0 then
		x910103_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		return
	end
	--******************--
	x910103_UseMySkill(sceneId,selfId,nTick)													--Boss sØ døng kÛ nång
	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Last_Time_Actived)	--Th¶i gian phát tác ôn d¸ch còn lÕi
	if nTime>0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Last_Time_Actived,nTime-nTick)--C§p nh§t th¶i gian cho l¥n bµc phát s¡p t¾i
	else
		x910103_ActiveMyPoison(sceneId,selfId)													--Kích n± súc khí ôn d¸ch
	end
	--******************--
	local Poison_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Timer)		--Th¶i gian còn lÕi thi tri¬n ôn d¸ch lên møc tiêu b¤t kÏ
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Timer,Poison_Time-nTick)		--C§p nh§t th¶i gian gây ôn d¸ch
	if Poison_Time<=0 then
		x910103_UseMyPoisonToARandomVictim(sceneId,selfId)										--SØ døng ôn d¸ch lên møc tiêu ngçu nhiên
	end
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910103_CheckCondition(sceneId,selfId,enmeyId)

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
function x910103_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910103_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910103_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910103_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910103_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Cûng có chút bän lînh nhßng xem ra vçn không ðü nh± cái lông chân cüa ta ðâu "..PlayerName.."...")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910103_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910103_g_Monster_Dialogue[4])								--Câu nói cüa Boss lúc chªt
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			LuaFnCancelSpecificImpact(sceneId,nHumanId,x910103_g_Poison_Impact)					--Xóa bö hi®u Ñng ôn d¸ch trên ngß¶i ch½i
		end
	end
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910103_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910103_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_LYKHOI)
			SetMissionData(sceneId,nHumanId,SHENGSI_LYKHOI,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910103_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910103_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Timer,x910103_g_Poison_Distance_Time)--Th¶i gian 2 l¥n liên tiªp gây sát khí ôn d¸ch lên ngß¶i ch½i b¤t kÏ
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Skill_Timer,x910103_g_Skill_CD)--Th¶i gian 2 l¥n liên tiªp gây sát khí ôn d¸ch lên ngß¶i ch½i b¤t kÏ
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910103_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910103_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then
		x910103_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Skill_Timer,x910103_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	elseif Time_Skill<=5000 and Time_Skill>4000 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910103_g_Impact_Prepare)<1 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910103_g_Impact_Prepare,0)	--Hi®u Ñng v§n công
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910103_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910103_g_Skill_Index,x,y,0,1)								--Boss sØ døng kÛ nång ôn d¸ch lên nÕn nhân
	--******************--
	MonsterTalk(sceneId,selfId,"",x910103_g_Monster_Dialogue[5])								--Boss nói khi xu¤t chiêu
	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L¤y t÷a ðµ hi®n tÕi cüa Boss
	local Human_List={}
	local nPlayer=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ hi®n tÕi cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910103_g_Skill_Distance_Affect then--Ngß¶i ch½i này ðÑng trong vùng änh hß·ng cüa kÛ nång
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910103_g_Skill_Impact,0)--Nh§n hi®u Ñng công kích nµi công
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				local x,y=GetWorldPos(sceneId,Pet_Index)										--L¤y t÷a ðµ cüa trân thú này
				if floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910103_g_Skill_Distance_Affect then--Trân thú trong vùng ð£t bçy
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910103_g_Skill_Impact,0)--Trân thú cûng b¸ dính kÛ nång nªu ðÑng g¥n
				end
				break
			end
		end
	end
	--******************--
	
end
--**********************************--
--*Use My Poison To A Random Victim*--
--**********************************--
function x910103_UseMyPoisonToARandomVictim(sceneId,selfId)

	--******************--
	local Human_List={}
	local nPlayer=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			nPlayer=nPlayer+1
			Human_List[nPlayer]=nHumanId
		end
	end
	--******************--
	local Random_Victim=random(nPlayer)																	--Ch÷n nÕn nhân ngçu nhiên
	local nTalk=format(x910103_g_Monster_Dialogue[2],GetName(sceneId,Human_List[Random_Victim]))		
	x910103_GlobalNews(sceneId,nTalk)																	--Thông báo nÕn nhân b¸ dính ôn d¸ch
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Human_List[Random_Victim],Human_List[Random_Victim],Human_List[Random_Victim],x910103_g_Poison_Impact,0)--NÕn nhân ðã nhi­m sát khí ôn d¸ch
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Timer,x910103_g_Poison_Distance_Time)	--Th¶i gian còn lÕi thi tri¬n ôn d¸ch lên møc tiêu b¤t kÏ
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Last_Time_Actived,x910103_g_Poison_Time_Actived)--Th¶i gian 2 l¥n liên tiªp phát n± sát khí ôn d¸ch
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)																--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910103_g_Poison_Skill,x,y,0,1)									--Boss sØ døng kÛ nång ôn d¸ch lên nÕn nhân
	--******************--
	
end
--**********************************--
--*        Active My Poison        *--
--**********************************--
function x910103_ActiveMyPoison(sceneId,selfId)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local Victim=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,Victim,x910103_g_Poison_Impact)>1 then			--Ngß¶i này có hi®u Ñng ôn d¸ch
			local Pos_x,Pos_y=GetWorldPos(sceneId,Victim)														--L¤y t÷a ðµ cüa nÕn nhân
			for i=0,9 do																						--Ki¬m tra các ô trân thú cüa nÕn nhân xem có trân thú nào ðang xu¤t chiªn
				local High,Low=LuaFnGetPetGUID(sceneId,Victim,i)
				local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,Victim,High,Low)								
				if Pet_Index~=-1 and Pet_Index then																--Nªu trân thú này ðang xu¤t chiªn
					LuaFnSendSpecificImpactToUnit(sceneId,Victim,Victim,Victim,x910103_g_Poison_Active_Impact,0)--NÕn nhân b¸ ôn d¸ch phát n±
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910103_g_Poison_Active_Impact,0)--Trân thú cüa nÕn nhân b¸ ôn d¸ch phát n±
					break
				end
			end
			for j=0,nHumanCount-1 do
				if i~=j then
					local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,j)
					--T¤t cä ngß¶i ch½i quanh vùng ôn d¸ch b¸ m¤t máu ð°ng th¶i dính luôn trÕng thái ôn d¸ch (Có cµng d°n nhi«u l¥n, càng nhi«u ngß¶i ðÑng quanh m¤t máu càng nhanh)
					local x,y=GetWorldPos(sceneId,nHumanId)												--L¤y t÷a ðµ ngß¶i ch½i xung quanh
					if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
					and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=10 then					--Ngß¶i ch½i này ðÑng quanh vùng b¸ phát tác ôn d¸ch
						LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910103_g_Poison_Active_Impact,0)--Ngß¶i ch½i này b¸ m¤t máu
						LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910103_g_Poison_Impact,0)--Ngß¶i ch½i này b¸ m¤t máu và dính luôn trÕng thái ôn d¸ch
					end
					--T¤t cä trân thú xung quanh cûng b¸ m¤t máu nhßng không dính ôn d¸ch
					for i=0,9 do																		--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
						local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
						local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
						if Pet_Index~=-1 and Pet_Index then												--Nªu trân thú này ðang xu¤t chiªn
							local x,y=GetWorldPos(sceneId,Pet_Index)									--L¤y t÷a ðµ cüa trân thú này
							if floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=10 then			--Trân thú trong vùng b¸ ôn d¸ch
								LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910103_g_Poison_Active_Impact,0)--Trân thú b¸ ôn d¸ch phát n±
							end
							break
						end
					end
				end
			end
		end
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910103_g_Poison_Last_Time_Actived,x910103_g_Poison_Time_Actived)--Th¶i gian 2 l¥n liên tiªp phát n± sát khí ôn d¸ch
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910103_GlobalNews(sceneId,Tips)

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