<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/workmanage.css" />
</head>
<%@ include file = "../include/header.jsp" %>
</head>
<body>
<%@ include file = "../include/menu.jsp" %>
<div class="contents">
<h2 class="title"> 근태기록</h2>
<Br>
<input type="text" class="searchbox" name="searchbox" id="searchbox" placeholder="알바검색"  />
<br><br>
<div class="div_workmanage_emp_table">
	<label class="table_title">직원목록</label>
	<table class="workmanage_emp_table">
	
	<tr>
		<Th>check</Th><Th>구분</Th><Th>사원번호</Th><Th>성명</Th><Th>직위</Th><Th>근태기록</Th>
	</tr>
	
	<tr>
		<Td><input type="checkbox" id="workmanage_check" /></Td><Td>(알바 구분)</Td><Td>(사원아이디)</Td><td>(알바이름)</Td><Td>(알바직위)</Td><Td>(근태기록)</Td>
	</tr>
	
	<tr>
		<Td><input type="checkbox" id="workmanage_check" /></Td><Td>(알바 구분)</Td><Td>(사원아이디)</Td><Td>(알바이름)</Td><Td>(알바직위)</Td><Td>(근태기록)</Td>
	</tr>
	
	<tr>
		<Td><input type="checkbox" id="workmanage_check" /></Td><Td>(알바 구분)</Td><Td>(사원아이디)</Td><Td>(알바이름)</Td><Td>(알바직위)</Td><Td>(근태기록)</Td>
	</tr>
	
	<tr>
		<Td><input type="checkbox" id="workmanage_check" /></Td><Td>(알바 구분)</Td><Td>(사원아이디)</Td><Td>(알바이름)</Td><Td>(알바직위)</Td><Td>(근태기록)</Td>
	</tr>
	
	</table>
</div>

<div class="div_workmanage_table">
	<table class="workmanage_table">
	<Tr>
		<td>입력일자</td><td>날짜들어감</td>
	</Tr>
	
	<Tr>
		<td>근태항목</td>
		<td>
		<select>
		<option>외근</option>
		<option>지각</option>
		<option>조퇴</option>
		<option>대타</option>
		<option>연장근무</option>
		<option>야간근무</option>
		</select>
		</td>
	</Tr>
	
	<Tr>
		<td>기간</td><td>날짜선택 api</td>
	</Tr>
	
	<Tr>
		<td>근태일수</td><td><input type="Text" size="10px" name="workmanage_day" id="workmanage_day" />일</td>
	</Tr>
	
	<Tr>
		<td>금액(수당)</td><td><input type="text"  name="workmanage_pluspay" id="workmanage_pluspay"  placeholder="추가수당이 있으면 입력"/></td>
	</Tr>
	
	<Tr>
		<td>적요</td><td><input type="text"  placeholder="특이사항 작성"/></td>
	</Tr>
	
	<tr>
		<td colspan="2"><input type="button" value="저장" /> <input type="button" value="삭제" /></td>
	</tr>
	</table>
	</div>
</div>
</body>
</html>