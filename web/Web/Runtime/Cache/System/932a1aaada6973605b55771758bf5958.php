<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Present by Richcomm.com.cn 管理中心 - 修改信息</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
    <link href="/Web/System/Public/css/main.css" type="text/css" rel="stylesheet"> 
    <link rel="stylesheet" type="text/css" href="/Web/System/Public/Tool/codebase/dhtmlxgrid.css">
    <script  src="/Public/jquery.js"></script>
    <script  src="/Public/jquery.form.js"></script>
    <script  src="/Web/System/Public/Tool/codebase/dhtmlxgrid.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Web/BEditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Web/BEditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="/Web/BEditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<!--顶部导航开始-->
<div class="topnav">
<a  href="/System.php?s=/System/ManagerPage/BaseInfo.html" class="home">首页</a>><a href="/System.php?s=/System/Companyall">企业信息</a>><a href="javascript:void(0)">修改信息</a>
</div>
<!--顶部导航结束-->
<div class="cont_info">
<div class="tab_txt">
<div class="tab_tit">修改信息</div>
	<form method="post" action="<?php echo U('/System/Company/EditSave',array('id'=>I('get.id')));?>" id="form1" enctype="multipart/form-data">
	<table width="100%" border="0" cellpadding="2" cellspacing="0" class="info_tab">   
	<tr>
		<td align="right" style="width:23%">目录结构：</td>
		<td align="left"><select id="list1" name="list1" class="list1" ><?php echo ($option); ?></select></td>
    </tr>
    <tr>
		<td align="right">信息标题：</td>
		<td align="left"><input type="text" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:400px" id="newtitle" name="newtitle" value="<?php echo ($info["newtitle"]); ?>" /> <span style=" margin-left:5px; color:#F00; display:none" id="newtitle_tip">×标题不能为空</span></td>
    </tr> 
    <tr>
		<td align="right">发 布 人：</td>
		<td  align="left" style="height:30px"><input type="text" id="putman" name="putman" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px;" value="<?php echo ($info["putman"]); ?>" /></td>
    </tr>
    <tr>
		<td align="right">发布时间：</td>
		<td  align="left" style="height:30px"><input type="text" id="addtime" name="addtime" class="input1 calendar" onFocus="this.className='input1-bor calendar'" onBlur="this.className='input1 calendar'"  style="width:240px;" /></td>
    </tr>
  
    <tr>
		<td align="right">信息图片：</td>
		<td  align="left" style="height:30px"><input type="file" id="img" name="img" style=" height:30px;float:left" /><?php if(empty($info['img'])): ?><a style=" margin-left:5px; color:#F00; height:30px; line-height:30px; float:left" href="javascript:alert('图片不存在！')">×图片不存在，浏览上传图片</a>
        <?php else: ?>
       		<a style=" margin-left:5px; color:#00F; height:30px; line-height:30px; float:left" target="_blank" href="<?php echo ($info['img']); ?>">√点击查看图片，上传后覆盖原文件</a><?php endif; ?></td>
    </tr>
    <tr>
		<td align="right">信息描述：</td>
		<td  align="left"><textarea class="input1" id="newdesc" name="newdesc" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:543px; height:68px" ><?php echo ($info["newdesc"]); ?></textarea></td>
    </tr>
	<tr>
		<td align="right" style="vertical-align:top; padding-top:5px">信息内容：</td>
		<td  align="left">
		<input type="hidden" id="Newcontent" name="Newcontent" value="" />
		<div style="width:555px; position:relative; z-index:1" id="editor"></div>      
		</td>
	</tr>
   
    <tr>
      <td align="right">是否显示：</td>
      <td  align="left" style="height:30px">
      	<input type="radio" id="putout1" name="putout" value="1"  <?php if($info['putout'] == 1): ?>checked="checked"<?php endif; ?> />是
      	<input type="radio" id="putout2" name="putout" value="0" style="margin-left:20px;" <?php if($info['putout'] == 0): ?>checked="checked"<?php endif; ?>/>否
      </td>
    </tr>      
 
    <tr>
      <td align="right" height="50"></td>
      <td  align="left"><input type="button" class="btn" id="addsave" value="修改信息" style=" width:144px; height:30px" /> 
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
	UE.getEditor('editor').addListener("ready", function () {
      	this.setContent('<?php echo ($info["newcontent"]); ?>')
	});
 	new dhtmlXCalendarObject("addtime").loadUserLanguage('chinese');
	$("#addtime").val("<?php echo ($info["addtime"]); ?>")
})	
$("#addsave").click(function(){
	$("#newtitle_tip").hide();
	if($("#newtitle").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
		$("#newtitle_tip").show();
		alert("标题不能为空！");
		return false;	
	}
	$("#Newcontent").val(UE.getEditor('editor').getContent())
	$("#form1").ajaxSubmit({
		dataType:'json',
		success: function(d) {
			if(d["status"]["err"]==0){
				alert(d["status"]["msg"])
				window.location.href="/System.php?s=/System/Company"
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