<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Popsong</title>
	<link rel="stylesheet" href="css/custorm.css">
    <link rel="stylesheet" href="billboard.css">
</head>
<body>
       <jsp:forward page="popsong.jsp">
	<jsp:param name="CONTENTPAGE" value="rockProc.jsp"/>
</jsp:forward>
</body>

</html>