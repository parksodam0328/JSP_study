<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
a.jsp <br>

<form method="post" action="b.jsp">
id : <input type="text" name="id"> <br>
pw : <input type="password" name="pw"> <br>
<input type="submit" value="전송">

</form>

<%
	application.setAttribute("age", 23); //aplication은 Chap07내에서 공유가능!
%>
</body>
</html>