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
request.setCharacterEncoding("UTF-8");
	String name = "조이";
	String pageName = "include_04.jsp";
	
%>

현제 페이지는 include_03.jsp 입니다. <br>
포함되는 페이지에 파라미터 값을 전달합니다.<br>
<hr>

<jsp:include page="<%=pageName %>">
	<jsp:param name="name" value="<%=name %>"/>
	<jsp:param name="pageName" value="<%=pageName %>"/>
</jsp:include>

<hr>

include_03.jsp 하단입니다.

</body>
</html>