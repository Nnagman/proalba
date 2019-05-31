<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Swefwefgw  sdfrf sdd </title>

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
	<div class="div-sidebar">
	 <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="/proalba" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
           <li class="nav-item ">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
              직원 관리
            </a>
          </li>
       <%--    <li class="nav-item">
            <a class="nav-link" href="pserSalary?id=${login.id}">
              <i class="material-icons">content_paste</i>
              
              급여 관리
            </a>
          </li> --%>
          <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li>
        
        </ul>
      </div>
    </div>
			<!-- End of Sidebar -->
		</div>
		<div class="content">
			<div class="pser-header"><%@ include file="cserNavHeader.jsp"%>
			</div>
			<div class="pser-con">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">근로계약서 입력 폼</h4>
									<p class="card-category">
										입력한 내용이 근로계약서에 쓰입니다.
									</p>
								</div>
								<div class="card-body">
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="pser-footer"><%@ include file="../servicepage/pserfooter.jsp"%></div>
		</div>

	</div>
	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
   <script src="resources/js/servicepage2/popper.min.js"></script>
   <script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
   <script src="resources/js/servicepage2/demo.js"></script>
</body>
</html>