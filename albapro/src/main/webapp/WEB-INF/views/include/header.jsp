<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<!--<script src="resources/js/jquery.js"></script> -->
<link rel="stylesheet" type="text/css" href="${path}/resources/css/header.css">
</head>
<body>
	<div class="header">

		<a href="${path}"><img alt="로고" src="${path}/resources/images/rogo.png" class="rogoimg" width="200" height="100" /></a>
		<p>${login.id}님로그인</p>
	</div>

	<c:if test='${fn:substring(login.m_code,0,1) == "p"|| login.m_code == null}'>
		<%@ include file="menu.jsp"%>
	</c:if>

	<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
		<%@ include file="cmenu.jsp"%>
	</c:if>

	<c:if test='${fn:substring(login.m_code,0,1) == "a" && login.m_code != null}'>
		<%@ include file="amenu.jsp"%>
	</c:if>