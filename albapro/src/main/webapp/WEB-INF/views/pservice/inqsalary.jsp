
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content = "width = device-width, initial-scale = 1" >  
<link rel = "stylesheet" href = "https://www.w3schools.com/w3css/4/w3.css" >  
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/workmanage.css" />
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="resources/js/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<script src="resources/js/bootstrap.js"></script>
<script src='//code.jquery.com/jquery.min.js'></script>

<script>
$(function(){
	$("#btn-open-dialog,#dialog-background,#btn-close-dialog").click(function () {
		$("#my-dialog,#dialog-background").toggle();
	});
});
</script>
</head>
<%@ include file = "../include/header.jsp" %>
<style>
 #modalsize {
 	width=750;
	height=750;
 }
</style>
</head>
<body>
<div class="contents">

<h2 class="title"> 급여기록</h2>
<i class="angle left icon" id="back"></i>
<i id="date"></i>
<i class="angle right icon" id="forward"></i>

<table class="ui single line table">
  <thead>
    <tr>
      <th>이름</th>
      <th>보낸이</th>
      <th>지급총액</th>
      <th>공제총액</th>
      <th>실지급액</th>
      <th>지급일자</th>
      <th>상세보기</th>
    </tr>
  </thead>
  <tbody>
		<c:forEach var="salary" varStatus="i" items="${salarys}">
				<tr>
					<td>${salary.name}</td>
					<td>${salary.work_place_name}</td>
					<td>${salary.basic_salary}</td>
					<td>${salary.total_deduction_amount}</td>
					<td>${salary.actual_salary}</td>
					<td>${salary.year_month}</td>
					<td>					
					<button  onclick = "document.getElementById ( 'id01'). style.display = 'block'" class = "w3-button w3-black"id="btn-open-dialog">상세보기</button>
					<div id="modalsize"> 
					<%@ include file = "../pservice/psalarydetail.jsp" %>
					</div>
				</tr>
		</c:forEach>
  </tbody>
</table>
</div>

</body>
</html>