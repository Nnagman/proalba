<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

	<head>
		<script type="text/javascript" src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>
		<title>프로알바</title>
		<link href="resources/css/index.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/css/mdb.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<link href="resources/css/datatables.min.css" rel="stylesheet">
		
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	</head>
	<%@ include file="../include/redirect_p.jsp"%>
	<style>
		html, body, header, .carousel {
			height: 9vh !important;
		}
		
		.he-title {
			display: none !important;
		}
		
		.carousel-inner {
			display: none !important;
		}
		
		header {
			background-image: url("#") !important;
			background-color: #5D5D5D !important;
		}
		
		.p.count {
			margin-top: 0px !important;
		}
		
		p {
			margin-bottom: 0px !important;
		}
		
		.placho-line1{
			margin: 0 !important;	
		}
		
		header{
		height:80px !important;
		}
		
		thead {
		    display: table-header-group;
		    vertical-align: middle;
		    border-color: inherit;
		}
		
		tr {
		    display: table-row;
		    vertical-align: inherit;
		    border-color: inherit;
		}
		
		tbody {
		    display: table-row-group;
		    vertical-align: middle;
		    border-color: inherit;
		}
		
		div.dataTables_filter label{
		float: right;
		margin-right: 40px;
		}
		
		#Example_info{
			display:none;
		}
		
		#Example_paginate{
			float:left;
		}
		
		.navbar{
			padding-right:0 !important;
		}
		
		footer{
			top:300px;
		    position: relative;
		}
		.container{
		text-align: center;
		font-family:'NanumSquareRound', sans-serif !important;
		}
	
	</style>
	<body>
		<%@ include file="../include/header.jsp"%>
		<div class="container">
			<div id="SubContents">
				<h2 style="margin-top: 61px; font-family:'NanumSquareRound', sans-serif !important; font-weight: 800;">근로계약서 목록</h2>
				<br>
				<br>
				<table id="example" class="table" style="width: 100%">
					<thead class="thead-dark">
						<tr>
							<th class="c_date" scope="col">작성일</th>
							<th class="appDate" scope="col">회사명</th>
							<th class="endDate" scope="col">계약시작일</th>
							<th class="resume" scope="col">계약종료일</th>
							<th class="check" scope="col">서명여부</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
						<c:forEach var="contract" varStatus="i" items="${map.list}">
							<tr>
								<td><a href="${path}/vcontract?c_code=${contract.c_code}">${fn:substring(contract.c_date,2,10)}</a></td>
								<td>${contract.work_place}</td>
								<td>${fn:substring(contract.start_period,2,10)}</td>
								<td>${fn:substring(contract.end_period,2,10)}</td>
								<c:if test="${contract.email_check eq '1'}">
								<jsp:useBean id="now" class="java.util.Date" />
								<td><a href="${path}/vcontract?c_code=${contract.c_code}">서명완료</a></td>
								</c:if>
								<c:if test="${contract.email_check eq '0'}">
								<td><a href="${path}/sendWcontract?c_code=${contract.c_code}">서명필요</a></td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	 	<script src="resources/js/servicepage2/popper.min.js"></script>
	 	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
	 	<script src="resources/js/servicepage2/demo.js"></script>                             
	 	<script>
	 		$(document).ready(function() {
	 			$().ready(function() {
		        	$sidebar = $('.sidebar');
		        	$sidebar_img_container = $sidebar.find('.sidebar-background');
		        	$full_page = $('.full-page');
		        	$sidebar_responsive = $('body > .navbar-collapse');
		        
		        	window_width = $(window).width();
		        	fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();
		
		        	if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
		        		if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
		        			$('.fixed-plugin .dropdown').addClass('open');
		        		}
		        	}
		        
		        	$('#example').DataTable( {
		        		columnDefs: [
		        			{
		        				targets: [ 0, 1, 2, 3 ],
		        				order: [ 0, "asc" ]
		        				className: 'mdl-data-table__cell--non-numeric'
		        			}
		        		]
		        	});
		
		        	$('.switch-sidebar-image input').change(function() {
		        		$full_page_background = $('.full-page-background');
		        		$input = $(this);
		        	
		        		if ($input.is(':checked')) {
			            	if ($sidebar_img_container.length != 0) {
			            		$sidebar_img_container.fadeIn('fast');
			            		$sidebar.attr('data-image', '#');
			            	}
			            
							if ($full_page_background.length != 0) {
								$full_page_background.fadeIn('fast');
								$full_page.attr('data-image', '#');
							}
			
			            	background_image = true;
						} else {
			            	if ($sidebar_img_container.length != 0) {
							$sidebar.removeAttr('data-image');
							$sidebar_img_container.fadeOut('fast');
			            	}
			
			            	if ($full_page_background.length != 0) {
			            		$full_page.removeAttr('data-image', '#');
			             		 $full_page_background.fadeOut('fast');
			             	}
			
			            	background_image = false;
			            }
			        });
			
			        $('.switch-sidebar-mini input').change(function() {
			        	$body = $('body');
			        	$input = $(this);
			        	
			        	if (md.misc.sidebar_mini_active == true) {
			            	$('body').removeClass('sidebar-mini');
			            	md.misc.sidebar_mini_active = false;
			            	$('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();
			            } else {
			            	$('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');
			            	setTimeout(function() {
			            		$('body').addClass('sidebar-mini');
			            		md.misc.sidebar_mini_active = true;
			            	}, 300);
			            }
			        	
			        	// we simulate the window Resize so the charts will get updated in realtime.
			        	var simulateWindowResize = setInterval(function() {
			        		window.dispatchEvent(new Event('resize'));
			        	}, 180);
			        	
			        	// we stop the simulation of Window Resize after the animations are completed
			        	setTimeout(function() {
			        		clearInterval(simulateWindowResize);
			        	}, 1000);
			        });
				}); 
		 	});
		</script>
		
		<footer class="page-footer text-center font-small mt-4 wow fadeIn">
		    <!--Call to action-->
		    <!--/.Call to action-->
		    <hr class="my-4">
		    	<!-- Social icons -->
		    	<div class="pb-4">
		    		<i class="fab fa-html5 footer-icon"></i>
					<i class="fab fa-js-square footer-icon"></i>
		        	<i class="fab fa-css3-alt footer-icon"></i>
		      		<i class="fab fa-aws footer-icon"></i>
		      		<i class="fas fa-leaf footer-icon"></i>
		        	<i class="fab fa-android footer-icon"></i>
		    	</div>
		    	<!-- Social icons -->
		    	<!--Copyright-->
		    	<div class="footer-copyright py-3">
		       		© 2019 Copyright:<a href= "${path}"> <img src="${path}/resources/images/weblogo.png" class="footer-logo"  /> </a>
		     
		    	</div>
		    	<!--/.Copyright-->
	    </footer>
	</body>
</html>