<?php
function isAndroid(){
	if(strstr($_SERVER['HTTP_USER_AGENT'],'Android')) {
		return 1;
	}
	return 0;
}

function addWeixinLog($data, $operator = '') {
	$log ['cTime'] = time ();
	$log ['loginfo'] = is_array ( $data ) ? serialize ( $data ) : $data;
	$log ['operator'] = $operator;
	M ( 'weixin_log' )->add ( $log );
}

/*
** 获取彩票信息，彩票名称 ，日期 
**  其中日期格式为2014-06-18
** author 贝贝 <hebiduhebi@163.com>
*/
function getLotteryInfo($lottery,$date=''){
	$supportLotter["双色球"] = 1;
	$supportLotter["福彩3D"] = 2;
	$supportLotter["新3D"] = 3;
	$supportLotter["七乐彩"] = 4;
	$supportLotter["超级大乐透"] = 5;
	$supportLotter["七星彩"] = 6;
	$supportLotter["双色球"] = 7;
	$supportLotter["排列5"] = 8;
	$supportLotter["14场胜负彩"] = 9;
	$supportLotter["任选9场"] = 10;
	$supportLotter["四场进球"] = 11;
	$supportLotter["六场半全场"] = 12;
	$supportLotter["22选5"] = 13;
	$supportLotter["十一运夺金"] = 14;
	$supportLotter["时时彩"] = 15;
	$supportLotter["新时时彩"] = 16;
	$supportLotter["11选5"] = 17;
	$supportLotter["新11选5"] = 18;
	$supportLotter["重庆11选5"] = 19;
	$supportLotter["上海11选5"] = 20;
	$supportLotter["上海时时乐"] = 21;
	$supportLotter["北京快乐8"] = 22;
	$supportLotter["山东群英会"] = 23;
	$supportLotter["泳坛夺金"] = 24;
	$supportLotter["广东快乐十分"] = 25;
	$supportLotter["广西快乐十分"] = 26;
	$supportLotter["湖南快乐十分"] = 27;
	$supportLotter["重庆快乐十分"] = 28;
	$supportLotter["PK拾"] = 29;
	$supportLotter["8选3"] = 30;
	$supportLotter["新快3"] = 31;
	$supportLotter["快3"] = 32;
	$supportLotter["老快3"] = 33;
	$supportLotter["湖南幸运赛车"] = 35;
	$supportLotter["快乐扑克3"] = 36;

	$lotteryid = $supportLotter[$lottery];

	if(!isset($supportLotter[$lottery])){
		$lotteryid = 1;
	}

	$appkey =C('juhe.caipiaoAppkey'); #通过聚合申请到数据的appkey

	$url ='http://v.juhe.cn/lottery/query'; #请求的数据接口URL

	$params ='key='.$appkey.'&dtype=json&lotteryid='.$lotteryid.'&date='.$date;
	$content = json_decode(juhecurl($url,$params,0));
	
	// addWeixinLog($content);
	
	if($content ->error_code == 0){
		return $content->result;
	}

	return "无相关彩票信息！";
}


/*
    ***请求接口，返回JSON数据
    ***@url:接口地址
    ***@params:传递的参数
    ***@ispost:是否以POST提交，默认GET
*/
function juhecurl($url,$params=false,$ispost=0){
    $httpInfo = array();
	$ch = curl_init();

	curl_setopt( $ch, CURLOPT_HTTP_VERSION , CURL_HTTP_VERSION_1_0 );
	curl_setopt( $ch, CURLOPT_USERAGENT , 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22' );
	curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT , 30 );
	curl_setopt( $ch, CURLOPT_TIMEOUT , 30);
	curl_setopt( $ch, CURLOPT_RETURNTRANSFER , true );
	if( $ispost )
	{
		curl_setopt( $ch , CURLOPT_POST , true );
		curl_setopt( $ch , CURLOPT_POSTFIELDS , $params );
		curl_setopt( $ch , CURLOPT_URL , $url );
	}
	else
	{
		if($params){
			curl_setopt( $ch , CURLOPT_URL , $url.'?'.$params );
		}else{
			curl_setopt( $ch , CURLOPT_URL , $url);
		}
	}
	$response = curl_exec( $ch );
	if ($response === FALSE) {
		#echo "cURL Error: " . curl_error($ch);
		return false;
	}
	$httpCode = curl_getinfo( $ch , CURLINFO_HTTP_CODE );
	$httpInfo = array_merge( $httpInfo , curl_getinfo( $ch ) );
	curl_close( $ch );
	return $response;
}


/*
** 获取股票信息，
**  其中日期格式为2014-06-18
** author 贝贝 <hebiduhebi@163.com>
*/
function getStockInfo($lottery,$date=''){
	
	$appkey =C('juhe.stockAppkey'); #通过聚合申请到数据的appkey

	return "无相关股票信息！";
}
//智能聊天
function chat_robot($keyword){
	$content = chat_xiaojo ( $keyword );

	return $content;
}
	
// 小九机器人
function chat_xiaojo($keyword) {

	$api_url = 'http://www.xiaojo.com/bot/chata.php?chat='. $keyword;	
	$result = file_get_contents ( $api_url );
	
	return $result;
}


//获取视频链接
function getVideoUrl($sourceid){

	$videoAppkey = C('juhe.videoAppkey'); 
	$packageName =C('juhe.packageName'); 
	$url ='http://web.juhe.cn:8080/video/vs'; #请求的数据接口URL

	$params ='appkey='.$videoAppkey.'&&v=1.0&pname='.$packageName.'&id='.$sourceid;

	$content = json_decode(juhecurl($url,$params,0));
		
	 if($content ->error_code == 0){
	 	return $content->data;
	 }
	 return "";
}

function getOneVideoInfo($keyword){

	$videoAppkey = C('juhe.videoAppkey'); 
	$packageName =C('juhe.packageName'); 

	$url ='http://web.juhe.cn:8080/video/v'; #请求的数据接口URL

	$params ='appkey='.$videoAppkey.'&&v=1.0&pname='.$packageName.'&keyword='.urlencode($keyword);
	
	$content = json_decode(juhecurl($url,$params,0));
	// addWeixinLog($content->data,"getOneVideoInfo".$keyword);
	 if($content ->error_code == 0){
		if(!empty($content->data)){
			$video = $content->data[0];
			$news[0] = $video->name;
			// $video->type
			$news[1] =  '年代地区：'.$video->time.'年 '.$video->area.'  类型：'.$video->type."\n 介绍：".$video->intro;
			// $news[1] = $video->intro;
			$news[2] =  $video->img;
			if(count($video->source) >= 1){
				$sourceid = $video->source[0]->id;
				$news[3] = getVideoUrl($sourceid);
			}else{
				$news[3] = 'http://www.baidu.com';
			}
			return $news;
		}
	// 	return $content->data;
	 }//end if

}


/** 
* 把一个汉字转为unicode的通用函数，不依赖任何库，和别的自定义函数，但有条件 
* 条件：本文件以及函数的输入参数应该用utf－8编码，不然要加函数转换 
* 其实亦可轻易编写反向转换的函数，甚至不局限于汉字，奇怪为什么php没有现成函数 
* @author xieye 
* 
* @param {string} $word 必须是一个汉字，或代表汉字的一个数组(用str_split切割过) 
* @return {string} 一个十进制unicode码，如4f60，代表汉字 “你” 
*/ 
function getUnicodeFromUTF8($word) { 
	//获取其字符的内部数组表示，所以本文件应用utf-8编码！ 
	if (is_array( $word)) {
		$arr = $word; 
	}
	else {
		$arr = str_split($word);
	} 

	//定义一个空字符串存储 
	$bin_str = ''; 
	//转成数字再转成二进制字符串，最后联合起来。 
	foreach ($arr as $value) {
		$bin_str .= decbin(ord($value)); 
	}
	
	//正则截取 
	$bin_str = preg_replace('/^.{4}(.{4}).{2}(.{6}).{2}(.{6})$/','$1$2$3', $bin_str); 

	return bindec($bin_str); //返回类似20320， 汉字"你" 
	//return dechex(bindec($bin_str)); //如想返回十六进制4f60，用这句 
} 

/*
* 返回模块名称
*  author 贝贝 <hebiduhebi@163.com>
*/
function getWXModuleCate($cate){
	$moduleName = '';
	switch ($cate) {
		case '1':
			$moduleName = "查询模块";
			break;
		case '2':
			$moduleName = "功能模块";
			break;		
		default:
			# code...
			break;
	}

	return $moduleName;
}

?>