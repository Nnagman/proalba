<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--jQuery UI CSS파일 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>   
 <link rel="stylesheet" href="resources/css/workmanage.css" /> 




</head>

<script>
$(function() {
	var d = new Date();
	 var currentDate = d.getFullYear() + "년 " + ( d.getMonth() + 1 ) + "월 " + d.getDate() + "일";
	 var result = document.getElementById("time-result");
     result.innerHTML = currentDate;
    $( "#testDatepicker" ).datepicker({
    });
    
    $( "#testDatepicker2" ).datepicker({
    });
});
</script>



<%@ include file = "../include/header.jsp" %>



<body>
<%@ include file = "../include/menu.jsp" %>


<div class="contents">

<h2 class="title"> 근태기록</h2>
<Br>
<input type="text" class="searchbox" name="searchbox" id="searchbox" placeholder="알바검색"  />
<br><br>
<label class="table_title">직원목록</label>
<div class="div_workmanage_emp_table">
	
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
		<td>입력일자</td><td><p id="time-result"></p></td>
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
		<td>기간</td><td><input type="text" id="testDatepicker" size="8px">~<input type="text" id="testDatepicker2" size="8px"></td>
	</Tr>
	
	<Tr>
		<td>근태일수</td><td><input type="Text" size="10px" name="workmanage_day" id="workmanage_day" />일</td>
	</Tr>
	
	<Tr>
		<td>금액(수당)</td><td><input type="text"  name="workmanage_pluspay" id="workmanage_pluspay"  placeholder="추가수당이 있으면 입력"/></td>
	</Tr>
	
	<Tr>
		<td class="bottom_border">적요</td><td><input type="text"  placeholder="특이사항 작성"/></td>
	</Tr>
	
	<tr>
		<td colspan="2"><input type="button" value="저장" /> <input type="button" value="삭제" /></td>
	</tr>
	</table>
	</div>
</div>
<%@ include file = "../include/footer.jsp" %>
</body>
</html>