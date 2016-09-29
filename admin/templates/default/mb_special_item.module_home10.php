<?php defined('InSystem') or exit('Access Invalid!');?>
      <?php if($item_edit_flag) { ?>
<table class="table tb-type2" id="prompt">
    <tbody>
      <tr class="space odd">
        <th colspan="12" class="nobg"> <div class="title nomargin">
            <h5><?php echo $lang['nc_prompts'];?></h5>
            <span class="arrow"></span> </div>
        </th>
      </tr>
      <tr>
        <td><ul>
            <li>鼠标移动到内容上出现编辑按钮可以对内容进行修改</li>
            <li>操作完成后点击保存编辑按钮进行保存</li>
          </ul></td>
      </tr>
    </tbody>
  </table>
  <?php } ?>
<div class="index_block home10">
      <?php if($item_edit_flag) { ?>
  <h3>模型版块布局J</h3>
  <?php } ?>
  <!-- <div class="title">
    <?php if($item_edit_flag) { ?>
    <h5>标题：</h5>
    <input id="home1_title" type="text" class="txt w200" name="item_data[title]" value="<?php echo $item_data['title'];?>">
    <?php } else { ?>
    <span><?php echo $item_data['title'];?></span>
    <?php } ?>
  </div> -->
  <div class="content">
      <?php if($item_edit_flag) { ?>
    <h5>内容：</h5>
    <?php } ?>
    <div class="home2_2">
      <div class="home2_2_1">
        <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle1_image']);?>" alt="">
          <?php if($item_edit_flag) { ?>
          <input nctype="image_name" name="item_data[rectangle1_image]" type="hidden" value="<?php echo $item_data['rectangle1_image'];?>">
          <input nctype="image_type" name="item_data[rectangle1_type]" type="hidden" value="<?php echo $item_data['rectangle1_type'];?>">
          <input nctype="image_data" name="item_data[rectangle1_data]" type="hidden" value="<?php echo $item_data['rectangle1_data'];?>">
          <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
          <?php } ?>
        </div>
      </div>
      <div class="home2_2_2">
        <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle2_image']);?>" alt="">
          <?php if($item_edit_flag) { ?>
          <input nctype="image_name" name="item_data[rectangle2_image]" type="hidden" value="<?php echo $item_data['rectangle2_image'];?>">
          <input nctype="image_type" name="item_data[rectangle2_type]" type="hidden" value="<?php echo $item_data['rectangle2_type'];?>">
          <input nctype="image_data" name="item_data[rectangle2_data]" type="hidden" value="<?php echo $item_data['rectangle2_data'];?>">
          <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
          <?php } ?>
        </div>
      </div>
    </div>
    <div class="home2_2">
      <div class="home2_2_1">
        <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle3_image']);?>" alt="">
          <?php if($item_edit_flag) { ?>
          <input nctype="image_name" name="item_data[rectangle3_image]" type="hidden" value="<?php echo $item_data['rectangle3_image'];?>">
          <input nctype="image_type" name="item_data[rectangle3_type]" type="hidden" value="<?php echo $item_data['rectangle3_type'];?>">
          <input nctype="image_data" name="item_data[rectangle3_data]" type="hidden" value="<?php echo $item_data['rectangle3_data'];?>">
          <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
          <?php } ?>
        </div>
      </div>
        <div class="home2_2_2">
          <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle4_image']);?>" alt="">
            <?php if($item_edit_flag) { ?>
            <input nctype="image_name" name="item_data[rectangle4_image]" type="hidden" value="<?php echo $item_data['rectangle4_image'];?>">
            <input nctype="image_type" name="item_data[rectangle4_type]" type="hidden" value="<?php echo $item_data['rectangle4_type'];?>">
            <input nctype="image_data" name="item_data[rectangle4_data]" type="hidden" value="<?php echo $item_data['rectangle4_data'];?>">
            <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
            <?php } ?>
          </div>
        </div>
    </div>
    <div class="home2_2">
      <div class="home2_2_1">
        <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle5_image']);?>" alt="">
          <?php if($item_edit_flag) { ?>
          <input nctype="image_name" name="item_data[rectangle5_image]" type="hidden" value="<?php echo $item_data['rectangle5_image'];?>">
          <input nctype="image_type" name="item_data[rectangle5_type]" type="hidden" value="<?php echo $item_data['rectangle5_type'];?>">
          <input nctype="image_data" name="item_data[rectangle5_data]" type="hidden" value="<?php echo $item_data['rectangle5_data'];?>">
          <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
          <?php } ?>
        </div>
      </div>
        <div class="home2_2_2">
          <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle6_image']);?>" alt="">
            <?php if($item_edit_flag) { ?>
            <input nctype="image_name" name="item_data[rectangle6_image]" type="hidden" value="<?php echo $item_data['rectangle6_image'];?>">
            <input nctype="image_type" name="item_data[rectangle6_type]" type="hidden" value="<?php echo $item_data['rectangle6_type'];?>">
            <input nctype="image_data" name="item_data[rectangle6_data]" type="hidden" value="<?php echo $item_data['rectangle6_data'];?>">
            <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
            <?php } ?>
          </div>
        </div>
    </div>
    <div class="home2_2">
      <div class="home2_2_1">
        <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle7_image']);?>" alt="">
          <?php if($item_edit_flag) { ?>
            <input nctype="image_name" name="item_data[rectangle7_image]" type="hidden" value="<?php echo $item_data['rectangle7_image'];?>">
            <input nctype="image_type" name="item_data[rectangle7_type]" type="hidden" value="<?php echo $item_data['rectangle7_type'];?>">
            <input nctype="image_data" name="item_data[rectangle7_data]" type="hidden" value="<?php echo $item_data['rectangle7_data'];?>">
            <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
          <?php } ?>
        </div>
      </div>
      <div class="home2_2_2">
        <div nctype="item_image" class="item"> <img nctype="image" src="<?php echo getMbSpecialImageUrl($item_data['rectangle8_image']);?>" alt="">
          <?php if($item_edit_flag) { ?>
            <input nctype="image_name" name="item_data[rectangle8_image]" type="hidden" value="<?php echo $item_data['rectangle8_image'];?>">
            <input nctype="image_type" name="item_data[rectangle8_type]" type="hidden" value="<?php echo $item_data['rectangle8_type'];?>">
            <input nctype="image_data" name="item_data[rectangle8_data]" type="hidden" value="<?php echo $item_data['rectangle8_data'];?>">
            <a nctype="btn_edit_item_image" data-desc="1 : 1" href="javascript:;"><i class="icon-edit"></i>编辑</a>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
</div>