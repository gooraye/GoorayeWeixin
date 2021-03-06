<?php
class SystemAction extends BackAction{
    public $server_url;
    public $key;
    public $topdomain;
    public $dirtype;
    public function _initialize(){
        parent :: _initialize();
        $this -> server_url = trim(C('server_url'));
        if (!$this -> server_url){
            $this -> server_url = 'http://up.gooraye.net/';
        }
        $this -> key = trim(C('server_key'));
        $this -> topdomain = trim(C('server_topdomain'));
        if (!$this -> topdomain){
            $this -> topdomain = $this -> getTopDomain();
        }
        if (file_exists($_SERVER['DOCUMENT_ROOT'] . '/Lib') && is_dir($_SERVER['DOCUMENT_ROOT'] . '/Lib')){
            $this -> dirtype = 2;
        }else{
            $this -> dirtype = 1;
        }
        $Model = new Model();
        $Model -> query("CREATE TABLE IF NOT EXISTS `" . C('DB_PREFIX') . "system_info` (`lastsqlupdate` INT( 10 ) NOT NULL ,`version` VARCHAR( 10 ) NOT NULL) ENGINE = MYISAM CHARACTER SET utf8");
        $Model -> query("CREATE TABLE IF NOT EXISTS `" . C('DB_PREFIX') . "update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8");
    }
    public function index(){
        $where['display'] = 1;
        $where['status'] = 1;
        $order['sort'] = 'asc';
        $nav = M('node') -> where($where) -> order($order) -> select();
        // var_dump($nav);
        $this -> assign('nav', $nav);
        $this -> display();
    }
    public function menu(){
        if(empty($_GET['pid'])){
            $where['display'] = 2;
            $where['status'] = 1;
            $where['pid'] = 2;
            $where['level'] = 2;
            $order['sort'] = 'asc';
            $nav = M('node') -> where($where) -> order($order) -> select();
            $this -> assign('nav', $nav);
        }
        $this -> display();
    }
    public function main(){
        $canEnUpdate = 1;
        $this -> assign('canEnUpdate', $canEnUpdate);
        $updateRecord = M('System_info') -> order('lastsqlupdate DESC') -> find();
        if ($updateRecord['lastsqlupdate'] > $updateRecord['version']){
            $updateRecord['version'] = $updateRecord['lastsqlupdate'];
        }
        $this -> assign('updateRecord', $updateRecord);
        $this -> display();
    }
    public function _needUpdate(){
        $Model = new Model();
        $updateRecord = M('System_info') -> order('lastsqlupdate DESC') -> find();
        if (!$updateRecord){
            $Model -> query('INSERT INTO `' . C('DB_PREFIX') . 'system_info` (`lastsqlupdate`, `version`) VALUES(0, \'0\')');
        }
        $key = $this -> key;
        $url = $this -> server_url . 'server.php?key=' . $key . '&lastversion=' . $updateRecord['version'] . '&domain=' . $this -> topdomain . '&dirtype=' . $this -> dirtype;
        $remoteStr = @gooraye_getcontents($url);
        $rt = json_decode($remoteStr, 1);
        return $rt;
    }
    public function _needSqlUpdate(){
        $updateRecord = M('System_info') -> order('lastsqlupdate DESC') -> find();
        $key = $this -> key;
        $url = $this -> server_url . 'sqlserver.php?key=' . $key . '&lastsqlupdate=' . $updateRecord['lastsqlupdate'] . '&domain=' . $this -> topdomain . '&dirtype=' . $this -> dirtype;
        $remoteStr = gooraye_getcontents($url);
        $rt = json_decode($remoteStr, 1);
        return $rt;
    }
    public function checkUpdate(){
        $rt = $this -> _needUpdate();
        $needUpdate = 0;
        if ($rt['success'] < 1){
            $sqlrt = $this -> _needSqlUpdate();
            if ($sqlrt['success'] < 1){
            }else{
                $needUpdate = 1;
            }
        }else{
            $needUpdate = 1;
        }
        $this -> assign('needUpdate', $needUpdate);
        $this -> display();
    }
    public function doUpdate(){
        $cannotWrite = 0;
        if (!class_exists('ZipArchive')){
            $this -> error('您的服务器不支持php zip扩展，请配置好此扩展再来升级', U('System/main'));
        }
        if (!isset($_GET['ignore'])){
            if (!is_writable($_SERVER['DOCUMENT_ROOT'] . '/Gooraye')){
                $cannotWrite = 1;
                $this -> error('您的服务器Gooraye文件夹不可写入，设置好再升级', U('System/main'));
            }
            if (!is_writable($_SERVER['DOCUMENT_ROOT'] . '/Gooraye/Lib/Action')){
                $cannotWrite = 1;
                $this -> error('您的服务器/Gooraye/Lib/Action文件夹不可写入，设置好再升级', U('System/main'));
            }
            if (!is_writable($_SERVER['DOCUMENT_ROOT'] . '/tpl')){
                $this -> error('您的服务器tpl文件夹不可写入，设置好再升级', U('System/main'));
            }
            if (!is_writable($_SERVER['DOCUMENT_ROOT'] . '/tpl/User/default')){
                $this -> error('您的服务器/tpl/User/default文件夹不可写入，设置好再升级', U('System/main'));
            }
        }
        $now = time();
        $updateRecord = M('System_info') -> order('lastsqlupdate DESC') -> find();
        $key = $this -> key;
        $url = $this -> server_url . 'server.php?key=' . $key . '&lastversion=' . $updateRecord['version'] . '&domain=' . $this -> topdomain . '&dirtype=' . $this -> dirtype;
        $remoteStr = @gooraye_getcontents($url);
        $rt = json_decode($remoteStr, 1);
        if (intval($rt['success']) < 1){
            if (intval($rt['success']) == 0){
                if (!isset($_GET['ignore'])){
                    $this -> success('继续检查更新了,不要关闭,跳是正常的' . $rt['msg'], U('System/doSqlUpdate'));
                }else{
                    $this -> success('继续检查更新了,不要关闭,跳是正常的' . $rt['msg'], U('System/doSqlUpdate', array('ignore' => 1)));
                }
            }else{
                $this -> success($rt['msg'], U('System/main'));
            }
        }else{
            $locationZipPath = RUNTIME_PATH . $now . '.zip';
            $filename = $this -> server_url . 'server.php?getFile=1&key=' . $key . '&lastversion=' . $updateRecord['version'] . '&domain=' . $this -> topdomain . '&dirtype=' . $this -> dirtype;
            @file_put_contents($locationZipPath, @gooraye_getcontents($filename));
            $zip = new ZipArchive();
            $rs = $zip -> open($locationZipPath);
            if($rs !== TRUE){
                $this -> error('解压失败_2!Error Code:' . $rs);
            }
            $cacheUpdateDirName = 'caches_upgrade' . date('Ymd', time());
            if(!file_exists(RUNTIME_PATH . $cacheUpdateDirName)){
                @mkdir(RUNTIME_PATH . $cacheUpdateDirName, 0777);
            }
            $zip -> extractTo(RUNTIME_PATH . $cacheUpdateDirName);
            recurse_copy(RUNTIME_PATH . $cacheUpdateDirName, $_SERVER['DOCUMENT_ROOT']);
            $zip -> close();
            if (!$cannotWrite){
                @deletedir(RUNTIME_PATH . $cacheUpdateDirName);
            }
            @unlink($locationZipPath);
            if ($rt['time']){
                M('System_info') -> where(array('version' => $updateRecord['version'])) -> save(array('version' => $rt['time']));
                M('Update_record') -> add(array('msg' => $rt['msg'], 'time' => $rt['time'], 'type' => $rt['type']));
            }
            if (isset($_GET['ignore'])){
                $this -> success('进入下一步(不要关闭,等待完成,跳是正常的):' . $rt['msg'], U('System/doUpdate', array('ignore' => 1)));
            }else{
                $this -> success('进入下一步(不要关闭,等待完成,跳是正常的):' . $rt['msg'], U('System/doUpdate'));
            }
        }
    }
    public function doSqlUpdate(){
        $now = time();
        $updateRecord = M('System_info') -> order('lastsqlupdate DESC') -> find();
        $key = $this -> key;
        $url = $this -> server_url . 'sqlserver.php?key=' . $key . '&excute=1&lastsqlupdate=' . $updateRecord['lastsqlupdate'] . '&domain=' . $this -> topdomain . '&dirtype=' . $this -> dirtype;
        $remoteStr = gooraye_getcontents($url);
        $rt = json_decode($remoteStr, 1);
        if (intval($rt['success']) < 1){
            if (intval($rt['success']) == 0){
                $this -> success('升级完成', U('System/main'));
            }else{
                $this -> error($rt['msg'], U('System/main'));
            }
        }else{
            $Model = new Model();
            error_reporting(0);
            @mysql_query(str_replace('{tableprefix}', C('DB_PREFIX'), $rt['sql']));
            if ($rt['time']){
                M('System_info') -> where(array('lastsqlupdate' => $updateRecord['lastsqlupdate'])) -> save(array('lastsqlupdate' => $rt['time']));
            }
            if (!isset($_GET['ignore'])){
                $this -> success('进入下一步(不要关闭,耐心等待完成,跳是正常的):' . $rt['msg'], U('System/doSqlUpdate'));
            }else{
                $this -> success('进入下一步(不要关闭,耐心等待完成,跳是正常的):' . $rt['msg'], U('System/doSqlUpdate', array('ignore' => 1)));
            }
        }
    }
    function rollback(){
        $time = substr($_GET['time'], 0, 8);
        $year = substr($time, 0, 4);
        $month = substr($time, 4, 2);
        $day = substr($time, 6, 2);
        $timeStamp = mktime(0, 0, 0, $month, $day, $year);
        $updateRecord = M('System_info') -> order('lastsqlupdate DESC') -> find();
        M('System_info') -> where(array('lastsqlupdate' => $updateRecord['lastsqlupdate'])) -> save(array('lastsqlupdate' => $timeStamp, 'version' => $timeStamp));
        $this -> success('您可以重新进行升级了', U('System/main'));
    }
    function curlGet($url){
        $ch = curl_init();
        $header = "Accept-Charset: utf-8";
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
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
    function getTopDomain(){
        $host = $_SERVER['HTTP_HOST'];
        $host = strtolower($host);
        if(strpos($host, '/') !== false){
            $parse = @parse_url($host);
            $host = $parse['host'];
        }
        $topleveldomaindb = array('com', 'edu', 'gov', 'int', 'mil', 'net', 'org', 'biz', 'info', 'pro', 'name', 'museum', 'coop', 'aero', 'xxx', 'idv', 'mobi', 'cc', 'me');
        $str = '';
        foreach($topleveldomaindb as $v){
            $str .= ($str ? '|' : '') . $v;
        }
        $matchstr = "[^\.]+\.(?:(" . $str . ")|\w{2}|((" . $str . ")\.\w{2}))$";
        if(preg_match("/" . $matchstr . "/ies", $host, $matchs)){
            $domain = $matchs['0'];
        }else{
            $domain = $host;
        }
        return $domain;
    }
}
function recurse_copy($src, $dst){
    $dir = opendir($src);
    @mkdir($dst);
    while(false !== ($file = readdir($dir))){
        if (($file != '.') && ($file != '..')){
            if (is_dir($src . '/' . $file)){
                recurse_copy($src . '/' . $file, $dst . '/' . $file);
            }else{
                copy($src . '/' . $file, $dst . '/' . $file);
            }
        }
    }
    closedir($dir);
}
function deletedir($dirname){
    $result = false;
    if(! is_dir($dirname)){
        echo " $dirname is not a dir!";
        exit(0);
    }
    $handle = opendir($dirname);
    while(($file = readdir($handle)) !== false){
        if($file != '.' && $file != '..'){
            $dir = $dirname . DIRECTORY_SEPARATOR . $file;
            is_dir($dir) ? deletedir($dir) : unlink($dir);
        }
    }
    closedir($handle);
    $result = rmdir($dirname) ? true : false;
    return $result;
}
function gooraye_getcontents($url){
    if (function_exists('curl_init')){
        $ch = curl_init();
        $header = "Accept-Charset: utf-8";
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $temp = curl_exec($ch);
        $errorno = curl_errno($ch);
        if ($errorno){
            exit('curl发生错误：错误代码' . $errorno . '，如果错误代码是6，您的服务器可能无法连接我们升级服务器');
        }else{
            return $temp;
        }
    }else{
        $str = file_get_contents($url);
        return $str;
    }
}
?>