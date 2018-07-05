<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); //post 방식일 경우 기재 -> 한글 깨짐 방지;
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	
	Date date = new Date();
	long time = date.getTime();
	String filename = title+".txt";
	String result;
	
	//out.println(filename);
	PrintWriter writer=null;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/board/"+filename);
		out.println(filePath);
		writer = new PrintWriter(filePath);
		
		writer.printf("%s/",title);
		writer.printf(content);
		writer.printf("\n");
		
		writer.flush();
		result="ok";
	}catch(Exception e){
		out.println("오류발생");
		result="fail";
	}
	
	response.sendRedirect("boardResult.jsp?result="+result+"&title="+title);
	request.setAttribute("title",title);
%>

==========================파일 저장========================
</body>
</html>