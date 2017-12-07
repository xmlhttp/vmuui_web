<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Present by Richcomm.com.cn 管理中心 -修改用户</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
    <link href="/Web/System/Public/css/main.css" type="text/css" rel="stylesheet"> 
    <script  src="/Public/jquery.js"></script>
    <script  src="/Public/jquery.form.js"></script>    
</head>
<body>
<!--顶部导航开始-->
<div class="topnav">
<a  href="/System.php?s=/System/ManagerPage/BaseInfo.html" class="home">首页</a>><a href="/System.php?s=/System/userAll">会员信息</a>><a href="javascript:void(0)">修改信息</a>
</div>
<!--顶部导航结束-->
<div class="cont_info">
<div class="tab_txt">
<div class="tab_tit">修改会员信息</div>
	<form method="post" action="<?php echo U('/System/UserAll/AddSave');?>"  id="form1"  enctype="multipart/form-data">
    <table width="100%" border="0" cellpadding="2" cellspacing="0" class="info_tab">
    
    <tr>
		<td align="right" style="width:28%">所属组别：</td>
		<td align="left"><select id="list1" name="list1" class="list1" style="width:190px" ><?php echo ($option); ?></select></td>
    </tr>
    
    <tr>
      <td align="right">用户账号：</td>
      <td align="left"><input type="text" id="uname" name="uname" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:180px"  value="" /><span style=" margin-left:5px; color:#F00; display:none" id="uname_tip">*账号不能为空</span>
       </td>
    </tr>
     <tr>
      <td align="right">用户昵称：</td>
      <td  align="left"><input type="text" id="nickname" name="nickname" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:180px" />     
      </td>
    </tr>
    
    
    <tr>
      <td align="right">用户密码：</td>
      <td  align="left"><input type="password" id="upwd" name="upwd" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:180px"  value="" /><span style=" margin-left:5px; color:#F00; display:none" id="upwd_tip">*密码不能为空</span>
     
      </td>
    </tr>
    
     <tr>
      <td align="right">确认密码：</td>
      <td  align="left"><input type="password" id="upwd1" name="upwd1" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:180px"  value="" /><span style=" margin-left:5px; color:#F00; display:none" id="upwd1_tip">×两次密码不一致</span>
      </td>
    </tr>
  
    <tr>
      <td align="right">是否验证：</td>
      <td  align="left">
		<input type="radio" id="ucheck1" name="ucheck" value="1" checked="checked"/>是
      	<input type="radio" id="ucheck2" name="ucheck" value="0" style="margin-left:20px;" />否
      </td>
    </tr>
    <tr>
      <td align="right" height="50"></td>
      <td  align="left"><input type="button" class="btn" value="添加用户" id="addsave" style=" width:144px; height:30px" /> 
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
$(function(){
	$("#uname,#upwd,#upwd1").val('');
})

$("#addsave").click(function(){
	$("#uname_tip,#upwd1_tip,#upwd_tip").hide();
	if($("#uname").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
		$("#uname_tip").show();
		return false;
	}
	
	if($("#upwd").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
		$("#upwd_tip").text("×密码不能为空！");
		$("#upwd_tip").show();
		return false;
	}
	if($("#upwd").val().replace(/(^\s*)|(\s*$)/g, "").length<6||$("#upwd").val().replace(/(^\s*)|(\s*$)/g, "").length>12){
		$("#upwd_tip").show()
		$("#upwd_tip").text("×密码长度在6-12之间！");
		return;
	}
	if($("#upwd").val()!=$("#upwd1").val()){
		$("#upwd1_tip").show();
		return false;	
	}	

	
	$("#form1").ajaxSubmit({
		dataType:  'json',
		success: function(data) {
			if(data["status"]["err"]==0){
				window.location.href="<?php echo U('/System/UserAll');?>";
			}else if(data["status"]["err"]==1){
				alert(data["status"]["msg"]);
				window.parent.location.href="<?php echo U('/System/Index');?>"
			}else{
				alert(data["status"]["msg"])	
			}
		},
		error:function(xhr){
			alert("保存失败！")
		}
	});
	return false;	
});
		

</script>


</body>
</html>