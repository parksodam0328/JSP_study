<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.lang.String" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.board.bbs.BbsDAO" %>	
<%@ page import="com.board.bbs.Bbs" %>	
<%@ page import="java.util.ArrayList" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/custorm.css">
<title>Popsong</title>

<style>
img{
	opacity:0.7;
}
img:hover{
	opacity:1.0;
}
body{background:#fff;}
a,a:hover {
	color: #fff;
	text-decoration: none;
}

a#pop,a#pop:hover {
	color: #000;
	text-decoration: none;
}
td.line{
	border:1px solid #bcbcbc;
	background-color:#fff;
}
input[type=button]{
	width: 77.8%;
    padding: 13px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    background-color:#FA58AC;
    color:#fff;
    font-size:15px;
    font-weight:700;
}

input.genre[type=button]{
	width: 77.8%;
    padding: 13px 0;
    margin: 2px 0;
    box-sizing: border-box;
    background-color:#FA58AC;
    color:#fff;
    font-size:15px;
    font-weight:700;
}
</style>
</head>
<body>
	<!-- 로그인이 된 사람들의 세션을 만들어 준다. 
		 회원값이 있는 사람들은 userID에 정보가 담기게 되고
		 아닌 사람은 null값을 가지게 된다.
	-->
	
	<%
		String userID = null;
	if(session.getAttribute("userID") == null){
		%><script>location.href="join.jsp";</script>
		<%	}
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<br><br><br>
	<center>
<span style="width:100%;font-weight:700; font-size:25px;"><a id="pop" href="bbs.jsp">팝송 추천 게시판</a></span>

<br><br><br>
<table width="80%">
<tr>
<td align="center"><a href="rabhip.jsp"><input class="genre" type="button" value="R&B/Hip-Hop"></a></td>
<td align="center"><a href="dance.jsp"><input class="genre" type="button" value="Dance"></td>
<td align="center"><a href="pop.jsp"><input class="genre" type="button" value="Pop"></td>
<td align="center"><a href="rap.jsp"><input class="genre" type="button" value="Rap"></td>
<td align="center"><a href="rock.jsp"><input class="genre" type="button" value="Rock"></td>
<td align="center"><a href="jazzpop.jsp"><input class="genre" type="button" value="Jazz-Pop"></td>
</tr>
</table>
</center>
<br><br>
<center>
<a href="write.jsp"><input type="button" value="글쓰기"></a>
</center>
<center>
		 	<table width="80%" height="80%" style="text-align:center;"  cellspacing=20>
				<tr height="350px">
		 			<%
		 				BbsDAO bbsDAO = new BbsDAO();
		 				ArrayList<Bbs> list = bbsDAO.getListJazz(pageNumber);
		 				for(int i=0; i < list.size(); i++){
		 			%>
		 				<%if((i+1)%3==0) {%>
		 			<td class="line" width="26%">
		 				<a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><img width="80%" height="280px" src="imageFile/<%=list.get(i).getBbsImage()%>"></a>
		 			</td>
		 		</tr>	
					<tr height="350px">
					<%}else{%><td class="line" width="26%"><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><img width="80%" height="280px" src="imageFile/<%=list.get(i).getBbsImage()%>"></a></td><%} %>
					
		 			<%		

		 				}

		 			%>

		 	</table>
</center>
		 	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script> 
</body>
</html>

