--Cái BangNPC
--½¯¹âÍ¤
--ÆÕÍ¨

 x010010_g_ScriptId=010010
--447	ÆïÊõ: »¢
--448	ÆïÊõ: »ÆæôÂí
--449	ÆïÊõ: ÂæÍÕ
--450	ÆïÊõ: º×
--451	ÆïÊõ: Çà·ï
--452	ÆïÊõ: êóÅ£
--453	ÆïÊõ: Â¹
--454	ÆïÊõ: µñ
--455	ÆïÊõ: »ÒÀÇ
--456	ÆïÊõ: °×»¢
--457	ÆïÊõ: Çà°×æõÂí
--458	ÆïÊõ: °×ÂæÍÕ
--459	ÆïÊõ: ½ğÒíº×
--460	ÆïÊõ: ºì°×·ï
--461	ÆïÊõ: °×êóÅ£
--462	ÆïÊõ: °×Â¹
--463	ÆïÊõ: °×µñ
--464	ÆïÊõ: °×ÀÇ
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function  x010010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ dÕy ğ® tØ Cái Bang nång lñc kÜ Sói.")
		if	GetMenPai( sceneId, selfId) == 2 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 455))	then
				AddNumText(sceneId, x010010_g_ScriptId,"H÷c kÜ thu§t: Sói xám",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 464))	then
				AddNumText(sceneId, x010010_g_ScriptId,"H÷c kÜ thu§t: Sói tr¡ng",12,60)
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function  x010010_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_05}" )
			AddNumText(sceneId, x010010_g_ScriptId,"Ğúng",-1,0)
      AddNumText(sceneId, x010010_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_06}" )
			AddNumText(sceneId, x010010_g_ScriptId,"Ğúng",-1,1)
      AddNumText(sceneId, x010010_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 999 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	local level = GetLevel( sceneId, selfId)
	local skill = GetNumText()
	if skill == 0 or skill == 1 then
	  CallScriptFunction((210299), "OnDefaultEvent",sceneId, selfId,targetId, level, skill)
	end
end

