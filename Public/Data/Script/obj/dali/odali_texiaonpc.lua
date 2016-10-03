--NPCÑİÊ¾¼¼ÄÜÌØĞ§ÓÃ
--ÑİÊ¾NPC
--ÆÕÍ¨
--Cái này NPC×îºÃĞúng²»»á»¹ÊÖ,¿É¹¥»÷,µ«Ğúng²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801007_g_ScriptId = 801007;

--ÒªÑİÊ¾toÕ ğµ ¼¼ÄÜÁĞ±í 
x801007_g_DemoSkills = {};
--ÉùÃ÷·½·¨:   x801007_g_DemoSkills[¼¼ÄÜtoÕ ğµ ±àºÅ] = "¼¼ÄÜtoÕ ğµ Tên"; ×¢: ºóÃæ»á°Ñ¼¼ÄÜtoÕ ğµ ±àºÅµ±ÊÂ¼şºÅÊ¹ÓÃ 

x801007_g_DemoSkills[850]="Vui vë 3";
x801007_g_DemoSkills[851]="H°i phong Ph§t li­u";
x801007_g_DemoSkills[852]="Hæu thß¶ng vô thß¶ng";
x801007_g_DemoSkills[853]="Vô chúng sinh tß¾ng";
x801007_g_DemoSkills[854]="Phi Khô Phi Vinh";
x801007_g_DemoSkills[855]="Kim Ng÷c Mãn Ğß¶ng";
x801007_g_DemoSkills[856]="ĞÑng lên thành Ph§t";
x801007_g_DemoSkills[857]="Ğan phßşng tri«u dß½ng";
x801007_g_DemoSkills[858]="BÕch Câu Quá Khích";
x801007_g_DemoSkills[859]="Thiªu TrÕch Kiªm";
x801007_g_DemoSkills[860]="Thß½ng dß½ng kiªm";
x801007_g_DemoSkills[861]="Thiªu dß½ng kiªm";
x801007_g_DemoSkills[862]="BÕch H°ng Quán Nh§t";
x801007_g_DemoSkills[863]="Cäi trang thành dân thß¶ng ği tu¥n";
x801007_g_DemoSkills[864]="VÕn nß¾c ğªn tri«u";

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIdÁĞ±í
x801007_g_eventList={850,851,852,853,854,855,856,857,858,859,860,861,862,863,864};
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x801007_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan nghênh ğã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan");
--	for i=1,getn(x801007_g_eventList) do 
	for nIdx, nEvent in x801007_g_eventList do
		--Ìí¼ÓÑİÊ¾¼¼ÄÜtoÕ ğµ °´Å¥ 
		AddNumText(sceneId, nEvent, x801007_g_DemoSkills[nEvent],11,-1);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x801007_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ğĞúngÊ²Ã´toÕ ğµ ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId, 1,0,0,0,0);
	--CallScriptFunction( 801007, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
