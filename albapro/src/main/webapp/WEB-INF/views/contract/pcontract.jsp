<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="resources/css/inqcareer.css?ver=1">
<%@ include file = "../include/header.jsp" %>
<link rel="stylesheet" href="resources/Semantic-UI-CSS-master/semantic.min.css?ver=1" />
<script src="resources/Semantic-UI-CSS-master/semantic.min.js?ver=1"></script>
</head>
<body>
	<div class="contents">
		<div class="listForm" align="center">
			<p class="count">
				나의 경력: <span>총 <strong>0</strong>건 
				</span>
			</p>
		</div>
		<div class="listForm">
			<!-- //탭메뉴 -->
			<form id="frmList" name="frmList" method="post">
				<table cellspacing="0" summary="경력 상세 목록">
					<thead>
						<tr>
							<th class="appDate" scope="col">회사명</th>
							<th class="endDate" scope="col">계약시작일</th>
							<th class="resume" scope="col">계약종료일</th>
							<th class="check" scope="col">서명여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="contract" varStatus="i" items="${contracts}">
							<tr>
								<td>${contract.work_place_name}</td>
								<td>${contract.start_period}</td>
								<td>${contract.end_period}</td>
								<c:if test="${contract.email_check eq '1'}">
								<jsp:useBean id="now" class="java.util.Date" />
								<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today"/>
								<td><a href="${path}/downloadContract?fileName=${today}.pdf&downName=${contract.fileName}">서명완료</a></td>
								</c:if>
								<c:if test="${contract.email_check eq '0'}">
								<td><a href="${path}/checkContract?link=${contract.fileName}">서명필요</a></td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="ui mini horizontal divided list">
					<c:if test="${pageMaker.prev}">
						<div class="item">
							<div class="content">
								<div class="header">
									<a href="inqcareer?page=${pageMaker.startPage - 1}">이전</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}" var="idx">
						<div class="item">
							<div class="content">
								<div class="header">
									<a href="inqcareer?page=${idx}">${idx}</a>
								</div>
							</div>
						</div>
					</c:forEach>
					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<div class="item">
							<div class="content">
								<div class="header">
									<a href="inqcareer?page=${pageMaker.endPage + 1}">다음</a>
								</div>
							</div>
						</div>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>