<?php
class WeixinAction extends Action{
    private $token;
    private $fun;
    private $data = array();
    public $fans;
    private $my = '小古';
    public $wxuser;
    public $apiServer;
    public function index(){
        if (!class_exists('SimpleXMLElement')){
            exit('SimpleXMLElement class not exist');
        }
        if (!function_exists('dom_import_simplexml')){
            exit('dom_import_simplexml function not exist');
        }
        $this -> token = $this -> _get('token', "htmlspecialchars");
        if(!preg_match("/^[0-9a-zA-Z]{3,42}$/", $this -> token)){
            exit('error token');
        }
        
        $weixin = new Wechat($this -> token);
    
        // var_dump($weixin);
        $data = $weixin -> request();
        addWeixinLog($data,"在 reply 之前");
        $this -> data = $weixin -> request();
        $this -> fans = S('fans_' . $this -> token . '_' . $this -> data['FromUserName']);
        if (!$this -> fans || 1){
            $this -> fans = M('Userinfo') -> where(array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> find();
            S('fans_' . $this -> token . '_' . $this -> data['FromUserName'], $this -> fans);
        }
        $this -> wxuser = S('wxuser_' . $this -> token);
        if (!$this -> wxuser || 1){
            $this -> wxuser = D('Wxuser') -> where(array('token' => $this -> token)) -> find();
            S('wxuser_' . $this -> token, $this -> wxuser);
        }
        $this -> my = C('site_my');
        $this -> apiServer = apiServer :: getServerUrl();
        $open = M('Token_open') -> where(array('token' => $this -> _get('token'))) -> find();
        $this -> fun = $open['queryname'];
        addWeixinLog($data,"在 reply 之前");
        list($content, $type) = $this -> reply($data);
         addWeixinLog($content,$type);
        // var_dump($content);
        $weixin -> response($content, $type);
    }
    
    private function reply($data){
        if('CLICK' == $data['Event']){
            $data['Content'] = $data['EventKey'];
            $this -> data['Content'] = $data['EventKey'];
        }elseif($data['Event'] == 'SCAN'){
            $data['Content'] = $this -> getRecognition($data['EventKey']);
            // addWeixinLog($data['Content'],"SCAN");
            $this -> data['Content'] = $data['Content'];
        }elseif($data['Event'] == 'MASSSENDJOBFINISH'){
            //群发任务结束
            M('Send_message') -> where(array('msg_id' => $data['msg_id'])) -> save(array('reachcount' => $data['SentCount']));

        }elseif('subscribe' == $data['Event']){
            //关注时回复
            $this -> behaviordata('follow', '1');
            $this -> requestdata('follownum');
            $follow_data = M('Areply') -> field('home,keyword,content') -> where(array('token' => $this -> token)) -> find();
            if(!(strpos($data['EventKey'], 'qrscene_') === FALSE)){
                //如果是二维码关注
                $follow_data['keyword'] = $this -> getRecognition(str_replace('qrscene_', '', $data['EventKey']));

                //新版摇一摇
                $thisShake = M('Shake') -> where(array('isopen' => 1, 'token' => $this -> token)) -> find();
                if($thisShake && trim($follow_data['keyword']) == trim($thisShake['keyword'])){
                    return $this->shakeOAuth2();
                }

            }

            if($follow_data['home'] == 1){
                if(trim($follow_data['keyword']) == '首页' || $follow_data['keyword'] == 'home'){
                    return $this -> shouye();
                }elseif(trim($follow_data['keyword']) == '我要上网'){
                    return $this -> wysw();
                }

                return $this -> keyword($follow_data['keyword']);
            }else{
                return array(html_entity_decode($follow_data['content']), 'text');
            }
        }elseif('unsubscribe' == $data['Event']){
            $this -> requestdata('unfollownum');
        }elseif($data['Event'] == 'LOCATION'){
            return array('', 'text');
        }


        if('voice' == $data['MsgType']){
            $data['Content'] = $data['Recognition'];
            $this -> data['Content'] = $data['Recognition'];
        }

        // if($data['Content'] == 'wechat ip'){
        //     return array($_SERVER['REMOTE_ADDR'], 'text');
        // }

        // addWeixinLog($data,"api");


        //第三方API
        if(!(strpos($this -> fun, 'api') === FALSE) && $data['Content']){
            $apiData = M('Api') -> where(array('token' => $this -> token, 'status' => 1)) -> select();
            foreach($apiData as $apiArray){
                if(!(strpos($data['Content'], $apiArray['keyword']) === FALSE)){
                    $api['type'] = $apiArray['type'];
                    $api['url'] = $apiArray['url'];
                    break;
                }
            }
            if($api != false){
                $vo['fromUsername'] = $this -> data['FromUserName'];
                $vo['Content'] = $this -> data['Content'];
                $vo['toUsername'] = $this -> token;
                if($api['type'] == 2){
                    $apidata = $this -> api_notice_increment($api['url'], $vo);
                    return array($apidata, 'text');
                }else{
                    $xml = file_get_contents("php://input");
                    $apidata = $this -> api_notice_increment($api['url'], $xml);
                    header("Content-type: text/xml");
                    exit($apidata);
                    return false;
                }
            }
        }


        //新版摇一摇
        $thisShake = M('Shake') -> where(array('isopen' => 1, 'token' => $this -> token)) -> find();
        if($thisShake && trim($data['Content']) == trim($thisShake['keyword'])){
            return $this->shakeOAuth2();
        }

        //旧版摇一摇
        // addWeixinLog($data,"shake");
        // if((!(strpos($data['Content'], 'shake') === FALSE) || !(strpos(strtolower($data['Content']), 'shake') === FALSE)) && strlen($data['Content']) == 16){
        //     $mp = str_replace('shake', '', strtolower($data['Content']));
        //     $thisShake = M('Shake') -> where(array('isopen' => 1, 'token' => $this -> token)) -> find();
        //     //有开启状态的摇一摇活动
        //     if ($thisShake){

        //         $shakeRt = M('Shake_rt') -> where(array('isopen' => 1, 'shakeid' => $thisShake['id'], 'token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> find();
        //         $data = array();
        //         $data['token'] = $this -> token;
        //         $data['wecha_id'] = $this -> data['FromUserName'];
        //         $data['shakeid'] = $thisShake['id'];
        //         $data['phone'] = htmlspecialchars($mp);

        //         if ($shakeRt){
        //             //用户已经参加
        //             $srt = M('Shake_rt') -> where(array('shakeid' => $thisShake['id'], 'wecha_id' => $this -> data['FromUserName'])) -> save($data);
        //             if ($srt){
        //                 return array(array(array($thisShake['title'] . '，点击参与活动', $thisShake['intro'] . '。您的手机号设置成功，点击即可参与活动', $thisShake['thumb'], C('site_url') . '/index.php?g=Wap&m=Shake&a=index&id=' . $thisShake['id'] . '&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
        //             }else{
        //                 return array('摇一摇活动手机号修改失败', 'text');
        //             }
        //         }else{
        //             //用户未参加
        //             $srt = M('Shake_rt') -> add($data);
        //             if ($srt){
        //                 return array(array(array($thisShake['title'] . '，点击参与活动', $thisShake['intro'] . '。您的手机号设置成功，点击即可参与活动', $thisShake['thumb'], C('site_url') . '/index.php?g=Wap&m=Shake&a=index&id=' . $thisShake['id'] . '&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
        //             }else{
        //                 return array('摇一摇活动手机号设置失败', 'text');
        //             }
                    
        //         }
        //     }
        // }

        //微上墙模块
        if(strtolower($data['Content']) == 'wxopen'){
            $thisItem = M('Wall') -> where(array('token' => $this -> token, 'isopen' => 1)) -> find();
            $memberRecord = M('Wall_member') -> where(array('wallid' => $thisItem['id'], 'wecha_id' => $this -> data['FromUserName'])) -> find();
            if (!$memberRecord){
                    //
                    return $this->wallOAuth2();
            }else{
                M('Userinfo') -> where(array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> save(array('wallopen' => 1));
                return array('您已进入微信墙对话模式，您下面发送的文字和图片信息将会显示在大屏幕上，如需退出微信墙模式，请输入“wxquit”', 'text');
            }
            // M('Userinfo') -> where(array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> save(array('wallopen' => 1));
            // S('fans_' . $this -> token . '_' . $this -> data['FromUserName'], NULL);
            // return array('您已进入微信墙对话模式，您下面发送的所有文字和图片信息都将会显示在大屏幕上，如需退出微信墙模式，请输入“wxquit”', 'text');
        }elseif(strtolower($data['Content']) == 'wxquit'){
            M('Userinfo') -> where(array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> save(array('wallopen' => 0));
            S('fans_' . $this -> token . '_' . $this -> data['FromUserName'], NULL);
            return array('成功退出微信墙对话模式', 'text');
        }
        if ($this -> fans['wallopen']){
            $thisItem = M('Wall') -> where(array('token' => $this -> token, 'isopen' => 1)) -> find();
            if (!$thisItem){
                return array('微信墙活动不存在,如需退出微信墙模式，请输入“wxquit”', 'text');
            }else{
                $memberRecord = M('Wall_member') -> where(array('wallid' => $thisItem['id'], 'wecha_id' => $this -> data['FromUserName'])) -> find();
                if (!$memberRecord){
                    //
                    return $this->wallOAuth2();
//                    return array('<a href="' . C('site_url') . '/index.php?g=Wap&m=Wall&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '">点击这里完善信息后再参加此活动</a>', 'text');

                }else{
                    $row = array();
                    if ('image' != $data['MsgType']){
                        $message = str_replace('wx#', '', $data['Content']);
                    }else{
                        $message = '';
                        $row['picture'] = $data['PicUrl'];
                    }
                    $row['uid'] = $memberRecord['id'];
                    $row['wecha_id'] = $this -> data['FromUserName'];
                    $row['token'] = $this -> token;
                    $thisWall = $thisItem;
                    $thisMember = $memberRecord;
                    $row['wallid'] = $thisWall['id'];
                    $row['content'] = $message;
                    $row['uid'] = $thisMember['id'];
                    $row['time'] = time();
                    M('Wall_message') -> add($row);
                    return array('上墙成功，如需退出微信墙模式，请输入“wxquit”', 'text');
                }
            }
        }

         // addWeixinLog($data,"附近");
        //附近查找
        if(!(strpos($data['Content'], '附近') === FALSE)){
            $this -> recordLastRequest($data['Content']);
            $return = $this -> fujin(array(str_replace('附近', '', $data['Content'])));
        }elseif(!(strpos($data['Content'], '公交') === FALSE) && (strpos($data['Content'], '坐公交') === FALSE)){
            $return = $this -> gongjiao(explode('公交', $data['Content']));
        }elseif(!(strpos($data['Content'], '域名') === FALSE)){
            $return = $this -> yuming(str_replace('域名', '', $data['Content']));
        }elseif(!(strpos($data['Content'], '音乐') === FALSE)){
            // addWeixinLog($data['Content'],"音乐d");
            $return = $this -> yinle(str_replace('音乐', '', $data['Content']));
        }elseif(!(strpos($data['Content'], '人品') === FALSE)){
            // addWeixinLog($data['Content'],"音乐d");
            $return = $this -> renpin(str_replace('人品', '', $data['Content']));
        }elseif(!(strpos($data['Content'], '快递') === FALSE)){
            // addWeixinLog($data['Content'],"音乐d");
            $return = $this -> kuaidi(str_replace('快递', '', $data['Content']));
        }else{
            // addWeixinLog($data,"附近 else");
            $check = $this -> user('connectnum');
            if($check['connectnum'] != 1){
                return array(C('connectout'), 'text');
            }
            // addWeixinLog($key,"附近 else1");
            $Pin = new GetPin();
            $key = $data['Content'];
            $datafun = explode(',', $this -> fun);
            $tags = $this -> get_tags($key);
            // addWeixinLog($tags,"附近 else foreach ");
            $back = explode(',', $tags);
            // addWeixinLog($key,"附近 else2");
            if ($key == '首页' || $key == 'home'){
                return $this -> home();
            }
// addWeixinLog($back;
             // addWeixinLog($datafun,"附近 else foreach");
            foreach($back as $keydata => $data){
                //addWeixinLog($back,"附近 else foreach");
                $string = $Pin -> Pinyin($data);
                 // addWeixinLog($string,"附近 else foreach");
                if(in_array($string, $datafun) && $string){
                    if($string == 'fujin'){
                        $this -> recordLastRequest($key);
                    }
                    $this -> requestdata('textnum');
                    unset($back[$keydata]);
                    
                    //判断以关键字中文的拼音的函数是否存在
                    if (method_exists('WeixinAction', $string)){
                        eval('$return= $this->' . $string . '($back);');
                    }else{
                    }
                    break;
                }
            }
        }



        // addWeixinLog($data,"cheat");
        if(!empty($return)){
            if(is_array($return)){
                return $return;
            }else{
                return array($return, 'text');
            }
        }else{
            if(!(strpos($key, 'cheat') === FALSE)){
                $arr = explode(' ', $key);
                $datas['lid'] = intval($arr[1]);
                $lotteryPassword = $arr[2];
                $datas['prizetype'] = intval($arr[3]);
                $datas['intro'] = $arr[4];
                $datas['wecha_id'] = $this -> data['FromUserName'];
                $thisLottery = M('Lottery') -> where(array('id' => $datas['lid'])) -> find();
                if ($lotteryPassword == $thisLottery['parssword']){
                    $rt = M('Lottery_cheat') -> add($datas);
                    if ($rt){
                        return array('设置成功', 'text');
                    }
                    return array('设置失败:未知原因', 'text');
                }else{
                    return array('设置失败:密码不对', 'text');
                }
            }
            if($this -> data['Location_X']){
                $this -> recordLastRequest($this -> data['Location_Y'] . ',' . $this -> data['Location_X'], 'location');
                return $this -> map($this -> data['Location_X'], $this -> data['Location_Y']);
            }
            if(!(strpos($key, '开车去') === FALSE) || !(strpos($key, '坐公交') === FALSE) || !(strpos($key, '步行去') === FALSE)){
                $this -> recordLastRequest($key);
                $user_request_model = M('User_request');
                $loctionInfo = $user_request_model -> where(array('token' => $this -> _get('token'), 'msgtype' => 'location', 'uid' => $this -> data['FromUserName'])) -> find();
                if ($loctionInfo && intval($loctionInfo['time'] > (time()-60))){
                    $latLng = explode(',', $loctionInfo['keyword']);
                    return $this -> map($latLng[1], $latLng[0]);
                }
                return array('请发送您所在的位置', 'text');
            }

        // addWeixinLog($key,"用户发送来的文本内容");
            //用户发来的内容如果
        switch($key){
            
            case '首页': case 'home': return $this -> home();
                break;
            case '主页': return $this -> home();
                break;
            case '地图': return $this -> companyMap();
            case '最近的': $this -> recordLastRequest($key);
                $user_request_model = M('User_request');
                $loctionInfo = $user_request_model -> where(array('token' => $this -> _get('token'), 'msgtype' => 'location', 'uid' => $this -> data['FromUserName'])) -> find();
                if ($loctionInfo && intval($loctionInfo['time'] > (time()-60))){
                    $latLng = explode(',', $loctionInfo['keyword']);
                    return $this -> map($latLng[1], $latLng[0]);
                }
                return array('请发送您所在的位置', 'text');
                break;
            case '帮助': return $this -> help();
                break;
            case 'help': return $this -> help();
                break;
            case '会员卡': return $this -> member();
                break;
            case '会员': return $this -> member();
                break;
            case '3g相册': return $this -> xiangce();
                break;
            case '相册': return $this -> xiangce();
                break;
            case '商城': $pro = M('reply_info') -> where(array('infotype' => 'Shop', 'token' => $this -> token)) -> find();
                $url = C('site_url') . '/index.php?g=Wap&m=Store&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com';
                if ($pro['apiurl']){
                    $url = str_replace('&amp;', '&', $pro['apiurl']);
                }
                return array(array(array($pro['title'], strip_tags(htmlspecialchars_decode($pro['info'])), $pro['picurl'], $url)), 'news');
                break;
            case '订餐': $pro = M('reply_info') -> where(array('infotype' => 'Dining', 'token' => $this -> token)) -> find();
                $url = C('site_url') . '/index.php?g=Wap&m=Repast&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com';
                if ($pro['apiurl']){
                    $url = str_replace('&amp;', '&', $pro['apiurl']);
                }
                return array(array(array($pro['title'], strip_tags(htmlspecialchars_decode($pro['info'])), $pro['picurl'], $url)), 'news');
                break;
            case '留言': $pro = M('reply_info') -> where(array('infotype' => 'message', 'token' => $this -> token)) -> find();
                if($pro){
                    return array(array(array($pro['title'], strip_tags(htmlspecialchars_decode($pro['info'])), $pro['picurl'], C('site_url') . '/index.php?g=Wap&m=Reply&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com')), 'news');
                }else{
                    return array(array(array('留言板', '在线留言', rtrim(C('site_url'), '/') . '/tpl/Wap/default/common/css/style/images/ly.jpg', C('site_url') . '/index.php?g=Wap&m=Reply&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com')), 'news');
                }
                break;
            case '酒店': $pro = M('reply_info') -> where(array('infotype' => 'Hotels', 'token' => $this -> token)) -> find();
                if($pro){
                    return array(array(array($pro['title'], strip_tags(htmlspecialchars_decode($pro['info'])), $pro['picurl'], C('site_url') . '/index.php?g=Wap&m=Hotels&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
                }else{
                    return array(array(array('酒店', '酒店在线预订', rtrim(C('site_url'), '/') . 'tpl/static/images/homelogo.png', C('site_url') . '/index.php?g=Wap&m=Hotels&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
                }
                break;
            case '团购': $pro = M('reply_info') -> where(array('infotype' => 'Groupon', 'token' => $this -> token)) -> find();
                $url = C('site_url') . '/index.php?g=Wap&m=Groupon&a=grouponIndex&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com';
                if ($pro['apiurl']){
                    $url = str_replace('&amp;', '&', $pro['apiurl']);
                }
                return array(array(array($pro['title'], strip_tags(htmlspecialchars_decode($pro['info'])), $pro['picurl'], $url)), 'news');
                break;
            case '全景': $pro = M('reply_info') -> where(array('infotype' => 'panorama', 'token' => $this -> token)) -> find();
                if($pro){
                    return array(array(array($pro['title'], strip_tags(htmlspecialchars_decode($pro['info'])), $pro['picurl'], C('site_url') . '/index.php?g=Wap&m=Panorama&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com')), 'news');
                }else{
                    return array(array(array('360°全景看车看房', '通过该功能可以实现3D全景看车看房', rtrim(C('site_url'), '/') . '/tpl/User/default/common/images/panorama/360view.jpg', C('site_url') . '/index.php?g=Wap&m=Panorama&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com')), 'news');
                }
                break;
            case '微房产': $Estate = M('Estate') -> where(array('token' => $this -> token)) -> find();
                return array(array(array($Estate['title'], str_replace('&nbsp;', '', strip_tags(htmlspecialchars_decode($Estate['estate_desc']))), $Estate['cover'], C('site_url') . '/index.php?g=Wap&m=Estate&a=index&&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $Estate['id'] . '&sgssz=mp.weixin.qq.com')), 'news');
                break;
            case '讨论社区': case '论坛': $fconfig = M('Forum_config') -> where(array('token' => $this -> token)) -> find();
                return array(array(array($fconfig['forumname'], str_replace('&nbsp;', '', strip_tags(htmlspecialchars_decode($fconfig['intro']))), $fconfig['picurl'], C('site_url') . '/index.php?g=Wap&m=Forum&a=index&&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
                break;
            default: $check = $this -> user('diynum', $key);
                if($check['diynum'] != 1){
                    return array(C('connectout'), 'text');
                }else{
                    // addWeixinLog($key,"默认 处理");
                    return $this -> keyword($key);
                }
            }
        }
    }
    //相册
    private function xiangce(){
        $this -> behaviordata('album', '', '1');
        $photo = M('Photo') -> where(array('token' => $this -> token, 'status' => 1)) -> find();
        $data['title'] = $photo['title'];
        $data['keyword'] = $photo['info'];
        $data['url'] = rtrim(C('site_url'), '/') . U('Wap/Photo/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName']));
        $data['picurl'] = $photo['picurl']?$photo['picurl']:rtrim(C('site_url'), '/') . '/tpl/static/images/yj.jpg';
        return array(array(array($data['title'], $data['keyword'], $data['picurl'], $data['url'])), 'news');
    }
    //公司地图
    private function companyMap(){
        import("Home.Action.MapAction");
        $mapAction = new MapAction();
        return $mapAction -> staticCompanyMap();
    }
    //审核
    private function shenhe($name){
        $this -> behaviordata('usernameCheck', '', '1');
        $name = implode('', $name);
        if(empty($name)){
            return '正确的审核帐号方式是：审核+帐号';
        }else{
            $user = M('Users') -> field('id') -> where(array('username' => $name)) -> find();
            if($user == false){
                return '主人' . $this -> my . "提醒您,您还没注册吧\n正确的审核帐号方式是：审核+帐号,不含+号";
            }else{
                $up = M('users') -> where(array('id' => $user['id'])) -> save(array('status' => 1, 'viptime' => strtotime("+1 day")));
                if($up != false){
                    return '主人' . $this -> my . '恭喜您,您的帐号已经审核,您现在可以登陆平台测试功能啦!';
                }else{
                    return '服务器繁忙请稍后再试';
                }
            }
        }
    }
    //会员卡
    private function huiyuanka($name){
        return $this -> member();
    }
    private function member(){
        $card = M('member_card_create') -> where(array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> find();
        $cardInfo = M('member_card_set') -> where(array('token' => $this -> token)) -> find();
        $this -> behaviordata('Member_card_set', $cardInfo['id']);
        $reply_info_db = M('Reply_info');
        if($card){
            $where_member = array('token' => $this -> token, 'infotype' => 'membercard');
            $memberConfig = $reply_info_db -> where($where_member) -> find();
            if (!$memberConfig){
                $memberConfig = array();
                $memberConfig['picurl'] = rtrim(C('site_url'), '/') . '/tpl/static/images/vip.jpg';
                $memberConfig['title'] = '会员卡,省钱，打折,促销，优先知道,有奖励哦';
                $memberConfig['info'] = '尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦';
            }
            $data['picurl'] = $memberConfig['picurl'];
            $data['title'] = $memberConfig['title'];
            $data['keyword'] = $memberConfig['info'];
            if (!$memberConfig['apiurl']){
                $data['url'] = rtrim(C('site_url'), '/') . U('Wap/Card/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName']));
            }else{
                $data['url'] = str_replace('{wechat_id}', $this -> data['FromUserName'], $memberConfig['apiurl']);
            }
        }else{
            $where_unmember = array('token' => $this -> token, 'infotype' => 'membercard_nouse');
            $unmemberConfig = $reply_info_db -> where($where_unmember) -> find();
            if (!$unmemberConfig){
                $unmemberConfig = array();
                $unmemberConfig['picurl'] = rtrim(C('site_url'), '/') . '/tpl/static/images/member.jpg';
                $unmemberConfig['title'] = '申请成为会员';
                $unmemberConfig['info'] = '申请成为会员，享受更多优惠';
            }
            $data['picurl'] = $unmemberConfig['picurl'];
            $data['title'] = $unmemberConfig['title'];
            $data['keyword'] = $unmemberConfig['info'];
            if (!$unmemberConfig['apiurl']){
                $data['url'] = rtrim(C('site_url'), '/') . U('Wap/Card/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName']));
            }else{
                $data['url'] = str_replace('{wechat_id}', $this -> data['FromUserName'], $unmemberConfig['apiurl']);
            }
        }
        return array(array(array($data['title'], $data['keyword'], $data['picurl'], $data['url'])), 'news');
    }
    //淘宝
    private function taobao($name){
        $name = array_merge($name);
        $data = M('Taobao') -> where(array('token' => $this -> token)) -> find();
        if($data != false){
            if(strpos($data['keyword'], $name)){
                $url = $data['homeurl'] . '/search.htm?search=y&keyword=' . $name . '&lowPrice=&highPrice=';
            }else{
                $url = $data['homeurl'];
            }
            return array(array(array($data['title'], $data['keyword'], $data['picurl'], $url)), 'news');
        }else{
            return '商家还未及时更新淘宝店铺的信息,回复帮助,查看功能详情';
        }
    }
    //抽奖
    private function choujiang($name){
        $data = M('lottery') -> field('id,keyword,info,title,starpicurl') -> where(array('token' => $this -> token, 'status' => 1, 'type' => 1)) -> order('id desc') -> find();
        if($data == false){
            return array('暂无抽奖活动', 'text');
        }
        $pic = $data['starpicurl']?$data['starpicurl']:rtrim(C('site_url'), '/') . '/tpl/User/default/common/images/img/activity-lottery-start.jpg';
        $url = rtrim(C('site_url'), '/') . U('Wap/Lottery/index', array('type' => 1, 'token' => $this -> token, 'id' => $data['id'], 'wecha_id' => $this -> data['FromUserName']));
        return array(array(array($data['title'], $data['info'], $pic, $url)), 'news');
    }

    //根据关键词进行处理
    private function keyword($key){
        $like['keyword'] = array('like', '%' . $key . '%');
        $like['token'] = $this -> token;
        $data = M('keyword') -> where($like) -> order('id desc') -> find();
        if($data != false){
            $this -> behaviordata($data['module'], $data['pid']);
            switch($data['module']){

            case 'Img': $this -> requestdata('imgnum');
                $img_db = M($data['module']);
                $back = $img_db -> field('id,text,pic,url,title') -> limit(9) -> order('usort desc') -> where($like) -> select();
                $idsWhere = 'id in (';
                $comma = '';
                foreach($back as $keya => $infot){
                    $idsWhere .= $comma . $infot['id'];
                    $comma = ',';
                    if($infot['url'] != false){
                        if(!(strpos($infot['url'], 'http') === FALSE)){
                            $url = $this -> getFuncLink(html_entity_decode($infot['url']));
                        }else{
                            $url = $this -> getFuncLink($infot['url']);
                        }
                    }else{
                        $url = rtrim(C('site_url'), '/') . U('Wap/Index/content', array('token' => $this -> token, 'id' => $infot['id'], 'wecha_id' => $this -> data['FromUserName']));
                    }
                    $return[] = array($infot['title'], $this -> handleIntro($infot['text']), $infot['pic'], $url);
                }
                $idsWhere .= ')';
                if ($back){
                    $img_db -> where($idsWhere) -> setInc('click');
                }
                return array($return, 'news');
                break;
            case 'Host': $this -> requestdata('other');
                $host = M('Host') -> where(array('id' => $data['pid'])) -> find();
                return array(array(array($host['name'], $host['info'], $host['ppicurl'], C('site_url') . '/index.php?g=Wap&m=Host&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $data['pid'] . '&sgssz=mp.weixin.qq.com')), 'news');
                break;
            case 'Estate': $this -> requestdata('other');
                $Estate = M('Estate') -> where(array('id' => $data['pid'])) -> find();
                return array(array(array($Estate['title'], $Estate['estate_desc'], $Estate['cover'], C('site_url') . '/index.php?g=Wap&m=Estate&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com'), array('楼盘介绍', $Estate['estate_desc'], $Estate['house_banner'], C('site_url') . '/index.php?g=Wap&m=Estate&a=index&&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'), array('专家点评', $Estate['estate_desc'], $Estate['cover'], C('site_url') . '/index.php?g=Wap&m=Estate&a=impress&&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'), array('楼盘3D全景', $Estate['estate_desc'], $Estate['banner'], C('site_url') . '/index.php?g=Wap&m=Panorama&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'), array('楼盘动态', $Estate['estate_desc'], $Estate['house_banner'], C('site_url') . '/index.php?g=Wap&m=Index&a=lists&classid=' . $Estate['classify_id'] . '&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'),), 'news');
                break;
            case 'Reservation': $this -> requestdata('other');
                $rt = M('Reservation') -> where(array('id' => $data['pid'])) -> find();
                return array(array(array($rt['title'], $rt['info'], $rt['picurl'], C('site_url') . '/index.php?g=Wap&m=Reservation&a=index&rid=' . $data['pid'] . '&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com'),), 'news');
                break;
            case 'Text': $this -> requestdata('textnum');
                $info = M($data['module']) -> order('id desc') -> find($data['pid']);
                return array(htmlspecialchars_decode(str_replace('{wechat_id}', $this -> data['FromUserName'], $info['text'])), 'text');
                break;
            case 'Product': $this -> requestdata('other');
                $infos = M('Product') -> limit(9) -> order('id desc') -> where($like) -> select();
                if ($infos){
                    $return = array();
                    foreach ($infos as $info){
                        if (!$info['groupon']){
                            $url = C('site_url') . '/index.php?g=Wap&m=Store&a=product&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $info['id'];
                        }else{
                            $url = C('site_url') . '/index.php?g=Wap&m=Groupon&a=product&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $info['id'];
                        }
                        $return[] = array($info['name'], $this -> handleIntro(strip_tags(htmlspecialchars_decode($info['intro']))), $info['logourl'], $url);
                    }
                }
                return array($return, 'news');
                break;
            case 'Selfform': $this -> requestdata('other');
                $pro = M('Selfform') -> where(array('id' => $data['pid'])) -> find();
                return array(array(array($pro['name'], strip_tags(htmlspecialchars_decode($pro['intro'])), $pro['logourl'], C('site_url') . '/index.php?g=Wap&m=Selfform&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com')), 'news');
                break;
            case 'Panorama': $this -> requestdata('other');
                $pro = M('Panorama') -> where(array('id' => $data['pid'])) -> find();
                return array(array(array($pro['name'], strip_tags(htmlspecialchars_decode($pro['intro'])), $pro['frontpic'], C('site_url') . '/index.php?g=Wap&m=Panorama&a=item&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com')), 'news');
                break;
            case 'Wedding': $this -> requestdata('other');
                $wedding = M('Wedding') -> where(array('id' => $data['pid'])) -> find();
                return array(array(array($wedding['title'], strip_tags(htmlspecialchars_decode($wedding['word'])), $wedding['coverurl'], C('site_url') . '/index.php?g=Wap&m=Wedding&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'), array('查看我的祝福', strip_tags(htmlspecialchars_decode($wedding['word'])), $wedding['picurl'], C('site_url') . '/index.php?g=Wap&m=Wedding&a=check&type=1&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'), array('查看我的来宾', strip_tags(htmlspecialchars_decode($wedding['word'])), $wedding['picurl'], C('site_url') . '/index.php?g=Wap&m=Wedding&a=check&type=2&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com'),), 'news');
                break;
            case 'Vote': $this -> requestdata('other');
                $Vote = M('Vote') -> where(array('id' => $data['pid'])) -> order('id DESC') -> find();
                return array(array(array($Vote['title'], '', $Vote['picurl'], C('site_url') . '/index.php?g=Wap&m=Vote&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com')), 'news');
                break;
            case 'Greeting_card': $this -> requestdata('other');
                $Vote = M('Greeting_card') -> where(array('id' => $data['pid'])) -> order('id DESC') -> find();
                return array(array(array($Vote['title'], str_replace(array('&nbsp;', 'br /', '&amp;', 'gt;', 'lt;'), '', strip_tags(htmlspecialchars_decode($Vote['info']))), $Vote['picurl'], C('site_url') . '/index.php?g=Wap&m=Greeting_card&a=index&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com')), 'news');
                break;
            case 'Lottery': $this -> requestdata('other');
                $info = M('Lottery') -> find($data['pid']);
                if($info == false || $info['status'] == 3){
                    return array('活动可能已经结束或者被删除了', 'text');
                }
                switch($info['type']){
                case 1: $model = 'Lottery';
                    break;
                case 2: $model = 'Guajiang';
                    break;
                case 3: $model = 'Coupon';
                    break;
                case 4: $model = 'LuckyFruit';
                    break;
                case 5: $model = 'GoldenEgg';
                    break;
                }
                $id = $info['id'];
                $type = $info['type'];
                if($info['status'] == 1){
                $picurl = $info['starpicurl'] ;
                $title = $info['title'];
                $id = $info['id'];
                $info = $info['info'];
            }else{
            $picurl = $info['endpicurl'];
            $title = $info['endtite'];
            $info = $info['endinfo'];
        }
        $url = C('site_url') . U('Wap/' . $model . '/index', array('token' => $this -> token, 'type' => $type, 'wecha_id' => $this -> data['FromUserName'], 'id' => $id, 'type' => $type));
        return array(array(array($title, $info, $picurl, $url)), 'news');
        case 'Carowner': $this -> requestdata('other');
            $thisItem = M('Carowner') -> where(array('id' => $data['pid'])) -> find();
            return array(array(array($thisItem['title'], str_replace(array('&nbsp;', 'br /', '&amp;', 'gt;', 'lt;'), '', strip_tags(htmlspecialchars_decode($thisItem['info']))), $thisItem['head_url'], C('site_url') . '/index.php?g=Wap&m=Car&a=owner&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&id=' . $data['pid'] . '&sgssz=mp.weixin.qq.com')), 'news');
            break;
        case 'Carowner': $this -> requestdata('other');
            $thisItem = M('Carowner') -> where(array('id' => $data['pid'])) -> find();
            return array(array(array($thisItem['title'], str_replace(array('&nbsp;', 'br /', '&amp;', 'gt;', 'lt;'), '', strip_tags(htmlspecialchars_decode($thisItem['info']))), $thisItem['head_url'], C('site_url') . '/index.php?g=Wap&m=Car&a=owner&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
            break;
        case 'Carset': $this -> requestdata('other');
            $thisItem = M('Carset') -> where(array('id' => $data['pid'])) -> find();
            $news = array();
            array_push($news, array($thisItem['title'], '', $thisItem['head_url'], $thisItem['url']?$thisItem['url']:C('site_url') . '/index.php?g=Wap&m=Car&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            array_push($news, array($thisItem['title1'], '', $thisItem['head_url_1'], $thisItem['url1']?$thisItem['url1']:C('site_url') . '/index.php?g=Wap&m=Car&a=brands&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            array_push($news, array($thisItem['title2'], '', $thisItem['head_url_2'], $thisItem['url2']?$thisItem['url2']:C('site_url') . '/index.php?g=Wap&m=Car&a=salers&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            array_push($news, array($thisItem['title3'], '', $thisItem['head_url_3'], $thisItem['url3']?$thisItem['url3']:C('site_url') . '/index.php?g=Wap&m=Car&a=CarReserveBook&addtype=drive&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            array_push($news, array($thisItem['title4'], '', $thisItem['head_url_4'], $thisItem['url4']?$thisItem['url4']:C('site_url') . '/index.php?g=Wap&m=Car&a=owner&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            array_push($news, array($thisItem['title5'], '', $thisItem['head_url_5'], $thisItem['url5']?$thisItem['url5']:C('site_url') . '/index.php?g=Wap&m=Car&a=tool&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            array_push($news, array($thisItem['title6'], '', $thisItem['head_url_6'], $thisItem['url6']?$thisItem['url6']:C('site_url') . '/index.php?g=Wap&m=Car&a=showcar&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName']));
            return array($news, 'news');
            break;
        case 'medicalSet': $thisItem = M('Medical_set') -> where(array('id' => $data['pid'])) -> find();
            return array(array(array($thisItem['title'], str_replace(array('&nbsp;', 'br /', '&amp;', 'gt;', 'lt;'), '', strip_tags(htmlspecialchars_decode($thisItem['info']))), $thisItem['head_url'], C('site_url') . '/index.php?g=Wap&m=Medical&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
            break;
        // case 'Shake': $thisItem = M('Shake') -> where(array('id' => $data['pid'])) -> find();
        //     $shakeRecord = M('Shake_rt') -> where(array('shakeid' => $data['pid'], 'wecha_id' => $this -> data['FromUserName'])) -> find();
        //     if (!$shakeRecord){
        //         if ($this -> fans['tel']){
        //             $shakeRtRow = array();
        //             $shakeRtRow['token'] = $this -> token;
        //             $shakeRtRow['wecha_id'] = $this -> data['FromUserName'];
        //             $shakeRtRow['shakeid'] = $thisItem['id'];
        //             $shakeRtRow['phone'] = htmlspecialchars($this -> fans['tel']);
        //             M('Shake_rt') -> add($shakeRtRow);
        //             return array(array(array($thisItem['title'], $thisItem['intro'] . '。您的电话为：' . $shakeRtRow['phone'] . ',如需修改请回复"shake+您的手机号"', $thisItem['thumb'], C('site_url') . '/index.php?g=Wap&m=Shake&a=index&id=' . $thisItem['id'] . '&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
        //         }else{
        //             return array('请回复shake加您的手机号参与活动', 'text');
        //         }
        //     }else{
        //         return array(array(array($thisItem['title'], $thisItem['intro'] . '。您的电话为：' . $this -> fans['tel'] . ',如需修改请回复"shake+您的手机号"', $thisItem['thumb'], C('site_url') . '/index.php?g=Wap&m=Shake&a=index&id=' . $thisItem['id'] . '&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'])), 'news');
        //     }
        //     break;
        case 'Wall': $thisItem = M('Wall') -> where(array('id' => $data['pid'])) -> find();
            if (!$thisItem['isopen']){
                return array('微信墙活动已关闭', 'text');
            }else{
                $memberRecord = M('Wall_member') -> where(array('wallid' => $data['pid'], 'wecha_id' => $this -> data['FromUserName'])) -> find();
                if (!$memberRecord || !$this -> fans){
                    return array('<a href="' . C('site_url') . U('Wap/Userinfo/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'redirect' => 'Wall/person|id:' . intval($data['pid']))) . '">请点击这里完善信息后再参加此活动</a>', 'text');
                }else{
                    M('Userinfo') -> where(array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])) -> save(array('wallopen' => 1));
                    S('fans_' . $this -> token . '_' . $this -> data['FromUserName'], NULL);
                    return array('您已进入微信墙对话模式，您下面发送的所有文字和图片信息都将会显示在大屏幕上，如需退出微信墙模式，请输入“wx#quit”', 'text');
                }
            }
            break;
        case 'Recipe': $this -> requestdata('other');
            $thisItem = M('Recipe') -> where(array('id' => $data['pid'])) -> find();
            return array(array(array($thisItem['title'], str_replace(array('&nbsp;', 'br /', '&amp;', 'gt;', 'lt;'), '', strip_tags(htmlspecialchars_decode($thisItem['infos']))), $thisItem['headpic'], C('site_url') . '/index.php?g=Wap&m=Recipe&a=index&token=' . $this -> token . '&type=' . $thisItem['type'] . '&id=' . $thisItem['id'] . 'wecha_id=' . $this -> data['FromUserName'])), 'news');
            break;
        case 'Router_config': $routerUrl = Router :: login($this -> token, $this -> data['FromUserName']);
            $thisItem = M('Router_config') -> where(array('id' => $data['pid'])) -> find();
            return array(array(array($thisItem['title'], $thisItem['info'], $thisItem['picurl'], $routerUrl)), 'news');
            break;
        case 'Schoolset': $thisItem = M('School_set_index') -> where(array('setid' => $data['pid'])) -> find();
            return array(array(array($thisItem['title'], $thisItem['info'], $thisItem['head_url'], C('site_url') . U('Wap/School/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'])))), 'news');
            break;
        default: $this -> requestdata('videonum');
            $info = M($data['module']) -> order('id desc') -> find($data['pid']);
            return array(array($info['title'], $info['keyword'], $info['musicurl'], $info['hqmusicurl']), 'music');
        }
    }else{
        if ($this -> wxuser['transfer_customer_service']){
             return array('turn on transfer_customer_service', 'transfer_customer_service');
        }
        $chaFfunction = M('Function') -> where(array('funname' => 'liaotian')) -> find();
        if(!strpos($this -> fun, 'liaotian') || !$chaFfunction['status']){
            $other = M('Other') -> where(array('token' => $this -> token)) -> find();
            if($other == false){
                return array('', 'text');
            }else{
                if(empty($other['keyword'])){
                    return array($other['info'], 'text');
                }else{
                    $img = M('Img') -> field('id,text,pic,url,title') -> limit(5) -> order('id desc') -> where(array('token' => $this -> token, 'keyword' => array('like', '%' . $other['keyword'] . '%'))) -> select();
                    if($img == false){
                        return array('无此图文信息,请提醒商家，重新设定关键词', 'text');
                    }
                    foreach($img as $keya => $infot){
                        if($infot['url'] != false){
                            if(!(strpos($infot['url'], 'http') === FALSE)){
                                $url = $this -> getFuncLink(html_entity_decode($infot['url']));
                            }else{
                                $url = $this -> getFuncLink($infot['url']);
                            }
                        }else{
                            $url = rtrim(C('site_url'), '/') . U('Wap/Index/content', array('token' => $this -> token, 'id' => $infot['id'], 'wecha_id' => $this -> data['FromUserName']));
                        }
                        $return[] = array($infot['title'], $infot['text'], $infot['pic'], $url);
                    }
                    return array($return, 'news');
                }
            }
        }
        if (!C('not_support_chat')){
            $this -> selectService();
        }
        return array($this -> chat($key), 'text');
    }
}
private function getFuncLink($u){
    $urlInfos = explode(' ', $u);
    switch ($urlInfos[0]){
    default: $url = str_replace(array('{wechat_id}', '{siteUrl}', '&amp;'), array($this -> data['FromUserName'], C('site_url'), '&'), $urlInfos[0]);
        break;
    case '刮刮卡': $Lottery = M('Lottery') -> where(array('token' => $this -> token, 'type' => 2, 'status' => 1)) -> order('id DESC') -> find();
        $url = C('site_url') . U('Wap/Guajiang/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'id' => $Lottery['id']));
        break;
    case '大转盘': $Lottery = M('Lottery') -> where(array('token' => $this -> token, 'type' => 1, 'status' => 1)) -> order('id DESC') -> find();
        $url = C('site_url') . U('Wap/Lottery/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'id' => $Lottery['id']));
        break;
    case '商家订单': $url = C('site_url') . '/index.php?g=Wap&m=Host&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&hid=' . $urlInfos[1] . '&sgssz=mp.weixin.qq.com';
        break;
    case '优惠券': $Lottery = M('Lottery') -> where(array('token' => $this -> token, 'type' => 3, 'status' => 1)) -> order('id DESC') -> find();
        $url = C('site_url') . U('Wap/Coupon/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'id' => $Lottery['id']));
        break;
    case '万能表单': $url = C('site_url') . U('Wap/Selfform/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'id' => $urlInfos[1]));
        break;
    case '会员卡': $url = C('site_url') . U('Wap/Card/vip', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName']));
        break;
    case '首页': $url = rtrim(C('site_url'), '/') . '/index.php?g=Wap&m=Index&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'];
        break;
    case '团购': $url = rtrim(C('site_url'), '/') . '/index.php?g=Wap&m=Groupon&a=grouponIndex&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'];
        break;
    case '商城': $url = rtrim(C('site_url'), '/') . '/index.php?g=Wap&m=Store&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'];
        break;
    case '订餐': $url = rtrim(C('site_url'), '/') . '/index.php?g=Wap&m=Repast&a=index&dining=1&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'];
        break;
    case '相册': $url = rtrim(C('site_url'), '/') . '/index.php?g=Wap&m=Photo&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'];
        break;
    case '网站分类': $url = C('site_url') . U('Wap/Index/lists', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'classid' => $urlInfos[1]));
        break;
    case 'LBS信息': if ($urlInfos[1]){
            $url = C('site_url') . U('Wap/Company/map', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'companyid' => $urlInfos[1]));
        }else{
            $url = C('site_url') . U('Wap/Company/map', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName']));
        }
        break;
    case 'DIY宣传页': $url = C('site_url') . '/index.php/show/' . $this -> token;
        break;
    case '婚庆喜帖': $url = C('site_url') . U('Wap/Wedding/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'id' => $urlInfos[1]));
        break;
    case '投票': $url = C('site_url') . U('Wap/Vote/index', array('token' => $this -> token, 'wecha_id' => $this -> data['FromUserName'], 'id' => $urlInfos[1]));
        break;
    }
    return $url;
}
private function home(){
    return $this -> shouye();
}
private function shouye($name){
    $home = M('Home') -> where(array('token' => $this -> token)) -> find();
    $this -> behaviordata('home', '', '1');
    if($home == false){
        return array('商家未做首页配置，请稍后再试', 'text');
    }else{
        $imgurl = $home['picurl'];
        if($home['apiurl'] == false){
            
            //第三方接口不存在时
            if (!$home['advancetpl']){
                $url = rtrim(C('site_url'), '/') . '/index.php?g=Wap&m=Index&a=index&token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com';
            }else{
                $url = rtrim(C('site_url'), '/') . '/cms/index.php?token=' . $this -> token . '&wecha_id=' . $this -> data['FromUserName'] . '&sgssz=mp.weixin.qq.com';
            }
        }else{
            $url = $home['apiurl'];
        }
    }
    return array(array(array($home['title'], $home['info'], $imgurl, $url)), 'news');
}
//健康
private function jiankang($data){

    $this -> behaviordata('jiankang', '', '1');
    if(empty($data))return '主人，' . $this -> my . "提醒您\n正确的查询方式是:\n健康+身高,+体重\n例如：健康170,65";
    $height = $data[1] / 100;
    $weight = $data[2];
    // $Broca = ($height * (100-80)) * 0.7;
    // $kaluli = 66 + 13.7 * $weight + 5 * $height * 100-6.8 * 25;
    // $chao = $weight - $Broca;
    // $zhibiao = $chao * 0.1;
    $res = round($weight / ($height * $height), 1);
    if($res < 18.5){
        $chao = round( ( 18.5 - $res ) * $height * $height , 1 );
        $info = '您的体形属于骨感型，需要增加体重' . $chao . '公斤哦! ';
        $pic = 1;
    }elseif($res < 24){
        // $chao = round( ( 24 - $res ) * $height * $height,1);
        $info = '您的体形属于圆滑型的身材，暂时不需要减少或增加体重!';
    }elseif($res > 24){
        $chao = round( ( $res - 24 ) * $height * $height ,1);
        $info = '您的体形属于肥胖型，需要减少体重' . $chao . '公斤哦!';
    }elseif($res > 28){
        $chao = round( ( $res - 28 ) * $height * $height , 1);
        $info = '您的体形属于严重肥胖，请加强锻炼，或者使用我们推荐的减肥方案进行减肥';
    }
    return $info;
}
//附近 
private function fujin($keyword){
    $this -> behaviordata('fujin', '', '1');
    $keyword = implode('', $keyword);
    if($keyword == false){
        return $this -> my . "很难过,无法识别主人的指令,正确使用方法是:输入【附近+关键词】当" . $this -> my . '提醒您输入地理位置的时候就OK啦';
    }
    $data = array();
    $data['time'] = time();
    $data['token'] = $this -> _get('token');
    $data['keyword'] = $keyword;
    $data['uid'] = $this -> data['FromUserName'];
    $re = M('Nearby_user');
    $user = $re -> where(array('token' => $this -> _get('token'), 'uid' => $data['uid'])) -> find();
    if($user == false){
        $re -> data($data) -> add();
    }else{
        $id['id'] = $user['id'];
        $re -> where($id) -> save($data);
    }
    return "主人【" . $this -> my . "】已经接收到你的指令\n请发送您的地理位置给我哈";
}
//我要上网
private function wysw(){
    $this -> behaviordata('wysw', '', '1');
    $thisItem = M('Router_config') -> where(array('token' => $this -> token)) -> find();
    return array(array(array($thisItem['title'], $thisItem['info'], $thisItem['picurl'], $routerUrl)), 'news');
}
//记录最近一次请求
private function recordLastRequest($key, $msgtype = 'text'){
    $rdata = array();
    $rdata['time'] = time();
    $rdata['token'] = $this -> _get('token');
    $rdata['keyword'] = $key;
    $rdata['msgtype'] = $msgtype;
    $rdata['uid'] = $this -> data['FromUserName'];
    $user_request_model = M('User_request');
    $user_request_row = $user_request_model -> where(array('token' => $this -> _get('token'), 'msgtype' => $msgtype, 'uid' => $rdata['uid'])) -> find();
    if(!$user_request_row){
        $user_request_model -> add($rdata);
    }else{
        $rid['id'] = $user_request_row['id'];
        $user_request_model -> where($rid) -> save($rdata);
    }
}
//地图
function map($x, $y){
    $this -> behaviordata('map', '', '1');
    $transUrl = 'http://api.map.baidu.com/ag/coord/convert?from=2&to=4&x=' . $x . '&y=' . $y;
    $json = Http :: fsockopenDownload($transUrl);
    if($json == false){
        $json = file_get_contents($transUrl);
    }
    $arr = json_decode($json, true);
    $x = base64_decode($arr['x']);
    $y = base64_decode($arr['y']);
    $user_request_model = M('User_request');
    $urWhere = array('token' => $this -> _get('token'), 'msgtype' => 'text', 'uid' => $this -> data['FromUserName']);
    $urWhere['time'] = array('gt', time()-5 * 60);
    $user_request_row = $user_request_model -> where($urWhere) -> find();
    if(!(strpos($user_request_row['keyword'], '附近') === FALSE)){
        $user = M('Nearby_user') -> where(array('token' => $this -> _get('token'), 'uid' => $this -> data['FromUserName'])) -> find();
        $keyword = $user['keyword'];
        $radius = 2000;
        $map = new baiduMap($keyword, $x, $y);
        $str = $map -> echoJson();
        $array = json_decode($str);
        $map = array();
        foreach($array as $key => $vo){
            $map[] = array($vo -> title, $key, rtrim(C('site_url'), '/') . '/tpl/static/images/home.jpg', $vo -> url);
        }
        if ($map){
            return array($map, 'news');
        }else{
            $str = file_get_contents(C('site_url') . '/map.php?keyword=' . urlencode($keyword) . '&x=' . $x . '&y=' . $y);
            $array = json_decode($str);
            $map = array();
            foreach($array as $key => $vo){
                $map[] = array($vo -> title, $key, rtrim(C('site_url'), '/') . '/tpl/static/images/home.jpg', $vo -> url);
            }
            if ($map){
                return array($map, 'news');
            }else{
                return array('附近信息无法调出，请稍候再试一下（关键词' . $keyword . ',坐标：' . $x . '-' . $y . ')', 'text');
            }
        }
    }else{
        import("Home.Action.MapAction");
        $mapAction = new MapAction();
        if(!(strpos($user_request_row['keyword'], '开车去') === FALSE) || !(strpos($user_request_row['keyword'], '坐公交') === FALSE) || !(strpos($user_request_row['keyword'], '步行去') === FALSE)){
            if (!(strpos($user_request_row['keyword'], '步行去') === FALSE)){
                $companyid = str_replace('步行去', '', $user_request_row['keyword']);
                if(!$companyid){
                    $companyid = 1;
                }
                return $mapAction -> walk($x, $y, $companyid);
            }
            if (!(strpos($user_request_row['keyword'], '开车去') === FALSE)){
                $companyid = str_replace('开车去', '', $user_request_row['keyword']);
                if(!$companyid){
                    $companyid = 1;
                }
                return $mapAction -> drive($x, $y, $companyid);
            }
            if (!(strpos($user_request_row['keyword'], '坐公交') === FALSE)){
                $companyid = str_replace('坐公交', '', $user_request_row['keyword']);
                if(!$companyid){
                    $companyid = 1;
                }
                return $mapAction -> bus($x, $y, $companyid);
            }
        }else{
            switch ($user_request_row['keyword']){
            default: return $this -> companyMap();
                break;
            case '最近的': return $mapAction -> nearest($x, $y);
                break;
            }
        }
    }
}
//算命
private function suanming($name){
    $this -> behaviordata('suanming', '', '1');
    $name = implode('', $name);
    if(empty($name)){
        return '主人' . $this -> my . '提醒您正确的使用方法是[算命+姓名]';
    }
    $data = require_once(CONF_PATH . 'suanming.php');
    $num = mt_rand(0, 80);
    return $name . "\n" . trim($data[$num]);
}
/* 天气 */
private function tianqi($n){
    $this -> behaviordata('tianqi', '', '1');
    $name = implode('', $n);
    if ($name == ''){
        $name = '绍兴';
    }
    return $this->getWeatherInfo($name);
    // @$str = $this -> apiServer . '/api.php?'. urlencode('天气' . $name);
    // $json = json_decode(file_get_contents($str));
    // $str = str_replace('{br}', "\n", $json -> content);
    // return str_replace('菲菲', C('site_my'), $str);
}

/* 快递 */
private function kuaidi($data){
    $this -> behaviordata('kuaidi', '', '1');
    $data = explode(" ",$data);
    if(count($data) >= 2){
        // $data[0] = str_replace("快递", "", $data[0]);
        // $data[1] = str_replace("快递", "", $data[1]);
        $str = file_get_contents('http://www.weinxinma.com/api/index.php?m=Express&a=index&name=' . $data[0] . '&number=' . $data[1]);
        if ($str == '不支持的快递公司'){
            $str = file_get_contents('http://www.weinxinma.com/api/index.php?m=Express&a=index&name=' . $data[1] . '&number=' . $data[0]);
     }

        return $str;
    }else{
        $str = "快递查询方式（要加空格）：快递 韵达 快递单号";
     }
    return "";
}
//朗读
private function langdu($data){
    // $data = implode('', $data);
    // $mp3url = 'http://www.apiwx.com/aaa.php?w=' . urlencode($data);
    return $data;
}
/* 音乐 */
private function yinle($name){

    $this -> behaviordata('yinle', '', '1');
     $music = $this -> getMusicInfo($name);
     // addWeixinLog($music,"yinle 结果");
      return $music;

}
/* 歌词 */
function geci($n){
    return "";
}
/* 域名 
    暂时不支持
*/
private function yuming($n){
    
    return "";
}
/* 手机 */
private function shouji($n){

    $this -> behaviordata('shouji', '', '1');
    $name = implode('', $n);
     //addWeixinLog( $name.C('k780.Appkey'),C('k780.Sign'));
    $str ='http://api.k780.com:88/?app=phone.get&phone='.$name.'&appkey='.C('k780.Appkey').'&sign='.C('k780.Sign').'&format=json';
    $json = json_decode(file_get_contents($str));
    $str ='';
      //addWeixinLog($json->result,"手机查询");
    if($json->success == 1){
            $str='归属地: '.$json->result->att;
            $str.="\n号码卡类型:".$json->result->ctype;
            $str.="\n所在地区邮编:".$json->result->postno;
            $str.="\n所属运营商:".$json->result->operators;
    }else{
            $str = "服务器繁忙请稍后再试！";
    }
    

     //addWeixinLog($str,"手机查询");

    return $str;
}
//身份证查询
private function shenfenzheng($n){
    $this -> behaviordata('shenfenzheng', '', '1');
    $name = implode('', $n);
    if(count($name) > 1){
        $this -> error_msg($name) ;
        return false;
    };


    $str ='http://api.k780.com:88/?app=idcard.get&idcard='.$name.'&appkey='.C('k780.Appkey').'&sign='.C('k780.Sign').'&format=json';
    $json = json_decode(file_get_contents($str));

    if($json->success == 1){
            $str='所属地: '.$json->result->att;
            $str.="\n生日:".$json->result->born;
            $str.="\n性别:".$json->result->sex;
    }elseif($json->success == 0){
            $str = $json->msg;
    }


    return $str;
}
//公交
private function gongjiao($data){
    $this -> behaviordata('gongjiao', '', '1');
    $data = array_merge($data);
    if(count($data) < 2){
        $this -> error_msg() ;
        return false;
    };
    $json = file_get_contents("http://www.twototwo.cn/bus/Service.aspx?format=json&action=QueryBusByLine&key=5da453b2-b154-4ef1-8f36-806ee58580f6&zone=" . $data[0] . "&line=" . $data[1]);
    $data = json_decode($json);
    $xianlu = $data -> Response -> Head -> XianLu;
    $xdata = get_object_vars($xianlu -> ShouMoBanShiJian);
    $xdata = $xdata['#cdata-section'];
    $piaojia = get_object_vars($xianlu -> PiaoJia);
    $xdata = $xdata . ' -- ' . $piaojia['#cdata-section'];
    $main = $data -> Response -> Main -> Item -> FangXiang;
    $xianlu = $main[0] -> ZhanDian;
    $str = "【本公交途经】\n";
    for($i = 0;$i < count($xianlu);$i++){
        $str .= "\n" . trim($xianlu[$i] -> ZhanDianMingCheng);
    }
    return $str;
}
//火车
private function huoche($data, $time = ''){
    $this -> behaviordata('huoche', '', '1');
    $data = array_merge($data);
    $data[2] = date('Y', time()) . $time;
    if(count($data) != 3){
        $this -> error_msg($data[0] . '至' . $data[1]) ;
        return false;
    };
    $time = empty($time)?date('Y-m-d', time()):date('Y-', time()) . $time;
    $json = file_get_contents("http://www.twototwo.cn/train/Service.aspx?format=json&action=QueryTrainScheduleByTwoStation&key=5da453b2-b154-4ef1-8f36-806ee58580f6&startStation=" . $data[0] . "&arriveStation=" . $data[1] . "&startDate=" . $data[2] . "&ignoreStartDate=0&like=1&more=0");
    if($json){
        $data = json_decode($json);
        $main = $data -> Response -> Main -> Item;
        if(count($main) > 10){
            $conunt = 10;
        }else{
            $conunt = count($main);
        }
        for($i = 0;$i < $conunt;$i++){
            $str .= "\n 【编号】" . $main[$i] -> CheCiMingCheng . "\n 【类型】" . $main[$i] -> CheXingMingCheng . "\n【发车时间】:　" . $time . ' ' . $main[$i] -> FaShi . "\n【耗时】" . $main[$i] -> LiShi . ' 小时';
            $str .= "\n----------------------";
        }
    }else{
        $str = '没有找到 ' . $name . ' 至 ' . $toname . ' 的列车';
    }
    return $str;
}
//翻译
//使用方式
//微信中回复
// 第一种 翻译 法语 我爱你
// 第二种 翻译 我爱你
private function fanyi($name){
    
    $this -> behaviordata('fanyi', '', '1');
    $name = array_merge($name);
    // addWeixinLog($name,"翻译".count($name));
    if(count($name) >= 2){
             $to['中文'] = "zh";
             $to['英语'] = "en";
             $to['日语'] = "jp";
             $to['韩语'] = "kor";
             $to['西班牙语'] = "spa";
             $to['法语'] = "fra";
             $to['泰语'] = "th";
             $to['阿拉伯语'] = "ara";
             $to['俄罗斯语'] = "ru";
             $to['葡萄牙语'] = "pt";
             $to['粤语'] = "yue";
             $to['文言文'] = "wyw";       
             $to['白话文'] = "zh";
              
              if(! isset($to[$name[0]])){
                    $to[$name[0]] = 'auto';
              }

             $url = "http://openapi.baidu.com/public/2.0/bmt/translate?client_id=u8UAepm7wNYKh2ypXDTrn3o8&q=" . $name[1] . "&from=auto&to=".$to[$name[0]] ;
    }else{
        $url = "http://openapi.baidu.com/public/2.0/bmt/translate?client_id=u8UAepm7wNYKh2ypXDTrn3o8&q=" . $name[0] . "&from=auto&to=auto";
    }
    // addWeixinLog($name,"翻译");    
    
    $json = Http :: fsockopenDownload($url);
    if($json == false){
        $json = file_get_contents($url);
    }
    $json = json_decode($json);
    $str = $json -> trans_result;
    if($str[0] -> dst == false)return $this -> error_msg($name[0]);

    //$mp3url = 'http://www.apiwx.com/aaa.php?w=' . $str[0] -> dst;
    // if (strpos($mp3url, ' ')){
    //     return array($name[0] . ':' . $str[0] -> dst, 'text');
    // }else{
        return $this -> my. "翻译结果：".$str[0] -> dst;
    // }
}
//彩票
private function caipiao($name){

    $this -> behaviordata('caipiao', '', '1');
    // $name = array_merge($name);
    $date = '';

    if(count($name) >= 2){
        $date = date('Y-m-d',strtotime($name[1]));
        $arr = getLotteryInfo($name[0],$date);
    }

    $arr = getLotteryInfo($name[0],$date);

    // addWeixinLog($arr,"caipiao");
    if(is_array($arr)){
        foreach($arr as $lottery)
        {
            $str = $lottery->lottery.' '.$lottery->lottery_no."期";
            $str .= "\n开奖号码 ： ".$lottery->lottery_nums;
            break;
        }
    }else{
        $str = $arr;
    }

    return $str;
}
//周公解梦
private function mengjian($name){
    $this -> behaviordata('mengjian', '', '1');
    $name = array_merge($name);
    if(empty($name)) return '周公睡着了,无法解此梦,这年头神仙也偷懒';

    $data = M('Dream') -> field('content') -> where("`title` LIKE '%" . $name[0] . "%'") -> find();
    if(empty($data))return '周公无法解此梦';
    return $data['content'];
}
//股票 暂不支持
function gupiao($name){
    return "";
}
function getmp3($data){
    // $obj = new getYu();
    // $ContentString = $obj -> getGoogleTTS($data);
    // $randfilestring = 'mp3/' . time() . '_' . sprintf('%02d', rand(0, 999)) . ".mp3";
    // return rtrim(C('site_url'), '/') . $randfilestring;
    return "";
}
//笑话
function xiaohua(){
    $this -> behaviordata('xiaohua', '', '1');
    $name = implode('', $n);
    $str ="http://apix.sinaapp.com/joke/?appkey=gooraye";    
    $str = file_get_contents($str);
    return $str;
}
//聊天
private function liaotian($name){
    $this -> behaviordata('liaotian', '', '1');
    $name = array_merge($name);
    $this -> chat($name[0]);
}
//智能机器人聊天
private function chat($name){
    $this -> behaviordata('chat', '', '1');
    $function = M('Function') -> where(array('funname' => 'liaotian')) -> find();
    if (!$function['status']){
        return '';
    }
    $this -> requestdata('textnum');
    $check = $this -> user('connectnum');
    if($check['connectnum'] != 1){
        return C('connectout');
    }
    if (!(strpos($name, '你是') === FALSE)){
        return '咳咳，我是智能能微信机器人';
    }
    if($name == "你叫什么" || $name == "你是谁"){
        return '咳咳，我是聪明与智慧并存的美女，主人你可以叫我' . $this -> my . ',人家刚交男朋友,你不可追我啦';
    }elseif($name == "你父母是谁" || $name == "你爸爸是谁" || $name == "你妈妈是谁"){
        return '主人,' . $this -> my . '是Gooraye创造的,所以他们是我的父母,不过主人我属于你的';
    }elseif($name == '糗事'){
        $name = '笑话';
    }elseif($name == '网站' || $name == '官网' || $name == '网址' || $name == '3g网址'){
        return "【" . C('site_name') . "】\n" . C('site_name') . "\n【" . C('site_name') . "服务宗旨】\n化繁为简,让菜鸟也能使用强大的系统!";
    }

    // $str = chat_robot($name);

    // addWeixinLog($str,"chat_robot");

    return $str;
}
private function fistMe($data){
    if('event' == $data['MsgType'] && 'subscribe' == $data['Event']){
        return $this -> help();
    }
}
private function help(){
    $this -> behaviordata('help', '', '1');
    $data = M('Areply') -> where(array('token' => $this -> token,'home' => '0')) -> find();
    return array(preg_replace("/(\015\012)|(\015)|(\012)/", "\n", $data['content']), 'text');
}
private function error_msg($data){
    return '没有找到' . $data . '相关的数据';
}
private function user($action, $keyword = ''){
    $user = M('Wxuser') -> field('uid') -> where(array('token' => $this -> token)) -> find();
    $usersdata = M('Users');
    $dataarray = array('id' => $user['uid']);
    $users = $usersdata -> field('gid,diynum,connectnum,activitynum,viptime') -> where(array('id' => $user['uid'])) -> find();
    $group = M('User_group') -> where(array('id' => $users['gid'])) -> find();
    if($users['diynum'] < $group['diynum']){
        $data['diynum'] = 1;
        if($action == 'diynum'){
        }
    }
    if($users['connectnum'] < $group['connectnum']){
        $data['connectnum'] = 1;
        if($action == 'connectnum'){
            $usersdata -> where($dataarray) -> setInc('connectnum');
        }
    }
    if($users['viptime'] > time()){
        $data['viptime'] = 1;
    }
    return $data;
}
private function requestdata($field){
    $data['year'] = date('Y');
    $data['month'] = date('m');
    $data['day'] = date('d');
    $data['token'] = $this -> token;
    $mysql = M('Requestdata');
    $check = $mysql -> field('id') -> where($data) -> find();
    if($check == false){
        $data['time'] = time();
        $data[$field] = 1;
        $mysql -> add($data);
    }else{
        $mysql -> where($data) -> setInc($field);
    }
}
//记录用户的行为
private function behaviordata($field, $id = '', $type = ''){
    $data['date'] = date('Y-m-d', time());
    $data['token'] = $this -> token;
    $data['openid'] = $this -> data['FromUserName'];
    $data['keyword'] = $this -> data['Content'];
    if (!$data['keyword']){
        $data['keyword'] = '用户关注';
    }
    $data['model'] = $field;
    if($id != false){
        $data['fid'] = $id;
    }
    if($type != false){
        $data['type'] = 1;
    }
    $mysql = M('Behavior');
    $check = $mysql -> field('id') -> where($data) -> find();
    $this -> updateMemberEndTime($data['openid']);
    if($check == false){
        $data['num'] = 1;
        $data['enddate'] = time();
        $mysql -> add($data);
    }else{
        $mysql -> where($data) -> setInc('num');
    }
}
//更新用户操作的最后时间
//类似Session
private function updateMemberEndTime($openid){
    $mysql = M('Wehcat_member_enddate');
    $id = $mysql -> field('id') -> where(array('openid' => $openid)) -> find();
    $data['enddate'] = time();
    $data['openid'] = $openid;
    $data['token'] = $this -> token;
    if($id == false){
        $mysql -> add($data);
    }else{
        $data['id'] = $id['id'];
        $mysql -> save($data);
    }
}

private function selectService(){
    if (!C('without_chat')){
        $this -> behaviordata('chat', '');
        $sepTime = 30 * 60;
        $nowTime = time();
        $time = $nowTime - $sepTime;
        $where['token'] = $this -> token;
        $serviceUserWhere = array('token' => $this -> token, 'status' => 0);
        $serviceUserWhere['endJoinDate'] = array('gt', $time);
        $serviceUser = M('Service_user') -> field('id') -> where($serviceUserWhere) -> select();
        if($serviceUser != false){
            $list = M('wechat_group_list') -> field('id') -> where(array('openid' => $this -> data['FromUserName'], 'token' => $this -> token)) -> find();
            if($list == false){
                $this -> adddUserInfo();
            }
            $serviceJoinDate = M('wehcat_member_enddate') -> field('id,uid,joinUpDate') -> where(array('token' => $this -> token, 'openid' => $this -> data['FromUserName'])) -> find();
            if($serviceJoinDate['uid'] == false || $nowTime - $serviceJoinDate['joinUpDate'] > $sepTime){
                foreach($serviceUser as $key => $users){
                    $user[] = $users['id'];
                }
                if(count($user) == 1){
                    $id = $user[0];
                }else{
                    $rand = mt_rand(0, count($user)-1);
                    $id = $user[$rand];
                }
                $where['id'] = $serviceJoinDate['id'];
                $where['uid'] = $id;
                M('wehcat_member_enddate') -> data($where) -> save();
            }else{
                exit();
            }
        }
    }
}
//百科
private function baike($name){
    $name = implode('', $name);
    if($name == '古睿'){
        return '世界上最牛B的微信营销系统，两天前被腾讯收购，当然这只是一个笑话';
    }
    $name_gbk = iconv('utf-8', 'gbk', $name);
    $encode = urlencode($name_gbk);
    $url = 'http://baike.baidu.com/list-php/dispose/searchword.php?word=' . $encode . '&pic=1';
    $get_contents = $this -> httpGetRequest_baike($url);
    $get_contents_gbk = iconv('gbk', 'utf-8', $get_contents);
    preg_match("/URL=(\S+)'>/s", $get_contents_gbk, $out);
    $real_link = 'http://baike.baidu.com' . $out[1];
    $get_contents2 = $this -> httpGetRequest_baike($real_link);
    preg_match('#"Description"\scontent="(.+?)"\s\/\>#is', $get_contents2, $matchresult);
    if (isset($matchresult[1]) && $matchresult[1] != ""){
        return htmlspecialchars_decode($matchresult[1]);
    }else{
        return "抱歉，没有找到与“" . $name . "”相关的百科结果。";
    }
}
//识别二维码扫描场景事件
private function getRecognition($id){
    $GetDb = D('Recognition');
    $data = $GetDb -> field('keyword') -> where(array('id' => $id, 'status' => 0)) -> find();
    if($data != false){
        $GetDb -> where(array('id' => $id)) -> setInc('attention_num');
        return $data['keyword'];
    }else{
        return false;
    }
}
private function api_notice_increment($url, $data){
    $ch = curl_init();
    $header = "Accept-Charset: utf-8";
    if (strpos($url, '?')){
        $url .= '&token=' . $this -> token;
    }else{
        $url .= '?token=' . $this -> token;
    }
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $tmpInfo = curl_exec($ch);
    if (curl_errno($ch)){
        return false;
    }else{
        return $tmpInfo;
    }
    curl_close($ch);
}
private function httpGetRequest_baike($url){
    $headers = array("User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/20100101 Firefox/14.0.1", "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8", "Accept-Language: en-us,en;q=0.5", "Referer: http://www.baidu.com/");
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    $output = curl_exec($ch);
    
    if ($output === FALSE){
        return "cURL Error: " . curl_error($ch);
    }
    curl_close($ch);
    return $output;
}
private function adddUserInfo(){
    $access_token = $this -> _getAccessToken();
    $url2 = 'https://api.weixin.qq.com/cgi-bin/user/info?openid=' . $this -> data['FromUserName'] . '&access_token=' . $access_token;
    $classData = json_decode($this -> curlGet($url2));
    $db = M('wechat_group_list');
    $data['token'] = $this -> token;
    $data['openid'] = $this -> data['FromUserName'];
    $item = $db -> where(array('token' => $this -> token, 'openid' => $this -> data['FromUserName'])) -> find();
    $data['nickname'] = str_replace("'", '', $classData -> nickname);
    $data['sex'] = $classData -> sex;
    $data['city'] = $classData -> city;
    $data['province'] = $classData -> province;
    $data['headimgurl'] = $classData -> headimgurl;
    $data['subscribe_time'] = $classData -> subscribe_time;
    $url3 = 'https://api.weixin.qq.com/cgi-bin/groups/getid?access_token=' . $access_token;
    $json2 = json_decode($this -> curlGet($url3, 'post', '{"openid":"' . $data['openid'] . '"}'));
    $data['g_id'] = $json -> groupid;
    if (!$data['g_id']){
        $data['g_id'] = 0;
    }
    if (!$item){
        $db -> data($data) -> add();
    }else{
        $db -> where(array('token' => $this -> token, 'openid' => $this -> data['FromUserName'])) -> save($data);
    }
}
private function _getAccessToken(){
    $where = array('token' => $this -> token);
    $this -> thisWxUser = M('Wxuser') -> where($where) -> find();
    $url_get = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=' . $this -> thisWxUser['appid'] . '&secret=' . $this -> thisWxUser['appsecret'];
    $json = json_decode($this -> curlGet($url_get));
    if (!$json -> errmsg){
    }else{
        $this -> error('获取access_token发生错误：错误代码' . $json -> errcode . ',微信返回错误信息：' . $json -> errmsg);
    }
    return $json -> access_token;
}
private function curlGet($url, $method = 'get', $data = ''){
    $ch = curl_init();
    $header = "Accept-Charset: utf-8";
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, strtoupper($method));
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $temp = curl_exec($ch);
    return $temp;
}
//中文分词
//author 贝贝 <hebiduhebi@163.com>
private function get_tags($title, $num = 10){
    vendor('Pscws.Pscws4', '', '.class.php');
    $pscws = new PSCWS4();
    $pscws -> set_dict(CONF_PATH . 'etc/dict.utf8.xdb');
    $pscws -> set_rule(CONF_PATH . 'etc/rules.utf8.ini');
    $pscws -> set_ignore(true);
    $pscws -> send_text($title);
    $words = $pscws -> get_tops($num);
    $pscws -> close();
    $tags = array();
    foreach ($words as $val){
        $tags[] = $val['word'];
    }
    return implode(',', $tags);
}
//
public function handleIntro($str){
    $search = array('&quot;', '&nbsp;');
    $replace = array('"', '');
    return str_replace($search, $replace, $str);
}
//获取天气信息
private function getWeatherInfo($cityName)
{
        
        // addWeixinLog(C('baidu.ak'),"getWeatherInfo ".$cityName);
        $url = "http://api.map.baidu.com/telematics/v3/weather?location=".urlencode($cityName)."&output=json&ak=".C('baidu.ak');
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($output, true);
        if ($result["error"] != 0){
            return '';
        }

        $curHour = (int)date('H',time());
        $weather = $result["results"][0];
        $weatherArray[] = array("Title" =>$weather['currentCity']."天气预报", "Description" =>"", "PicUrl" =>"", "Url" =>"");
        for ($i = 0; $i < count($weather["weather_data"]); $i++) {
            $weatherArray[] = array(0=>
            $weather["weather_data"][$i]["date"]."\n".
            $weather["weather_data"][$i]["weather"]." ".
            $weather["weather_data"][$i]["wind"]." ".
            $weather["weather_data"][$i]["temperature"],
            1=>"", 
            2=>(($curHour >= 6) && ($curHour < 18))?$weather["weather_data"][$i]["dayPictureUrl"]:$weather["weather_data"][$i]["nightPictureUrl"], 
            3=>"");
        }
        return array($weatherArray,"news");
}


//获取音乐信息
private function getMusicInfo($musicname)
{
    
     // addWeixinLog($name,"getMusicInfo");
     $musicname = trim($musicname);
     $music = "没找到相关歌曲! V V ";
     if($musicname == ""){
             $musicname = "我是中国人";
     }
    
    $url = "http://box.zhangmen.baidu.com/x?op=12&count=1&title=".$musicname."$$";
    $ch = curl_init();
    $header = "Accept-Charset: utf-8";
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $data = curl_exec($ch);
    // addWeixinLog($data,"点歌menus".strlen($data)); 
    // var_dump($data2); 

    // $log ['cTime'] = time ();
    // $log ['loginfo'] = $data;
    // $log ['operator'] = $operator;
    // M ( 'weixin_log' )->add ( $log );

     
        // addWeixinLog($data,"点歌menus".$musicname);  
        $menus = simplexml_load_string($data,'SimpleXMLElement',LIBXML_NOCDATA);
         // addWeixinLog(gettype($menus),"点歌menus".$musicname);  

        curl_close($ch);

     foreach ($menus as $menu) {            
         if(isset($menu->encode) && isset($menu->decode)
            && !strpos($menu->encode,"baidu.com") && strpos($menu->decode,".mp3")){
            $result = substr($menu->encode,0,strripos($menu->encode, '/')+1).$menu->decode;
            //addWeixinLog($menu->encode,"encode");   
           // addWeixinLog($menu->decode,"decode");   
            
             if(!strpos($result,"?") && !strpos($result,"xcode")){
                // $music = array("Title"=>$musicname,
                //                     "Description"=>"",
                //                     "MusicUrl"=>urldecode($result),
                //                     "HQMusicUrl"=>urldecode($result));
                $music = array();
                $music[0] = $musicname;
                $music[1] ="";
                $music[2] =urldecode($result);
                $music[3] =urldecode($result);
                //addWeixinLog($result,"result");
                //addWeixinLog(urldecode($result),"result");
                //addWeixinLog($music[2],"result");
                break;
             }//end if
         }//end if
     }//end foreach
      
     
     //addWeixinLog($music,"音乐 结果");
    if(is_array($music)){
        return array($music,"music");
    }else{
        return $music;
    }
}

//电影
function dianying($name){
    // addWeixinLog($name,"dianying");
    $name = implode(" ",$name);
    $data = getOneVideoInfo($name);
    if(is_array($data)){
        return array(array(0=>$data),"news");
    }else{
        return "";
    }
}

//微上墙oauth授权链接
function wallOAuth2(){
        $token = $this -> token;
        
        $wecha_id = $this -> data['FromUserName'];
        $thisWall = M('Wall') -> where(array('isopen' => 1, 'token' => $token)) -> find();
        if($thisWall)
        {
           
            import("ORG.OAuth2");
            $oauth2 = new \OAuth2();
            return array('<a href="'.$oauth2->getLink(C('site_url').U('Home/Index/oauth2' , array('token' => $this -> token,'wallid'=> $thisWall ['id'] )),'wall').'" >点击我开启微信墙！</a>', 'text');
            
        }else{
            return array('微上墙未开启！', 'text');
        }
}

//oauth授权链接
function shakeOAuth2(){
        $token = $this -> token;
        
        $wecha_id = $this -> data['FromUserName'];
        $thisShake = M('Shake') -> where(array('isopen' => 1, 'token' => $token)) -> find();
        if($thisShake)
        {

            $shakeid = $thisShake['id'];
            return array('<a href="'.C('site_url').U('Wap/Shake/checkJoin',array('token'=>$token,'wecha_id'=>$wecha_id,'id'=>$shakeid)).'" >点击我进入摇一摇</a>', 'text');
            
        }else{
            return array('摇一摇未开启！', 'text');
        }
}

function renpin($name)
{
    $name = str_replace("+", "", $name);
    $f = mb_substr($name,0,1,'utf-8');
    $s = mb_substr($name,1,1,'utf-8');
    $w = mb_substr($name,2,1,'utf-8');
    $x = mb_substr($name,3,1,'utf-8');
    $n=(getUnicodeFromUTF8($f) + getUnicodeFromUTF8($s) + getUnicodeFromUTF8($w) + getUnicodeFromUTF8($x)) % 100;
    $addd='';
    if(empty($name))
    {
        $addd="大哥不要玩我啊，名字都没有你想算什么！";

    } else if ($n <= 0) {
        $addd ="你一定不是人吧？怎么一点人品都没有？！";
    } else if($n > 0 && $n <= 5) {
        $addd ="算了，跟你没什么人品好谈的...";
    } else if($n > 5 && $n <= 10) {
        $addd ="是我不好...不应该跟你谈人品问题的...";
    } else if($n > 10 && $n <= 15) {
        $addd ="杀过人没有?放过火没有?你应该无恶不做吧?";
    } else if($n > 15 && $n <= 20) {
        $addd ="你貌似应该三岁就偷看隔壁大妈洗澡的吧..."; 
    } else if($n > 20 && $n <= 25) {
        $addd ="你的人品之低下实在让人惊讶啊..."; 
    } else if($n > 25 && $n <= 30) {
        $addd ="你的人品太差了。你应该有干坏事的嗜好吧?";
    } else if($n > 30 && $n <= 35) {
        $addd ="你的人品真差!肯定经常做偷鸡摸狗的事...";
    } else if($n > 35 && $n <= 40) {
        $addd ="你拥有如此差的人品请经常祈求佛祖保佑你吧...";
    } else if($n > 40 && $n <= 45) {
        $addd ="老实交待..那些论坛上面经常出现的偷拍照是不是你的杰作?"; 
    } else if($n > 45 && $n <= 50) {
        $addd ="你随地大小便之类的事没少干吧?";
    } else if($n > 50 && $n <= 55) {
        $addd ="你的人品太差了..稍不小心就会去干坏事了吧?"; 
    } else if($n > 55 && $n <= 60) {
        $addd ="你的人品很差了..要时刻克制住做坏事的冲动哦.."; 
    } else if($n > 60 && $n <= 65) {
        $addd ="你的人品比较差了..要好好的约束自己啊.."; 
    } else if($n > 65 && $n <= 70) {
        $addd ="你的人品勉勉强强..要自己好自为之.."; 
    } else if($n > 70 && $n <= 75) {
        $addd ="有你这样的人品算是不错了..";
    } else if($n > 75 && $n <= 80) {
        $addd ="你有较好的人品..继续保持.."; 
    } else if($n > 80 && $n <= 85) {
        $addd ="你的人品不错..应该一表人才吧?";
    } else if($n > 85 && $n <= 90) {
        $addd ="你的人品真好..做好事应该是你的爱好吧.."; 
    } else if($n > 90 && $n <= 95) {
        $addd ="你的人品太好了..你就是当代活雷锋啊...";
    } else if($n > 95 && $n <= 99) {
        $addd ="你是世人的榜样！";
    } else if($n > 100 && $n < 105) {
        $addd ="天啦！你不是人！你是神！！！"; 
    }else if($n > 105 && $n < 999) {
        $addd="你的人品已经过 100 人品计算器已经甘愿认输，3秒后人品计算器将自杀啊";
    } else if($n > 999) {
        $addd ="你的人品竟然负溢出了...我对你无语.."; 
    }
    return $name."的人品分数为：".$n."\n".$addd  ;

}

}

