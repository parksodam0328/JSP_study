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
	request.setCharacterEncoding("UTF-8");
	String pageName = request.getParameter("pageName");
	pageName += ".jsp";
	
	//out.println(pageName);
	
%>

현재 페이지는 include_02.jsp 상단 입니다.<br>
<hr>
<jsp:include page="<%=pageName %>" flush="false"></jsp:include>
<hr>

include_02.jsp 하단 내용입니다.

</body>
</html>