--企鹅王BOSS刷新公告

--脚本编号
x892006_g_ScriptId	= 892006

function x892006_OnRespawn( sceneId, selfId, targetId )
	local nam_mob = GetName( sceneId, selfId )
	local str ="";	
	if nam_mob=="花海妖王" then
		str = format("#Y[花海妖王]#P携带了大量奇珍异宝出现在#G忘川花海<117,116>#P,花海重新落入妖王之手，勇敢的少侠们，赶紧抢回我们的忘川花海！")
	elseif nam_mob=="青原守护神" then
		str = format("#Y[青原守护神]#P携带了大量奇珍异宝出现在#G漠南青原<161,96>#P,青原重新落入守护神之手，勇敢的少侠们，赶紧抢回我们的漠南青原！")
	elseif nam_mob=="南淮神兽" then
		str = format("#Y[南淮神兽]#P携带了大量奇珍异宝出现在#G天岐南淮<138,111>#P,天岐南淮重新落入守护神之手，勇敢的少侠们，赶紧抢回我们的天岐南淮！")
	end
	AddGlobalCountNews( sceneId, str )
end
--**********************************
--Monster Timer
--**********************************
function x892006_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--全球公告
	--local	nam_mob	= GetName( sceneId, objId )
	--if nam_mob ~= nil then
	--	str	= format( "#G银皑雪原#P真正的主人，伟大的123#P，已经挥舞着权杖出现在它的领土上了！", nam_mob )
	--	AddGlobalCountNews( sceneId, str )
	--end
	--AddGlobalCountNews( sceneId, "objId:"..objId )
	--取消时钟
	--SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--死亡事件
--**********************************
function x892006_OnDie( sceneId, objId, killerId )
	--全球公告
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#P经过#W#{_INFOUSR%s}#P和其队伍的一番苦战，#G%s#P终于被打败了。", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
end
