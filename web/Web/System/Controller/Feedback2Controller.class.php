<?php
namespace System\Controller;
use Think\Controller;
class Feedback2Controller extends Controller {
    public function index(){
		loadcheck(34);
    	$this->display('Index:feedback2all');
    }
	
	//查询
	public function paged(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$page=I("post.page",0);
		$size=I("post.size",5);

		$count=M('Feedback2')->where("ver=".session("ver"))->count();
		$T=M('Feedback2')->where("ver=".session("ver"))-> order('orderid desc')->limit($page*$size,$size)->select();
		$json['pagecount']=ceil($count/$size);
		$json['pagecurrent']=$page;
		$json['data']['rows']=showitem($T);
		$json['status']['err']=0;
		$json['status']['msg']="请求成功！";
		$this->ajaxReturn($json, 'json');
	}
	
	//搜索
	public function search(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$page=I("post.page",0);
		$size=I("post.size",5);

		$count=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))->count();
		$T=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))-> order('orderid desc')->limit($page*$size,$size)->select();	
		$json['pagecount']=ceil($count/$size);
		$json['pagecurrent']=$page;
		$json['data']['rows']=showitem($T);;
		$json['status']['err']=0;
		$json['status']['msg']="请求成功！";
		$this->ajaxReturn($json, 'json');
	}

	//编辑
	public function edit(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$v=I("post.nValue","");
		switch (I("post.cInd",0)){
			case 0:
				break;
			case 1:
				$field="newtitle";
				break;
			case 2:
				break;
			case 4:
				$field="putout";
				$v=$v=="true"?1:0;
				break;
		}
		$T=M('Feedback2');
		if($T){
			$data[$field] = $v;
			$T->where('id='.I("post.rId",0))->save($data);  	
			login_info("【订单】 信息ID为[".I("post.rId",0). "] 更新[".$field."]成功", "Feedback2");
			$json['status']['err']=0;
			$json['status']['msg']="<span class='msgright'>ID为<font style='padding-left:2px; padding-right:2px; font-size:13px'>".I("post.rId",0)."</font>的第<font  style='padding-left:2px; padding-right:2px; font-size:13px'>".(I("post.cInd",0)+1)."</font>列的数据已经更新为:".I("post.nValue","")."</span>";		
			$this->ajaxReturn($json, 'json');
			exit;
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="数据连接错误！";
			$this->ajaxReturn($json, 'json');
			exit;		
		}
		
	}
	
	//上移
	public function up(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}

		$T=M('Feedback2')->where("id=".I("post.cid",0)." and ver=".session("ver"))->find();
		$T1=M('Feedback2')->where("id=".I("post.pid",0)." and ver=".session("ver"))->find();	
		if(!$T||!$T1){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$S=M('Feedback2');
		$data["orderid"]=$T1["orderid"];
		$data1["orderid"]=$T["orderid"];
		$S->startTrans();
		if(M('Feedback2')->where('id ='.$T["id"])->save($data) && M('Feedback2')->where('id ='.$T1["id"])->save($data1)){
			$S->commit();
			$json['status']['err']=0;
			$json['status']['msg']="上移成功";
			$this->ajaxReturn($json, 'json');
			exit;	
		}else{
			$S->rollback();
			$json['status']['err']=2;
			$json['status']['msg']="执行错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
	
	}

	//普通上移上翻页
	public function pageup(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		$T=M('Feedback2')->where("id=".I("post.cid",0)." and ver=".session("ver"))->find();
		if(!$T){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$page=I("post.page",0);
		$size=I("post.size",5);
		$count=M('Feedback2')->where("ver=".session("ver"))->count();
		$T1=M('Feedback2')->where("ver=".session("ver"))-> order('orderid desc')->limit($page*$size-1,1)->select();
		if($count==0){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		$S=M('Feedback2');
		$data["orderid"]=$T1[0]["orderid"];
		$data1["orderid"]=$T["orderid"];
		$S->startTrans();
		if(M('Feedback2')->where('id ='.$T["id"])->save($data) && M('Feedback2')->where('id ='.$T1[0]["id"])->save($data1)){
			$S->commit();
			$T2=M('Feedback2')->where("ver=".session("ver"))-> order('orderid desc')->limit(($page-1)*$size,$size)->select();
			$json['pagecount']=ceil($count/$size);
			$json['pagecurrent']=$page-1;
			$json['data']['rows']=showitem($T2);
			$json['status']['err']=0;
			$json['status']['msg']="请求成功！";
			$this->ajaxReturn($json, 'json');
				
		}else{
			$S->rollback();
			$json['status']['err']=2;
			$json['status']['msg']="执行错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
	}
	
	//带查询的上移上翻
	public function searchup(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$S=M('Feedback2');
		$T=M('Feedback2')->where("id=".I("post.cid",0)." ver=".session("ver"))->find();
		if(!$T){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$page=I("post.page",0);
		$size=I("post.size",5);	
		$count=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))->count();
		$T1=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))-> order('orderid desc')->limit($page*$size-1,1)->select();
		if($count==0){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$data["orderid"]=$T1[0]["orderid"];
		$data1["orderid"]=$T["orderid"];
		$S->startTrans();
		if(M('Feedback2')->where('id ='.$T["id"])->save($data) && M('Feedback2')->where('id ='.$T1[0]["id"])->save($data1)){
			$S->commit();
			$count=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))->count();
			$T2=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))-> order('orderid desc')->limit(($page-1)*$size,$size)->select();	
			$json['pagecount']=ceil($count/$size);
			$json['pagecurrent']=$page-1;
			$json['data']['rows']=showitem($T2);;
			$json['status']['err']=0;
			$json['status']['msg']="请求成功！";
			$this->ajaxReturn($json, 'json');
			exit;
		}else{
			$S->rollback();
			$json['status']['err']=2;
			$json['status']['msg']="上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
	}

	//下移
	public function down(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$S=M('Feedback2');
		$T=M('Feedback2')->where("id=".I("post.cid",0)." and ver=".session("ver"))->find();
		$T1=M('Feedback2')->where("id=".I("post.pid",0)." and ver=".session("ver"))->find();
		if(!$T||!$T1){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$data["orderid"]=$T1["orderid"];
		$data1["orderid"]=$T["orderid"];
		$S->startTrans();
		if(M('Feedback2')->where('id ='.$T["id"])->save($data) && M('Feedback2')->where('id ='.$T1["id"])->save($data1)){
			$S->commit();
			$json['status']['err']=0;
			$json['status']['msg']="下移成功";
			$this->ajaxReturn($json, 'json');
			exit;	
		}else{
			$S->rollback();
			$json['status']['err']=2;
			$json['status']['msg']="执行错误，下移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
	}
	
	
	//普通下移下翻页
	public function pagedown(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$S=M('Feedback2');
		$T=M('Feedback2')->where("id=".I("post.cid",0)." and ver=".session("ver"))->find();
		if(!$T){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}		
		$page=I("post.page",0);
		$size=I("post.size",5);
		$count=M('Feedback2')->where("ver=".session("ver"))->count();
		$T1=M('Feedback2')->where("ver=".session("ver"))-> order('orderid desc')->limit(($page+1)*$size,1)->select();
		if($count==0){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		$data["orderid"]=$T1[0]["orderid"];
		$data1["orderid"]=$T["orderid"];
		$S->startTrans();
		if(M('Feedback2')->where('id ='.$T["id"])->save($data) && M('Feedback2')->where('id ='.$T1[0]["id"])->save($data1)){
			$S->commit();
			$T2=M('Feedback2')->where("ver=".session("ver"))-> order('orderid desc')->limit(($page+1)*$size,$size)->select();
			$json['pagecount']=ceil($count/$size);
			$json['pagecurrent']=$page+1;
			$json['data']['rows']=showitem($T2);
			$json['status']['err']=0;
			$json['status']['msg']="请求成功！";
			$this->ajaxReturn($json, 'json');
				
		}else{
			$S->rollback();
			$json['status']['err']=2;
			$json['status']['msg']="执行错误，下移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
	}
	
	//带查询的下移下翻
	public function searchdown(){
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$S=M('Feedback2');
		$T=M('Feedback2')->where("id=".I("post.cid",0)." and ver=".session("ver"))->find();
		if(!$T){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$page=I("post.page",0);
		$size=I("post.size",5);
		
		$count=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))->count();
		if($count==0){
			$json['status']['err']=2;
			$json['status']['msg']="数据错误，上移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$T1=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))-> order('orderid desc')->limit(($page+1)*$size,1)->select();	
		$data["orderid"]=$T1[0]["orderid"];
		$data1["orderid"]=$T["orderid"];
		$S->startTrans();
		if(M('Feedback2')->where('id ='.$T["id"])->save($data) && M('Feedback2')->where('id ='.$T1[0]["id"])->save($data1)){
			$S->commit();
			$count=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))->count();
			$T2=M('Feedback2')->where("newtitle like '%".I("post.searchtxt",'')."%' and ver=".session("ver"))-> order('orderid desc')->limit(($page+1)*$size,$size)->select();	
			$json['pagecount']=ceil($count/$size);
			$json['pagecurrent']=$page+1;
			$json['data']['rows']=showitem($T2);;
			$json['status']['err']=0;
			$json['status']['msg']="请求成功！";
			$this->ajaxReturn($json, 'json');	
		}else{
			$S->rollback();
			$json['status']['err']=2;
			$json['status']['msg']="下移失败.";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
	}


	//站点-读取
	public function EditRead(){
		loadcheck(34);
		$info=M('Feedback2')->where('id='.I("get.id",0).' and ver='.session("ver"))->find();
		if(!$info){
			header("Content-Type:text/html;charset=utf-8");
			echo "信息不存在!";
			exit;	
		}
		if($info['uid']==0){
			$uname='游客';	
		}else{
			$uinfo=M('sys_userinfo')->where('id='.$info['id'])->find();
			if($uinfo){
				$uname=$uinfo['uname'];	
			}else{
				$uname='未登录';		
			}
		}
		$this->assign('uname',$uname);
		$this->assign('info',$info);	
		$this->display('Index:feedback2Updata');
	}
	
	//留言-修改
	public function EditSave(){
		header('Content-Type:text/html;charset=utf-8 ');
		$json = array();
		if(!ajaxcheck(34)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			//$this->ajaxReturn($json, 'json');
			echo json_encode($json);
			exit;
		}
		if(I('get.id',0)==0){
			$json['status']['err']=2;
			$json['status']['msg']="信息提交有误！";
			//$this->ajaxReturn($json, 'json');
			echo json_encode($json);
			exit;	
		}
		$ret=M('Feedback2')->where('id='.I('get.id',0).' and ver='.session("ver"))->find();
		if(!$ret){
			$json['status']['err']=2;
			$json['status']['msg']="信息提交有误！";
			//$this->ajaxReturn($json, 'json');
			echo json_encode($json);
			exit;	
		}
		$data["mark"]=I('post.mark', '');
		$data["remark"]=I('post.remark', '');
		$data["putout"]=I('post.putout',1);
		if(M('Feedback2')->where('id='.I('get.id',0).' and ver='.session("ver"))->save($data)){
			login_info("【订单】 信息ID为[".I('get.id',0)."]的项修改成功", "Feedback2");
			$json['status']['err']=0;
			$json['status']['msg']="修改成功！";
			//$this->ajaxReturn($json, 'json');
			echo json_encode($json);
			exit;
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="修改数据失败！";
			//$this->ajaxReturn($json, 'json');
			echo json_encode($json);
			exit;
		}
	}	
	
}

//输出列表
function showitem($T){
	$data=array();
	foreach($T as $t=>$v){
		$data[$t]["id"]=$v['id'];
		$data[$t]["data"][]=$v['id'];
		$data[$t]["data"][]=$v['newtitle'];
		$data[$t]["data"][]=$v['tel'];
		$data[$t]["data"][]=$v['addtime'];
		$data[$t]["data"][]=$v['putout'];
		$data[$t]["data"][]="编辑^/System.php?s=/System/Feedback2/EditRead&id=".$v['id']."^_self";
	}
	return $data;
}