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
			<a class="menuLink" href="/proalba">채용공고</a>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/pworkmanage?id=${login.id}" target="blank">개인서비스</a>
<!--	Full Down Menu -->
			<%-- <div class="fulldrop scrolling-navbar Asize">

				<div class="column">
					<h3 class="menu-drop-title">지원 관리</h3>
					<ul>
						<li><a href="${path}/pserSalary?id=${login.id}" class="manuli">전자 근로계약서</a></li>
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
						<li><a href="${path}/inqsalary?id=${login.id}" class="manuli">급여 조회</a></li>
					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">경력 관리</h3>
					<ul>
						<li><a href="${path}/inqcareer?id=${login.id}" class="manuli">경력 조회</a></li>
					</ul>
				</div>
			</div> --%>
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

