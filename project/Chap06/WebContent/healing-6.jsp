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
	String name = request.getParameter("name");
	String twice = request.getParameter("twice");
	String love = "";
	
	if(twice.equals("나연")) {
		love = "나연";	
	}
	else if(twice.equals("정연")) {
		love = "정연";		
	}
	else if(twice.equals("모모")) {
		love = "모모";		
	}		
	else if(twice.equals("사나")) {
		love = "사나";		
	}
	else if(twice.equals("지효")) {
		love = "지효";		
	}
	else if(twice.equals("쯔위")) {
		love = "쯔위";		
	}		
	else {
		love = "기타 멤버";
	}

	out.println(name + "님은 트와이스의 " + love + "를 좋아합니다.");
	
	
	
	
	
	
	
	
	
	
	
%>


</body>
</html>