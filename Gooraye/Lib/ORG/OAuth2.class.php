<?php
// .-----------------------------------------------------------------------------------
// | 
// | 
// | Site: http://www.gooraye.net
// |-----------------------------------------------------------------------------------
// | Author: 贝贝 <hebiduhebi@163.com>
// | Copyright (c) 2012-2014, http://www.gooraye.net. All Rights Reserved.
// |-----------------------------------------------------------------------------------

class OAuth2
{
	private $appid = 'wx58aea38c0796394d';
	private $appsecret = '3e1404c970566df55d7314ecfe9ff437';
	private $access_token = '';
	private $refresh_token = '';
	private $openid = '';

	public function __construct()
	{

	} 

	/*
	** 取得Oauth2的链接地址
	** @redirect_url 授权后跳转地址
	*/
	function getLink($redirect_uri,$state='a'){
		$redirect_uri = urlencode($redirect_uri);
		$link = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$this->appid."&redirect_uri=$redirect_uri&response_type=code&scope=snsapi_userinfo&state=$state#wechat_redirect";
		return $link;
	}

	//根据code获取一些关键参数信息
	function getInfo($code){
		$queryURL = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$this->appid
		."&secret=".$this->appsecret."&code=".$code."&grant_type=authorization_code";
		$data = $this->curlGet($queryURL);
		 // var_dump($data);
		//期望格式为
		//{
		//    "access_token":"ACCESS_TOKEN",
		//    "expires_in":7200,
		//    "refresh_token":"REFRESH_TOKEN",
		//    "openid":"OPENID",
		//    "scope":"SCOPE"
		// }
		// if($data)
		$data = json_decode($data);
		if(empty($data->errcode)){
			$this->access_token = $data->access_token;
			$this->refresh_token = $data->refresh_token;
			$this->openid = $data->openid;
			return "";
		}else{
			return "获取失败！";
		}
	}

	//获取用户信息
	//昵称{
//    "openid":" OPENID",
//    " nickname": NICKNAME,
//    "sex":"1",
//    "province":"PROVINCE"
//    "city":"CITY",
//    "country":"COUNTRY",
//     "headimgurl":    "http://wx.qlogo.cn/mmopen/g3MonUZtNHkdmzicIlibx6iaFqAc56vxLSUfpb6n5WKSYVY0ChQKkiaJSgQ1dZuTOgvLLrhJbERQQ4eMsv84eavHiaiceqxibJxCfHe/46", 
// 	"privilege":[
// 	"PRIVILEGE1"
// 	"PRIVILEGE2"
//     ]
// }
	function getUserInfo(){
		$link = "https://api.weixin.qq.com/sns/userinfo?access_token=".$this->access_token."&openid=".$this->openid."&lang=zh_CN";

		$data = $this->curlGet($link);

		return json_decode($data);
	}

	function curlGet($url){
		if(function_exists('file_get_contents')) {
			$file_contents = file_get_contents($url);
		} else {
			$ch = curl_init();
			$timeout = 5;
			curl_setopt ($ch, CURLOPT_URL, $url);
			curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
			$file_contents = curl_exec($ch);
			curl_close($ch);
		}
		return $file_contents;
	}
}
