<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="keywords" content="API数据，开发者数据定制，免费数据调用，聚合数据">
<meta name="description" content="提供30大类，100种以上基础数据API服务，国内最大的基础数据API服务提供商">
<link type="text/css" href="${pageContext.request.contextPath }/css/reset.css" rel="stylesheet"/>
<link type="text/css" href="${pageContext.request.contextPath }/css/public.css" rel="stylesheet"/>
<link type="text/css" href="${pageContext.request.contextPath }/css/register.css" rel="stylesheet"/>
<link rel="shortcut icon" href="${pageContext.request.contextPath }/imgs/favicon.ico" />
<title>用户登录-聚合数据</title>
<script src="${pageContext.request.contextPath }/js/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/jquery.form.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/json.parse.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/SuperSlide.js" type="text/javascript" charset="utf-8"></script>
<style>
#loginTips a{color:#FFF;}
</style>
</head>
<body>
	<div id="header">
		<div class="header">
			<h1 class="png_bg">聚合数据</h1>
			<a href="/">返回主页</a>
		</div>
	</div>

    <div id="loginBanner">
        <div class="loginBanner">
            <form name="loginForm" id="login_form" method="post" action="/login/ldo" >
				<h2>登录聚合帐号</h2>
				<div class="div_user"><span></span><input class="username" name="username" type="text" placeholder="用户名" /></div>
				<div class="div_pw"><span></span><input class="pw" name="userpass" type="password" placeholder="密码" /><a class="forget_a" href="/forget">忘记密码？</a></div>
				<div class="div_pw" id="captcha_box" style=""><span></span><input class="captcha" name="captcha" type="text" placeholder="验证码计算结果" />&nbsp;&nbsp;<strong>=</strong>&nbsp;<img src="${pageContext.request.contextPath }/imgs/vercode.png" id="captchaimg"></div>
				<div style="padding-bottom:5px;"><input class="login_btn" id="loginBtn" type="button" value="登录" /></div>
				<div style="line-height:30px; text-indent:5px;color:#FFF; background:#FD5583; font-family:'Microsoft Yahei' ;margin-top:3px; border-radius:3px; width:300px; display:none;" id="loginTips">&nbsp;</div>
				<h4>没有聚合数据帐号？<a class="login_reg" href="/register">立即注册</a></h4>
				
			</form>
	   </div>
	   <div id="bannerUl">
	       <ul>
	           <li style="background:#00A0E9;}">
	               <div class="banDivContent">
	                   <a href="javascript:;" target="_self" title="默认"><img src="${pageContext.request.contextPath }/imgs/moren.png"/></a>
	               </div>
	           </li>
	       </ul>
	   </div>
	   <div class="hd"><ul></ul></div>
   </div>
<script type="text/javascript">
jQuery("#loginBanner").slide({ titCell:".hd ul", mainCell:"#bannerUl ul", effect:"fade",  autoPlay:false, autoPage:false,trigger:"click" });
</script>

<!-- footer start -->
<div id="footer" class="clear">
    <h1 class="png_bg">聚合数据</h1>
    <div class="friendLink clear">
    	<a  href="https://juheimg.oss-cn-hangzhou.aliyuncs.com/docs/%E8%81%9A%E5%90%88%E6%95%B0%E6%8D%AEAPI%E7%94%B3%E8%AF%B7%E4%BD%BF%E7%94%A8%E6%B5%81%E7%A8%8B.pdf" target="_blank" title="新手指引" rel="nofollow">新手指引</a>
        <a  href="/privacy" target="_blank" title="隐私政策" rel="nofollow">隐私政策</a>
        <a href="/legal" target="_blank" rel="nofollow">服务条款</a>
        <a href="/about" target="_blank" rel="nofollow">关于我们</a>
        <a href="/job" target="_blank" rel="nofollow">聚合招聘</a>
        <a href="/contact" target="_blank" rel="nofollow">联系我们</a>
        <a href="/links" target="_blank" rel="nofollow">友情链接</a>
    </div>
    <p>苏州新科兰德科技有限公司©版权所有 苏ICP备14006450号-3&nbsp;|&nbsp;增值电信业务经营许可证：<a href="http://jscainfo.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">苏B2-20140496</a></p>
    <div class="weixin">
        <img src="${pageContext.request.contextPath }/imgs/weixin.png" alt="" />
        <h3>关注聚合官网微信</h3>
    </div>
</div>
<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5d12e2b4eed3b554ae941c0ac43c330a' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0d9630c30ceb9d86c445d5efedea60f8' type='text/javascript'%3E%3C/script%3E"));
</script>
<!-- footer end -->
<script type="text/javascript">
    var refer='https://www.juhe.cn/';
    $(document).ready(function(){
        $("#loginBtn").click(function(){
            $("#loginBtn").val('登录中...').attr("disabled","disabled");
            var username = $(".username").val();
            var userpass = $(".pw").val();
                username = $.trim(username);
                userpass = $.trim(userpass);
            $("#loginTips").css({display:"none"});

            if(username.length <5){
                //$("#username_tips").html("请输入正确的用户名!").css({display:"block"});
                $("#loginTips").html("请输入正确的用户名!").fadeIn();
                $("#loginBtn").val('登录').removeAttr('disabled');
                return false;
            }
            if(userpass == ''){
                $("#loginTips").html("请输入正确的密码!").fadeIn();
                $("#loginBtn").val('登录').removeAttr('disabled');
                return false;
            }

            $("#login_form").ajaxSubmit(function(e){
                var obj  = json_parse(e);
                var code = obj.code;
                if(code == '1')
                {
                    //sycSiteLogin();
                    if(refer){
                        window.location.href = refer;
                    }else{
                        window.location.href = '/my';
                    }

                }else if(code == '-1'){
                    $("#loginTips").html(obj.info).fadeIn();
                    $("#loginBtn").val('登录').removeAttr('disabled');
                    return false;
                }else if(code == '-2'){
                    $("#loginTips").html(obj.info).fadeIn();
                    $("#loginBtn").val('登录').removeAttr('disabled');
                    return false;
                }else if(code == '-4'){
                    $("#loginTips").html(obj.info+',或&nbsp;<a href="/activating">重新发送邮件</a>').fadeIn();
                    $("#loginBtn").val('登录').removeAttr('disabled');
                    return false;
                }else if(code == '-5'){
                    $("#loginTips").html(obj.info+',&nbsp;<a href="'+obj.href+'">点击绑定</a>').fadeIn();
                    $("#loginBtn").val('登录').removeAttr('disabled');
                    return false;
                }else{
                    var c = obj.c;
                    if(c>2){
                        $("#captcha_box").css({display:""});
                    }
                    $("#captchaimg").click();
                    $("#loginTips").html(obj.info).fadeIn();
                    $("#loginBtn").val('登录').removeAttr('disabled');
                    return false;
                }

            })

        })

        $("#captchaimg").click(function(){
            $("#captchaimg").attr('src','/vercode?'+new Date().getTime());
        })

    })

    function sycSiteLogin(){
        /* $.get('/login/syc',function(e){

        }) */
    }

    //bind keyCode=13 Event
    $(function(){
        document.onkeydown = function(e){
            var ev = document.all ? window.event : e;
            if(ev.keyCode==13) {

                $("#loginBtn").click();

             }
        }
    });
</script>
</body>
</html>