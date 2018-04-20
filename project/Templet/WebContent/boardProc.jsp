<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기 - 결과 화면</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); //post 방식일 경우 기재 -> 한글 깨짐 방지
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
%>
==========================파일 저장========================
</body>
</html>