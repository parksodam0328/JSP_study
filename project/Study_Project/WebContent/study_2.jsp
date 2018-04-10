<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	session="true"
	buffer="8kb"
	autoFlush="true"
	isThreadSafe="true"
	info="2018년 04월 10일"    
	errorPage="choi.jsp"
%>
<%-- Import java.lang.*
	 Import javax.sevlet.*
	 Import javax.sevlet.jsp.*
	 Import java.sevlet.http.* 	 
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>페이지 지시어(@) & 에러페이지</title>
</head>
<body>
<b>페이지 지시어(@)는 JSP 문서의 앞에서 꼭 필요한 것만 기술한다.</b><br>
<%
	Calendar date = Calendar.getInstance();
	int year = date.get(Calendar.YEAR);
	int month = date.get(Calendar.MONTH)+1;
	int day = date.get(Calendar.DATE);
	out.println("오늘은 "+year+"년 "+month+"월 "+day+"일 입니다.");
%>
<br>

<%
	getServletInfo();
%>




</body>
</html>