<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Popsong</title>
<link rel="stylesheet" href="css/custorm.css">
</head>
<body>
<header>
<jsp:include  page="top.jsp" flush="false"></jsp:include>
</header>
 <div id="content">
        <div id="box">
        <jsp:include  page="<%=contentPage%>" flush="false"></jsp:include>
        </div>
</div>
<footer>
<jsp:include  page="bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
</html>