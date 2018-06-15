<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=application.getAttribute("age") %>
초기화 파라미터 목록<br>
<%
	Enumeration init = application.getInitParameterNames(); 
	while(init.hasMoreElements()){
		String key = (String)init.nextElement();
		String value = application.getInitParameter(key);
		out.print(key+" : "+value+"<br>");
		
	}
%>

서버 정보 : <%=application.getServerInfo() %><br>
서블릿 규약 메이저 버전 : <%=application.getMajorVersion() %><br>
서블릿 규약 마이너 버전 : <%=application.getMinorVersion() %><br>

</body>
</html>