<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>商品详情--<?php echo $output['info']['goods_info']['goods_name']; ?></title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <?php include template('common_js_css'); ?>
    <script src="./templates/default/js/swiper.jquery.min.js"></script>
    <script src="./templates/default/js/goods_detail.js"></script>

</head>
<body>
<header class="detail-head">
    <a href="javascript:history.go(-1);" class="go-history"><img src="./templates/default/images/detail/detail-ico-1234.png"/></a>
<!--    <a href="#" class="go-link"><img src="./templates/default/images/detail/detail-ico-1236.png"/></a>-->
    <a href="<?php echo BASE_SITE_URL;?>/wap/tmpl/cart_list.html" class="go-cart"><img src="./templates/default/images/detail/detail-ico-1235.png"/></a>
</header>
<section class="banner-box">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <?php foreach ($output['info']['goods_image_mobile'] as $image) { ?>
                <div class="swiper-slide">
                    <img src="<?php echo $image; ?>"/>
                </div>
            <?php } ?>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>-->
    </div>
</section>

<section class="detail-info-box">
    <div class="title">
        <div class="title-txt">
            <?php echo $output['info']['goods_info']['goods_name']; ?>
        </div>
        <!-- <div class="share-box">
             <a>
                 <img src="./templates/default/images/detail/share-ico.png">
                 <p>分享</p>
             </a>
         </div>-->
    </div>
    <div class="price">
        <span><small>￥</small><?php echo $output['info']['goods_info']['goods_promotion_price']; ?></span>
    </div>
    <div class="detail-info-summay">
        <div class="item">
            <span>快递费:<?php echo $output['info']['goods_info']['goods_freight']; ?></span>
        </div>
        <div class="item">
            <span>月销:<?php echo $output['info']['goods_info']['goods_salenum']; ?>笔</span>
        </div>
        <!--<div class="item">
            <span>浙江杭州</span>
        </div>-->
    </div>
</section>
<!--
<div class="spec">
    <div class="select"><span>选择颜色分类,变速箱类型</span>
        <a class="right-arrow"><img src="./templates/default/images/detail/ico-5646.png"></a>
    </div>
    <div class="spen-item">
        <span>蓝色</span> <span>自动变速</span>
    </div>
</div>-->
<div class="buy-box">
    <div class="shop-info">
        <!--<a>
            <img src="./templates/default/images/detail/detail-ico-79.png">
            <p>客服</p>
        </a>
        <a><img src="./templates/default/images/detail/detail-ico-146.png">
            <p>店铺</p>
        </a>-->
        <a class="goods_collect"><img src="./templates/default/images/detail/detail-ico-123.png">
            <p>收藏</p>
        </a>
    </div>
    <div class="buy-btn">
        <a class="add-cart add-to-cart">加入购物车</a>
        <a class="buy-quick buy-now">立即购买</a>
    </div>
</div>
<div class="detail-middle-tips">
    <span class="line"></span>
    <span class="txt">继续拖动，查看图文详情</span>
</div>
<div class="detail-content">
    <ul class="tab-nav">
        <li class="action"><a>详情页面</a></li>
        <!-- <li><a>产品参数</a></li>
         <li><a>店铺推荐</a></li>-->
    </ul>
    <div class="detail-content-box">
        <div class="content-one content-item action">
            <?php echo $output['info']['goods_info']['mobile_body']; ?>
        </div>
        <div class="content-two content-item">

        </div>
        <div class="content-three content-item">

        </div>
    </div>
</div>

<!--尾部-->
<?php include template('footer'); ?>
</body>
</html>
