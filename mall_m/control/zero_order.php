<?php

/**
 * 0元淘商品
 *
 *
 */
defined('InSystem') or exit('Access Invalid!');

class zero_goodsControl extends mobileHomeControl {

    public function __construct() {
        parent::__construct();
    }

    /**
     * 商品列表
     */
    public function goods_listOp() {
        $model_zero_goods = Model('zero_goods');
        $model_zero_goods = Model('zero_order');

        output_data($out_data, mobile_page($page_count));
    }
    
    /*
     * 下订单
     */
    public function create_orderOp() {
        $goods_number = $_POST['goods_number'];
        $payment_code = $_POST['payment_code'];
        $goods_id = $_POST['goods_id'];
        $prov = $_POST['prov_id'];
        $city = $_POST['city_id'];
        $region = $_POST['area_id'];
        $area_info = $_POST['area_info'];
        $address = $_POST['address'];
        $mob_phone = $_POST['mob_phone'];
        $buyer_name = $_POST['true_name'];
              
//        $this->checkOp(true);
        if($goods_number<= 0){
            output_error('购买数量最少1个!');
        }
        
        if(empty($goods_id)){
            output_error('请选择商品!');
        }
        
        if(empty($prov)){
            output_error('请选择省份!');
        }
        
        if(empty($city)){
            output_error('请选择城市!');
        }
        
        if(empty($region)){
            output_error('请选择区县!');
        }
        
        if(empty($address)){
            output_error('请填写详细地址!');
        }
        
        if(empty($mob_phone)){
            output_error('请填写手机号码!');
        }
        
        if(empty($buyer_name)){
            output_error('请填写收货人!');
        }
        
        $model_zero_order = Model('zero_order');
        $model_zero_order_goods = Model('zero_order_goods');
        $model_pd = Model('predeposit');
        $model_zero_goods = Model('zero_goods');
        
        $goods_info = $model_zero_goods->getGoodsDetail($goods_id);
        
        if(empty($goods_info)){
            output_error('选择支付的商品不存在');
        }
        
        if($goods_info['goods_surplus_num'] == 0){
            output_error('该商品已经卖完,请选择其他的产品!');
        }
        
        if($goods_info['goods_state'] != 1){
            output_error('该商品暂时不能销售,请选择其他的产品!');
        }
        
        if($goods_info['goods_verify'] != 1){
            output_error('该商品没有通过审核暂时不能销售,请选择其他的产品!');
        }
        
        //获取运费
        $goods_freight = $this->get_goods_freight($goods_info['goods_freight']);
        
        $goods_amount = $goods_number*$goods_freight;//总金额

        if(!in_array($payment_code,array('predeposit'))){
            output_error('请输入正确的支付方式');
        }

        if($goods_amount > $this->member_info['available_predeposit']){
            output_error('您的账户余额不够,请先充值!');
        }

        $data = array();
        $order_sn = '';
        
        //添加订单信息
        $data['order_sn'] = $model_pd->makeSn($this->member_info['member_id']);//订单号
        $data['buyer_id'] = $this->member_info['member_id'];
        $data['buyer_name'] = $buyer_name;
        $data['tel'] = $mob_phone;
        $data['shipping_amount'] = $goods_amount;
        $data['pd_amount'] = $goods_amount;
        $data['reciver_province_id'] = $prov;
        $data['reciver_city_id'] = $city;
        $data['reciver_area_id'] = $region;
        $data['area_info'] = $area_info;
        $data['address'] = $address;
        $data['evaluation_state'] = 0;
        $data['order_state'] = 10;
        $data['lock_state'] = 0;
        $data['delete_state'] = 0;
        $data['order_from'] = 1;
        $data['add_time'] = TIMESTAMP;
        
        $insert = $model_zero_order->addData($data);
        
        if($insert){
            $order_sn = $data['order_sn'];
        }

        if ($order_sn) {
            //余额支付
            if($payment_code == 'predeposit'){

                $model_pd->beginTransaction();
                
                $pay_sn = $model_pd->makeSn($this->member_info['member_id']);//支付单号
                
                //减余额
                $data = array();
                $data['member_id'] = $this->member_info['member_id'];
                $data['member_name'] = $buyer_name;
                $data['amount'] = $goods_amount;
                $data['order_sn'] = $order_sn;

                try{
                    if($model_pd->changePd('zero_order_pay',$data)){
                        
                        $is_add_success = TRUE;
                        
                        //添加订单商品信息
                        $data = array();
                        $data['order_id'] = 1;
                        $data['goods_id'] = $goods_id;
                        $data['goods_name'] = $goods_info['goods_name'];
                        $data['goods_price'] = $goods_info['goods_price'];
                        $data['goods_num'] = $goods_number;
                        $data['goods_image'] = $goods_info['goods_image_index'];
                        $data['goods_pay_price'] = $goods_freight;
                        $data['buyer_id'] = $this->member_info['member_id'];

                        $order_goods_id = $model_zero_order_goods->addData($data);
                        if(!$order_goods_id){
                            $is_add_success = FALSE;
                        }

                        //修改商品信息
                        $edit_goods_result = $model_zero_goods->editGoodsProcess($goods_id,$goods_number);
                        if(!$edit_goods_result){
                            $is_add_success = FALSE;
                        }
                
                        $update = array();
                        $update['order_state'] = 30;
                        $update['payment_time'] = TIMESTAMP;
                        $update['payment_code'] = 'predeposit';
                        $update['ol_payment_name'] = '余额支付';
                        $update['pay_sn'] = $pay_sn;
                        
                        $update = $model_zero_order->editData($update,array('order_sn'=>$order_sn));
                        if(!$update){
                            $is_add_success = FALSE;
                        }

                        if($is_add_success){
                            $model_pd->commit();
                            output_data(array('order_sn'=>$order_sn));
                        }else{
                            $model_pd->rollback();
                            output_error('生成订单失败');
                        }
                    }
                }catch (Exception $ex){
                    $model_pd->rollback();
                    output_error('生成订单失败'.$ex->getMessage());
                }

            }
        }
        
        return FALSE;
    }
    
     /*
     * 下单限制条件
     */
    public function checkOp($return = false){
        if($this->member_info['grade_id'] != 1){
//            output_data(array('step'=>1,'msg'=>'VIP专属，请升级'));
        }

    }
    
    /**
     * 计算邮费
     * @param type $goods_freight
     */
    private function get_goods_freight($goods_freight) {
        return $goods_freight;
    }

}
