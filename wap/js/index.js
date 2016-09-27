$(function() {
    var recommend_goods = getcookie('goods');
    $.ajax({
        url: ApiUrl + "/index.php?act=index",
        type: 'get',
        data:{recommend_goods:recommend_goods},
        dataType: 'json',
        success: function(result) {
            var data = result.datas;
            var html = '';
            console.log(data);
            $.each(data, function(k, v) {
                $.each(v, function(kk, vv) {
                    switch (kk) {
                        case 'adv_list':
                            vv.new_img_url = SiteUrl+'/data/upload/m/common/index/new_theme_icon.png';

                        case 'home1':
                            vv.url = buildUrl(vv.type, vv.data);
                            break;
                        case 'home2':
                        case 'home3':
                            $.each(vv.item, function(k3, v3) {
                                vv.item[k3].url = buildUrl(v3.type, v3.data);
                            });
                            break;
                        case 'home4':
                            vv.square_url = buildUrl(vv.square_type, vv.square_data);
                            vv.rectangle1_url = buildUrl(vv.rectangle1_type, vv.rectangle1_data);
                            vv.rectangle2_url = buildUrl(vv.rectangle2_type, vv.rectangle2_data);
                            break;
                        case 'home6'://标题
                            vv.url = buildUrl(vv.type, vv.data);
                            break;
                        case 'recommend_goods':
                            $.each(vv.item, function(gck, gcv) {
                                vv.item[gck].url = buildUrl('goods', gcv.goods_id);
                            });
                            break;
                    }
                    console.log(kk,vv);
                    html += template.render(kk, vv);
                    console.log('html',kk);
                    return false;
                });
            });

            $("#main-container").html(html);

            //轮播图
            var swiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev',
                paginationClickable: true,
                spaceBetween: 30,
                centeredSlides: true,
                autoplay: 2500,
                autoplayDisableOnInteraction: false
            });

        }
    });

    $('.search-btn').click(function(){
        var keyword = encodeURIComponent($('#keyword').val());
        location.href = WapSiteUrl+'/tmpl/product_list.html?keyword='+keyword;
    });

});
