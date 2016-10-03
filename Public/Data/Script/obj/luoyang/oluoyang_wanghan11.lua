--洛阳NPC
--汪旱
--普通

x000128_g_ScriptId	= 000128

--门派信息(门派名称，SceneID，PosX，PosY，门派ID)
x000128_g_mpInfo		= {}
x000128_g_mpInfo[0]	= { "星宿", 16,  96, 152, MP_XINGSU }
x000128_g_mpInfo[1]	= { "逍遥", 14,  67, 145, MP_XIAOYAO }
x000128_g_mpInfo[2]	= { "少林",  9,  96, 127, MP_SHAOLIN }
x000128_g_mpInfo[3]	= { "天山", 17,  95, 120, MP_TIANSHAN }
x000128_g_mpInfo[4]	= { "天龙", 13,  96, 120, MP_DALI }
x000128_g_mpInfo[5]	= { "峨嵋", 15,  89, 139, MP_EMEI }
x000128_g_mpInfo[6]	= { "武当", 12, 103, 140, MP_WUDANG }
x000128_g_mpInfo[7]	= { "明教", 11,  98, 167, MP_MINGJIAO }
x000128_g_mpInfo[8]	= { "丐帮", 10,  91, 116, MP_GAIBANG }

x000128_g_Yinpiao = 40002000 

x000128_g_Impact_NotTransportList = { 5929, 5944 } -- 禁止传送的Impact
x000128_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- 禁止传送的Impact提示信息

--**********************************
--事件交互入口
--**********************************
function x000128_OnDefaultEvent( sceneId, selfId,targetId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, 400, 1 )
end

--**********************************
--事件列表选中一项
--**********************************
function x000128_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, GetNumText(),1)
end
--  add by zchw
function x000128_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--根据门派ID获取门派信息
--**********************************
function x000128_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000128_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x000128_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
