
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/header.jsp" %>
<link rel="stylesheet" href="resources/css/workmanage.css" />
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/Semantic-UI-CSS-master/semantic.min.css?ver=1" />
<script src="resources/Semantic-UI-CSS-master/semantic.min.js?ver=1"></script>
<script src="resources/js/bootstrap.js"></script>

<script>
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

$(function() {
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
});
</script>
</head>
<body>
<%@ include file = "../include/menu.jsp" %>
<div class="contents">

<h2 class="title"> 근태기록</h2>
<i class="angle left icon" id="back"></i>
<i id="date"></i>
<i class="angle right icon" id="forward"></i>

<table class="ui single line table">
  <thead>
    <tr>
      <th>날짜</th>
      <th>근태항목</th>
      <th>근로시간</th>
      <th>기타</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>John Lilki</td>
      <td>September 14, 2013</td>
      <td>jhlilk22@yahoo.com</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Jamie Harington</td>
      <td>January 11, 2014</td>
      <td>jamieharingonton@yahoo.com</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Jill Lewis</td>
      <td>May 11, 2014</td>
      <td>jilsewris22@yahoo.com</td>
      <td>Yes</td>
    </tr>
  </tbody>
</table>

<div class="ui basic modal">
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
  </div>
</div>
</body>
</html>