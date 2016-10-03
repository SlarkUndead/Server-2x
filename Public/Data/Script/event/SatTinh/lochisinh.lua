--Th§p nh¸ Sát Tinh
--L² Chí Sinh
--Author: Hoàng Steven

--******************--
x910104_g_ScriptId=910104
--******************--
x910104_g_Boss_Name="L² Chí Sinh"																--Tên cüa BOSS
x910104_g_Monk_Name="Khô Vinh ÐÕi Sß"															--Tên cüa NPC Khô Vinh ÐÕi Sß
--******************--
x910104_g_Immue_Timer=1																			--Th¶i gian giæa 2 l¥n liên tiªp nh§n ðßþc trÕng thái vô ð¸ch
x910104_g_Skill_Timer=2																			--Th¶i gian lãnh khß¾c dùng kÛ nång
x910104_g_Last_Time=3																			--Th¶i gian l¥n trß¾c Boss b¸ m¤t máu b·i kÛ nång cüa Khô Vinh ÐÕi Sß
--******************--
x910104_g_Immue_Impact_Index=9764																--ID cüa hi®u Ñng mi­n d¸ch
x910104_g_Immue_Impact_CD=50000																	--T±ng th¶i gian cüa hi®u Ñng (bao g°m lãnh khß¾c và phát tác)
x910104_g_Impact_1_Time_Start=20000																--Th¶i gian b¡t ð¥u hi®u Ñng mi­n d¸ch và m¤t máu liên tøc
x910104_g_Impact_2_Time_Start=10000																--Th¶i gian b¡t ð¥u hi®u Ñng s½ h·
--******************--
x910104_g_Weak_Impact_Index=9767																--Hi®u Ñng suy yªu, Boss b¸ ma tý trong 10 giây
--******************--
x910104_g_Skill_Index=1313																		--KÛ nång công kích phø cüa Boss
x910104_g_Skill_CD=55000																		--Th¶i gian phøc h°i kÛ nång này
x910104_g_Skill_Distance_Affect=10																--Khoäng cách b¸ dính kÛ nång qu¥n th¬
x910104_g_Skill_Impact=9778																		--Hi®u Ñng cüa kÛ nång
--******************--
x910104_g_Impact_Prepare=9777																	--Ðang v§n khí
--******************--
x910104_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="Không nói nhi«u. Có giöi thì vào cä ðây, ð¬ tÕi hÕ lînh giáo cao chiêu cüa quý v¸...",	--Boss khai chiªn
	[2]="Ha ha... Ta ðây thiên hÕ vô ð¸ch, các ngß½i ð×ng hòng ðøng ðªn ta... Ha ha...",		--Boss nh§n hi®u Ñng Mi­n d¸ch
	[3]=x910104_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[4]="Võ công t¥m thß¶ng, bän lînh non kém mà cûng hÕ ðßþc ta sao?...",						--Boss tØ nÕn
	[5]="Các ngß¶i hãy nªm mùi kÛ nång Cu°ng Phong San cüa ta...",								--Boss ra kÛ nång Cu°ng Phong San
}
--******************--
x910104_g_Monk_Dialogue={																		--L¶i nói cüa Khô Vinh ÐÕi Sß
	[1]=x910104_g_Boss_Name.." ðang trong trÕng thái Mi­n D¸ch, h¡n s¨ mi­n d¸ch t¤t cä sát thß½ng nhßng s¨ b¸ giäm 1% HP/s trong su¯t quá trình mi­n d¸ch t¾i khi còn 10% máu.",--Khô Vinh ÐÕi Sß nh¡c nh· v« hi®u Ñng ð¥u
	[2]=x910104_g_Boss_Name.." ðang ki®t sÑc, suy yªu, b¸ ma tý trong 10 giây. Các v¸ hãy d°n hªt công lñc ðä thß½ng h¡n...",--Khô Vinh ÐÕi Sß thông báo Boss ðang b¸ hß nhßþc
	
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910104_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910104_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910104_GlobalNews(sceneId,x910104_g_Monster_Dialogue[3])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910104_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910104_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910104_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không
	if nCheck==0 then
		x910104_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		return
	end
	--******************--
	x910104_UseMySkill(sceneId,selfId,nTick)													--Boss sØ døng kÛ nång
	--******************--
	local Monk=x910104_FindTheMonk(sceneId)														--Tìm ID cüa Khô Vinh ÐÕi Sß
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910104_g_Immue_Timer)				--Th¶i gian t°n tÕi hi®u Ñng
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Immue_Timer,nTime-nTick)				--C§p nh§t th¶i gian
	--******************--
	local Last_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910104_g_Last_Time)			--Th¶i gian l¥n trß¾c Boss b¸ m¤t máu b·i kÛ nång cüa Khô Vinh ÐÕi Sß
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910104_g_Immue_Impact_Index)>=1 and Last_Time-nTime>=1000 then--Ðã ðªn gi¶ kích hoÕt kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Last_Time,nTime)					--C§p nh§t th¶i gian änh hß·ng kÛ nång
		x910104_ActiveLoseHPSkill(sceneId,selfId)												--Boss ch¸u änh hß·ng kÛ nång cüa Khô Vinh ÐÕi Sß
	end
	--******************--
	if nTime<=x910104_g_Impact_1_Time_Start and nTime>x910104_g_Impact_2_Time_Start 
	and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910104_g_Immue_Impact_Index)<1 then	--Nªu trong th¶i gian hi®u Ñng mi­n d¸ch và m¤t máu liên tøc
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910104_g_Immue_Impact_Index,0)--Hi®u Ñng mi­n d¸ch cüa Boss
		MonsterTalk(sceneId,Monk,"",x910104_g_Monk_Dialogue[1])									--Khô Vinh ÐÕi Sß thông báo v« hi®u Ñng s¯ 1
		x910104_GlobalNews(sceneId,x910104_g_Monk_Name..": "..x910104_g_Monk_Dialogue[1])		--Khô Vinh ÐÕi Sß thông báo v« hi®u Ñng s¯ 1
	elseif nTime<=x910104_g_Impact_2_Time_Start and nTime>0 
	and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910104_g_Weak_Impact_Index)<1 then	--Nªu trong th¶i gian suy yªu
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910104_g_Weak_Impact_Index,0)--Boss nh§n hi®u Ñng suy nhßþc sau khi mi­n d¸ch
		MonsterTalk(sceneId,Monk,"",x910104_g_Monk_Dialogue[2])									--Khô Vinh ÐÕi Sß thông báo v« hi®u Ñng s¯ 2
		x910104_GlobalNews(sceneId,x910104_g_Monk_Name..": "..x910104_g_Monk_Dialogue[2])		--Khô Vinh ÐÕi Sß thông báo v« hi®u Ñng s¯ 2
	elseif nTime<=0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Immue_Timer,x910104_g_Immue_Impact_CD)--C§p nh§t th¶i gian t±ng th¬
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Last_Time,x910104_g_Immue_Impact_CD)--C§p nh§t th¶i gian änh hß·ng kÛ nång
	end
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910104_CheckCondition(sceneId,selfId,enmeyId)

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
function x910104_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910104_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910104_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910104_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910104_OnKillCharacter(sceneId,selfId,targetId)
	
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
function x910104_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910104_g_Monster_Dialogue[4])								--Câu nói cüa Boss lúc chªt
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910104_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910104_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_LOCHISINH)
			SetMissionData(sceneId,nHumanId,SHENGSI_LOCHISINH,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910104_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910104_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Immue_Timer,x910104_g_Immue_Impact_CD)--T±ng th¶i gian hi®u Ñng
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Skill_Timer,x910104_g_Skill_CD)		--Th¶i gian kÛ nång
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Last_Time,x910104_g_Immue_Impact_CD)	--Th¶i gian Boss m¤t máu b·i kÛ nång cüa Khô Vinh ÐÕi Sß
	--******************--
	
end
--**********************************--
--*      Active Lose HP Skill      *--
--**********************************--
function x910104_ActiveLoseHPSkill(sceneId,selfId)

	--******************--
	local MaxHP=GetMaxHp(sceneId,selfId)														--Lßþng máu thßþng hÕn cüa Boss
	local CurrentHP=GetHp(sceneId,selfId)														--Lßþng máu hi®n tÕi cüa Boss
	--******************--
	if floor((CurrentHP/MaxHP)*100)<=10 then													--Nªu lßþng máu cüa Boss dß¾i 10%
		return
	end
	--******************--
	local HP_Lost=floor(MaxHP*0.01)																--Lßþng máu m¤t ði = 1%
	--******************--
	SetHp(sceneId,selfId,CurrentHP-HP_Lost)														--Thiªt l§p máu cho Boss
	--******************--	
	
end
--**********************************--
--*         Find The Monk          *--
--**********************************--
function x910104_FindTheMonk(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910104_g_Monk_Name) then	--Nªu tìm th¤y Khô Vinh ÐÕi Sß
			return MonsterId
		end
	end
	--******************--
	return -1
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910104_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910104_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then
		x910104_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910104_g_Skill_Timer,x910104_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	elseif Time_Skill<=5000 and Time_Skill>4000 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910104_g_Impact_Prepare)<1 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910104_g_Impact_Prepare,0)	--Hi®u Ñng v§n công
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910104_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910104_g_Skill_Index,x,y,0,1)								--Boss sØ døng kÛ nång ôn d¸ch lên nÕn nhân
	--******************--
	MonsterTalk(sceneId,selfId,"",x910104_g_Monster_Dialogue[5])								--Boss nói khi xu¤t chiêu
	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L¤y t÷a ðµ hi®n tÕi cüa Boss
	local Human_List={}
	local nPlayer=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ hi®n tÕi cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910104_g_Skill_Distance_Affect then--Ngß¶i ch½i này ðÑng trong vùng änh hß·ng cüa kÛ nång
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910104_g_Skill_Impact,0)--Nh§n hi®u Ñng công kích nµi công
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				local x,y=GetWorldPos(sceneId,Pet_Index)										--L¤y t÷a ðµ cüa trân thú này
				if floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910104_g_Skill_Distance_Affect then--Trân thú trong vùng kÛ nång
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910104_g_Skill_Impact,0)--Trân thú cûng b¸ dính kÛ nång nªu ðÑng g¥n
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
function x910104_GlobalNews(sceneId,Tips)

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