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
       
        //查询条件
        $condition = array();
       
        //所需字段
        $fieldstr = "goods_id,goods_name,goods_image_index,goods_progress,goods_join_num,goods_surplus_num,goods_total_num";

        //排序方式
        $order = $this->_goods_list_order($_GET['key'], $_GET['order']);

        $goods_list = $model_zero_goods->getGoodsOnlineList($condition, $fieldstr, $this->page, $order, 0, '',false, 0);
        $page_count = $model_zero_goods->gettotalpage();
       
        output_data(array('goods_list' => $goods_list), mobile_page($page_count));
    }

    /**
     * 商品列表排序方式
     */
    private function _goods_list_order($key, $order) {
        $result = 'goods_progress desc,goods_id desc';
        if (!empty($key)) {

            $sequence = 'desc';
            if ($order == 1) {
                $sequence = 'asc';
            }

            switch ($key) {
                //推荐
                case '1' :
                    $result = 'goods_commend' . ' ' . $sequence;
                    break;
                //浏览量
                case '2' :
                    $result = 'goods_click' . ' ' . $sequence;
                    break;
                //剩余总人数
                case '3' :
                    $result = 'goods_surplus_num' . ' ' . $sequence;
                    break;
            }
        }
        return $result;
    }

    /**
     * 商品详细页
     */
    public function goods_detailOp() {
        $goods_id = intval($_GET ['goods_id']);

        // 商品详细信息
        $model_goods = Model('goods');

        $goods_detail = $model_goods->getGoodsDetail($goods_id);
        if (empty($goods_detail)) {
            output_error('商品不存在');
        }

        //推荐商品
        $model_store = Model('store');
        $hot_sales = $model_store->getHotSalesList($goods_detail['goods_info']['store_id'], 6);
        $goods_commend_list = array();
        foreach ($hot_sales as $value) {
            $goods_commend = array();
            $goods_commend['goods_id'] = $value['goods_id'];
            $goods_commend['goods_name'] = $value['goods_name'];
            $goods_commend['goods_price'] = $value['goods_price'];
            $goods_commend['goods_image_url'] = cthumb($value['goods_image'], 240);
            $goods_commend_list[] = $goods_commend;
        }
        $goods_detail['goods_commend_list'] = $goods_commend_list;
        $store_info = $model_store->getStoreInfoByID($goods_detail['goods_info']['store_id']);
        $goods_detail['store_info']['store_id'] = $store_info['store_id'];
        $goods_detail['store_info']['store_name'] = $store_info['store_name'];
        $goods_detail['store_info']['member_id'] = $store_info['member_id'];
        $goods_detail['store_info']['store_qq'] = $store_info['store_qq'];
        $goods_detail['store_info']['store_ww'] = $store_info['store_ww'];
        $goods_detail['store_info']['store_phone'] = $store_info['store_phone'];
        $goods_detail['store_info']['member_name'] = $store_info['member_name'];
        $goods_detail['store_info']['avatar'] = getMemberAvatarForID($store_info['member_id']);

        //商品详细信息处理
        $goods_detail = $this->_goods_detail_extend($goods_detail);


        $goods_info = $goods_detail['goods_info'];
        //print_r($goods_info);
        $IsHaveBuy = 0;
        if (!empty($_COOKIE['username'])) {
            $model_member = Model('member');
            $member_info = $model_member->getMemberInfo(array('member_name' => $_COOKIE['username']));
            $buyer_id = $member_info['member_id'];

            $promotion_type = $goods_info["promotion_type"];

            if ($promotion_type == 'groupbuy') {
                //检测是否限购数量
                $upper_limit = $goods_info["upper_limit"];
                if ($upper_limit > 0) {
                    //查询些会员的订单中，是否已买过了
                    $model_order = Model('order');
                    //取商品列表
                    $order_goods_list = $model_order->getOrderGoodsList(array('goods_id' => $goods_id, 'buyer_id' => $buyer_id, 'goods_type' => 2));
                    if ($order_goods_list) {
                        //取得上次购买的活动编号(防一个商品参加多次团购活动的问题)
                        $promotions_id = $order_goods_list[0]["promotions_id"];
                        //用此编号取数据，检测是否这次活动的订单商品。
                        $model_groupbuy = Model('groupbuy');
                        $groupbuy_info = $model_groupbuy->getGroupbuyInfo(array('groupbuy_id' => $promotions_id));
                        if ($groupbuy_info) {
                            $IsHaveBuy = 1;
                        } else {
                            $IsHaveBuy = 0;
                        }
                    }
                }
            }
        }
        $goods_detail['IsHaveBuy'] = $IsHaveBuy;
        //v3-b11 end




        output_data($goods_detail);
    }

    /**
     * 手机商品详细页
     */
    public function wap_goods_bodyOp() {
        $goods_id = intval($_GET ['goods_id']);

        $model_goods = Model('goods');

        $goods_info = $model_goods->getGoodsInfoByID($goods_id, 'goods_id');
        $goods_common_info = $model_goods->getMobileBodyByCommonID($goods_info['goods_commonid']);
        Tpl:output('goods_common_info', $goods_common_info);
        Tpl::showpage('goods_body');
    }

}
