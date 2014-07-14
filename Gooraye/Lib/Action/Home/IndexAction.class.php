<?php
class IndexAction extends BaseAction{
	public $includePath;
	 public function _empty($name){
		$this->setBg();
            	$this->display($this->home_theme.':Index:loginv2');
       	}
	protected function _initialize(){
		parent::_initialize();
		$this->home_theme=$this->home_theme?$this->home_theme:'gooraye';
		$this->includePath='./tpl/Home/'.$this->home_theme.'/';
		
		$this->assign('includeHeaderPath',$this->includePath.'Public_header.html');
		$this->assign('includeFooterPath',$this->includePath.'Public_footer.html');
		
	}
	/*微信oauth2的回发处理方法*/
	public function oauth2(){
		$token = $this->_get('token');
		$code = $this->_get('code');
		$state = $this->_get('state');
		$shakeid = $this->_get('shakeid');
		import("ORG.OAuth2");
		$oauth2 = new \OAuth2();
		$errmsg = $oauth2->getInfo($code);
		if($errmsg == ""){

			//成功获取
			$userinfo = $oauth2->getUserInfo();

			if(empty($userinfo->errcode)){
			
				$map['token'] = $token;
				$map['shakeid'] = $shakeid;
				$map['wecha_id'] = $userinfo->openid;
				$user = M('Shake_user')->where($map)->find();
				if($user == FALSE){
					//针对摇一摇处理获得的用户信息
					$data['headurl'] = $userinfo->headimgurl;
					$data['wecha_id'] = $userinfo->openid;
					$data['nickname'] = $userinfo->nickname;
					$data['sex'] = $userinfo->sex;
					$data['jointime'] = time();
					$data['token'] = getToken();
					$data['shakeid'] = $shakeid;
					M('Shake_user')->add($data);
					// $this->show(U('Wap/Shake/index',array('token'=>$token,'wecha_id'=>$userinfo->openid,'id'=>$shakeid)));
					// $this->show()
					redirect(C('site_url').U('Wap/Shake/index',array('token'=>$token,'wecha_id'=>$userinfo->openid,'id'=>$shakeid)));
//					exit();
					// $this->redirect(C('site_url').U('Wap/Shake/index',array('token'=>$token,'wecha_id'=>$userinfo->openid,'id'=>$shakeid)),2,'页面跳转中');
				 }//End 1IF
				 else{
				 	redirect(C('site_url').U('Wap/Shake/index',array('token'=>$token,'wecha_id'=>$userinfo->openid,'id'=>$shakeid)));
				 }
					//End 2IF}

				// }//End 3IF
			}else{
				$this->show("<html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'><meta name='viewport' content='width=device-width,height=device-height,maximum-scale=1.0,user-scalable=no'><meta name='apple-mobile-web-app-capable' content='yes'><meta name='apple-mobile-web-app-status-bar-style' content='black'><meta name='format-detection' content='telephone=no'></head><body><p style='font-size:18px;color:red;text-align:center;width:100%;'>出错了：".$userinfo->errmsg."。请重新尝试！</p></body></html>");
			}
		}else{
				$this->show("<html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'><meta name='viewport' content='width=device-width,height=device-height,maximum-scale=1.0,user-scalable=no'><meta name='apple-mobile-web-app-capable' content='yes'><meta name='apple-mobile-web-app-status-bar-style' content='black'><meta name='format-detection' content='telephone=no'></head><body><p style='font-size:18px;color:red;text-align:center;width:100%;'>".$errmsg."请重新尝试！</p></body></html>");
		}
		// var_dump($oauth2);
	}
	/*公司员工登录*/
	public function clogin()
	{
		$cid = isset($_GET['cid']) ? intval($_GET['cid']) : 0;
		$k = isset($_GET['k']) ? $_GET['k'] : '';
		$this->assign('cid', $cid);
		$this->assign('k', $k);
		$this->display($this->home_theme.':Index:'.ACTION_NAME);
	}
	
	//设置背景
	public function setBg(){
			
		list($msec, $sec) = explode(' ', microtime());
		//播下随机数发生器种子，用srand函数调用seed函数的返回结果
		srand((float)$sec);
		$this->assign("bgindex",rand(1,2));
	}
	//
	public function index(){
		// $this->login();
		
		if(session('?uid') && session('?gid')){
			$this->redirect(U('User/Index/index',array('cid' => $cid)));
		}
		$this->setBg();
		$this->display($this->home_theme.':Index:loginv2');
		
		// $this->display($this->home_theme.':Index:clogin');
		// $where['status']=1;
		// if (C('agent_version')){
		// 	$where['agentid']=$this->agentid;
		// }
		// $links=D('Links')->where($where)->select();
		// $this->assign('links',$links);
		// $this->display($this->home_theme.':Index:'.ACTION_NAME);
	}
	public function verify(){
		Image::buildImageVerify(4,1,'png',0,28,'verify');
	}
	public function verifyLogin(){
		Image::buildImageVerify(4,1,'png',0,28,'loginverify');
	}
	public function resetpwd(){
		$uid=$this->_get('uid','intval');
		$code=$this->_get('code','trim');
		$rtime=$this->_get('resettime','intval');
		$info=M('Users')->find($uid);
		if( (md5($info['uid'].$info['password'].$info['email'])!==$code) || ($rtime<time()) ){
			$this->error('非法操作',U('Index/index'));
		}
		$this->assign('uid',$uid);
		$this->display($this->home_theme.':Index:'.ACTION_NAME);
	}
	public function price(){
		$this->display();
	}
	// public function fc(){
	// 	$this->display($this->home_theme.':Index:'.ACTION_NAME);
	// }
	// public function about(){
	// 	$this->display($this->home_theme.':Index:'.ACTION_NAME);
	// }
	// public function price(){
	// 	$groupWhere=array();
	// 	$groupWhere['status']=1;
	// 	if (C('agent_version')){
	// 		$groupWhere['agentid']=$this->agentid;
	// 	}
	// 	$groups=M('User_group')->where($groupWhere)->order('id ASC')->select();
	// 	$this->assign('groups',$groups);
	// 	$count=count($groups);
	// 	$this->assign('count',$count);
	// 	//
	// 	$prices=array();
	// 	$isCopyright=array();
	// 	$wechatNums=array();
	// 	$diynums=array();
	// 	$connectnums=array();
	// 	$activitynums=array();
	// 	$create_card_nums=array();
	// 	if ($groups){
	// 		foreach ($groups as $g){
	// 			array_push($prices,$g['price']);
	// 			array_push($isCopyright,$g['copyright']);
	// 			array_push($wechatNums,$g['wechat_card_num']);
	// 			array_push($diynums,$g['diynum']);
	// 			array_push($connectnums,$g['connectnum']);
	// 			array_push($activitynums,$g['activitynum']);
	// 			array_push($create_card_nums,$g['create_card_num']);
	// 		}
	// 	}
	// 	$this->assign('prices',$prices);
	// 	$this->assign('copyrights',$isCopyright);
	// 	$this->assign('wechatNums',$wechatNums);
	// 	$this->assign('diynums',$diynums);
	// 	$this->assign('connectnums',$connectnums);
	// 	$this->assign('activitynums',$activitynums);
	// 	$this->assign('create_card_nums',$create_card_nums);
	// 	//
	// 	if (C('agent_version')&&$this->agentid){
	// 		$funs=M('Agent_function')->where(array('status'=>1,'agentid'=>$this->agentid))->order('gid DESC')->select();
	// 	}else {
	// 		$funs=M('Function')->where(array('status'=>1))->order('gid DESC')->select();
	// 	}
	// 	if ($funs){
	// 		$i=0;
	// 		foreach ($funs as $f){
	// 			$funs[$i]['access']=array();
	// 			if ($groups){
	// 				foreach ($groups as $g){
	// 					if ($f['gid']>$g['id']){
	// 						$canUse=0;
	// 					}else {
	// 						$canUse=1;
	// 					}
	// 					array_push($funs[$i]['access'],$canUse);
	// 				}
	// 			}
	// 			$i++;
	// 		}
	// 	}
	// 	$this->assign('funs',$funs);
	// 	//
	// 	$this->display($this->home_theme.':Index:'.ACTION_NAME);
	// }
	public function help(){
		$this->display($this->home_theme.':Index:'.ACTION_NAME);
	}
	function think_encrypt($data, $key = '', $expire = 0) {
		$key  = md5(empty($key) ? C('DATA_AUTH_KEY') : $key);
		$data = base64_encode($data);
		$x    = 0;
		$len  = strlen($data);
		$l    = strlen($key);
		$char = '';

		for ($i = 0; $i < $len; $i++) {
			if ($x == $l) $x = 0;
			$char .= substr($key, $x, 1);
			$x++;
		}

		$str = sprintf('%010d', $expire ? $expire + time():0);

		for ($i = 0; $i < $len; $i++) {
			$str .= chr(ord(substr($data, $i, 1)) + (ord(substr($char, $i, 1)))%256);
		}
		return str_replace('=', '',base64_encode($str));
	}
	
	function common(){
		$where['status']=1;
		if (C('agent_version')){
			$where['agentid']=$this->agentid;
		}
		$cases=M('Case')->where($where)->order('id DESC')->select();
		$this->assign('cases',$cases);
		$this->display($this->home_theme.':Index:'.ACTION_NAME);
	}
}