--½á»é»¨½¿(ºÀ»ª)

--½Å±¾ºÅ (¸Ä³ÉÕýÈ·½Å±¾ºÅ)

x800202_g_scriptId = 800202

x800202_g_scriptParamIndex_xibao = 0;		--Ï²°üÊ±¼ä
x800202_g_scriptParamIndex_xibao_TI = 1;	--Ï²°ü·¢·ÅtoÕ ðµ Ê±¼ä¼ä¸ô
x800202_g_scriptParamIndex_lihua = 2;		--Àñ»¨Ê±¼ä
x800202_g_scriptParamIndex_lihua_TI = 3;	--Àñ»¨·¢·ÅtoÕ ðµ Ê±¼ä¼ä¸ô

x800202_g_timeInterval_xibao = 1000 * 10;	--±ê×¼Ï²°ü·¢·ÅtoÕ ðµ Ê±¼ä¼ä¸ô
x800202_g_timeInterval_lihua = 1000 * 1;	--±ê×¼Àñ»¨·¢·ÅtoÕ ðµ Ê±¼ä¼ä¸ô
x800202_g_maxXibaoCount = 10;							--Ã¿´ÎtoÕ ðµ Ï²°üÊýÁ¿

x800202_g_itemBoxPos_dropRange_min = 2;			--Ï²°ütoÕ ðµ µôÂä·¶Î§
x800202_g_itemBoxPos_dropRange_max = 4;			--Ï²°ütoÕ ðµ µôÂä·¶Î§

x800202_g_gemDropRate = 3;					--³ö±¦Ê¯È¨ÖØ(x%)

x800202_g_medicineDropCount_min = 1;		--³öÒ©Æ·toÕ ðµ ×îÐ¡ÊýÄ¿
x800202_g_medicineDropCount_max = 6;		--³öÒ©Æ·toÕ ðµ ×î´óÊýÄ¿


--Ï²°üµÈc¤p	³ö±¦Ê¯È¨ÖØ	¿ª³öÒ©toÕ ðµ È¨ÖØ	Ë²²¹Ò©toÕ ðµ c¤p±ð	Ò©toÕ ðµ ÊýÁ¿
--µÍc¤p	0.01	0.99	rand(5,9)	rand(1,3)
--ÖÐc¤p	0.02	0.98	rand(5,9)	rand(1,4)
--¸ßc¤p	0.03	0.97	rand(5,9)	rand(1,5)

--Ò©Æ·±í
x800202_g_itemList = {{id=30001011, rate=10},
					{id=30001012, rate=10},
					{id=30001013, rate=10},
					{id=30001014, rate=10},
					{id=30001015, rate=10},
					{id=30002011, rate=10},
					{id=30002012, rate=10},
					{id=30002013, rate=10},
					{id=30002014, rate=10},
					{id=30002015, rate=10}}
					
--±¦Ê¯±í
x800202_g_gemList = {{id=50101001, rate=25},
					{id=50101002, rate=25},
					{id=50111001, rate=25},
					{id=50111002, rate=25}};
					
--ÑÌ»¨±í
x800202_g_effectList = {4930, 4931, 4932, 4933, 4934, 4935, 4936, 4937, 4938, 4939};

function x800202_OnInit(sceneId, busId)
	LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao, 0);
	LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao_TI, x800202_g_timeInterval_xibao);
	LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua, 0);
	LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua_TI, x800202_g_timeInterval_lihua);
end

function x800202_OnTimer(sceneId, busId, elapseTime)
	if elapseTime then
	else
		return 0;
	end
	
	local saveXibaoTime = LuaFnGetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao);
	local saveXibaoTimeInterval = LuaFnGetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao_TI);
	if saveXibaoTime and saveXibaoTimeInterval then
		saveXibaoTime = saveXibaoTime + elapseTime;
		if saveXibaoTime >= saveXibaoTimeInterval then
			local i;
			for i = 1, x800202_g_maxXibaoCount do
				x800202_CreateXibao(sceneId, busId);
			end
			LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao, 0);
			LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao_TI, x800202_g_timeInterval_xibao);
		else
			LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_xibao, saveXibaoTime);
		end;
	end
	
	local saveLihuaTime = LuaFnGetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua);
	local saveLihuaTimeInterval = LuaFnGetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua_TI);
	if saveLihuaTime and saveLihuaTimeInterval then
		saveLihuaTime = saveLihuaTime + elapseTime;
		if saveLihuaTime >= saveLihuaTimeInterval then
			x800202_CreateLihua(sceneId, busId);
			LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua, 0);
			LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua_TI, x800202_g_timeInterval_lihua);
		else
			LuaFnSetBusScriptParam(sceneId, busId, x800202_g_scriptParamIndex_lihua, saveLihuaTime);
		end;
	end
end

function x800202_CreateXibao(sceneId, busId)
	local posX, posZ = GetWorldPos(sceneId, busId);
	if posX and posZ then
		local posRange = x800202_g_itemBoxPos_dropRange_max - x800202_g_itemBoxPos_dropRange_min;
		local randX = random(posRange + posRange) - posRange - 1;
		local randZ = random(posRange + posRange) - posRange - 1;
		
		if randX < 0 then
			randX = randX - x800202_g_itemBoxPos_dropRange_min;
		end
		
		if randZ < 0 then
			randZ = randZ - x800202_g_itemBoxPos_dropRange_min;
		end
		
		posX = posX + randX;
		posZ = posZ + randZ;
		itemBoxId = LuaFnItemBoxEnterSceneEx(sceneId, posX, posZ, 775, 60000);
		if itemBoxId and itemBoxId ~= -1 then
			local randValue = random(100) - 1;
			if randValue < x800202_g_gemDropRate then
				local gem, totalRate;
				totalRate = 0;
				for _, gem in x800202_g_gemList do
					totalRate = totalRate + gem.rate;
				end
				
				local randRate = random(totalRate) - 1;
				local tempRate = 0;
				for _, gem in x800202_g_gemList do
					tempRate = tempRate + gem.rate;
					if tempRate > randRate then
						AddItemToBox(sceneId, itemBoxId, QUALITY_MUST_BE_CHANGE, 1, gem.id);
						break;
					end
				end
			else
				local item, totalRate;
				totalRate = 0;
				for _, item in x800202_g_itemList do
					totalRate = totalRate + item.rate;
				end
				
				local randItemCount = random(x800202_g_medicineDropCount_max - x800202_g_medicineDropCount_min) + x800202_g_medicineDropCount_min - 1;
				
				local i, randRate;
				for i = 0, randItemCount - 1 do
					randRate = random(totalRate) - 1;
					local tempRate = 0;
					for _, item in x800202_g_itemList do
						tempRate = tempRate + item.rate;
						if tempRate > randRate then
							AddItemToBox(sceneId, itemBoxId, QUALITY_MUST_BE_CHANGE, 1, item.id);
							break;
						end
					end
				end
			end
		end
	end
end

function x800202_CreateLihua(sceneId, busId)
	local numPassenger = LuaFnGetBusPassengerCount(sceneId, busId);
	if numPassenger and numPassenger > 0 then
		local randIndex = random(numPassenger) - 1;
		local showEffectObjID = LuaFnGetBusPassengerIDByIndex(sceneId, busId, randIndex);
		if showEffectObjID and showEffectObjID ~= -1 then
			local numEffect = getn(x800202_g_effectList);
			local randEffect = random(numEffect);
			LuaFnSendSpecificImpactToUnit(sceneId, showEffectObjID, showEffectObjID, showEffectObjID, x800202_g_effectList[randEffect], 0);
		end
	end
end

