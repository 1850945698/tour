<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/register.css" />
	</head>
	<body>
		<div class="mybody">
		    <div class="header">
			    <div class="left">
				    <div class="logoimg"></div>
				    <div class="logotitle">旅游推荐</div>
				    <div class="english">Tour&nbsp; &nbsp; Recommendation</div>
			    </div>
			    <div class="right">账号注册</div>
			    <div class="boundary"></div>
		    </div>
		    <div id="gotoTop" style="display: none;">
	    	    <img src="images/up.png" style="width: 40px; height: 40px;">
	        </div>
		    <div class="footer">
		    	<div class="boundary"></div>
		    	<div class="inner">
		    		<div class="cr">
		    			<div class="links">
		    				<a href="##">加入我们&nbsp;&nbsp;|&nbsp; &nbsp;</a>
		    				<a href="##">业务合作&nbsp;&nbsp;|&nbsp; &nbsp;</a>
		    				<a href="##">安全中心&nbsp;&nbsp;|&nbsp; &nbsp;</a>
		    				<a href="##">"严重违规失信"专项整治举报</a>
		    			</div>
		    			<p class="copyright">
		    				<span>Copyright&nbsp;&nbsp;@2018&nbsp;</span>
		    				<span>北京网安备110108901530&nbsp;</span>
		    				<span>京ICP备05021087号&nbsp;</span>
		    				<span>营业执照信息&nbsp;</span>
		    				<span>保险经纪资质&nbsp;</span>
		    			</p>
		    			
		    		</div>
		    		
		    	</div>
		    	
		    </div>
		    <div class="content">
		    	<form id="test_form">
		    		<div class="textbox-group">
		    			<label class="label">手机号:</label>
		    			<input class="textbox" type="text" id="phonenumber" placeholder="请输入手机号码" warning="请输入符合规范的手机号！" maxlength="15" index="0"/>
		    		</div>
		    		
		    		<div class="textbox-group">
		    			<label class="label">密码:</label>
		    			<input class="textbox" type="password" id="password" placeholder="请输入登陆密码" maxlength="16" warning="6~16位，需组合字母、数字或符号！" index="1"/>
		    		</div>
		    		<div class="textbox-group">
		    			<label class="label">确认密码:</label>
		    			<input class="textbox" type="password" id="repassword" placeholder="请再次输入登陆密码" maxlength="16" index="2" warning="密码错误！"/>
		    		</div>
		    		<div class="textbox-group">
		    			<label class="label">验证码:</label>
		    			<input class="textbox" type="text" id="condefield" placeholder="请输入验证码" maxlength="4"  warning="验证码错误！" index="3"/>
		    			<img  class="vcodeimg" src="images/yzm1.jpg">
		    			<a class="change" href="##">换一张</a>
		    		</div>
		    		<div class="textbox-group submit">
		    			<button class="btn" data-model="submitBtn" type="button" id="register">注册</button>
		    		</div>
		    	</form>
		    	<div class="page-sidebar">
		    		<div class="gpk2">
		    			<dl>
		    				<dt>注册为“旅游推荐”用户后，您可以：</dt>
		    				<dd>
		    					<ul>
		    						<li>轻松
		    							<p class="h1">查询&nbsp;</p>
		    							<p class="h1">计划 &nbsp;</p>
		    							<p class="h1">管理&nbsp;</p>您的旅游信息
		    						</li>
		    						<li>
		    							<p class="h1">上传 &nbsp;</p>
		    							<p class="h1">分享&nbsp;</p>您的旅途趣事
		    							
		    						</li>
		    					</ul>
		    				</dd>
		    			</dl>
		    		</div>
		    		<div class="advertisingmap">
		    			<img src="images/ggt.jpg">
		    		</div>
		    	</div>
		    </div>
		</div>
	</body>
	<script src=".js/register.js"></script>
</html>
