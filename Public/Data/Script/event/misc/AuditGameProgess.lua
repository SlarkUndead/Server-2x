-- ÏÂÏßÌáÊ¾Í³¼Æ»î¶¯¹¦ÄÜ
-- dengxx

-- ½Å±¾ºÅ
x800120_g_ScriptId	= 800120

x800120_g_actList = {
			[1]= {min=10,max =160,},--name="Ë«±¶Kinh nghi®m(Ê£Óà)",prog="Ğ¡Ê±",},
			[2]= {min=10,max =19,},--name="Nhi®m vø sß môn(¸ß½±Àø)",prog="/10»·",},
			[3]= {min=20,max =39,},--name="Nhi®m vø sß môn(¸ß½±Àø)",prog="/15»·",},
			[4]= {min=40,max =74,},--name="Nhi®m vø sß môn(¸ß½±Àø)",prog="/20»·",},
			[5]= {min=10,max =74,},--name="¿Æ¾Ù´ğÌâ",prog="/1´Î",},
			[6]= {min=10,max =160,},--name="ÕäççÆå¾Ö",prog="/1´Î",},
			[7]= {min=75,max =160,},--name="Lâu LanÑ°±¦",prog="/1´Î",},
			[8]= {min=30,max =160,},--name="mµt cái¶¼²»ÄÜÅÜ",prog="/5´Î",},
			[9]= {min=75,max =160,},--name="»Æ½ğÖ®Á´",prog="/5´Î",},
			[10]={min=75,max =160,},--name="³õÕ½çÎç¿·å(½ÏÄÑ)",prog="´Î",},
			[11]={min=20,max =160,},--name="ĞÒÔË¿ì»îÈı",prog="/1´Î",},	
			[12]={min=30,max =160,},--name="Hàn Ng÷c C¯cĞŞĞĞ",prog="/1´Î",},
		}

function x800120_AuditGameProgess(sceneId,selfId)
	
	
	local level = GetLevel(sceneId,selfId)
	local tempData={
		[1]={nCount=0,bShow=0},
		[2]={nCount=0,bShow=0},
		[3]={nCount=0,bShow=0},
		[4]={nCount=0,bShow=0},
		[5]={nCount=0,bShow=0},
		[6]={nCount=0,bShow=0},
		[7]={nCount=0,bShow=0},
		[8]={nCount=0,bShow=0},
		[9]={nCount=0,bShow=0},
		[10]={nCount=0,bShow=0},
		[11]={nCount=0,bShow=0},
		[12]={nCount=0,bShow=0},
	}	
	
	for i,act in x800120_g_actList do	

		if level >= act.min and level <= act.max then
			tempData[i].bShow = 1
			--beginif
			if i == 1 then  --Ë«±¶Ê±¼ä
				local nDECount = DEGetCount(sceneId, selfId)
			  tempData[i].nCount = nDECount
			elseif i == 2 or i == 3 or i == 4 then  --Ê¦ÃÅ
				local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
				local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
				local iDayTime = floor(iTime/100)	--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
				local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
				local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
				local iDayHuan = 0	
				if CurDaytime == iDayTime then 	--ÉÏ´ÎHoàn t¤t nhi®m vøĞúngÍ¬mµt Ìì
					iDayHuan = iDayCount
			  end
			  tempData[i].nCount = iDayHuan
			elseif i == 5 then --¿Æ¾Ù
				if 1 == GetMissionData(sceneId, selfId, MD_EXAM_FEE_FLAG) then
	      	local StartTime = GetMissionData(sceneId,selfId,MD_EXAM_STARTTIME) --¿Æ¾ÙÊ±¼ä
	      	local CurrentTime = LuaFnGetCurrentTime()                          --µ±Ç°Ê±¼ä
	        local ntime = CurrentTime - StartTime
	        local CurTime = GetQuarterTime()								--µ±Ç°Ê±¼ä
		      local CurQuarterTime = mod( CurTime, 100 )	--µ±Ç°Ê±¼ä(¿Ì)
	        --ÅĞ¶Ï½ñÌìĞúng·ñ²Î¼ÓÁË¿Æ¾Ù:µ±Ç°Ê±¼äÎª17:30Ö®ºó,ÇÒÃ»ÓĞ¹ı0 ği¬m 23400=6.5*60*60
	        if CurQuarterTime >= 70 and  ntime <= 23400 then
	        	tempData[i].nCount = 1
	        end
	      end
      elseif i == 6 then --ÕäççÆå¾Ö
      	if GetMissionData(sceneId, selfId, MD_LAST_QIJU_DAY) == GetDayTime() then
      		tempData[i].nCount = 1
      	end
      elseif i == 7 then --Lâu LanÑ°±¦
      	if GetMissionData(sceneId, selfId, MD_SEEK_TREASURE) == GetTime2Day() then
      		tempData[i].nCount = 1
      	end
      elseif i == 8 then --mµt cái¶¼²»ÄÜÅÜ
	      local DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES )
		    local CurDate = mod( DayTimes, 100000 )
		    local takenTimes = floor( DayTimes/100000 )
		    if GetDayTime() == CurDate then
		    	 tempData[i].nCount = takenTimes
		    end
		  elseif i == 9 then --»Æ½ğÖ®Á´
		  	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_1_DAYTIME )
		  	local CurDate = mod( DayTimes, 100000 )
		    local takenTimes = floor( DayTimes/100000 )
		    if GetDayTime() == CurDate then
		    	 tempData[i].nCount = takenTimes
		    end
		  elseif i == 10 then --³õÕ½çÎç¿·å = çÎç¿·å + ½ñÌìÖØÖÃKhiêu chiªn´ÎÊı
		  	local lastTime = GetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
				local lastDayTime = floor( lastTime / 100 )
				local lastDayCount = mod( lastTime, 100 )
				if  GetDayTime() == lastDayTime then
					tempData[i].nCount = lastDayCount
				end
				
				lastTime = GetMissionData( sceneId, selfId, MD_RESET_PMFSMALL_COUNT_LASTTIME )
	      lastDayTime = floor( lastTime / 100 )
	      lastDayCount = mod( lastTime, 100 )
	      if  GetDayTime() == lastDayTime then
	      	tempData[i].nCount = tempData[i].nCount + lastDayCount
	      end
			elseif i == 11 then --ĞÒÔË¿ì»îÈı
				if GetDayTime() == GetMissionData(sceneId, selfId, MD_XINGYUN_TIME_INFO) then
					tempData[i].nCount = 1
				end
			elseif i == 12 then --Hàn Ng÷c C¯c ´óÂ½ÎŞ·òÆŞĞĞ¹¦Yªu Quyªt
				if GetDayTime() == GetMissionData(sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY) then
				  tempData[i].nCount = 1
				end
			end
			--endif
		end
	end--endfor

	BeginUICommand(sceneId)
	for i,data in tempData do
	  if data.bShow == 1 then
	  	 UICommand_AddInt(sceneId,data.nCount)
	  end
	end
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 800120)
  
end


