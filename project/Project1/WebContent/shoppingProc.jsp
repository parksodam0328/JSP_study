<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쇼핑</title>
</head>
<body>
<%
	String result="";
	try{
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String product_name = request.getParameter("product_name");
		String count_price = request.getParameter("number");
		String id = (String)session.getAttribute("login");

		
		PrintWriter writer=null;
		BufferedWriter bufferW = null;
		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String dateStr = dateFormat.format(date);
		
		String filename = id+".txt";
		String filePath = application.getRealPath("/WEB-INF/shopping/"+filename);
		File theFile = new File(filePath);
		
		bufferW = new BufferedWriter(new FileWriter(filePath,true)); // 파일 내용 계속 추가
		writer = new PrintWriter(bufferW,true); 
		
		writer.printf("%s/",dateStr);
		writer.printf("%s/",name);
		writer.printf("%s/",product_name);
		writer.printf("%s/",price);
		writer.printf("%s%n",count_price);

		result="ok";
		}catch(Exception e){
			out.println("오류발생");
			result="fail";
		}
		response.sendRedirect("main.jsp?result="+result);//get방식으로 보냄
    
%>
<meta http-equiv="refresh" content="0;url=main.jsp">
</body>
</html>