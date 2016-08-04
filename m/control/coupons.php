<?php
/**
 * 电子券管理
 *
 *
 *
 *
 */

defined('InSystem') or exit('Access Invalid!');

class couponsControl extends mobileMemberControl{

    public function __construct() {
        parent::__construct();
    }

    public function indexOp()
    {
        $model = Model('coupons');
        $where  = " member_name = '{$this->member_info['member_name']}'";

        $userable = $_POST['useable'];


        if ($userable === '1') {
            $where .= " AND state = 0 AND to_date > " . strtotime("-1 day");
        }else{
            $where .= " AND (state = 1 OR to_date < " . strtotime("1 day") . ")";
        }


        $list = $model->getCouponsList($where, 20);
        output_data(array('list'=>$list));
    }
}
