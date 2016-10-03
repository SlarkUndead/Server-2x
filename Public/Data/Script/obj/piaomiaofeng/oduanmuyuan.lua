--çÎç¿·å¸±±¾....
--¶ËÄ¾Ôª¶Ô»°½Å±¾....

--½Å±¾ºÅ
x402274_g_ScriptId	= 402274

--¸±±¾Âß¼­½Å±¾ºÅ....
x402274_g_FuBenScriptId = 402263

--**********************************
--ËÀÍö....
--**********************************
function x402274_OnDie( sceneId, selfId, killerId )

	--Èç¹û»¹Ã»ÓĞKhiêu chiªn¹ıLı Thu ThüyÔò¿ÉÒÔKhiêu chiªnLı Thu Thüy....
	if 2 ~= CallScriptFunction( x402274_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" )	then
		CallScriptFunction( x402274_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "LiQiuShui", 1 )
	end
	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïtoÕ ğµ Ğúng³èÎïÔmµt ñÈ¡ÆäÖ÷ÈËtoÕ ğµ Tên....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔmµt ñÈ¡¶Ó³¤toÕ ğµ Tên....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("#{PMF_8812_04}#{_INFOUSR%s}#{PMF_8812_05}", playerName); --Nh§m Bình Sinh
		AddGlobalCountNews( sceneId, str )
	end
end
