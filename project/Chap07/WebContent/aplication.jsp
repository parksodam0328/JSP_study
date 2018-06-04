<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

getServerInfo() : <%= application.getServerInfo() %><br>
getMimeType() : <%= application.getMimeType("/Chap07/out.jsp") %><br>
getRealPath() : <%= application.getRealPath("out.jsp") %><br>
log(message) : <% application.log("2018-06-04 3번째 수정 by 소담"); %><br>
</body>
</html>