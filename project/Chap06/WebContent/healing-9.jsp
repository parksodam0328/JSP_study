<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String strArr[] = {"모모", "KEI", "세정", "유정", "조이", "경리"};

	for(int i=0; i<strArr.length; i++) {
		out.println("strArr[" + i + "]의 값은 <b>" + strArr[i] + "</b>입니다. <br>");
	}


%>