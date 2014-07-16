<?php
header("Content-type: text/html; charset=utf-8");
ini_set('display_errors', '1');
error_reporting(E_ALL ^ E_NOTICE);

if (get_magic_quotes_gpc()) {
 function stripslashes_deep($value){
  $value = is_array($value) ?
  array_map('stripslashes_deep', $value) :
  stripslashes($value);
  return $value;
 }
 $_POST = array_map('stripslashes_deep', $_POST);
 $_GET = array_map('stripslashes_deep', $_GET);
 $_COOKIE = array_map('stripslashes_deep', $_COOKIE);
}
define('APP_NAME', 'gooraye');
define('CONF_PATH','./Conf/');
define('TMPL_PATH','./tpl/');
$GLOBALS['_beginTime'] = microtime(TRUE);
define('MEMORY_LIMIT_ON',function_exists('memory_get_usage'));
define('CORE','./');
if(MEMORY_LIMIT_ON) $GLOBALS['_startUseMems'] = memory_get_usage();
define('APP_PATH','./Gooraye/');

define('RUNTIME_PATH','./Conf/logs/');

define('APP_DEBUG',TRUE);

$runtime = defined('MODE_NAME')?'~'.strtolower(MODE_NAME).'_runtime.php':'~runtime.php';
defined('RUNTIME_FILE') or define('RUNTIME_FILE',RUNTIME_PATH.$runtime);
// var_dump(RUNTIME_FILE);
if(!APP_DEBUG && is_file(RUNTIME_FILE)) {
	// var_dump(RUNTIME_FILE);
   	require RUNTIME_FILE;
}else{
    defined('THINK_PATH') or define('THINK_PATH', dirname(__FILE__).'/');
    // var_dump(THINK_PATH);
    require THINK_PATH.'Common/runtime.php';
}
?>