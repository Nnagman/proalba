
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
/* $(function() {
	var d = new Date();
	var month = d.getMonth() + 1;
	var year = d.getFullYear();
	
	var currentDate = year + "년 " + month + "월 ";
	$("#date").text(currentDate);
	
	$("#back").click(function(){
		month = month-1;
		
		if(month>0){
			currentDate = year + "년 " + month + "월 ";
			$("#date").text(currentDate);
		}else{
			year = year-1;
			month = 12;
			currentDate = year + "년 " + month + "월 ";
			$("#date").text(currentDate);
		}
	});
	
	$("#forward").click(function(){
		month = month+1;
		
		if(month<=12){
			var currentDate = year + "년 " + month + "월 ";
			$("#date").text(currentDate);
		}else{
			year = year+1;
			month = 1;
			var currentDate = year + "년 " + month + "월 ";
			$("#date").text(currentDate);
		}
	});
	
	$("#date").click(function(){
		var searchMonth = d.getMonth()+1 
		var searchYear = d.getFullYear()
		
		$("#year").val(searchYear);
		$("#month").val(searchMonth);
		$('.ui.basic.modal').modal('show');
		
		$('#nextYear').click(function(){
			searchYear = searchYear + 1;
			$("#year").val(searchYear);
		});
		
		$('#lastYear').click(function(){
			searchYear = searchYear - 1;
			$("#year").val(searchYear);
		});
		
		$('#nextMonth').click(function(){
			searchMonth = searchMonth + 1;
			if(searchMonth>12){ searchMonth = 12; }
			$("#month").val(searchMonth);
		});
		
		$('#lastMonth').click(function(){
			searchMonth = searchMonth - 1;
			if(searchMonth<1){ searchMonth = 1; }
			$("#month").val(searchMonth);
		});
		
		$('#search').click(function(){
			year = searchYear; month = searchMonth;
			searchMonth = $('#month').val();
			searchYear = $("#year").val();
			currentDate = searchYear + "년 " + searchMonth + "월 ";
			$("#date").text(currentDate);
		});
	});
}); */
$(function(){
	$("#btn-open-dialog,#dialog-background,#btn-close-dialog").click(function () {
		$("#my-dialog,#dialog-background").toggle();
	});
});
</script>
</head>
<%@ include file = "../include/header.jsp" %>
<style>
/* #dialog-background {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: rgba(0,0,0,.3);
    z-index: 10;
}
#my-dialog {
    display: none;
    position: fixed;
    left: calc( 50% - 160px ); top: calc( 50% - 70px );
	width=750;
	height=750;
    background: #fff;
    z-index: 11;
    padding: 10px;
}
 */
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
<%-- <a href="${path}/psalarydetail?sa_code=${salary.sa_code}" target="blank" id="detail"  
	onclick="window.open(this.href, 'mywin','left=80,top=80,width=750,height=750,toolbar=1,resizable=0')">상세보기</a>
 --%>
<%-- <div class="ui basic modal">
	<table class="ui celled structured table">
  		<tr>
  			<td rowspan="2"><div class="ui transparent input"><input type="text" id="year"/></div></td>
  			<td id="nextYear"><i class="angle up icon"></i></td>
  			<td rowspan="2"><div class="ui transparent input"><input type="text" id="month"/></div></td>
  			<td id="nextMonth"><i class="angle up icon"></i></td>
  		</tr>
  		<tr>
  			<td id="lastYear"><i class="angle down icon"></i></td>
  			<td id="lastMonth"><i class="angle down icon"></i></td>
  		</tr>
  	</table>
  	<div class="actions" id="search"><div class="ui green ok inverted button"> 검색  </div></div> 	
</div>
	<div class="div_pworkmanage_buttonline">
  		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">달력보기</button>
  	</div>
  	
  	  	<!-- 부트스트랩 -->
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
  </div> --%>
</div>

</body>
</html>