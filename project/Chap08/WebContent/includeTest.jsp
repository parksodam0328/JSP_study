<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

현재 페이지는 includeTest.jsp 입니다.<br>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");

%>

포함되는 페이지 includeTest.jsp 입니다.<br>
<b><%=name %></b> 님의 방문을 환영합니다.

</body>
</html>