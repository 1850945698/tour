<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title>Signin</title>
<link href="${path }/static/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Sign in Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script type="text/javascript">
    var msg='${msg}';
    if(msg!=null && msg!=''){
    	alert(msg);
    }
    </script>
</head>
<body>
	<h1>旅游推荐网登陆</h1>
		<div class="app-cam">
			<div class="cam"><img src="${path }/static/images/cam.png" class="img-responsive" alt="" /></div>
			<form class="m-t" role="form" action="${path }/login" method="post">
				<input type="text" class="text" name="account" id="account" value="请输入您的账号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入您的账号';}" >
				<input type="password" value="Password" name="password" id="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				<div class="submit"><input type="submit" onclick="myFunction()" value="登陆" ></div>
				<div class="clear"></div>
				<div class="buttons">
					<ul>
						<li><a href="tourhomepage.jsp" class="hvr-sweep-to-right">微信登陆</a></li>
						<li><a href="tourhomepage.jsp" class="hvr-sweep-to-left">QQ登陆</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="new">
					<p>忘记密码?</p>
					<p class="sign">新用户?<a href="${path}/toregister"> 注册</a></p>
					<div class="clear"></div>
				</div>
			</form>
		</div>
	<!--start-copyright-->
   		<div class="copy-right">
				<p><a target="_blank" href="http://www.cssmoban.com/"></p>
		</div>
	<!--//end-copyright-->
</body>
</html>