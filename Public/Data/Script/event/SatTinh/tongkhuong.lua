--Th§p nh¸ Sát Tinh
--T¯ng Khß½ng
--Author: Hoàng Steven

--******************--
x910107_g_ScriptId=910107
--******************--
x910107_g_Boss_Name="T¯ng Khß½ng"																--Tên cüa BOSS
--******************--
x910107_g_Skill_Timer=1																			--Th¶i gian kÛ nång Yêu Tinh Tø Nghîa kªt hþp Thiên Hàng Ngh¸ch Chuy¬n và ma tý toàn th¬
x910107_g_System_Notice=2																		--Th¶i gian kÛ nång Yêu Tinh Tø Nghîa kªt hþp Thiên Hàng Ngh¸ch Chuy¬n và ma tý toàn th¬
--******************--
x910107_g_Skill_Vip_1=1305																		--KÛ nång Yêu Tinh Tø Nghîa (-40% HP)
x910107_g_Skill_Vip_2=1306																		--KÛ nång Thiên Hàng Ngh¸ch Chuy¬n (-45% HP)
x910107_g_Skill_Vip_3=1311																		--KÛ nång Sát Khí Bµc Phát
x910107_g_Impact_Support=9403																	--Hi®u Ñng ma tý 5s
x910107_g_Skill_CD=40000																		--Th¶i gian lãnh khß¾c cüa kÛ nång
x910107_g_Skill_Impact_1=9771																	--Hi®u Ñng rút 45% máu nªu ðÑng · khoäng cách dß¾i 30m so v¾i Boss
x910107_g_Skill_Impact_2=9774																	--Hi®u Ñng rút 40% máu
x910107_g_Skill_Impact_3=9755																	--Hi®u Ñng rút 20% máu nªu có trân thú xu¤t chiªn
--******************--
x910107_g_Impact_Prepare=9777																	--Ðang v§n khí
--******************--
x910107_g_Skill_Distance_Affect=20																--Trong khoäng cách này, ngß¶i ch½i s¨ lînh nh§n Yêu Tinh Tø Nghîa ð°ng th¶i nh§n thêm Thiên Hàng Ngh¸ch Chuy¬n (T±ng cµng m¤t 85% HP)
--******************--
x910107_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="HÞi ð¸a ngøc yêu ma, các ngß½i hãy cùng ta dÕy cho lû ðáng ghét này mµt tr§n!",		--Boss khai chiªn
	[2]="Yêu tinh thiên hàng, yêu ma bµc phát. Các ngß½i hãy nªm thØ kÛ nång ð¡c Û cüa ta ðây!",--Boss ra kÛ nång Yêu Tinh Tø Nghîa + Thiên Hàng Ngh¸ch Chuy¬n + Sát Khí Bµc Phát
	[3]=x910107_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[4]="HÞi ð¸a ngøc yêu ma, các ngß½i hãy báo thù cho ta...",									--Boss tØ nÕn
	[5]="Hãy thu h°i t¤t cä trân thú và nhanh chóng chÕy ra khöi vùng änh hß·ng cüa kÛ nång Thiên Hàng Ngh¸ch Chuy¬n và Sát Khí Bµc Phát nªu các hÕ còn mu¯n s¯ng...",--H® th¯ng nh¡c nh· ngß¶i ch½i
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910107_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910107_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910107_GlobalNews(sceneId,x910107_g_Monster_Dialogue[3])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910107_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910107_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910107_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không
	if nCheck==0 then
		x910107_ResetMyAI(sceneId,selfId)
		return
	end
	--******************--
	x910107_UseMySkill(sceneId,selfId,nTick)													--Boss sØ døng kÛ nång
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910107_CheckCondition(sceneId,selfId,enmeyId)

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
function x910107_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910107_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910107_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910107_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910107_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Ngß½i chªt là ðáng ð¶i l¡m, "..PlayerName.."...")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910107_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910107_g_Monster_Dialogue[4])								--Câu nói cüa Boss lúc chªt
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910107_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910107_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_TONGKHUONG)
			SetMissionData(sceneId,nHumanId,SHENGSI_TONGKHUONG,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910107_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910107_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910107_g_Skill_Timer,x910107_g_Skill_CD)		--Th¶i gian kÛ nång
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910107_g_System_Notice,0)						--Th¶i gian kÛ nång
	--******************--
	
end
--**********************************--
--*       Lock All My Enemies      *--
--**********************************--
function x910107_LockAllMyEnemies(sceneId)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910107_g_Impact_Support,0)--Ngß¶i ch½i dính th¤t minh
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910107_g_Impact_Support,0)--Trân thú cûng b¸ dính hi®u Ñng th¤t minh
				break
			end
		end
	end
	--******************--	
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910107_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910107_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	local System_Notice=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910107_g_System_Notice)	--Ki¬m tra xem h® th¯ng ðã thông báo trß¾c khi Boss ra kÛ nång chßa
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910107_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		x910107_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910107_g_Skill_Timer,x910107_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910107_g_System_Notice,0)					--C§p nh§t h® th¯ng chßa thông báo
	elseif Time_Skill>5000 and Time_Skill<=7000 and System_Notice==0 then						--H® th¯ng thông báo trß¾c 2 giây trß¾c khi ngß¶i ch½i b¸ Boss phong bª huy®t ðÕo
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910107_g_System_Notice,1)					--C§p nh§t h® th¯ng ðã thông báo
		x910107_GlobalNews(sceneId,x910107_g_Monster_Dialogue[5])								--Ghi thông báo cho t¤t cä ngß¶i ch½i
	elseif Time_Skill<=5000 and Time_Skill>4000 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910107_g_Impact_Prepare)<1 then--Ðªn th¶i gian v§n công
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910107_g_Impact_Prepare,0)	--Hi®u Ñng v§n công
		x910107_LockAllMyEnemies(sceneId)														--Gây ma tý cho t¤t cä ngß¶i ch½i
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910107_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910107_g_Skill_Vip_1,x,y,0,1)								--Boss sØ døng kÛ nång qu¥n th¬ Yêu Tinh Tø Nghîa
	LuaFnUnitUseSkill(sceneId,selfId,x910107_g_Skill_Vip_2,x,y,0,1)								--Boss sØ døng kÛ nång qu¥n th¬ Thiên Hàng Ngh¸ch Chuy¬n
	LuaFnUnitUseSkill(sceneId,selfId,x910107_g_Skill_Vip_3,x,y,0,1)								--Boss sØ døng kÛ nång qu¥n th¬ Sát Khí Bµc Phát
	--******************--
	MonsterTalk(sceneId,selfId,"",x910107_g_Monster_Dialogue[2])								--Boss nói khi xu¤t chiêu
	--******************--
	local Pos_x,Pos_y=GetWorldPos(sceneId,selfId)												--L¤y t÷a ðµ hi®n tÕi cüa Boss
	local Human_List={}
	local nPlayer=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	--******************--
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then--Ngß¶i ch½i nh§n hi®u quä cüa Yêu Tinh Tø Nghîa
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910107_g_Skill_Impact_2,0)--Nh§n hi®u Ñng công kích cüa Yêu Tinh Tø Nghîa
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910107_g_Skill_Impact_2,0)--Trân thú b¸ dính Yêu Tinh Tø Nghîa
				LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910107_g_Skill_Impact_3,0)--Trân thú dính thêm Sát Khí Bµc Phát
				LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910107_g_Skill_Impact_3,0)--Ngß¶i ch½i dính thêm Sát Khí Bµc Phát
				break
			end
		end
	end
	--******************--
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ hi®n tÕi cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910107_g_Skill_Distance_Affect then--Ngß¶i ch½i này không trong phÕm vi an toàn
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,x910107_g_Skill_Impact_1,0)--Nh§n hi®u Ñng công kích cüa Thiên Hàng Ngh¸ch Chuy¬n
		end
		for i=0,9 do																			--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then													--Nªu trân thú này ðang xu¤t chiªn
				local x,y=GetWorldPos(sceneId,Pet_Index)										--L¤y t÷a ðµ cüa trân thú này
				if floor(sqrt((Pos_x-x)*(Pos_x-x)+(Pos_y-y)*(Pos_y-y)))<=x910107_g_Skill_Distance_Affect then--Trân thú trong vùng kÛ nång
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x910107_g_Skill_Impact_1,0)--Trân thú cûng b¸ dính kÛ nång nªu trong vùng kÛ nång änh hß·ng
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
function x910107_GlobalNews(sceneId,Tips)

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