<?php
class UserAction extends BaseAction{
    public $userGroup;
    public $token;
    public $user;
    public $userFunctions;
    protected function _initialize(){
        parent :: _initialize();
        $userinfo = M('User_group') -> where(array('id' => session('gid'))) -> find();
        $this -> userGroup = $userinfo;
        $users = M('Users') -> where(array('id' => $_SESSION['uid'])) -> find();
        $this -> user = $users;
        $this -> assign('thisUser', $users);
        $this -> assign('viptime', $users['viptime']);
        if(session('uid')){
            if($users['viptime'] < time()){
                session(null);
                session_destroy();
                unset($_SESSION);
                $this -> error('您的帐号已经到期，请联系经销商续费！');
            }
        }
        $wecha = M('Wxuser') -> field('wxname,weixin,wxid,headerpic') -> where(array('token' => session('token'), 'uid' => session('uid'))) -> find();
        $this -> assign('wecha', $wecha);
        $this -> token = session('token');
        $this -> assign('token', $this -> token);
        $token_open = M('token_open') -> field('queryname') -> where(array('token' => $this -> token)) -> find();
        $this -> userFunctions = explode(',', $token_open['queryname']);
        $this -> assign('userinfo', $userinfo);

        if(session('uid') == false){
            if (MODULE_NAME != 'Upyun'){
                $this -> redirect('Home/Index/login');
            }
        }
        if (session('companyLogin') == 1 && !in_array(MODULE_NAME, array('Attachment', 'Repast', 'Upyun', 'Hotels'))){
            $this -> redirect(U('User/Repast/index', array('cid' => session('companyid'))));
        }

        define('UNYUN_BUCKET', C('up_bucket'));
        define('UNYUN_USERNAME', C('up_username'));
        define('UNYUN_PASSWORD', C('up_password'));
        define('UNYUN_FORM_API_SECRET', C('up_form_api_secret'));
        define('UNYUN_DOMAIN', C('up_domainname'));
        $this -> assign('upyun_domain', 'http://' . UNYUN_DOMAIN);
        $this -> assign('upyun_bucket', UNYUN_BUCKET);
        $token = $this -> _session('token');
        if (!$token){
            if (isset($_GET['token'])){
                $token = $this -> _get('token');
            }else{
                $token = 'admin';
            }
        }
        $options = array();
        $now = time();
        $options['bucket'] = UNYUN_BUCKET;
        $options['expiration'] = $now + 600;
        $options['save-key'] = '/' . $token . '/{year}/{mon}/{day}/' . $now . '_{random}{.suffix}';
        $options['allow-file-type'] = C('up_exts');
        $options['content-length-range'] = '0,' . intval(C('up_size')) * 1000;
        if (intval($_GET['width'])){
            $options['x-gmkerl-type'] = 'fix_width';
            $options['fix_width '] = $_GET['width'];
        }
        $policy = base64_encode(json_encode($options));
        $sign = md5($policy . '&' . UNYUN_FORM_API_SECRET);
        

        $menuhtml = $this -> createMenus();      

        $this -> assign('menuhtml',$menuhtml);
        $this -> assign('editor_upyun_sign', $sign);
        $this -> assign('editor_upyun_policy', $policy);
    }
    public function canUseFunction($funname){
        $token_open = M('token_open') -> field('queryname') -> where(array('token' => $this -> token)) -> find();
        if (C('agent_version') && $this -> agentid){
            $function = M('Agent_function') -> where(array('funname' => $funname, 'agentid' => $this -> agentid)) -> find();
        }else{
            $function = M('Function') -> where(array('funname' => $funname)) -> find();
        }
        if (intval($this -> user['gid']) < intval($function['gid']) || strpos($token_open['queryname'], $funname) === false){
            $this -> error('您还没有开启该模块的使用权,请到功能模块中添加', U('Function/index', array('token' => $this -> token)));
        }
    }

    //菜单
    public function createMenus(){
        // $menus = S('gr_menus');
        // if(empty($menus)){
            $vipid = $this -> userGroup['id'];

          if(session('companyLogin') == 1){

            $menus = array( array(
            'name'=>'行业应用',
            'display'=>0,
            'subs'=>array(
                array('name'=>'订餐（无线打印）','link'=>U('Repast/index',array('token'=>getToken(),'cid'=>$this->_get('cid'))),
                  'new'=>0,'selectedCondition'=>array('m'=>'Repast')
                ),
              array('name'=>'酒店宾馆','link'=>U('Hotels/index',array('token'=>getToken(),'cid'=>$this->_get('cid'))),'new'=>0,'selectedCondition'=>array('m'=>'Hotels')),
          )));
        }else{

            $menus =  getMenu($vipid);
      }
        //     S('gr_menus',$menus);
        // }
        $menuhtml = $this->createHTMLMenu($menus);
        return $menuhtml;
    }

    //组织菜单的html
    public function createHTMLMenu($menus)
    {
        $html = '';
        $i=0;

        //获得查询参数
        $parms=$_SERVER['QUERY_STRING'];
        $parms1=explode('&',$parms);
        $parmsArr=array();
        if ($parms1){
          foreach ($parms1 as $p){
            $parms2=explode('=',$p);
            $parmsArr[$parms2[0]]=$parms2[1];
          }
        }

        // var_dump($parmsArr);
        //查询当前激活菜单
        $subMenus=array();
        $t=0;
        $currentMenuID=0;
        $currentParentMenuID=0;
        foreach ($menus as $m){
          $loopContinue=1;
          if ($m['subs']){
            $st=0;
            foreach ($m['subs'] as $s){
             
              $includeArr=1;
              if ($s['selectedCondition']){
                foreach ($s['selectedCondition'] as $key=>$condition){
                  // var_dump($key);
                  if ($condition != $parmsArr[$key]){
                  // if (!in_array($condition,$parmsArr)){
                        $includeArr = 0;
                        break;
                  }
                }
              }

              if ($includeArr){
                if ($s['exceptCondition']){
                  foreach ($s['exceptCondition'] as $eptCondition){
                    if (in_array($eptCondition,$parmsArr)){
                      $includeArr=0;
                      break;
                    }
                  }
                }
              }
            
              //
              if ($includeArr){
                $currentMenuID=$st;
                $currentParentMenuID=$t;
                $loopContinue=0;
                break;
              }
              $st++;
            }
            //
            if ($loopContinue==0){
              break;
            }
          }
          $t++;
        }
        //
        /*
        echo $currentMenuID;
        echo $currentParentMenuID;
        */
        //
        foreach ($menus as $m){
          //
          $displayStr='';
          if ($currentParentMenuID!=0||0!=$currentMenuID){
            $m['display']=0;
          }
          if (!$m['display']){
            $displayStr=' style="display:none"';
          }
          if ($currentParentMenuID==$i){
            $displayStr='';
          }
          $aClassStr='';
          if ($displayStr){
            $aClassStr=' nav-header-current';
          }
          $html .= '<a class="nav-header'.$aClassStr.'">'.$m['name'].'</a><ul class="ckit"'.$displayStr.'>';
          if ($m['subs']){
            $j=0;
            foreach ($m['subs'] as $s){
              $selectedClassStr='subCatalogList';
              if ($currentParentMenuID==$i&&$j==$currentMenuID){
                $selectedClassStr='selected';
              }
              $newStr='';
              if ($s['test']){ //测试中的功能
                $newStr.='<span class="test"></span>';
              }else {
              if ($s['new']){ //新开发功能
                $newStr.='<span class="new"></span>';
              }
              }

              $html .= '<li class="'.$selectedClassStr.'"> <a href="'.$s['link'].'">'.$s['name'].'</a>'.$newStr.'</li>';
              
              $j++;
            }
          }
          $html .= '</ul>';
          $i++;
        }

        return $html;
        // $this->assign("menuhtml",$html);
    //  $this->display();
        // $this->show('123213');
    }


}
?>