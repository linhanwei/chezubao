<?php defined('InSystem') or exit('Access Invalid!');?><link href="<?php echo RESOURCE_SITE_URL;?>/kindeditor/themes/default/default.css" rel="stylesheet" type="text/css" id="cssfile2" /><script type="text/javascript" src="<?php echo RESOURCE_SITE_URL;?>/kindeditor/kindeditor-min.js" charset="utf-8"></script><script type="text/javascript" src="<?php echo RESOURCE_SITE_URL;?>/kindeditor/lang/zh_CN.js" charset="utf-8"></script><script type="text/javascript">    KindEditor.ready(function(K) {        window.editor = K.create('#content',{            cssPath:'<?php echo RESOURCE_SITE_URL;?>/kindeditor/plugins/code/prettify.css',            uploadJson:'<?php echo RESOURCE_SITE_URL;?>/kindeditor/php/upload_json.php',            resizeType :1,            allowPreviewEmoticons : true,            allowImageUpload : true,            afterBlur: function(){this.sync();},          });          //        editor.html();//取值与赋值    });</script><div class="page">  <div class="fixed-bar">    <div class="item-title">      <h3>商品管理</h3>      <ul class="tab-base">        <li>          <a href="index.php?act=zero_goods&op=index">            <span>商品列表</span>          </a>        </li>        <li>          <a class="current">            <span>添加商品</span>          </a>        </li>       <!--  <li>          <a href="index.php?act=goods_class&amp;op=goods_class_export">            <span>导出</span>          </a>        </li>        <li>          <a href="index.php?act=goods_class&amp;op=goods_class_import">            <span>导入</span>          </a>        </li> -->      </ul>    </div>  </div>  <div class="fixed-empty"></div>  <form id="zero_goods_form" enctype="multipart/form-data" method="post">    <input type="hidden" name="form_submit" value="ok" />    <table class="table tb-type2">      <tbody>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_name">商品名称:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_name" id="goods_name" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_total_num">需参与总人数:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_total_num" id="goods_total_num" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_price">市场价:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_price" id="goods_price" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_freight">运费:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_freight" id="goods_freight" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_storage">库存:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_storage" id="goods_storage" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_storage_alarm">库存警报值:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_storage_alarm" id="goods_storage_alarm" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label for="goods_click">点击数量:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_click" id="goods_click" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label for="goods_salenum">销售数量:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_salenum" id="goods_salenum" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="goods_weight">商品重量:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><input type="text" value="" name="goods_weight" id="goods_weight" maxlength="20" class="txt"></td>          <td class="vatop tips"></td>        </tr>        <tr>          <td colspan="2" class="required"><label for="goods_state">商品状态:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform">            <select name="goods_state" id="goods_state">              <option value="0">下架</option>              <option value="1" selected>正常</option>              <option value="10">违规</option>            </select>          </td>          <td class="vatop tips"></td>        </tr>        <tr>          <td colspan="2" class="required"><label for="goods_verify">商品审核:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform">            <select name="goods_verify" id="goods_verify">              <option value="0">未通过</option>              <option value="1" selected>通过</option>              <option value="10">审核中</option>            </select>          </td>          <td class="vatop tips"></td>        </tr>        <tr>          <td colspan="2" class="required">是否推荐: </td>        </tr>        <tr class="noborder">          <td class="vatop rowform onoff"><label for="goods_commend1" class="cb-enable"><span>是</span></label>            <label for="goods_commend0" class="cb-disable selected"><span>否</span></label>            <input id="goods_commend1" name="goods_commend"   value="1" type="radio">            <input id="goods_commend0" name="goods_commend" checked="checked" value="0" type="radio"></td>            <td class="vatop tips"></td>        </tr>        <tr>          <td colspan="2" class="required"><label class="validation" for="goods_image_index">商品主图:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform">            <span class="type-file-box">              <input type='text' name='textfield' id='textfield1' class='type-file-text' />              <input type='button' name='button' id='button1' value='' class='type-file-button' />              <input name="goods_image_index" type="file" class="type-file-file" id="goods_image_index" size="30" hidefocus="true" nc_type="change_pic">            </span>          </td>          <td class="vatop tips">建议用300px * 300px</td>        </tr>        <tr>          <td colspan="2" class="required"><label class="validation" for="goods_image_list">商品详情轮播图:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform">            <input id="goods_image_list" type="file" size="30" name="goods_image_list[]" multiple />          </td>          <td class="vatop tips">可以选择多个图片上传,最多只能上传5张</td>        </tr>        <tr class="noborder">          <td colspan="2" class="required"><label class="validation" for="content">商品详情:</label></td>        </tr>        <tr class="noborder">          <td class="vatop rowform"><textarea id="content" name="content" style="width:700px;height:300px;"></textarea></td>          <td class="vatop tips"></td>        </tr>      </tbody>      <tfoot>        <tr>          <td colspan="2"><a href="JavaScript:void(0);" class="btn" id="submitBtn"><span><?php echo $lang['nc_submit'];?></span></a></td>        </tr>      </tfoot>    </table>  </form></div><script type="text/javascript" src="<?php echo RESOURCE_SITE_URL;?>/js/jquery.mousewheel.js"></script> <script>//按钮先执行验证再提交表单$(function(){	$("#submitBtn").click(function(){		if($("#zero_goods_form").valid()){			$("#zero_goods_form").submit();		}	});	$("#goods_image_index").change(function(){		$("#textfield1").val($(this).val());	}); 	$('#zero_goods_form').validate({        errorPlacement: function(error, element){          var eid = element[0]['id'];          if(eid == 'goods_image_index'){			       error.appendTo(element.parent().parent().parent().prev().find('td:first'));          }else{            error.appendTo(element.parent().parent().prev().find('td:first'));          }        },        rules : {            goods_name : {                required : true,                remote   : {                  url :'index.php?act=zero_goods&op=ajax&branch=check_goods_name',                  type:'get',                  data:{                      goods_name : function(){                          return $('#goods_name').val();                      },                    }                }            },            goods_total_num : {                required : true,                number   : true            },            goods_price : {                required : true,                number   : true            },            goods_freight : {                required : true,                number   : true            },            goods_storage : {                required : true,                number   : true            },            goods_storage_alarm : {                required : true,                number   : true            },            goods_weight : {                required : true,            },            goods_image_index : {                required : true,            },            'goods_image_list[]' : {                required : true,            },            content : {                required : true,            },        },        messages : {            goods_name : {                required : '商品名称不能为空!',                remote   : '该商品名称已经存在,不能添加!'            },            goods_total_num:{                required : '需参与总人数不能为空!',                number   : '需参与总人数只能为数字!'            },            goods_price:{                required : '商品市场价不能为空!',                number   : '商品市场价只能为数字!'            },            goods_freight:{                required : '商品运费不能为空!',                number   : '商品运费只能为数字!'            },            goods_storage:{                required : '商品库存不能为空!',                number   : '商品库存只能为数字!'            },            goods_storage_alarm:{                required : '商品库存警报值不能为空!',                number   : '商品库存警报值只能为数字!'            },            goods_weight:{                required : '商品重量不能为空!',            },            goods_image_index:{                required : '商品主图不能为空!',            },            'goods_image_list[]':{                required : '商品详情轮播图不能为空!',            },            content:{                required : '商品详情不能为空!',            },        }    });});</script> 