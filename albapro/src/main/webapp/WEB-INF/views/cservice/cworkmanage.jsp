<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/loginCheck.jsp"%>
<meta charset="UTF-8">
<title>프로알바</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/workmanage.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%@ include file = "../include/header.jsp" %>
<script src="resources/js/bootstrap.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 

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
</head>

</head>
<body>
<div class="contents">
<h2 class="title"> 근태기록</h2>
<Br>
<input type="text" class="searchbox" name="searchbox" id="searchbox" placeholder="알바검색"  />
<br><br>
<div class="div_workmanage_emp_table">
	<label class="table_title">직원목록</label>
	<table class="workmanage_emp_table">
	
	<tr>
		<Th>직원이름</Th><Th>휴대번호</Th><Th>입사일</Th><Th>근태기록</Th>
	</tr>
	
	<c:forEach var="list" items="${list}">
	<tr>
		<td>${list.name}</Td><td>${list.phone}</td><td>${list.start_period}</td><Td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">관리</button><Td>
	</tr>
	</c:forEach>
	
	</table>
</div>



<!-- 부트스트랩 modal -->
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <%@ include file = "../cservice/calendar.jsp" %>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


<!-- <div class="div_workmanage_table">
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
		<td>적요</td><td><input type="text"  placeholder="특이사항 작성"/></td>
	</Tr>
	
	<tr>
		<td colspan="2"><input type="button" value="저장" /> <input type="button" value="삭제" /></td>
	</tr>
	</table>
	</div> -->
</div>
</body>
</html>