-- ³èÎïÎòÐÔÌáÉý

-- ½Å±¾ºÅ
x800106_g_ScriptId = 800106

-- NPC Ãû×Ö
x800106_g_Name = "Vân Phi Phi"

	
--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x800106_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 19820425 )
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800106_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x800106_g_ScriptId, "Nâng ngµ tính v¾i Cån C¯t Ðan" ,6,-1)
end


--**********************************
-- ³èÎïÎòÐÔÌáÉý
--**********************************
function x800106_PetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL )
	
	
	local moneyCosts = 
	{													-- Ë÷ÒýÊÇÕäÊÞµÄµ±Ç°ÎòÐÔÖµ
		[0] = 100,
		[1] = 110,
		[2] = 121,
		[3] = 133,
		[4] = 146,
		[5] = 161,
		[6] = 177,
		[7] = 194,
		[8] = 214,
		[9] = 235,
	}
	local	succOdds = 
	{													-- Ë÷ÒýÊÇÕäÊÞµÄµ±Ç°ÎòÐÔÖµ
		[0] = 1000,
		[1] = 850,
		[2] = 750,
		[3] = 600,
		[4] = 200,
		[5] = 310,
		[6] = 310,
		[7] = 200,
		[8] = 70,
		[9] = 100,
	}
	
	local	SelfMoney = GetMoney(sceneId, selfId)
	
	local gengu = LuaFnGetPetGenGuByGUID(sceneId, selfId, mainPetGuidH, mainPetGuidL)
	local savvy = GetPetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL )
	if savvy == 10 then
		x800106_NotifyTip(sceneId, selfId, "Ðã ðÕt t¯i ða!" );
		return 0;
	end
	local cost = moneyCosts[savvy];
	local succRate = succOdds[savvy];	
	local rand = random(1000)
	
	--¼ì²é ¸ú¹Ç µ¤
	local nSavvyNeed = savvy+1;	
	local nItemIdGenGuDan = 0;
	local msgTemp;
	if nSavvyNeed >= 1 and nSavvyNeed <= 3 then
		msgTemp = "S½";
		nItemIdGenGuDan = 30502000;
	elseif nSavvyNeed >= 4 and nSavvyNeed <= 6 then
		msgTemp = "Trung"
		nItemIdGenGuDan = 30502001;
	elseif nSavvyNeed >= 7 and nSavvyNeed <= 10 then
		msgTemp = "Cao"
		nItemIdGenGuDan = 30502002;
	end
	
	local nYaoDingCount = GetItemCount(sceneId, selfId, nItemIdGenGuDan);
	if nYaoDingCount <= 0 then
		local msg = format("Thång ngµ tính lên %d c¥n %s c¤p Cån c¯t ðan", savvy+1, msgTemp )
		x800106_NotifyTip(sceneId, selfId, msg );
		return 0;
	end
	local	SelfMoney = GetMoney(sceneId, selfId)
	if SelfMoney < cost then 
		return 0;
	end
	
	--É¾³ý¸ú¹Ç µ¤
	local bRet = DelItem(sceneId, selfId, nItemIdGenGuDan, 1)
	
	if bRet<=0 then
		local msg = format("Hüy ðÕo cø th¤t bÕi!");
		x800106_NotifyTip(sceneId, selfId, msg );		
		return 0;
	end
	
	CostMoney(sceneId,selfId,cost)
		
	if rand > succRate then
		
		local nSavvyDown;
		if savvy == 0 then
		nSavvyDown = 0;
		else
		if savvy == 1 then
		nSavvyDown = 1;
		else
		if savvy == 2 then
		nSavvyDown = 2;
		else
		if savvy == 3 then
		nSavvyDown = 2;
		else
		if savvy == 4 then
		nSavvyDown = 0;
		else
		if savvy == 5 then
		nSavvyDown = 1;
		else
		if savvy == 6 then
		nSavvyDown = 2;
		else
		if savvy == 7 then
		nSavvyDown = 0;
		else
		if savvy == 8 then
		nSavvyDown = 1;
		else
		if savvy == 9 then
		nSavvyDown = 2;
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		SetPetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL, savvy - nSavvyDown );
		
		local msg = format("Hþp thành th¤t bÕi, trß¾c m¡t ngµ tính cüa trân thú là %d", savvy - nSavvyDown );
		x800106_NotifyTip(sceneId, selfId, msg );
		return 0;
	end
	
	SetPetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL, nSavvyNeed )
	
	local szPlayerName, szPetTransString;
	
	szPetTransString = GetPetTransString(  sceneId, selfId, mainPetGuidH, mainPetGuidL );
	szPlayerName = GetName( sceneId, selfId );
	
	local msg = format("Thành công, ngµ tính trân thú cüa các hÕ +1");
	x800106_NotifyTip(sceneId, selfId, msg );

	if nSavvyNeed >= 4 then
		
		local szMsg;
		--szMsg = format("#W#{_INFOUSR%s}#c00FFFF träi qua 1 s¯ c¯ g¡ng, ðã giúp cho#{_INFOMSG%s} nâng cao ngµ tính ðªn #Y%d#c00FFFF, tß ch¤t trân thú ðßþc nâng cao!",szPlayerName, szPetTransString, nSavvyNeed );
		
		AddGlobalCountNews( sceneId, szMsg );
	
	end
	
	--³É¹¦µÄ¹âÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
		
end


--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x800106_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
