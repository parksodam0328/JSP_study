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
%>
<jsp:useBean id="member" class="hs.kr.mirim.MemberInfo" />
<jsp:setProperty name="member" property="*"/>
<%
	member.setPassword("1234");
%>
<table border=1>
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="member" property="id"/></td>
		<td>비밀번호</td>
		<td><jsp:getProperty name="member" property="password"/></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="member" property="name"/></td>
		<td>이메일</td>
		<td><jsp:getProperty name="member" property="email"/></td>
	</tr>
	<tr>
		<td>주소</td>
		<td colspan="3"><jsp:getProperty name="member" property="address"/></td>
		
	</tr>
</table>
</body>
</html>