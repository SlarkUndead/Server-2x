--ÊÂ¼þ
--´«ËÍµ½ÕäÊÞµº

--½Å±¾ºÅ
x400918_g_ScriptId = 400918

--ÈÎÎñÎÄ±¾ÃèÊö
x400918_g_MissionName="Ðªn Huy«n Vû Ðäo"
x400918_g_MissionInfo="Chuy¬n ðªn Trân thú ðäo"  --ÈÎÎñÃèÊö
x400918_g_MissionTarget="Chuy¬n ðªn Trân thú ðäo"		--Møc tiêu nhi®m vø
x400918_g_ContinueInfo="Chuy¬n ðªn Trân thú ðäo"		--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x400918_g_MissionComplete="Chuy¬n ðªn Trân thú ðäo"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

--**********************************
--Èë¿Úº¯Êý
--**********************************
function x400918_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

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
					AddText( sceneId, "  Trong ðµi ngû cüa các hÕ có ngß¶i ðang làm nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ ðßþc." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i! Các hÕ ðang mang trong mình nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 39, 109, 25)

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x400918_OnEnumerate( sceneId, selfId, targetId )
	--µÈc¤p´ïµ½10c¤p¾ÍÏÔÊ¾´«ËÍÑ¡Ïî
	if GetLevel( sceneId, selfId ) >= 10 then
		AddNumText(sceneId,x400918_g_ScriptId,x400918_g_MissionName, 9, -1)
	else
		return
	end
end
