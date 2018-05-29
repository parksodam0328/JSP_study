<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쇼핑</title>
</head>
<body>
<%
	String[] product = request.getParameterValues("product");
	String id = (String)session.getAttribute("login");
	String filename = id+".txt";
	String line="";
	String read="";
	String result="";
	String delete="";
   	String filePath = application.getRealPath("/WEB-INF/shopping/"+filename);
   	int i=0;
    try {
    	//파일생성
    	File theFile = new File(filePath);
    	PrintWriter writer = null;
   		BufferedWriter bufferW = null;
   	   	FileReader theFileReader = new FileReader(theFile); //파일 읽기
   	   	BufferedReader bufferR=new BufferedReader(theFileReader);

   		bufferW = new BufferedWriter(new FileWriter(filePath,true)); // 파일 내용 계속 추가
   		writer = new PrintWriter(bufferW,true); 
   		
   		while((read=bufferR.readLine())!=null) {
   			line+=bufferR.readLine();
   			if(read.contains(product[i])) {
   				delete += bufferR.readLine();
   				i++;
   		       }
   		}
   		while((read=bufferR.readLine())!=null) {
   			result+=bufferR.readLine();
   			if(read.contains(product[i])) {
   				delete += bufferR.readLine();
   				i++;
   		       }
   		}
   		bufferW.write(result);
   		bufferW.write("\n");
    }catch(Exception e){
    	out.println("오류발생");
    }
	/* for(String pro : product){
		out.print(pro);
	} */
/* if(request.getParameter("calculation").compareTo("calculation")==0)
{
 savetest = 1;
 caltest = 1;
}
else
{
 savetest = 2;
 caltest = 2;
} */


%>
<meta http-equiv="refresh" content="3;url=main.jsp?">
</body>
</html>