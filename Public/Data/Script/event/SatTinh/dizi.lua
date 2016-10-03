--Th§p nh¸ Sát Tinh
--Phá Phàm, Phá Tr¥n
--Author: Hoàng Steven

--************************--
x910115_g_ScriptId=910115												
--************************--
x910115_g_Young_Monk_1="Phá Phàm"
x910115_g_Young_Monk_2="Phá Tr¥n"
--************************--
x910115_g_Title=																			--List danh hi®u
{
	[1]={	Name="Quäng Møc Thiên Vß½ng",	Won_Time=1,		Infor1="Ð¬ ðÕt danh hi®u này c¥n ðánh bÕi t¤t cä sát tinh #G",	Infor2=" l¥n#W."	},
	[2]={	Name="Ða Vån Thiên Vß½ng",		Won_Time=10,	Infor1="Ð¬ ðÕt danh hi®u này c¥n ðánh bÕi t¤t cä sát tinh #G",	Infor2=" l¥n#W."	},
	[3]={	Name="Tång Trß·ng Thiên Vß½ng",	Won_Time=50,	Infor1="Ð¬ ðÕt danh hi®u này c¥n ðánh bÕi t¤t cä sát tinh #G",	Infor2=" l¥n#W."	},
	[4]={	Name="Trì Qu¯c Thiên Vß½ng",	Won_Time=200,	Infor1="Ð¬ ðÕt danh hi®u này c¥n ðánh bÕi t¤t cä sát tinh #G",	Infor2=" l¥n#W."	},
}
--************************--
x910115_g_Global_List=																		--Danh sách các biªn Global
{
	[1]=SHENGSI_CONGTONTHANH,
	[2]=SHENGSI_HOADUNG,
	[3]=SHENGSI_NGOVINH,
	[4]=SHENGSI_VOTUNG,
	[5]=SHENGSI_LAMSUNG,
	[6]=SHENGSI_HODIENTRAC,
	[7]=SHENGSI_TONGKHUONG,
	[8]=SHENGSI_LUQUANDAT,
	[9]=SHENGSI_LYKHOI,
	[10]=SHENGSI_QUANTHINH,
	[11]=SHENGSI_LOCHISINH,
	[12]=SHENGSI_TANMINH,
}
--************************--
x910115_g_Impact_List={9760,9762,9772,9775,9753}											--Danh sách các hi®u Ñng do Boss ð¬ lÕi
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910115_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		if GetName(sceneId,targetId)==x910115_g_Young_Monk_2 then
			AddText(sceneId,"Trong tr§n chiªn #GTh§p nh¸ Sát Tinh#W gian khó, ch¡c hÆn các v¸ ð«u ðã b¸ t±n hÕi l¾n lao. Ti¬u tång không biªt làm gì ð¬ giúp các v¸ cä, chï có th¬ giúp các v¸ xóa ði nhæng hi®u Ñng x¤u do chúng ð¬ lÕi. Ti¬u tång s¨ c¯ hªt sÑc mình!")
			AddNumText(sceneId,x910115_g_ScriptId,"Xóa bö hi®u Ñng Boss ð¬ lÕi",6,0)		--Xóa bö các hi®u Ñng do Boss còn ð¬ lÕi
			AddNumText(sceneId,x910115_g_ScriptId,"Bö qua",-1,1)							--Bö qua
		else
			AddText(sceneId,"Tr§n chiªn #GTh§p nh¸ Sát Tinh#W gian khó, m²i l¥n ðánh bÕi t¤t cä #G12 Sát Tinh#W thì s¨ tång #G1 ði¬m#W danh v÷ng. Khi danh v÷ng ðÕt ðªn ngßÞng nào ðó có th¬ ð±i l¤y danh hi®u #GChiªn th¡ng Th§p nh¸ Sát Tinh#W cao quý. Ti¬u tång có th¬ giúp gì?")
			AddNumText(sceneId,x910115_g_ScriptId,"Ð±i danh hi®u #GTh§p nh¸ Sát Tinh",6,2)	--Ð±i danh hi®u
			AddNumText(sceneId,x910115_g_ScriptId,"V« danh hi®u #GTh§p nh¸ Sát Tinh",11,3)	--Ð±i danh hi®u
			AddNumText(sceneId,x910115_g_ScriptId,"Bö qua",-1,1)							--Bö qua
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910115_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()

	--************************--
	if key==1 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--************************--
	if key==0 then
		local nFind=0
		for i=1,getn(x910115_g_Impact_List) do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910115_g_Impact_List[i])>0 then
				nFind=1
				LuaFnCancelSpecificImpact(sceneId,selfId,x910115_g_Impact_List[i])
			end
		end
		if nFind==0 then
			BeginEvent(sceneId)			
				AddText(sceneId,"Trên ngß¶i các hÕ không có b¤t kÏ änh hß·ng x¤u nào!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)			
				AddText(sceneId,"Ti¬u tång ðã hoàn thành công vi®c cüa mình r°i. Các hÕ cäm th¤y thª nào?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	--************************--
	if key==2 then
		local Min=GetMissionData(sceneId,selfId,x910115_g_Global_List[1])
		for i=2,12 do
			if GetMissionData(sceneId,selfId,x910115_g_Global_List[i])<Min then
				Min=GetMissionData(sceneId,selfId,x910115_g_Global_List[i])
			end
		end
		if Min==0 then
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng t¤t cä #G12 Sát Tinh#W cüa các hÕ là #G0 l¥n#W.")
				AddText(sceneId,"Các hÕ c¥n n² lñc h½n næa, chiªn th¡ng t¤t cä #GSát Tinh#W s¨ nh§n ðßþc danh hi®u cao quý h½n!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			local nTitle=""
			for i=1,getn(x910115_g_Title) do
				if Min<=x910115_g_Title[i].Won_Time then
					nTitle=x910115_g_Title[i].Name
				end
			end
			AwardNickTitle(sceneId,selfId,"#B#460 "..nTitle.." #461")
			DispatchAllTitle(sceneId,selfId)
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ l¥n chiªn th¡ng t¤t cä #G12 Sát Tinh#W cüa các hÕ là #G"..Min.." l¥n#W.")
				AddText(sceneId,"Danh hi®u tß½ng Ñng hi®n tÕi cüa các hÕ là #G"..nTitle.."!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	--************************--
	if key==3 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các loÕi danh hi®u cao quý tß½ng Ñng v¾i n² lñc ðánh bÕi #G12 Sát Tinh#W cüa các v¸. Cø th¬ nhß sau:")
			AddText(sceneId,"#cffcccc----------------------------------")
			for i=1,getn(x910115_g_Title) do
				AddText(sceneId,"Danh hi®u #Y"..x910115_g_Title[i].Name.."#r#W"..x910115_g_Title[i].Infor1..x910115_g_Title[i].Won_Time..x910115_g_Title[i].Infor2)
				AddText(sceneId,"#cffcccc----------------------------------")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	
end