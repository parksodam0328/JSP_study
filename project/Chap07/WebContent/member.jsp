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
	request.setCharacterEncoding("utf-8");
//get 방식일 겨웅 server.xml에 URIEncording="UTF-8" 한번만 추가

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String job = request.getParameter("job");
%>

아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
이름 : <%=name %><br>
직업 : <%=job %><br>
<hr>
IP : <%=request.getRemoteAddr() %><br>
브라우저 : <%= request.getHeader("User-Agent") %><br>
전송방식 : <%= request.getMethod() %><br>
<p>
서버의 버퍼 크기 : <%=response.getBufferSize() %><br>
문자셋 : <%= response.getCharacterEncoding() %>
<%
	//request.setAttribute(arg0, arg1);
	//request.getAttribute(arg0);
	//session.setAttribute(arg0, arg1);
	//session.getAttribute(arg0);

%>
</p>
</body>
</html>