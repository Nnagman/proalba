<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/login.css">
<title>Insert title here</title>
</head>
<%@ include file = "../include/header.jsp" %>

</head>
<body>
<h2> ${message } 님 비밀번호를 입력해주세요</h2>
<form action="${path}/login/MyinfoModify" method="post">
	<label for="password">Password</label>
    <input type="password" id="password" name="password" required="required"/>
    <button type="submit">확인</button>
</form>
</body>
</html>