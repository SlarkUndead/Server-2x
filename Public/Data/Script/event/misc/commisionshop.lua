-- 寄售商店
-- 脚本号

x800116_g_ScriptId = 800116  -- 代码中也使用C醝 n鄖 编号了.严禁修改

-- 寄售商店UI 19850424

-- 寄售商店信息
x800116_g_CShopInfo = {
	-- 0 号商店,这样to� 鸬 话最好不要出现两c醝 Server m祎 c醝 ShopID to� 鸬 现象,否詍祎 挂腃醝 n鄖 数据结构
	[0] = {
		name = "#G L誧 D呓ng (160,181) #R衖nh 衖nh",
		type = {
			-- 元宝
			[0] = {
				name = "酗nh v鄋g",
				sellFmtValueStr = "#G %d 餴琺 nguy阯 b鋙#l",
				sellFmtPriceStr = "#G#{_MONEY%d}#l",
				sellInfo = "#G Ta mu痭 mua nguy阯 b鋙#l",
				buyFmtValueStr = "%d 餴琺 nguy阯 b鋙",
				buyFmtPriceStr = "#{_MONEY%d}",
			},
			-- 金钱
			[1] = {
				name = "邪ng v鄋g",
				sellFmtValueStr = "#G#{_MONEY%d}#l",
				sellFmtPriceStr = "#G %d 餴琺 nguy阯 b鋙#l",
				sellInfo = "#G Ta mu痭 mua ti玭#l",
				buyFmtValueStr = "#{_MONEY%d}",
				buyFmtPriceStr = "%d 餴琺 nguy阯 b鋙",
			}
		}
	},
	-- 1 号商店,这样to� 鸬 话最好不要出现两c醝 Server m祎 c醝 ShopID to� 鸬 现象,否詍祎 挂腃醝 n鄖 数据结构
	[1] = {
		name = "#G L誧 D呓ng (158, 181) #R恤ng 恤ng",
		type = {
			-- 元宝
			[0] = {
				name = "酗nh v鄋g",
				sellFmtValueStr = "#G %d 餴琺 nguy阯 b鋙#l",
				sellFmtPriceStr = "#G#{_MONEY%d}#l",
				sellInfo = "#G Ta mu痭 mua nguy阯 b鋙#l",
				buyFmtValueStr = "%d 餴琺 nguy阯 b鋙",
				buyFmtPriceStr = "#{_MONEY%d}",
			},
			-- 金钱
			[1] = {
				name = "邪ng v鄋g",
				sellFmtValueStr = "#G#{_MONEY%d}#l",
				sellFmtPriceStr = "#G %d 餴琺 nguy阯 b鋙#l",
				sellInfo = "#G Ta mu痭 mua ti玭#l",
				buyFmtValueStr = "#{_MONEY%d}",
				buyFmtPriceStr = "%d 餴琺 nguy阯 b鋙",
			}
		}
	}
}

--**********************************
-- 列举事件
--**********************************
function x800116_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x800116_g_ScriptId, "Ta mu痭 mua ti玭", 5, 1 )       --Del by Houzf in 20080811 because of TT 37697
	AddNumText( sceneId, x800116_g_ScriptId, "Ta mu痭 mua nguy阯 b鋙", 5, 2 )
	if IsShutout( sceneId, selfId, ONOFF_T_CSHOP ) == 0 then
		if GetConfigInfo( sceneId, "IsCloseYuanBaoSell" ) ~= 1 then
			AddNumText( sceneId, x800116_g_ScriptId, "Ta mu痭 g豬 b醤 nguy阯 b鋙", 5, 3 )
		end
	if GetConfigInfo( sceneId, "IsCloseGoldCoinSell" ) ~= 1 then       --Del byHouzf in 20080818
		AddNumText( sceneId, x800116_g_ScriptId, "Ta mu痭 g豬 b醤 ti玭", 5, 4 )
	end
	end
	AddNumText( sceneId, x800116_g_ScriptId, "Thu h癷 ti玭 v� nguy阯 b鋙", 5, 6 )
	AddNumText( sceneId, x800116_g_ScriptId, "Gi緄 thi畊 thu h癷", 11, 7 )
	AddNumText( sceneId, x800116_g_ScriptId, "Gi緄 thi畊 g豬 b醤 h鄋g", 11, 5 )
end

--**********************************
-- 事件列表选中m祎 项
--**********************************
function x800116_OnDefaultEvent( sceneId, selfId, targetId, eventId )

	local opt = GetNumText()

	if opt == 1 then
		x800116_OpenShop( sceneId, selfId, targetId, 3 )
		return
	elseif opt == 2 then
		x800116_OpenShop( sceneId, selfId, targetId, 0 )
		return
	elseif opt == 3 or opt ==4 then
		local _yes = LuaFnOpenPWBox(sceneId,selfId)
		if(_yes==1)then 
			return
		end
	elseif opt == 5 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_095}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif opt == 6 then
		LuaFnAskNpcScriptMail(sceneId, selfId, MAIL_COMMISIONSHOP)
		return
	elseif opt == 7 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_099}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	UserName	= GetName( sceneId, selfId )
	local	i, _			= strfind( UserName, "*" )
	if i == nil then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, opt )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19850424 )		
	else
		BeginEvent( sceneId )
			AddText( sceneId, "T阯 c黙 c醕 h� c� \"*\", y陁 c c醕 h� thay 鸨i t阯 tr呔c m緄 c� th� s� d鴑g ch裞 n錸g g豬 b醤 h鄋g b靚h th叨ng." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	return
end

--**********************************
-- 打开某c醝商店
--**********************************
function x800116_OpenShop( sceneId, selfId, targetId, Grade )
	GetCommisionShop( sceneId, selfId, targetId, Grade )
end

--**********************************
-- 购入
--**********************************
function x800116_Buy( sceneId, selfId, targetId, Grade, SerialNumber )
	local ret, shopId, type, value, price, seller = CommisionShopBuy( sceneId, selfId, targetId, Grade, SerialNumber )

	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] and x800116_g_CShopInfo[shopId].name then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			local nameInfo = x800116_g_CShopInfo[shopId].name
			local strGUID = LuaFnGetGUID( sceneId, selfId )
			local len = strlen(strGUID)
			strGUID = strsub( strGUID, len-3 )
			local str = format( "#IHi畁 [ID:****%s] � #R%s#cffffcc 疸 hao t痭#Y%s#cffffcc mua#Y%s#cffffcc.",
				strGUID,
				nameInfo,
				typeInfo.buyFmtPriceStr,
				typeInfo.buyFmtValueStr
				 )
			str = format( str, price, value )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
			
			local sellstr = format("%s m� c醕 h� g豬 b醤 疸 #Yb醤 th鄋h c鬾g#W, xin h銀 t靘 NPC g豬 b醤 h鄋g ch鱪 \"Thu l読 ti玭 v� nguy阯 b鋙\" l� c� th� l 疬㧟 ti玭 v� nguy阯 b鋙 c黙 c醕 h�. #r#GCh� �: 鞋 b鋙 痄m t鄆 s鋘 c黙 c醕 h�, h銀 c� gg nh l頽h nguy阯 b鋙 v� ti玭 trong v騨g 1 tu, n猽 c醕 h� trong 1 tu kh鬾g nh l頽h, nguy阯 b鋙 v� ti玭 c� th� s� m.",
			  typeInfo.buyFmtValueStr)
			sellstr = format( sellstr, value)
			LuaFnSendSystemMail(sceneId,seller,sellstr)
		end
	end
end

--**********************************
-- 寄售
--**********************************
function x800116_Sell( sceneId, selfId, targetId, Grade, Price )
	local ret, shopId, type, value, price = CommisionShopSell( sceneId, selfId, targetId, Grade, Price )

	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] and x800116_g_CShopInfo[shopId].name then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			local nameInfo = x800116_g_CShopInfo[shopId].name
			local strGUID = LuaFnGetGUID( sceneId, selfId )
			local len = strlen(strGUID)
			strGUID = strsub( strGUID, len-3 )
			local str = format( "#cffffccHi畁 [ID:****%s] � #R%s#cffffcc 餫ng g豬 b醤 #Y%s, #cffffcc gi� b醤#Y%s, #cffffcc n猽 c� � mu痭 mua h銀 mau ch髇g v� #G L誧 D呓ng#cffffccnh�.",
				strGUID,
				nameInfo,
				typeInfo.buyFmtValueStr,
				typeInfo.buyFmtPriceStr,
				typeInfo.sellInfo,
				typeInfo.name )
			str = format( str, value, price )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end
end

function x800116_TimeOutCommission(sceneId,shopId,itemserial)
	local ret,type,value,price,seller = GetCommisionShopItem(sceneId,shopId,itemserial)
	
	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			
			local sellstr = format("%s c黙 c醕 h� g豬 b醤 #Ykh鬾g b醤 疬㧟#W, xin h銀 皙n NPC g豬 th� ch鱪 \"Thu l読 nguy阯 b鋙 v� ti玭\" c� th� l 疬㧟 nguy阯 b鋙 v� ti玭. #r#GCh� �: 鞋 b鋙 痄m t鄆 s鋘 c黙 c醕 h�, h銀 c� gg nh l頽h nguy阯 b鋙 v� ti玭 trong v騨g 1 tu, n猽 c醕 h� trong 1 tu kh鬾g nh l頽h, nguy阯 b鋙 v� ti玭 c� th� s� m.",
			  typeInfo.buyFmtValueStr)
			sellstr = format( sellstr, value)
			LuaFnSendSystemMail(sceneId,seller,sellstr)
		end
	end
end
