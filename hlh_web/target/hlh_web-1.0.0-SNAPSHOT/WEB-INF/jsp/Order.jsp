<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>我的订单</title>
<link href="../css/wedding-3.css" rel="stylesheet"/>
<link href="../css/wedding-2.css" rel="stylesheet"/>
</head>

<body>
	<div id="public-navbar">
    	<div class="layout_center layout_clear" style="overflow:visible">
        	<div class="layout_fl">你好，欢迎来到 婚礼汇</div>
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
        	<div class="page-logo layout_fl"><a><img src="../img/rxT54692503vu.jpg"></a></div>
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
                        <li class="cur"><a>我的订单</a></li>
                        <li><a>我的购物车</a></li>
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
            	<div class="us_ChildPage us_adjust_padding us2_PageUint6">
                	<div class="us_Topbar layout_clear">
                    	<ul class="us_Topbar_list layout_fl">
                        	<li class="cur"><a>全部订单</a></li>
                            <li><a>待付款</a></li>
                            <li><a>待发货</a></li>
                            <li><a>待收货</a></li>
                            <li><a>交易完成</a></li>
                        </ul>
                    </div>
                    <div class="us_Fllow_table">
                    	<table>
                        	<tbody>
                            	<tr>
                                	<th><span class="cos_span">订单号</span></th>
                                    <th><span class="cos_span">数量</span></th>
                                    <th><span class="cos_span">实付款</span></th>
                                    <th><span class="cos_span">商品</span></th>
                                    <th><span class="cos_span">交易状态</span></th>
                                    <th><span class="cos_span">交易操作</span></th>
                                </tr>
                                <tr>
                                	<td><span class="cos_span">95836167025639</span></td>
                                    <td><span class="cos_span">1</span></td>
                                    <td><span class="cos_span">1699.00</span></td>
                                    <td><span class="cos_span"></span></td>
                                    <td><span class="cos_span" style="display:block"><a>已选定</a></span></td>
                                    <td><span class="cos_span"><a>订单详情</a></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="us_PageCut">
                    	<a class="prev"><</a>
                        <a class="cur">1</a>
                        <a class="next">></a>
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
                	<img src="../img/SVT58398773Nz.jpg">
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
    <div id="gotop" title="返回顶部" style="display:block; background:url(../img/gotop.png) -70px 0px no-repeat"></div>
</body>
</html>
