<?php
/**
 *
 * 消息
 *
 */
defined('InSystem') or exit('Access Invalid!');

class messageControl extends mobileMemberControl
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 系统站内信列表
     */
    public function systemmsgOp()
    {
        $model_message = Model('message');
        $condition = array();
        $condition['from_member_id'] = 0;
        $condition['message_type'] = 1;
        $condition['to_member_id|to_member_id|to_member_id'] = array(
            $this->member_info['member_id'],
            'all',
            array('LIKE',"%,{$this->member_info['member_id']},%"),
            '_multi'=>true
        );


        $message_array = $model_message->getMessageList($condition,20,'*','message_id desc');
        $page_count = 0;
        if (!empty($message_array) && is_array($message_array)) {
            $i = 0;
            foreach ($message_array as $k => $v) {
                $message_array[$k]['from_member_name'] = '系统信息';

                unset($message_array[$k]['message_parent_id']);
                unset($message_array[$k]['from_member_id']);
                unset($message_array[$k]['to_member_id']);
                unset($message_array[$k]['message_title']);
                unset($message_array[$k]['message_update_time']);
                unset($message_array[$k]['message_state']);
                unset($message_array[$k]['read_member_id']);
                unset($message_array[$k]['del_member_id']);
                unset($message_array[$k]['message_ismore']);
                unset($message_array[$k]['to_member_name']);
                unset($message_array[$k]['message_type']);
                $message_array[$k]['message_time'] = date('Y-m-d H:i:s',$v['message_time']);

                if($i++ == 0 && $v['message_open']=='0'){
                    //设置已读
                    $condition['message_open'] = 0;
                    $model_message->editMessage(array('message_open'=>'1'),$condition);
                }
            }
            $page_count = $model_message->getTotalPage();
        }

        output_data(array('message_list' => $message_array), mobile_page($page_count));
    }

    /**
     * 未读系统数
     */
    public function system_unread_numOp(){
        $sum = Model('message')->countNewMessage($this->member_info['member_id']);
        output_data(array('sum'=>$sum));
    }

}