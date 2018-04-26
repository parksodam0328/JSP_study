<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 에러페이지로 설정 -> 예외처리가 가능 -->
죄송합니다. 빠른 시간 내에 복구하겠습니다.
<b>에러 타입</b> <%= exception.getClass().getName() %>
<b>에러 메세지</b> <%= exception.getMessage() %>
</body>
</html>