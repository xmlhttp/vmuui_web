<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Present by Richcomm.com.cn 管理中心 - 添加友链</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
    <link href="/Web/System/Public/css/main.css" type="text/css" rel="stylesheet"> 
    <link rel="stylesheet" type="text/css" href="/Web/System/Public/Tool/codebase/dhtmlxtree.css">
    <script  src="/Public/jquery.js"></script>
    <script  src="/Public/jquery.form.js"></script>
</head>
<body>
<!--顶部导航开始-->
<div class="topnav">
<a  href="/System.php?s=/System/ManagerPage/BaseInfo.html" class="home">首页</a>><a href="/System.php?s=/System/Link">友链管理</a>><a href="javascript:void(0)">添加友链</a>
</div>
<!--顶部导航结束-->
<div class="cont_info">
<div class="tab_txt">
<div class="tab_tit">添加友链</div>
	<form method="post" action="<?php echo U('/System/Link/AddSave');?>" id="form1" enctype="multipart/form-data">
	<table width="100%" border="0" cellpadding="2" cellspacing="0" class="info_tab">   
	<tr>
		<td align="right" style="width:25%">目录结构：</td>
		<td align="left"><select id="list1" name="list1" class="list1" ><?php echo ($option); ?></select></td>
    </tr>
    <tr>
		<td align="right">链接标题：</td>
		<td align="left"><input type="text" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px;" id="newtitle" name="newtitle" /> <span style=" margin-left:5px; color:#F00; display:none" id="newtitle_tip">×标题不能为空</span></td>
    </tr> 
    <tr>
		<td align="right">链接地址：</td>
		<td align="left"><input type="text" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px;" id="newadd" name="newadd" /></td>
    </tr> 
    
    <tr>
		<td align="right">链接图片：</td>
		<td  align="left" style="height:30px"><input type="file" id="img" name="img" style=" height:30px;float:left" /></td>
    </tr>
    <tr>
		<td align="right">链接备注：</td>
		<td  align="left"><textarea class="input1" id="newdesc" name="newdesc" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:424px; height:53px" ></textarea></td>
    </tr>
    <tr>
      <td align="right">是否显示：</td>
      <td  align="left" style="height:30px">
      	<input type="radio" id="putout1" name="putout" value="1" checked="checked" />是
      	<input type="radio" id="putout2" name="putout" value="0" style="margin-left:20px;" />否
      </td>
    </tr>      
 
    <tr>
      <td align="right" height="50"></td>
      <td  align="left"><input type="button" class="btn" id="addsave" value="添加链接" style=" width:144px; height:30px" /> 
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
$("#addsave").click(function(){
	$("#newtitle_tip").hide();
	if($("#newtitle").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
		$("#newtitle_tip").show();
		alert("标题不能为空！");
		return false;	
	}
	$("#form1").ajaxSubmit({
		dataType:'json',
		success: function(d) {
			if(d["status"]["err"]==0){
				alert(d["status"]["msg"])
				window.location.href="/System.php?s=/System/Link"
			}else if(d["status"]["err"]==1){
				alert(d["status"]["msg"]);
				window.parent.location.href="<?php echo U('/System/Index');?>"
			}else{
				alert(d["status"]["msg"])	
			}
		},
		error:function(xhr){
			alert("保存失败！")
		}
	});
	return false;	
})
	
	
</script>


</body>
</html>