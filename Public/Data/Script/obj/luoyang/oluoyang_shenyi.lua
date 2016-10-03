--LÕc Dß½ngNPC
--ÉñÒ½
--ÆÕÍ¨

--½Å±¾ºÅ
x000064_g_scriptId = 000064

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x000064_g_eventList={701603}	

-- C¥n ¼ÓÅ­ÆøtoÕ ğµ ÌØÊâNPC
x000064_g_SpecialNPC = "Long Bá Thiên"
x000064_g_SpecialNPC2 = "Ëïİ±"
x000064_g_SpecialNPC3 = "Áğå·"

--Thành ph¯ ÀïÃ»ÓĞÃâ·ÑÎŞµĞ¹¦ÄÜtoÕ ğµ ÌØÊâNPC
x000064_g_SpecialNPC_City = "Lß Hoàng Liên"

--Tr¸ li®uÉè¶¨
--µ±Íæ¼ÒtoÕ ğµ µÈc¤pTÕi 10c¤pÒÔÏÂtoÕ ğµ Ê±ºò,Tr¸ li®u²»ÊÕ·Ñ£»
--´óÓÚµÈÓÚ10c¤pÒÔÉÏÊÕÈ¡toÕ ğµ ·ÑÓÃÎª: 
--Tr¸ li®u·ÑÓÃ£½(Íæ¼Ò×î´óÉúÃüÖµ£­µ±Ç°ÉúÃüÖµ)¡Áa+(Íæ¼Ò×î´óÀ¶Öµ£­µ±Ç°À¶Öµ)¡Áb
--a¡¢bTÕi ²»Í¬µÈc¤pÏÂtoÕ ğµ ÏµÊı¹æ¶¨ÈçÏÂ: µÈc¤p¡¢aÏµÊı¡¢bÏµÊı
x000064_g_rat	=	{
	{"0~9",0,0},	{"10~19",0.0079375,0.02480469},
	{"20~29",0.018375,0.05742188},	{"30~39",0.0313125,0.09785157},
	{"40~49",0.04675,0.14609376},		{"50~59",0.0646875,0.20214845},
	{"60~69",0.085125,0.26601564},	{"70~79",0.1080625,0.33769533},
	{"80~89",0.1335,0.41718752},	  {"90~99",0.162,0.50625},
	{"100~109",0.3,0.8},	          {"110~119",0.352,0.935}, 
	{"120~129",0.408,1.08},	      {"130~139",0.468,1.235}, 
	{"140~149",0.532,1.4}	
	}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x000064_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0019}")
		AddNumText(sceneId,x000064_g_scriptId,"Tr¸ li®u",6,0)
	EndEvent(sceneId)
	for i, eventId in x000064_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000064_OnDefaultEvent( sceneId, selfId,targetId )
	x000064_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x000064_OnEventRequest( sceneId, selfId, targetId, eventId )

	--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
	local	gld	= x000064_CalcMoney_hpmp( sceneId, selfId )
	local	key	= GetNumText()

	if key == 1000 then	--²»Ô¸ÔÙTr¸ li®u
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	if key == 1001 then	--È·ÈÏÒªTr¸ li®u
		--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
		gld	= x000064_CalcMoney_hpmp( sceneId, selfId )
		
		--  ği¬mµ½½»×ÓºÍ½ğÇ®ÊıÄ¿
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		
		--¼ì²éÍæ¼ÒĞúng·ñÓĞ×ã¹»toÕ ğµ ÏÖ½ğ
		if (nMoneyJZ + nMoney >= gld) then
			--¿ÛÇ®
			LuaFnCostMoneyWithPriority (sceneId, selfId, gld)
			--»Ö¸´ÑªºÍÆø
			x000064_Restore_hpmp( sceneId, selfId, targetId )			
			return
		
		--Ç®²»¹»	
		else		
			BeginEvent( sceneId )
				AddText( sceneId, "  Các hÕ không ğü ngân lßşng" )
				EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	
	--¼ÓÑª
	if key == 0 then
		if GetHp( sceneId, selfId ) == GetMaxHp( sceneId, selfId ) and
			 GetMp( sceneId, selfId ) == GetMaxMp( sceneId, selfId ) then
			BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i hi®n r¤t khöe mÕnh, không c¥n chæa tr¸!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			--HuÖ böÖ¸¶¨Íæ¼ÒÉíÉÏtoÕ ğµ ËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
			LuaFnDispelAllHostileImpacts( sceneId, selfId )
			return
		end
	
		if gld <= 0 then
			x000064_Restore_hpmp( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  Các hÕ phäi trä #G#{_EXCHG"..gld.."}#W Ğ¬ h°i phøc Huyªt và khí, các hÕ có ğ°ng ı chæa tr¸ không?" )
				AddNumText( sceneId, x000064_g_scriptId, "Có", -1, 1001 )
				AddNumText( sceneId, x000064_g_scriptId, "Không", -1, 1000 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	else
		for i, findId in x000064_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText() )	--GetNumText()ĞúngaddnumtextÖĞ×îºótoÕ ğµ ±äÁ¿
				return
			end
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ğµ ÈÎÎñ
--**********************************
function x000064_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ğµ ÈÎÎñ
--**********************************
function x000064_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ğµ ÊÂ¼şÁĞ±í
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			x000064_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌĞø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000064_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ğµ ÈÎÎñ
--**********************************
function x000064_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x000064_OnDie( sceneId, selfId, killerId )
end

--**********************************
--»Ö¸´ÑªºÍÆø
--**********************************
function x000064_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	
	local msg = ""
	-- ÅĞ¶Ï¸ÃnpcĞúng·ñĞúngÁú°ÔÌì
	if LuaFnGetName( sceneId, targetId ) == x000064_g_SpecialNPC 
		or LuaFnGetName( sceneId, targetId ) == x000064_g_SpecialNPC2
		or LuaFnGetName( sceneId, targetId ) == x000064_g_SpecialNPC3 then
		RestoreRage( sceneId, selfId )
		msg = "Khí huyªt và nµ cüa các hÕ ğã ğßşc h°i phøc hoàn toàn"
	else
		msg = "Huyªt và khí ğã h°i phøc"
	end
	--HuÖ böÖ¸¶¨Íæ¼ÒÉíÉÏtoÕ ğµ ËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
	LuaFnDispelAllHostileImpacts( sceneId, selfId )
	
	BeginEvent( sceneId )
		AddText( sceneId, msg );
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
--**********************************
--µ±Íæ¼ÒtoÕ ğµ µÈc¤pTÕi 10c¤pÒÔÏÂtoÕ ğµ Ê±ºò,Tr¸ li®u²»ÊÕ·Ñ£»
--´óÓÚµÈÓÚ10c¤pÒÔÉÏÊÕÈ¡toÕ ğµ ·ÑÓÃÎª: 
--Tr¸ li®u·ÑÓÃ£½(Íæ¼Ò×î´óÉúÃüÖµ£­µ±Ç°ÉúÃüÖµ)¡Áa+(Íæ¼Ò×î´óÀ¶Öµ£­µ±Ç°À¶Öµ)¡Áb
function x000064_CalcMoney_hpmp( sceneId, selfId )
  
  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local	level	= GetLevel( sceneId, selfId )
	if level < 10 then	--Èç¹ûÍæ¼ÒµÈc¤p<10,Ôò²»C¥n Ç®
		return 0
	elseif level > PlayerMaxLevel then
		level	= PlayerMaxLevel
	end

	local	rat		= x000064_g_rat[ floor(level/10) + 1 ]
	local hp		= GetHp( sceneId, selfId )
	local maxhp	= GetMaxHp( sceneId, selfId )
	local mp		= GetMp( sceneId, selfId )
	local maxmp	= GetMaxMp( sceneId, selfId )
	local	gld		= floor( (maxhp-hp) * rat[2] + (maxmp-mp) * rat[3] )
	if gld < 1 then
		gld				= 100
	end
	return gld
end
