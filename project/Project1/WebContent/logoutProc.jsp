<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<div id="container">
	<div class="align_center">
	<%
	String id = (String)session.getAttribute("login");
	%>
	<center><span style="color:#ffcc00; font-size:40px;font-weight:900;">[<%= id %>] 님 로그아웃 되었습니다.</span></center>
	</div>
	</div>
</center>
<%
	session.invalidate(); // 세션 삭제
	response.sendRedirect("main.jsp");
%>
</body>
</html>