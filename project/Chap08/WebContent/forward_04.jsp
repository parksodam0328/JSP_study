<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = "MOMO";
	String hobby = "오버워치";
%>
현재 페이지는 forward_04.jsp 입니다.

<jsp:forward page="forward_05.jsp">
	<jsp:param name="id" value="<%=id %>"/>
	<jsp:param name="hobby" value="<%=hobby %>"/>
</jsp:forward>

</body>
</html>