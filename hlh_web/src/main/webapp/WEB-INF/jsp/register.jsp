<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<title>会员注册</title>
<link href="${pageContext.request.contextPath}/css/wedding-3.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/wedding-2.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
	<div id="public-toolbar" class="hidden_active user_adjust_public">
    	<div class="layout_center layout_clear">
        	<div class="page-logo layout_fl">
            	<a><img src="${pageContext.request.contextPath}/img/rxT54692503vu.jpg"></a>
            </div>
            <div class="page-tels layout_fr">
            	<span class="tel-show"> 全国免费咨询热线 </span>
                <span class="tel-pink"><strong>023-6766-4541</strong></span>
            </div>
        </div>
    </div>
    <div class="user-form" style="background:url(${pageContext.request.contextPath}/img/JQK51845110Xc.jpg)">
    	<div class="layout_center">
        	<div class="user-form-wrap">
            	<div class="user-form-wraps">
                	<div class="user-form-item"><strong class="user-form-title">会员注册</strong></div>
                    <form action="${pageContext.request.contextPath}/user/register.do" method="post">
                        <font color="red">${errmsg}</font>
                    	<div class="user-form-item">
                        	<input name="userTel" id="userEmail" class="user-input" type="text"  placeholder="邮箱">
                        </div>
                        <div class="user-form-item">
                        	<input name="userPassword" class="user-input" type="password"  placeholder="密码">
                        </div>
                        <div class="user-form-item">
                        	<input class="user-input user-input-adjust" name="emailCode" type="text" max="4" placeholder="邮箱验证码"><a class="qrcode" onclick="sendEmail()">发送验证码</a>
                        </div>
                        <div class="user-form-item">
                        	<label>
                            	<input class="user-check" type="checkbox" checked="false" value="yes">
                                <span class="cos_span">
                                	登录即表示同意<a class="keyword-blue-pale">《119婚庆网用户协议》</a>
                                </span>
                            </label>
                        </div>
                        <div class="user-form-item">
                            <button type="submit" class="user-form-button" style="font-weight: bold;width: 330px">立即注册</button>
                        </div>
                    </form>

                    <div class="user-form-item us_text_right">
                    	<span class="cos_span"><a href="/toLogin.do">已有账户?立即登录</a></span>
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
                	<img src="${pageContext.request.contextPath}/img/SVT58398773Nz.jpg">
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
    <div id="gotop" title="返回顶部" style="display:block; background:url(${pageContext.request.contextPath}/img/gotop.png) -70px 0px no-repeat"></div>
<body>
<script type="text/javascript">


    function xxx() {
        $(".qrcode").html("邮件已发送")
    }

    function sendEmail() {
        $.ajax({
            url:"${pageContext.request.contextPath}/sendEmail",
            type:"post",
            data:{
                "email": $("#userEmail").val()
            },
            success:function (data) {
                if (data.flag = true){
                    $(".qrcode").html("邮件已发送")
                    console.log("发送成功")
                }else {
                    console.log("发送失败")
                }
            }
        })
    }
</script>
</body>
</html>
