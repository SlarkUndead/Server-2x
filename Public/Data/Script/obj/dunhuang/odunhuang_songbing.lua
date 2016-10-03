--ÐÕi LýNPC
--ËÎ¾ü
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************

function x008007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nRet = random(5)
		if	nRet <=1	then
			AddText(sceneId,"  Ba nåm trß¾c, tr§n chiªn · Ng÷c Môn Quan, chúng ta ðã thua quân Tây HÕ, ð¬ m¤t Ng÷c Môn Quan. Ðªn gi¶ chúng ta ðã ðánh ðßþc mß¶i m¤y tr§n cä l¾n và nhö, vçn chßa khôi phøc lÕi ðßþc Ng÷c Môn Quan")
		elseif	nRet <=2	then
			AddText(sceneId,"  M¤y hôm trß¾c, Dß½ng tß l®nh m¶i mµt ngß¶i · Qu¯c tØ giámTây Kinh ðªn nghe nói là em trai cüa thái thú Ng÷c Môn Quan Tào Diên Hu®, tên là Tào Diên Th÷. G¥n gây Dß½ng tß l®nh ngày nào cûng bàn bÕc quân m§t v¾i ông ta")
		elseif	nRet <=3	then
			AddText(sceneId,"  Ta nghe Trung quân quan nói, cách ðây không lâu, khi ông ta quan sát ð¸a hình · #GTam Nguy S½n#W thì nhìn th¤y mµt cô gái nhß th¥n tiên trên tr¶i. –, hình nhß là · g¥n #G [220,100]#W")
		elseif	nRet <=4	then
			AddText(sceneId,"  Ta nghe Trung quân quan nói, cách ðây không lâu, ông · #GChiªt Li­u Hi®p#W thì g£p quân Tây HÕ, sþ quá nên tr¯n vào mµt cái ðµng núi bí m§t m¾i thoát thân ðßþc. –, hình nhß là · g¥n #G [149,42]#W")
		else
			AddText(sceneId,"  CÑ theo #GChiªt Li­u Hi®p#W mà ði là t¾i ðßþc #GNg÷c Môn Quan#W, ¶, chính g¥n #G [66, 91]#W. Các hÕ nh¾ c¦n th§n, quân Tây HÕ r¤t tàn bÕo, giªt ngß¶i không nháy m¡t")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

