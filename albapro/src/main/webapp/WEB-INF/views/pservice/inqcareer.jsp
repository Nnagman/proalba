<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file = "../include/header.jsp" %>
</head>
<body>
<%@ include file = "../include/menu.jsp" %>

<<<<<<< HEAD


<h2> ${message }</h2>
=======
<div class="listForm">
	<p class="count">나의 온라인 지원 현황 : <span>총 <strong>0</strong>건</span></p>
	<!-- //탭메뉴 -->
	<form id="frmList" name="frmList" method="post" wtx-context="2B3EBC26-F43D-4483-8405-1DD9BE9FADD7">
		<table cellspacing="0" summary="온라인 지원현황 상세 목록">
		<thead>
			<tr>
				<th class="select" scope="col"><input type="checkbox" id="AllCheck" onclick="getCheckAll(document.frmList.idx_online, this.checked)" wtx-context="D3F8FC8E-14DF-48F3-AF54-40A8B3A086CF"></th>
				<th class="appDate" scope="col">지원일</th>
				<th class="company" scope="col">회사명/업무내용</th>
				<th class="endDate" scope="col">모집마감일</th>
				<th class="resume" scope="col">지원 이력서</th>
				<th class="readDate" scope="col">열람일</th>
			</tr>
		</thead>
		<tbody>
			
			<tr>
				<td colspan="6" align="center">최근 3개월 이내에 온라인 지원한 내역이 없습니다.</td>
			</tr>
			
		</tbody>
		</table>
	</form>
</div>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git

<%@ include file = "../include/footer.jsp" %>
</body>
</html>