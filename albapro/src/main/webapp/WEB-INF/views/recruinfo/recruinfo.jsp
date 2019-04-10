<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file = "../include/header.jsp" %>
</head>
<body>
<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
<%@ include file = "../include/cmenu.jsp" %>
</c:if>
<h2> ${message }</h2>
</body>
</html>