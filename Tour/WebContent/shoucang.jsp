<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我的收藏</title>
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/collect.css" />
	</head>
	<body>
		<div class="mybody">
			<div class="header">
			    <div class="left">
				    <div class="logoimg"></div>
				    <div class="logotitle">旅游推荐</div>
				    <div class="english">Tour&nbsp; &nbsp; Recommendation</div>
			    </div>
			    <div class="right">
			    	<div class="nav" >
			    		<ul id="nav">
			    			<li>
			    				<a href="##" style="color: #1BADB6; background-repeat: no-repeat;">首页</a>
			    			</li>
			    			<li>
			    				<a href="##">目的地</a>
			    			</li>
			    			<li>
			    				<a href="##">分享</a>
			    			</li>
			    			<li>
			    				<a href="##">我的</a>
			    				<ul class="me">
			    					<li>
			    						<a href="##">我的收藏</a>
			    					</li>
			    					<li>
			    						<a href="##">我的评论</a>
			    						
			    					</li>
			    				</ul>
			    			</li>
			    		</ul>
			    	</div>
			    	<div class="dlzc">
			    		请&nbsp;<a href="##" style="text-decoration: none;">登录</a>&nbsp;或&nbsp;<a href="##" style="text-decoration: none;">注册</a>
			    	</div>
			    	<div class="inss">
			    		<div class="ssk">
			    		    <input type="text" class="sskuang" placeholder="搜目的地" name="q" id="q">
			    	    </div> 
                        <div class="ssa">
                    	    <input type="submit" class="ssbtn" id="search" value="搜索 " >
                        </div>
			    	</div>
			    </div>
			         <div class="mainnav">
			    		<ul>
			    			<li class="now"> 
			    				<img src="images/shouye.png" style="margin-top: 13px; margin-left: -21px;">
			    				<a href="##">攻略首页</a>
			    			</li>
			    			<li>
			    				<img src="images/mudidi.png" style="margin-left: -21px;">
			    			 	<a href="##"> 目的地</a>
			    			</li>
			    			<li>
			    				<img src="images/cjxc.png">
			    				<a href="##">创建行程</a>
			    			</li>
			    			<li>
			    				<img src="images/fbyj.png">
			    				<a href="##">发表游记</a>
			    			</li>
			    		</ul>
			    	</div>
			    	
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
		
		<!--面包屑-->
		    	<div class="b_crumbs">
		    		<div class="e_crumbs">
		    			<ul>
		    				<li class="item">
		    					<a href="##" class="txtlink">我的</a>
		    					<span class="e_arrow"> > </span>
		    				</li>
		    				<li class="item">
		    					<h1 title="我的收藏" class="txtlink" style="margin-top: -7px;">
		    						<strong>我的收藏</strong>
		    					</h1>
		    				</li>
		    			</ul>
		    		</div>
		    	</div>
		    	
		    	<div class="connect">
		    		<div class="scenic_spot">
		    			<div class="scenic_spot_img">
		    				<img src="images/zsl.jpg" class="thisimg" style="margin-top: 48px;">
		    			</div>
		    			<div class="scenic_spot_txt">
		    				<h2 class="scenic_spot_name" style="margin-left: 27px; margin-top: -184px;">中山路</h2>
		    				<span class="news" style="margin-left: 241px;">深夜营业	美食街</span>
		    				
		    				<br><span class="locale" style="margin-left: 241px;">中山路（东葛路口）</span>
		    			</div>
		    			<div class="scenic_spot_dele">
		    				<img src="images/dele.png">
		    				<a href="details.jsp" class="more" style="top:275px; left:493px;">了解更多</a>
		    			</div>
		    			
		    			
		    		</div>
		    		<div class="scenic_spot">
		    			<div class="scenic_spot_img">
		    				<img src="images/wxc.jpg" class="thisimg" style="margin-top: 48px;">
		    			</div>
		    			<div class="scenic_spot_txt">
		    				<h2 class="scenic_spot_name" style="margin-left: 27px; margin-top: -182px;">万象城</h2>
		    				<span class="news" style="margin-left: 207px;">购物天堂</span>
		    				
		    				<br><span class="locale" style="margin-left: 206px;">南宁市清秀区民族大道136号</span>
		    			</div>
		    			<div class="scenic_spot_dele">
		    				<img src="images/dele.png">
		    				<a href="##" class="more" style="top:278px; left: 1095px;">了解更多</a>
		    			</div>
		    			
		    			
		    		</div>
		    		<div class="scenic_spot">
		    			<div class="scenic_spot_img">
		    				<img src="images/gxmzbwg.jpg" class="thisimg" style="margin-top: 48px;">
		    			</div>
		    			<div class="scenic_spot_txt">
		    				<h2 class="scenic_spot_name" style="margin-left: 27px; margin-top: -182px;">广西民族博物馆</h2>
		    				<span class="news" style="margin-left: 196px;">世界最大的“雷纹大铜鼓”</span>
		    				
		    				<br><span class="locale" style="margin-left: 201px;">南宁市青环路11号</span>
		    			</div>
		    			<div class="scenic_spot_dele">
		    				<img src="images/dele.png">
		    				<a href="##" class="more" style="top:595px; left: 501px;">了解更多</a>
		    			</div>
		    			
		    		</div>
		    		<div class="scenic_spot">
		    			<div class="scenic_spot_img">
		    				<img src="images/nhgy.jpg" class="thisimg" style="margin-top: 48px;">
		    			</div>
		    			<div class="scenic_spot_txt">
		    				<h2 class="scenic_spot_name" style="margin-left: 27px; margin-top: -184px;">南湖公园</h2>
		    				<span class="news" style="margin-left: 196px;">休闲胜地,观夜景的好处</span>
		    				
		    				<br><span class="locale" style="margin-left: 200px;">南宁市青环路11号</span>
		    			</div>
		    			<div class="scenic_spot_dele">
		    				<img src="images/dele.png">
		    				<a href="##" class="more" style="top:601px; left: 1095px;">了解更多</a>
		    			</div>
		    		</div>
		    		<div class="scenic_spot">
		    			<div class="scenic_spot_img">
		    				<img src="images/lj.jpg" class="thisimg" style="margin-top: 48px;">
		    			</div>
		    			<div class="scenic_spot_txt">
		    				<h2 class="scenic_spot_name" style="margin-left: 27px; margin-top: -184px;">漓江</h2>
		    				<span class="news" style="margin-left: 196px;">乘船尽赏桂林山水的精华</span>
		    				
		    				<br><span class="locale" style="margin-left: 200px;">桂林市灵川县</span>
		    			</div>
		    			<div class="scenic_spot_dele">
		    				<img src="images/dele.png">
		    				<a href="##" class="more" style="top:924px; left: 502px;">了解更多</a>
		    			</div>
		    		</div>
		    		<div class="scenic_spot">
		    			<div class="scenic_spot_img">
		    				<img src="images/wzd.jpg" class="thisimg" style="margin-top: 48px;">
		    			</div>
		    			<div class="scenic_spot_txt">
		    				<h2 class="scenic_spot_name" style="margin-left: 27px; margin-top: -184px;">涠洲岛</h2>
		    				<span class="news" style="margin-left: 196px;">畅享海岛时光</span>
		    				
		    				<br><span class="locale" style="margin-left: 200px;">银滩旅游区18号</span>
		    			</div>
		    			<div class="scenic_spot_dele">
		    				<img src="images/dele.png">
		    				<a href="##" class="more" style="top:924px; left: 1095px;">了解更多</a>
		    			</div>
		    		</div>
		    	</div>
		</div>
	</body>
	<script type="text/javascript" src="js/collect.js"></script>
</html>