<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "../include/header.jsp" %>	
<script src="resources/js/signUp.js?ver=1"></script>
	
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
아이디 : ${login.id}
이름 : ${login.name}
전화번호 : ${login.phone}
이메일 : ${login.email}
</body>
</html>