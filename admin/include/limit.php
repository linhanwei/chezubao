<?php
/**
 * 载入权限
 *
 */
defined('InSystem') or exit('Access Invalid!');
$_limit =  array(
	array('name'=>$lang['nc_config'], 'child'=>array(
        array('name'=>$lang['nc_web_set'], 'op'=>null, 'act'=>'setting'),
        array('name'=>$lang['nc_web_account_syn'], 'op'=>null, 'act'=>'account'),
        array('name'=>$lang['nc_upload_set'], 'op'=>null, 'act'=>'upload'),
        array('name'=>$lang['nc_seo_set'], 'op'=>'seo', 'act'=>'setting'),
        array('name'=>$lang['nc_pay_method'], 'op'=>null, 'act'=>'payment'),
        array('name'=>$lang['nc_message_set'], 'op'=>null, 'act'=>'message'),
        array('name'=>$lang['nc_admin_express_set'], 'op'=>null, 'act'=>'express'),
        array('name'=>'运单模板', 'op'=>null, 'act'=>'waybill'),
        array('name'=>$lang['nc_admin_offpay_area_set'], 'op'=>null, 'act'=>'offpay_area'),
        array('name'=>$lang['nc_admin_clear_cache'], 'op'=>null, 'act'=>'cache'),
        array('name'=>$lang['nc_admin_perform_opt'], 'op'=>null, 'act'=>'perform'),
        array('name'=>$lang['nc_admin_search_set'], 'op'=>null, 'act'=>'search'),
        array('name'=>$lang['nc_admin_log'], 'op'=>null, 'act'=>'admin_log'),
		)),
    array('name'=>$lang['nc_goods'], 'child'=>array(
        array('name'=>$lang['nc_goods_manage'], 'op'=>null, 'act'=>'goods'),
        array('name'=>$lang['nc_class_manage'], 'op'=>null, 'act'=>'goods_class'),
        array('name'=>$lang['nc_brand_manage'], 'op'=>null, 'act'=>'brand'),
        array('name'=>$lang['nc_type_manage'], 'op'=>null, 'act'=>'type'),
        array('name'=>$lang['nc_spec_manage'], 'op'=>null, 'act'=>'spec'),
        array('name'=>$lang['nc_album_manage'], 'op'=>null, 'act'=>'goods_album'),
    )),
	array('name'=>$lang['nc_store'], 'child'=>array(
		array('name'=>$lang['nc_store_manage'], 'op'=>null, 'act'=>'store')
		)),
	array('name'=>$lang['nc_member'], 'child'=>array(
		array('name'=>$lang['nc_member_manage'], 'op'=>null, 'act'=>'member'),
	    array('name'=>'会员级别', 'op'=>null, 'act'=>'member_grade'),
		array('name'=>$lang['nc_member_notice'], 'op'=>null, 'act'=>'notice'),
		array('name'=>$lang['nc_member_pointsmanage'], 'op'=>null, 'act'=>'points'),
        array('name'=>'奖励', 'op'=>null, 'act'=>'points_inviter'),
		array('name'=>$lang['nc_member_predepositmanage'], 'op'=>null, 'act'=>'predeposit'),
        array('name'=>'现金充值', 'op'=>'manual_add', 'act'=>'predeposit'),
        array('name'=>'推荐人统计', 'op'=>null, 'act'=>'invite'),
        array('name'=>'加盟申请', 'op'=>'feedback', 'act'=>'agent'),
        array('name'=>'油卡管理', 'op'=>null, 'act'=>'oil'),
        array('name'=>'油卡充值', 'op'=>null, 'act'=>'oil')
		)),
    array('name'=>$lang['nc_trade'], 'child'=>array(
        array('name'=>$lang['nc_order_manage'], 'op'=>null, 'act'=>'order'),
        array('name'=>'虚拟订单', 'op'=>null, 'act'=>'vr_order'),
        array('name'=>'退款管理', 'op'=>null, 'act'=>'refund'),
        array('name'=>'退货管理', 'op'=>null, 'act'=>'return'),
        array('name'=>'虚拟订单退款', 'op'=>null, 'act'=>'vr_refund'),
        array('name'=>$lang['nc_consult_manage'], 'op'=>null, 'act'=>'consulting'),
        array('name'=>$lang['nc_inform_config'], 'op'=>null, 'act'=>'inform'),
        array('name'=>$lang['nc_goods_evaluate'], 'op'=>null, 'act'=>'evaluate'),
        array('name'=>$lang['nc_complain_config'], 'op'=>null, 'act'=>'complain'),
    )),
	array('name'=>$lang['nc_operation'], 'child'=>array(
		array('name'=>$lang['nc_operation_set'], 'op'=>null, 'act'=>'operation'),
		array('name'=>'房车电子券', 'op'=>null, 'act'=>'coupons')
		))
);
$_limit[] = array('name'=>$lang['nc_mobile'], 'child'=>array(
    array('name'=>'首页设置', 'op'=>NULL, 'act'=>'mb_special'),
   /* array('name'=>'专题设置', 'op'=>NULL, 'act'=>'mb_special'),
    array('name'=>$lang['nc_mobile_catepic'], 'op'=>NULL, 'act'=>'mb_category'),
    array('name'=>'下载设置', 'op'=>NULL, 'act'=>'mb_app'),
    array('name'=>$lang['nc_mobile_feedback'], 'op'=>NULL, 'act'=>'mb_feedback'),
    array('name'=>'手机支付', 'op'=>NULL, 'act'=>'mb_payment'),*/
));
return $_limit;
