<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<div style-"text-align: center;">
	<a href="${path }/">main</a>
	<a href="${path }/pservice">개인서비스</a>
	<a href="${path }/recruinfo">채용정보</a>
	<a href="${path }/cservice">고객센터</a>
	<a href="${path }/community">커뮤니티</a>
	<a href="${path }/login">로그인</a>
</div>