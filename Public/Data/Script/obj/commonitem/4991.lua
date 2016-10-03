--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ðµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ


--½Å±¾:

--ÒÔÏÂÐúng½Å±¾ÑùÀý:


--4991.lua
------------------------------------------------------------------------------------------
--Âí°°toÕ ðµ Ä¬ÈÏ½Å±¾

--½Å±¾ºÅ
 x334991_g_scriptId = 334991 --ÁÙÊ±Ð´Cái này ,ÕæÕýÓÃtoÕ ðµ Ê±ºòmµt ¶¨Òª¸Ä.

--4801	×øÆï: »¢		447	ÆïÊõ: »¢  			456	ÆïÊõ: °×»¢
--4802	×øÆï: »ÆæôÂí	448	ÆïÊõ: »ÆæôÂí		457	ÆïÊõ: Çà°×æõÂí
--4803	×øÆï: ÂæÍÕ		449	ÆïÊõ: ÂæÍÕ			458	ÆïÊõ: °×ÂæÍÕ
--4804	×øÆï: º×		450	ÆïÊõ: º×			459	ÆïÊõ: ½ðÒíº×
--4805	×øÆï: Çà·ï		451	ÆïÊõ: Çà·ï			460	ÆïÊõ: ºì°×·ï
--4806	×øÆï: êóÅ£		452	ÆïÊõ: êóÅ£			461	ÆïÊõ: °×êóÅ£
--4807	×øÆï: Â¹		453	ÆïÊõ: Â¹			462	ÆïÊõ: °×Â¹
--4808	×øÆï: µñ		454	ÆïÊõ: µñ			463	ÆïÊõ: °×µñ
--4809	×øÆï: »ÒÀÇ		455	ÆïÊõ: »ÒÀÇ			464	ÆïÊõ: °×ÀÇ
--4810	×øÆï: °×»¢		456	ÆïÊõ: °×»¢    
--4811	×øÆï: Çà°×æõÂí  457	ÆïÊõ: Çà°×æõÂí
--4812	×øÆï: °×ÂæÍÕ    458	ÆïÊõ: °×ÂæÍÕ  
--4813	×øÆï: ½ðÒíº×    459	ÆïÊõ: ½ðÒíº×  
--4814	×øÆï: ºì°×·ï    460	ÆïÊõ: ºì°×·ï  
--4815	×øÆï: °×êóÅ£    461	ÆïÊõ: °×êóÅ£  
--4816	×øÆï: °×Â¹      462	ÆïÊõ: °×Â¹    
--4817	×øÆï: °×µñ      463	ÆïÊõ: °×µñ    
--4912	×øÆï: °×ÀÇ      464	ÆïÊõ: °×ÀÇ  
--4952  ×øÆï: ´óÏó      443	ÆïÊõ: ´óÏó
--4914  ×øÆï: °×Ïó      444	ÆïÊõ: °×Ïó
--4948									437	ÆïÊõ: Ö©Öë
--4952									438	ÆïÊõ: ÐÜ
--4951									439	ÆïÊõ: Ä¾Å£Á÷Âí
--4991									440	ÆïÊõ: Â½Îá
--4949									441	ÆïÊõ: Ðþ¹ê
--4946									442	ÆïÊõ: Ï¬Å£

--×¢: Á½cáiÆïÊõ»ámµt cái¾Í¿ÉÒÔÆïÁË
 x334991_g_Equitation1 = 426 --C¥n toÕ ðµ ÆïÊõ
 x334991_g_Equitation2 = -1 --C¥n toÕ ðµ ÆïÊõ
--Ð§¹ûtoÕ ðµ ID
 x334991_g_Impact1 = 4991 --ÁÙÊ±Ð´Cái này 
 x334991_g_Impact2 = -1 --²»ÓÃ

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function  x334991_OnDefaultEvent( sceneId, selfId, bagIndex )
-- Æï³Ë²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function  x334991_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böÐ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function  x334991_CancelImpacts( sceneId, selfId )
	nRet = 0;
	nRet = LuaFnCancelSpecificImpact(sceneId, selfId,  x334991_g_Impact1)
	if(0<nRet) then
		return 1;
	end
	return 0;
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function  x334991_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ ÎïÆ·
	--if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		--return 0
	--end
	--Á½cáiÆïÊõ,»ámµt cái¾Í¿ÉÒÔÁË
	if(-1~= x334991_g_Equitation1) then
		if(1==LuaFnHaveSpecificEquitation(sceneId, selfId,  x334991_g_Equitation1)) then
			return 1
		end
	end
	if(-1~= x334991_g_Equitation2) then
		if(1==LuaFnHaveSpecificEquitation(sceneId, selfId,  x334991_g_Equitation2)) then
			return 1
		end
	end
	LuaFnSendOResultToPlayer(sceneId, selfId, OR_NEED_EQUITATION_FIRST)
	return 0; 
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--×¢Òâ: Õâ²»¹â¸ºÔðÏûºÄtoÕ ðµ ¼ì²âÒ²¸ºÔðÏûºÄtoÕ ðµ Ö´ÐÐ.
--**********************************
function  x334991_OnDeplete( sceneId, selfId )
	return 1; --Æï³Ë²»ÏûºÄ
end

--**********************************
--Ö»»áÖ´ÐÐmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Thöa mãntoÕ ðµ Ê±ºò),¶øÒýµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ðµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function  x334991_OnActivateOnce( sceneId, selfId )
	if(-1~= x334991_g_Impact1) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  x334991_g_Impact1, 0)
	end
	Msg2Player( sceneId,selfId,"Ngß½i ðã không · khu vñc v§n chuy¬n.",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú: 
--Òýµ¼¼¼ÄÜ»áTÕi Ã¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌÐøÏÂ´ÎÐÄÌø£»0: ÖÐ¶ÏÒýµ¼.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function  x334991_OnActivateEachTick( sceneId, selfId)
	return 1; --Æï³Ë²»ÐúngÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end
