<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/custorm.css">
<title>Popsong</title>
</head>
<body>
<center>
	<div width="350px" style="border:1px solid #ccc; margin:15% 35% 0 35%;">
	<form method="post" action="joinAction.jsp">
	<table style="width:350px;background:#fff;">
		<tr>
			<td style="padding:20px 0 8px 0;" height="60px" align="center"><span id="song" style="font-weight:700;font-size:30px;"><a href="index.jsp">Popsong</a></span></td>
		</tr>
		<tr>
			<td align="center" height="25px"><input type="text" placeholder="아이디" name="userID" maxlength="20"></td>
		</tr>
		<tr>
			<td align="center" height="25px"><input type="password" placeholder="비밀번호" name="userPassword" maxlength="20"></td>		
		</tr>
		<tr>
			<td align="center" height="25px"><input type="text" placeholder="이름" name="userName" maxlength="20"></td>		
		</tr>
		<tr>
			<td align="center" height="25px"><input type="text" placeholder="이메일" name="userEmail" maxlength="20"></td>		
		</tr>
		<tr>
			<td align="center" style="padding:10px 0 30px 0px;" height="40px"><input type="submit" value="가입"></td>
		</tr>
	</table>
	</form>
	</div>
	<div style="border:1px solid #ccc;margin:10px 35% 20% 35%;">
		<table>
		<tr>
			<td height="60px">계정이 있으신가요? <span id="word" style="color:#FA58AC;"><a href="login.jsp">로그인</a></span></td>
		</tr>
	</table>
	</div>
	</center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script> 
</body>
</html>