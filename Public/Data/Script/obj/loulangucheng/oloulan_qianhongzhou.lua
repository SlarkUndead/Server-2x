--L�c D߽ngNPC
--�齱
--��ͨ
x001154_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi�u c� g�ng cu�i c�ng c�ng �� nguy�n li�u � trao �i th�nh c�ng! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi�u c� g�ng cu�i c�ng c�ng �� nguy�n li�u � trao �i th�nh c�ng! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi�u c� g�ng cu�i c�ng c�ng �� nguy�n li�u � trao �i th�nh c�ng! #{_INFOMSG%s}",
  "#e6f00c7#b#{_INFOUSR%s}#H qua nhi�u c� g�ng cu�i c�ng c�ng �� nguy�n li�u � trao �i th�nh c�ng! #{_INFOMSG%s}",
}
--**********************************
--�¼��������
--**********************************
function x001154_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#W� gi�a hoang m�c, th�y ng߶i �� �ang ch� luy�n m�t lo�i �m kh� th�n k�#Y B�ng Ph�ch Th�n Ch�m#W. Do t�i h� kh�n c�u, n� hi�p �� �� truy�n th� c�ch th�c ch� luy�n cho t�i h�." )
		AddText( sceneId, "#WCh� c�n c� #G1 #YMai Hoa Ti�u#W v� #G20 #YH�n b�ng tinh thi�t#W r�i trong #GTh�o Ph�t Y�n T� �#W C�p 90 tr� l�n." )
		--AddText( sceneId, "#G(#cFF0000��������#G)" )
		--AddText( sceneId, "Tam �o�n#G(#cFF0000LV5-LV6#G)#cFF0000100%" )
		AddText( sceneId, "#cff99ff��ʾ(#G�� ���c kh�m  b�o th�ch#cff99ff)" )
		AddNumText( sceneId, x001154_g_ScriptId, "#G(#cFF0000Th�ng c�p �m kh�#G)", 10, 100 )
		--AddNumText( sceneId, x001154_g_ScriptId, "#G(#cFF0000��������#G)", 5, 200 )
		--AddNumText( sceneId, x001154_g_ScriptId, "Tam �o�n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 300 )
		--AddNumText( sceneId, x001154_g_ScriptId, "#cff99cc��ħ�꡻#W֮��#YH�p th�nh #G(#cFF0000����#G)#cFF0000��", 5, 400 )
		AddNumText( sceneId, x001154_g_ScriptId, "R�i kh�i", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001154_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffH�n b�ng tinh thi�t#W c� th� � #Yph� b�n Y�n T� �#W ��t ���c!" )
		      --AddText( sceneId, "#G(#cFF0000LV1-LV3#G)#cFF000050%" )
		      AddText( sceneId, "�m kh� th�ng c�p c�n ti�u hao: " )
		      AddText( sceneId, "#GMai Hoa Ti�u #W1#G �em" )
		      AddText( sceneId, "#cff99ffH�n b�ng tinh thi�t#W 20#cff99ff c�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#G(#cFF0000��ʼ����#G)", 10, 101)
			--AddNumText( sceneId, x001154_g_scriptId, "#G(#cFF0000��ʼ����#G)", 10, 102)
			--AddNumText( sceneId, x001154_g_scriptId, "m�t ��#G(#cFF0000LV3-LV4#G)#cFF000010%", 5, 103)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#WCh� c�n c� #G1 #YMai Hoa Ti�u#W v� #G20 #YH�n b�ng tinh thi�t#W r�i trong #GTh�o Ph�t Y�n T� �#W C�p 90 tr� l�n." )
			AddNumText( sceneId, x001154_g_scriptId, "#G��c B�ng Ph�ch Th�n Ch�m", 6, 1011)
			--AddNumText( sceneId, x001154_g_scriptId, "#GTr�m �u �o�n s�u th߽ng#G", 10, 1012)
			--AddNumText( sceneId, x001154_g_scriptId, "#GD�ch thi�n ph� t� tr��ng#G", 10, 1013)
			--AddNumText( sceneId, x001154_g_scriptId, "#GH�m quang l�ng �nh ki�m#G", 10, 1014)
			--AddNumText( sceneId, x001154_g_scriptId, "#GV�n nh�n long uy�n ki�m#G", 10, 1015)
			--AddNumText( sceneId, x001154_g_scriptId, "#GChuy�n h�n di�t ph�ch c�u#G", 10, 1016)
			--AddNumText( sceneId, x001154_g_scriptId, "#GL�i minh c�ch h�a phi�n#G", 10, 1017)
			--AddNumText( sceneId, x001154_g_scriptId, "#GTo�i t�nh v� �nh ho�n#G", 10, 1018)
			--AddNumText( sceneId, x001154_g_scriptId, "#GThi�n Tinh di�u d߽ng ho�n#G", 10, 1019)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10155003
	       	local nStoneId1 = 20310113
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=10 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10155003,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310113,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10155002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GC�c h� �� nh�n ���c #YB�ng Ph�ch Th�n Ch�m"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GC�c h� kh�ng �� nguy�n li�u � �i"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10301100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301100,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10301200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301200,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10302100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302100,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1015 then
	       	local nStoneId0 = 10303100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303100,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1016 then
	       	local nStoneId0 = 10303200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303200,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1017 then
	       	local nStoneId0 = 10304100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304100,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1018 then
	       	local nStoneId0 = 10305100
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305100,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1019 then
	       	local nStoneId0 = 10305200
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305200,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTh�n binh ph� #Wc� th� � #ph� b�n Y�n T� �, Phi�u Mi�u Phong#W ��t ���c!" )
		      --AddText( sceneId, "#c0066ffm�t ��#G(#cFF0000LV1-LV9#G)#cFF000070%" )
		      AddText( sceneId, "Luy�n h�n th�n kh� c�n ti�u hao: " )
		      AddText( sceneId, "#GЬ �i th�n kh� c�n �em" )
		      AddText( sceneId, "#cff99ffTh�n binh ph�#W5#cff99ffc�i" )
			AddNumText( sceneId, x001154_g_scriptId, "#GX�ch Di�m c�u v�n �ao#G", 10, 1021)
			AddNumText( sceneId, x001154_g_scriptId, "#GTr�m �u �o�n s�u th߽ng#G", 10, 1022)
			AddNumText( sceneId, x001154_g_scriptId, "#GD�ch thi�n ph� t� tr��ng#G", 10, 1023)
			AddNumText( sceneId, x001154_g_scriptId, "#GH�m quang l�ng �nh ki�m#G", 10, 1024)
			AddNumText( sceneId, x001154_g_scriptId, "#GV�n nh�n long uy�n ki�m#G", 10, 1025)
			AddNumText( sceneId, x001154_g_scriptId, "#GChuy�n h�n di�t ph�ch c�u#G", 10, 1026)
			AddNumText( sceneId, x001154_g_scriptId, "#GL�i minh c�ch h�a phi�n#G", 10, 1027)
			AddNumText( sceneId, x001154_g_scriptId, "#GTo�i t�nh v� �nh ho�n#G", 10, 1028)
			AddNumText( sceneId, x001154_g_scriptId, "#GThi�n Tinh di�u d߽ng ho�n#G", 10, 1029)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10300007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1022 then
	       	local nStoneId0 = 10302008
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1023 then
	       	local nStoneId0 = 10301199
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301199,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1024 then
	       	local nStoneId0 = 10302007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1025 then
	       	local nStoneId0 = 10302009
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302009,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1026 then
	       	local nStoneId0 = 10303001
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303001, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1027 then
	       	local nStoneId0 = 10304007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
	elseif GetNumText() == 1028 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
			
				elseif GetNumText() == 1029 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, th�n kh� luy�n h�n th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yc�c ph� b�n ho�c s�n Boss#W ��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV3-LV5#G)#cFF000070%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W100#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "Nh� �o�n#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 201)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh� �o�n#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 202)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh� �o�n#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 203)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh� �o�n#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 204)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh� �o�n#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 205)
			--AddNumText( sceneId, x001154_g_scriptId, "Nh� �o�n#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 206)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yc�c ph� b�n ho�c s�n Boss#W ��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV3-LV5#G)#cFF000070%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W100#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#G�m . #YNguy�n th�n giam c�m#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2011)
			AddNumText( sceneId, x001154_g_scriptId, "#GC� . #YLinh T� th�n ki�m#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2012)
			AddNumText( sceneId, x001154_g_scriptId, "#GH�n . #YTi�u dao giang h�#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2013)
			AddNumText( sceneId, x001154_g_scriptId, "#GH�n . #Y��ng t�nh c�ch h�n#G(#cFF0000LV3-LV5#G)#cFF000070%", 5, 2014)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2011 then
	       	local nStoneId0 = 10300008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301001, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2012 then
	       	local nStoneId0 = 10302008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302010, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2013 then
	       	local nStoneId0 = 10304008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 2014 then
	       	local nStoneId0 = 10305326
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=100 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305328, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 202 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yc�c ph� b�n ho�c s�n Boss#W ��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W1#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff6633Tr�m �u th߽ng#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 2021)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff6633L�ng �nh �ao#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 2022)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff6633C�ch h�a ho�n#G(#cFF0000LV5-LV6#G)#cFF000015%", 5, 2023)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 2021 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2022 then
	       	local nStoneId0 = 10302010
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2023 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 203 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yph� b�n Phi�u Mi�u Phong #W��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W1#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff6633Tr�m �u th߽ng#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 2031)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff6633L�ng �nh �ao#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 2032)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff6633C�ch h�a ho�n#G(#cFF0000LV6-LV7#G)#cFF000015%", 5, 2033)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2031 then
	       	local nStoneId0 = 10301002
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301002,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301003, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2032 then
	       	local nStoneId0 = 10302011
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302011,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2033 then
	       	local nStoneId0 = 10305008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 204 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yph� b�n Phi�u Mi�u Phong #W��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W1#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ff�o�n s�u th߽ng#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 2041)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ffLong uy�n �ao#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 2042)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ffTo�i t�nh ho�n#G(#cFF0000LV7-LV8#G)#cFF000015%", 5, 2043)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2041 then
	       	local nStoneId0 = 10301003
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301003,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301004, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2042 then
	       	local nStoneId0 = 10302012
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302013, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2043 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305010, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 205 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yph� b�n Phi�u Mi�u Phong #W��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W1#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ff�o�n s�u th߽ng#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 2051)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ffLong uy�n �ao#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 2052)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ffTo�i t�nh ho�n#G(#cFF0000LV8-LV9#G)#cFF000015%", 5, 2053)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2051 then
	       	local nStoneId0 = 10301004
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301004,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301005, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2052 then
	       	local nStoneId0 = 10302013
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302013,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302014, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2053 then
	       	local nStoneId0 = 10305010
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 206 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffNh� �o�n linh h�n tinh hoa #Wc� th� � #Yph� b�n Phi�u Mi�u Phong #W��t ���c!" )
		      AddText( sceneId, "#c0066ffNh� �o�n#G(#cFF0000LV9-LV19#G)#cFF000015%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n nh� �o�n tinh hoa #W1#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ff�o�n s�u th߽ng#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 2061)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ffLong uy�n �ao#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 2062)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #cff99ffTo�i t�nh ho�n#G(#cFF0000LV9-LV10#G)#cFF000015%", 5, 2063)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2061 then
	       	local nStoneId0 = 10301005
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301197, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2062 then
	       	local nStoneId0 = 10302014
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302014,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303000, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 2063 then
	       	local nStoneId0 = 10305011
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305011,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTam �o�n linh h�n tinh hoa #Wc� th� � #Yc�c b�n sao ho�c s�n Boss #W��t ���c!" )
		      AddText( sceneId, "#c0066ffTam �o�n#G(#cFF0000LV5-LV6#G)#cFF0000100%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n tam �o�n tinh hoa#W200#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "Tam �o�n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 301)
			--AddNumText( sceneId, x001154_g_scriptId, "Tam �o�n#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 302)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTam �o�n linh h�n tinh hoa #Wc� th� � #Yc�c b�n sao ho�c s�n Boss #W��t ���c!" )
		      AddText( sceneId, "#c0066ffTam �o�n#G(#cFF0000LV5-LV6#G)#cFF0000100%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n tam �o�n tinh hoa#W200#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#G��.#cff6633Ng� h� �o�n h�n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3011)
			AddNumText( sceneId, x001154_g_scriptId, "#G��.#cff99ffKim long song ti�n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3012)
			AddNumText( sceneId, x001154_g_scriptId, "#G��.#cff6633H�o kh� tr߶ng th�#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3013)
			AddNumText( sceneId, x001154_g_scriptId, "#G��.#cff6633C�u thi�n kim tuy�n#G(#cFF0000LV5-LV6#G)#cFF0000100%", 5, 3014)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3011 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3012 then
	       	local nStoneId0 = 10302010
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3013 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3014 then
	       	local nStoneId0 = 10305328
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305328,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305329, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 302 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ffTam �o�n linh h�n tinh hoa #Wc� th� � #Yph� b�n Phi�u Mi�u Phong #W��t ���c!" )
		      AddText( sceneId, "#c0066ffTam �o�n#G(#cFF0000LV19-LV#WMAX#G)#cFF000020%" )
		      AddText( sceneId, "Th�ng c�p trang b� luy�n h�n c�n ti�u hao: " )
		      AddText( sceneId, "#GT߽ng �i �ng  linh h�n trang b� #W1#Gc�i" )
		      AddText( sceneId, "#cff99ffLinh h�n tam �o�n tinh hoa#W1#cff99ffc�i" )
		      AddText( sceneId, "#GNg߽i x�c �nh th�ng c�p sao?" )
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #ccc33ccD�ch thi�n tr��ng#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 3021)
			AddNumText( sceneId, x001154_g_scriptId, "#GDi�t th� #ccc33ccChuy�n h�n c�u#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 3022)
			AddNumText( sceneId, x001154_g_scriptId, "#G����#ccc33ccMa s�t ho�n#G(#cFF0000LV11-LV#WMAX#G)#cFF000020%", 5, 3023)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3021 then
	       	local nStoneId0 = 10301198
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId )
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10301198,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[H� th�ng]:#GPh� tr߽ng ph� tr߽ng, ch�c m�ng#{_INFOUSR%s}L�c D߽ng trang b� luy�n h�n th�ng c�p #{_INFOMSG%s}! L�y ���c chung c�c v�t ph�m, Luy�n h�n sau khi th�ng c�p thu�c t�nh ���c n�ng cao ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3022 then
	       	local nStoneId0 = 10303001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[H� th�ng]:#GPh� tr߽ng ph� tr߽ng, ch�c m�ng#{_INFOUSR%s}L�c D߽ng trang b� luy�n h�n th�ng c�p #{_INFOMSG%s}! L�y ���c chung c�c v�t ph�m, Luy�n h�n sau khi th�ng c�p thu�c t�nh ���c n�ng cao ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end
	elseif GetNumText() == 3023 then
	       	local nStoneId0 = 10305013
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10305013,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305014, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[H� th�ng]:#GPh� tr߽ng ph� tr߽ng, ch�c m�ng#{_INFOUSR%s}L�c D߽ng trang b� luy�n h�n th�ng c�p #{_INFOMSG%s}! L�y ���c chung c�c v�t ph�m, Luy�n h�n sau khi th�ng c�p thu�c t�nh ���c n�ng cao ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#GCh�c m�ng ng߽i, trang b� th�ng c�p th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cff99cc[ma h�n]#W chi nh�n #Wc� th� � #GL߽ng B�n T� #W��t ���c!" )
		      AddText( sceneId, "H�p th�nh ti�n kh� c�n ti�u hao: " )
		      AddText( sceneId, "#cff99ffNi�t b�n chi th�ch" )
		      AddText( sceneId, "#GNi�t b�n chi th�ch#W thu ���c t�i: #YC�nh k� tr߶ng#G ��i b�o t߽ng#W" )
		      AddText( sceneId, "#cff99cc[ma h�n]#W chi nh�n #G+#cFF0000 ni�t b�n chi th�ch #G=#cFF0000 ti�n kh�" )
			AddNumText( sceneId, x001154_g_scriptId, "H�p th�nh #GDi�t th� #YX�ch Di�m �ao#G.[LV1]#cFF0000 �ao b�ng lo�i", 5, 401)
			AddNumText( sceneId, x001154_g_scriptId, "H�p th�nh #GDi�t th� #YH�m quang ki�m#G.[LV1]#cFF0000 �an song �o�n", 5, 402)
			AddNumText( sceneId, x001154_g_scriptId, "H�p th�nh #GDi�t th� #YL�i minh nh�n#G.[LV1]#cFF0000 phi�n ho�n lo�i", 5, 403)
			AddNumText( sceneId, x001154_g_scriptId, "H�y b�", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 401 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G Ch�c m�ng ng߽i, �i th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 402 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G Ch�c m�ng ng߽i, �i th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 403 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x001154_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G Ch�c m�ng ng߽i, �i th�nh c�ng!"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#GNguy�n li�u c�a ng߽i kh�ng ��, ��ng t�i qu�y r�y b�n s� gi�!!"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end
--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x001154_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x001154_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x001154_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x001154_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x001154_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x001154_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x001154_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end