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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
 	out.println("ID = "+id);
    out.println("PW = "+pw);
%>

<%-- 주석1
ID = <%= id %><br>
PW = <%= pw %><br>
--%>

<%-- 주석2
<%
	if(id.equals("choi")){
		if(pw.equals("1234"))
			out.println("로그인 성공");
		else
			out.println("다시 로그인 해주세요");
	}
	else out.println("회원가입 해주세용~~");
%>
--%>

<%
	if(id.equals("choi")){
		if(pw.equals("1234")) {<%
		<jsp:forward page="loginOK.jsp"></jsp:forward>
		}
		else {%>
			<jsp:forward page="loginForm.jsp"></jsp:forward>
		}
	<%}
	else <jsp:forward page="insert.jsp"></jsp:forward>
%>

</body>
</html>