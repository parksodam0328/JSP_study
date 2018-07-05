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
request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	//out.println(name+" : "+value);
	
	if(name!=null && value!=null){
		application.setAttribute(name, value);
	}
	
%>

<br>

<b>application 湲곕낯 媛�泥댁�� ���� 蹂닿린</b>
<br>
<%
	Enumeration para = application.getAttributeNames();
	while(para.hasMoreElements()){
		String key = (String)para.nextElement();
		Object value1 = application.getAttribute(key);
		
		out.println("<font color=red>" + key + "</font> : " + value1 + "<br>");
		
	}
	
%>

<br>

<pre>
	*�� �댄��由ъ��댁���� �� 媛��� ����(scope)瑜� 媛�����.
	- PAGE ���� : ������ JSP ���댁�瑜� 泥�由ы�� �� �ъ�⑸���� ����, pageContext ��洹�
	- REQUEST ���� : ������ HTTP ��泥��� 泥�由ы�� �� �ъ�⑸���� ����, request ��洹�
	- SESSION ���� : ������ �� 釉��쇱�곗���� 愿��⑤�� ����, session ��洹�
	- APPLICATION : ������ �� �댄��由ъ��댁��怨� 愿��⑤�� ����, application ��洹�
	
	* 湲곕낯 媛�泥대�濡� ���깆�� ����
	- pageContext : PAGE ������ �대��. ������ JSP ���댁� �댁���� 怨듭���� 媛��� ����
	- request  : REQUEST ������ �대��. �� 踰��� ��泥��� 泥�由ы������ �ъ�⑸���� 紐⑤�� JSP ���댁����� 怨듭���� 媛��� ���ν����.
		二쇰� ������ ��泥��� 泥�由ы������ �ъ�⑸���� JSP ���댁� �ъ�댁���� ��蹂대�� ���ы��湲� ���� �ъ�⑺����. 
	- session : SESSION ������ �대��. �� �ъ�⑹��(釉��쇱�곗��)�� 愿��⑤�� ��蹂대�� JSP ���댁��ㅼ�� 怨듭����湲� ���댁�� �ъ�⑸����.
		二쇰� �ъ�⑹���� 濡�洹몄�� ��蹂댁�� 媛��� 寃��ㅼ�� ���ν����. 
	- application : APPLICATION ������ �대��. 紐⑤�� �ъ�⑹���� 愿��⑦�댁�� ��蹂대�� ���ν����. 
		���� �����곕━ 寃쎈��� 媛��� �� �댄��由ъ��댁���� �ㅼ�� ��蹂대�� 二쇰� ���ν����.
</pre>


</body>
</html>