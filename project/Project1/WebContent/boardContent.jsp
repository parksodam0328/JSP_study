<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<%
	String content = request.getParameter("name");
	
	BufferedReader reader =null;
	try{
		String filePath = application.getRealPath("/WEB-INF/board/"+content+".txt");
		String[] text;
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			text = str.split("/"); // 유저의 아이디와 비밀번호는 공백으로 구분\
			%>
			<center>
			
			<table>
			<div>
				<tr>
					<td width=50 height=50 align="center">제목</td>
					<td><%= content%></td>
					</tr>
				<tr>
					<td align="center">내용</td>
					<td width=350 height=400><%=text[1] %></td>
				</tr>
			</table>
			</div>
			</center>
		<%}
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다.");
	}finally{
		reader.close();
	}
%>
</body>
</html>