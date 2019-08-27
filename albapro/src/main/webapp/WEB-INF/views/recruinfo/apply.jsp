<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>프로알바</title>
  <link href="resources/css/resume.css" rel="stylesheet">

  <!-- Custom fonts for this template-->

  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

  <!-- Custom styles for this template-->
 <!--  <link rel="stylesheet" href="resources/css/bootstrap.css" /> -->
  <link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
  <link href="resources/css/servicepage/demo.css" rel="stylesheet">
    <link href="resources/css/servicepage/pservicepagecus.css" rel="stylesheet">
 

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script> 

 
 <link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" /> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script> 



</head>
<style>
	.odd { background-color:#EAEAEA; }

	.Even { background-color : white; }  
</style>

<body>
	<div class="wrapper">
	
			<div class="pser-con">
				<div class="container-fluid">
					<div class="row">
				
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">제출 이력서 선택</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<c:forEach var="row" items="${map.list}" >
										<c:set var = "idx" value = "${fn:indexOf(row.r_code, '/')}" />
										<c:set var = "length" value = "${fn:length(row.r_code)}" />
										<c:set var = "r_date" value = "${fn:substring(row.r_code, idx+1, length)}" />
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">
														작성일: ${row.r_date}
													</h5>
													<br>
													<h5 class="card-title">
														이력서 제목: ${row.title}
													</h5>
													<br>
													<a href="viewResume?r_code=${row.r_code}&&id=${login.id}" target="_blank" class="btn btn-primary card-btn">이력서 수정 및 보기</a>
													<a href="applyResume?r_code=${row.r_code}&&id=${login.id}&&n_code=${map.n_code}" class="btn btn-primary card-btn apply">이력서 제출</a>
												</div>
											</div>
										</c:forEach>							
									</div>
								</div>
					
					</div>
				</div>
			</div>
		</div>
	</div> 
	
	<script>
		$(document).ready(function(){
			$(".apply").click(function(){
				alert("제출완료");
			});
		});
	</script>
	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
	<script src="resources/js/servicepage2/popper.min.js"></script>
	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
	<script src="resources/js/servicepage2/demo.js"></script>
</body>
</html>