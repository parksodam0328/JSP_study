<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="top.jsp" %>
main.jsp 파일 입니다<br>

<h1>include 연습</h1>
<i>include file 지시어 : 여러 jsp 파일에서 공통으로 사용되는 부분을 별도로 만들어 필요할 때마다 불러다 쓴다.</i>
<br>
<p>본문 처리</p>
<p>============================액션태그를 이용한 include==============================</p>
<br>
<font style='font-size:30px:color:blue'>
<jsp:include page="intag.jsp"></jsp:include><br>
<jsp:include page="intag1.jsp"><jsp:param value="Korea" name="irum"/></jsp:include>
</font>
<%@ include file="bottom.jsp" %>
</body>
</html>