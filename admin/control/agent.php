<?php
/**
 * 加盟商管理界面
 *
 ***/

defined('InSystem') or exit('Access Invalid!');

class agentControl extends SystemControl{
	public function __construct(){
		parent::__construct();
	}

    public function indexOp(){
        $this->agentOp();
    }

    /**
     * 加盟商管理
     */
    public function agentOp(){
        $model_agent = Model('agent');

        if($_GET['member_name']){
            $condition['member_name'] = array('like', '%' . trim($_GET['member_name']) . '%');
        }

        if($_GET['aa_id']){
            $condition['aa_id'] = $_GET['aa_id'];
        }


        //列表
        $agent_list = $model_agent->getAgentList($condition,10,'*','aa_id desc');

        //战区
        $agent_area_list = Model('agent_area')->getAgentAreaList();

        Tpl::output('agent_list',$agent_list);
        Tpl::output('agent_area_list',$agent_area_list);
        Tpl::output('page',$model_agent->showpage('10'));
        Tpl::showpage('agent.index');
    }

    /**
     * 添加加盟商
     */
    public function agent_addOp(){
        $model_agent = Model('agent');
        $aa_id = $_GET['aa_id'] ? $_GET['aa_id'] : $_POST['aa_id'];


        if (chksubmit()){
            if(empty($aa_id)){
                showMessage('请选择所属战区');
            }
            $agent_area = Model('agent_area')->getAgentAreaInfo(array('aa_id'=>$aa_id));
            if($agent_area['area_id'] != 'all'){
                if(empty($_POST['area_id'])){
                    $_POST['area_id'] = 0;
                    $param['area_name'] = '全部';
                }
            }else{
                if(empty($_POST['area_id'])){
                    $_POST['area_id'] = 0;
                    $param['area_name'] = '战区司令';
                }
            }


            $member_info = Model('member')->getMemberInfo(array('member_name'=>$_POST['member_name']));
            if(empty($member_info)){
                showMessage('用户不存在');
            }

            if(Model('agent')->getAgentCount(array('member_id'=>$member_info['member_id'])) > 0){
                showMessage('用户已是加盟商了');
            }

            $param['member_id'] = $member_info['member_id'];
            $param['member_name'] = $member_info['member_name'];
            $param['aa_id'] = $_POST['aa_id'];
            $param['aa_name'] = $agent_area['aa_name'];


            $param['area_id'] = $_POST['area_id'];

            if($param['area_id']>0){
                $area_info = Model('area')->getAreaInfo(array('area_id'=>$param['area_id']));
                $param['area_name'] = $area_info['area_name'];
            }

            Model('member')->editMember(array('member_id'=>$member_info['member_id']),array('is_agent'=>1));
            $rs = $model_agent->addAgent($param);
            if ($rs){
                $this->log('添加加盟商'.'['.$_POST['admin_name'].']',1);
                showMessage(L('nc_common_save_succ'),'index.php?act=agent&op=agent');
            }else {
                showMessage(L('nc_common_save_fail'));
            }
        }
        $agent_area = Model('agent_area')->getAgentAreaInfo(array('aa_id'=>$aa_id));

        //战区
        $agent_area_list = Model('agent_area')->getUsableAgentAreaList4Agent();

        //所在地区
        $area_list = array();
        if($_GET['aa_id']>0){
            if($agent_area['aa_area'] != 'all'){
                $area_condition['area_parent_id'] = array('IN',$agent_area['aa_area']);
                $area_list = Model('area')->getUsableAreaList4Agent($area_condition);
            }
        }

        Tpl::output('area_list',$area_list);
        Tpl::output('agent_area_list',$agent_area_list);
        Tpl::showpage('agent.add');
    }
    /**
     * 删除加盟商
     */
    public function agent_delOp(){
        if (!empty($_GET['agent_id'])){
            if ($_GET['agent_id'] == 1){
                showMessage(L('nc_common_save_fail'));
            }

            $agent = Model('agent')->getAgentInfo(array('agent_id'=>$_GET['agent_id']));
            Model('member')->editMember(array('member_id'=>$agent['member_id']),array('is_agent'=>0));

            $this->log('删除加盟商资料[Member:'.$agent['member_name'].']',1);
            Model('agent')->delAgent($_GET['agent_id']);
            showMessage(L('nc_common_del_succ'));
        }else {
            showMessage(L('nc_common_del_fail'));
        }
    }
    /**
     * 战区管理
     */
    public function areaOp(){
        $model_area = Model('agent_area');

        //列表
        $area_list = $model_area->getAgentAreaList(array(), 10,'*','aa_id desc');

        Tpl::output('area_list',$area_list);
        Tpl::output('page',$model_area->showpage('10'));
        Tpl::showpage('agent.area');
    }

    /**
     * 战区删除
     */
    public function area_delOp(){
        if (!empty($_GET['aa_id'])){
            if ($_GET['aa_id'] == 1){
                showMessage(L('nc_common_save_fail'));
            }

            $agent = Model('agent')->getAgentInfo(array('aa_id'=>$_GET['aa_id']));

            if($agent){
                showMessage('战区已使用，不能删除');
            }

            $model_area = Model('agent_area');
            $model_area->delAgentArea($_GET['aa_id']);
            $this->log('删除战区资料[ID:'.intval($_GET['aa_id']).']',1);
            showMessage(L('nc_common_del_succ'));
        }else {
            showMessage(L('nc_common_del_fail'));
        }
    }

    /**
     * 战区添加
     */
    public function area_addOp(){
        $model_agent_area = Model('agent_area');
        if (chksubmit()){
            $param['aa_name'] = $_POST['aa_name'];
            $param['aa_area'] = implode(',',$_POST['aa_area']);

            if(empty($param['aa_area'])){
                showMessage(L('nc_common_save_fail'));
            }

            $rs = $model_agent_area->addAgentArea($param);
            if ($rs){
                $this->log('添加战区'.'['.$_POST['admin_name'].']',1);
                showMessage(L('nc_common_save_succ'),'index.php?act=agent&op=area');
            }else {
                showMessage(L('nc_common_save_fail'));
            }
        }


        $model_area = Model('area');
        $area_list = $model_area->getTopLevelAreas();
        foreach($area_list as $id=>$name){
            if($model_agent_area->existAreaID($id)){
                unset($area_list[$id]);
            }
        }

        Tpl::output('area_list',$area_list);
        Tpl::showpage('agent.area_add');
    }

    /**
     * 编辑
     */
    public function area_editOp(){
        $aa_id = $_GET['aa_id'] ? $_GET['aa_id'] : $_POST['aa_id'];
        $condition = array('aa_id'=>$aa_id);
        $model_agent_area = Model('agent_area');
        if (chksubmit()){
            $param['aa_name'] = $_POST['aa_name'];
            $param['aa_area'] = implode(',',$_POST['aa_area']);

            if(empty($param['aa_area'])){
                showMessage(L('nc_common_save_fail'));
            }

            $rs = $model_agent_area->editAgentArea($param,$condition);
            if ($rs){
                $this->log(L('nc_add,limit_admin').'['.$_POST['admin_name'].']',1);
                showMessage(L('nc_common_save_succ'),'index.php?act=agent&op=area');
            }else {
                showMessage(L('nc_common_save_fail'));
            }
        }

        $agent_area = $model_agent_area->getAgentAreaInfo($condition);

        $model_area = Model('area');
        $area_list = $model_area->getTopLevelAreas();
        foreach($area_list as $id=>$name){
            if($model_agent_area->existAreaID($id,$aa_id)){
                unset($area_list[$id]);
            }
        }

        $aa_area = explode(',',$agent_area['aa_area']);

        Tpl::output('agent_area',$agent_area);
        Tpl::output('aa_area',$aa_area);
        Tpl::output('area_list',$area_list);
        Tpl::showpage('agent.area_add');
    }

    /**
     * 留言列表
     */
	public function feedbackOp(){
        $model_feedback = Model('feedback');

        if(trim($_GET['member_name']) != ''){
            $condition['fb_member_name']	= array('like', '%'.$_GET['member_name'].'%');
            Tpl::output('member_name',$_GET['member_name']);
        }

        if($_GET['fb_state'] == '1' || $_GET['fb_state'] == '2'){
            $condition['fb_state'] = $_GET['fb_state'];
        }

        $condition['fb_type'] = 1;

        //列表
        $feedback_list = $model_feedback->getFeedbackList($condition, 10,'*','fb_id desc');

        Tpl::output('feedback_list',$feedback_list);
        Tpl::output('page',$model_feedback->showpage('20'));
        Tpl::showpage('agent.feedback');
    }


    /**
     * 留言管理
     */
    public function feedback_detailOp(){
        $model_feedback = Model('feedback');
        $fb_id = $_GET['fb_id'] ? $_GET['fb_id'] : $_POST['fb_id'];
        if(empty($fb_id)){
            exit();
        }
        $condition = array('fb_id'=>$fb_id);
//提交
        if (chksubmit()) {
            $update_arr['fb_remark'] = trim($_POST['fb_remark']);
            $update_arr['fb_state'] = 2;
            $model_feedback->editFeedback($update_arr,$condition);
            //跳转
            $this->log('处理战区处理意见', 1);
            showMessage('成功处理', 'index.php?act=agent&op=feedback');
        }

        $feedback = $model_feedback->getFeedbackInfo($condition);

        Tpl::output('feedback',$feedback);
        Tpl::showpage('agent.feedback_detail');
    }


    /**
     * ajax操作
     */
    public function ajaxOp(){
        switch ($_GET['branch']){
            case 'check_aa_name':
                $aa_id = $_GET['aa_id'];
                $condition = array();
                $condition['aa_name'] = $_GET['aa_name'];
                if($aa_id>0){
                    $condition['aa_id'] = array('neq',$aa_id);
                }
                $info = Model('agent_area')->getAgentAreaInfo($condition);
                if (!empty($info)){
                    exit('false');
                }else {
                    exit('true');
                }
            case 'check_member_name':
                $condition = array();
                $condition['member_name'] = $_GET['member_name'];
                $info = Model('member')->getMemberInfo($condition);

                if (empty($info)){
                    exit('false');
                }else {
                    $condition = array();
                    $condition['member_name'] = $_GET['member_name'];
                    $info = Model('agent')->getAgentInfo($condition);
                    if (!empty($info)){
                        exit('false');
                    }else {
                        exit('true');
                    }
                }

        }
    }
}
