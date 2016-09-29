<?php defined('InSystem') or exit('Access Invalid!');?>
<section class="search-box">
    <a class="category-btn"> <img src="./templates/default/images/category-ico.png" /></a>
    <div class="search-input">
        <input name="search-words" type="text" id="keyword" placeholder="搜索商品"> <a href="javascript:void(0);" class="search-btn"><img src="./templates/default/images/search-ico.png" /></a>
    </div>
    <a class="tips-btn"><img src="./templates/default/images/tip-ico.png" /></a>
</section>
<script>
    $(function(){
        $('.search-btn').click(function(){
            var keyword = encodeURIComponent($('#keyword').val());
            location.href = '<?php BASE_SITE_URL;?>'+'/wap/tmpl/product_list.html?keyword='+keyword;
        });
    });
</script>