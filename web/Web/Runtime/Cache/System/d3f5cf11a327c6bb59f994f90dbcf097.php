<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Present by Richcomm.com.cn 管理中心 - 订单处理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
    <link href="/Web/System/Public/css/main.css" type="text/css" rel="stylesheet"> 
    <script  src="/Public/jquery.js"></script>
    <script  src="/Public/jquery.form.js"></script>
</head>
<body>
<!--顶部导航开始-->
<div class="topnav">
<a  href="/System.php?s=/System/ManagerPage/BaseInfo.html" class="home">首页</a>><a href="/System.php?s=/System/Feedback2">订单列表</a>><a href="javascript:void(0)">订单处理</a>
</div>
<!--顶部导航结束-->
<div class="cont_info">
<div class="tab_txt">
<div class="tab_tit">订单处理</div>
	<form method="post" action="<?php echo U('/System/Feedback2/EditSave',array('id'=>I('get.id')));?>" id="form1" enctype="multipart/form-data">
	<table width="100%" border="0" cellpadding="2" cellspacing="0" class="info_tab">   
	
    <tr>
		<td align="right" style="width:25%">订单编号：</td>
		<td align="left"><?php echo ($info["newtitle"]); ?></td>
    </tr> 
    <tr>
		<td align="right">下单账号：</td>
		<td  align="left" style="height:22px"><?php echo ($uname); ?> (<span style="color:#09F"> <?php echo ($info["uid"]); ?> </span>)</td>
    </tr>
    <tr>
		<td align="right">下单时间：</td>
		<td  align="left" style="height:22px"><?php echo ($info["addtime"]); ?></td>
    </tr>
     <tr>
		<td align="right">联系电话：</td>
		<td  align="left" style="height:22px"><?php echo ($info["tel"]); ?></td>
    </tr>
     <tr>
		<td align="right">联系邮箱：</td>
		<td  align="left" style="height:22px"><?php echo ($info["mail"]); ?></td>
    </tr>
    <tr>
		<td align="right">联系信息：</td>
		<td  align="left"><textarea class="input1" id="mark" name="mark" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:543px; height:68px" ><?php echo ($info["mark"]); ?></textarea></td>
    </tr>
	<tr>
		<td align="right">备注信息：</td>
		<td  align="left"><textarea class="input1" id="remark" name="remark" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:543px; height:68px" ><?php echo ($info["remark"]); ?></textarea></td>
    </tr>
    <tr>
      <td align="right">是否处理：</td>
      <td  align="left" style="height:30px">
      	<input type="radio" id="putout1" name="putout" value="1" <?php if($info['putout'] == 1): ?>checked="checked"<?php endif; ?> />是
      	<input type="radio" id="putout2" name="putout" value="0" style="margin-left:20px;"  <?php if($info['putout'] == 0): ?>checked="checked"<?php endif; ?>/>否
      </td>
    </tr>       
    <tr>
      <td align="right" height="50"></td>
      <td  align="left"><input type="button" class="btn" id="addsave" value="处理订单" style=" width:144px; height:30px" /> 
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

	$("#form1").ajaxSubmit({
		dataType:'json',
		success: function(d) {
			if(d["status"]["err"]==0){
				alert(d["status"]["msg"])
				window.location.href="/System.php?s=/System/Feedback2"
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