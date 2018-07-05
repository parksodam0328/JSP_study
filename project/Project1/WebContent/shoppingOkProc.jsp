<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쇼핑</title>
</head>
<body>

<%
	String send = request.getParameter("send");
	String[] product = request.getParameterValues("product");
	String id = (String)session.getAttribute("login");
	String filename = id+".txt";
   	String filePath = application.getRealPath("/WEB-INF/shopping/"+filename);
    try {
    	File file = new File(filePath);
    	FileReader fileReader = new FileReader(file);
    	BufferedReader buffedReader = new BufferedReader(fileReader);
    	String str="";
    	String delete ="";
    	String[] userInfor={};
    	PrintWriter writer=null;
    	BufferedWriter bufferW = null;
    	while((str = buffedReader.readLine())!=null){
    		userInfor = str.split("/"); // 유저의 아이디와 비밀번호는 공백으로 구분
    		if(send.equals("삭제")){
    	    	for(int i=0;i<product.length;i++){
    	    		if(!product[i].equals(userInfor[1])){
    	    				delete = product[i];
    	    				continue;
    	    			}
    	    		}
    	    	bufferW = new BufferedWriter(new FileWriter(filePath)); // 파일 내용 계속 추가
    	    	writer = new PrintWriter(bufferW); 
	    		writer.printf("%s/",userInfor[0]);
	    		writer.printf("%s/",userInfor[1]);
	    		writer.printf("%s/",userInfor[2]);
	    		writer.printf("%s/",userInfor[3]);
	    		writer.printf("%s%n",userInfor[4]);
    	    	%>
	    		<% 
    	    	}
    		else if(send.equals("결제")){
    			for(int i=0;i<product.length;i++){
    			String total[] = userInfor[4].split("원");
    			out.print(total[i]);
    		}
    		}
    	
    }
    }catch(Exception e){
    	out.println("오류발생");
    }

%>
<meta http-equiv="refresh" content="0;url=myPage.jsp">
</body>
</html>