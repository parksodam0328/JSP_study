<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내정보</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("login");
%>
<div align="right" style="margin:20px 50px 20px 0px;">
<a href="logout.jsp"><span>[<%=id %>] 로그아웃</span></a>
</div>
<hr>
<center>
<div>
<center><span style="color:#ffcc00; font-size:40px;font-weight:900;">장바구니</span></center>
<%
	try{
		String filename = id+".txt";
		String filePath = application.getRealPath("/WEB-INF/shopping/"+filename);
		File theFile = new File(filePath);
		FileReader theFileReader = new FileReader(theFile); //파일 읽기
		BufferedReader theBufferedReader = new BufferedReader(theFileReader);
		String[] shopping={};
		String infor=""; // 파일의 내용 한 줄씩 읽어오기 위한 변수 선언
		%>
		<form action="shoppingOkProc.jsp">
		<table cellpadding=5>
		<tr>
		<%
		while((infor = theBufferedReader.readLine())!=null){
			shopping = infor.split("/"); // 장바구니에 있는 정보를 /를 기준으로 구분%>
			<td width=100><input type="checkbox" name="product" value="<%=shopping[1]%>"></td>
			<td width=100><%=shopping[0]%></td>
		  	<td width=300><img width=250 height=250 src="images/<%=shopping[1]%>.png"></td>
			<td width=300><%=shopping[2]%></td>
			<td width=100><%=shopping[3]%></td>
			<td width=100><%=shopping[4]%></td>
			</tr>
		
		<%
		}%>
		</table>
		<br><br>
		<input type="submit" name="send" value="삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="send" value="결졔"><br><br>
		</form>
		<%
	}catch(Exception e){
		out.print(e.toString());
	}

%>
</div>
</center>
</body>
</html>