<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="templet.css">
<link rel="stylesheet" href="css/custorm.css">
</head>
<body>

<%
		String userID = null;
			userID = (String) session.getAttribute("userID");
		%>
<header>
        <ul>
            <li>
                <a id="logo" href="index.jsp">POPMUSIC</a>
            </li>
            <li class="dropdown">
                <a href="billboard.jsp" class="dropbtn">Billboard</a>
                <div class="dropdown-content">
                    <a class="menubar" href="billboard.jsp">Hot100</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="genre.jsp" class="dropbtn">Genre</a>
                <div class="dropdown-content">
                    <a class="menubar" href="rabhip.jsp">R&B/Hip-Hop</a>
                    <a class="menubar" href="dance.jsp">Dance</a>
                    <a class="menubar" href="pop.jsp">Pop</a>
                    <a class="menubar" href="rap.jsp">Rap</a>
                    <a class="menubar" href="rock.jsp">Rock</a>
                    <a class="menubar" href="jazzpop.jsp">Jazz-Pop</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="video.jsp" class="dropbtn">Video</a>
                <div class="dropdown-content">
                    <a class="menubar" href="video.jsp">Music Video</a>
                    <a class="menubar" href="video.jsp">Lyrics Video</a>
                    <a class="menubar" href="video.jsp">Collaboration Video</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="artist.jsp" class="dropbtn">Artist</a>
                <div class="dropdown-content">
                    <a class="menubar" href="artist.jsp">Female</a>
                    <a class="menubar" href="artist.jsp">Male</a>
                </div>
            </li>
            <li>
                <a href="login.jsp"><%if(userID==null){ %>로그인</a><%}else { %><a href="myPage.jsp"><%out.print(userID+"님");}%></a>
               </li><li>
                    <a class="menubar" href="join.jsp"><%if(userID==null){ %>회원가입</a><%}else { %><a href="logoutAction.jsp">로그아웃<%}%></a>
                
            </li>
        </ul>
    </header>
</body>
</html>