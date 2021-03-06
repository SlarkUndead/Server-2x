--Minh Gi醥
--问路脚本
x500062_g_scriptId = 500062

-- 问路类型 type: 1 为二c菜单, 2 为直接问路
x500062_g_Signpost = {
	{ type=2, name="B醝 ki猲 gi醥 ch�", x=98, y=52, tip="Gi醥 ch�", desc="Xin kh鬾g n阯 l鄊 phi玭 鬾g, N猽 ng呓i th馽 s� mu痭 g 鬾g th� t緄 Minh T鬾 朽n. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Gia nh Minh Gi醥", x=108, y=56, tip="Gia nh Minh Gi醥", desc="N猽 ng呓i mu痭 gia nh gi醥 ph醝 ta. Xin t緄 Minh T鬾 朽n 餴 t靘 L� S� T呓ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g chi猲 黏u ph醝 Minh Gi醥", x=109, y=59, tip="H鱟 k� n錸g chi猲 黏u ph醝 Minh Gi醥", desc="H鱟 k� n錸g chi猲 黏u ph醝 Minh Gi醥. Xin t緄 Minh T鬾 朽n 餴 t靘 B鄋g V課 Xu鈔. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g cu礳 s痭g ph醝 Minh Gi醥", x=87, y=61, tip="H鱟 k� n錸g cu礳 s痭g ph醝 Minh Gi醥", desc="C譽 鹫o nh鈔 � Minh T鬾 朽n c� th� d誽 ng呓i th醤h h鯽 thu 鸬c nh c黙 Minh Gi醥. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g h� tr� ph醝 Minh Gi醥", x=87, y=58, tip="H鱟 k� n錸g h� tr� ph醝 Minh Gi醥", desc="Ph呓ng Thi阯 懈nh � Minh T鬾 朽n c� th� d誽 ng呓i Th醝 H鯽 thu 鸬c nh c黙 Minh Gi醥. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g c咿i th� ph醝 Minh Gi醥", x=66, y=118, tip="H鱟 k� n錸g c咿i th�", desc="L� Thi阯 H駏 � ph韆 b Th鴜 Kim K� c� th� d誽 ng呓i c咿i s� t�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Mua v c咿i", x=64, y=115, tip="Mua v c咿i", desc="Ng呓i c� th� t靘 校ng Nguy阯 Gi醕 � ph韆 B Th鴜 Kim K�, h鰅 mua s� t� ch� 鬾g mua. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Nhi甿 v� Minh Gi醥", x=98, y=105, tip="Nhi甿 v� Minh Gi醥", desc="L鈓 Nham Ch韓h � Th醤h H鯽 朽i t靘 ng叨i gi鷓 疝 l鄊 1 s� s� v� c黙 gi醥 n礽. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ng叨i chuy阯 ch� ph醝 Minh Gi醥", x=102, y=167, tip="Ng叨i chuy阯 ch� ph醝 Minh Gi醥", desc="T痭g truy玭 s� Th Ph c黙 Minh Gi醥 � 姓i M鬾 Kh c� th� d鏽 ng呓i t緄 L誧 D呓ng, 姓i L�, T� Ch鈛 ho c醕 m鬾 ph醝 kh醕. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Quang Minh 鸬ng", x=89, y=56, tip="Quang Minh 鸬ng", desc="Quang Minh T� s� Ph呓ng L誴 � Minh T鬾 朽n c� th� d鏽 ng呓i t緄 th� chi猲 Quang Minh 鸬ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 khinh c鬾g ph醝 Minh Gi醥", x=133, y=137, tip="Ng叨i truy玭 d誽 khinh c鬾g ph醝 Minh Gi醥", desc="Mu痭 h鱟 khinh c鬾g ph鋓 t靘 Ph呓ng B醕h Hoa ph韆 B C駏 M鴆 K�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500062_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500062_g_Signpost do
		AddNumText(sceneId, x500062_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500062_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500062_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
