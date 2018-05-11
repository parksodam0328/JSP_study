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
		String strArr[] = {"모모","케이","세정","유정","조이","경리"};
		for(int i=0; i<strArr.length; i++){
			out.println("strArr["+i+"] 의 값은 <b>"+strArr[i]+"</b> 입니다<br>");
		}
	
	
	
	%>
</body>
</html>