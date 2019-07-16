<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로알바</title>
</head>
<link rel="stylesheet" type="text/css" href="resources/css/inqcareer.css?ver=1">
<link rel="stylesheet" type="text/css" href="resources/css/myqna.css?ver=1">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<%@ include file = "../include/header.jsp" %>
<!-- <link rel="stylesheet" href="resources/Semantic-UI-CSS-master/semantic.min.css?ver=1" />
<script src="resources/Semantic-UI-CSS-master/semantic.min.js?ver=1"></script> -->
</head>
<body>
	<div class="contents">
		<div class="listForm" align="center">
			<h1 class="hh">나의 문의내역</h1>
        	<img src="resources/images/상태.png" class="status_img" id="status_img">
		</div>
		<div class="listForm">
			<!-- //탭메뉴 -->
			<form id="frmList" name="frmList" method="post">
				<table cellspacing="0" summary="경력 상세 목록">
					<thead>
						<tr>
							<th class="quiryType" scope="col">문의유형</th>
							<th class="appDate" scope="col">문의일</th>
							<th class="title" scope="col">제목</th>
							<th class="check" scope="col">답변여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="qna" varStatus="i" items="${qnas}">
						<c:set var="date" value="${fn:split(qna.cs_code, '/')}" />
							<tr>
								<td>${qna.service_type}</td>
								<td>${fn:substring(date[2], 0, 10)}</td>
								<td><a class="title" href="${path}/viewQnA?cs_code=${qna.cs_code}">
								${qna.title}</a></td>
								<td>
									<c:if test="${qna.whether_response == '1'}">답변완료</c:if>
									<c:if test="${qna.whether_response == '0'}">답변대기중</c:if>
								</td>
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
	<script>
		$(document).ready(function() {
		var table_w = $("#tablebox").width();
		$("#status_img").attr('width', table_w);
		});
	</script>
</body>
</html>