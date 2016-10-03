--Phø bän Th§p Nh¸ Sát Tinh
--Author: Hoàng Steven

--******************--
x910112_g_ScriptId=910112
--******************--
x910112_g_CopySceneType=FUBEN_SHENGSILEITAI										--Các tham s¯ cüa phø bän. Tham khäo "ScriptGlobal.lua"
--******************--
x910112_g_TickTime=1															--Th¶i gian hi®n tÕi cüa phø bän
x910112_g_NoUserTime=5000														--Th¶i gian lßu lÕi phø bän khi không còn ai trong phø bän (Ð½n v¸ Mili Giây)
x910112_g_Fuben_X=14															--Pos X ði¬m h°i sinh phø bän
x910112_g_Fuben_Y=34															--Pos Y ði¬m h°i sinh phø bän
x910112_g_Time_Leave=15000														--Th¶i gian r¶i phø bän khi hoàn thành nhi®m vø
x910112_g_FuBenTime=3600000														--Th¶i gian phø bän (Ð½n v¸ Mili Giây)
x910112_g_Limit_Member=1														--S¯ lßþng thành viên t¯i thi¬u trong ðµi ngû
x910112_g_Day_Time=4															--S¯ lßþt tham gia trong ngày
x910112_g_Fuben_Map="shengsileitai_monster.ini"									--Load file Monster
x910112_g_Fuben_Scene="shengsileitai.nav"										--Load file Scene
x910112_g_Fuben_Area="shengsileitai_area.ini"									--Load file Area
--******************--
x910112_g_Need_Level=80															--Level t¯i thi¬u tham gia phø bän
--******************--
x910112_g_NPC_Boss_List=														--Danh sách các NPC Boss
{
	[1]		=	{	Index=13554,	Name="Công Tôn Thánh",		Title="Thiên Nhàn Tinh"		},
	[2]		=	{	Index=13557,	Name="Hô Diên Trác",		Title="Thiên Uy Tinh"		},
	[3]		=	{	Index=13560,	Name="Hoa Dung",			Title="Thiên Anh Tinh"		},
	[4]		=	{	Index=13558,	Name="Lâm Sung",			Title="Thiên Hùng Tinh"		},
	[5]		=	{	Index=13556,	Name="L² Chí Sinh",			Title="Thiên Cô Tinh"		},
	[6]		=	{	Index=13553,	Name="Lß Quân D§t",			Title="Thiên Cß½ng Tinh"	},
	[7]		=	{	Index=13551,	Name="Lý Khôi",				Title="Thiên Sát Tinh"		},
	[8]		=	{	Index=13552,	Name="Ngô Vînh",			Title="Thiên C½ Tinh"		},
	[9]		=	{	Index=13555,	Name="Quan Th¸nh",			Title="Thiên Dûng Tinh"		},
	[10]	=	{	Index=13559,	Name="T¥n Minh",			Title="Thiên Mãnh Tinh"		},
	[11]	=	{	Index=13550,	Name="T¯ng Khß½ng",			Title="Thiên Khôi Tinh"		},
	[12]	=	{	Index=13561,	Name="Võ Tøng",				Title="Thiên Thß½ng Tinh"	},
}
--******************--
x910112_g_Boss_List=															--Danh sách các Boss
{
	[1]		=	{	Index=13713,	Name="Công Tôn Thánh",		Title="Thiên Nhàn Tinh",		AIScript=0,		ScriptID=910102		},
	[2]		=	{	Index=13497,	Name="Hô Diên Trác",		Title="Thiên Uy Tinh",			AIScript=0,		ScriptID=910108		},
	[3]		=	{	Index=13524,	Name="Hoa Dung",			Title="Thiên Anh Tinh",			AIScript=0,		ScriptID=910101		},
	[4]		=	{	Index=13506,	Name="Lâm Sung",			Title="Thiên Hùng Tinh",		AIScript=0,		ScriptID=910109		},
	[5]		=	{	Index=13488,	Name="L² Chí Sinh",			Title="Thiên Cô Tinh",			AIScript=0,		ScriptID=910104		},
	[6]		=	{	Index=13461,	Name="Lß Quân D§t",			Title="Thiên Cß½ng Tinh",		AIScript=0,		ScriptID=910105		},
	[7]		=	{	Index=13443,	Name="Lý Khôi",				Title="Thiên Sát Tinh",			AIScript=0,		ScriptID=910103		},
	[8]		=	{	Index=13452,	Name="Ngô Vînh",			Title="Thiên C½ Tinh",			AIScript=0,		ScriptID=910100		},
	[9]		=	{	Index=13479,	Name="Quan Th¸nh",			Title="Thiên Dûng Tinh",		AIScript=0,		ScriptID=910106		},
	[10]	=	{	Index=13515,	Name="T¥n Minh",			Title="Thiên Mãnh Tinh",		AIScript=0,		ScriptID=910110		},
	[11]	=	{	Index=13434,	Name="T¯ng Khß½ng",			Title="Thiên Khôi Tinh",		AIScript=0,		ScriptID=910107		},
	[12]	=	{	Index=13533,	Name="Võ Tøng",				Title="Thiên Thß½ng Tinh",		AIScript=0,		ScriptID=910111		},
}
--******************--
x910112_g_NPC_Boss_Pos=															--T÷a ðµ trong phø bän cüa 5 NPC Boss
{	
	[1]		=	{	Pos_X=45.0,		Pos_Y=26.0	},
	[2]		=	{	Pos_X=45.0,		Pos_Y=29.5	},
	[3]		=	{	Pos_X=45.0,		Pos_Y=33.0	},
	[4]		=	{	Pos_X=45.0,		Pos_Y=36.5	},
	[5]		=	{	Pos_X=45.0,		Pos_Y=40.0	},
}
--******************--
x910112_g_Number_Per_Choose=5													--S¯ lßþng Boss ðßþc ch÷n vào chiªn ð¤u
--******************--
x910112_g_Script_NPC_Talk=910114												--Script cüa NPC Boss
--******************--
x910112_g_Card_Index=30010098													--ID Sát Tinh D¸ Dung Ðan
--******************--
x910112_g_Boss_1=8																--Boss s¯ 1
x910112_g_Boss_2=9																--Boss s¯ 2
x910112_g_Boss_3=10																--Boss s¯ 3
x910112_g_Boss_4=11																--Boss s¯ 4
x910112_g_Boss_5=12																--Boss s¯ 5
x910112_g_Next_Step=13															--Thao tác chuy¬n ð±i khi Boss chªt
x910112_g_Fuben_Level=14														--C¤p ðµ Boss trong phø bän
x910112_g_Fuben_Timer=15														--Biªn c§p nh§t giá tr¸ th¶i gian cüa phø bän
x910112_g_Next_Time_Call=16														--Th¶i gian ra Boss còn lÕi
x910112_g_Fuben_On_Time=17														--Th¶i gian phø bän (Tính t× lúc b¡t ð¥u vào+th¶i gian lúc vào cänh)
x910112_g_Info_Step=18															--L¥n thông báo
x910112_g_Boss_Step=19															--L¥n thông báo boss tiªn vào chiªn ð¤u
x910112_g_Mission_Completed=20													--Nhi®m vø ðã hoàn thành
x910112_g_Exit_Time_Fuben=21													--Th¶i gian kªt thúc phø bän khi th¡ng
x910112_g_Is_On_Combat=22														--Boss ðang trong trÕng thái chiªn ð¤u
--******************--
x910112_g_Monk={	Index=13547,	Name="Khô Vinh ÐÕi Sß",		Title="Th§p nh¸ Sát Tinh",		Pos_X=11,	Pos_Y=34,	ScriptID=910114		}--Khô Vinh ÐÕi Sß
--******************--
x910112_g_First_Battle_Time=60000												--Th¶i gian chu¦n b¸ chiªn ð¤u l¥n ð¥u tiên (Ð½n v¸ Mili Giây)
x910112_g_Creat_Boss_Timer=300000												--Th¶i gian cách nhau m²i l¥n ra Boss (Ð½n v¸ Mili Giây)
--******************--
x910112_g_Fight_Pos_X=31														--T÷a ðµ X cüa Boss khi chiªn ð¤u
x910112_g_Fight_Pos_Y=33														--T÷a ðµ Y cüa Boss khi chiªn ð¤u
--******************--
x910112_g_Impact=18																--Impact NPC Boss b¸ thay thª b·i Boss	
--******************--
x910112_g_Notice=
{
	[1]="Phø bän hi®n tÕi s¨ ðóng sau 1 gi¶ næa!",								--Thông báo khi m¾i vào phø bän
	[2]="Phø bän hi®n tÕi s¨ ðóng sau 30 phút næa!",							--Thông báo khi còn 30 phút
	[3]="Phø bän hi®n tÕi s¨ ðóng sau 15 phút næa!",							--Thông báo khi còn 15 phút
	[4]="Phø bän hi®n tÕi s¨ ðóng sau 5 phút næa!",								--Thông báo khi còn 5 phút
	[5]="Phø bän hi®n tÕi s¨ ðóng sau 1 phút næa!",								--Thông báo khi còn 1 phút
	[6]="Phø bän hi®n tÕi s¨ ðóng sau 30 giây næa!",							--Thông báo khi còn 30 giây
	[7]="Phø bän hi®n tÕi s¨ ðóng sau 15 giây næa!",							--Thông báo khi còn 15 giây
	[8]="Phø bän hi®n tÕi s¨ ðóng sau 5 giây næa!",								--Thông báo khi còn 5 giây
	[9]="Nhi®m vø th¤t bÕi. Các hÕ s¨ tñ r¶i khöi ðây!",						--Thông báo khi hªt phø bän
	[10]="Sát Tinh tiªp theo s¨ tiªn vào sau 1 phút!",								--Thông báo sát tinh tiªp theo tiªn vào sau 1 phút
	[11]="Sát Tinh tiªp theo s¨ tiªn vào sau 30 giây!",							--Thông báo sát tinh tiªp theo tiªn vào sau 30 giây
	[12]="Sát Tinh tiªp theo s¨ tiªn vào sau 15 giây!",							--Thông báo sát tinh tiªp theo tiªn vào sau 15 giây
	[13]="Sát Tinh tiªp theo s¨ tiªn vào sau 5 giây!",							--Thông báo sát tinh tiªp theo tiªn vào sau 5 giây
	[14]="Nhi®m vø hoàn thành. Các hÕ s¨ r¶i khöi ðây sau 15 giây!",			--Thông báo hoàn thành nhi®m vø
}
--******************--
x910112_g_Back_Scene_Index=2													--ID cänh quay tr· lÕi
x910112_g_Back_Pos_X=129														--Pos X cänh quay tr· lÕi
x910112_g_Back_Pos_Y=76														--Pos Y cänh quay tr· lÕi
--******************--
x910112_g_Information=															--Thông tin các ðoÕn hµi thoÕis
{
	[1]="Mu¯n khiêu chiªn #GTh§p nh¸ Sát Tinh#W, các hÕ phäi ðÕt c¤p #G"..x910112_g_Need_Level.." tr· lên#W, m²i ngày có t¯i ða #G"..x910112_g_Day_Time.." lßþt#W. Nªu ðã tham gia quá #G"..x910112_g_Day_Time.." lßþt#W r°i, có th¬ dùng #GSát Tinh D¸ Dung Ðan#W có bán trong ti®m #GNguyên bäo#W ð±i l¤y mµt c½ hµi næa.",
	[2]="Công Tôn Thánh",
	[3]="Hô Diên Trác",
	[4]="Hoa Dung",
	[5]="Lâm Sung",
	[6]="L² Chí Sinh",
	[7]="Lß Quân D§t",
	[8]="Lý Khôi",
	[9]="Ngô Vînh",
	[10]="Quan Th¸nh",
	[11]="T¥n Minh",
	[12]="T¯ng Khß½ng",
	[13]="Võ Tøng",
	[14]="#GCông Tôn Thánh#W ngoÕi hi®u #GThiên Nhàn Tinh#W.#r#GÐ£c ði¬m:#W SØ døng bùa chú gây hÕi cho ð¯i thü.#r#GKÛ nång:#W #YPhân Thân Phù#W, #YPhong Huy®t Phù#W, #YÐ¸nh Thân Phù#W, #YHôn Thøy Phù#W.",
	[15]="#GHô Diên Trác#W ngoÕi hi®u #GThiên Uy Tinh#W.#r#GÐ£c ði¬m:#W KÛ nång qu¥n th¬ #GHuy«n Công#W lên các ð¯i thü, sþ #GÐµc Công#W.#r#GKÛ nång:#W #YPhá Huy«n#W, #YLôi Ðình VÕn Quân#W.",
	[16]="#GHoa Dung#W ngoÕi hi®u #GThiên Anh Tinh#W.#r#GÐ£c ði¬m:#W SØ døng cÕm bçy t¤n công ð¯i thü.#r#GKÛ nång:#W #YÐ¸a Sát Tr§n#W, #YNhân Vong Tr§n#W, #YThiên Cang Tr§n#W, #YCß¶ng Hóa Tr§n#W.",
	[17]="#GLâm Sung#W ngoÕi hi®u #GThiên Hùng Tinh#W.#r#GÐ£c ði¬m:#W KÛ nång qu¥n th¬ #GBång Công#W lên các ð¯i thü, sþ #GHöa Công#W.#r#GKÛ nång:#W #YPhá Bång#W, #YHàn Bång Chân Khí#W.",
	[18]="#GL² Chí Sinh#W ngoÕi hi®u #GThiên Cô Tinh#W.#r#GÐ£c ði¬m:#W Có th¬ mi­n d¸ch m÷i sát thß½ng trong th¶i gian ng¡n, qu¥n th¬ công kích #GNgoÕi Công#W.#r#GKÛ nång:#W #YCô Phß½ng Tñ Thß·ng#W, #YCu°ng Phong San#W.",
	[19]="#GLß Quân D§t#W ngoÕi hi®u #GThiên Cß½ng Tinh#W.#r#GÐ£c ði¬m:#W Có th¬ giäm sát thß½ng lên bän thân, phän ðòn sát thß½ng nhßng s¨ suy yªu sau ðó.#r#GKÛ nång:#W #YThiên Cang Hoàng Khí#W, #YThiên Cang Bá Khí#W, #YThiên Nhân Ngû Suy#W.",
	[20]="#GLý Khôi#W ngoÕi hi®u #GThiên Sát Tinh#W.#r#GÐ£c ði¬m:#W Phóng thích sát khí #GÔn D¸ch#W, qu¥n th¬ công kích #GNgoÕi Công#W.#r#GKÛ nång:#W #YSát Khí Ôn D¸ch#W, #YSinh Môn#W.",
	[21]="#GNgô Vînh#W ngoÕi hi®u #GThiên C½ Tinh#W.#r#GÐ£c ði¬m:#W G÷i #Gphøc binh#W h² trþ, mi­n d¸ch vô ð¸ch v¾i phøc binh màu tß½ng Ñng, m¤t máu và hªt mi­n d¸ch sau khi phøc binh ðúng loÕi chªt.#r#GKÛ nång:#W #YTri®u t§p Phøc Binh#W.",
	[22]="#GQuan Th¸nh#W ngoÕi hi®u #GThiên Dûng Tinh#W.#r#GÐ£c ði¬m:#W KÛ nång qu¥n th¬ #GHuy«n Công#W gây thß½ng t±n l¾n.#r#GKÛ nång:#W #YDi®t Thª Ðao Tr§n#W.",
	[23]="#GT¥n Minh#W ngoÕi hi®u #GThiên Mãnh Tinh#W.#r#GÐ£c ði¬m:#W KÛ nång qu¥n th¬ #GÐµc Công#W lên các ð¯i thü, sþ #GHuy«n Công#W.#r#GKÛ nång:#W #YPhá Ðµc#W, #YHü C¯t Xuyên Tâm#W.",
	[24]="#GT¯ng Khß½ng#W ngoÕi hi®u #GThiên Khôi Tinh#W.#r#GÐ£c ði¬m:#W KÛ nång qu¥n th¬ bá ðÕo nh¤t trong #G12 sát tinh#W, có th¬ khiªn ð¯i phß½ng tØ nÕn ngay trong mµt chiªu.#r#GKÛ nång:#W #YYêu Tinh Tø Nghîa#W, #YThiên Hàng Ngh¸ch Chuy¬n#W, #YSát Khí Bµc Phát#W.",
	[25]="#Võ Tøng#W ngoÕi hi®u #GThiên Thß½ng Tinh#W.#r#GÐ£c ði¬m:#W KÛ nång qu¥n th¬ #GHöa Công#W lên các ð¯i thü, sþ #GBång Công#W.#r#GKÛ nång:#W #YPhá Höa#W, #YHöa Thiêu ÐÕi Danh Phü#W.",
	[26]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[27]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[28]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[29]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[30]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[31]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[32]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[33]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[34]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[35]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[36]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[37]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[38]="#GV§t ph¦m r½i ra:#r#W#YCông Lñc Ðan#W #r#YLinh H°n Toái Phiªn#W #r#YNgñ Dao Bàn#W #r#YLßu Ly Di­m#W #r#YThiên Niên Tiên Thäo",
	[39]="#GSát Tinh D¸ Dung Ðan#W, mµt viên ng÷c quý hiªm, tß½ng truy«n có th¬ dùng ð¬ #GTái chiªn Th§p nh¸ Sát Tinh#W. Không biªt vì sao ðÕi nhân #GTôn Tiªn Bäo#W lÕi có nó, các hÕ có th¬ tìm mua nó · #GTi®m Nguyên Bäo#W.",
}
--******************--
x910112_g_Introduce="Không biªt t× ðâu ra có #G12 tên#W tñ xßng #GTh§p nh¸ Sát Tinh#W hoành hành ngang ngßþc, uy hiªp bá tính. Thiên hÕ anh hùng, phàm là ngß¶i hành hi®p trßþng nghîa, các hÕ không th¬ bö qua cho chúng!"
--******************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x910112_OnEnumerate(sceneId,selfId,targetId)

	--******************--
	AddNumText(sceneId,x910112_g_ScriptId,"Khiêu chiªn Th§p Nh¸ Sát Tinh",6,1)	--Khiêu chiªn
	AddNumText(sceneId,x910112_g_ScriptId,"Tái chiªn Th§p Nh¸ Sát Tinh",6,2)	--Tái chiªn
	AddNumText(sceneId,x910112_g_ScriptId,"V« Th§p nh¸ Sát Tinh",11,0)			--Tìm hi¬u
	AddNumText(sceneId,x910112_g_ScriptId,"V« Sát Tinh D¸ Dung Ðan",11,22)		--Tìm hi¬u Sát tinh d¸ dung ðan
	--******************--

end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910112_OnDefaultEvent(sceneId,selfId,targetId)
local key=GetNumText()

	--******************--
	if key==0 then
	
		BeginEvent(sceneId)
			AddText(sceneId,x910112_g_Introduce)
			for i=2,13 do
				AddNumText(sceneId,x910112_g_ScriptId,x910112_g_Information[i],11,i+8)
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key==22 then
	
		BeginEvent(sceneId)
			AddText(sceneId,x910112_g_Information[39])
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key>=10 and key<=21 then
		
		BeginEvent(sceneId)
			AddText(sceneId,x910112_g_Information[key+4])
			AddText(sceneId,x910112_g_Information[key+16])
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key==1 then
		
		local nTime=GetMissionData(sceneId,selfId,SHENGSI_DAYTIME)				--S¯ lßþt tham gia phø bän trong ngày
		if nTime>=x910112_g_Day_Time then
			BeginEvent(sceneId)
				AddText(sceneId,x910112_g_Information[1])
				AddText(sceneId,"Ngày hôm nay các hÕ ðã tham gia #G"..nTime.." l¥n#W r°i, xin ngày mai hãy quay lÕi. Ho£c có th¬ sØ døng #GSát Tinh D¸ Dung Ðan#W có bán trong ti®m #GNguyên bäo#W ð±i l¤y mµt c½ hµi næa.")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,x910112_g_Information[1])
			AddText(sceneId,"Ngày hôm nay các hÕ ðã tham gia #G"..nTime.." l¥n#W, còn lÕi #G"..(x910112_g_Day_Time-nTime).." lßþt næa. Các hÕ có xác nh§n tham gia không?")
			AddNumText(sceneId,x910112_g_ScriptId,"Khiêu chiªn Th§p nh¸ Sát Tinh",10,3)
			AddNumText(sceneId,x910112_g_ScriptId,"R¶i bö",-1,4)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key==2 then
	
		local nTime=GetMissionData(sceneId,selfId,SHENGSI_DAYTIME)				--S¯ lßþt tham gia phø bän trong ngày
		if nTime<x910112_g_Day_Time then
			BeginEvent(sceneId)
				AddText(sceneId,x910112_g_Information[1])
				AddText(sceneId,"Ngày hôm nay các hÕ ðã tham gia #G"..nTime.." l¥n#W r°i, vçn còn #G"..(x910112_g_Day_Time-nTime).." lßþt#W næa. Các hÕ xin ð×ng lãng phí c½ hµi này.")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,x910112_g_Information[1])
			AddText(sceneId,"Ngày hôm nay các hÕ ðã tham gia #G"..nTime.." l¥n#W. Ð¬ có thêm mµt c½ hµi næa, các hÕ phäi ðßa cho ta mµt t¤m #GSát Tinh D¸ Dung Ðan#W?")
			AddNumText(sceneId,x910112_g_ScriptId,"Tái chiªn Th§p nh¸ Sát Tinh",10,5)
			AddNumText(sceneId,x910112_g_ScriptId,"R¶i bö",-1,4)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--******************--
	if key==4 then
	
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
		
	end
	--******************--
	if key==5 or key==3 then
	
		if key==5 and LuaFnGetAvailableItemCount(sceneId,selfId,x910112_g_Card_Index)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Xin l²i, trên ngß¶i các hÕ không có #GSát Tinh D¸ Dung Ðan#W. Viên ng÷c này có bán · thß½ng ti®m #GNguyên bäo#W. Các hÕ thØ ghé qua ðó xem sao!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local Check,nTip=x910112_CheckCanEnter(sceneId,selfId)
		if Check==0 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		x910112_MakeCopyScene(sceneId,selfId)									--Kh·i tÕo phø bän
		
	end
	--******************--
	
end
--**********************************--
--*         Check Can Enter        *--
--**********************************--
function x910112_CheckCanEnter(sceneId,selfId,targetId)

	--******************--
	if LuaFnHasTeam(sceneId,selfId)~=1 then										--Ngß¶i ch½i này không có ðµi ngû
		return 0,"Các hÕ c¥n gia nh§p vào mµt ðµi ngû t¯i thi¬u #G"..x910112_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	if GetTeamLeader(sceneId,selfId)~=selfId then								--Ngß¶i ch½i không phäi ðµi trß·ng
		return 0,"Chï có ðµi trß·ng m¾i có th¬ quyªt ð¸nh có tham gia hay không. Các hÕ hãy g÷i ðµi trß·ng cüa các hÕ ðªn nói chuy®n v¾i ta!"
	end
	--******************--
	if GetTeamSize(sceneId,selfId)<x910112_g_Limit_Member then					--S¯ lßþng thành viên không ðü
		return 0,"T± ðµi c¥n có t¯i thi¬u #G"..x910112_g_Limit_Member.."#W thành viên m¾i có th¬ tham gia!"
	end
	--******************--
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)						--Ðµi ngû có thành viên không · g¥n
	if GetTeamSize(sceneId,selfId)~=NearTeamSize then
		return 0,"Các hÕ c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² ta m¾i có th¬ tiªn vào phø bän!"
	end
	--******************--
	local Humanlist={}
	local nHumanNum=0
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		if GetLevel(sceneId,PlayerId)<x910112_g_Need_Level then					--Có thành viên không ðü c¤p ðµ yêu c¥u
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum = nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." c¤p ðµ không ðü c¤p #G"..x910112_g_Need_Level..", không ðü ði«u ki®n tham gia phø bän!"
		return 0,msg
	end
	--******************--
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0,NearTeamSize-1 do
		local PlayerId=GetNearTeamMember(sceneId,selfId,i)
		local nTime=GetMissionData(sceneId,PlayerId,SHENGSI_DAYTIME)			--S¯ l¥n tham gia phø bän hôm nay
		if nTime>=x910112_g_Day_Time then
			Humanlist[nHumanNum]=GetName(sceneId,PlayerId)
			nHumanNum=nHumanNum+1
		end
	end
	if nHumanNum > 0 then
		local msg="Trong t± ðµi cüa các hÕ có "
		for i=0,nHumanNum-2 do
			msg=msg..Humanlist[i]..", "
		end
		msg=msg..Humanlist[nHumanNum-1].." ðã tham gia phø bän #G"..x910112_g_Day_Time.." l¥n#W trong ngày hôm nay!"
		return 0,msg
	end
	--******************--
	return 1
	--******************--

end
--**********************************--
--*         Make Copy Scene        *--
--**********************************--
function x910112_MakeCopyScene(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	--******************--
	LuaFnSetSceneLoad_Map(sceneId,x910112_g_Fuben_Scene)								--Load file scene
	LuaFnSetCopySceneData_TeamLeader(sceneId,leaderguid)								--ID ðµi trß·ng
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId,x910112_g_NoUserTime)					--Th¶i gian lßu phø bän khi không còn ai
	LuaFnSetCopySceneData_Timer(sceneId,x910112_g_TickTime)								--Th¶i gian phø bän
	LuaFnSetCopySceneData_Param(sceneId,0,x910112_g_CopySceneType)						--Set thông s¯ phø bän (ScriptGlobal.lua)
	LuaFnSetCopySceneData_Param(sceneId,1,x910112_g_ScriptId)							--ID script phø bän
	LuaFnSetCopySceneData_Param(sceneId,2,0)
	LuaFnSetCopySceneData_Param(sceneId,3,sceneId)										--Cänh tßþng hi®n tÕi
	LuaFnSetCopySceneData_Param(sceneId,4,x)											--T÷a ðµ X cüa ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,5,y)											--T÷a ðµ Y cüa ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,6,GetTeamId(sceneId,selfId))					--ID nhóm ngß¶i ch½i
	LuaFnSetCopySceneData_Param(sceneId,7,0)
	--******************--
	for i=8,31 do
		LuaFnSetCopySceneData_Param(sceneId,i,0)										--Reset lÕi các thông s¯ cho phø bän
	end
	--******************--
	LuaFnSetSceneLoad_Area(sceneId,x910112_g_Fuben_Area)								--Load area
	LuaFnSetSceneLoad_Monster(sceneId,x910112_g_Fuben_Map)								--Load file monster
	--******************--
	local bRetSceneID=LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!")									--S¯ bän sao quá täi
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã quá täi, ð« ngh¸ lát næa thØ lÕi!")	--Có th¬ tÕo bän sao m¾i
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--******************--

end
--**********************************--
--*      Make Copy Scene Ready     *--
--**********************************--
function x910112_OnCopySceneReady(sceneId,destsceneId)

	--******************--
	LuaFnSetCopySceneData_Param(destsceneId,3,sceneId)										--Thông báo kh·i tÕo phø bän
	leaderguid=LuaFnGetCopySceneData_TeamLeader(destsceneId) 
	leaderObjId=LuaFnGuid2ObjId(sceneId,leaderguid);
	--******************--
	local nearteammembercount=GetNearTeamCount(sceneId,leaderObjId) 
	local mems={}
	for	i=0,nearteammembercount-1 do
		mems[i]=GetNearTeamMember(sceneId,leaderObjId,i)	
		NewWorld(sceneId,mems[i],destsceneId,x910112_g_Fuben_X,x910112_g_Fuben_Y) 		--Ðßa t¤t cä thành viên nhóm ðªn phø bän
	end
	--******************--

end
--**********************************--
--*       On Copy Scene Timer      *--
--**********************************--
function x910112_OnCopySceneTimer(sceneId,nowTime)											--Hàm này check liên tøc m²i Mili giây khi phø bän còn t°n tÕi

	--******************--
	local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Next_Step)					--L¤y thao tác trên phø bän
	if nStep==0 then																		--L¥n ð¥u trong phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Fuben_Timer,x910112_g_FuBenTime)		--C§p nh§t th¶i gian b¡t ð¥u phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Fuben_On_Time,nowTime)				--C§p nh§t th¶i gian phø bän (Ð½n v¸ Mili giây)
		x910112_CreatMyNPC(sceneId)															--Kh·i tÕo các NPC
	elseif nStep==1 then																	--Giai ðoÕn chiªn ð¤u
		local Is_Winner=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Mission_Completed)	--Nhi®m vø ðã hoàn thành chßa
		if Is_Winner==1 then																--Hoàn thành nhi®m vø r°i
			local Time_Left=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Exit_Time_Fuben)	--L¤y th¶i gian lúc th¡ng cuµc
			if nowTime-Time_Left>=x910112_g_Time_Leave then
				x910112_KickOutAllPlayer(sceneId)											--Ðßa t¤t cä ngß¶i ch½i r¶i khöi phø bän
			end
			return
		end
		local Total_Boss_Left=x910112_CheckHaveBossLeft(sceneId)							--Ki¬m tra còn lÕi bao nhiêu Boss ho£c NPC Boss. Nªu không còn thì th¡ng
		if Total_Boss_Left==0 then
			x910112_OnCompleteMission(sceneId)												--Hoàn thành nhi®m vø
			LuaFnSetCopySceneData_Param(sceneId,x910112_g_Exit_Time_Fuben,nowTime)			--C§p nh§t th¶i gian b¡t ð¥u tính chu¦n b¸ r¶i phø bän
			return
		end
		local nTick=nowTime-LuaFnGetCopySceneData_Param(sceneId,x910112_g_Fuben_On_Time)	--L¤y tích t¡c mµt cüa phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Fuben_On_Time,nowTime)				--C§p nh§t th¶i gian phø bän (Ð½n v¸ Mili giây)
		local nTime=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Fuben_Timer)				--L¤y th¶i gian hi®n tÕi cüa phø bän (Ð½n v¸ Mili giây)
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Fuben_Timer,nTime-nTick)				--C§p nh§t th¶i gian phø bän (Ð½n v¸ Mili giây)
		local Next_Time=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Next_Time_Call)		--L¤y th¶i gian ra Boss tiªp theo (Ð½n v¸ Mili giây)
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Next_Time_Call,Next_Time-nTick)		--C§p nh§t th¶i gian ra Boss tiªp theo (Ð½n v¸ Mili giây)
		if Next_Time-nTick<=0 then															--Ðã ðªn gi¶ kh·i tÕo Boss tiªp theo
			x910112_CreatMyBoss(sceneId)													--Kh·i tÕo Boss
		end
		x910112_ShowNotices(sceneId,nTime-nTick)											--Ki¬m tra và thông báo nªu ðªn gi¶
		x910112_BossNotices(sceneId,Next_Time-nTick)										--Thông báo ra Boss
	elseif nStep==2 then																	--Ðã hªt th¶i gian phø bän
		x910112_KickOutAllPlayer(sceneId)													--Ðßa t¤t cä ngß¶i ch½i r¶i khöi phø bän
	end
	--******************--

end
--**********************************--
--*         On Player Enter        *--
--**********************************--
function x910112_OnPlayerEnter(sceneId,selfId)

	--******************--
	SetPlayerDefaultReliveInfo(sceneId,selfId,"%10",-1,"0",sceneId,x910112_g_Fuben_X,x910112_g_Fuben_Y)		--Ð£t ði¬m h°i sinh tÕi phø bän
	--******************--
	local nTime=GetMissionData(sceneId,selfId,SHENGSI_DAYTIME)												--L¤y s¯ lßþt tham gia phø bän trong ngày
	SetMissionData(sceneId,selfId,SHENGSI_DAYTIME,nTime+1)													--C§p nh§t lÕi s¯ lßþt tham gia phø bän trong ngày
	--******************--
	
end
--**********************************--
--*          On Human Die          *--
--**********************************--
function x910112_OnHumanDie(sceneId,selfId,killerId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*      On Complete Mission       *--
--**********************************--
function x910112_OnCompleteMission(sceneId)
	
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Mission_Completed,1)					--C§p nh§t chßa hoàn thành nhi®m vø
	--******************--
	x910112_TipAllHuman(sceneId,x910112_g_Notice[14])
	--******************--
	
end
--**********************************--
--*      Check Have Boss Left      *--
--**********************************--
function x910112_CheckHaveBossLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then
			for j=1,12 do
				if GetName(sceneId,MonsterId)==x910112_g_Boss_List[j].Name or GetName(sceneId,MonsterId)==x910112_g_NPC_Boss_List[j].Name then
					return 1
				end
			end
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*          Show Notices          *--
--**********************************--
function x910112_ShowNotices(sceneId,nTime)
	
	--******************--
	local nNotice=""															--Thông báo
	if nTime<=0 then															--Hªt th¶i gian phø bän
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==9 then
			return
		end
		nNotice=x910112_g_Notice[9]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Next_Step,2)				--Ðã hªt th¶i gian phø bän
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,9)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=5000 then														--Còn 5 giây
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==8 then
			return
		end
		nNotice=x910112_g_Notice[8]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,8)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=15000 then													--Còn 15 giây
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==7 then
			return
		end
		nNotice=x910112_g_Notice[7]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,7)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=30000 then													--Còn 30 giây
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==6 then
			return
		end
		nNotice=x910112_g_Notice[6]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,6)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=60000 then													--Còn 1 phút
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==5 then
			return
		end
		nNotice=x910112_g_Notice[5]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,5)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=300000 then													--Còn 5 phút
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==4 then
			return
		end
		nNotice=x910112_g_Notice[4]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,4)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=900000 then													--Còn 15 phút
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==3 then
			return
		end
		nNotice=x910112_g_Notice[3]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,3)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=1800000 then													--Còn 30 phút
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==2 then
			return
		end
		nNotice=x910112_g_Notice[2]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,2)				--C§p nh§t ðã thông báo loÕi này
	elseif nTime<=3595000 then													--Còn 1 gi¶
		local nStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Info_Step)	--Bß¾c thông báo l¥n trß¾c
		if nStep==1 then
			return
		end
		nNotice=x910112_g_Notice[1]
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,1)				--C§p nh§t ðã thông báo loÕi này
	end
	--******************--
	if nNotice~="" then
		x910112_TipAllHuman(sceneId,nNotice)									--Thông báo cho toàn th¬ ngß¶i ch½i
	end
	--******************--
	
end
--**********************************--
--*          Boss Notices          *--
--**********************************--
function x910112_BossNotices(sceneId,nTime)
	
	local Boss_Notice=""
	local nBossStep=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Boss_Step)	--Bß¾c thông báo l¥n trß¾c ra Boss
	if nTime<=5000 then															--Còn 5 giây s¨ ra Boss m¾i
		if nBossStep==13 then
			return
		end
		Boss_Notice=x910112_g_Notice[13]										
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_Step,13)
	elseif nTime<=15000 then													--Còn 15 giây s¨ ra Boss m¾i
		if nBossStep==12 then
			return
		end
		Boss_Notice=x910112_g_Notice[12]										
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_Step,12)
	elseif nTime<=30000 then													--Còn 30 giây s¨ ra Boss m¾i
		if nBossStep==11 then
			return
		end
		Boss_Notice=x910112_g_Notice[11]										
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_Step,11)
	elseif nTime<=55000 then													--Còn 1 phút s¨ ra Boss m¾i
		if nBossStep==10 then
			return
		end
		Boss_Notice=x910112_g_Notice[10]										
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_Step,10)
	end
	--******************--
	if Boss_Notice~="" then
		x910112_TipAllHuman(sceneId,Boss_Notice)								--Thông báo cho toàn th¬ ngß¶i ch½i
	end
	--******************--
	
end
--**********************************--
--*      Kick Out All Player       *--
--**********************************--
function x910112_KickOutAllPlayer(sceneId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			CallScriptFunction((400900),"TransferFunc",sceneId,nHumanId,x910112_g_Back_Scene_Index,x910112_g_Back_Pos_X,x910112_g_Back_Pos_Y)	--Ðßa ngß¶i ch½i tr· v« thành th¸
		end
	end
	--******************--
	
end
--**********************************--
--*     Delete All Old Monster     *--
--**********************************--
function x910112_DeleteAllOldMonster(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then	
			SetCharacterDieTime(sceneId,MonsterId,100)					
		end
	end
	--******************--
	
end
--**********************************--
--*         Creat My NPC           *--
--**********************************--
function x910112_CreatMyNPC(sceneId)
	
	--******************--
	x910112_DeleteAllOldMonster(sceneId)									--Just fix a bug...
	--******************--
	local Monk_Index=LuaFnCreateMonster(sceneId,x910112_g_Monk.Index,x910112_g_Monk.Pos_X,x910112_g_Monk.Pos_Y,3,0,x910112_g_Monk.ScriptID)	---Kh·i tÕo NPC Khô Vinh ÐÕi Sß
	SetCharacterName(sceneId,Monk_Index,x910112_g_Monk.Name)				--C§p nh§t tên Khô Vinh ÐÕi Sß
	SetCharacterTitle(sceneId,Monk_Index,x910112_g_Monk.Title)				--C§p nh§t Title cho Khô Vinh ÐÕi Sß
	--******************--
	local nBossList={0,0,0,0,0}												--Danh sách 5 Boss ðßþc ch÷n
	for i=1,x910112_g_Number_Per_Choose do
		local Ran=random(12)												--Ch÷n ngçu nhiên mµt trong 12 Boss
		local Found=0
		for j=1,i-1 do
			if Ran==nBossList[j] then										--Tìm th¤y Boss ðã ðßþc ch÷n trß¾c ðó
				Found=1
				break
			end
		end
		if Found==0 then													--Boss này chßa ðßþc ch÷n trß¾c ðó
			nBossList[i]=Ran												--C§p nh§t
		end
	end
	--******************--
	local nSum=0
	local nHumanCount=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		nSum=nSum+GetLevel(sceneId,nHumanId)
	end
	--******************--
	local Current_Level=floor(nSum/nHumanCount)								--Level cüa Boss trong phø bän
	local nDec
	if Current_Level>=80 and Current_Level<90 then
		nDec=0
	elseif Current_Level>=90 and Current_Level<100 then
		nDec=1
	elseif Current_Level>=100 and Current_Level<110 then
		nDec=2
	elseif Current_Level>=110 and Current_Level<120 then
		nDec=3
	else
		nDec=4
	end
	--******************--
	for i=1,5 do
		local Boss_ID=x910112_g_NPC_Boss_List[nBossList[i]].Index			--ID NPC Boss
		local Boss_Name=x910112_g_NPC_Boss_List[nBossList[i]].Name			--Tên NPC Boss
		local Boss_Title=x910112_g_NPC_Boss_List[nBossList[i]].Title		--Danh hi®u NPC Boss
		local Pos_X=x910112_g_NPC_Boss_Pos[i].Pos_X				--T÷a ðµ X cüa NPC Boss
		local Pos_Y=x910112_g_NPC_Boss_Pos[i].Pos_Y				--T÷a ðµ Y cüa NPC Boss
		local Boss_Index=LuaFnCreateMonster(sceneId,Boss_ID,Pos_X,Pos_Y,3,0,x910112_g_Script_NPC_Talk)	--Kh·i tÕo NPC Boss
		SetCharacterName(sceneId,Boss_Index,Boss_Name)						--Set tên cho NPC Boss
		SetCharacterTitle(sceneId,Boss_Index,Boss_Title)					--Set danh hi®u cho NPC Boss
	end
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Next_Step,1)				--Ðã xong công ðoÕn kh·i tÕo
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Fuben_Level,nDec)			--C§p nh§t c¤p ðµ 
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_1,nBossList[1])		--Boss ðßþc ch÷n s¯ 1
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_2,nBossList[2])		--Boss ðßþc ch÷n s¯ 2
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_3,nBossList[3])		--Boss ðßþc ch÷n s¯ 3
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_4,nBossList[4])		--Boss ðßþc ch÷n s¯ 4
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_5,nBossList[5])		--Boss ðßþc ch÷n s¯ 5
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Next_Time_Call,x910112_g_First_Battle_Time)--C§p nh§t th¶i gian g÷i Boss tiªp theo
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Info_Step,0)				--C§p nh§t chßa có thông báo nào
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Mission_Completed,0)		--C§p nh§t chßa hoàn thành nhi®m vø
	--******************--
	
end
--**********************************--
--*         Creat My Boss          *--
--**********************************--
function x910112_CreatMyBoss(sceneId)
	
	--******************--
	local nBossList={}
	nBossList[1]=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Boss_1)		--Boss s¯ 1
	nBossList[2]=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Boss_2)		--Boss s¯ 2
	nBossList[3]=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Boss_3)		--Boss s¯ 3
	nBossList[4]=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Boss_4)		--Boss s¯ 4
	nBossList[5]=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Boss_5)		--Boss s¯ 5
	nBossList[6]=0															--Just a trap...
	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Fuben_Level)	--L¤y c¤p ðµ quái trong phø bän
	local Ran=6
	local nCheck=0
	while nBossList[Ran]==0 do
		Ran=random(x910112_g_Number_Per_Choose)								--Ch÷n ngçu nhiên mµt Boss trong danh sách 5 Boss ðßþc ch÷n
		nCheck=nCheck+1
		if nCheck>100 then													--A trap destroy "Dead Lock"
			for i=1,5 do
				if nBossList[i]~=0 then
					Ran=i
					break
				end
			end
			break
		end
	end
	--******************--
	local Boss_Name=x910112_g_Boss_List[nBossList[Ran]].Name				--Tên Boss
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==Boss_Name) then	
			LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,x910112_g_Impact,0)
			SetCharacterDieTime(sceneId,MonsterId,100)						--Xóa ði NPC Boss
			break
		end
	end
	--******************--
	local Boss_ID=x910112_g_Boss_List[nBossList[Ran]].Index+nDec			--ID Boss
	local Boss_Title=x910112_g_Boss_List[nBossList[Ran]].Title				--Danh hi®u Boss
	local AI_Script=x910112_g_Boss_List[nBossList[Ran]].AIScript			--AI script cüa Boss
	local Pos_X=x910112_g_Fight_Pos_X										--T÷a ðµ X ra Boss
	local Pos_Y=x910112_g_Fight_Pos_Y										--T÷a ðµ Y ra Boss
	local Boss_Script=x910112_g_Boss_List[nBossList[Ran]].ScriptID			--Script cüa Boss
	local Boss_Index=LuaFnCreateMonster(sceneId,Boss_ID,Pos_X,Pos_Y,27,AI_Script,Boss_Script)--Kh·i tÕo Boss
	SetCharacterName(sceneId,Boss_Index,Boss_Name)							--Set tên cho Boss
	SetCharacterTitle(sceneId,Boss_Index,Boss_Title)						--Set danh hi®u cho Boss
	LuaFnSendSpecificImpactToUnit(sceneId,Boss_Index,Boss_Index,Boss_Index,x910112_g_Impact,0)
	--******************--
	if Ran==1 then
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_1,0)				--Boss s¯ 1 ðã ðßþc g÷i
	elseif Ran==2 then
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_2,0)				--Boss s¯ 2 ðã ðßþc g÷i
	elseif Ran==3 then
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_3,0)				--Boss s¯ 3 ðã ðßþc g÷i
	elseif Ran==4 then
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_4,0)				--Boss s¯ 4 ðã ðßþc g÷i
	elseif Ran==5 then
		LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_5,0)				--Boss s¯ 5 ðã ðßþc g÷i
	end
	--******************--
	local nSet																--L¤y biªn giá tr¸ cüa Boss tß½ng Ñng
	if Ran==1 then
		nSet=x910112_g_Boss_1
	elseif Ran==2 then
		nSet=x910112_g_Boss_2
	elseif Ran==3 then
		nSet=x910112_g_Boss_3
	elseif Ran==4 then
		nSet=x910112_g_Boss_4
	elseif Ran==5 then
		nSet=x910112_g_Boss_5
	end
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,nSet,0)								--Boss này ðã ra chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Next_Time_Call,x910112_g_Creat_Boss_Timer)--C§p nh§t th¶i gian g÷i Boss tiªp theo
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Boss_Step,0)				--C§p nh§t th¶i gian thông báo ra Boss tiªp theo
	--******************--
	local nBoss=LuaFnGetCopySceneData_Param(sceneId,x910112_g_Is_On_Combat)	--Ki¬m tra xem có bao nhiêu Boss ðang chiªn ð¤u
	LuaFnSetCopySceneData_Param(sceneId,x910112_g_Is_On_Combat,nBoss+1)		--Tång s¯ Boss ðang chiªn ð¤u lên
	--******************--
	
end
--**********************************--
--*          Tip All Human         *--
--**********************************--
function x910112_TipAllHuman(sceneId,nTip)

	--******************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1  do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,nTip)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,PlayerId)
		end
	end
	--******************--

end