<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/css/menuBar.css">
  <div class="menucontainer">
	<ul class="nav">
		<li class="menuLi">
			<a class="menuLink" href="/">MAIN</a>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="#">기업서비스</a>
<!-- 			Full Down Menu -->
			<div class="fulldrop">
				<div class="column">
					<h3>지원 관리</h3>
					<ul>
						<li><a href="${path}/ecertifi">취업활동 증명서</a>
					</ul>
				</div>
			</div>
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
			<div class="fulldrop">
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
			<div class="fulldrop">
				<div class="column">
					<ul>
						<li><a href="${path}/hourWageModify">최저시급 수정</a>
						<li><a href="${path}/yakModify">약관 수정</a>
						<li><a href="${path}/mManage">회원 관리</a>
						<li><a href="${path}/yakModify">계약서 관리</a>
						
					</ul>
				</div>
			</div>
		</li>
	</ul>
</div>