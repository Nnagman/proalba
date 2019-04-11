<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<!--<script src="resources/js/jquery.js"></script> -->


<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<!DOCTYPE>
<html>
	<head>
		<title>프로알바</title>
		<link rel="stylesheet" href="resources/css/header.css" />
	</head>
	<body>
		<div class="header">

			<img alt="로고" src="resources/images/rogo.png" class="rogoimg" width="200" height="100" />
			<p>${login.id}님 로그인</p>

		</div>
	</body>
</html>