<?php
class AdmaAction extends BaseAction{
	//关注回复
	public function index(){
		if($this->_get('token')!=false){
			$adma=M('Adma')->where(array('token'=>$this->_get('token')))->find();
			if($adma==false){
				$this->error('不在的宣传页',U('User/Adma/index',array("token"=>$this->_get('token'))));
			}else{
				$this->assign('adma',$adma);
			}
		}else{
			$this->error('身份验证失败',U('User/Adma/index',array("token"=>$this->_get('token'))));
		}
		$this->display();
	}

}
?>