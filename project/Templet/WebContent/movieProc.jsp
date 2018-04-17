<%@page import="java.io.File"%>
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
	String dirPath = application.getRealPath("WEB-INF/movie");
	//out.println(dirPath);
	
	File dir = new File(dirPath);
	String[] filenames = dir.list();
	
	/* for(int i=0;i<filenames.length;i++){
		out.println(filenames[i]);
		out.println("<br>");
	} */
%>
<h4>규정쌤이 추천하는 영화 Best3</h4>
<%
	for(String filename : filenames){%>
		<a href="movieReader.jsp?FILE_NAME=<%=filename%>"><%= filename %></a>
		<br>
	<%}
%>
</body>
</html>