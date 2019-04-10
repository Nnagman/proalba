<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/menuBar.css?ver=2">
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
  <div class="menucontainer">
	<ul class="nav">
		<li class="menuLi">
			<a class="menuLink" href="/proalba">MAIN</a>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="#">개인서비스</a>
<!-- 			Full Down Menu -->
			<div class="fulldrop">
				<div class="column">
					<h3>이력서 등록 관리</h3>
					<ul>
						<li><a href="${path}/wresume">새 이력서 작성</a>
						<li><a href="${path}/maresume">이력서 관리</a>
					</ul>
				</div>

				<div class="column">
					<h3>지원 관리</h3>
					<ul>
						<li><a href="${path}/wcontract">전자 근로계약서</a>
						<li><a href="${path}/ecertifi">취업활동 증명서</a>
					</ul>
				</div>

				<div class="column">
					<h3>근태 기록</h3>
					<ul>
						<li><a href="${path}/pworkmanage">근태 기록 관리/조회</a>

					</ul>
				</div>

				<div class="column">
					<h3>급여 관리</h3>
					<ul>
						<li><a href="${path}/inqsalary">급여 조회</a>
					</ul>
				</div>

				<div class="column">
					<h3>경력 관리</h3>
					<ul>
						<li><a href="${path}/inqcareer">경력 조회</a>
					</ul>
				</div>
				
				<div class="column">
					<h3>개인 정보 수정</h3>
					<ul>
						<li><a href="${path}/mypage">내 정보 수정</a>
					</ul>
				</div>
			</div>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path}/employmentinfo">채용정보</a>
			<ul class="subMenu">

			</ul>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path}/qna">고객센터</a>
			<div class="fulldrop2">
				<div class="column">
					<h3>온라인 문의</h3>
					<ul>
						<li><a href="${path}/qna">문의하기</a>
						<li><a href="${path}/qanlist">나의 문의 내역</a>
					</ul>
				</div>
			</div>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="#">커뮤니티</a>
			<ul class="subMenu">

			</ul>
		</li>
	</ul>
</div>

