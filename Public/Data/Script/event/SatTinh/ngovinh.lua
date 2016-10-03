--Th§p nh¸ Sát Tinh
--Ngô Vînh
--Author: Hoàng Steven

--******************--
x910100_g_ScriptId=910100
--******************--
x910100_g_Boss_Name="Ngô Vînh"																	--Tên cüa BOSS
--******************--
x910100_g_Last_Time=1																			--Th¶i gian l¥n trß¾c g÷i phøc binh
x910100_g_Last_Color=2																			--Màu s¡c phøc binh (1~Ðö, 2~Vàng, 3~Tím)
x910100_g_Last_Died=3																			--Phøc binh l¥n trß¾c ðã chªt
x910100_g_Last_Told=4																			--Ðã nói sau khi phøc binh l¥n trß¾c chªt chßa
--******************--
x910100_g_Soldier_Index={
	[1]=13704,																					--H°ng s¡c phøc binh
	[2]=13704,																					--Hoàng s¡c phøc binh
	[3]=13704																					--TØ s¡c phøc binh
}
x910100_g_Soldier_Name={
	[1]="H°ng s¡c phøc binh",																	--H°ng s¡c phøc binh
	[2]="Hoàng s¡c phøc binh",																	--Hoàng s¡c phøc binh
	[3]="TØ s¡c phøc binh"																		--TØ s¡c phøc binh
}
--******************--
x910100_g_Impact_Immune=9759																	--Hi®u Ñng mi­n d¸ch
x910100_g_Impact_Lost_HP=9754																	--M¤t máu sau khi tiêu di®t ðúng phøc binh
x910100_g_Impact_Prepair=9777																	--Ðang v§n khí chu¦n b¸ tung chiêu
--******************--
x910100_g_Next_Time_Call=60000																	--Khoäng cách 2 l¥n g÷i phøc binh liên tiªp
--******************--
x910100_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]="Ngày này nåm sau s¨ là ngày d² cüa các ngß½i... Ðªn cä ðây...",						--Boss m¾i xu¤t hi®n
	[2]="Phøc binh nghe l®nh cüa ta... H°ng trang t¯ khöa...",									--G÷i phøc binh ðö
	[3]="Phøc binh nghe l®nh cüa ta... Hoàng lß½ng mÛ mµng...",									--G÷i phøc binh vàng
	[4]="Phøc binh nghe l®nh cüa ta... TØ khí ðông lþi...",										--G÷i phøc binh tím
	[5]="Các ngß½i ðã giªt chªt phøc binh cüa ta r°i...Sï nhøc ta quá...",						--Khi phøc binh chªt
	[6]=x910100_g_Boss_Name.." ðã vào chiªn ð¤u!",												--Boss vào chiªn ð¤u
	[7]="Ta... Ta... Dù có chªt ta cûng không tha cho các ngß½i!",								--Boss tØ nÕn
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910100_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910100_g_Monster_Dialogue[1])								--Câu nói khai chiªn cüa Boss
	x910100_GlobalNews(sceneId,x910100_g_Monster_Dialogue[6])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910100_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	
end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910100_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	local nCheck=x910100_CheckCondition(sceneId,selfId)											--Ki¬m tra xem có ngß¶i ch½i nào ðÑng xung quanh boss không
	if nCheck==0 then
		x910100_ResetMyAI(sceneId,selfId)														--Set lÕi các thuµc tính cho Boss
		return
	end
	--******************--
	local nColor=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910100_g_Last_Color)				--L¤y màu s¡c cüa phøc binh
	if nColor==0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Died,1)						--Ðánh d¤u phøc binh l¥n trß¾c ðã chªt
	else
		if x910100_IsLastSoldierDied(sceneId,selfId)==1 then									--Phøc binh l¥n trß¾c ðã chªt
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Died,1)					--Ðánh d¤u phøc binh l¥n trß¾c ðã chªt
		else
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Died,0)					--Ðánh d¤u phøc binh l¥n trß¾c chßa chªt
		end
	end
	--******************--
	local Last_Died=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910100_g_Last_Died)			--Ki¬m tra phøc binh l¥n trß¾c ðã chªt chßa (0~Chßa, 1~Ðã chªt)
	if Last_Died==0 then																		--Nªu phøc binh chßa chªt thì không làm gì næa
		return
	end
	--******************--
	local Last_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910100_g_Last_Time)			--L¤y th¶i gian trß¾c ðó g÷i phøc binh
	if Last_Time<=0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Time,x910100_g_Next_Time_Call)--Reset th¶i gian g÷i phøc binh l¥n t¾i
	else
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Time,Last_Time-nTick)		--C§p nh§t lßþt g÷i phøc binh t¾i
	end
	--******************--
	local Last_Told=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910100_g_Last_Told)			--Boss ðã nói sau khi phøc binh l¥n trß¾c chªt chßa
	if Last_Told==0 and nColor>0 then															--Nªu phøc binh ðã chªt mà chßa ðßþc thông báo
		MonsterTalk(sceneId,selfId,"",x910100_g_Monster_Dialogue[5])							--Boss phàn nàn phøc binh ðã chªt
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Told,1)						--Ðánh d¤u Boss ðã nói
		LuaFnCancelSpecificImpact(sceneId,selfId,x910100_g_Impact_Immune)						--Xóa bö trÕng thái mi­n d¸ch cüa Boss
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910100_g_Impact_Lost_HP,0)	--Boss b¸ giäm 10% máu
		x910100_DelSoldiersBeside(sceneId)														--Del các phøc binh khác không liên quan
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Time,x910100_g_Next_Time_Call+1)--Reset th¶i gian g÷i phøc binh l¥n t¾i
	end
	--******************--
	if Last_Time-nTick<=5000 and Last_Time-nTick>4000 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910100_g_Impact_Prepair)<1 then--Chßa v§n khí
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910100_g_Impact_Prepair,0)	--V§n khí chu¦n b¸ g÷i phøc binh
	end
	--******************--
	if Last_Time==x910100_g_Next_Time_Call then													--Nªu ðã qua 1 phút
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		x910100_CallSoldiers(sceneId,selfId,x,y)												--G÷i phøc binh xung quanh Boss
		local Talk_Index=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910100_g_Last_Color)		--L¤y màu s¡c cüa phøc binh chính là chï s¯ tß½ng Ñng trong l¶i nói cüa Boss
		MonsterTalk(sceneId,selfId,"",x910100_g_Monster_Dialogue[Talk_Index+1])					--Câu g÷i phøc binh cüa Boss
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Told,0)						--Chßa thông báo
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910100_g_Impact_Immune,0)	--Boss ðßþc mi­n d¸ch
	end
	--******************--

end
--**********************************--
--*        Check Condition         *--
--**********************************--
function x910100_CheckCondition(sceneId,selfId,enmeyId)

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
function x910100_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910100_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910100_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910100_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	x910100_DelSoldiersBeside(sceneId)															--Xóa các phøc binh cû
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910100_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Ha ha... "..PlayerName..", ngß½i ðã tØ nÕn r°i, tên nào s¨ là nÕn nhân tiªp theo ðây... Ha ha...!")	--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910100_OnDie(sceneId,selfId,killerId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910100_g_Monster_Dialogue[7])								--Câu nói cüa Boss lúc chªt
	--******************--
	x910100_DelSoldiersBeside(sceneId)															--Xóa các phøc binh
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,22)											--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,22,nBoss-1)												--Giäm s¯ Boss ðang chiªn ð¤u xu¯ng
	if nBoss-1==0 then
		LuaFnSetCopySceneData_Param(sceneId,16,30000)											--C§p nh§t th¶i gian g÷i Boss tiªp theo là 30 giây
	end
	--******************--
	x910100_GiveAllHumanRank(sceneId,killerId)													--C§p nh§t rank cho ngß¶i ch½i
	--******************--
	
end
--**********************************--
--*       Give All Human Rank      *--
--**********************************--
function x910100_GiveAllHumanRank(sceneId,killerId)

	--******************--
	local Team_Index=GetTeamId(sceneId,killerId)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and GetTeamId(sceneId,nHumanId)==Team_Index then
			local Last_Time=GetMissionData(sceneId,nHumanId,SHENGSI_NGOVINH)
			SetMissionData(sceneId,nHumanId,SHENGSI_NGOVINH,Last_Time+1)						--C§p nh§t s¯ l¥n th¡ng Boss cho ngß¶i ch½i
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng "..x910100_g_Boss_Name.." cüa các hÕ tång lên "..(Last_Time+1).." l¥n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910100_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Time,x910100_g_Next_Time_Call+1)	--Kh·i tÕo th¶i gian ra phøc binh tr· v« th¶i gian xu¤t hi®n Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Color,0)							--Kh·i tÕo màu s¡c v×a ra là 0
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Told,0)							--Ðã nói sau khi phøc binh binh l¥n trß¾c chªt
	--******************--
	
end
--**********************************--
--*      Is Last Soldier Died      *--
--**********************************--
function x910100_IsLastSoldierDied(sceneId,selfId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	local nColor=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910100_g_Last_Color)				--L¤y màu s¡c cüa phøc binh
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910100_g_Soldier_Name[nColor]) then	--Nªu phøc binh møc tiêu ðã chªt
			return 0
		end
	end
	--******************--
	return 1
	--******************--

end
--**********************************--
--*       Del Soldiers Beside      *--
--**********************************--
function x910100_DelSoldiersBeside(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910100_g_Soldier_Name[1] or GetName(sceneId,MonsterId)==x910100_g_Soldier_Name[2] or GetName(sceneId,MonsterId)==x910100_g_Soldier_Name[3]) then	--Nªu phøc binh møc tiêu ðã chªt
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--

end
--**********************************--
--*          Call Soldiers         *--
--**********************************--
function x910100_CallSoldiers(sceneId,selfId,Boss_X,Boss_Y)

	--******************--
	local My_Level=GetLevel(sceneId,selfId)												--L¤y level cüa Boss
	local nDec
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
	local x,y
	local ran=random(3)																	--Phøc binh ngçu nhiên s¨ ðßþc ch÷n làm ði¬m yªu cüa Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910100_g_Last_Color,ran)				--Ðánh d¤u màu s¡c phøc binh yªu ði¬m cüa Boss
	--******************--
	x=Boss_X+random(2)-random(2)														--Ngçu nhiên t÷a ðµ cüa phøc binh xung quanh Boss
	y=Boss_Y+random(2)-random(2)
	local MonsterID=LuaFnCreateMonster(sceneId,x910100_g_Soldier_Index[1]+nDec,x,y,27,1,-1)	--G÷i phøc binh màu ðö
	SetCharacterName(sceneId,MonsterID,x910100_g_Soldier_Name[1])						--Set tên cho phøc binh
	--******************--
	x=Boss_X+random(2)-random(2)														--Ngçu nhiên t÷a ðµ cüa phøc binh xung quanh Boss
	y=Boss_Y+random(2)-random(2)
	local MonsterID=LuaFnCreateMonster(sceneId,x910100_g_Soldier_Index[2]+nDec,x,y,27,1,-1)	--G÷i phøc binh màu vàng
	SetCharacterName(sceneId,MonsterID,x910100_g_Soldier_Name[2])						--Set tên cho phøc binh
	--******************--
	x=Boss_X+random(2)-random(2)														--Ngçu nhiên t÷a ðµ cüa phøc binh xung quanh Boss
	y=Boss_Y+random(2)-random(2)
	local MonsterID=LuaFnCreateMonster(sceneId,x910100_g_Soldier_Index[3]+nDec,x,y,27,1,-1)	--G÷i phøc binh màu tím
	SetCharacterName(sceneId,MonsterID,x910100_g_Soldier_Name[3])						--Set tên cho phøc binh
	--******************--

end
--**********************************--
--*           Global News          *--
--**********************************--
function x910100_GlobalNews(sceneId,Tips)

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