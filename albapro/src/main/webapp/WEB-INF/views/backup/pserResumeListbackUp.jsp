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
	<div class="div-sidebar">
	 <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="/" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
			<li class="nav-item">
          		<a class="nav-link" href="pserworkList?id=${login.id}">
					<i class="material-icons">dashboard</i>
					알바목록
				</a>
			</li>
			<li class="nav-item ">
            	<a class="nav-link" href="contract?id=${login.id}">
					<i class="material-icons">dashboard</i>
            	 	전자근로 계약서
				</a>
			</li>
			<li class="nav-item ">
            	<a class="nav-link" href="inqcareer?id=${login.id}">
				<i class="material-icons">library_books</i>
				경력 관리
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="listResume?id=${login.id}">
				<i class="material-icons">library_books</i>
				이력서 관리
            	</a>
            </li>
        </ul>
        <div class="nav-itemsub">
        	<ul>
        		<li><a class="nav-link" href="listResume?id=${login.id}"> 이력서 목록 </a></li>
        		<li><a class="nav-link" href="writeResume?id=${login.id}"> 이력서 작성 </a></li>
        	</ul>
        </div>
      </div>
    </div>
			<!-- End of Sidebar -->
		</div>
		<div class="content">
			<%-- <div class="pser-header"><%@ include file="pserNavHeader.jsp"%> --%>
			</div>
			<div class="pser-con">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">나의 이력서 조회</h4>
									<p class="card-category">
										${login.name} 님의 이력서목록을 볼 수 있습니다.
									</p>
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
													<a href="viewResume?r_code=${row.r_code}&&id=${login.id}" class="btn btn-primary card-btn">이력서 수정 및 보기</a>
													<a href="deleteResume?r_code=${row.r_code}&&id=${login.id}" class="btn btn-primary card-btn">이력서 삭제</a>
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
			<div class="pser-footer"><%@ include file="../servicepage/pserfooter.jsp"%></div>
		</div>

	</div> 
	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
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
                        targets: [ 0, 1, 2 ],
                        className: 'mdl-data-table__cell--non-numeric'
                    }
                ]
            } );
            
            $('table.mdl-data-table tbody tr:odd').addClass('odd');

            $('table.mdl-data-table tbody tr:even').addClass('Even');

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
  
  

 
</body>
</html>