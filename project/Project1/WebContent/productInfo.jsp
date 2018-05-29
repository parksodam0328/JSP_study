<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신제품</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String product_name = request.getParameter("product_name");
	String id = (String)session.getAttribute("login");
	if(id==null){%>
	<script>
	alert("로그인 해주세요!");
	location.href="login.jsp";
	</script>
	<% }
%>
<hr>
<form action="shopping.jsp" oninput="calculate()" name="form1">
<center>
<table width=200 height=500>
<tr>
<td><img src="images/<%=name %>.png" width=250 height=250></td>
<td><b><font size=5><%=product_name %></font></b></td>
</tr>
<tr>
<td color="#bcbcbc"><font size=5>판매가</font></td>
<td><font size=5><%=price %></font></td>
</tr>
<tr>
<td color="#bcbcbc"><font size=5>수량</font></td>
<td><input type="number" name="number" id="count" required></td>
</tr>
<tr>
<td color="#bcbcbc"><font size=5>합계</font></td>
<td><font size=5><output name="count_price" id="count_price"></output></font></td>
</tr>
<tr>
<td colspan="2">
<center><a href="javascript:goPage()">
<img src="images/btnImg.PNG"></a></td>
</tr>
</table>
</center>
</form>
<hr>
<script>
        function calculate(){
            var keyNum = document.getElementById("count").value;
            console.log(keyNum);
            var keyPrice = keyNum*<%=price%>;
            var output = document.getElementById("count_price").value = keyPrice+"원";
            return keyPrice;
        }
        function goPage(){
        	var total=document.form1.count_price.value;
        	location.href="shopping.jsp?name=<%=name%>&price=<%=price%>&product_name=<%=product_name%>&number="+total+"&hello=<%=id%>";
        }
</script>
</body>
</html>