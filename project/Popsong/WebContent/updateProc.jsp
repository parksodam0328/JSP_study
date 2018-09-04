<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>	

<%@ page import="com.board.bbs.Bbs" %>	

<%@ page import="com.board.bbs.BbsDAO" %>	

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
body{background:#F6F6F6}
a,a:hover {
	color: #000000;
	text-decoration: none;
}
input[type=button]{
	width: 77.8%;
    padding: 8px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    background-color:#FA58AC;
    color:#fff;
    font-weight:700;
}

input[type=text]{
	width: 100%;
    padding: 9px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-weight:700;
    height:40px;
}
textarea{
	width: 100%;
    padding: 9px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-weight:700;
}
input[type=submit]{
	width: 100%;
    padding: 9px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    color:#fff;background-color:#FA58AC;
    font-weight:700;
    height:40px;
}
select{
	width: 100%;
    padding: 9px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
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

		if(session.getAttribute("userID") != null){

			userID = (String) session.getAttribute("userID");

		}

		if(userID == null){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('로그인을 하세요.')");

			script.println("location.href = login.jsp'");

			script.println("</script>");	

		}

		int bbsID = 0 ;

		if(request.getParameter("bbsID") != null){

			bbsID = Integer.parseInt(request.getParameter("bbsID"));

		}

		if(bbsID == 0){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('유효하지 않은 글입니다..')");

			script.println("location.href = bbs.jsp'");

			script.println("</script>");

		}

		Bbs bbs = new BbsDAO().getBbs(bbsID);

		if(!userID.equals(bbs.getUserID())){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('권한이 없습니다.')");

			script.println("location.href = bbs.jsp'");

			script.println("</script>");

		}

	%><br><br><center><span style="width:100%;font-weight:700; font-size:25px;"><a id="pop" href="update.jsp">게시글 수정</a></span></center>
	
	
	<br><br>

		 	<form method="post" action="updateAction.jsp?bbsID=<%= bbsID %>" enctype="multipart/form-data" cellspacing=5>

			 	<table width="70%" style="text-align:center;" align="center" cellspacing="5">
			 			
			 			<tr>
			 				<td style="background-color:#FA58AC;border-radius: 4px;color:#fff;height:20px;">장르</td><td><select name="bbsGenre">
  <option value="R&B/Hip-Hop">R&B/Hip-Hop</option>
  <option value="Dance">Dance</option>
  <option value="Pop">Pop</option>
  <option value="Rap">Rap</option>
  <option value="Rock">Rock</option>
  <option value="Jazz-Pop">Jazz-Pop</option>
	</select></td>

			 			</tr>
			 			<tr>
			 				<td style="background-color:#FA58AC;border-radius: 4px;color:#fff;">제목</td><td><input type="text" placeholder="제목" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle() %>"></td>

			 			</tr>

			 			<tr>	

			 				<td style="background-color:#FA58AC;border-radius: 4px;color:#fff;">내용</td><td><textarea placeholder="내용" name="bbsContent" maxlength="2048" style="height:350px"><%= bbs.getBbsContent() %></textarea> </td>

			 			</tr>	
			 			
			 			<tr>	

			 				<td style="background-color:#FA58AC;border-radius: 4px;color:#fff;">사진</td><td><input type="file" name="bbsImage" value="<%= bbs.getBbsImage() %>"><%= bbs.getBbsImage() %></td>

			 			</tr>	

			 		</tbody>

			 		

			 	</table>
				<table width="70%" align="center">
				 	<tr><td width="100%"><input type="submit" value="글수정"></td></tr>
				 </table>

			</form>

		 </div>

	</div>

	

	

	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	

<script src="js/bootstrap.min.js"></script> 

</body>

</html>