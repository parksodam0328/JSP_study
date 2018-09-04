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

<%
	String names[] = {"프로토콜 이름", "서버 이름", "Method 방식", "컨텍스트 경로", "URI", "접속한 클라이언트의 IP"};
    String values[] = {request.getProtocol(),  request.getServerName(), request.getMethod(),   request.getContextPath(), request.getRequestURI(),   request.getRemoteAddr()};

   	Enumeration<String> en = request.getHeaderNames();
   	String headerName = "";
   	String headerValue = "";
%>

<h2>웹 브라우저와 웹 서버 정보 표시</h2>

<%
	for(int i=0; i<names.length; i++) {
		out.println(names[i] + " : " + values[i] + "<br>");
	}

%>

<h2>헤더의 정보 표시</h2>
<%
	while(en.hasMoreElements()) {
		headerName = en.nextElement();
		headerValue = request.getHeader(headerName);
		out.println("<font color=red><b>" + headerName + "</font></b> : " + headerValue + "<br>");
	}


%>






























</body>
</html>