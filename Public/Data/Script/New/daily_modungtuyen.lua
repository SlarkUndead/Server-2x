--NPC ÐÕi Lý
--Mµ Dung Tuy«n - Tiªp dçn Mµ Dung Gia
--Script by Sói Ðz
--ID = 960025

x960025_g_ScriptId	= 960025

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960025_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Mµ Dung Tuy«n, ð® tØ tiªp dçn môn phái Mµ Dung.")
		local MP = GetMenPai(sceneId,selfId)
		if MP == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) <= 0 then
			AddText(sceneId,"Ta th¤y các hÕ cûng khôi ngô tu¤n tú, chi b¢ng hãy theo ta v« bái kiªn chß·ng môn gia nh§p Mµ Dung Gia.")
			AddText(sceneId,"Các hÕ ðã t×ng nghe nói ðµc chiêu Ð¦u Chuy¬n Tinh Di cüa bän phái chßa. Còn do dñ gì næa mà không theo ta?")
			AddNumText(sceneId,x960025_g_ScriptId,"Ðªn Mµ Dung S½n Trang",9,0)
		elseif MP == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then
			AddText(sceneId,"Võ công cüa các hÕ tiªn bµ nhanh nhß v§y, hÆn là r¤t ðßþc sß phø quan tâm ðây mà. Bän phái th§t tñ hào khi có mµt nhân tài xu¤t chúng võ ngh®!")
		elseif MP ~= 9 then
			AddText(sceneId,"Hài...#rLâu r°i không g£p các hÕ. Võ công cüa các hÕ tiªn bµ nhanh nhß v§y, giá mà tu luy®n · Mµ Dung có phäi gi¶ này ðã xu¤t chúng r°i không?. Tiªc th§t, tiªc th§t...")
		end
		--AddNumText(sceneId,x960025_g_ScriptId,"Tiªn cØ gia nh§p môn phái",9,1)
		AddNumText(sceneId,x960025_g_ScriptId,"Lai l¸ch Mµ Dung Gia",8,2)
		AddNumText(sceneId,x960025_g_ScriptId,"Ð£c trßng chiªn ð¤u",8,3)
		AddNumText(sceneId,x960025_g_ScriptId,"Ð£c trßng cuµc s¯ng",8,4)
		AddNumText(sceneId,x960025_g_ScriptId,"Ð¦u Chuy¬n Tinh Di",8,5)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960025_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	if key == 0 then
		if IsHaveMission(sceneId,selfId,4021)>0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Trên ngß¶i các hÕ có ngân phiªu, không th¬ truy«n t¯ng ðßþc!");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel(sceneId,selfId)<10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ c¥n tu luy®n sau khi ðÕt t¾i c¤p 10 r°i ðªn tìm ta!");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900),"TransferFunc",sceneId,selfId,435,91,116)
		end
	elseif key == 1 then
		if GetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ hãy dçn ngß¶i chï ð¸nh ðªn Mµ Dung S½n Trang ch² ngß¶i bái sß môn phái - Mµ Dung Ki®t#H[48,144]#W, ch÷n chÑc nång #GGia nh§p môn phái#W là có th¬ gia nh§p môn phái r°i. S¨ có ph¥n thß·ng h¤p dçn ðó!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Chï có ð® tØ bän phái m¾i có th¬ tiªn cØ gia nh§p môn phái.")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif key == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"Mµ Dung Gia ð¤t Cô Tô có dòng dõi hoàng tµc nß¾c ÐÕi Yªn. Th¶i loÕn lÕc phân tranh b¸ T¯ng tri«u tß¾c ðoÕt ngôi v¸, ðành phäi thoái lui v« ð¤t Cô Tô nuôi trí phøc qu¯c lâu dài.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ð® tØ Mµ Dung có ð£c trßng n±i b§t là nµi lñc cñc kÏ thâm h§u.")
			AddText(sceneId,"Mµt m£t kÛ nång xu¤t th¥n, có th¬ d­ dàng kªt li­u ð¯i thü chï trong vài chiêu thÑc nhö, m£t khác s· hæu trong mình tâm pháp \"G§y ông ð§p lßng ông\", khiªn ð¸ch nhân chªt b·i chính công phu ð¡c ý nh¤t cüa mình.")
			AddText(sceneId,"Các thª h® ð¶i sau cüa Mµ Dung Gia luôn phäi nuôi nghi®p l¾n phøc hßng qu¯c gia, khôi phøc vinh phú mµt th¶i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 4 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ma L® Thu§t: D¸ thu§t sØ døng bùa chú ð£c bi®t cüa Mµ Dung Gia. Bùa chú ð£c bi®t linh nghi®m nªu møc tiêu là ð¸ch nhân, ngoài ra cûng có th¬ sØ døng ð¬ tång cß¶ng công lñc cho các chiªn hæu.")
			AddText(sceneId,"Chª bùa: Chª bùa là mµt bß¾c quan trong cüa Ma L® Thu§t, là nguyên li®u c½ bän cüa linh thu§t Ma L® cüa môn phái. Ngoài ra cûng có th¬ rèn luy®n công lñc cho bän thân nh¶ vi®c chª bùa")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Bän phái có tuy®t ðïnh công phu Ð¦u Chuy¬n Tinh Di mà ngß¶i ð¶i thß¶ng g÷i là \"G§y ông ð§p lßng ông\".")
			AddText(sceneId,"Chính vì võ công tuy®t h÷c này mà hàng loÕt cái chªt cüa các cao thü trên giang h° nhß Huy«n Không ðÕi sß cüa Thiªu Lâm Tñ hay phó bang chü Cái Bang Mã ÐÕi Nguyên ð«u nghi hªt do Mµ Dung công tØ cüa chúng ta gây ra.")
			AddText(sceneId,"Trong phái trß¾c gi¶ dß¶ng nhß chï có Mµ Dung Phøc công tØ là n¡m ðßþc ðµc chiêu này, ngoài ra m÷i ngß¶i v¾i Ð¦u Chuy¬n Tinh Di g¥n nhß vçn còn là mµt bí ¦n.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end