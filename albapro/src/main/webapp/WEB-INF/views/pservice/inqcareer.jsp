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
</head>
<body>
<%@ include file = "../include/menu.jsp" %>
<div class="contents">
<div class="listForm" align="center">
	<p class="count">나의 경력: <span>총 <strong>0</strong>건</span></p>

<div class="listForm">
	<!-- //탭메뉴 -->
	<form id="frmList" name="frmList" method="post">
		<table cellspacing="0" summary="경력 상세 목록" >
		<thead>
			<tr>
				<th class="appDate" scope="col">입사일</th>
				<th class="company" scope="col">회사명</th>
				<th class="endDate" scope="col">퇴사일</th>
				<th class="resume" scope="col">직종</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="career" varStatus="i" items="${careers}">
				<tr>
					<td>${career.appDate}</td>
					<td>${career.company}</td>
					<td>${career.endDate}</td>
					<td>${career.occupation}</td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		<div class="box-footer">
			<div class="text-center">
        		<ul class="pagination">
            		<c:if test="${pageMaker.prev}">
                		<li><a href="inqcareer?page=${pageMaker.startPage - 1}">이전</a></li>
            		</c:if>
            		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                		<li <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
                    		<a href="inqcareer?page=${idx}">${idx}</a>
                		</li>
            		</c:forEach>
            		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                		<li><a href="inqcareer?page=${pageMaker.endPage + 1}">다음</a></li>
            		</c:if>
        		</ul>
    		</div>
		</div>
	</form>
</div>
<<<<<<< HEAD
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git

<%@ include file = "../include/footer.jsp" %>
=======
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
</body>
</html>