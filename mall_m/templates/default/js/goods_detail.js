$(function(){
	//商品收藏
	$(".goods_collect").click(function (){
		var key = getcookie('key');//登录标记
		if(key==''){
			checklogin(0);
		}else {
			$.ajax({
				url: ApiUrl + "/index.php?act=member_favorites&op=favorites_add",
				type: "post",
				dataType: "json",
				data:{goods_id:goods_id,key:key},
				success: function (result) {
					if (!result.datas.error) {
						layer.alert('收藏成功', {title: '信息提示'});
					} else {
						layer.alert(result.datas.error, {title: '信息提示'});
					}
					return false;
				}
			});
		}
	});

	//加入购物车
	$(".add-to-cart").click(function (){

		var key = getcookie('key');//登录标记
		if(key==''){
			checklogin(0);
			return false;
		}else{
			var quantity = parseInt($(".buy-num").val()); //购买数量
			$.ajax({
				url:ApiUrl+"/index.php?act=member_cart&op=cart_add",
				data:{key:key,goods_id:goods_id,quantity:1},
				type:"post",
				success:function (result){
					var rData = $.parseJSON(result);
					if(!rData.datas.error){
						layer.confirm('添加购物车成功', {
							title:'提示信息',
							btn: ['去购物车','再逛逛'] //按钮
						}, function(){
							window.location.href = WapSiteUrl+'/tmpl/cart_list.html';
						}, function(){

						});
					}else{
						layer.alert(rData.datas.error, {title: '信息提示'});
					}
				}
			})
		}
	});

	//立即购买
	$('.buy-now').click(function(){
		var key = getcookie('key');//登录标记
		if(key==''){
			checklogin(0);
			return false;
		}
		window.location.href = WapSiteUrl+'/tmpl/order/buy_step1.html?goods_id='+goods_id+'&buynum=1';
	});

});
