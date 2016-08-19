var current_freight = 0;
var current_weight = 0;
var current_goods_id = 0;
var key = getcookie('key');

function compute_freight(){
    var goods_num = $('#goods_number').val();
    var prov_id = parseInt($("select[name=prov]").val());
    var next_weight_times = Math.ceil((goods_num * current_weight - 500) / 500);

    if(region_freight_1.indexOf(prov_id) >= 0){
        $('#goods_freight').val(current_freight + next_weight_times * 10);
    }

    if(region_freight_2.indexOf(prov_id) >= 0){
        $('#goods_freight').val(current_freight + next_weight_times * 17);
    }

    $('#goods_weight').val(current_weight * goods_num);
}
$(function(){
    //加减购买数量
    /*$('.red_goods_num').on('click',function(event) {
        var goods_num = parseInt($('#my-address #goods_number').val());

        if(goods_num >= 2){
            $('#my-address #goods_number').val(goods_num-1);
        }

    });
    $('.inc_goods_num').on('click',function(event) {
        var goods_num = parseInt($('#my-address #goods_number').val());
        $('#my-address #goods_number').val(goods_num+1);

    });*/

    $('#goods_number').change(function() {
        compute_freight();
    });


    $("select[name=prov]").change(function(){
        var prov_id = $(this).val();
        $.ajax({
            type:'post',
            url:ApiUrl+'/index.php?act=member_address&op=area_list',
            data:{key:key,area_id:prov_id},
            dataType:'json',
            success:function(result){
                checklogin(result.login);
                var data = result.datas;
                var city_html = '<option value="">请选择...</option>';
                for(var i=0;i<data.area_list.length;i++){
                    city_html+='<option value="'+data.area_list[i].area_id+'">'+data.area_list[i].area_name+'</option>';
                }
                $("select[name=city]").html(city_html);
                $("select[name=region]").html('<option value="">请选择...</option>');

                compute_freight();

            }
        });
    });

    $("select[name=city]").change(function(){
        var city_id = $(this).val();
        $.ajax({
            type:'post',
            url:ApiUrl+'/index.php?act=member_address&op=area_list',
            data:{key:key,area_id:city_id},
            dataType:'json',
            success:function(result){
                checklogin(result.login);
                var data = result.datas;
                var region_html = '<option value="">请选择...</option>';
                for(var i=0;i<data.area_list.length;i++){
                    region_html+='<option value="'+data.area_list[i].area_id+'">'+data.area_list[i].area_name+'</option>';
                }
                $("select[name=region]").html(region_html);
            }
        });
    });


    $('.buy').click(function(){
        var payment_code = $('input[name=payment_code]').val();
        var goods_number = $('input[name=goods_number]').val();
        var address = $('input[name=address]').val();
        var true_name = $('input[name=true_name]').val();
        var mob_phone = $('input[name=mob_phone]').val();
        var tel_phone = $('input[name=tel_phone]').val();
        var prov_id = $('select[name=prov]').val();
        var city_id = $('select[name=city]').val();
        var area_id = $('select[name=region]').val();

        if(area_id==''){
            alert('请选择区域!');
            return;
        }

        var prov_index = $('select[name=prov]')[0].selectedIndex;
        var city_index = $('select[name=city]')[0].selectedIndex;
        var region_index = $('select[name=region]')[0].selectedIndex;
        var area_info = $('select[name=prov]')[0].options[prov_index].innerHTML+' '+$('select[name=city]')[0].options[city_index].innerHTML+' '+$('select[name=region]')[0].options[region_index].innerHTML;
        var goods_number = $('input[name=goods_number]').val();

        if(goods_number<=0){
            alert('请选择正确的数量');
        }
        $.ajax({
            type:'post',
            url:ApiUrl+"/index.php?act=zero_order&op=create_order",
            data:{key:key,payment_code:payment_code,true_name:true_name,goods_number:goods_number,mob_phone:mob_phone,tel_phone:tel_phone,prov_id:prov_id,city_id:city_id,area_id:area_id,address:address,area_info:area_info,goods_id:goods_id},
            dataType:'json',
            success:function(result){
                var datas = result.datas;
                if(!datas.error){
                    $('#my-address').modal('close');
                }else{
                    alert(datas.error);
                }
            }
        });
    });

});

//赋值邮费与商品ID
function add_cart(goods_id,goods_weight,goods_freight){
    $('#my-address').find('#goods_id').val(goods_id);
    $('#my-address').find('#goods_freight').val(goods_freight);
    $('#goods_weight').val(goods_weight);

    current_freight = goods_freight;
    current_weight = goods_weight;
    current_goods_id = goods_id;

    //获取地址
    $.ajax({
        type:'post',
        url:ApiUrl+'/index.php?act=member_address&op=area_list',
        data:{key:key},
        dataType:'json',
        success:function(result){
            checklogin(result.login);
            var data = result.datas;
            var prov_html = '';
            for(var i=0;i<data.area_list.length;i++){
                prov_html+='<option value="'+data.area_list[i].area_id+'">'+data.area_list[i].area_name+'</option>';
            }
            $("select[name=prov]").append(prov_html);


        }
    });
}

