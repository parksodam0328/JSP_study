<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>
<body>
<div>
<%
	String title = request.getParameter("title");
	out.print(title);
	try{
		String filename = title+".txt";
		String filePath = application.getRealPath("/WEB-INF/board/"+filename);
		File theFile = new File(filePath);
		FileReader theFileReader = new FileReader(theFile); //파일 읽기
		BufferedReader theBufferedReader = new BufferedReader(theFileReader);
		String[] board={};
		String infor=""; // 파일의 내용 한 줄씩 읽어오기 위한 변수 선언
		%>
		<form action="boardDeleteProc.jsp">
		<table cellpadding=5>
		<tr>
		<%
		while((infor = theBufferedReader.readLine())!=null){
			board = infor.split("/"); // 장바구니에 있는 정보를 /를 기준으로 구분%>
			<td width=100><input type="checkbox" name="product" value="<%=board[0]%>"></td>
			<td width=100><%=board[0]%></td>
			</tr>
		
		<%
		}%>
		</table>
		<br><br>
		<input type="submit" name="send" value="삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="send" value="글쓰기" onclick="window.open('boardForm.jsp?','asdfo8or','scrollbars=yes,width=700,height=800,top=300,left=500');">
		
		<%
	}catch(Exception e){%>
		<center><br><br><br><br>게시글을 없습니다<br><br><br><br>
		<input type="submit" name="send" value="삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="send" value="글쓰기" onclick="window.open('boardForm.jsp?','asdfo8or','scrollbars=yes,width=500,height=500,top=300,left=500');">
		</center>
		</form>
	<%}

%>
</body>
</html>