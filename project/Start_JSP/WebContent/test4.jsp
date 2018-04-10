<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str[] = {"쏠라","아이린","아이유","김세정","최유정","경리","차오루","모모","쯔위","사나","은하","유주","KEI","설현"};
	int i= (int)(Math.random()*str.length);
%>
내가 좋아하는 여자 아이돌은 <%=str[i] %> 입니다.
</body>
</html>