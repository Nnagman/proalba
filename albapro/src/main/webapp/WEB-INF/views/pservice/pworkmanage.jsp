
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
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="resources/js/jquery.js"></script>
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
<%@ include file = "../include/header.jsp" %>
</head>
<body>
<%@ include file = "../include/menu.jsp" %>
<div class="contents">
<h2 class="title"> 근태기록</h2>
<table class="ui celled table">
  <thead>
    <tr>
      <th>Name</th>
      <th>Status</th>
      <th>Edit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>John</td>
      <td>No Action</td>
      <td class="selectable">
        <a href="#">Edit</a>
      </td>
    </tr>
    <tr>
      <td>Jamie</td>
      <td>Approved</td>
      <td class="selectable">
        <a href="#">Edit</a>
      </td>
    </tr>
    <tr>
      <td>Jill</td>
      <td>Denied</td>
      <td class="selectable">
        <a href="#">Edit</a>
      </td>
    </tr>
    <tr class="warning">
      <td>John</td>
      <td>No Action</td>
      <td class="selectable warning">
        <a href="#">Requires change</a>
      </td>
    </tr>
    <tr>
      <td>Jamie</td>
      <td class="positive">Approved</td>
      <td class="selectable positive">
        <a href="#">Approve</a>
      </td>
    </tr>
    <tr>
      <td>Jill</td>
      <td class="negative">Denied</td>
      <td class="selectable negative">
        <a href="#">Remove</a>
      </td>
    </tr>
  </tbody>
</table>
</div>
</body>
</html>