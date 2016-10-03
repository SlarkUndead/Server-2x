--created by WTT 2009.3.2

--ÊÂ¼þ: ´«ËÍµ½Thánh Thú S½n

--½Å±¾ºÅ
x400963_g_ScriptId = 400963

--ÈÎÎñÎÄ±¾ÃèÊö
x400963_g_MissionName="#{QSSS_090302_1}"		-- È¥Thánh Thú S½n
x400963_g_MissionInfo="´«ËÍµ½Thánh Thú S½n."  		-- ÈÎÎñÃèÊö
x400963_g_MissionTarget="´«ËÍµ½Thánh Thú S½n."		-- Møc tiêu nhi®m vø
x400963_g_ContinueInfo="´«ËÍµ½Thánh Thú S½n."			-- Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x400963_g_MissionComplete="´«ËÍµ½Thánh Thú S½n."	-- Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

--**********************************
--Èë¿Úº¯Êý
--**********************************
function x400963_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ðµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ðang giæ ngân phiªu ta không th¬ giúp ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
  
	--äîÔËÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				BeginEvent( sceneId )
					AddText( sceneId, "  Äã¶ÓÎé³ÉÔ±ÖÐÓÐÈËÓÐäîÔË»õ²ÕTÕi Éí,ÎÒÃÇæäÕ¾²»ÄÜÎªÄãÌá¹©´«ËÍ·þÎñ." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end
  
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i ðang · trong trÕng thái Tào v§n, không th¬ tiªn v« cänh trß¾c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	-- ÒÔÉÏ¼ì²â¾ùÍ¨¹ý	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x400963_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShengShouShan");
			UICommand_AddString(sceneId, "#{QSSS_090302_2}");		-- ¡°Thánh Thú S½nÎª²»¼ÓÉ±Æø³¡¾°,Çë×¢Òâ°²È«.ÄãÈ·ÈÏÒª½øÈëÂð?¡±
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x400963_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId,x400963_g_ScriptId,x400963_g_MissionName, 9, 1)	
	
end

--**********************************
--´«ËÍÖÁThánh Thú S½n
--**********************************
function x400963_GotoShengShouShan( sceneId, selfId, targetId )

	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 158, 233, 225, 21 );
	return
	
end
