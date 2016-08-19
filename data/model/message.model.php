<?php
/**
 * 站内信管理
 *
 *
 */
defined('InSystem') or exit('Access Invalid!');
class messageModel extends Model
{
    public function __construct() {
        parent::__construct('message');
    }

    /**
     * 获取地址列表
     *
     * @return mixed
     */
    public function getMessageList($condition = array(), $pagesize = '', $fields = '*', $order = '', $limit = '') {
        return $this->where($condition)->field($fields)->order($order)->limit($limit)->page($pagesize)->select();
    }

    /**
     * 获取地址详情
     *
     * @return mixed
     */
    public function getMessageInfo($condition = array(), $fileds = '*') {
        return $this->where($condition)->field($fileds)->find();
    }

    /**
     * 发送信息
     *
     * @param
     * @return int
     */
    public function addMessage($data) {
        return $this->insert($data);
    }

    /**
     *
     * 修改银行卡
     *
     * @param $update
     * @param $condition
     * @return mixed
     */
    public function editMessage($update,$condition){
        return $this->where($condition)->update($update);
    }

    /**
     *
     * 删除银行卡
     *
     * @param $id
     * @return mixed
     */
    public function delMessage($id){
        if($id > 0){
            $condition['id'] = $id;
            return $this->where($condition)->delete();
        }
    }
}