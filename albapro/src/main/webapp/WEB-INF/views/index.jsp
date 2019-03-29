<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
<link rel="stylesheet" type="text/css" href="resources/css/menuBar.css">
<%@ include file = "include/header.jsp" %>	
</head>
<body>
<%@ include file = "include/menu.jsp" %>
<div class="contents">
	<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime} </P>
</div>
<%@ include file = "include/footer.jsp" %>
</body>
</html>
