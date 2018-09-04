<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

getServerInfo() : <%= application.getServerInfo() %> <br>
getMimeType(fileName) : <%= application.getMimeType("/chap07/test.html") %> <br>
getRealPath(path) : <%= application.getRealPath("out.jsp") %> <br>
log(message) : <% application.log("2018-6-4 3번째 수정 by choi"); %> <br>

</body>
</html>