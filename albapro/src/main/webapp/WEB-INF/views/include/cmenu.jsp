<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<link rel="stylesheet" type="text/css" href="resources/css/menuBar.css">
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
  <div class="menucontainer">
	<ul class="nav manubar">
		<li class="menuLi">
			<a class="menuLink" href="/">MAIN</a>
		</li>
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/recruinfo">채용공고</a>
		</li>
	
		<li class="menuLi">
			<a class="menuLink" href="${path}/cserEmpManage?id=${login.id}">기업서비스</a>
			<div class="fulldrop scrolling-navbar Asize">
				<div class="column">
					<h3>직원 관리</h3>
					<ul>
						<li><a href="cserEmpManage?id=${login.id}">직원 목록</a></li>
						<li><a href="cserFullWorkmanagetable?id=${login.id}">일별 근태 관리</a></li>
						<li><a href="cserEmpManage?id=${login.id}">급여 관리</a></li>
						<li><a href="cserfingerIdmanage?id=${login.id}">지문 관리</a></li>
					</ul>
				</div>

				<div class="column">
					<h3>채용공고</h3>
					<ul>
						<li><a href="cserAddJobopening_free?id=${login.id}">채용공고 등록</a></li>
						<li><a href="cserAddJobopening_free_manage?id=${login.id}">채용공고 관리</a></li>
					</ul>
				</div>
				<div class="column">
					<h3>전자근로계약서</h3>
					<ul>
						<li><a href="ccserWcontractForm?id=${login.id}&n_code=${list[0].n_code}">근로계약서 작성</a></li>
						<li><a href="ccontract?id=${login.id}">근로계약서 목록</a></li>
					</ul>
				</div>
			</div>
			
		
		<li class="menuLi">
			<a class="menuLink" href="${path}/onlineQnA" class="manuli">고객센터</a>
			<div class="fulldrop scrolling-navbar Asize qnaSize">
				<div class="column">
					<h3>온라인 문의</h3>
					<ul>
						<li><a href="${path}/onlineQnA" class="manuli">문의하기</a></li>
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

