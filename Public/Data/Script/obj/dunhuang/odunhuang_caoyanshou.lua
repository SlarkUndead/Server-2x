--姓i L齆PC
--曹延寿
--普通

--**********************************
--事件交互入口
--**********************************
function x008005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #GNg鱟 M鬾 Quan#W n鄖 t� tr呔c t緄 nay l� v鵱g 黏t tranh gi鄋h c黙 binh gia, anh trai ta #Gl鄊 th醝 th�#W 恤n Ho鄋g c鹡g kh鬾g d� d鄋g ch鷗 n鄌!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

