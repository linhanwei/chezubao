<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>车主商城</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <?php include template('common_js_css'); ?>
    <script src="./templates/default/js/cart.js"></script>
</head>
<body>

<section class="cart-head">
    <span class="title">购物车</span>
    <a href="#" class="info-btn"><img src="./templates/default/images/cart/ico-1464645.png"></a>
</section>
<section class="cart-shop-item">
    <div class="cart-shop-item-head">
        <span class="select-btn" id="shop-select-all-1" onClick="shopAllSelect(1)"><img src="./templates/default/images/cart/ico-789446.png"></span>
        <span class="shop-btn"><a href="javascript:void(0)"><img src="./templates/default/images/cart/ico-4658794.png">车族宝商城<img src="./templates/default/images/cart/ico-4562255.png"></a></span>
        <span class="edit-btn" data-shopid="1" data-status="1"><a href="javascript:void(0)">编辑</a></span>
    </div>
    <div class="cart-shop-item-tips">
        满199可减10元,可跨店使用 <a href="">去凑单></a>
    </div>
    <div class="cart-shop-pro-list" id="shop-list-1" data-shopid="1">
        <div class="cart-shop-pro-item" id="pro-item-1" data-price="1500" data-num="1" data-proid="1">
            <div class="select" data-selected="0" onClick="cartSelectItem(1)" >
                <img src="./templates/default/images/cart/ico-789446.png">
            </div>
            <div class="image">
                <a><img src="./templates/default/images/pro-default.jpg"></a>
            </div>
            <div class="info">
                <div class="title">细硬峰轻鸿鲤鱼竿台钓竿钓鱼竿手竿5.4米碳素28调超轻超硬钓鱼杆 </div>
                <div class="price" >商品价格:￥<span id="price-show-1">1500.00</span></div>
                <div class="num">商品数量:<span  id="num-show-1">15</span></div>
            </div>
            <div class="col">
                <div class="left">
                    <div class="num-col">
                        <a class="minus" id="minus-1" onClick="cartMinus(1);">-</a>
                        <input name="num" id="num-1" value="1">
                        <a class="add" id="add-1" onClick="cartAdd(1);">+</a>
                    </div>
                </div>
                <div class="right">
                    <a href="javascript:void(0)" onClick="cartItemDel(1);">删除</a>
                </div>
            </div>
        </div>
        <div class="cart-shop-pro-item" id="pro-item-2" data-price="1500" data-num="1" data-proid="2">
            <div class="select" data-selected="0" onClick="cartSelectItem(2)">
                <img src="./templates/default/images/cart/ico-789446.png">
            </div>
            <div class="image">
                <a><img src="./templates/default/images/pro-default.jpg"></a>
            </div>
            <div class="info">
                <div class="title">细硬峰轻鸿鲤鱼竿台钓竿钓鱼竿手竿5.4米碳素28调超轻超硬钓鱼杆 </div>
                <div class="price" id="price-show-2">商品价格:￥<span>1500.00</span></div>
                <div class="num" >商品数量:<span id="num-show-2">15</span></div>
            </div>
            <div class="col">
                <div class="left">
                    <div class="num-col">
                        <a class="minus" id="minus-2" onClick="cartMinus(2);">-</a>
                        <input name="num" id="num-2" value="1">
                        <a class="add" id="add-2" onClick="cartAdd(2);">+</a>
                    </div>
                </div>
                <div class="right">
                    <a href="javascript:void(0)" onClick="cartItemDel(2);">删除</a>
                </div>
            </div>
        </div>
        <div class="cart-shop-pro-item" id="pro-item-3" data-price="1500" data-num="1" data-proid="2">
            <div class="select" data-selected="0" onClick="cartSelectItem(3)">
                <img src="./templates/default/images/cart/ico-789446.png">
            </div>
            <div class="image">
                <a><img src="./templates/default/images/pro-default.jpg"></a>
            </div>
            <div class="info">
                <div class="title">细硬峰轻鸿鲤鱼竿台钓竿钓鱼竿手竿5.4米碳素28调超轻超硬钓鱼杆 </div>
                <div class="price" >商品价格:￥<span id="price-show-3">1500.00</span></div>
                <div class="num" >商品数量:<span id="num-show-3">15</span></div>
            </div>
            <div class="col">
                <div class="left">
                    <div class="num-col">
                        <a class="minus" id="minus-3" onClick="cartMinus(3);">-</a>
                        <input name="num" id="num-3" value="1">
                        <a class="add" id="add-3" onClick="cartAdd(3);">+</a>
                    </div>
                </div>
                <div class="right">
                    <a href="javascript:void(0)" onClick="cartItemDel(3);">删除</a>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="cart-statement-box">
    <a href="#" class="cart-statement-select-btn" id="cart-statement-select-btn"><span><img src="./templates/default/images/cart/ico-789446.png">全选</span></a>
    <div class="cart-statement-info">
        <div class="cart-statement-total-info">
            <div class="total-box"><label>合计:</label><span class="total">￥<small id="total-show"><?php echo $output['sum'];?></small></span></div>
            <div class="freight" id="freight">不含运费</div>
        </div>
        <div class="cart-statement-btn" id="cart-statement-btn">
            结算(<span id="pro-num">0</span>)
        </div>
    </div>
</section>
<!--尾部-->
<?php include template('footer'); ?>
</body>
</html>
