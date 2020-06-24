<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>酒店详情</title>
<link href="css/wedding-3.css" rel="stylesheet"/>
<link href="css/room.css" rel="stylesheet"/>
<link rel="icon" href="img/logo.ico"/>
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
        	<div class="page-logo layout_fl"><a><img src="img/rxT54692503vu.jpg"></a></div>
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
    <div>
    	<div class="layout_center">
        	<div class="path">
            	<span><a>婚礼汇</a></span>
                <em>></em>
                <span><a>婚宴场地</a></span>
                <em>></em>
                <a class="page cur">${hotelInfo.hotelName}</a>
            </div>
            <div id="shops-header" class="second_clear">
            	<div class="layout_fl shops-cover">
                	<img src="${hotelInfo.img.imgAdd}">
                </div>
                <div class="shops-deta second_clear layout_fl">
                    <div class="shops-info layout_fl">
                        <h1 class="shops-info-name">${hotelInfo.hotelName}</h1>
                        <div class="shops-info-local">
                            <i class="page_icon in-shop-local-icon" ></i>${hotelInfo.hotelAddress}
                        </div>
                        <ul class="shops-info-list">
                            <li>联系电话：${hotelInfo.hotelTel}</li>
                            <li>公交线路：${information.infoBus}</li>
                        </ul>
                    </div>
                    <div class="shops-label layout_fl">
                    	<h4 class="shops-label-name">店铺：${hotelInfo.hotelName}</h4>
                        <div class="shops-label-param">
                        	<span class="shops-label-item">
                            	<span class="shops-label-up">描述</span>
                           		<span class="shops-label-down">4.8</span>
                            </span>
                            <span class="shops-label-item">
                            	<span class="shops-label-up">服务</span>
                            	<span class="shops-label-down">5.8</span>
                            </span>
                            <span class="shops-label-item">
                            	<span class="shops-label-up">保障</span>
                            	<span class="shops-label-down">4.8</span>
                            </span>
                 		</div>
                        <a class="shops-btn shops-btn0">收藏店铺</a>
                        <a class="shops-btn shops-btn1">联系客服</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="layout_center">
        <ul>
            <c:forEach items="${rooms}" var="room">
            <li>
                <div class="room-div1">
                    <div class="room-div2">
                        <div class="room-div3">
                            <img style="margin-left: 10px" alt="${room.roomName}" src="${room.img.imgAdd}">
                        </div>
                        <div class="room-div4">
                            <table border="1" >
                                <tr>
                                    <td style="font-size: 25px" colspan="6" align="center">${room.roomName}</td>
                                </tr>
                                <tr align="center">
                                    <td class="room-td1">空高</td>
                                    <td class="room-td2">${room.roomHeight}</td>
                                    <td class="room-td1">低消</td>
                                    <td class="room-td3">${room.roomMinFee}</td>
                                    <td class="room-td1">形状</td>
                                    <td class="room-td4">${room.roomForm}</td>
                                </tr>
                                <tr align="center">
                                    <td class="room-td1">柱子</td>
                                    <td class="room-td2">${room.roomPillar}</td>
                                    <td class="room-td1">晚餐</td>
                                    <td class="room-td3">${room.roomDinner}</td>
                                    <td class="room-td1">电费</td>
                                    <td class="room-td4">${room.roomElectricFee}</td>
                                </tr>
                                <tr align="center">
                                    <td class="room-td1">拆分</td>
                                    <td class="room-td2">${room.roomSplit}</td>
                                    <td class="room-td1">面积</td>
                                    <td class="room-td3">${room.roomArea}</td>
                                    <td class="room-td1">灯光</td>
                                    <td class="room-td4">${room.roomLamplight}</td>
                                </tr>
                                <tr align="center">
                                    <td class="room-td1">LED</td>
                                    <td class="room-td2">${room.roomLED}</td>
                                    <td class="room-td1">桌数</td>
                                    <td class="room-td3">${room.roomTables}</td>
                                    <td colspan="2"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </li>
            </c:forEach>
        </ul>

    </div>


    <div class="layout_center" style="margin-top: 50px">
        <table border="1" class="info-table">
            <tr>
                <td>星级</td>
                <td>${information.infoStarLevel}</td>
                <td>装修时间</td>
                <td>${information.infoDecorateTime}</td>
            </tr>
            <tr>
                <td>服务费</td>
                <td>${information.infoServiceFee}</td>
                <td>定金</td>
                <td>${information.infoSubscription}</td>
            </tr>
            <tr>
                <td>进场费</td>
                <td>${information.infoEnterFee}</td>
                <td>婚房化妆间</td>
                <td>${information.infoDressingRoom}</td>
            </tr>
            <tr>
                <td>麦克风</td>
                <td>${information.infoMicrophone}</td>
                <td>投影仪</td>
                <td>${information.infoProjector}</td>
            </tr>
            <tr>
                <td>桌布</td>
                <td>${information.infoTablecloth}</td>
                <td>电费</td>
                <td>无</td>
            </tr>
            <tr>
                <td>公交路线</td>
                <td colspan="3">${information.infoBus}</td>
            </tr>
            <tr>
                <td>棋牌娱乐</td>
                <td>${information.infoAmusement}</td>
                <td colspan="2"></td>
            </tr>
        </table>
    </div>
    <div class="layout_center" style="margin-top: 50px">
    <div class="pac-maindiv">
        <div class="pac-div1">
            <h1>婚宴套餐</h1>
        </div>
        <div class="pac-div2">
            <span>午餐</span>
        </div>
        <div class="pac-rightdiv"><a href="/hunli/HotelInfo/Servlet?m=listHotelPackageById&id=1">更多商品<em>></em></a></div>
    </div>

        <div class="pac-div3 ">
            <ul>
                <li style="text-align: center; color: #ff0080; background: #dddddd">综合排序</li>
                <li>
                    <a href="#">
                        <span>销量</span>
                        <span class="page_icon in-shop-scre-icon0"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>收藏</span>
                        <span class="page_icon in-shop-scre-icon0"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>新品</span>
                        <span class="page_icon in-shop-scre-icon0"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>价格</span>
                        <span class="page_icon in-shop-scre-icon0"></span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="pac-div4">
            <c:forEach items="${myPackages}" var="myPackage">


            <a href="getPackInfoById.do?packageId=${myPackage.packageId}&hotelId=${hotelInfo.hotelId}">
                <div class="pac-div5">
                    <div class="pac-div7">
                        <img alt="套餐${myPackage.packageId}" src="${myPackage.packageMenuA}">
                    </div>
                    <div class="pac-div8">
                        <span style="font-size: 16px">${myPackage.packageName}</span>
                    </div>
                    <div class="pac-div9">
                        <span style="font-size: 25px; color: #f9326d; line-height: 52.8px">￥${myPackage.packageName}</span>
                    </div>
                    <div class="pac-div9">
                        <span style="font-size: 14px">${myPackage.packageContent}</span>
                    </div>
                    <div class="pac-div10">
                        <span style="font-size: 14px">销量：${myPackage.packageSales}</span>
                    </div>
                </div>
            </a>

            </c:forEach>
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
                	<img src="img/SVT58398773Nz.jpg">
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
    <div id="gotop" title="返回顶部" style="display:block; background:url(img/gotop.png) -70px 0px no-repeat"></div>
    
</body>
</html>
