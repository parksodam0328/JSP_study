<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="hs.kr.mirim.MemberInfo" scope="request"/>
<%
	member.setId("choi");
%>
<jsp:setProperty name="member" property="name" value="최규정"/>
<jsp:getProperty name="member" property="id"/>

<%
	out.println(member.getName());
%>

<jsp:forward page="useObject.jsp"></jsp:forward>
<%//MemberInfo member = new MemberInfo(); //에러남 위에 member라는 객체가 이미 생성되어있기 때문 %>
</body>
</html>