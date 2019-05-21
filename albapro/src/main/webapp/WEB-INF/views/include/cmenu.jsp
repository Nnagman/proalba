<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="resources/css/menuBar.css">
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
  <div class="menucontainer">
	<ul class="nav manubar">
		<li class="menuLi">
			<a class="menuLink" href="/proalba">MAIN</a>
		</li>
	
		<li class="menuLi">
			<a class="menuLink" href="#">기업서비스</a>
<!-- 			Full Down Menu --> 
			<div class="fulldrop scrolling-navbar Asize">
				<div class="column">
					<h3>지원 관리</h3> 
					<ul>
						<li><a href="${path}/wcontract" class="manuli">전자 근로계약서 작성</a></li>
					</ul>
					<ul>
						
						<li><a href="${path}/ccontract?id=${login.id}" class="manuli">전자 근로계약서</a></li>
					</ul>
					<ul>
						<li><a href="${path}/ecertifi" class="manuli">취업활동 증명서</a>	</li>
					</ul>
				</div>

				<div class="column">
					<h3>근태 기록</h3>
					<ul>
						<li><a href="${path}/cworkmanage?id=${login.id}" class="manuli">근태 기록 관리/조회</a></li>

					</ul>
				</div>

				<div class="column">
					<h3>급여 관리</h3>
					<ul>
						<li><a href="${path}/inqsalary?id=${login.id}" class="manuli">급여 조회</a></li>
					</ul>
					<ul>
						<li><a href="${path}/detailssalary/" class="manuli">급여 상세</a></li>	
					</ul>
				</div>

				<div class="column">
					<h3>경력 관리</h3>
					<ul>
						<li><a href="${path}/inqcareer" class="manuli">경력 조회</a></li>
					</ul>
				</div>
			</div>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/onlineQnA" class="manuli">고객센터</a>
			<div class="fulldrop">
				<div class="column">
					<h3>온라인 문의</h3>
					<ul>
						<li><a href="${path}/onlineQnA" class="manuli">문의하기</a></li>
					</ul>
					<ul>
						<li><a href="${path}/qnalist?m_code=${login.m_code}" class="manuli">나의 문의 내역</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/comm" >커뮤니티</a>
			<ul class="subMenu">

			</ul>
		</li>
	</ul>
</div>

