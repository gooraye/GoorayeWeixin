<?php
class ShakeAction extends BaseAction{
	public $shake_model;
	public function __construct(){
		parent::__construct();
		$this->token		= $this->_get('token');
		$this->assign('token',$this->token);
		$this->wecha_id	= $this->_get('wecha_id');
		if (!$this->wecha_id){
			$this->wecha_id='null';
		}
		$this->assign('wecha_id',$this->wecha_id);
		$this->shake_model=M('Shake');
	}
	// public function index(){
	// 	$info=array();
	// 	// $info['phone'] 		= $this->_get('phone');
	// 	$thisShake=$this->shake_model->where(array('token'=>$this->token,'id'=>intval($_GET['id']),'isopen'=>1))->find();
	// 	// var_dump($this->_get('wecha_id'));
	// 	// var_dump($this->_get('token'));
	// 	// var_dump($_GET['id']);
	// 	$thisShake['rule']=nl2br($thisShake['rule']);
	// 	$thisShake['info']=nl2br($thisShake['info']);
	// 	$this->assign('info',$thisShake);
	// 	// $shakeRt=M('Shake_rt')->where(array('shakeid'=>intval($_GET['id']),'wecha_id'=>$this->wecha_id))->find();
	// 	// if (!$shakeRt||!$shakeRt['phone']){
	// 	// 	exit('请先填写手机号');
	// 	// }
	// 	$this->display();
	// }
	public function shakeActivityStatus(){
		$thisShake=$this->shake_model->where(array('token'=>$this->token,'id'=>intval($_GET['id'])))->find();
		echo'{"isact":'.$thisShake['isact'].',"gameisover":"'.$thisShake['gameisover'].'"}';
		exit;
	}

    public function refreshScreen(){
    	$where=array();
    	$where['token']=$this->_post('token');
    	$where['id']=intval($_POST['id']);
    	$thisShake=$this->shake_model->where($data)->find();
		if ($thisShake){
			$shakeRt=M('Shake_rt')->where(array('shakeid'=>$where['id'],'wecha_id'=>$this->_post('wecha_id')))->find();
			$data=array();
			$data['token'] 		= $this->_post('token');
			$data['wecha_id'] = $this->_post('wecha_id');
			$data['shakeid'] = $this->_post('id');
			$data['count']=intval($_POST['count']);
			if ($shakeRt){
				M('Shake_rt')->where(array('shakeid'=>$where['id'],'wecha_id'=>$this->_post('wecha_id')))->save($data);
			}else {
				M('Shake_rt')->add($data);
			}
		}
	}


	//==========================================NEW=============================
public function index(){
		$info=array();
		// $info['phone'] 		= $this->_get('phone');
		$thisShake=$this->shake_model->where(array('token'=>$this->token,'id'=>intval($_GET['id']),'isopen'=>1))->find();
		// var_dump($this->_get('wecha_id'));
		// var_dump($this->_get('token'));
		// var_dump($_GET['id']);
		$thisShake['rule']=nl2br($thisShake['rule']);
		$thisShake['info']=nl2br($thisShake['info']);
		$this->assign('info',$thisShake);
		$shakeUser=M('Shake_user')->where(array('shakeid'=>intval($_GET['id']),'wecha_id'=>$this->wecha_id))->find();
		$this->assign('count',$shakeUser['count']);
		// $this->assign('prevcount',$shakeUser);
		
		$this->display();
	}

    //检测用户是否已加入，未加入转到授权页面
    public function checkJoin(){
        $wecha_id = $this->_get('wecha_id');
        $token = $this->_get('token');
        $shakeid = $this->_get('id');
        
        $map['wecha_id'] = $this->_get('wecha_id');
        $map['token'] = $this->_get('token');
        $map['shakeid'] = $this->_get('id');
        // $this->show();
        // var_dump($map);
        // exit();
        $user = M('Shake_user')->where($map)->find();
        if($user){
            redirect(C('site_url').U('Wap/Shake/index',array('token'=>$token,'wecha_id'=>$wecha_id,'id'=>$shakeid)));
        }else{
            import("ORG.OAuth2");
            $oauth2 = new \OAuth2();

            redirect($oauth2->getLink(C('site_url').U('Home/Index/oauth2' , array('token' => $this -> token,'shakeid'=>$shakeid )),'shake'));
        }
    }

    	//刷新
   	 public function refresh(){

	    	$where=array();
	    	$where['token']=$this->_post('token');
	    	$where['id']=intval($_POST['id']);
	    	$thisShake=$this->shake_model->where($data)->find();
		if ($thisShake && $thisShake['gameisover'] == 0){
			$shakeRt=M('Shake_user')->where(array('shakeid'=>$where['id'],'wecha_id'=>$this->_post('wecha_id')))->find();
			$data=array();
			
			$data['count']=intval($_POST['count']);

			//存在并发时出错可能性
			if ($shakeRt){
				//检测数目是否达到条件
				if($data['count'] >= $thisShake['endshake']){
					//查找前三名
					$top3User = M('Shake_user')->field('id,wecha_id,headurl,nickname')->where(array('shakeid'=>$where['id'],'token'=>$this->_post('token')))->limit(3)->order('count desc')->select();
					$this->SaveResult($top3User,$thisShake['result']);
					// echo "{\"endshake\":\"".$data['endshake']."\"}";
					
				}
				M('Shake_user')->where(array('shakeid'=>$where['id'],'wecha_id'=>$this->_post('wecha_id')))->save($data);

			}else{
				// M('Shake_user')->add($data);
			}

			echo "{\"gameisover\":\"0\"}";
		}else{
			$shakeUser=M('Shake_user')->where(array('shakeid'=>$where['id'],'wecha_id'=>$this->_post('wecha_id')))->find();
			// $map['shakeid'] = $where['id'];
			// $map['wecha_id'] = $this->_post('wecha_id');


			// $map['jointime'] = array(' gt ', $shakeUser['jointime'] );
			// $map['count'] = array(' eq ', $shakeUser['count']  );

			// M('Shake_user')->where($map)->order('count desc')->count();
			echo "{\"gameisover\":\"1\"}";
		}
	}

	//保存结果
	public function SaveResult($top3User,$result){
		//二维数组
		//[[],[],[]]
		$resArr = array();
		if(! empty($resArr)){	
			$resArr[] = unserialize($result);		
		}

		$resArr[] = $top3User;

		// $cnt = M('Shake_user')->where(array('shakeid'=>$where['id'],'wecha_id'=>$this->_post('wecha_id')))->count();

		//GAME OVER,'result'=>json_encode($resArr)

		$this->shake_model->where(array('id'=>intval($_POST['id']),'wecha_id'=>$this->_post('wecha_id')))->save(array('isact'=>0,'gameisover'=>1,'result'=>serialize($resArr)));

		// $data['mark'] = json_encode($resArr);
		// $data['aid'] = intval($_POST['id']);
		// $data['token'] = $this->_post('token');
		// $data['endtime'] = time();
		// $joinnum = ;

		//GAME OVER
		// M('shakelog')->lock(true)->add($data);
		
	}

}
?>