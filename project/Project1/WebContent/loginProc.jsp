<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%
	try{
		String filename = "users.txt";
		String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
		File theFile = new File(filePath);
		FileReader theFileReader = new FileReader(theFile); //파일 읽기
		BufferedReader theBufferedReader = new BufferedReader(theFileReader);
		String[] userInfor={};
		String infor=""; // 파일의 내용 한 줄씩 읽어오기 위한 변수 선언
		while((infor = theBufferedReader.readLine())!=null){
			userInfor = infor.split("\\s"); // 유저의 아이디와 비밀번호는 공백으로 구분
		}
   		//form으로 부터 전송된 유저 정보
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    
    	String redirectUrl = "login.jsp"; // 인증 실패시 재요청 될 url 
    	for (int i = 0; i < userInfor.length; i+=2) {
        	if (userInfor[i].equals(id) && userInfor[i+1].equals(pw)) {
            session.setAttribute("login", id); //세션 생성
            redirectUrl = "main.jsp";
        }
    }
    response.sendRedirect(redirectUrl);
	}catch(Exception e){
		out.print(e.toString());
	}
    
%>
</body>
</html>