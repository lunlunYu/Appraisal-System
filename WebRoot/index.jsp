<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>计算机科学与工程学院教师考核系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="login.css" type="text/css"/>
	<script type="text/javascript" src="jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="check.js"></script>
  </head>
  
<body>
	<div class="header">
		计算机科学与工程学院教师考核系统
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

</body>
</html>
