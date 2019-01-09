<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>title</title>
	</head>
	<link rel="stylesheet" type="text/css" href="${path }/static/css/common.css" />
		<link rel="stylesheet" type="text/css" href="${path }/static/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="${path }/static/css/home.css" />
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
			    				<a href="${path}/showCart">我的收藏</a>
			    				<ul class="me">
			    					
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
                    	    <input type="submit" class="ssbtn" id="search" value=" " >
                        </div>
			    	</div>
			    </div>
			        <div class="mainnav">
			    		<ul>
			    			<li class="now"> 
			    				<img src="${path }/static/images/shouye.png" style="margin-top: 13px; margin-left: -21px;">
			    				<a href="##">攻略首页</a>
			    			</li>
			    			<li>
			    				<img src="${path }/static/images/mudidi.png" style="margin-left: -21px;">
			    			 	<a href="##"> 目的地</a>
			    			</li>
			    			<li>
			    				<img src="${path }/static/images/cjxc.png">
			    				<a href="##">创建行程</a>
			    			</li>
			    			<li>
			    				<img src="${path }/static/images/fbyj.png">
			    				<a href="##">发表游记</a>
			    			</li>
			    		</ul>
			    	</div>
			    	
		    </div>
		    <div class="content">
		    	<!--轮播-->
			<div class="scroll">
			
		        <div class="container" id="container">
			        <div>
			        	<div class="lbimg">
			        		<img src="${path }/static/images/lunbo1 .jpg" >
			        	</div>
			        	<div class="title">
			        		    <span class="span1">大理<span>
			        			<span class="span2">一生值得去的目的地之一</span>
			        	</div>
			        	
			        	
			        </div>
			        <div >
			        	<div class="lbimg">
			        	    <img src="${path }/static/images/lunbo2.jpg" />
			        	</div>
			        	<div class="title">
			        	    <span class="span1">伊斯坦布尔<span>
			        		<span class="span2">世界是本书，从这里读起</span>　
			        	</div>
			        </div>
			        <div >
			        	<div class="lbimg">
			        	    <img src="${path }/static/images/lunbo3.jpg">
			        	</div>
			        	<div class="title">
			        	    <span class="span1">南宁<span>
			        	    <span class="span2">超值特惠门票任性玩</span>
			        	</div>
			        </div>
			        <div>
			        	<div class="lbimg">
			        	    <img src="${path }/static/images/lunbo4.jpg">
			        	</div>
			        	<div class="title">
			        	    <span class="span1">福冈</span>
			        	    <span class="span2">感受宜居都市的惬意</span>
			        	</div>
			        </div>
		        </div>
		        
	        </div>
	  <!--轮播结束-->
	        <div class="mddtj">
	        
	        	<div class="wrap">
	        	
	        		<div class="title">
	     
	        			<h2>目的地推荐</h2>
	        			<ul class="rt" id="tabtitle">
	        				<li class="title_item lf current">
	        					<span class="title_tab" title="0">小众岛屿 &nbsp;&nbsp;&nbsp;&nbsp;</span>
	        					<span class="tit_vline">|</span>
	        				</li>
	        				<li class="title_item lf">
	        					<span class="title_tab" title="1">&nbsp;&nbsp;&nbsp;&nbsp;网红拍照景点 &nbsp;&nbsp;&nbsp;&nbsp;</span>
	        					<span class="tit_vline">|</span>
	        				</li>
	        				<li class="title_item lf">
	        					<span class="title_tab" title="2">&nbsp;&nbsp;&nbsp;&nbsp;最佳婚礼圣地 &nbsp;&nbsp;&nbsp;&nbsp;</span>
	        					<span class="tit_vline">|</span>
	        				</li>
	        				<li class="title_item lf">
	        					<span class="title_tab" title="3">&nbsp;&nbsp;&nbsp;&nbsp;与雪山共舞</span>
	        				</li>
	        			</ul>
	        			
	        		</div>
	        		<div class="tablist" style="display: block;">
	        			<ul class="king lf">
	        				<li class="list_bg" style="position: absolute; top: 42px; left: -20px;">
	        					<a href="##" class="city_name">
	        					    <span class="name">沉船湾</span>
	        					    <img src="${path }/static/images/chengchuanwan.jpg" width="486px" height="376px" style="display: inline;" />
	        					    <a href="cart?tourinformationId=1">景点收藏</a>
	        				    </a>
	        				    <p class="detail">宋慧乔，宋钟基的相恋地</p>
	        				    
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 485px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">岛屿湾</span>
	        						<img src="${path }/static/images/daoyuwan.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=2">景点收藏</a>
	        					</a>
	        					<p class="detail">来新西兰与鲸鱼海豚互动嬉戏</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 485px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">苏梅岛</span>
	        						<img src="${path }/static/images/shumeidao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=3">景点收藏</a>
	        					</a>
	        					<p class="detail">水天一色的”椰林海岛“</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 728px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">西岛</span>
	        						<img src="${path }/static/images/xidao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=4">景点收藏</a>
	        					</a>
	        					<p class="detail">久负盛名的三亚潜水圣地</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 728px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">龙目岛</span>
	        						<img src="${path }/static/images/longriddao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=5">景点收藏</a>
	        					</a>
	        					<p class="detail">拥有不输于巴厘岛的魅力</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 971px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">小纳努亚岛</span>
	        						<img src="${path }/static/images/xnnydao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=6">景点收藏</a>
	        					</a>
	        					<p class="detail">斐济得天独厚的蓝色珊瑚礁沙滩</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 971px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">汉密尔顿岛</span>
	        						<img src="${path }/static/images/hmeddao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=7">景点收藏</a>
	        					</a>
	        					<p class="detail">澳大利亚全球十大沙滩之一</p>
	        				</li>
	        			</ul>
	        			
	        		</div>
	        		<div class="tablist" style="display: none;">
	        			<ul class="king lf">
	        				<li class="list_bg" style="position: absolute; top: 42px; left: -20px;">
	        					<a href="##" class="city_name">
	        					    <span class="name">乌鲁瓦图断崖</span>
	        					    <img src="${path }/static/images/wlwtdc.jpg" width="486px" height="376px" style="display: inline;" />
	        					    <a href="cart?tourinformationId=8">景点收藏</a>
	        				    </a>
	        				    <p class="detail">冲浪爱好者的冒险点</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 485px; top: 42px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">巴特罗之家</span>
	        						<img src="${path }/static/images/btlzj.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=9">景点收藏</a>
	        					</a>
	        					<p class="detail">高迪式的大自然魔幻色彩</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 485px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">小印度</span>
	        						<img src="${path }/static/images/xyd.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=10">景点收藏</a>
	        					</a>
	        					<p class="detail">金碧辉煌的世界</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 728px; top: 41px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">彩虹邨</span>
	        						<img src="${path }/static/images/caihondun.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=11">景点收藏</a>
	        					</a>
	        					<p class="detail">美丽的彩虹色建筑与活泼的操场</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 728px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">伏见稻荷大社</span>
	        						<img src="${path }/static/images/fjdhds.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=12">景点收藏</a>
	        					</a>
	        					<p class="detail">一座座朱红色的鸟居</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 971px; top: 41px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 40px;">华新圣托里尼公园</span>
	        						<img src="${path }/static/images/hxstlngy.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=13">景点收藏</a>
	        					</a>
	        					<p class="detail">蓝白的色调的泰国“小希腊”</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 971px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">澳门渔人码头</span>
	        						<img src="${path }/static/images/amyrmt.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=14">景点收藏</a>
	        					</a>
	        					<p class="detail">在澳门假装住在罗马</p>
	        				</li>
	        			</ul>
	        			
	        		</div>
	        		<div class="tablist" style="display: none;">
	        			<ul class="king lf">
	        				<li class="list_bg" style="position: absolute; top: 42px; left: -20px;">
	        					<a href="##" class="city_name">
	        					    <span class="name">大溪地</span>
	        					    <img src="${path }/static/images/daxidi.jpg" width="486px" height="376px" style="display: inline;" />
	        					    <a href="cart?tourinformationId=15">景点收藏</a>
	        				    </a>
	        				    <p class="detail">七彩海水迷人，热带风光美好</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 485px; top: 42px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">巴厘岛</span>
	        						<img src="${path }/static/images/balidao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=16">景点收藏</a>
	        					</a>
	        					<p class="detail">领略巴厘岛的风情万种</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 485px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">约克</span>
	        						<img src="${path }/static/images/yeke.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=17">景点收藏</a>
	        					</a>
	        					<p class="detail">浓厚的中世纪色彩</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 728px; top: 41px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">维也纳</span>
	        						<img src="${path }/static/images/weiyena.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=18">景点收藏</a>
	        					</a>
	        					<p class="detail">流动不止的音乐，惊艳的不止建筑</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 728px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">普吉岛</span>
	        						<img src="${path }/static/images/pujidao.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=19">景点收藏</a>
	        					</a>
	        					<p class="detail">印度洋安达曼海上的一颗“明珠”</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 971px; top: 41px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">皇后镇</span>
	        						<img src="${path }/static/images/huanghouzhneg.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=20">景点收藏</a>
	        					</a>
	        					<p class="detail">宛如少女在湖光山色里亭亭玉立</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 971px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">毛里求斯</span>
	        						<img src="${path }/static/images/mlqs.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=21">景点收藏</a>
	        					</a>
	        					<p class="detail">印度洋上的“伊甸园”</p>
	        				</li>
	        			</ul>
	        			
	        		</div>
	        		<div class="tablist" style="display: none;">
	        			<ul class="king lf">
	        				<li class="list_bg" style="position: absolute; top: 42px; left: -20px;">
	        					<a href="##" class="city_name">
	        					    <span class="name">日本的最高峰</span>
	        					    <img src="${path }/static/images/rbzgf.jpg" width="486px" height="376px" style="display: inline;" />
	        					    <a href="cart?tourinformationId=22">景点收藏</a>
	        				    </a>
	        				    <p class="detail">玉扇倒悬东海天。富士白雪映朝阳</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 485px; top: 42px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 56px;">神奇的黑白雪山</span>
	        						<img src="${path }/static/images/sqdhbxs.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=23">景点收藏</a>
	        					</a>
	        					<p class="detail">宛如“巨龙”腾跃飞舞</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 485px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 45px;">黄河源头最大的山</span>
	        						<img src="${path }/static/images/hhytzdds.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=24">景点收藏</a>
	        					</a>
	        					<p class="detail">活佛座前的最高侍者</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 728px; top: 41px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">蜀山之王</span>
	        						<img src="${path }/static/images/sszw.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=25">景点收藏</a>
	        					</a>
	        					<p class="detail">东方的阿尔卑斯</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 728px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">西藏众山之父</span>
	        						<img src="${path }/static/images/xzzszf.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=26">景点收藏</a>
	        					</a>
	        					<p class="detail">耸立陡峻，奇峰险仞</p>
	        				</li>
	        			</ul>
	        			<ul class="kind lf">
	        				<li class="list_small" style="position: absolute; left: 971px; top: 41px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 56px;">欧洲中心的山脉</span>
	        						<img src="${path }/static/images/azzxdsm.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=27">景点收藏</a>
	        					</a>
	        					<p class="detail">高山冰雪，天地苍茫</p>
	        				</li>
	        				<li class="list_small" style="position: absolute; left: 971px; top: 260px;">
	        					<a href="##" class="city_name">
	        						<span class="name" style="left: 86px;">雪国乐园</span>
	        						<img src="${path }/static/images/xgly.jpg" width="224px"; height="160px"; style="display: inline;">
	        						<a href="cart?tourinformationId=28">景点收藏</a>
	        					</a>
	        					<p class="detail">体验在悬崖峭壁上行走的乐趣</p>
	        				</li>
	        			</ul>
	        			
	        		</div>
	        		
	        	</div>
	        	
	        </div>
	        
	        <div class="around">
	        	<div class="wrap">
	        		<div class="title">
	        			<h2 class="lf">周边游</h2>
	        			<div class="select lf" >
	        				<ul class="opt" style="display: none;" id="opt" >
	        					<li class="opt_item">
	        						<a href="##" class="current" title="0">南宁</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="1">桂林</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="2">北海</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="3">防城港</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="4">钦州</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="5">柳州</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="6">来宾</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="7">贵港</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="8">崇左</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="9">百色</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="10">河池</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="11">贺州</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="12">梧州</a>
	        					</li>
	        					<li class="opt_item">
	        						<a href="##" class="current" title="13">玉林</a>
	        					</li>
	        				</ul>
	        				<div class="tab">
	        					<input type="text" class="inp" value="南宁" />
	        					<div class="arrow">
	        						<span class="down"></span>
	        					</div>
	        				</div>
	        				
	        			</div> 
	        		</div>
	        		<div class="content2" style="display: block;">
	        			<ul class="list">
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">青秀山</span>
	        						<img src="${path }/static/images/qxs.jpg" width="224px"; height="170px">
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">中山路</span>
	        						<img src="${path }/static/images/zsl.jpg" width="224px"; height="170px">
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">广西民族博物馆</span>
	        						<img src="${path }/static/images/gxmzbwg.jpg" width="224px"; height="170px">
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">南湖公园</span>
	        						<img src="${path }/static/images/nhgy.jpg" width="224px"; height="170px">
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">万象城</span>
	        						<img src="${path }/static/images/wxc.jpg" width="224px"; height="170px">
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					</a>
	        				</li>
	        			</ul>
	        		</div>
	        		<div class="content2" style="display: none;">
	        			<ul class="list">
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">漓江</span>
	        						<img src="${path }/static/images/lj.jpg" width="224px"; height="170px">
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">两江四湖</span>
	        						<img src="${path }/static/images/ljsh.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        						<span class="name">象山景区</span>
	        						<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        					
	        						<img src="${path }/static/images/xsjq.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        				
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">遇龙河</span>
	        						<img src="${path }/static/images/ylh.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">西街</span>
	        						<img src="${path }/static/images/xj.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        			</ul>
	        		</div>
	        		<div class="content2" style="display: none;">
	        			<ul class="list">
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">北海老街</span>
	        						<img src="${path }/static/images/bhlj.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">银滩</span>
	        						<img src="../img/pic/bhyt.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">涠洲岛</span>
	        						<img src="${path }/static/images/wzd.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">北海公园</span>
	        						<img src="${path }/static/images/bhgy.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        				<li class="around_item">
	        					<a href="##" class="city_name">
	        					<a href="cart?tourinformationId=${t.id}">景点收藏</a>
	        						<span class="name">天主教堂</span>
	        						<img src="${path }/static/images/tzjt.jpg" width="224px"; height="170px">
	        						
	        					</a>
	        				</li>
	        			</ul>
	        		</div>
	        		
	        	</div>
	        </div>
	  
		    </div>
		    <div id="gotoTop" style="display: none;">
	    	    <img src="${path }/static/images/up.png" style="width: 40px; height: 40px;">
	    	    
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
		</div>
	</body>
<script src="${path }/static/js/home.js"></script>

</html>