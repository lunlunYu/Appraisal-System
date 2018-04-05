<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML> 

<html>
<head>
    <base href="<%=basePath%>">
    
    <title>计算机科学与工程学院教师考核系统</title>
	
	
	<link rel="stylesheet" href="./CSS/Login/login.css" type="text/css"/>
	<link rel="stylesheet" href="./CSS/Login/background-style.css" type="text/css" />
	
	<script type="text/javascript" src="./JS/check.js"></script>
	
	<link rel="stylesheet" href="./CSS/Login/display-style.css" type="text/css" /> 

	<script type="text/javascript" src="./JS/jquery.min.js"></script>
	<script type="text/javascript" src="./JS/coinslider.min.js"></script> 
	
	
	<script type="text/javascript">
	
		$(document).ready(function(){
			$("#games").coinslider({
				hoverPause: false /*选择器id引入插件coinslider（悬停暂停：否）*/
			});
		});
		
	</script>
	
	<style>
	.display{
	float:left;
	margin-top:20px;
	margin-left:50px;
	height:322px;
	font:12px/180% Arial, Helvetica, sans-serif, "新宋体";
	color:#63665F;
	}
	.abc{
	margin:100px 0px 100px 0px;
	height:344px;
	background-color:rgba(149,154,143,0.7);
	}
	</style>
	
</head>
  
<body>

<header class="htmleaf-header">
	<div class="header">
		计算机科学与工程学院教师考核系统
	</div>
	<div class="abc">
	<div class="display">
		<div id="games"> 
			<a href="" target="_blank">
				<img src="./IMAGES/mini_ninjas.jpg" alt="Mini Ninjas" /> 
				<span> <b>第一张</b><br /> 这是说明这是说明这是说明这是说明这是说明这是说明这是说明这是说明这是说明</span> 
			</a> 				
			<a href="" target="_blank"> 
				<img src="./IMAGES/star_wars_the_old_republic.jpg" alt="Star Wars: The Old Republic" /> 
				<span> <b>标题</b><br /> 这是说明这是说明这是说明这是说明这是说明这是说明这是说明这是说明这是说明</span> 
			</a>
		</div> 
	</div>
	
	<div class="login_block">
		<form action="check.jsp" method="post" class="login_form">
		类型:<select class="pulldown" name="usertype"> 
		<option value="0">科研型</option> 
		<option value="1">教学型</option> 
		<option value="2">审核员</option>
		<option value="1">管理员</option> 		
		</select> <br/>
		用户:<input type="text" name="username" class="input_username"><br/>
		密码:<input type="password" name="password" class="input_password"><br/>
		验证码:<input type="text" name="checkcode" class="inpue_checkcode">
		<span class="add phoKey" id="ss" onclick="create_code()"></span>
		<input id="test" type="hidden" name="test"><br/> 
		<input class="login_button" type="submit" value="登录">
		<a href="#" class="forgoten_link" href="">忘记密码</a>
		</form> 
	</div>
	</div>
</header>
	<!-- background -->
	<!-- <script type="text/javascript" src="./JS/jquery-2.1.1.min.js"></script> -->
	<script type="text/javascript" src="./JS/jquery.mkinfinite.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("header").mkinfinite({
				maxZoom:       1.4,
				animationTime: 4000,
				imagesRatio:   (960 / 720),
				isFixedBG:     true,
				zoomIn:        true,
				imagesList:    new Array(
					'IMAGES/1.jpg',
					'IMAGES/fbhXHkX.jpg',
					'IMAGES/4qAcQij.jpg',
					'IMAGES/VALX13b.jpg',
					'IMAGES/POCVm4y.jpg',
					'IMAGES/ixm5rIY.jpg'
				)
			});
			
		});
	</script>
	<!-- background -->
</body>
</html>
