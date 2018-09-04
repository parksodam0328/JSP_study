<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<b>isAutoFlush() : </b> <%= out.isAutoFlush() %> <br>
<b>getBufferSize() : </b> <%= out.getBufferSize() %> <br>
<b>getRemaining : </b> <%= out.getRemaining() %> <br>

안녕하세요? 즐거운 금요일입니다. <br>
최지향을 만나러 갑니다. <br>

<% out.flush();  %>

clearBuffer() 실행 이후입니다.

</body>
</html>