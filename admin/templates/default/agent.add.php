<?php defined('InSystem') or exit('Access Invalid!');?>

<div class="page">
  <div class="fixed-bar">
      <div class="item-title">
          <h3>战区</h3>
          <ul class="tab-base">
              <li><a href="index.php?act=agent&op=agent"><span>加盟商管理</span></a></li>
              <li><a href="JavaScript:void(0);" class="current"><span><?php if($_GET['agent_id']) echo '编辑加盟商';else echo '添加加盟商';?></span></a></li>
          </ul>
      </div>
  </div>
    <div class="fixed-empty"></div>
    <form id="add_form" method="post">
        <input type="hidden" name="form_submit" value="ok" />
        <input type="hidden" name="agent_id" id="agent_id" value="<?php echo $_GET['agent_id']?$_GET['agent_id'] : 0;?>" />
        <table class="table tb-type2 nobdb">
            <tbody>
            <tr class="noborder">
                <td colspan="2" class="required"><label class="validation" for="aa_limit">所属战区:</label></td>
                <td class="vatop tips">请先选择所属战区</td>
            </tr>
            <tr class="noborder">
                <td class="vatop rowform">
                    <select name="aa_id" onchange="document.location.href='index.php?act=agent&op=agent_add&agent_id=<?php echo $_GET['agent_id'];?>&aa_id='+this.value">
                        <option value=""><?php echo $lang['nc_please_choose'];?>...</option>
                        <?php if(!empty($output['agent_area_list']) && is_array($output['agent_area_list'])){ ?>
                            <?php foreach($output['agent_area_list'] as $k => $v){
                                ?>
                                <option value="<?php echo $v['aa_id'];?>" <?php if($_GET['aa_id'] == $v['aa_id']){?>selected<?php }?>><?php echo $v['aa_name'];?></option>
                            <?php } ?>
                        <?php } ?>
                    </select></td>
                <td class="vatop tips"></td>
            </tr>
            <tr class="noborder">
                <td colspan="2" class="required"><label class="validation" for="member_name">用户名称(手机):</label></td>
            </tr>
            <tr class="noborder">
                <td class="vatop rowform">
                    <?php if($_GET['agent_id'] > 0) {
                        echo $output['agent']['member_name'];;
                    }else{?>
                    <input type="text" id="member_name" maxlength="40" name="member_name" class="txt"></td>
                    <?php }?>
                <td class="vatop tips"></td>
            </tr>
            <tr class="noborder">
                <td colspan="2" class="required"><label class="validation" for="member_name">所在城市（如为司令请不要选择）:</label></td>
            </tr>
            <tr>
                <td colspan="3"><table class="table tb-type2 nomargin">
                        <tbody> <tr>
                        <?php
                        $i = 1;
                        foreach((array)$output['area_list'] as $k => $v) { ?>

                                <td>
                                    <label style="width:150px"><?php echo (!empty($v['area_name'])) ? $v['area_name'] : '&nbsp;'; ?></label>
                                    <input name="area_id" type="radio" value="<?php echo $v['area_id'];?>" <?php if($output['aa_area'] && in_array($k,$output['aa_area'])) echo 'checked';?>>
                                </td>

                        <?php if($i++ % 10 == 0) echo '</tr><tr>'; } ?></tr>
                        </tbody>
                    </table></td>
            </tr>
            </tbody>
            <tfoot>
            <tr class="tfoot">
                <td colspan="2"><a href="JavaScript:void(0);" class="btn" id="submitBtn"><span><?php echo $lang['nc_submit'];?></span></a></td>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
<script>
    function selectLimit(name){
        if($('#'+name).attr('checked')) {
            $('.'+name).attr('checked',true);
        }else {
            $('.'+name).attr('checked',false);
        }
    }
    $(document).ready(function(){
        //按钮先执行验证再提交表单
        $("#submitBtn").click(function(){
            <?php if($_GET['agent_id'] == 0){?>
            if($("#add_form").valid()){
                $("#add_form").submit();
            }
            <?php }else{?>
            $("#add_form").submit();
            <?php }?>
        });

        <?php if($_GET['agent_id'] == 0){?>
        $("#add_form").validate({
            errorPlacement: function(error, element){
                error.appendTo(element.parent().parent().prev().find('td:first'));
            },
            rules : {
                member_name : {
                    required : true,
                    remote	: {
                        url :'index.php?act=agent&op=ajax&branch=check_member_name',
                        type:'get',
                        data:{
                            member_name : function(){
                                return $('#member_name').val();
                            }
                        }
                    }
                }
            },
            messages : {
                member_name : {
                    required : '<?php echo $lang['nc_none_input'];?>',
                    remote	 : '该用户不存在或已是加盟商'
                }
            }
        });
        <?php }?>
    });
</script>