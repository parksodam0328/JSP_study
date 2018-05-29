<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
<script src="main.js"></script>
</body>
</html>