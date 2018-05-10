<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>

<%
	request.setCharacterEncoding("utf-8"); //post 방식일 경우 습관적으로 utf-8 기입
	String num = request.getParameter("num");
	int number = Integer.parseInt(num);
	if(number<=10){ %>
	
		입력받은 숫자는 <%= number %>
	<%}
	%>
</body>
</html>