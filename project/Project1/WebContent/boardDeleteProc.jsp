<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

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
<a href="signUp.jsp"><span class="boardMenu">ȸ������</span></a>
</header>
<%}else{%>
<header>
<a href="main.jsp"><span class="boardMenu">HOME</span></a>
<a href="bestseller.jsp"><span class="boardMenu">BEST SELLER</span></a>
<a href="product.jsp"><span class="boardMenu">NEW PRODUCTS</span></a>
<a href="event.jsp"><span class="boardMenu">EVENT</span></a>
<a href="board.jsp"><span class="boardMenu">�Խ���</span></a>
<a href="myPage.jsp"><span class="boardMenu">[<%=id %>]��</span></a>
</header>
<center>
<%} %>
<div id="container">
	<div class="align_center">
	
<%
	try{
		File file;
		String filePath;
		String[] product = request.getParameterValues("board");
		for(String products : product){
			filePath = application.getRealPath("/WEB-INF/board/"+products+".txt");
			
			file = new File(filePath);
			if(file.isFile()){
				
	            if(file.delete()){out.print(file.delete());%>
	                <center><span style="color:#ffcc00; font-size:40px;font-weight:900;">�Խñ��� �����Ǿ����ϴ�.</span></center>
	            <%}else{%>
	               <center><span style="color:#ffcc00; font-size:40px;font-weight:900;">�Խñ� ������ �����߽��ϴ�.</span></center>
	            <%}
	        }else{%>
	        	<center><span style="color:#ffcc00; font-size:40px;font-weight:900;"><%=products %>�� �������� �ʽ��ϴ�.</span></center>
	       <% }
		}
		}catch(Exception e){
			e.toString();
		}
%>
</div>
</div>

<footer>
		����� ���Ǳ� ȣ�Ϸ� 546 �̸������������а���б� 3�г� 6�� �ڼҴ�<br>
		����������ȣ å���� : �ڼҴ�<br>
		parksodam0228@e-mirim.hs.kr Copyright (c) 2018 Mirim lnc. All rights reserved
</footer>
</body>
</html>