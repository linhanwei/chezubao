       
    $(function(){

        //获取商品详细信息
        var goods_id = GetQueryString("goods_id");
        $.ajax({
            type:'get',
            url:ApiUrl+'/index.php?act=zero_goods&op=goods_detail',
            data:{goods_id:goods_id},
            dataType:'json',
            success:function(result){
               
                var data = result.datas;
                var html = template.render('home_detail', data);
                $(".goods_detail").append(html);

                $('.am-slider').flexslider();
                if (data.goods_detail.goods_detail) {
                    $('#detail_content').html(data.goods_detail.goods_detail);
                    $.AMUI.accordion.init();
                }
            }
        });

        //加减购买数量
        $('.red_goods_num').on('click',function(event) {
            var goods_num = parseInt($('#my-address #goods_number').val());

            if(goods_num >= 2){
                $('#my-address #goods_number').val(goods_num-1);
            }
            
        });
        $('.inc_goods_num').on('click',function(event) {
            var goods_num = parseInt($('#my-address #goods_number').val());
            $('#my-address #goods_number').val(goods_num+1);
            
        });

        var key = getcookie('key');
        // $.ajax({
        //     type:'post',
        //     url:ApiUrl+'/index.php?act=member_address&op=area_list',
        //     data:{key:key},
        //     dataType:'json',
        //     success:function(result){
        //         checklogin(result.login);
        //         var data = result.datas;
        //         var prov_html = '';
        //         for(var i=0;i<data.area_list.length;i++){
        //             prov_html+='<option value="'+data.area_list[i].area_id+'">'+data.area_list[i].area_name+'</option>';
        //         }
        //         $("select[name=prov]").append(prov_html);
        //     }
        // });
        
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
        
        $.sValid.init({
            rules:{
                true_name:"required",
                mob_phone:"required",
                prov_select:"required",
                city_select:"required",
                region_select:"required",
                address:"required"
            },
            messages:{
                true_name:"姓名必填！",
                mob_phone:"手机号必填！",
                prov_select:"省份必填！",
                city_select:"城市必填！",
                region_select:"区县必填！",
                address:"街道必填！"
            },
            callback:function (eId,eMsg,eRules){
                if(eId.length >0){
                    var errorHtml = "";
                    $.map(eMsg,function (idx,item){
                        errorHtml += "<p>"+idx+"</p>";
                    });
                    $(".error-tips").html(errorHtml).show();
                }else{
                     $(".error-tips").html("").hide();
                }
            }  
        });
        $('.add_address').click(function(){

            if($.sValid()){
                var index = $('select[name=prov]')[0].selectedIndex;
                var aa = $('select[name=prov]')[0].options[index].innerHTML;

                
                var true_name = $('input[name=true_name]').val();
                var mob_phone = $('input[name=mob_phone]').val();
                var tel_phone = $('input[name=tel_phone]').val();
                var prov_id = $('select[name=prov]').val();
                var city_id = $('select[name=city]').val();
                var area_id = $('select[name=region]').val();
                var address = $('input[name=address]').val();
                
                var prov_index = $('select[name=prov]')[0].selectedIndex;
                var city_index = $('select[name=city]')[0].selectedIndex;
                var region_index = $('select[name=region]')[0].selectedIndex;   
                var area_info = $('select[name=prov]')[0].options[prov_index].innerHTML+' '+$('select[name=city]')[0].options[city_index].innerHTML+' '+$('select[name=region]')[0].options[region_index].innerHTML;

                $.ajax({
                    type:'post',
                    url:ApiUrl+"/index.php?act=member_address&op=address_add",  
                    data:{key:key,true_name:true_name,mob_phone:mob_phone,tel_phone:tel_phone,city_id:city_id,area_id:area_id,address:address,area_info:area_info},
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
            }
        });
        
    });

//赋值邮费与商品ID
function add_cart(goods_id,goods_freight){
    $('#my-address').find('#goods_id').val(goods_id);
    $('#my-address').find('#goods_freight').val(goods_freight+'元');
}

/*
 *此框架只依赖zepto.js
 *sDialog 是dialog弹出框
 */
(function($) {
    $.extend($, {
        sDialog: function(options) {
            //dialog弹出框
            var opts = $.extend({}, $.sDialog.defaults, options);

            function _init() {
                var mask_height = ($("body").height() > $(window).height()) ? $("body").height() : $(window).height();
                var windowH = parseInt($(window).height());
                var warpTop = windowH / 2;
                var dTmpl = '<div class="simple-dialog-wrapper">';
                if (opts.lock) { //是否有锁定
                    dTmpl += '<div class="s-dialog-mask" style="height:' + mask_height + 'px;"></div>';
                }
                dTmpl += '<div style="left:50%;top:' + warpTop + 'px" class="s-dialog-wrapper s-dialog-skin-' + opts.skin + '">' + '<div class="s-dialog-content">' + opts.content + '</div>'
                if (opts.okBtn || opts.cancelBtn) {
                    dTmpl += '<div class="s-dialog-btn-wapper">';
                    if (opts.okBtn) {
                        dTmpl += '<a href="javascript:void(0)" class="s-dialog-btn-ok">' + opts.okBtnText + '</a>';
                    }
                    if (opts.cancelBtn) {
                        dTmpl += '<a href="javascript:void(0)" class="s-dialog-btn-cancel">' + opts.cancelBtnText + '</a>';
                    }
                    dTmpl += '</div>';
                }
                dTmpl += '</div>';
                dTmpl += '</div>';
                $("body").append(dTmpl);
                var d_wrapper = $(".s-dialog-wrapper");
                var mLeft = -parseInt(d_wrapper.width()) / 2;
                d_wrapper.css({
                    "margin-left": mLeft,
                });
                //绑定事件
                _bind();
            }

            function _bind() {
                var okBtn = $(".s-dialog-btn-ok");
                var cancelBtn = $(".s-dialog-btn-cancel");
                okBtn.click(_okFn);
                cancelBtn.click(_cancelFn);
                if (!opts.okBtn && !opts.cancelBtn) {
                    setTimeout(function() {
                        _close();
                    }, opts.autoTime);
                }
            }

            function _okFn() {
                opts.okFn();
                _close();
            }

            function _cancelFn() {
                opts.cancelFn();
                _close();
            }

            function _close() {
                $(".simple-dialog-wrapper").remove();
            }
            return this.each(function() {
                _init();
            })();
        },
        sValid: function() {
            var $this = $.sValid;
            var sElement = $this.settings.sElement;
            for (var i = 0; i < sElement.length; i++) {
                var element = sElement[i];
                var sEl = $("#"+element).length >0 ? $("#"+element) : $("."+element);
                for(var j = 0;j<sEl.length;j++){
                     $this.check(element,sEl[j]);
                }
            }
            $this.callBackData();
            var cEid = $this.errorFiles.eId;
            var cEmsg = $this.errorFiles.eMsg;
            var cErules = $this.errorFiles.eRules;
            var isVlided = false;
            if (cEid.length > 0) {
                isVlided = false;
            } else {
                isVlided = true;
            }
            $this.settings.callback.apply(this, [cEid, cEmsg, cErules]);
            $this.destroyData();
            return isVlided;
        }
    });
    //sDialog
    $.sDialog.defaults = {
        autoTime: '2000', //当没有 确定和取消按钮的时候，弹出框自动关闭的时间
        "skin": 'block', //皮肤，默认黑色
        "content": "我是一个弹出框", //弹出框里面的内容
        "width": 100, //没用到
        "height": 100, //没用到
        "okBtn": true, //是否显示确定按钮
        "cancelBtn": true, //是否显示确定按钮
        "okBtnText": "确定", //确定按钮的文字
        "cancelBtnText": "取消", //取消按钮的文字
        "lock": true, //是否显示遮罩
        "okFn": function() {}, //点击确定按钮执行的函数
        "cancelFn": function() {} //点击取消按钮执行的函数
    };
    //sValid
    $.extend($.sValid, {
        defaults: {
            rules: {},
            messages: {},
            callback: function() {}
        },
        init: function(options) {
            //初始化控件参数
            var opt = $.extend({}, this.defaults, options);
            var rules = opt.rules;
            var messages = opt.messages;
            var sElement = [];
            $.map(rules, function(item, idx) {
                sElement.push(idx);
            });
            this.settings = {};
            this.settings["sElement"] = sElement;
            this.settings["sRules"] = rules;
            this.settings["sMessages"] = messages;
            this.settings['callback'] = opt.callback;
        },
        optional: function(element) {
            var val = this.elementValue(element);
            return !this.methods.required.call(this, val, element);
        },
        methods: {
            required: function(value, element) {
                if (element.nodeName.toLowerCase() === "select") {
                    var val = $(element).val();
                    return val && val.length > 0;
                }
                return $.trim(value).length > 0;
            },
            maxlength: function(value, element, param) {
                var length = $.trim(value).length;
                return this.optional(element) || length <= param;
            },
            minlength: function(value, element, param) {
                var length = $.trim(value).length;
                return this.optional(element) || length >= param;
            },
            //是否是合法数字（包括正数、负数）
            number: function(value, element, param) {
                return this.optional(element) || /^-?(?:\d+|\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/.test(value);
            },
            digits: function(value, element, param) {
                return this.optional(element) || /^\d+$/.test(value);
            },
            email: function(value, element, param) {
                return this.optional(element) || /^[a-z0-9-]{1,30}@[a-z0-9-]{1,65}(\.[a-z0-9-]{1,65})*$/.test(value);
            }
        },
        elementValue: function(element) {
            var type = $(element).attr("type");
            var value = $(element).val();
            if (typeof value === "string") {
                return value.replace(/\r/g, "");
            }
            return value;
        },
        rulesFormat: {
            required: true,
            email: true
        },
        errorFiles: {
            eId: [],
            eRules: {},
            eMsg: {}
        },
        check: function(element,mEl) {
            var settingsRules = [];
            var methods = this.methods;
            var rules = this.settings["sRules"];
            var mVal = this.elementValue.call(this, mEl);
            var mParam = "";
            var errorFiles = this.errorFiles;
            var errRules = [];
            //rules
            if (typeof rules[element] === "string") {
                if ($.inArray(rules[element], settingsRules) < 0) {
                    settingsRules.push(rules[element]);
                }
            } else {
                $.each(rules[element], function(idx, item) {
                    if ($.inArray(idx, settingsRules) < 0) {
                        settingsRules.push(idx);
                        if (idx == "maxlength" || idx == "minlength") {
                            mParam = parseInt(item);
                        }
                    }
                })
            }
            //checked
            for (var i = 0; i < settingsRules.length; i++) {
                if (!methods[settingsRules[i]].call(this, mVal, mEl, mParam)) {
                    errRules.push(settingsRules[i]);
                    errorFiles['eRules'][element] = errRules;
                    if ($.inArray(element, errorFiles['eId']) < 0) {
                        errorFiles['eId'].push(element);
                    }
                }
            }
        },
        callBackData: function() {
            var errorFiles = this.errorFiles;
            var errId = errorFiles.eId;
            var eMsg = errorFiles.eMsg;
            var eRules = errorFiles.eRules;
            var sMessages = this.settings.sMessages;
            for (var i = 0; i < errId.length; i++) {
                if (typeof sMessages[errId[i]] === "string") {
                    eMsg[errId[i] + "_" + eRules[errId[i]]] = sMessages[errId[i]];
                } else {
                    if ($.isArray(eRules[errId[i]])) {
                        for (var j = 0; j < eRules[errId[i]].length; j++) {
                            eMsg[errId[i] + "_" + eRules[errId[i]][j]] = sMessages[errId[i]][eRules[errId[i]][j]]
                        }
                    }
                }
            }
        },
        destroyData: function() {
            this.errorFiles = {
                eId: [],
                eRules: {},
                eMsg: {}
            };
        }
    });
})($);