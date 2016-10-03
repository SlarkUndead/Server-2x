-- created by ×ó´ºÎ°

x400962_g_ScriptId = 400962; --½Å±¾ºÅ
x400962_g_name	="³µ´«ÈÊ";

--´«ËÍÄ¿±ê
x400962_g_transfer_target =
{
	[1] = {x = 216, z = 340, scene_num = 0}, 		--LÕc Dß½ng
	[2] = {x = 330, z = 248, scene_num = 1}, 		--Tô Châu
	[3] = {x = 378, z = 187, scene_num = 2}, 		--ĞÕi Lı
	[4] = {x = 294, z = 90, scene_num = 186}, 	--Lâu Lan
	[5] = {x = 206, z = 266, scene_num = 34}, 	--Nam Häi
	[6] = {x = 186, z = 43, scene_num = 28},		--Nam Chiêu
}

-- ÊÕ·Ñ½ğ¶î
x400962_g_transfer_cost = 5000; -- 50Òø½»×Ó

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x400962_OnDefaultEvent( sceneId, selfId, targetId )
	x400962_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x400962_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_02}" );
		AddNumText(sceneId, x400962_g_ScriptId, "LÕc Dß½ng", 9, 1);
		AddNumText(sceneId, x400962_g_ScriptId, "Tô Châu", 9, 2);
		AddNumText(sceneId, x400962_g_ScriptId, "ĞÕi Lı", 9, 3);
		AddNumText(sceneId, x400962_g_ScriptId, "Lâu Lan", 9, 4);
		AddNumText(sceneId, x400962_g_ScriptId, "Nam Häi", 9, 5);
		AddNumText(sceneId, x400962_g_ScriptId, "Nam Chiêu", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x400962_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÅÜÉÌÏà¹Ø
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ğang giæ ngân phiªu ta không th¬ giúp ğßşc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Phi thß¶ng th§t có l²i, b·i vì ğß¶ng xá quá mÑc xa xôi, chúng ta n½i này v§n chuy¬n nång lñc hæu hÕn, cho nên không tiªp thø t± ğµi truy«n t¯ng, thïnh ngài r¶i ği ğµi ngû mµt mình tiªn ğªn ği!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  Ngß½i có thuÖ v§n khoang chÑa hàng trong ngß¶i, chúng ta trÕm d¸ch không th¬ cho ngß½i cung c¤p truy«n t¯ng phøc vø.")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"±¾´Î´«ËÍÊÕÈ¡50Òø½»×Ó,ÄãÒª´«ËÍÂğ£¿"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 61);
			end
			AddNumText(sceneId, x400962_g_ScriptId, "HuÖ bö", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		--Lâu Lan75¼¶ÏŞÖÆ
		if index == 4 then
			if GetLevel(sceneId, selfId) < 75 then
				BeginEvent(sceneId)
					AddText(sceneId, "  C¤p b§c cüa ngß½i không ğªn 75, không th¬ d¸ch chuy¬n.")
				EndEvent()
				DispatchEventList(sceneId, selfId, targetId)
				return
			end
			--Í¬Æï´øĞ¡ºÅÏŞÖÆ
			if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
				local objId = LuaFnGetDRideTargetID(sceneId, selfId);
				if objId ~= -1 and GetLevel(sceneId, objId) < 75 then
					BeginEvent(sceneId)
						AddText(sceneId, "#{SRCS_090203_1}")
					EndEvent()
					DispatchEventList(sceneId, selfId, targetId)
					return					
				end
			end
		end
		--[tx44121]bugÕâÀïÃ»ÓĞÉèÖÃ×îµÍ¼¶±ğ,µ¼ÖÂµÍ¼¶±ğ¿ÉÍ¨¹ıË«Æï³Ë½ø¸ß¼¶±ğ³¡¾°
		local minLevel = 10
		if index == 4 then
			minLevel = 75
		end
		if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
			local objId = LuaFnGetDRideTargetID(sceneId, selfId);
			if objId ~= -1 and GetLevel(sceneId, objId) < minLevel then
			  local Tip = format("#{CQTS_90227_1}%d#{CQTS_90227_2}", minLevel)					
				x400962_NotifyFailTips( sceneId, selfId, targetId, Tip )
				return					
			end
		end	
    --[/tx44121]
    		
		local pos_x = x400962_g_transfer_target[index]["x"];
		local pos_z = x400962_g_transfer_target[index]["z"];
		local scene_num = x400962_g_transfer_target[index]["scene_num"];

		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ç®¹»Âğ£¿
		if (nMoneyJZ + nMoney) >= x400962_g_transfer_cost then 
				
			-- ÊÕ·Ñ
			-- Ê¹ÓÃ´øÓÅÏÈ¼¶toÕ ğµ ½ğÇ®ÏûºÄº¯Êı					
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400962_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Thu phí th¤t bÕi!");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
  			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z, minLevel); 
			end

		-- Ç®²»¹»
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Không ğü ngân lßşng.");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
--**********************************
-- ÆÁÄ»ÖĞ¼äĞÅÏ¢ÌáÊ¾
--**********************************
function x400962_NotifyFailTips( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
