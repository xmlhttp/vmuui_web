<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Present by Richcomm.com.cn 管理中心 - 添加产品</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
    <link href="/Web/System/Public/css/main.css" type="text/css" rel="stylesheet"> 
    <link rel="stylesheet" type="text/css" href="/Web/System/Public/Tool/codebase/dhtmlxgrid.css">
    <script>var swfu,maxnum=5,webpath="/System.php?s=/System/Products/";</script>
    <script  src="/Public/jquery.js"></script>
    <script  src="/Public/jquery.form.js"></script>
    <script  src="/Web/System/Public/Tool/codebase/dhtmlxgrid.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Web/BEditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Web/BEditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="/Web/BEditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" src="/Web/System/Public/js/swfupload.js"></script>
	<script type="text/javascript" src="/Web/System/Public/js/handlers.js"></script>
</head>
<body>
<!--顶部导航开始-->
<div class="topnav">
<a  href="/System.php?s=/System/ManagerPage/BaseInfo.html" class="home">首页</a>><a href="/System.php?s=/System/Products">产品列表</a>><a href="javascript:void(0)">添加产品</a>
</div>
<!--顶部导航结束-->
<div class="cont_info">
<div class="tab_txt">
<div class="tab_tit">添加产品</div>
	<form method="post" action="<?php echo U('/System/Products/AddSave');?>" id="form1" enctype="multipart/form-data">
	<table width="100%" border="0" cellpadding="2" cellspacing="0" class="info_tab">   
	<tr>
		<td align="right" style="width:23%">目录结构：</td>
		<td align="left"><select id="list1" name="list1" class="list1" ><?php echo ($option); ?></select></td>
    </tr>
    <tr>
		<td align="right">产品名称：</td>
		<td align="left"><input type="text" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:400px" id="newtitle" name="newtitle" /> <span style=" margin-left:5px; color:#F00; display:none" id="newtitle_tip">×标题不能为空</span></td>
    </tr> 
    <tr>
		<td align="right">发 布 人：</td>
		<td  align="left" style="height:30px"><input type="text" id="putman" name="putman" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:240px;" value="<?php echo (session('admin')); ?>" /></td>
    </tr>
    <tr>
		<td align="right">发布时间：</td>
		<td  align="left" style="height:30px"><input type="text" id="addtime" name="addtime" class="input1 calendar" onFocus="this.className='input1-bor calendar'" onBlur="this.className='input1 calendar'"  style="width:240px;" /></td>
    </tr>
  
    <tr>
		<td align="right">产品图片：</td>
		<td  align="left" style="height:30px"><input type="file" id="img" name="img" style=" height:30px;float:left" /></td>
    </tr>
    <tr>
		<td align="right">产品大图：</td>
		<td  align="left" style="height:30px"><input type="file" id="bigimg" name="bigimg" style=" height:30px;float:left" /></td>
    </tr>
    <tr>
		<td style="vertical-align:top"><div style="text-align:right; height:30px; line-height:30px">产品批量图：</div></td>
		<td  align="left">
        <div style="height:30px" class="pl_topdiv">
			<div style="float:left; height:25px; width:100px; margin-top:3px;"><span id="spanButtonPlaceholder"></span></div>
			<div id="divFileProgressContainer" class="pl_hit"></div>
            <div class="progressjd" id="progressjd"></div>
        </div>
		<div id="thumbnails">
        
				<ul id="pic_list" class="pic_list fixed"></ul>
       
		</div>
        <input type="hidden" name="pls" id="pls" value="|"/>
		</td>
    </tr>
    <tr>
		<td align="right">产品描述：</td>
		<td  align="left"><textarea class="input1" id="newdesc" name="newdesc" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:543px; height:68px" ></textarea></td>
    </tr>
	<tr>
		<td align="right" style="vertical-align:top; padding-top:5px">产品内容：</td>
		<td  align="left">
		<input type="hidden" id="Newcontent" name="Newcontent" value="" />
		<div style="width:555px; position:relative; z-index:1" id="editor"></div>      
		</td>
	</tr>
	<tr>
		<td align="right">页面标题：</td>
		<td align="left"><input type="text" class="input1" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:400px" id="page_tit" name="page_tit" /></td>
    </tr> 
	<tr>
		<td align="right">页面关键字：</td>
		<td  align="left"><textarea class="input1" id="page_key" name="page_key" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:543px; height:40px" ></textarea></td>
    </tr>
	<tr>
		<td align="right">页面描述：</td>
		<td  align="left"><textarea class="input1" id="page_desc" name="page_desc" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"  style="width:543px; height:68px" ></textarea></td>
    </tr>
    <tr>
      <td align="right">是否显示：</td>
      <td  align="left" style="height:30px">
      	<input type="radio" id="putout1" name="putout" value="1" checked="checked" />是
      	<input type="radio" id="putout2" name="putout" value="0" style="margin-left:20px;" />否
      </td>
    </tr>   
	<tr>
      <td align="right">是否热点：</td>
      <td  align="left" style="height:30px">
      	<input type="radio" id="hot1" name="hot" value="1"  checked="checked" />是
      	<input type="radio" id="hot2" name="hot" value="0" style="margin-left:20px;"/>否
      </td>
    </tr>
	<tr>
      <td align="right">是否置顶：</td>
      <td  align="left" style="height:30px">
      	<input type="radio" id="top1" name="top" value="1" checked="checked"  />是
      	<input type="radio" id="top2" name="top" value="0" style="margin-left:20px;"/>否
      </td>
    </tr>
     
    <tr>
      <td align="right" height="50"></td>
      <td  align="left"><input type="button" class="btn" id="addsave" value="添加产品" style=" width:144px; height:30px" /> 
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
	UE.getEditor('editor')
 	new dhtmlXCalendarObject("addtime").loadUserLanguage('chinese');
	$("#addtime").val("<?php echo (date('Y-m-d H:i:s',(isset($data["time"]) && ($data["time"] !== ""))?($data["time"]):time())); ?>")
	$("#pls").val("|");
	swfu = new SWFUpload({
		upload_url: "<?php echo U('/System/Products/Swfupload');?>",
		post_params: {"cid": "8"},
		file_size_limit : "2 MB",
		file_types : "*.jpg;*.png;*.gif;*.bmp",
		file_types_description : "JPG Images",
		file_upload_limit : maxnum,
		file_queue_error_handler : fileQueueError,
		file_dialog_complete_handler : fileDialogComplete,
		upload_progress_handler : uploadProgress,
		upload_error_handler : uploadError,
		upload_success_handler : uploadSuccess,
		upload_complete_handler : uploadComplete,
		button_image_url : "/Web/System/Public/images/swfupload/upload.png",
		button_placeholder_id : "spanButtonPlaceholder",
		button_width: 100,
		button_height: 25,
		button_text : '',
		button_text_style : '.spanButtonPlaceholder { font-family: Helvetica, Arial, sans-serif; font-size: 14pt;} ',
		button_text_top_padding: 0,
		button_text_left_padding: 0,
		button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
		button_cursor: SWFUpload.CURSOR.HAND,			
		flash_url : "/Web/System/Public/images/swf/swfupload.swf",
		custom_settings : {
			upload_target : "divFileProgressContainer"
		},				
		debug: false
	});
})	
$("#addsave").click(function(){
	$("#newtitle_tip").hide();
	if($("#newtitle").val().replace(/(^\s*)|(\s*$)/g, "").length==0){
		$("#newtitle_tip").show();
		alert("产品名称不能为空！");
		return false;	
	}
	$("#Newcontent").val(UE.getEditor('editor').getContent())
	$("#form1").ajaxSubmit({
		dataType:'json',
		success: function(d) {
			if(d["status"]["err"]==0){
				alert(d["status"]["msg"])
				window.location.href="/System.php?s=/System/Products"
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