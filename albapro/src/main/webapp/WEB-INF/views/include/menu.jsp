<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<div style-"text-align: center;">
	<a href="/">main</a>
	<a href="pservice" class="p-ser" >개인서비스</a>
	<a href="recruinfo" class="r-crui" >채용정보</a>
	<a href="cservice" class="c-ser" >고객센터</a>
	<a href="community" class="comm" >커뮤니티</a>
	<a href="login">로그인</a>
</div>