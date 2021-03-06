<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>我的购物车</title>
<link href="/css/wedding-3.css" rel="stylesheet"/>
<link href="/css/wedding-2.css" rel="stylesheet"/>
    <script src="/js/jquery.min.js"></script>

</head>

<body>
	<div id="public-navbar">
    	<div class="layout_center layout_clear" style="overflow:visible">
        	<div class="layout_fl">你好${sessionScope.exitsUser.userTel}，欢迎来到 婚礼汇</div>
        	<ul class="layout_fr fl_li">
            	<li>
                	<div class="use-layout">
                    	<a>
                    		<span class="use-status">会员中心</span>
                        </a>
                        <div class="use-option" style="display:none">
                        	<a>会员登录</a>
                            <a>免费注册</a>
                        </div>
                        <i class="use-arrow page_icon"></i>
                    </div>
                </li>
                <li>
                	<span class="use-hr"></span>
                </li>
                <li>
                	<a>我的购物车</a>
                </li>
                <li>
                	<span class="use-hr"></span>
                </li>
                <li>
                	<div class="use-layout">
                    	<a>
                    		<span class="use-status">商户平台</span>
                        </a>
                       	<div class="use-option" style="display: none;">
                       		<a>商户登录</a>
                           	<a>免费入驻</a>
                       	</div>
                        <i class="use-arrow page_icon"></i>
                    </div>
                </li>
                <li>
                	<span class="use-hr"></span>
                </li>
                <li>
                	<a>联系我们</a>
                </li>
            </ul>
    	</div>
    </div>
    <div id="public-toolbar" class="hidden_active">
    	<div class="layout_center layout_clear">
        	<div class="page-logo layout_fl"><a><img src="/img/rxT54692503vu.jpg"></a></div>
            <div class="page-local layout_fl"><span class="local-show">重庆</span><span class="local-gray">默认</span></div>
            <div class="page-search layout_fl">
            	<div class="page-search-bar layout_clear">
                	<div class="page-search-text layout_fl">
                    	<input type="text" class="search-cover" placeholder="搜索产品或店铺">
                    </div>
                    <div class="page-search-btn layout_fl">
                    	<input type="button" value="搜索" class="search-button">
                    </div>
                </div>
                <ul class="page-search-key layout_clear fl_li" >
                    <li class="search-key-ous">大家都在搜：</li>
                    <li><a>酒店</a></li>
                    <li><a>婚纱</a></li>
                    <li><a>婚庆用车</a></li>
                    <li><a>度假</a></li>
                </ul>
            </div>
            <div class="page-release layout_fl">
            	<a>立即发布需求</a>
            </div>
            <div class="page-tels layout_fr">
            	<span class="tel-show">全国免费咨询热线</span>
                <span class="tel-pink"><strong>023-6766-4541</strong></span>
            </div>
        </div>
    </div>
    <div id="page-middle-bar">
    	<div class="layout_center layout_clear">
        	<div class="button layout_fl">全部分类</div>
            <ul class="layout_clear layout_fl fl_li">
            	<li><a>首页</a></li>
                <li><a href="field.html">婚宴场地</a></li>
                <li><a>婚纱摄影</a></li>
                <li><a>婚庆用车</a></li>
                <li><a>婚庆公司</a></li>
                <li><a>婚具租赁</a></li>
                <li><a>定制人员</a></li>
                <li><a>婚品商城</a></li>
                <li><a>蜜月度假</a></li>
                <li><a>视频秀</a></li>
            </ul>
        </div>
    </div>
    <div id="page_Auser">
    	<div class="layout_center layout_clear">
            <div id="us_fl" class="layout_fl">
            	<div class="us_uint">
                	<h4 class="us_uint_menu"></h4>
                    <ul class="us_uint_list">
                    	<li class="cur"><a>我的婚礼汇</a></li>
                    </ul>
                </div>
                <div class="us_uint">
                	<h4 class="us_uint_menu"></h4>
                    <ul class="us_uint_list">
                    	<li class=""><a>我的收藏</a></li>
                    </ul>
                </div>
                <div class="us_uint">
                	<h4 class="us_uint_menu">我的订制</h4>
                    <ul class="us_uint_list">
                    	<li><a>需求发布</a></li>
                        <li><a>我的订单</a></li>
                        <li class="cur"><a>我的购物车</a></li>
                    </ul>
                </div>
                <div class="us_uint">
                	<h4 class="us_uint_menu">我的账户</h4>
                    <ul class="us_uint_list">
                    	<li><a>个人信息</a></li>
                        <li><a>账户安全</a></li>
                        <li><a>收货地址</a></li>
                    </ul>
               	</div>
            </div>
            <div id="us_fr" class="layout_fl">
            	<div class="us_ChildPage us_adjust_padding2 us2_PageUint2">
                	<h4 class="us_ChildHead">我的购物车</h4>
                    <div class="us_buycar">
                    	<ul class="us_buycar_wrap">
                        	<li>
                            	<div class="layout_clear">
                                	<div class="us_buycar_check layout_fl">
                                    </div>
                                    <div class="us_unit_table layout_fl">


                                        <div class="us_order_line"><span>${shoppingcart.shoppingcartTime}</span><span>订单号：${shoppingcart.shoppingcartId}</span><span></span></div>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td><span class="cos_span">选择</span> </td>
                                                    <td><span class="cos_span">商品信息</span></td>
                                                    <td><span class="cos_span">套餐类型/婚宴场地</span></td>
                                                    <td><span class="cos_span">单价</span></td>
                                                    <td><span class="cos_span">数量</span></td>
                                                    <td><span class="cos_span">总金额</span></td>
                                                    <td><span class="cos_span">操作</span></td>
                                                </tr>
                                                <c:forEach items="${shoppingcarts}" var="shoppingcart">

                                                    <script type="text/javascript">
                                                        function countPrice(){
                                                            var cbs = document.getElementsByName("cartCb");
                                                            var countPrice = 0;
                                                            for(var i=0; i<cbs.length; i++){
                                                                var cb = cbs[i];
                                                                if(cb.checked){
                                                                    countPrice +=  parseFloat(document.getElementById("totalPrice_"+cb.value).innerHTML);
                                                                }
                                                            }
                                                            document.getElementById("cp").innerHTML = "￥"+countPrice;
                                                        }
                                                    </script>

                                                <tr>
                                                    <td><input type="checkbox" name="cartCb"  id="checkboxx" value="${shoppingcart.shoppingcartId}" onclick="countPrice()"></td>
                                                    <td><div class="img"><img src="${shoppingcart.shoppingcartImg}" style="width:100px;"><span>${shoppingcart.shoppingcartName}</span></div></td>
                                                    <td><span class="cos_span">套餐类型：${shoppingcart.shoppingcartType}</span><span class="cos_span">婚宴场地：${shoppingcart.shoppingcartPlace}</span></td>
                                                    <td><span class="cos_span" style="display:block"><ins></ins></span><span class="cos_span">${shoppingcart.shoppingcartPrice}</span></td>
                                                    <td>
                                                        <script type="text/javascript">
                                                            function change(cid,type) {
                                                                var cont=  document.getElementById("mCount_"+cid).innerHTML

                                                                if (type==1){
                                                                    cont++
                                                                }else if (type == 0){
                                                                    cont--
                                                                    if (cont==0){
                                                                        cont=1
                                                                    }
                                                                }

                                                                $.ajax({
                                                                    url:"/changeNum.do",
                                                                    type:"post",
                                                                    data:{
                                                                        "shoppingcartId":cid,
                                                                        "count":cont,
                                                                    },
                                                                    success: function(result) {
                                                                        if (result.flag){
                                                                            console.log(result.msg)
                                                                        }else {
                                                                            console.log(result.msg)
                                                                        }
                                                                    },
                                                                    dataType: "json"
                                                                })

                                                                countPrice()

                                                                document.getElementById("mCount_"+cid).innerHTML=cont;
                                                                var my = document.getElementById("totalPrice_"+cid).innerHTML;
                                                                my = cont * ${shoppingcart.shoppingcartPrice};
                                                                document.getElementById("totalPrice_"+cid).innerHTML = my
                                                                console.log(cont)
                                                            }


                                                        </script>
                                                        <span class="cos_span">
                                                            <span class="amont_line">
                                                                <span class="amont_line_btn amont_line_reduce"  onclick="change(${shoppingcart.shoppingcartId},0)">-</span>
                                                                <span class="amont_line_text" id="mCount_${shoppingcart.shoppingcartId}">${shoppingcart.shoppingcartCount}</span>
                                                                <span class="amont_line_btn amont_line_push"  onclick="change(${shoppingcart.shoppingcartId},1)">+</span>
                                                            </span>
                                                        </span>
                                                    </td>
                                                    <td><span class="cos_span"><em class="keyword-pink" id="totalPrice_${shoppingcart.shoppingcartId}">${shoppingcart.shoppingcartCount*shoppingcart.shoppingcartPrice}</em></span></td>
                                                    <td><span class="cos_span"><a>移入收藏夹</a>/<a>删除</a></span></td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                    	</table>

                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="us_bottom_bar layout_clear">

                        <div class="us_buycar_state layout_fl">
                            <input type="checkbox" checked="">
                            <span class="cos_span"><a>清空购物车</a></span>
                        </div>
                        <div class="us_buycar_buy layout_fr">
                        	<span class="cos_span">已选择<span></span>件商品</span>
                            <span class="cos_span">总价：<em class="keyword-pink" id = "cp">￥1699.00</em></span>
                            <a class="us_button" href="">去结算</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-footer">
    	<div class="layout_center">
        	<div class="footer-list">
            	<dl class="footer-item">
                	<h3>新手上路</h3>
                    <a  >
                    	<dd><b></b>如何注册</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何登录</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何预订</dd>
                    </a>
                    <a  >
                    	<dd><b></b>购物流程</dd>
                    </a>
                    <a  >
                    	<dd><b></b>预订须知</dd>
                    </a>
                </dl>
                <dl class="footer-item">
                	<h3>公司信息</h3>
                    <a  >
                    	<dd><b></b>关于我们</dd>
                    </a>
                    <a  >
                    	<dd><b></b>用户协议</dd>
                    </a>
                    <a  >
                    	<dd><b></b>隐私申明</dd>
                    </a>
                    <a  >
                    	<dd><b></b>商家入驻协议</dd>
                    </a>
                    <a  >
                    	<dd><b></b>安全须知</dd>
                    </a>
                </dl>
                <dl class="footer-item">
                	<h3>合作联系</h3>
                    <a  >
                    	<dd><b></b>联系我们</dd>
                    </a>
                    <a  >
                    	<dd><b></b>招商加盟</dd>
                    </a>
                    <a  >
                    	<dd><b></b>商户平台</dd>
                    </a>
                    <a  >
                    	<dd><b></b>招聘信息</dd>
                    </a>
                </dl>
                <dl class="footer-item">
                	<h3>帮助中心</h3>
                    <a  >
                    	<dd><b></b>忘记密码</dd>
                    </a>
                    <a  >
                    	<dd><b></b>常见问题</dd>
                    </a>
                    <a  >
                    	<dd><b></b>在线客服</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何上传产品</dd>
                    </a>
                    <a  >
                    	<dd><b></b>如何成为商家</dd>
                    </a>
                </dl>
                <div class="footer-mobile">
                	<img src="/img/SVT58398773Nz.jpg">
                    <h2>官方微信</h2>
                </div>
            </div>
            <div class="footer-data0">
            	<a><i class="footer-ad0" title="可信网站身份验证"></i></a>
                <a><i class="footer-ad1" title="重庆网警备案"></i></a>
                <a><i class="footer-ad2" title="重庆工商行政管理"></i></a>
                <a><i class="footer-ad3" title="安全联盟认证"></i></a>
            </div>
            <div class="footer-data1">
            	友情链接：
            	<a href="https://www.baidu.com/" target="_blank">百度</a>
                <em>|</em>
                <a href="https://www.taobao.com/">淘宝</a>
            </div>
            <div class="footer-data2">
            	 CopyRight 2016 婚礼汇 All Rights Reserved
                 <a href="Untitled-2.html">渝ICP备14001673号</a>
            </div>
        </div>
    </div>
    <a target="_blank" title="联系我们" href="Untitled-2.html">
    	<span id="askus">&nbsp;</span>
    </a>
    <div id="gotop" title="返回顶部" style="display:block; background:url(/img/gotop.png) -70px 0px no-repeat"></div>

</body>
</html>
