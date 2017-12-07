<?php
return array(
	//'配置项'=>'配置值'
	'URL_CASE_INSENSITIVE' => false, //默认false 表示URL区分大小写 true则表示不区分大小写
    'URL_MODEL'            => 3, //URL模式
    'VAR_URL_PARAMS'       => '', // PATHINFO URL参数变量
    'URL_PATHINFO_DEPR'    => '/', //PATHINFO URL分割符
	'DEFAULT_FILTER'=>'strip_tags,htmlspecialchars',
	'TMPL_PARSE_STRING'=> array(
		'__PUBLIC__' => __ROOT__.'/Web/Home/Public',
		'__CSS__' =>__ROOT__.'/Web/Home/Public/css',
		'__IMG__' => __ROOT__.'/Web/Home/Public/images',
		'__JS__' => __ROOT__.'/Web/Home/Public/js'
	 )
);
