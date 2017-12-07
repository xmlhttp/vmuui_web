<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Present by Richcomm.com.cn 管理中心 - 添加管理员</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
    <link href="/Web/System/Public/css/main.css" type="text/css" rel="stylesheet"> 
    <link rel="stylesheet" type="text/css" href="/Web/System/Public/Tool/codebase/dhtmlxtree.css">
    <script  src="/Public/jquery.js"></script>
  	<script  src="/Web/System/Public/Tool/codebase/dhtmlxtree.js"></script>
</head>
<body>
<!--顶部导航开始-->
<div class="topnav">
<a  href="/System.php?s=/System/ManagerPage/BaseInfo.html" class="home">首页</a>><a href="/System.php?s=/System/AdminAll">运营信息</a>><a href="javascript:void(0)">添加管理员</a>
</div>
<!--顶部导航结束-->
<div class="cont_info">
<div class="tab_txt">
<div class="tab_tit">添加管理员</div>
	<form method="post" id="form1" action="<?php echo U('/System/AdminAll/AddSave');?>">
    <table width="100%" border="0" cellpadding="2" cellspacing="0" class="info_tab">
    <tr>
      <td width="30%" align="right">登陆名：</td>
      <td align="left"><input type="text" id="username" name="username" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px"  /><span style=" margin-left:5px; color:#F00; display:none" id="username_tip">×登录名不能为空</span>
        </td>
    </tr>
    <tr>
      <td align="right">姓&nbsp;&nbsp;名：</td>
      <td  align="left"><input type="text" id="name" name="name" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px"  /><span style=" margin-left:5px; color:#F00; display:none" id="name_tip">×姓名不能为空</span>
      </td>
    </tr>
    <tr>
      <td align="right">密&nbsp;&nbsp;码：</td>
      <td  align="left"><input type="password" id="pwd" name="pwd" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px"  /><span style=" margin-left:5px; color:#F00; display:none" id="pwd_tip">×密码不能为空</span>
      </td>
    </tr>
    <tr>
      <td align="right">验证密码：</td>
      <td  align="left"><input type="password" id="repwd" name="repwd" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px"  /><span style=" margin-left:5px; color:#F00; display:none" id="repwd_tip">×两次密码不一致</span>
        </td>
    </tr>
    <tr>
      <td align="right">管理类别：</td>
      <td  align="left">
      	<input type="radio" id="adminclass" name="adminclass" value="0" checked="checked" />系统编辑
      	<input type="radio" id="adminclass1" name="adminclass" value="1" style="margin-left:20px;" />系统总管
      </td>
    </tr>
    <tr>
      <td align="right">生&nbsp;&nbsp;效：</td>
      <td  align="left">
		<input type="radio" id="working" name="working" value="1" checked="checked" />是
      	<input type="radio" id="working1" name="working" value="0" style="margin-left:20px;" />否
      </td>
    </tr>

      <tr>
          <td align="right">
              权限设置：</td>
          <td  align="left"><span id=actinfo ><font color =green><img src="/Web/System/Public/images/msg/loading.gif"  style="vertical-align:middle; margin-left:2px; margin-right:2px;" /> 权限模块载入中…</font></span><div id="treeboxbox_tree" style="border:1px solid Silver; display:none ; overflow:auto; margin-top:0px; margin-bottom:0px; width:60%;" class="seo_desc"></div>
              <input type="hidden"  id="hiden" name="hiden" />
          </td>
      </tr>
    <tr>
      <td align="right" height="50"></td>
      <td  align="left"><input type="button" id="addsave" class="btn" value="添加管理员" style=" width:144px; height:30px" /> 
      </td>
    </tr>
  </table>
  </form>
  </div>
<div id="footer" class="info_foot">
	<script>document.write(cmsname)</script>
</div>
</div>

<script>
	function toncheck(id,state){
		$("#hiden").val(tree.getAllChecked());
	};
			
	tree=new dhtmlXTreeObject("treeboxbox_tree","100%","100%",0);
	tree.setImagePath("/Web/System/Public/Tool/codebase/imgs/dhxtree_material/");
	tree.enableCheckBoxes(1);
	tree.enableThreeStateCheckboxes(true);
	tree.setOnCheckHandler(toncheck);
	tree.loadXML("/System.php?s=/System/AdminAll/adminMenu0");
	show()
    
    function show(){
    	$("#actinfo").hide()
        $('#treeboxbox_tree').show();
    }
	
	$("#addsave").click(function(){
		$("#username_tip,#name_tip,#pwd_tip,#repwd_tip").hide();
		if($("#username").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
			$("#username_tip").show();
			alert("登录名不能为空");
			return false;	
		}
		if($("#name").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
			$("#name_tip").show();
			alert("姓名不能为空");
			return false;	
		}
		
		if($("#pwd").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
			$("#pwd_tip").show();
			alert("密码不能为空");
			return false;	
		}
		
		if($("#pwd").val()!=$("#repwd").val()){
			$("#repwd_tip").show();
			alert("两次密码不一致");
			return false;	
		}
		var postdata=$("#form1").serialize();
		var url=$("#form1").attr("action");
		$.ajax({
			url: url,
			type: 'POST',
			dataType: 'json',
			data:postdata
		}).done(function(d) {
			if(d["status"]["err"]==0){
				window.location.href="<?php echo U('/System/AdminAll');?>"
			}else if(d["status"]["err"]==1){
				alert(d["status"]["msg"]);
				window.parent.location.href="<?php echo U('/System/Index');?>"
			}else{
				alert(d["status"]["msg"])	
			}
		}).fail(function() {
			alert("网络连接错误，请稍后再试！")
		})
		return false
	})	
</script>


</body>
</html>