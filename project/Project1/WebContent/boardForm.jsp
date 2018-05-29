<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<center>

<div id="container">
	<div class="align_center">
	<form action="boardProc.jsp" method="post">
	<center><span style="color:#ffcc00; font-size:40px;font-weight:900;">게시판</span></center>
	<input type="text" name="title" placeholder="제목"><br>
	<textarea rows="15" cols="56" name="content" placeholder=" 내용을 입력하세요"></textarea><br><br>
	<input type="submit" value="저장">
	</form>
	</div>
</div>
</center>
</body>
</html>