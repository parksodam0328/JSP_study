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
<link rel="stylesheet" href="main.css">
</head>
<body>
<%
	String id = (String)session.getAttribute("login");
	if(id==null){
%>
<header>
<a href="main.jsp"><span class="boardMenu">HOME</span></a>
<a href="bestseller.jsp"><span class="boardMenu">BEST SELLER</span></a>
<a href="product.jsp"><span class="boardMenu">NEW PRODUCTS</span></a>
<a href="event.jsp"><span class="boardMenu">EVENT</span></a>
<a href="signUp.jsp"><span class="boardMenu">회원가입</span></a>
</header>
<%}else{%>
<header>
<a href="main.jsp"><span class="boardMenu">HOME</span></a>
<a href="bestseller.jsp"><span class="boardMenu">BEST SELLER</span></a>
<a href="product.jsp"><span class="boardMenu">NEW PRODUCTS</span></a>
<a href="event.jsp"><span class="boardMenu">EVENT</span></a>
<a href="board.jsp"><span class="boardMenu">게시판</span></a>
<a href="myPage.jsp"><span class="boardMenu">[<%=id %>]님</span></a>
</header>
<%} %>
<%
	try{
		String filePath = application.getRealPath("/WEB-INF/board/");
		File theDir = new File(filePath);
		File[] filelist = theDir.listFiles();
		String filename;
		%>
		<form action="boardDeleteProc.jsp">
		<center>
		<br><br>
		<table cellpadding=5>
		<tr>
		<%
		
		for(File tempFile : filelist) {
			  if(tempFile.isFile()) {
			  int index = tempFile.getName().indexOf("."); 
			  filename = tempFile.getName().substring(0, index);%>
			    <td style="border-bottom:1px solid #dcdac2;padding:0px 0px 0px 5px;" align=left width=30 height=50><input type="checkbox" name="board" value="<%=filename%>"></td>
			    
				<td onclick="window.open('boardContent.jsp?name=<%=filename %>','asdfo8or','scrollbars=yes,width=500,height=500,top=300,left=500');" style="border-bottom:1px solid #dcdac2;" width=800 height=50><span style="font-size:15px;"><%=filename%></span></td></tr><%
			  }
			}
		%>
		</table>
		<br><br>
		<input type="submit" value="삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="send" value="글쓰기" onclick="window.open('boardForm.jsp','asdfo8or','scrollbars=yes,width=500,height=500,top=300,left=500');">
		</form>
		</center>
		<%
	}catch(Exception e){
		e.toString();
		
	}

%>
<footer>
		서울시 관악구 호암로 546 미림여자정보과학고등학교 3학년 6반 박소담<br>
		개인정보보호 책임자 : 박소담<br>
		parksodam0228@e-mirim.hs.kr Copyright (c) 2018 Mirim lnc. All rights reserved
</footer>
<script>
</script>
<script src="main.js"></script>
</body>
</html>