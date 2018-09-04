<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="hs.kr.mirim.MemberInfo" scope="request"></jsp:useBean>
<jsp:setProperty name="member" property="name" value="홍길동" />
<%=member.getName()%> (<%=member.getId() %>) 회원님 반갑습니다. (자바코드)
<br>

<jsp:getProperty name="member" property="name"/> (<jsp:getProperty name="member" property="id"/>) 회원님 반갑습니다. (액션태그)
</body>
</html>