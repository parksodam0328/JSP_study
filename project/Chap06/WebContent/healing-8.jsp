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
	request.setCharacterEncoding("utf-8");
	String group ="";
	String name="";
	int num = Integer.parseInt(request.getParameter("idol"));
	
	switch(num){
	case 1:
		group="AOA";
		name="설현";break;
	case 2:
		group="나인뮤지스";
		name="경리";break;
	case 3:
		group="마마무";
		name="쏠라";break;
	case 4:
		group="여자친구";
		name="은하";break;
	case 5:
		group="트와이스";
		name="모모";break;
	}
	out.println("규정쌤은 "+group+" 그룹의 "+name+"을 좋아합니다.");

%>
</body>
</html>