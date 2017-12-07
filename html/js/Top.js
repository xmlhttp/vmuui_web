//滑块开始
function silder(option){
	var st=null,
		setting={"infobj":"#ids","imgobj":"#id1","icoobj":"#id2","settime":3000}
	$.extend(true,setting, option || {});
	function moveObj(){
		var index=$(setting["icoobj"]+">a.active").index()
		if(index==$(setting["icoobj"]+">a").length-1){
			index=0
		}else{
			index++	
		}
		$(setting["icoobj"]+">a:eq("+index+")").addClass("active").siblings("a").removeClass("active")
		$(setting["imgobj"]+">li:eq("+index+")").fadeIn().siblings("li").fadeOut();
		st=setTimeout(function(){moveObj()},setting["settime"]);
	}
	$(setting["icoobj"]+">a").mouseenter(function(){
		var index=$(this).index();
		if($(setting["icoobj"]+">a.active").index()!=index){
			$(this).addClass("active").siblings("a").removeClass("active")
			$(setting["imgobj"]+">li:eq("+index+")").fadeIn().siblings("li").fadeOut();
		}
	})

	$(setting["infobj"]).hover(function(){
		 clearTimeout(st)
		 st=null
	},function(){
		st=setTimeout(function(){moveObj()},setting["settime"])
	})
	st=setTimeout(function(){moveObj()},setting["settime"])
}
//滑块结束
//弹框开始


RICPop = function(options) {
    this.setting = {
        width: 150,
        height: 50,
        txt: '<div class="tload">加载中...</div>'
    }
    $.extend(true, this.setting, options || {});
    this.init()

}
RICPop.prototype.init = function() {
	//删除已有弹框
	var _this=this;
	if($("#twinc").length>0){$("#twinc").remove()}
	//显示默认加载中的
	$("<table>",{"class":"twin","id":"twinc"}).html('<tr><td class="tff"></td><td class="tfs"></td><td class="tft"></td></tr><tr><td class="tsf"></td><td class="tss"><a class="twinclose"></a><div class="twintxt"><div class="tload">加载中...</div></div></td><td class="tst"></td></tr><tr><td class="ttf"></td><td class="tts"></td><td class="ttt"></td></tr>').appendTo("body").find(".twinclose").click(function(){_this.close()})
	setTimeout(function(){_this.settx()},500)
	
}
RICPop.prototype.settx = function() {//设置内容和边距
    var mt = (this.setting["height"] / 2) + 8
    if (isIE6) {
        mt = 0
    }
    $("#twinc").css({ "marginLeft": "-" + ((this.setting["width"] / 2) + 8) + "px", "marginTop": "-" + mt + "px" }).find(".twintxt").css({ "width": this.setting["width"] + "px", "height": this.setting["height"] + "px" }).html(this.setting["txt"]);
 
}
RICPop.prototype.close=function(){$("#twinc").remove()}



$(function(){
	var feedstr='<div class="floor_tit" style="text-align:center;margin-top:0px; padding-top:5px; padding-bottom:5px"><span>Feedback</span>留言反馈</div><div class="ffeek"><input type="text" class="ftel" placeholder="联系方式"><textarea class="finfo" placeholder="留言内容"></textarea><input type="button" value="提交留言" class="fbtn" /></div>'
	$("#top_feek,#Rfeed").click(function(){new RICPop({width:400,height:270,txt:feedstr})})
	$("#totop").click(function() { $('html,body').animate({ scrollTop: 0 }, 200) })
})