<?php
// defined('InSystem') or exit('Access Invalid!');

$config = array();
$config['base_site_url'] 		= 'http://120.25.212.243/czb';
$config['admin_site_url'] 		= 'http://120.25.212.243/czb/admin';
$config['mall_site_url'] 		= 'http://120.25.212.243/czb/mall';
$config['mobile_site_url'] 		= 'http://120.25.212.243/czb/m';
$config['wap_site_url'] 		= 'http://120.25.212.243/czb/wap';
$config['chat_site_url'] 		= 'http://120.25.212.243/czb/chat';
$config['node_site_url'] 		= 'http://::1:8090';
$config['upload_site_url']		= 'http://120.25.212.243/czb/data/upload';
$config['resource_site_url']	= 'http://120.25.212.243/czb/data/resource';
$config['version'] 		= '201505251201';
$config['setup_date'] 	= '2016-03-02 15:35:08';
$config['gip'] 			= 0;
$config['dbdriver'] 	= 'mysqli';
$config['tablepre']		= 'yunpay_';
$config['db']['1']['dbhost']       = '127.0.0.1';
$config['db']['1']['dbport']       = '3306';
$config['db']['1']['dbuser']       = 'root';
$config['db']['1']['dbpwd']        = 'Chezubao@123';
$config['db']['1']['dbname']       = 'czb';
$config['db']['1']['dbcharset']    = 'UTF-8';
$config['db']['slave']                  = $config['db']['master'];
$config['session_expire'] 	= 3600;
$config['lang_type'] 		= 'zh_cn';
$config['cookie_pre'] 		= 'CHEZUBAO_';
$config['thumb']['cut_type'] = 'gd';
$config['thumb']['impath'] = '';
$config['cache']['type'] 			= 'file';
//$config['redis']['prefix']      	= 'nc_';
//$config['redis']['master']['port']     	= 6379;
//$config['redis']['master']['host']     	= '127.0.0.1';
//$config['redis']['master']['pconnect'] 	= 0;
//$config['redis']['slave']      	    = array();
//$config['fullindexer']['open']      = false;
$config['debug'] 			= true;
$config['default_store_id'] = '1';
$config['url_model'] = false;
$config['subdomain_suffix'] = '';
//$config['session_type'] = 'redis';
//$config['session_save_path'] = 'tcp://127.0.0.1:6379';
$config['node_chat'] = true;
//流量记录表数量，为1~10之间的数字，默认为3，数字设置完成后请不要轻易修改，否则可能造成流量统计功能数据错误
$config['flowstat_tablenum'] = 3;

$config['sms']['plugin'] = 'ccp';
$config['queue']['open'] = false;
$config['queue']['host'] = '127.0.0.1';
$config['queue']['port'] = 6379;
$config['cache_open'] = false;
return $config;