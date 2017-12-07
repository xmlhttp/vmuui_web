<?php
namespace System\Controller;
use Think\Controller;
class ManagerPageController extends Controller {

    public function index(){
		If(!session("?admin")){
			 redirect('/System.php');
		}     
		if(I('get.ver', '')!=''){
			session('ver',I('get.ver'));
		}
		$T=M('sys_site')->where('ver=0')->find();
		$this->assign('web',$T["siteWeb"]);
		$this->assign('tree',show(0));
    	$this->display('Index:ManagerPage');
    }
	//退出
	public function loginout(){
		$ie=get_client_browser('');
		$os=getOS();
		$ip=get_client_ip();
		if(session('?admin')){
			if(session('admin')=='super admin'){
				$username = '--';
			}else{
				$username =	session('admin');
			}
		}else{
			$username = '-';	
		}
		$Note=M("sys_note");
		$data['login_name'] = $username;
   		$data['login_ip'] = $ip;
		$data['login_os'] = $os;
		$data['login_ie'] = $ie;
		$data['act'] = "【退出】退出系统";
		$data['login_tab'] = '';
   		$Note->add($data);
		session(null);
		redirect('/System.php');
	}
	
	//首页，版权
	public function BaseInfo(){
		$this->assign('name',gethostbyname($_SERVER['SERVER_NAME']));
		$ctime=ini_get('max_execution_time').'秒';
		$this->assign('ctime',$ctime);
		$this->assign('os',getOS());
		$this->display('ManagerPage:BaseInfo');
	}
	
	
	//用户协议
	public function UserAg(){
		loadcheck(2); 
		$this->display('ManagerPage:UserAg');
	}
	//收录地址
	public function Included(){
		loadcheck(3); 
		$this->display('ManagerPage:Included');
	}
	
	
	//网站设置
	public function sitesetup(){
		loadcheck(47); 
		$Site=M('sys_site')->where('ver="'.session("ver").'"')->find();
		$this->assign('Site',$Site);	
		$this->display('ManagerPage:sitesetup');
	}
	
	//网站设设置——信息修改
	public function sitesetup_updata(){
		$json = array();		
		if(!ajaxcheck(47)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}

		if(I('post.sitename1', '')!=""){		
			$data['sitename']=I('post.sitename1', '');
			$data['siteWeb']=I('post.siteweb1', '');
			$data['lock_ip']=I('post.lock_ip', '');
			$data['androidver']=I('post.androidver', '');
			$data['androidurl']=I('post.androidurl', '');
			$data['iosver']=I('post.iosver', '');
			$data['iosurl']=I('post.iosurl', '');

			if(M('sys_site')->where('ver=0')->save($data)){
				login_info("【系统设置】 系统设置修改成功", "sys_site");
				$json['status']['err']=0;
				$json['status']['msg']="更新成功！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="修改数据失败或数据没有修改！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}			
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="站点名称不能为空！";
			$this->ajaxReturn($json, 'json');
			exit;
			
		}
	}
	//邮箱设置
	public function MailSet(){
		loadcheck(48); 
		$Site=M('sys_site')->where('ver="'.session("ver").'"')->find();
		$this->assign('Site',$Site);	
		$this->display('ManagerPage:MailSet');
	}
	//更新邮箱设置
	public function MailSet_updata(){
		$json = array();		
		if(!ajaxcheck(48)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}

		if(I('post.smtp', '')!=""||I('post.mail', '')!=""||I('post.mailpwd', '')!=""){		
			$data['smtp']=I('post.smtp', '');
			$data['mail']=I('post.mail', '');
			$data['mailpwd']=I('post.mailpwd', '');
			if(M('sys_site')->where('ver=0')->save($data)){
				login_info("【邮箱设置】 邮箱设置修改成功", "sys_site");
				$json['status']['err']=0;
				$json['status']['msg']="更新成功！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="修改数据失败或数据没有修改！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}			
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="信息填写有误！";
			$this->ajaxReturn($json, 'json');
			exit;
			
		}
	}
	//检测邮箱设置
	public function MailSet_chk(){
		$json = array();
		if(!ajaxcheck(48)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		if(I('post.smtp', '')!=""||I('post.mail', '')!=""||I('post.mailpwd', '')!=""||I('post.sadd', '')!=""){		
			
			Vendor('PHPMailer.PHPMailerAutoload');  
        	$mail = new \PHPMailer(); //实例化
        	$mail->IsSMTP(); // 启用SMTP
        	$mail->Host=I('post.smtp', ''); //smtp服务器的名称（这里以QQ邮箱为例）
        	$mail->SMTPAuth =TRUE; //启用smtp认证
        	$mail->Username = I('post.mail', ''); //你的邮箱名
        	$mail->Password = I('post.mailpwd', ''); //邮箱密码
        	$mail->From = I('post.mail', ''); //发件人地址（也就是你的邮箱地址）
        	$mail->FromName = '测试'; //发件人姓名
        	$mail->AddAddress(I('post.sadd', ''),"SMTP检测接收地址");
        	$mail->WordWrap = 50; //设置每行字符长度
        	$mail->IsHTML(TRUE); // 是否HTML格式邮件
       		$mail->CharSet='utf-8'; //设置邮件编码
        	$mail->Subject ="这是一封测试邮件！"; //邮件主题
        	$mail->Body = "这是一封测试邮件，能看到该邮件表示SMTP设置正确。"; //邮件内容
        	$mail->AltBody = "这是一封测试邮件，能看到该邮件表示SMTP设置正确。"; //邮件正文不支持HTML的备用显示
       		if($mail->Send()){
				$json['status']['err']=0;
				$json['status']['msg']="发送成功！";
				$this->ajaxReturn($json, 'json');
				exit;
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="发送失败！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}
		
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="信息填写有误！";
			$this->ajaxReturn($json, 'json');
			exit;
			
		}
	}
	
	//修改密码
	public function ChangePwd(){
		loadcheck(51); 
		$this->display('ManagerPage:ChangePwd');
	}
	
	//保存密码
	public function ChangPwdSave(){
		$json = array();
		if(!ajaxcheck(51)){
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		if(I('post.oldpwd', '')=="" || I('post.pwd', '')=="" || I('post.repwd', '')==""){
			
			$json['status']['err']=2;
			$json['status']['msg']="数据填写有误！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		
		$T=M('sys_admin')->where('id='.session("uid").' and working=1')->select();
		if(count($T)==1){
			if($T[0]["passwords"]==md5(I('post.oldpwd'))){
				$data['passwords']=md5(I('post.pwd'));
				if(M('sys_admin')->where('id='.session("uid").' and working=1')->save($data)){
					$json['status']['err']=0;
					$json['status']['msg']="修改成功！";
					login_info("【修改】管理员[".session("admin")."]修改密码成功", "sys_admin");
					$this->ajaxReturn($json, 'json');
					exit;
				}else{
					$json['status']['err']=2;
					$json['status']['msg']="修改数据失败或数据没有修改！";
					$this->ajaxReturn($json, 'json');
					exit;
				}
				
				
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="旧密码不正确！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}
		}else{
			$json['status']['err']=1;
			$json['status']['msg']="您已经退出或权限不够！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
	}
	//目录结构编辑器
	public function xtree(){
		if(I('get.class', '')==""){
			header("Content-Type:text/html;charset=utf-8");
			echo "你无权访问本页!";
			exit;
		}
		$cls=I('get.class', '');
		$this->assign('cls',$cls);
		$this->display('ManagerPage:xtree');
	}
	//目录请求
	public function xtreeMenu(){
	
		if(I('get.class', '')==""){
			header("Content-Type:text/html;charset=utf-8");
			echo "你无权访问本页!";
			exit;
		}
		header("Content-type:text/xml");
		echo "<?xml version='1.0' encoding='utf-8'?><tree id='0'>" .show_xtree(0,I('get.class', ''))."</tree>";
			
	}
	//请求英文说明
	public function get_encont(){
		if(I('post.sid', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$en=M('deeptree')->where('id='.I('post.sid',0))->find();
		if($en){
			$json['txt']=$en["content_en"];
			$json['status']['err']=0;
			$json['status']['msg']="执行错误！";
			$this->ajaxReturn($json, 'json');
			exit;
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="执行错误！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}			
	}
	
	//添加子项
	public function AddItem(){
			if(I('post.class', '')==""||I('post.content', '')==""||I('post.parentid', '')==""||I('post.content_en', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$T=M('deeptree')->where('parentid='.I('post.parentid', '').' and class="'.I('post.class', '').'" and ver='.session("ver").' and content="'.I('post.content', '').'"')->select();
		if(count($T)>0){
			$json['status']['err']=2;
			$json['status']['msg']="信息有重复！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$regex = "/\/|\~|\!|\@|\#|\\$|\%|\^|\&|\*|\(|\)|\_|\+|\{|\}|\:|\<|\>|\?|\[|\]|\,|\.|\/|\;|\'|\`|\-|\=|\\\|\|/";
		$en=preg_replace($regex,"",I('post.content_en', ''));
		$cen=chken($en);
		$data['parentid']=I('post.parentid', '');
		$data['content']=I('post.content', '');
		$data['content_en']=$cen;
		$data['class']=I('post.class', '');
		$data['addtime']=date('Y-m-d H:i:s');		
		if($lastInsId =M('deeptree')->add($data)){
			$da['orderid']=$lastInsId;
			if(M('deeptree')->where('id='.$lastInsId)->save($da)){
				$json['time']=date('Y-m-d H:i:s');
				$json['cid']=$lastInsId;
				$json['status']['err']=0;
				$json['status']['msg']="添加成功！";
				login_info("【新建】 信息ID为[".$lastInsId."]的项添加成功", "sys_menu");
				$this->ajaxReturn($json, 'json');
				
				exit;	
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="写入数据库失败！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="写入数据库失败！";
			$this->ajaxReturn($json, 'json');
			exit;
		}		
	}
	//修改名称
	public function ChangeName(){
		if(I('post.class', '')==""||I('post.content', '')==""||I('post.cid', '')==""||I('post.content_en', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		if($Item=M('deeptree')->where('id='.I('post.cid',0).' and class="'.I('post.class', '').'"')->find()){
			$T=M('deeptree')->where('parentid='.$Item["parentid"].' and class="'.I('post.class', '').'" and ver='.session("ver").' and content="'.I('post.content', '').'"')->select();
			if(count($T)>0){
				$json['status']['err']=2;
				$json['status']['msg']="信息有重复！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}

			$regex = "/\/|\~|\!|\@|\#|\\$|\%|\^|\&|\*|\(|\)|\_|\+|\{|\}|\:|\<|\>|\?|\[|\]|\,|\.|\/|\;|\'|\`|\-|\=|\\\|\|/";
			$en=preg_replace($regex,"",I('post.content_en', ''));
			$cen=chken($en,I('post.cid',0));
			$data["content"]=I('post.content', '');
			$data["content_en"]=$cen;
			if(M('deeptree')->where('id='.I('post.cid',0))->save($data)){
				$json['time']=date('Y-m-d H:i:s');
				$json['cid']=I('post.cid',0);
				$json['status']['err']=0;
				$json['status']['msg']="修改成功！";
				login_info("【更新】 信息ID为[".I('post.cid',0)."]的项修改成功", "sys_menu");
				$this->ajaxReturn($json, 'json');
				exit;
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="内容填写有误或者没有修改！";
				$this->ajaxReturn($json, 'json');
				exit;
			}	
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="数据查询错误！";
			$this->ajaxReturn($json, 'json');
			exit;
		}	
		
	}
	//删除节点
	public function DelItem(){
		if(I('post.class', '')==""||I('post.cid', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		$ids=del_kid(I('post.cid', ''));
		$ids=substr($ids,0,strlen($ids)-1); 
		M("deeptree")->delete($ids);
		$ct=M(I('post.class', ''))->where('treeid like "%-'.I('post.cid', '').'%-"')->select();
		if(count($ct)==0){
			$json['time']=date('Y-m-d H:i:s');
			$json['cid']=I('post.cid', '');
			$json['status']['err']=0;
			$json['status']['msg']="删除成功！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		
		$data["treeid"]='none';
		if(M(I('post.class', ''))->where('treeid like "%-'.I('post.cid', '').'%-"')->save($data)){
			$json['time']=date('Y-m-d H:i:s');
			$json['cid']=I('post.cid', '');
			$json['status']['err']=0;
			$json['status']['msg']="删除成功！";
			login_info("【删除】 信息ID为[".I('post.cid',0)."]的项删除成功", "sys_menu");
			$this->ajaxReturn($json, 'json');
			exit;	
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		
	}
	
	//移动节点
	public function tondrag(){
		if(I('post.class', '')==""||I('post.id', '')==""||I('post.id2', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		$T=M('deeptree')->where('id='.I('post.id', '').' and class="'.I('post.class', '').'" and ver='.session("ver"))->find();
		$T1=M('deeptree')->where('parentid='.I('post.id2', '').' and class="'.I('post.class', '').'" and content="'.$T["content"].'" and ver='.session("ver"))->select();
			if(count($T1)>0){
				$json['status']['err']=2;
				$json['status']['msg']="信息有重复！";
				$this->ajaxReturn($json, 'json');
				exit;	
			}

		$ctreeid=Porder(I('post.id', 0)).'-';
		$etreeid=Porder(I('post.id2', 0)).'-'.I('post.id', 0).'-';
		$T2=M(I('post.class',''))->where("treeid like '%-".I('post.id', 0)."-%'")->select();
		if(count($T2)==0||$T2){
			$data['parentid']=I('post.id2',0);
			if(M('deeptree')->where('id='.I('post.id',0).' and ver='.session("ver"))->save($data)){
				$json['status']['err']=0;
				$json['status']['msg']="修改成功！";
				$json['time']=date('Y-m-d H:i:s');
				login_info("【拖动】 信息ID为[".I('post.id', '')."]的项拖动到[".I('post.id2', '')."]成功", "sys_menu");
				$this->ajaxReturn($json, 'json');
				exit;
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="内容填写有误或者没有修改1！";
				$this->ajaxReturn($json, 'json');
				exit;
			}
		}else{
			$sql="update db_".I('post.class', '')." set treeid=REPLACE (treeid,'".$ctreeid."','".$etreeid."') where treeid like '%-".I('post.id', '')."-%'";
			$data['parentid']=I('post.id2',0);
			if(M('deeptree')->where('id='.I('post.id',0).' and ver='.session("ver"))->save($data)&&M()-> query($sql)){
				$json['status']['err']=0;
				$json['status']['msg']="修改成功！";
				$json['time']=date('Y-m-d H:i:s');
				login_info("【拖动】 信息ID为[".I('post.id', '')."]的项拖动到[".I('post.id2', '')."]成功", "sys_menu");
				$this->ajaxReturn($json, 'json');
				exit;
			}else{
				$json['status']['err']=2;
				$json['status']['msg']="内容填写有误或者没有修改2！";
				$this->ajaxReturn($json, 'json');
				exit;
			}
		}		
	}
	
	//同级上移
	public function MoveUp(){
		if(I('post.class', '')==""||I('post.cid', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		$T=M('deeptree')->where('id='.I('post.cid', '').' and class="'.I('post.class', '').'" and ver='.session("ver"))->find();
		if(!$T){
			$json['status']['err']=4;
			$json['status']['msg']="数据有误，需要重新加载！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$T1=M('deeptree')->where('parentid='.$T['parentid'].' and orderid < '.$T['orderid'].' and class="'.I('post.class', '').'" and ver='.session("ver"))->order('orderid desc')->limit(1)->select();
		if(count($T1)!=1){
			$json['time']=date('Y-m-d H:i:s');
			$json['cid']=I('post.cid', '');
			$json['status']['err']=3;
			$json['status']['msg']="移动失败,已经到达该层级顶端！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$data["orderid"]=$T["orderid"];
		$data1["orderid"]=$T1[0]["orderid"];
		if(M('deeptree')->where('id='.I('post.cid', ''))->save($data1)&&M('deeptree')->where('id='.$T1[0]["id"])->save($data)){
			$json['time']=date('Y-m-d H:i:s');
			$json['cid']=I('post.cid', '');
			$json['status']['err']=0;
			$json['status']['msg']="移动成功！";
			login_info("【上移】 信息ID为[".I('post.cid', '')."]的项上移成功", "sys_menu");
			$this->ajaxReturn($json, 'json');
			exit;	
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="内容填写有误或者没有修改！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
	}
	
	//同级下移
	public function MoveDown(){
		if(I('post.class', '')==""||I('post.cid', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="参数不正确！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
		$T=M('deeptree')->where('id='.I('post.cid', '').' and class="'.I('post.class', '').'" and ver='.session("ver"))->find();
		if(!$T){
			$json['status']['err']=4;
			$json['status']['msg']="数据有误，需要重新加载！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$T1=M('deeptree')->where('parentid='.$T['parentid'].' and orderid > '.$T['orderid'].' and class="'.I('post.class', '').'" and ver='.session("ver"))->order('orderid asc')->limit(1)->select();
		if(count($T1)!=1){
			$json['time']=date('Y-m-d H:i:s');
			$json['cid']=I('post.cid', '');
			$json['status']['err']=3;
			$json['status']['msg']="移动失败,已经到达该层级顶端！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$data["orderid"]=$T["orderid"];
		$data1["orderid"]=$T1[0]["orderid"];
		if(M('deeptree')->where('id='.I('post.cid', ''))->save($data1)&&M('deeptree')->where('id='.$T1[0]["id"])->save($data)){
			$json['time']=date('Y-m-d H:i:s');
			$json['cid']=I('post.cid', '');
			$json['status']['err']=0;
			$json['status']['msg']="移动成功！";
			login_info("【下移】 信息ID为[".I('post.cid', '')."]的项下移成功", "sys_menu");
			$this->ajaxReturn($json, 'json');
			exit;	
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="内容填写有误或者没有修改！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
	}
	
	//修改结构-读取
	public function EditRead(){
		if(I("get.id",0)==0){
			header("Content-Type:text/html;charset=utf-8");
			echo "你无权访问本页!";
			exit;
		}
		$Te=M('deeptree')->where('id='.I("get.id"),0)->select();
		if(count($Te)!=1){
			header("Content-Type:text/html;charset=utf-8");
			echo "你无权访问本页!";
			exit;
		}
		$this->assign('xtree',$Te[0]);	
		$this->display('ManagerPage:xtreeUpdata');
	}
	//修改结构-修改
	public function EditSave(){	
		$json = array();
		if(I('get.id', 0)==0||I('post.content', '')==""){
			$json['status']['err']=2;
			$json['status']['msg']="信息填写有误！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$T=M('deeptree')->where('id='.I('get.id', ''))->select();
		if(count($T)!=1){
			$json['status']['err']=2;
			$json['status']['msg']="数据查询错误！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$T1=M('deeptree')->where('parentid='.$T[0]["parentid"].' and content="'.I('post.content', '').'" and id<>'.I('get.id', ''))->select();
		if(count($T1)>0){
			$json['status']['err']=2;
			$json['status']['msg']="目录名称重复！";
			$this->ajaxReturn($json, 'json');
			exit;	
		}
		$data['content']=I('post.content', '');
		$picname = $_FILES['xtreeimg']['name'];
		$upload = new \Think\Upload(); // 实例化上传类
        $upload->maxSize = 3145728; // 设置附件上传大小
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg'); // 设置附件上传类型
        $upload->rootPath = './'; // 设置附件上传根目录
		$upload->autoSub = true;
		$upload->subName = array('date','Y-m-d');
		if($picname!=""){
       		$upload->savePath = '/Web/UploadFile/Xtree/'; // 设置附件上传（子）目录
        	$info = $upload->uploadOne($_FILES['xtreeimg']);
			if($info) {// 上传错误提示错误信息
        		$pics=$info['savepath'].$info['savename'];
				$src=$_SERVER["DOCUMENT_ROOT"].$T[0]["top_img"];
				if (file_exists($src)){
					unlink($src);
				}
    		}
		}
		$data['top_img']=$pics;
		$json['pci']=$picname;
		if(I('post.page_tit', '')!=""){
			$data['page_tit']=I('post.page_tit', '');
		}
		if(I('post.page_key', '')!=""){
			$data['page_key']=I('post.page_key', '');
		}
		if(I('post.page_des', '')!=""){
			$data['page_des']=I('post.page_des', '');
		}
		if(M('deeptree')->where('id='.I('get.id', ''))->save($data)){
			$json['status']['err']=0;
			$json['status']['msg']="修改成功！";
			login_info("【修改】 信息ID为[".I('get.id', '')."]的项信息修改成功", "sys_menu");
			$this->ajaxReturn($json, 'json');
			exit;
		}else{
			$json['status']['err']=2;
			$json['status']['msg']="内容填写有误或者没有修改！";
			$this->ajaxReturn($json, 'json');
			exit;
		}
		
	}
	
}

//目录结构列表
function show_xtree($parentid,$cls){
	$menu= M('deeptree')->where('parentid='.$parentid.' and class="'.$cls.'" and ver='.session("ver"))->order('orderid asc')->select();
	if($menu){
		foreach($menu as $k=>$v){
			$tree.='<item text="'.$v["content"].'" id="'.$v["id"].'" db_id="'.$v["id"].'">'.show_xtree($v["id"],$cls).'</item>';
		}
	}
	return $tree;
}

//防止英文重复
function chken($en){
	$T=M('deeptree')->where('content_en="'.$en.'"')->select();
	if(count($T)>0){
		$temp=$en.rand(pow(10,1), pow(10,2)-1);
		return chken($temp);
	}else{
		return $en;
	}
}

//修改防止英文重复
function chken1($en,$sid){
	$T=M('deeptree')->where('content_en="'.$en.'" and id<>'.$sid)->select();
	if(count($T)>0){
		$temp=$en.rand(pow(10,1), pow(10,2)-1);
		return chken1($temp,$sid);
	}else{
		return $en;
	}
}

//删除节点
function del_kid($pid){
	$root= M('deeptree')->where('parentid='.$pid.' and ver='.session("ver"))->order('orderid asc')->select();
	$ids.=$pid.",";
	if($root){
		foreach($root as $k=>$v){
			$ids.=del_kid($v["id"]);
		}
	}
	return $ids;
}
//节点顺序
function Porder($id){
	$treeids='-'.$id;
	$child=M('deeptree')->where('id='.$id.' and ver='.session("ver"))->find();
	if($child){
		if($child['parentid']!=0){
			$treeids=Porder($child['parentid']).$treeids;	
		}	
	}
	return $treeids;
	
}
