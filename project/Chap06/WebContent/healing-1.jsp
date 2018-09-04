<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">

	function check() {
		
		if(document.form01.num.value=="") {
			alert("숫자를 입력하세요..");
			document.form01.num.focus();
			return;
		}
		
		document.form01.submit();
	}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>숫자를 입력하세요.</h2>

<form name="form01" method="post" action="healing-2.jsp">
	<input type="text" name="num">
	<input type="button" value="입력완료" onclick="check()">
</form>

























</body>
</html>