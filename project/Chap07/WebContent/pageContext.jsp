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
	ServletRequest request1 = pageContext.getRequest();
	ServletResponse response1 = pageContext.getResponse();
	JspWriter out1 = pageContext.getOut();
	HttpSession session1 = pageContext.getSession();
	
%>

<%= application.getAttribute("age") %>

</body>
</html>