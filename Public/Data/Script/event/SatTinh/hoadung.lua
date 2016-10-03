--Th§p nh¸ Sát Tinh
--Hoa Dung
--Author: Hoàng Steven

--******************--
x910101_g_ScriptId=910101
--******************--
x910101_g_Boss_Name="Hoa Dung"																	--Tên cüa BOSS
--******************--
x910101_g_Last_Time=1																			--Th¶i gian l¥n trß¾c ð£t cÕm bçy
x910101_g_Trap_Index=2																			--Ðánh s¯ cÕm bçy ðang kích hoÕt
x910101_g_Trap_Pos_X=3																			--T÷a ðµ X cüa cÕm bçy ðang kích hoÕt
x910101_g_Trap_Pos_Y=4																			--T÷a ðµ Y cüa cÕm bçy ðang kích hoÕt
x910101_g_Trap_Timer=5																			--Th¶i gian t°n tÕi cÕm bçy
x910101_g_Tick_Time=6																			--Tính th¶i gian m²i giây
x910101_g_Trap_Color_Now=7																		--Màu s¡c cÕm bçy hi®n tÕi
--******************--
x910101_g_Trap_Color={																			--Màu cüa bçy
	[1]=151,																					--Ð¸a Sát Tr§n
	[2]=151,																					--Thiên Cang Tr§n
	[3]=147,																					--Nhân Vong Tr§n
	[4]=150																						--Cß¶ng Hóa Tr§n
}
x910101_g_Trap_Skill={																			--Skill bçy
	[1]=1326,																					--Ð¸a Sát Tr§n
	[2]=1325,																					--Thiên Cang Tr§n
	[3]=1327,																					--Nhân Vong Tr§n
	[4]=1328																					--Cß¶ng Hóa Tr§n
}
x910101_g_Trap_Impact={																			--Impact bçy
	[1]=9755,																					--Ð¸a Sát Tr§n
	[2]=9756,																					--Thiên Cang Tr§n
	[3]=9757,																					--Nhân Vong Tr§n
	[4]=9758																					--Cß¶ng Hóa Tr§n
}
x910101_g_Trap_Name={
	[1]="Ð¸a Sát Tr§n",																			--Ð¸a Sát Tr§n
	[2]="Thiên Cang Tr§n",																		--Thiên Cang Tr§n
	[3]="Nhân Vong Tr§n",																		--Nhân Vong Tr§n
	[4]="Cß¶ng Hóa Tr§n"																		--Cß¶ng Hóa Tr§n
}
--******************--
x910101_g_Next_Time_Trap=30000																	--Khoäng cách 2 l¥n ð£t cÕm bçy liên tiªp
x910101_g_Timelife_Traps=10000																	--Th¶i gian duy trì cÕm bçy
x910101_g_Time_Per_Trap=1000																	--Th¶i gian m²i l¥n cÕm bçy phát n±
x910101_g_Distance_Trap_Affect=3																--Khoäng cách ngß¶i ch½i nhö h½n giá tr¸ này thì d¨ dính änh hß·ng cüa bçy
--******************--
x910101_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="TÕi hÕ vçn mong mµt ngày nào ðó ðßþc lînh giáo cao chiêu cüa cao thü Trung Nguyên...",	--Boss m¾i xu¤t hi®n
	[2]="Th¤t tinh chiªu r÷i...B¡t ð¥u Ð¸a Sát Tr§n",											--Tri®u t§p Ð¸a Sát Tr§n
	[3]="Th¤t tinh chiªu r÷i...B¡t ð¥u Thiên Cang Tr§n",										--Tri®u t§p Thiên Cang Tr§n
	[4]="Th¤t tinh chiªu r÷i...B¡t ð¥u Nhân Vong Tr§n",											--Tri®u t§p Nhân Vong Tr§n
	[5]="Th¤t tinh chiªu r÷i...B¡t ð¥u Cß¶ng Hóa Tr§n",											--Tri®u t§p Cß¶ng Hóa Tr§n
	[6]=x910101_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[7]="Võ lâm Trung Nguyên quä nhiên cao thü nhi«u vô k¬. TÕi hÕ bái phøc, bái phøc...!",		--Boss tØ nÕn
}
--******************--
x910101_g_Trap_Flag_Index=14126																	--D¤u hi®u cÕm bçy ðã kích hoÕt
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910101_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910101_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910101_GlobalNews(sceneId,x910101_g_Monster_Dialogue[6])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910101_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	
end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910101_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910101_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không, nªu không còn thì Boss tñ reset
	if nCheck==0 then
		x910101_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		x910101_DeleteMyTrap(sceneId,selfId)													--Xóa t¤t cä các cÕm bçy ðang phát tác
		return
	end
	--******************--
	local Time_Life=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Timer)			--Th¶i gian t°n tÕi cÕm bçy hi®n tÕi
	local Tick_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Tick_Time)			--Tính th¶i gian m²i giây
	if Time_Life>0 then																			--Vçn còn th¶i gian t°n tÕi
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Timer,Time_Life-nTick)		--C§p nh§t th¶i gian t°n tÕi cÕm bçy
		if Tick_Time-Time_Life>=x910101_g_Time_Per_Trap then									--Nªu ðã sau khoäng cách 2 l¥n liên tiªp kích hoÕt bçy
			x910101_ActiveMyTrap(sceneId,selfId)												--Kích n± cÕm bçy
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Tick_Time,Time_Life)			--Th¶i gian m²i giây
		end
	else
		x910101_DeleteMyTrap(sceneId,selfId)													--Xóa bö cÕm bçy cû
	end
	--******************--
	local Last_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Last_Time)			--L¤y th¶i gian trß¾c ðó ð£t bçy
	if Last_Time<=0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Last_Time,x910101_g_Next_Time_Trap)--Reset th¶i gian ð£t cÕm bçy t¾i
		x910101_UseMyTrap(sceneId,selfId)														--Boss s¨ sØ døng cÕm bçy thñc hi®n trong hàm này
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Timer,x910101_g_Timelife_Traps)--Th¶i gian t°n tÕi cÕm bçy hi®n tÕi
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Tick_Time,x910101_g_Timelife_Traps+x910101_g_Time_Per_Trap)--Th¶i gian m²i giây
		local Trap_Color=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Color_Now)	--Màu s¡c cÕm bçy hi®n tÕi
		MonsterTalk(sceneId,selfId,"",x910101_g_Monster_Dialogue[Trap_Color+1])					--Boss nói khi ra cÕm bçy
	else
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Last_Time,Last_Time-nTick)		--C§p nh§t lÕi th¶i gian ð£t cÕm bçy tiªp theo
	end
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910101_CheckCondition(sceneId,selfId,enmeyId)

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
function x910101_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910101_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	
end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910101_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910101_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	x910101_DeleteMyTrap(sceneId,selfId)														--Xóa t¤t cä các cÕm bçy ðang phát tác
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910101_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Ta không tin cao thü võ lâm Trung Nguyên lÕi yªu ðu¯i ðªn v§y... "..PlayerName..", các hÕ làm ta th¤t v÷ng quá... Ha ha...!")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910101_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910101_g_Monster_Dialogue[7])								--Câu nói cüa Boss lúc chªt
	--******************--
	x910101_DeleteMyTrap(sceneId,selfId)														--Xóa t¤t cä các cÕm bçy ðang phát tác
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910101_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910101_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_HOADUNG)
			SetMissionData(sceneId,nHumanId,SHENGSI_HOADUNG,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910101_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910101_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Last_Time,x910101_g_Next_Time_Trap+1)	--Kh·i tÕo th¶i gian tri®u t§p cÕm bçy l¥n trß¾c tr· v« th¶i gian xu¤t hi®n Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Index,0)							--CÕm bçy v×a ð£t l¥n trß¾c là
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Pos_X,0)							--T÷a ðµ X cüa cÕm bçy ðang kích hoÕt
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Pos_Y,0)							--T÷a ðµ Y cüa cÕm bçy ðang kích hoÕt
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Timer,0)							--Th¶i gian t°n tÕi cÕm bçy hi®n tÕi
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Tick_Time,x910101_g_Timelife_Traps+x910101_g_Time_Per_Trap)--Th¶i gian m²i giây
	--******************--
	
end
--**********************************--
--*          Use My Trap           *--
--**********************************--
function x910101_UseMyTrap(sceneId,selfId)

	--******************--
	local Last_Trap_Color=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Color_Now)		--Màu s¡c cÕm bçy cû
	local ran=Last_Trap_Color
	while ran==Last_Trap_Color do
		ran=random(4)																				--Random cÕm bçy b¤t kÏ
	end
	--******************--
	local PlayerList={}
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			PlayerList[i+1]=nHumanId
		end
	end
	local nPlayer=getn(PlayerList)																	--T±ng s¯ ngß¶i ch½i
	if nPlayer<=0 then																				--Không ai còn s¯ng ho£c · trong phø bän này
		return
	end
	--******************--
	local Random_Player=random(nPlayer)																--Random ngß¶i ch½i b¸ dính bçy
	--******************--
	local x,y=GetWorldPos(sceneId,PlayerList[Random_Player])										--L¤y t÷a ðµ cüa ngß¶i ch½i xác ð¸nh dính bçy				
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Pos_X,x)								--T÷a ðµ X cüa cÕm bçy ðang kích hoÕt
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Pos_Y,y)								--T÷a ðµ Y cüa cÕm bçy ðang kích hoÕt
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Color_Now,ran)						--CÕm bçy v×a ð£t l¥n trß¾c là cÕm bçy Random
	--******************--
	local Flag_Index=LuaFnCreateMonster(sceneId,x910101_g_Trap_Flag_Index,x,y,3,0,-1)				--Kh·i tÕo d¤u hi®u kích hoÕt cÕm bçy
	SetCharacterName(sceneId,Flag_Index,"")															--Không có tên
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Index,Flag_Index)					--C§p nh§t s¯ hi®u cÕm bçy ðang kích hoÕt
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)															--L¤y t÷a ðµ Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910101_g_Trap_Skill[ran],x,y,0,1)								--Boss sØ døng cÕm bçy
	--******************--
	
end
--**********************************--
--*         Delete My Trap         *--
--**********************************--
function x910101_DeleteMyTrap(sceneId,selfId)

	--******************--
	local Trap_Index=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Index)				--S¯ hi®u cÕm bçy hi®n tÕi
	--******************--
	SetCharacterDieTime(sceneId,Trap_Index,100)														--Xóa cái c¶ kích hoÕt cÕm bçy
	--******************--
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			LuaFnCancelSpecificImpact(sceneId,nHumanId,x910101_g_Trap_Impact[3])					--Xóa hi®u Ñng hß nhßþc trên ngß¶i
		end
	end
	--******************--
	
end
--**********************************--
--*         Active My Trap         *--
--**********************************--
function x910101_ActiveMyTrap(sceneId,selfId)

	--******************--
	local Trap_Color=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Color_Now)			--Màu s¡c cÕm bçy hi®n tÕi
	local Trap_Index=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Index)				--S¯ hi®u cÕm bçy hi®n tÕi
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Trap_Index,Trap_Index,Trap_Index,x910101_g_Trap_Color[Trap_Color],0)--Tô màu cho cÕm bçy ðang kích hoÕt
	--******************--
	local nImpact=x910101_g_Trap_Impact[Trap_Color]													--Hi®u Ñng cüa bçy
	if Trap_Color==4 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,nImpact,0)						--Bçy gây hÕi cho Boss
		return
	end
	--******************--
	local Trap_x=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Pos_X)					--T÷a ðµ X cüa cÕm bçy ðang kích hoÕt
	local Trap_y=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910101_g_Trap_Pos_Y)					--T÷a ðµ Y cüa cÕm bçy ðang kích hoÕt
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)														--L¤y t÷a ðµ cüa ngß¶i ch½i
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((Trap_x-x)*(Trap_x-x)+(Trap_y-y)*(Trap_y-y)))<=x910101_g_Distance_Trap_Affect 
		and LuaFnHaveImpactOfSpecificDataIndex(sceneId,nHumanId,nImpact)<1 then						--Ngß¶i ch½i này t°n tÕi và ðang ðÑng g¥n cái bçy
			LuaFnSendSpecificImpactToUnit(sceneId,nHumanId,nHumanId,nHumanId,nImpact,0)				--Ngß¶i ch½i này s¨ b¸ dính hi®u Ñng cüa bçy
		end
		for i=0,9 do																				--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
			local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
			local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
			if Pet_Index~=-1 and Pet_Index then														--Nªu trân thú này ðang xu¤t chiªn
				local x,y=GetWorldPos(sceneId,Pet_Index)											--L¤y t÷a ðµ cüa trân thú này
				if floor(sqrt((Trap_x-x)*(Trap_x-x)+(Trap_y-y)*(Trap_y-y)))<=10
				and LuaFnHaveImpactOfSpecificDataIndex(sceneId,Pet_Index,nImpact)<1 then			--Trân thú trong vùng ð£t bçy
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,nImpact,0)	--Trân thú cûng b¸ dính bçy
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
function x910101_GlobalNews(sceneId,Tips)

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