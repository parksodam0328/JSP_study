<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
홀수 출력 : 
<%
	for(int i=1;i<=10;i++){
		if(i%2!=0){
			out.print(i+" ");
		}
	}
%>
<br>
<%="**액션태그 역할 : 각 페이지 간 이동 또는 빈즈 사용등에 활용"%><br>
<%="**액션태그 종류 : include, forward, useBeen, setProperty, getProperty"%><br>
</body>
</html>