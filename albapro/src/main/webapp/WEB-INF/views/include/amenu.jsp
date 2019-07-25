<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/menuBar.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">

  <div class="menucontainer">
	<ul class="nav menubar">
	 
	 	<li class="menuLi"><a class="menuLink" href="/">MAIN</a></li>

		<li class="menuLi">
				<a class="menuLink" href="${path}/recruinfoManage">채용공고</a>
		</li>
		
		
		<li class="menuLi">
		<a class="menuLink" href="${path}/onlineQnA" class="manuli ">고객센터</a>
			<div class="fulldrop scrolling-navbar qnaSize">
				<div class="column">
					<h3 class="menu-drop-title">온라인 문의</h3>
					<ul>
						<li><a href="${path}/adminQnalist">문의 내역</a>
					</ul>
				</div>
			</div>
		</li>

		<li class="menuLi"><a class="menuLink" href="${path}/comm">커뮤니티</a>

		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="#">관리</a>
			<div class="fulldrop scrolling-navbar qnaSize">
				<div class="column">
					<h3 class="menu-drop-title">온라인 문의</h3>
					<ul>
						<li><a href="${path}/hourWageModify">최저시급 | 계약서 | 회원</a>
						<li><a href="${path}/yakModify">약관 수정</a>						
					</ul>
				</div>
			</div>
		</li>
		
	</ul>
</div>