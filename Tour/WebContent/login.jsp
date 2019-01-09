 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
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
</head>
<body>
	<h1>旅游推荐推荐系统</h1>
		<div class="app-cam">
			<div class="cam"><img src="images/cam.png" class="img-responsive" alt="" /></div>
			<form action="${path }/register" method="post">
				<input type="text" class="text" value="E-mail address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';}" >
				<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				<div class="submit"><input type="submit" onclick="myFunction()" value="登录" ></div>
				<div class="clear"></div>
				<div class="buttons">
					<ul>
						<li><a href="home.jsp" class="hvr-sweep-to-right">微信登录</a></li>
						<li><a href="home.jsp" class="hvr-sweep-to-left">QQ登录</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="new">
					<p><a href="#">忘记密码 ？</a></p>
					<p class="sign">新用户？<a href="register.jsp"> 注册</a></p>
					<div class="clear"></div>
				</div>
			</form>
		</div>
	
</body>
</html>