<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form1.name.value==""){
		alert("이름을 입력해주세요.");
		document.form1.name.focus();
		return;
	}
	if(document.form1.id.value==""){
		alert("아이디를 입력해주세요.");
		document.form1.id.focus();
		return;
	}
	if(document.form1.pw.value==""){
		alert("비밀번호를 입력해주세요.");
		document.form1.pw.focus();
		return;
	}
	
	 var num_temp1 = document.form1.gender.length; 
	 for (i=0;i<num_temp1 ;i++) { 
	  	if (document.form1.gender[i].checked == true) { 
	  		break; 
	 	 } 
	 } 
	 if (i == num_temp1) 
	 { 
	  	alert("성별을 선택해주세요."); 
	  	document.form1.gender[0].focus();
	  	return;
	 }
	 
	 var num_temp2 = document.form1.mail.length; 
	 for (i=0;i<num_temp2 ;i++) { 
	  	if (document.form1.mail[i].checked == true) { 
	  		break; 
	 	 } 
	 } 
	 if (i == num_temp2) 
	 { 
	  	alert("메일수신여부를 선택해주세요."); 
	  	document.form1.mail[0].focus();
	  	return;
	 }
	 
	 if(document.form1.job.value==""){
		 alert("직업을 선택해주세요.");
			document.form1.job.focus();
			return;
	 }
	alert("아이디 : "+document.form1.id.value+" "+ "비밀번호 : "+document.form1.pw.value);
}
</script>
</head>
<body>
<form name="form1">

이름 : <input type="text" name="name" size=11>
<br>
ID : <input type="text" name="id" size=11>
<br>
PW : <input type="password" name="pw" size=11>
<br>
성별 : 남 <input type="radio" name="gender" value="남"> 여 <input type="radio" name="gender" value="여">
<br>
메일수신여부 : 공지 메일 <input type="checkbox" name="mail" value="notice">
 광고메일 <input type="checkbox" name="mail" value="ad"> 배송 확인 메일 <input type="checkbox" name="mail" value="delivery">
<br>
직업 : <select name="job">
    <option value="">직업선택</option>
    <option value="학생">학생</option>
    <option value="회사원">회사원</option>
    <option value="기타">기타</option>
	</select>
<br>
<input type="button" value="확인" onclick="check()">
<input type="button" value="취소" onclick="loginChk()">
</form>
<br><br>

</body>
</html>