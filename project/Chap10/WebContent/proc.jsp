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
	request.setCharacterEncoding("utf-8");
	/* String name = request.getParameter("name");
	
	TestBean test = new TestBean();
	test.setName(name);
	out.println(test.getName()); */
%>
<jsp:useBean id="test" class="hs.kr.mirim.TestBean"/>
<jsp:setProperty name="test" property="name"/>
<h2>자바빈을 사용하는 JSP 페이지</h2>
입력된 이름은 <jsp:getProperty name="test" property="name" />
</body>
</html>