--大理NPC
--崔逢九
--普通

x002026_g_ScriptId	= 002026

--门派信息(门派名称，SceneID，PosX，PosY，门派ID)
x002026_g_mpInfo		= {}
x002026_g_mpInfo[0]	= { "星宿", 16,  96, 152, MP_XINGSU }
x002026_g_mpInfo[1]	= { "逍遥", 14,  67, 145, MP_XIAOYAO }
x002026_g_mpInfo[2]	= { "少林",  9,  96, 127, MP_SHAOLIN }
x002026_g_mpInfo[3]	= { "天山", 17,  95, 120, MP_TIANSHAN }
x002026_g_mpInfo[4]	= { "天龙", 13,  96, 120, MP_DALI }
x002026_g_mpInfo[5]	= { "峨嵋", 15,  89, 139, MP_EMEI }
x002026_g_mpInfo[6]	= { "武当", 12, 103, 140, MP_WUDANG }
x002026_g_mpInfo[7]	= { "明教", 11,  98, 167, MP_MINGJIAO }
x002026_g_mpInfo[8]	= { "丐帮", 10,  91, 116, MP_GAIBANG }

x002026_g_Yinpiao = 40002000

x002026_g_Impact_NotTransportList = { 5929, 5944 } -- 禁止传送的Impact
x002026_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- 禁止传送的Impact提示信息

--**********************************
--事件交互入口
--**********************************
function x002026_OnDefaultEvent( sceneId, selfId, targetId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, 400, 1 )
end

--**********************************
--传送检查，解决低等级玩家带高等级玩家到大理2，3的问题
--**********************************
function x002026_EnterConditionCheck(sceneId, selfId)
	local teamSize = GetNearTeamCount(sceneId, selfId); 
	if teamSize > 1 then
		for i=0, teamSize-1 do
	  	local objId = GetNearTeamMember(sceneId, selfId, i);
	  	if GetLevel(sceneId, objId) > 9 and IsTeamFollow(sceneId, objId) == 1 then
	  		local name = GetName(sceneId, objId);
	  		local msg = format("  队员%s等级过高，不能进入！", name);
	  		return 0, msg;
	  	end  	
	  end
  end
	return 1, "ok";
end

--**********************************
--事件列表选中一项
--**********************************
function x002026_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, GetNumText(),1)
end
--  add by zchw
function x002026_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--根据门派ID获取门派信息
--**********************************
function x002026_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002026_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x002026_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
