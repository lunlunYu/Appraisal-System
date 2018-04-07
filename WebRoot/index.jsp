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
	
	<script type="text/javascript" src="./JS/check.js"></script>

	<!-- display -->
	<link rel="stylesheet" href="./CSS/Login/display-style.css" type="text/css" /> 
	
	<script type="text/javascript" src="./JS/jquery.min.js"></script>
	<script type="text/javascript" src="./JS/coinslider.min.js"></script> 
	<!-- display -->
	
	<!-- background -->
	<link rel="stylesheet" href="./CSS/Login/background-style.css" type="text/css" />
	
	<script type="text/javascript" src="./JS/jquery.mkinfinite.js"></script>
	<!-- background -->
	
	<script type="text/javascript">
	
		$(document).ready(function(){

			/*display*/
			$("#games").coinslider({
				hoverPause: false /*选择器id引入插件coinslider（悬停暂停：否）*/
			});
			
			/*background*/
			$("body").mkinfinite({
				maxZoom:       1.4,
				animationTime: 4000,
				//imagesRatio:   (960 / 720),
				imagesRatio:   (1080 / 1920),
				isFixedBG:     true,
				zoomIn:        true,
				imagesList:    new Array(
					'IMAGES/bg1.jpg',
					'IMAGES/bg2.jpg',
					'IMAGES/bg3.jpg',
					'IMAGES/bg4.jpg'
				)
			});

		});
		
	</script>
	

</head>
  
<body class="htmleaf-header">


<!-- <header class="htmleaf-header"> -->
	<div class="header">
		计算机科学与工程学院教师考核系统
	</div>

	<div class="block">
		<div class="display">
			<div id="games"> 
				<a href="" target="_blank">
					<img src="./IMAGES/CSE.jpg" alt="Mini Ninjas" /> 
					<span> <b>计算机科学与工程学院</b><br /> SCHOOL OF COMPUTER SCIENCE AND ENGINEERING</span> 
				</a> 				
				<a href="" target="_blank"> 
					<img src="./IMAGES/dog.jpg" alt="Star Wars: The Old Republic" /> 
					<span> <b>Play with Snow</b><br /> dogdogdogdogdog...</span> 
				</a>
			</div> 
		</div>
		
		<div class="login_block">
			<form action="check.jsp" method="post" class="login_form">
			类型:<select class="pulldown" name="usertype"> 
			<option value="0">教职工</option> 
			<option value="1">审核员</option>
			<option value="2">管理员</option> 		
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
<!-- </header> -->

</body>
</html>
