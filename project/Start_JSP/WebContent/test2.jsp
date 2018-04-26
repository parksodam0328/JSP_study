<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
	String str1 = "수지야 돌아와~~~(전역변수)";
%>

<%
	String str2 = "사랑해요 KEI~~~(지역 변수)";
	out.println(str2);
	//out.println("<br>");// 내장객체
%>

<%= str2 %><br>
<%= getStr() %><br>

<%!
	public String getStr(){
		String str = "hello!";
		return "마마무 쏠라~~~";
	}
%>

<% String str3 = "Server Page";%>
<%-- <%=str%>은 오류 발생 -> str은 지역변수이기 때문에 getStr이 소멸됨과 동시에 같이 소멸된다 --%>

<%! String str4 = "Java";  %>

출력 결과 : <%=str3 %>

<%! 
	String id ="Kingdora";
	public String getId(){
		return id;
	}
	public String str(){
		return id;
	}
%>

<br>id 변수의 내용 <%=id %><br>
getStr() 호출 <%=getStr() %><br>
str() 호출 <%=str() %><br>
</body>
</html>