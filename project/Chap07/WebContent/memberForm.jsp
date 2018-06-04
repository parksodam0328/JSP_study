<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.mem.id.value==""){
		alert("아이디를입력하세요!");
		document.mem.id.focus();
		return;
	}
	document.mem.submit();
}
</script>
</head>
<body>

<pre>
** JSP에서 기본으로 제되는 내장 객체는 9개
 request, response, out : 입출력과 관련
 session, application, pageContext : 현재 실행되는 페이지의 외부한경 정보와 관련
 page : jsp 페이지 그 자체를 의미
 config : 서블릿을 초기화 하는 동안 참조할 정보를 전해주는 역할
 exception : 예외 객체
</pre>

<b>내장 객제 중 request, response</b> <br> 

<form name="mem" method="post" action="member.jsp">
	아이디 : <input type="text" name="id" size=10><br>
	비밀번호 : <input type="password" name="pw" size=10><br>
	이름 : <input type="text" name="name" size=10><br> 
	직업 : <select name="job">
			<option value="학생">학생</option>
			<option value="회사원">회사원</option>
			<option value="교사">교사</option>
			<option value="기타">기타</option>
		 </select> <br>
	<input type="button" value="등록" onclick="check()">
	<input type="reset" value="취소">
</form>

</body>
</html>