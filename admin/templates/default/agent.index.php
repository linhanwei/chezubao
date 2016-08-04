<?php defined('InSystem') or exit('Access Invalid!');?>

<div class="page">
  <div class="fixed-bar">
    <div class="item-title">
      <h3>战区</h3>
      <ul class="tab-base">
        <li><a href="JavaScript:void(0);" class="current"><span>加盟商管理</span></a></li>
          <li><a href="index.php?act=agent&op=agent_add" ><span>添加加盟商</span></a></li>
      </ul>
    </div>
  </div>
  <div class="fixed-empty"></div>
  <form method="get" name="formSearch" id="formSearch">
  <input type="hidden" value="agent" name="act">
  <input type="hidden" value="agent" name="op">
  <table class="tb-type1 noborder search">
  <tbody>
    <tr><th><label for="owner_and_name">用户名:</label></th>
      <td><input type="text" value="<?php echo $output['member_name'];?>" name="member_name" id="member_name" class="txt"></td><td></td><th><label>战区</label></th>
        <td>
            <select name="aa_id">
                <option value=""><?php echo $lang['nc_please_choose'];?>...</option>
                <?php if(!empty($output['agent_area_list']) && is_array($output['agent_area_list'])){ ?>
                <?php foreach($output['agent_area_list'] as $k => $v){
                       ?>
                <option value="<?php echo $v['aa_id'];?>" <?php if($_GET['aa_id'] == $k){?>selected<?php }?>><?php echo $v['aa_name'];?></option>
                <?php } ?>
                <?php } ?>
            </select>
        </td>
      <th><label for="store_name"><?php echo $lang['store_name'];?></label></th>
      <td><input type="text" value="<?php echo $output['store_name'];?>" name="store_name" id="store_name" class="txt"></td>
        <td><a href="javascript:void(0);" id="ncsubmit" class="btn-search " title="<?php echo $lang['nc_query'];?>">&nbsp;</a>
        <?php if($output['owner_and_name'] != '' or $output['store_name'] != '' or $output['grade_id'] != ''){?>
        <a href="index.php?act=store&op=store" class="btns " title="<?php echo $lang['nc_cancel_search'];?>"><span><?php echo $lang['nc_cancel_search'];?></span></a>
        <?php }?></td>
    </tr></tbody>
  </table>
  </form>
   <table class="table tb-type2" id="prompt">
    <tbody>
      <tr class="space odd">
        <th colspan="12"><div class="title">
            <h5><?php echo $lang['nc_prompts'];?></h5>
            <span class="arrow"></span></div></th>
      </tr>
      <tr>
        <td><ul>
            <li>查看修改加盟商,如需要编辑请删除重新添加</li>
          </ul></td>
      </tr>
    </tbody>
  </table>
  <form method="post" id="store_form">
    <input type="hidden" name="form_submit" value="ok" />
    <table class="table tb-type2">
      <thead>
        <tr class="thead">
          <th>用户名</th>
          <th>所在战区</th>
            <th>地区</th>
          <th class="align-center">操作</th>
        </tr>
      </thead>
      <tbody>
        <?php if(!empty($output['agent_list']) && is_array($output['agent_list'])){ ?>
        <?php foreach($output['agent_list'] as $k => $v){ ?>
        <tr class="hover edit">
          <td>
                <?php echo $v['member_name'];?>
          </td>
          <td><?php echo $v['aa_name'];?></td>
            <td><?php echo $v['area_name'] ? $v['area_name'] : '全部';?></td>
        <td class="align-center w200">
            <a href="javascript:void(0)" onclick="if(confirm('确定删除加盟商?')){location.href='index.php?act=agent&op=agent_del&agent_id=<?php echo $v['agent_id']; ?>'}">删除</a>

        </td>
        </tr>
        <?php } ?>
        <?php }else { ?>
        <tr class="no_data">
          <td colspan="15"><?php echo $lang['nc_no_record'];?></td>
        </tr>
        <?php } ?>
      </tbody>
      <tfoot>
        <tr class="tfoot">
          <td></td>
          <td colspan="16">
            <div class="pagination"><?php echo $output['page'];?></div></td>
        </tr>
      </tfoot>
    </table>
  </form>
</div>
<script type="text/javascript" src="<?php echo RESOURCE_SITE_URL;?>/js/jquery.edit.js" charset="utf-8"></script>
<script>
$(function(){
    $('#ncsubmit').click(function(){
    	$('input[name="op"]').val('store');$('#formSearch').submit();
    });
});
</script>
