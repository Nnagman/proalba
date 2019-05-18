<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" type="text/css" href="${path}/resources/css/menuBar.css">

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">

  <div class="menucontainer">
	<ul class="nav manubar">
	
		<li class="menuLi">
			<a class="menuLink" href="/proalba">MAIN</a>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="#">개인서비스</a>
<!--	Full Down Menu -->
			<div class="fulldrop scrolling-navbar Asize">
				<div class="column">
					<h3 class="menu-drop-title">이력서 등록 관리</h3>
					<ul>
						<li><a href="${path}/writeResume" class="manuli">새 이력서 작성</a></li>
						</ul>
						<ul>
						<li><a href="${path}/maresume" class="manuli">이력서 관리</a></li>
					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">지원 관리</h3>
					<ul>
						<li><a href="${path}/pcontract?id=${login.id}" class="manuli">전자 근로계약서</a></li>
					</ul>
					<ul>
						<li><a href="${path}/ecertifi" class="manuli">취업활동 증명서</a></li>
					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">근태 기록</h3>
					<ul>
						<li><a href="${path}/pworkmanage?id=${login.id}" class="manuli">근태 기록 관리/조회</a></li>

					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">급여 관리</h3>
					<ul>
						<li><a href="${path}/inqsalary?p_id=${login.id}" class="manuli">급여 조회</a></li>
					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">경력 관리</h3>
					<ul>
						<li><a href="${path}/inqcareer?id=${login.id}" class="manuli">경력 조회</a></li>
					</ul>
				</div>
				
				<div class="column">
					<h3 class="menu-drop-title">개인 정보</h3>
					<ul>
						<li><a href="${path}/pmypage"  class="manuli">내 정보 조회</a></li>
					</ul>
					<ul>
						<li><a href="${path}/MyinfoModify"  class="manuli">내 정보 수정</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/employmentinfo" class="manuli">채용정보</a>
			<ul class="subMenu">

			</ul>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/onlineQnA" class="manuli ">고객센터</a>
			<div class="fulldrop scrolling-navbar">
				<div class="column">
					<h3 class="menu-drop-title">온라인 문의</h3>
					<ul>
						<li><a href="${path}/onlineQnA" class="manuli">문의하기</a></li>
						</ul>
						<ul><li><a href="${path}/qnalist?m_code=${login.m_code}" class="manuli">나의 문의 내역</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/comm">커뮤니티</a>
			<ul class="subMenu">

			</ul>
		</li>
	</ul>
</div>

