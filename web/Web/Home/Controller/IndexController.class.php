<?php
namespace Home\Controller;
use Think\Controller;

class IndexController extends Controller {    
   function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this -> display("404");
    }
    /*
     * 首页
     * 
     * return #
    */
    public function index(){
		$T=M('News')->where("isdelete=0 and putout=1 and ver=0")-> order('orderid desc')->limit(0,6)->select();
		if($T){
			foreach($T as $t=>$v){
				if($t<3){
					$news1=$news1."<li><a class='frnewsimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."' /></a><div class='frnewsright'><a class='frnewstit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,35,"utf-8",false)."</a><div class='frnewsdesc'>".msubstr($v['newdesc'],0,135,"utf-8",true)."<a class='frnewsmore' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详细]</a></div>
</div></li>";
				}else if($t==3){
					$news2=$news2."<li style='display:block'><a class='flnewsimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."' /></a><div class='flnewsdiv'><a class='flnewstit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,28,"utf-8",false)."</a><div class='flnewsdesc'>".msubstr($v['newdesc'],0,85,"utf-8",true)."<a class='frnewsmore' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详情]</a></div></div></li>";
				}else{
					$news2=$news2."<li><a class='flnewsimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."' /></a><div class='flnewsdiv'><a class='flnewstit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,28,"utf-8",false)."</a><div class='flnewsdesc'>".msubstr($v['newdesc'],0,85,"utf-8",true)."<a class='frnewsmore' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详情]</a></div></div></li>";
				}	
			}
		}

		$this->assign('title',"网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司-劲驰网络");
		$this->assign('keyword',"网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
		$this->assign('news1',$news1);
		$this->assign('news2',$news2);
		$this->display();
    }
	/*
	*常见问题
	*/
	public function FAQ(){
		$this->assign('title',"常见问题-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
		$this->assign('keyword',"网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
		$this->display('faq');
	}
	
	/*
	*新闻动态
	*/
	public function News(){
		$page=I("get.page",1)-1;//当前页面
		$size=16;//每页条数
		$count=M('News')->where("isdelete=0 and ver=0 and putout=1")->count();
		$T=M('News')->where("isdelete=0 and ver=0 and putout=1")-> order('orderid desc')->limit($page*$size,$size)->select();
		$pagecount=ceil($count/$size);//总页数
		if($T){
			foreach($T as $t=>$v){
				if($t==0){
					$news1=$news1."<li style='display:block'><a class='newliimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."'/></a><div class='newlitxt'><a class='newlitit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,18,"utf-8",false)."</a><div class='newlidesc'>".msubstr($v['newdesc'],0,140,"utf-8",true)."<a href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详情]</a></div><div class='newlitime'>—".$v['addtime']."—</div></div></li>";
				}else if($t<5){
					$news1=$news1."<li><a class='newliimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."'/></a><div class='newlitxt'><a class='newlitit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,18,"utf-8",false)."</a><div class='newlidesc'>".msubstr($v['newdesc'],0,140,"utf-8",true)."<a href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详情]</a></div><div class='newlitime'>—".$v['addtime']."—</div></div></li>";
				}
				if($t%2==0||$t==1){
					$news2=$news2."<li class='newli er'><a class='newslistimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."'/></a>
<div class='newslistright'><a class='newlitit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,25,"utf-8",false)."</a><div class='newlidesc'>".msubstr($v['newdesc'],0,90,"utf-8",true)."<a href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详情]</a></div><div class='newslisttime'>—".$v['addtime']."—</div></div></li>";
				}else{
					$news2=$news2."<li class='newli'><a class='newslistimg' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."' /></a>
<div class='newslistright'><a class='newlitit' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,25,"utf-8",false)."</a><div class='newlidesc'>".msubstr($v['newdesc'],0,90,"utf-8",true)."<a href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='查看详情'>[查看详情]</a></div><div class='newslisttime'>—".$v['addtime']."—</div></div></li>";	
				}
			}
		}
		$this->assign('title',"新闻动态-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
		$this->assign('keyword',"网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
		$this->assign('news1',$news1);
		$this->assign('news2',$news2);
		if ($count > $size) {//总记录数大于每页显示数，显示分页
			$pagecode = new page($count, $size, $page+1,'/index.php?s=/Home/Index/News&page={page}', 2);
			$this->assign('page',$pagecode->myde_write());
		}
		$this->display('news');
	}
	/*
	*新闻详情
	*/
	public function Newsview(){
		$id=I("get.id",0);
		if($id==0){
			$this->success('页面不存在','javascript:history.back(-1);');
			exit;
		}
		$T1=M('News')->where("isdelete=0 and putout=1 and ver=0 and id=".$id)->find();
		if(!$T1){
			$this->success('页面不存在','javascript:history.back(-1);');
			exit;
		}else{
			$T=M('News')->where("isdelete=0 and putout=1 and ver=0")-> order('orderid desc')->limit(0,6)->select();
			if($T){
				foreach($T as $t=>$v){
					$news1=$news1."<li><a class='hotleft' href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'><img src='".$v['img']."' title='".$v['newtitle']."' alt='".$v['newtitle']."'/></a><div class='hotright'><a href='".U('/Home/Index/Newsview',array('id'=>$v['id']))."' title='".$v['newtitle']."'>".msubstr($v['newtitle'],0,14,"utf-8",false)."</a><div class='hotrtxt'>".msubstr($v['newdesc'],0,25,"utf-8",false)."</div></div></li>";
				}
			}
			M('News')->where('id='.$id)->setInc('hit');	
			$this->assign('news1',$news1);
			$this->assign('news2',$T1);
			$this->assign('title',$T1["page_tit"]."-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
			$this->assign('keyword',$T1["page_key"]."-网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
			$this->assign('desc',$T1["page_desc"]."-劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
			
			$this->display('newsview');	
		}
	}
	/*
	*加入我们
	*/
	public function Join(){
		$this->assign('title',"加入我们-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
		$this->assign('keyword',"加入我们-网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
		$this->assign('desc',"加入我们-劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
		$this->display('join');
	}
	/*
	*关于我们
	*/
	public function About(){
		$this->assign('title',"关于我们-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
		$this->assign('keyword',"关于我们-网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
		$this->assign('desc',"关于我们-劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
		$this->display('about');
	}
	/*
	*案例展示
	*/
	public function Cases(){
		$arr=array(1,2,3,4);
		shuffle($arr);
		$arr1=$arr;
		shuffle($arr);
		$arr2=$arr;
		shuffle($arr);
		$arr3=$arr;
		shuffle($arr);
		$arr4=$arr;
		$page=I("get.page",1)-1;//当前页面
		$size=16;//每页条数
		$count=M('case')->where("isdelete=0 and ver=0 and putout=1")->count();
		$T=M('case')->where("isdelete=0 and ver=0 and putout=1")-> order('orderid desc')->limit($page*$size,$size)->select();
		$pagecount=ceil($count/$size);//总页数
		if($T){
			foreach($T as $t=>$v){
				if($t%4==0){
					$case1=	$case1."<div class='caseinfo caseinfo".$arr1[floor($t/4)]."'><div class='casesrc' style='background:url(".$v['img'].") top center no-repeat;background-size:cover'></div><div class='caseline'></div><div class='casetit'>".$v['newtitle']."</div><div class='casemask'><div class='cmasktit'>".$v['newtitle']."</div><div class='cmaskbtn'><a class='crecom' title='".$v['newtitle']."' href='".U('/Home/Index/Caseview',array('id'=>$v['id']))."'>介绍</a><a class='cgoview' title='".$v['newtitle']."' href='".$v['url']."' target='_blank'>浏览</a></div></div></div>";
				}else if($t%4==1){
					$case2=	$case2."<div class='caseinfo caseinfo".$arr2[floor($t/4)]."'><div class='casesrc' style='background:url(".$v['img'].") top center no-repeat;background-size:cover'></div><div class='caseline'></div><div class='casetit'>".$v['newtitle']."</div><div class='casemask'><div class='cmasktit'>".$v['newtitle']."</div><div class='cmaskbtn'><a class='crecom' title='".$v['newtitle']."' href='".U('/Home/Index/Caseview',array('id'=>$v['id']))."'>介绍</a><a class='cgoview' title='".$v['newtitle']."' href='".$v['url']."' target='_blank'>浏览</a></div></div></div>";	
				}else if($t%4==2){
					$case3=	$case3."<div class='caseinfo caseinfo".$arr3[floor($t/4)]."'><div class='casesrc' style='background:url(".$v['img'].") top center no-repeat;background-size:cover'></div><div class='caseline'></div><div class='casetit'>".$v['newtitle']."</div><div class='casemask'><div class='cmasktit'>".$v['newtitle']."</div><div class='cmaskbtn'><a class='crecom' title='".$v['newtitle']."' href='".U('/Home/Index/Caseview',array('id'=>$v['id']))."'>介绍</a><a class='cgoview' title='".$v['newtitle']."' href='".$v['url']."' target='_blank'>浏览</a></div></div></div>";		
				}else if($t%4==3){
					$case4=	$case4."<div class='caseinfo caseinfo".$arr4[floor($t/4)]."'><div class='casesrc' style='background:url(".$v['img'].") top center no-repeat;background-size:cover'></div><div class='caseline'></div><div class='casetit'>".$v['newtitle']."</div><div class='casemask'><div class='cmasktit'>".$v['newtitle']."</div><div class='cmaskbtn'><a class='crecom' title='".$v['newtitle']."' href='".U('/Home/Index/Caseview',array('id'=>$v['id']))."'>介绍</a><a class='cgoview' title='".$v['newtitle']."' href='".$v['url']."' target='_blank'>浏览</a></div></div></div>";			
				}
			}
		}
		$this->assign('title',"案例展示-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
		$this->assign('keyword',"网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技,劲驰网络案例");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
		$this->assign('case1',$case1);
		$this->assign('case2',$case2);
		$this->assign('case3',$case3);
		$this->assign('case4',$case4);
		if ($count > $size) {//总记录数大于每页显示数，显示分页
			$pagecode = new page($count, $size, $page+1,'/index.php?s=/Home/Index/Cases&page={page}', 2);
			$this->assign('page',$pagecode->myde_write());
		}
		$this->display('case');
	}
	/*
	*案例详情
	*/
	public function Caseview(){
		$id=I("get.id",0);
		if($id==0){
			$this->success('页面不存在','javascript:history.back(-1);');
			exit;
		}
		$T1=M('case')->where("isdelete=0 and putout=1 and ver=0 and id=".$id)->find();
		if(!$T1){
			$this->success('页面不存在','javascript:history.back(-1);');
			exit;
		}else{
			M('case')->where('id='.$id)->setInc('hit');	
			$this->assign('case',$T1);
			$this->assign('title',$T1["page_tit"]."-网站建设|APP制作|网站设计|APP开发|网站制作|广州网站建设|充电桩|专业网站建设公司");
		$this->assign('keyword',$T1["page_key"].",网站建设,网站制作,广州网站建设,网站建设公司,网站设计,充电桩平台,充电桩核心板,APP制作,APP开发,微信开发,劲驰互联网科技");
		$this->assign('desc',$T1["page_desc"].",劲驰互联网科技专注于网站建设及提供互联网+解决方案，为您提供定制化的网站建设、移动应用开发、智能芯片开发等一系列互联网应用服务,包括企业网站建设,品牌形象网站建设,电子商务网站开发,手机网站站制作,安卓和苹果原生APP开发,微信开发,网络充电桩业务。");
			
			$this->display('caseview');
		}	
		
	}
	/*
	*互联网+
	*/
	public function Net(){
		$this->assign('title',"充电桩管理平台-充电桩|充电桩云平台|充电桩核心板卡|用户充电APP|充电桩核心板卡公司");
		$this->assign('keyword',"充电桩,充电APP,充电桩建设,互联网+开发,充电桩核心板,互联网+公司,物联网开发");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案，提供充电APP，、云服务、智能控制一体的网络充电桩服务,通过智能充电,网络计费等功能,解决用户充电难，运营商管理难的问题。");
		$this->display('net');
	}
	/*
	*网站建设
	*/
	public function Web(){
		$this->assign('title',"劲驰网络网站建设-网站建设|网站设计|企业官方网站|品牌形象网站|电子商务网站|手机网站|广州网站建设");
		$this->assign('keyword',"网站建设,网站制作,广州网站建设,企业官方网站建设,品牌形象网站建设,电子商务网站建设,手机网站制作,网站设计");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案，在网站建设方面具有丰富的技术沉淀,为您提供专业的企业网站建设、营销型网站建设、网上商城建设等建站服务。");
		$this->display('web');
	}
	/*
	*APP开发
	*/
	public function App(){
		$this->assign('title',"APP设计与制作-APP开发|APP制作|广州APP开发");
		$this->assign('keyword',"安卓,苹果,Android,IOS,Web APP,H5 APP,混合开发");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案,在APP开发上具有丰富经验，拥有多个app开发案例,提供安卓和苹果两个平台的原生和H5开发。");
		$this->display('app');
	}
	/*
	*微信开发
	*/
	public function Wechat(){
		$this->assign('title',"微信服务-微信开发|微信公众平台开发|微信小程序开发");
		$this->assign('keyword',"公共号,服务号,微官网,微信小程序");
		$this->assign('desc',"劲驰互联网科技专注于网站建设及提供互联网+解决方案,提供微信网站建设、微信应用开发、微信营销功能开发等服务,为中小企业打造最便捷、易推广的轻应用。");
		$this->display('wechat');
	}
	
	/*
	*留言
	*/
	public function Feedback(){
		$tel=I("post.tel",'');
		$con=I("post.con",'');
		if($tel==""||$con==""){
			$json['status']['err']=1;
			$json['status']['msg']="请填写完整信息！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$data["tel"]=$tel;
		$data["mark"]=$con;
		$data["addtime"]=date('y-m-d h:i:s',time());
		if($lastInsId =M('feedback')->add($data)){
			$data['orderid']=$lastInsId;
			if(M('feedback')->where('id='.$lastInsId)->save($data)){
				$json['status']['err']=0;
				$json['status']['msg']="添加成功！";
				$this->ajaxReturn($json, 'json');
				exit;
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="写入数据库失败！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}
		}
	}
	/*
	*下载
	*/
	function Down(){
		$id=I("get.id",0);
		if($id==0){
			header("Content-type: text/html; charset=utf-8");
            echo "File not found!";
			exit;
		}
		$T1=M('down')->where("isdelete=0 and putout=1 and ver=0 and id=".$id)->find();
		if(!$T1){
			header("Content-type: text/html; charset=utf-8");
            echo "File not found!";
			exit;
		}else{
			if (!file_exists($_SERVER["DOCUMENT_ROOT"].$T1["upfile"])){
            	header("Content-type: text/html; charset=utf-8");
           		echo "File not found!";
           		exit; 
       		} else {
				M('down')->where('id='.$id)->setInc('hit');	
				$name_tmp = explode(".",$T1["upfile"]);
				$type=$name_tmp[count($name_tmp)-1];
            	Header("Content-type: application/octet-stream");
            	Header("Accept-Ranges: bytes");
           		Header("ACCEPT-LENGTH: ".filesize($_SERVER["DOCUMENT_ROOT"].$T1["upfile"]));
            	Header("Content-Disposition: attachment; filename=".$T1["newtitle"].".".$type);
				$file = fopen($_SERVER["DOCUMENT_ROOT"].$T1["upfile"],"r"); 
           		echo fread($file, filesize($_SERVER["DOCUMENT_ROOT"].$T1["upfile"]));
           		fclose($file);
			}
			
		}
	}
	
}
