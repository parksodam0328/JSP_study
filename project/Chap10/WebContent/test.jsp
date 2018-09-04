<%@page import="hs.kr.mirim.TestBean"%>
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
	TestBean tt = new TestBean();
	tt.setName("홍길동");
	out.println(tt.getName());
%>
<jsp:useBean id="tt1" class="hs.kr.mirim.TestBean" scope="page"></jsp:useBean>
<jsp:setProperty name="tt1" property="name" value="Hong"/>
<jsp:getProperty name="tt1" property="name" />
</body>
</html>