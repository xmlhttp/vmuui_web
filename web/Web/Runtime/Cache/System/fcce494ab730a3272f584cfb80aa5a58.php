<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>VMUUI.COM 劲驰网络管理中心</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/Web/System/Public/css/ManagerPage.css" rel="stylesheet" type="text/css" />
	<script  src="/Public/jquery.js"></script>   
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=edf08007878f22303f8d52cf5c59b707"></script>   
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=0hyIpklrNXG3cKHIVgstWGcF"></script>
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
</head>
<body  scroll="no">
<!--顶部开始-->
<div class="topw">
<div class="topn">
<!--右侧一开始-->
<div class="top_r1">
<a><img src="/Web/System/Public/images/ManagerPage/head_img.jpg" /></a>
<a class="uname" href="/System.php?s=/System/ManagerPage/ChangePwd"  target='frame_right'><?php echo ($_SESSION['admin']); ?></a>
<a class="uset"   href="/System.php?s=/System/ManagerPage/sitesetup"   target="frame_right"><img src="/Web/System/Public/images/ManagerPage/ico_set.gif" /></a>
<a class="uloginout" href="<?php echo U('/System/ManagerPage/loginout');?>"><img src="/Web/System/Public/images/ManagerPage/ico_loginout.gif" /></a>
</div>
<!--右侧一结束-->
<!--右侧二开始-->
<ul class="top_r2" style="width:300px"><li><a href="http://<?php echo ($web); ?>" target="_blank">网站首页</a></li><li><a href="<?php echo U('/System/ManagerPage/BaseInfo');?>"  target="frame_right">系统首页</a></li><li class="last"><a  href="/System.php?s=/System/AdminAll"   target="frame_right">系统管理</a></li></ul>
<!--右侧二结束-->

<!--左侧logo开始-->
<a class="logo" href="http://www.vmuui.com/" title="劲驰网络"><img src="/Web/System/Public/images/ManagerPage/logo.png" /></a>

<!--左侧logo结束-->
</div>
</div>
<!--顶部结束-->

<!--中间内容开始-->
<div class="info">
<div class="info_right">
<iframe id="frame_right" frameborder="0" name="frame_right" 	scrolling="auto" style="overflow-x:hidden; height:100%; height:99.3%\9; width:100%"  src="<?php echo U('/System/ManagerPage/BaseInfo');?>"></iframe>
</div>
<!--左侧开始-->
<div class="info_left">

<!--左侧内容开始-->
<div class="info_txt">

<!--导航开始-->
<div class="left_nav">
<?=$tree?>

</div>
<!--导航结束-->
</div>
<!--左侧内容结束-->
</div>
<!--左侧结束-->
</div>
<!--中间内容结束-->
<!--底部开始-->
<div class="foot">Powered by VMUUI.COM © 2014-2017 .</div>
<!--底部结束-->

<!--弹出框背景-->
<div class="maskbg" id="maskbg"></div>

<!--弹出框-->
<script type="text/javascript" src="/Web/System/Public/js/ManagerPage.js"></script>
</body>
</html>