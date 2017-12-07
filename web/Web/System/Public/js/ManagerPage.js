    var M = {
        init: function() {
            var _this = this;
            _this.adjust()
            _this.event()
        },
        event: function() {
            var _this = this;
            //内页左侧导航点击
            $(".left_nav>a").click(function() { $(this).next('.left_sub').slideToggle(250).end().siblings("a").next('.left_sub:visible').slideToggle(250) });
            //窗口改变后动态计算
            $(window).resize(function() { _this.adjust(); });
            //点击导航
            var items = $(".left_sub>.left_sub1>a")
            items.click(function() {
                items.removeClass("a_hover")
                $(this).addClass("a_hover")
            })
            //设置版本
            var ver = _this.GetUrlParam("ver")
            if (ver == "") { 
            ver=0
        }
        $("#vers>a:eq(" + ver + ")").addClass("a_active").siblings("a").removeClass("a_active")
       
        },
        adjust: function() {//设置窗体大小
            var conHei = $(window).outerHeight(true) - $(".topw").outerHeight(true) - $(".foot").outerHeight(true)
            $(".info").height(conHei);
            $(".info_right").height(conHei);
            $(".info_left").height(conHei);
            $(".left_sub").height(conHei - $(".left_nav>a").outerHeight(true) * $(".left_nav>a").length);
        },
        GetUrlParam: function(Param) { //获取get参数
            var strUrl = document.location.search.toString();
            var lisUrl = strUrl.split('?');
            if (lisUrl.length > 1) {
                var lisParam = lisUrl[1].split('&');
                for (var i = 0; i < lisParam.length; i++) {
                    var strParm = lisParam[i].split('=');
                    if (strParm[0] == Param) {
                        return strParm[1];
                    }
                }
                return "";
            } else {
                return ""
            }
        },
		showmap:function(a){
			$("#maskbg").fadeIn(200);
			$("<div>",{"class":"mapview","id":"mapview"}).html('<div class="mapinfo" id="mapinfo"></div><a class="mapclose" id="mapclose">×</a><div class="mapcenter"></div><input type="button" class="btn1" id="getcenterpoint" value="选择中心" /> ').appendTo("body").fadeIn(200);
			
			if(a["type"]==0){
			 	var map = new AMap.Map('mapinfo',{
        			zoom: a["z"],
       		 		center: [a["y"],a["x"]]
   				 });
			}else if(a["type"]==1){
				var map = new BMap.Map("mapinfo");          // 创建地图实例  
				var point = new BMap.Point(a["y"], a["x"]);  // 创建点坐标  
				map.centerAndZoom(point, a["z"]);  
				map.enableScrollWheelZoom();  	
			}else if(a["type"]==2){
				var myLatlng = new qq.maps.LatLng(a["x"], a["y"]);
 				var myOptions = {
    				zoom: a["z"],
   					center: myLatlng,
   					mapTypeId: qq.maps.MapTypeId.ROADMAP
  				}
  				var map = new qq.maps.Map(document.getElementById("mapinfo"), myOptions);
			}
			 
			 
			$("#mapclose").click(function(){
				$("#maskbg").hide();
				$("#mapview").remove()
			})
			$("#getcenterpoint").click(function(){
				if(a["type"]==0){
					var g=map.getCenter();
					var c={"J":g["lat"],"D":g["lng"]};
					frame_right.setpoint(c,0)
				}else if(a["type"]==1){
					var g=map.getCenter();
					var c={"J":g["lat"],"D":g["lng"]};
					frame_right.setpoint(c,1)
				}else if(a["type"]==2){
					var g=map.getCenter();
					var c={"J":g["lat"],"D":g["lng"]};
					frame_right.setpoint(c,2)
				}
				$("#maskbg").hide();
				$("#mapview").remove()	
			})
		},
		build:function(a,b){
			$("#maskbg").fadeIn(200);
			var ling="";
			for(var t=0;t<20-a.toString().length;t++){
				ling+="0";
			}
			
			var url="http://temp.vmuui.com/index.php?s=/Home/Down/index/"+ling+a
			$("<div>",{"class":"popewm","id":"popewm"}).html('<div class="popewm1" id="popewm1"><img src="http://www.xcsoft.cn/api/qrcode?text='+url+'&size=8&level=L&padding=2" /></div><a class="popclose" id="popclose">×</a>').appendTo("body").fadeIn(200);
			$("#popclose").click(function(){
				$("#maskbg").hide();
				$("#popewm").remove()
			})		
		},
		setpark:function(x,y,r,d){
			$("#maskbg").fadeIn(200);
			$("<div>",{"class":"landview","id":"landview"}).html('<div class="tab_tit topbar"><a class="popclost" id="popclost">×</a><a class="popsubmit" id="landqr">确定</a><table style=" float:left; width:auto"><tr><td style="width:80px; text-align:right">旋转角度：</td><td style="width:120px; text-align:left"><input type="text" class="input1" id="rote" style="margin-right:5px; width:100px" value="'+r+'" /></td><td><input type="button" class="btn" id="btnset" value="设置" /></td></tr></table></div><iframe id="frame_land" frameborder="0" name="frame_land" 	scrolling="auto" style="height:470px;width:700px"  src="/System.php?s=/System/PileListAll/Park&sid='+d+'&x='+x+'&y='+y+'&r='+r+'"></iframe>').appendTo("body").fadeIn(200);
			$("#popclost").click(function(){
				$("#maskbg").fadeOut(200);
				$("#landview").remove()
			})
			$("#btnset").click(function(){
				if(isNaN($("#rote").val())){
					alert("旋转角度必须为数字！");	
				}else{
					frame_land.window.rot($("#rote").val())
					
				}	
			})
			$("#landqr").click(function(){
				frame_land.window.getdata()
				$("#maskbg").fadeOut(200);
				$("#landview").remove()
			})
		},
		Landdata:function(x,y,r){
			frame_right.window.setland(x,y,r);
		},
		setMoney:function(a){
			$("#maskbg").fadeIn(200);
			$("<div>",{"class":"landview cmoneyview","id":"landview"}).html('<div class="tab_tit topbar"><a class="popclost" id="popclost">×</a><div>修改金额</div></div><form id="cmoney" method="post" style="padding-top:20px" enctype="multipart/form-data" action="/System.php?s=/System/UserAll/EditMoney"><table class="popctab"><tr><td align="right" style="width:28%">操作类型：</td><td align="left"><input type="radio" class="ctype" name="ctype" id="ctype1" value="0" checked="checked" />增加<input type="radio" name="ctype" class="ctype" id="ctype2" value="1" style="margin-left:15px" />减少</td></tr><tr><td align="right">修改金额：</td><td align="left"><input type="text" id="moneyid" name="moneyid" class="input1" style="margin-left:5px"/></td></tr><tr><td align="right">备注说明：</td><td align="left"><input type="hidden" id="uid" name="uid" value='+a+' /><textarea class="input1" id="Newdesc" name="Newdesc" style="width:250px; height:68px;margin-left:5px"></textarea></td></tr><tr><td></td><td align="left"><input type="button" value="修改"  class="btn" id="btnchage" style="width:100px" /></td></tr></table></form>').appendTo("body").fadeIn(200);
			$("#popclost").click(function(){
				$("#maskbg").fadeOut(200);
				$("#landview").remove()
			})
			$("#btnchage").click(function(){
				if(isNaN($("#moneyid").val())||$("#moneyid").val()==""){
					alert("修改金额只能是数字！");
					$("#moneyid").focus();
					return;	
				}
				if($("#Newdesc").val()==""){
					var ctypeval=$('.ctype:checked').val();
					var num=$("#moneyid").val()
					if(ctypeval==0){
						$("#Newdesc").val('管理员后台修改数据增加'+num+'元')
					}else{
						$("#Newdesc").val('管理员后台修改数据减少'+num+'元')	
					}	
				}
				var postdata=$("#cmoney").serialize();
				var url=$("#cmoney").attr("action");
				$.ajax({
					url: url,
					type: 'POST',
					dataType: 'json',
					data:postdata
				}).done(function(d) {
					if(d["status"]["err"]==0){
						var ctypeval=$('.ctype:checked').val();
						var num=0;
						if(ctypeval==0){
							num=$("#moneyid").val();
						}else{
							num="-"+$("#moneyid").val();
						}					
						frame_right.window.setMoney(num);
						$("#maskbg").fadeOut(200);
						$("#landview").remove()
					}else if(d["status"]["err"]==1){
						alert(d["status"]["msg"]);
						window.parent.location.href="{:U('/System/Index')}"
					}else{
						alert(d["status"]["msg"])	
					}
				}).fail(function() {
					alert("网络连接错误，请稍后再试！")
				})
			})
			
			
		}		
    }
    $(function() {
        M.init();
    })