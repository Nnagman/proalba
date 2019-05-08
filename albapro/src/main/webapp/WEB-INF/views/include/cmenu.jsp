<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="resources/css/menuBar.css">
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
  <div class="menucontainer">
	<ul class="nav">
		<li class="menuLi">
			<a class="menuLink" href="/proalba">MAIN</a>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="#">기업서비스</a>
<!-- 			Full Down Menu -->
			<div class="fulldrop">
				<div class="column">
					<h3>채용공고 등록 관리</h3>
					<ul>

						<li><a href="${path}/addjobopening_free">새 공고글 작성</a>
						<li><a href="${path}/jobopeningmanage?id=${login.id}">공고글 관리</a>

					</ul>
				</div>

				<div class="column">
					<h3>지원 관리</h3>
					<ul>
						<li><a href="${path}/wcontract">전자 근로계약서 작성</a>
						<li><a href="${path}/ccontract?id=${login.id}">전자 근로계약서</a>
						<li><a href="${path}/ecertifi">취업활동 증명서</a>
					</ul>
				</div>

				<div class="column">
					<h3>근태 기록</h3>
					<ul>
						<li><a href="${path}/cworkmanage?id=${login.id}">근태 기록 관리/조회</a>

					</ul>
				</div>

				<div class="column">
					<h3>급여 관리</h3>
					<ul>
						<li><a href="${path}/inqsalary/">급여 조회</a><li>
						<li><a href="${path}/detailssalary/">급여 상세</a><li>
						
					</ul>
				</div>

				<div class="column">
					<h3>경력 관리</h3>
					<ul>
						<li><a href="${path}/inqcareer">경력 조회</a>
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
			<a class="menuLink" href="#">고객센터</a>
			<ul class="subMenu">

			</ul>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path}/comm">커뮤니티</a>
			<ul class="subMenu">

			</ul>
		</li>
	</ul>
</div>
