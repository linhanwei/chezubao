<?php
defined('InSystem') or exit('Access Invalid!');
class helpControl extends mobileHomeControl{

	public function __construct() {
        parent::__construct();
    }


    private function displayContent($help_id){
        $model_help = Model('help');

        $condition = array();
        $condition['help_id'] = $help_id;
        $help_list = $model_help->getStoreHelpList($condition);
        $help = $help_list[0];

        output_data(array('title'=>$help['help_title'],'content'=>$help['help_info']));
    }

    /**
     * 用户帮助
     */
    public function indexOp(){
        $this->displayContent(106);
    }

    /**
     * 版本说明
     */
    public function versionOp(){
        $this->displayContent(107);
    }

    /**
     * 关于我们
     */
    public function about_usOp(){
        $this->displayContent(108);
    }
}
