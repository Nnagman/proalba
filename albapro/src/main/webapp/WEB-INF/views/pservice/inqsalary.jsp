
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
	
	$('#myModal').on('shown.bs.modal', function () {
		  $('#myInput').focus()
	});
	
	$('.btn btn-default').click(function(e){
		var salarys = JSON.stringify(${salarys});
		var work_place_name = e.currentTarget.id;
		salary.forEach(function(item){
			if(item.work_place_name == work_place_name){
				$('#sal_name').val(item.name);
				$('#sal_work_place_name').val(item.work_place_name);
				$('#sal_basic_salary').val(item.basic_salary);
				$('#sal_total_deduction_amount').val(item.total_deduction_amount);
				$('#sal_actual_salary').val(item.actual_salary);
				$('#sal_year_month').val(item.year_month);
			}
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
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">${salarys[0].work_place_name}</button>
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
				<tr>
					<td id="sal_name">${salarys[0].name}</td>
					<td id="sal_work_place_name">${salarys[0].work_place_name}</td>
					<td id="sal_basic_salary">${salarys[0].basic_salary}</td>
					<td id="sal_total_deduction_amount">${salarys[0].total_deduction_amount}</td>
					<td id="sal_actual_salary">${salarys[0].actual_salary}</td>
					<td id="sal_year_month">${salarys[0].year_month}</td>
					<td>					
					<button  onclick = "document.getElementById ( 'id01'). style.display = 'block'" class = "w3-button w3-black"id="btn-open-dialog">상세보기</button>
					<div id="modalsize"> 
					<%@ include file = "../pservice/psalarydetail.jsp" %>
					</div>
				</tr>
  </tbody>
</table>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <c:forEach var="salary" items="${salarys}">
        	<button type="button" id="${salary.work_place_name}" class="btn btn-default" data-dismiss="modal">
        	${salarys[0].work_place_name}</button>
        </c:forEach>
      </div>
    </div>
  </div>
</body>
</html>