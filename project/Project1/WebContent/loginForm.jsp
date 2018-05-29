<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<center>
<div id="container">
	<div class="align_center">
	<center><span style="color:#ffcc00; font-size:40px;font-weight:900;">Login</span></center>
	<form method="post" action="loginProc.jsp">
	<input type="text" name="id" placeholder="id"><br>
	<input type="password" name="pw" placeholder="password"><br>
	<input type="submit" value="로그인"><br>
	<center><span style="color:#000; font-size:18px;">회원이 아니신가요? </span><a href="signUp.jsp"><span style="color:#cc6600; font-size:18px;"> 회원가입</a></span></center>
	</div>
</div>
</center>
</body>
</html>