<?php
/**
 * mobile父类
 *
 *
 */

//use Shopnc\Tpl;

defined('InSystem') or exit('Access Invalid!');

/********************************** 前台control父类 **********************************************/
class mobileControl
{

    //客户端类型
    protected $client_type_array = array('android', 'wap', 'wechat', 'ios');
    //列表默认分页数
    protected $page = 5;


    public function __construct()
    {
        Language::read('mobile');

        //分页数处理
        $page = intval($_GET['page']);
        if ($page > 0) {
            $this->page = $page;
        }
    }

    /***
     *
     * 提示消息
     * @param $msg  提示信息
     * @param string $url 跳转链接
     * @param string $msg_type 消息类型
     */
    protected function show_msg($msg, $url = '', $msg_type = '')
    {
        Tpl::output('msg', $msg);
        Tpl::output('url', $url);
        Tpl::output('msg_type', $msg_type);
        Tpl::showpage('show_msg');
    }
}

class mobileHomeControl extends mobileControl
{
    public function __construct()
    {
        parent::__construct();
    }
}

class mobileMemberControl extends mobileControl
{

    protected $member_info = array();

    public function __construct()
    {
        parent::__construct();

        $member_id = $_SESSION['member_id'];

        $key = $_POST['key'];
        if (empty($key)) {
            $key = $_GET['key'];
        }

        if ($key) {
            $model_mb_user_token = Model('mb_user_token');
            $mb_user_token_info = $model_mb_user_token->getMbUserTokenInfoByToken($key);
            $member_id = $mb_user_token_info['member_id'];
            $client_type = $mb_user_token_info['client_type'];

            if (empty($mb_user_token_info)) {
                output_error('请登录', array('login' => '0'));
            }
        }elseif (empty($member_id)) {
            header("location:".BASE_SITE_URL.'/wap/tmpl/member/member.html?act=member');
        }

        $model_member = Model('member');
        $this->member_info = $model_member->getMemberInfoByID($member_id);
        $this->member_info['client_type'] = $client_type ? $client_type : 'wap';
        if (empty($this->member_info)) {
            output_error('请登录', array('login' => '0'));
        } else {
            //读取卖家信息
            $seller_info = Model('seller')->getSellerInfo(array('member_id' => $this->member_info['member_id']));
            $this->member_info['store_id'] = $seller_info['store_id'];
        }
    }
}
