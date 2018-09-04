<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	//out.println(name + " : " + value);
	
	if(name!=null && value !=null) {
		application.setAttribute(name, value);
	}
%>
<br>
<b> application 기본 객체의 속성 보기 </b>
<br>
<%
	Enumeration para = application.getAttributeNames();
	while(para.hasMoreElements()) {
		String key = (String)para.nextElement();
		Object value1 = application.getAttribute(key);
		
		out.println("<font color=red>" + key + "</font>" + " : " + value1 + "<br>");
	}
		

%>

<br>
<pre>
 * 웹 어필리케이션은 네 개의 영역(scope)을 갖는다.
  - PAGE 영역 : 하나의 JSP 페이지를 처리할 때 사용되는 영역, pageContext 접근
  - REQUEST 영역 : 하나의 HTTP 요청을 처리할 때 사용되는 영역, request 접근
  - SESSION 영역 : 하나의 웹 브라우저와 관련된 영역, session 접근
  - APPLICATION : 하나의 웹 어플리케이션과 관련된 영역, application 접근
 
 * 기본 객체별로 속성의 활용
  - pageContext : PAGE 영역을 담당. 하나의 JSP 페이지 내에서 공유될 값을 저장 
  - request : REQUEST 영역을 담당. 한 번의 요청을 처리하는데 사용되는 모든 JSP 페이지에서 공유될
              값을 저장한다. 주로 하나의 요청을 처리하는데 사용되는 JSP 페이지 사이에서 정보를 전달하기 위해 사용한다.
  - session : SESSION 영역을 담당. 한 사용자(브라우저)와 관련된 정보를 JSP 페이지들이 공유하기 위해서
              사용된다. 주로 사용자의 로그인 정보와 같은 것들을 저장한다.
  - application : APPLICATION 영역을 담당. 모든 사용자와 관련해서 정보를 저장한다.
    	임시 디렉터리 경로와 같은 웹 어플리케이션의 설정 정보를 주로 저장한다.


</pre>



























</body>
</html>