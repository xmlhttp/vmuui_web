<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><title><?php echo ($title); ?></title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><meta name="copyright" content="Copyright 2014-2017 - www.vmuui.com - 568615539"><meta name="Author" content="广州市劲驰互联网科技有限公司 www.vmuui.com  old-Year"><meta name="Robots" content="all"><meta name="Keywords" content="<?php echo ($keyword); ?>"><meta name="Description" content="<?php echo ($desc); ?>"><meta http-equiv="Page-Enter" content="blendTrans(Duration=0.5)"/><meta http-equiv="Page-Exit" content="blendTrans(Duration=0.5)"/><link href="favicon.ico" rel="shortcut icon" type="image/x-icon" /><style>.top{height:31px;background:url(/Web/Home/Public/images/top.jpg) top center repeat-x}</style><link href="/Web/Home/Public/css/static.css" rel="stylesheet" type="text/css"/><script src="/Public/jquery.js" type="text/javascript"></script><script src="/Web/Home/Public/js/Top.js" type="text/javascript"></script><script>var isIE6=false</script><!--[if IE 6]><script type="text/javascript">isIE6=true;</script><![endif]--></head><body><div class="top"><div class="topinfo widths"><div class="top_right"><a class="top_link" href="<?php echo U('/Home/Index/About#contact');?>" title="联系我们"><span class="icon-link"></span>联系我们</a>|<a class="top_feek" id="top_feek" title="在线留言"><span class="icon-feek"></span>在线留言</a>|<a class="last" title="合作流程" href="<?php echo U('/Home/Index/About#ser');?>"><span class="icon-list"></span>合作流程</a></div>您好，欢迎来到广州市劲驰互联网科技有限公司！</div></div><div class="head widths"><div class="header"></div><a class="logo" href="/" title="网站建设，劲驰网络"><img src="/Web/Home/Public/images/logo.jpg" alt="网站建设，劲驰网络" title="网站建设，劲驰网络" /></a><div class="logohits">专业团队·品质服务</div></div><div class="nav"><ul class="navinfo widths fixed"><?php if(7 == 0): ?><li class="active"><a href="/" title="首页">首页</a></li>
<?php else: ?>
<li><a href="/" title="首页">首页</a></li><?php endif; ?>
<?php if(7 == 1): ?><li class="active"><a href="<?php echo U('/Home/Index/Net');?>" title="网络充电桩">网络充电桩</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/Net');?>" title="网络充电桩">网络充电桩</a></li><?php endif; ?>
<?php if(7 == 2): ?><li class="active"><a href="<?php echo U('/Home/Index/Web');?>" title="网站建设">网站建设</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/Web');?>" title="网站建设">网站建设</a></li><?php endif; ?>
<?php if(7 == 3): ?><li class="active" href="<?php echo U('/Home/Index/App');?>" title="APP开发"><a>APP开发</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/App');?>" title="APP开发">APP开发</a></li><?php endif; ?>
<?php if(7 == 4): ?><li class="active"><a href="<?php echo U('/Home/Index/Wechat');?>" title="微信开发">微信开发</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/Wechat');?>" title="微信开发">微信开发</a></li><?php endif; ?>
<?php if(7 == 5): ?><li class="active"><a href="<?php echo U('/Home/Index/FAQ');?>" title="常见问题">常见问题</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/FAQ');?>" title="常见问题">常见问题</a></li><?php endif; ?>
<?php if(7 == 6): ?><li class="active"><a href="<?php echo U('/Home/Index/Cases');?>" title="案例展示">案例展示</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/Cases');?>" title="案例展示">案例展示</a></li><?php endif; ?>
<?php if(7 == 7): ?><li class="active"><a  href="<?php echo U('/Home/Index/News');?>" title="新闻动态">新闻动态</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/News');?>" title="新闻动态">新闻动态</a></li><?php endif; ?>
<?php if(7 == 8): ?><li class="active"><a href="<?php echo U('/Home/Index/Join');?>" title="加入我们">加入我们</a></li>
<?php else: ?>
<li><a href="<?php echo U('/Home/Index/Join');?>" title="加入我们">加入我们</a></li><?php endif; ?>
<?php if(7 == 9): ?><li class="active" style="margin-right:0"><a  href="<?php echo U('/Home/Index/About');?>" title="关于我们">关于我们</a></li>
<?php else: ?>
<li style="margin-right:0"><a  href="<?php echo U('/Home/Index/About');?>" title="关于我们">关于我们</a></li><?php endif; ?>
</ul></div><div class="widths"><script src="/Web/Home/Public/js/particles.min.js" type="text/javascript"></script><div class="particles"><div class="pcsinfo" id="pcsinfo"></div><span class="pcstit">新闻动态</span><span class="pcsdesc">News information</span></div><script>particlesJS('pcsinfo',{particles:{color:'#fff',shape:'circle',opacity:1,size:1,size_random:true,nb:20,line_linked:{enable_auto:true,distance:500,color:'#fff',opacity:0.5,width:1,condensed_mode:{enable:false,rotateX:600,rotateY:600}},anim:{enable:true,speed:1}},interactivity:{enable:true,mouse:{distance:800},detect_on:'canvas',mode:'grab',line_linked:{opacity:.2,width:1},events:{onclick:{enable:false}}},retina_detect:true})</script><ul class="newslist fixed"><li class="newli first" id="newli"><ul class="newliinfo" id="newliinfo"><?php echo ($news1); ?></ul><div class="newliico" id="newliico"><a class="active"></a><a></a><a></a><a></a><a></a></div></li><?php echo ($news2); ?></ul><?php echo ($page); ?></div><script>$(function(){silder({infobj:"#newli",imgobj:"#newliinfo",icoobj:"#newliico"})})</script><div class="widths"><div class="fltrim"><iframe name="qqtraget" style="display:none" id="qqtraget"></iframe></div><div class="flink"><span class="flinktit">友情链接：</span><a href="http://www.vmuui.com/" title="网站建设" target="_blank">网站建设</a><a href="http://www.vmuui.com/" title="广州网站建设" target="_blank">广州网站建设</a><a href="https://www.baidu.com/" title="百度" target="_blank">百度</a><a href="http://www.google.com" target="_blank" title="谷歌">谷歌</a><a href="https://www.1688.com/" title="阿里巴巴" target="_blank">阿里巴巴</a><a href="http://www.threev.top/" title="物联网技术交流" target="_blank">物联网技术交流</a></div></div><div class="footer"><div class="widths foot"><div class="foot_left1">广州市劲驰互联网科技有限公司<span>©</span>版权所有</div><a class="foot_left2" href="http://www.miitbeian.gov.cn/" title="劲驰网络备案号" target="_blank" >粤<span>ICP</span>备<span>14041985</span>号<span>-1</span></a><div class="foot_left3"><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="https://hm.baidu.com/hm.js?037f2b22e99c4fe6a303f44d303f16c0";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})()</script></div><div class="foot_left4">技术支持：<a  href="http://www.vmuui.com/" title="网站建设 劲驰网络" target="_blank">劲驰网络</a></div></div></div><div class="Rfloat"><a class="Rgotop" id="totop" href="javascript:void(0)" title="返回顶部"></a><div class="Rqq"><a  href='tencent://message/?uin=469100943&amp;Site=QQ/&amp;Menu=yes' target="qqtraget" title="在线客服"><img src="/Web/Home/Public/images/icon72.png" title="在线客服" alt="在线客服" />在线客服</a></div><div class="Rhelp"><div class="Rhelpinfo"><div class="Rhelptit"><a title="更多" href="<?php echo U('/Home/Index/FAQ');?>">更多+</a><i></i>常见问题</div><ul class="Rhelplist"><li><a href="<?php echo U('/Home/Index/FAQ');?>#faq1" title="做网站的具体流程是怎样的？">·做网站的具体流程是怎样的?</a></li><li><a href="<?php echo U('/Home/Index/FAQ');?>#faq3" title="网站如何优化才能让搜索引擎收录更多？">·网站如何优化才能让搜索引擎收录更多?</a></li><li><a href="<?php echo U('/Home/Index/FAQ');?>#faq2" title="APP、Web APP和手机网站有什么区别？">·APP、Web APP和手机网站有什么区别?</a></li><li><a href="<?php echo U('/Home/Index/FAQ');?>#faq4" title="如何识别APP是否为原生开发？">·如何识别APP是否为原生开发?</a></li><li><a href="<?php echo U('/Home/Index/FAQ');?>#faq5" title="苹果开发者账号如何选择？">·苹果开发者账号如何选择?</a></li><li><a href="<?php echo U('/Home/Index/FAQ');?>#faq7" title="APP要微信和支付宝功能需要提供哪些资料？">·APP要微信和支付宝功能需要提供哪些资料?</a></li></ul></div></div><a class="Rfeed" id="Rfeed" href="javascript:void(0)" title="在线留言"></a><a class="Rewm"><div class="Rewmout"><div class="Rewmin"><img src="/Web/Home/Public/images/ewm.jpg" title="网站建设 劲驰网络" alt="网站建设 劲驰网络" /></div></div></a></div><script>(function(){var bp = document.createElement('script');var curProtocol = window.location.protocol.split(':')[0];if (curProtocol === 'https'){bp.src = 'https://zz.bdstatic.com/linksubmit/push.js'}else{bp.src = 'http://push.zhanzhang.baidu.com/push.js'}var s = document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp, s)})()</script></body></html>