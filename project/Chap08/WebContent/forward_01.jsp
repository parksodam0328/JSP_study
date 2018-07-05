<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>forward 액션태그</h2>
<form method="post" action="forward_02.jsp">
	아이디 : <input type="text" name="id"><br>
	취미 : <select name="hobby">
			<option value="WOW">WOW</option>
			<option value="만화보기">만화보기</option>
			<option value="오버워치">오버워치</option>
		 </select>
		 <br>
		 <input type="submit" value="전송">
</form>
</body>
</html>