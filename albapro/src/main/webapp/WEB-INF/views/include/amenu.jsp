<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/menuBar.css">
<style>
	ul.nav{
		margin-left: 80px !important;
	}
	
	.fulldrop{
		background-color: #5D5D5D !important;
	}
</style>
  <div class="menucontainer">
	<ul class="nav">
		<li class="menuLi">
			<a class="menuLink" href="/">MAIN</a>
		</li>

		
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path}/recruinfoManage">채용공고관리</a>
			<ul class="subMenu">

			</ul>
		</li>
		
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path}/onlineQnA">고객센터</a>
			<div class="fulldrop scrolling-navbar Asize">
				<div class="column">
					<h3>온라인 문의</h3>
					<ul>
						<li><a href="${path}/adminQnalist">문의 내역</a>
					</ul>
				</div>
			</div>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path}/comm">커뮤니티</a>
			<ul class="subMenu">

			</ul>
		</li>
		
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="#">관리</a>
			<div class="fulldrop scrolling-navbar Asize">
				<div class="column">
					<ul>
						<li><a href="${path}/hourWageModify">최저시급 | 계약서 | 회원</a>
						<li><a href="${path}/yakModify">약관 수정</a>						
					</ul>
				</div>
			</div>
		</li>
	</ul>
</div>