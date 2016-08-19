$(function(){
  
    //顶部选项
    $('.main_nav .am-btn').on('click', function(event) {
        event.preventDefault();
        $(this).parent('li').siblings().find('.am-btn').removeClass('active');
        $(this).addClass('active');
    });

    //开始加载订单列表
    get_order_list(1);

    $('.pre-page').click(function(){//上一页
        var key = parseInt($("input[name=key]").val());
        var order = parseInt($("input[name=order]").val());
        var page = parseInt($("input[name=page]").val());
        var curpage = eval(parseInt($("input[name=curpage]").val())-1);
        var gc_id = parseInt($("input[name=gc_id]").val());
        var keyword = $("input[name=keyword]").val();

        if(curpage<1){
            return false;
        }

        if(gc_id>=0){
            var url = ApiUrl+"/index.php?act=goods&op=goods_list&key="+key+"&order="+order+"&page="+page+"&curpage="+curpage+"&gc_id="+gc_id;
        }else{
            var url = ApiUrl+"/index.php?act=goods&op=goods_list&key="+key+"&order="+order+"&page="+page+"&curpage="+curpage+"&keyword="+keyword;
        }
        $.ajax({
            url:url,
            type:'get',
            dataType:'json',
            success:function(result){
                $("input[name=hasmore]").val(result.hasmore);
                if(curpage == 1){
                    $('.next-page').removeClass('disabled');
                    $('.pre-page').addClass('disabled');
                }else{
                    $('.next-page').removeClass('disabled');
                }
                var html = template.render('home_body', result.datas);
                $("#product_list").empty();
                $("#product_list").append(html);
                $("input[name=curpage]").val(curpage);

                var page_total = result.page_total;
                var page_html = '';
                for(var i=1;i<=result.page_total;i++){
                    if(i==curpage){
                        page_html+='<option value="'+i+'" selected>'+i+'</option>';
                    }else{
                        page_html+='<option value="'+i+'">'+i+'</option>';
                    }
                }

                $('select[name=page_list]').empty();
                $('select[name=page_list]').append(page_html);

                $(window).scrollTop(0);
            }
        });
    });

    $('.next-page').click(function(){//下一页
        var hasmore = $('input[name=hasmore]').val();
        if(hasmore == 'false'){
            return false;
        }

        var key = parseInt($("input[name=key]").val());
        var order = parseInt($("input[name=order]").val());
        var page = parseInt($("input[name=page]").val());
        var curpage = eval(parseInt($("input[name=curpage]").val())+1);
        var gc_id = parseInt($("input[name=gc_id]").val());
        var keyword = $("input[name=keyword]").val();

        if(gc_id>=0){
            var url = ApiUrl+"/index.php?act=goods&op=goods_list&key="+key+"&order="+order+"&page="+page+"&curpage="+curpage+"&gc_id="+gc_id;
        }else{
            var url = ApiUrl+"/index.php?act=goods&op=goods_list&key="+key+"&order="+order+"&page="+page+"&curpage="+curpage+"&keyword="+keyword;
        }
        $.ajax({
            url:url,
            type:'get',
            dataType:'json',
            success:function(result){
                $("input[name=hasmore]").val(result.hasmore);
                if(!result.hasmore){
                    $('.pre-page').removeClass('disabled');
                    $('.next-page').addClass('disabled');
                }else{
                    $('.pre-page').removeClass('disabled');
                }
                var html = template.render('home_body', result.datas);
                $("#product_list").empty();
                $("#product_list").append(html);
                $("input[name=curpage]").val(curpage);

                var page_total = result.page_total;
                var page_html = '';
                for(var i=1;i<=result.page_total;i++){
                    if(i==curpage){
                        page_html+='<option value="'+i+'" selected>'+i+'</option>';
                    }else{
                        page_html+='<option value="'+i+'">'+i+'</option>';
                    }
                }
                $('select[name=page_list]').empty();
                $('select[name=page_list]').append(page_html);

                $(window).scrollTop(0);
            }
        });
    });
});

//订单状态: status: 0:全部,1:待发货,2:已发货,3:已完成
function get_order_list(status){
    //默认选择订单状态
    $('.main_nav .am-btn').parent('li').siblings().find('.am-btn').removeClass('active');
    $('.main_nav .am-btn').eq(status).addClass('active');
   
    $.ajax({
        url:ApiUrl+"/index.php?act=zero_goods&op=goods_list&key=4&page="+pagesize+"&curpage=1"+"status=".status,
        type:'get',
        dataType:'json',
        success:function(result){
            $("input[name=hasmore]").val(result.hasmore);
            if(!result.hasmore){
                $('.next-page').addClass('disabled');
            }

            var datas = result.datas;
            datas.wap_site_url = WapSiteUrl;
            var html = template.render('home_body', datas);
            $(".goods_list").append(html);

            $(window).scrollTop(0);
        }
    });
   
}