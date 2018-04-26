<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="choi.jsp"%> <!-- choi는 에러페이지로 지정되어있음(예외처리 되어있음) -> 에러 발생시 choi 페이지로 이동 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요<br>
<%
	String name="모모";
	out.println(name+"의 홈페이지 입니다.");
	
	for(int i=1;i<7;i++){
		out.print("<h"+i+">");
		out.print("나인뮤지스 경리 사랑해요~~~");
		out.print("</h"+i+">");
	}//for
%>
<br>
<%= new Date() %>
<br>
<%
	int a=0, sum=0;
	do {
		a++;
		sum+=a;
	}while(a<10);
%>
<%= "10까지의 합은 " +sum + "입니다." %><br>
<%= name + "님의 전화는" + tel %><br>
<%!
	String tel = "1234-5678";
%>
<%!
	public int add(int m,int n){
		return m+n;
}
%>

<%
	out.println(add(21,23));
%>
<br>
<%= add(25,23) %>
<br>

<%= 10/0 %><!-- 오류발생 choi.jsp로 이동 -->
</body>
</html>