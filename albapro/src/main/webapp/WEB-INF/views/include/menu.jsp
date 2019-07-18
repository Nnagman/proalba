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
	<ul class="nav manubar">

		<li class="menuLi"><a class="menuLink" href="/">MAIN</a></li>

		<li class="menuLi">
				<a class="menuLink" href="${path}/recruinfo">채용공고</a>
		</li>
		<li class="menuLi">
			<c:if test='${fn:substring(login.m_code,0,1) == "p" && login.m_code != null}'>
				<a id="pservice" class="menuLink" href="${path}/pserworkList?id=${login.id}">개인서비스</a>
			</c:if> 
			<c:if test="${login.id == null}">
				<a id="pservice" class="menuLink" href="${path}/login">개인서비스</a>
			</c:if>
			<div class="fulldrop scrolling-navbar Asize">
				<div class="column">
					<h3 class="menu-drop-title">알바 관리</h3>
					<ul>
						<li><a href="pserworkList?id=${login.id}" class="manuli">나의 알바 목록</a></li>
						<li><a href="pworkmanage?id=${login.id}">근태 조회</a></li>
					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">이력서 등록/관리</h3>
					<ul>
						<li><a href="writeResume?id=${login.id}" class="manuli">새 이력서 작성</a></li>
						<li><a href="listResume?id=${login.id}" class="manuli">이력서	관리</a></li>
					</ul>
				</div>

				<div class="column">
					<h3 class="menu-drop-title">전자근로계약서</h3>
					<ul>
						<li><a href="contract?id=${login.id}" class="manuli">전자근로계약서 목록</a></li>
					</ul>
				</div>

			</div>
		</li>
		<li class="menuLi">
			<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
				<a id="cservice" class="menuLink" href="cserEmpManage?id=${login.id}">기업서비스</a>
			</c:if> 
			<c:if test="${login.id == null}">
				<a id="cservice" class="menuLink" href="${path}/login">기업서비스</a>
			</c:if>
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
						<li><a
							href="ccserWcontractForm?id=${login.id}">근로계약서 작성</a></li>
						<li><a href="ccontract?id=${login.id}">근로계약서 목록</a></li>
					</ul>
				</div>
			</div>
		</li>


		<li class="menuLi"><a class="menuLink" href="${path}/onlineQnA"
			class="manuli ">고객센터</a>
			<div class="fulldrop scrolling-navbar qnaSize">
				<div class="column">
					<h3 class="menu-drop-title">온라인 문의</h3>
					<ul>
						<li><a href="${path}/onlineQnA" class="manuli">문의하기</a></li>
						<c:if test="${login.id != null}">
							<li><a href="${path}/qnalist?m_code=${login.m_code}" class="manuli">나의 문의 내역</a></li>
						</c:if>
						<c:if test="${login.id == null}">
							<li><a href="${path}/login" class="manuli">나의 문의 내역</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</li>

		<li class="menuLi"><a class="menuLink" href="${path}/comm">커뮤니티</a>

		</li>






	</ul>








</div>



