<%@page import="java.util.Map"%>
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
	request.setCharacterEncoding("UTF-8");

%>

<b>request.getParameter() 메서드 사용</b>
<br>
name 파라미터 = <%= request.getParameter("name") %> <br>
address 파라미터 = <%= request.getParameter("address") %> <br>
<br>

<b>request.getParameterValues() 메서드 사용</b>
<br>
<%
	String values[] = request.getParameterValues("pet");
	
	if(values!=null) {
		for(int i=0; i<values.length; i++) {
			out.println(values[i]);
		}
	}
%>
<br>
<b>request.getParameterNames() 메서드 사용 </b>
<br>

<%
	Enumeration param = request.getParameterNames();
	while(param.hasMoreElements()) {
		String name = (String)param.nextElement();
		out.println(name);
		//String value = request.getParameter(name);
		//out.println(value);
	}
%>

<br>
<b>request.getParameterMap() 메서드 사용</b>
<br>
<%
	Map paramMap= request.getParameterMap();
	String petPram[] = (String[])paramMap.get("pet");
	for(int i=0;i<petPram.length;i++)
	out.println("pet = " + petPram[i]);
%>
<br>
<b>헤더 목록 출력</b>
<br>
<%
	Enumeration header = request.getHeaderNames();
	while(header.hasMoreElements()) {
		String key = (String)header.nextElement();
		String value = request.getHeader(key); %>
 		<font color=red><%= key %></font> = <%= value %> <br>
<%	} //while

%>































</body>
</html>