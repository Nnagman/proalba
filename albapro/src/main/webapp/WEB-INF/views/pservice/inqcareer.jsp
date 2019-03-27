<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<th class="select" scope="col"><input type="checkbox" id="AllCheck"></th>
				<th class="appDate" scope="col">입사일</th>
				<th class="company" scope="col">회사명</th>
				<th class="endDate" scope="col">퇴사일</th>
				<th class="resume" scope="col">직종</th>
			</tr>
		</thead>
		<tbody>
			
			<tr>
				<td><input type="checkbox" id="AllCheck"></td>
				<td>2018-12-28</td>
				<td>본관300</td>
				<td>~</td>
				<td>학생</td>
			</tr>
			
		</tbody>
		</table>
	</form>
</div>
</body>
</html>