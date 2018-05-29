<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	getProtocol() : <%=request.getProtocol()%><br>
	getServerName() : <%=request.getServerName()%><br>
	getMethod() : <%=request.getMethod()%><br>
	getRequestURI() : <%=request.getRequestURI()%><br>
	getRequestURL() : <%=request.getRequestURL()%><br>
	getRemoteHost() : <%=request.getRemoteHost()%><br>
	getRemoteAddr() : <%=request.getRemoteAddr()%><br>
	getServerPort() : <%=request.getServerPort()%><br>
	getContextPath() : <%=request.getContextPath()%><br>
</body>
</html>