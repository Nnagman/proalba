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

<script src="resources/js/addjobopening.js?ver=3"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/bootstrap.js"></script>



</head>



<style>
.row{
text-align:center;
}

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

<li class="nav-item active">
            <a class="nav-link" href="cserAddJobopening_free?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 등록
            </a>
          </li>


		<li class="nav-item">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
              직원 관리
            </a>
          </li>

          <li class="nav-item ">
            <a class="nav-link" href="${path}/proalba/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li>
        
        </ul>
      </div>
    </div>
			<!-- End of Sidebar -->
		</div>
		
		<!-- 컨테이너 시작 -->
		<div class="content">
		<div class="pser-header"><%@ include file="cserNavHeader.jsp"%>
			</div>
		<div class="pser-con">
		  <div class="container-fluid">
		  <div class="row">
		  <div class="col-md-12">
          <div class="card">
            <div class="card-body">
              
               
                
           	
						<div class="row">
		 		 <div class="col-md-12">
		 		 
          			<div class="addjob-1">
           			 <h2>어떤알바생을 원하세요?</h2>
           			 
           			   			
           			직종/업무: <input type="text" class="jobchoice"/> <button>전체 카테고리</button><br><br>
           			경력여부: <input type="checkbox" class="careerchoice1">신입 
           					<input type="checkbox" class="careerchoice2">경력
           					<input type="checkbox" class="careerchoice3">경력무관
           					<br>
           					<br>
           			고용형태:	<input type="checkbox" class="jobchoice1">정규직
           					<input type="checkbox" class="jobchoice2">계약직
           					<input type="checkbox" class="jobchoice3">아르바이트	<br><br>
           			</div><br>
         
         
           		
  
           			<hr>
           			 </div>
           			 </div>
           			 
           			  <div class="col-md-12">
		 		 
          			<div class="addjob-2">
           			
           			 
           			 	모집요강(*)필수입력 사항 입니다.
           			 	<div class="Recruitmentrule">
           			 	
           			 	<div class="recruitper">	
           			 	 모집인원(*):  <input type="text" class="recruitper-txt"/>
									<input type="radio" class="recruitper-radio1"/>0명
									<input type="radio" class="recruitper-radio2"/>00명     
						</div>
           		      			 	
           			 
           			 	<div class="assignedtask">	
           			 	담당업무: <input type="text" class="assignedtask-txt" placeholder="ex)상품진열,재고정리 등">
           				
           				</div>
           				
           				<div class="Recruitment-time">
           					모집시작일: 오늘날짜<br> 	
           			 		
           			 		모집종료일 : <input type="text" class="Recruitment-endtime" placeholder="ex)2019-05-08">
           				
           				</div>
           		
           					
           			
           			 
           		
           			
           			</div><br>
           			
           		
           			
           		
  
           			<hr>
           			 </div>
           			 </div>
           			 
           			   <div class="col-md-12">
		 		 
          			<div class="addjob-3">
           			
           			 
           			 	자격조건 우대조건
           			 	<div class="preconditions">
           			 	
           				<div class="recruitper">	
           			 	 학력(*):<input type="checkbox" class="preconditions1"/>무관
								<input type="checkbox" class="preconditions2"/>제한
								<select>
									<option>고등학교졸업이상</option>
									<option>대학졸업(2,3년)이상</option>
									<option>대학졸업(4년)이상</option>
									<option>석사졸업이상</option>
									<option>박사졸업이상</option>
									<option>졸업예정</option>
								</select><br>
							기타 학력사항 <input type="text" class="preconditions-Other-txt"/>
						</div>
           		      			 	
           			 
           			 	<div class="Major">	
           			 	전공/학과: <input type="text" class="preconditions-Other-major" placeholder="ex)컴퓨터 정보계열 등">
           				
           				</div>
           				
           				<div class="preterms-txt">
           					우대조건 <br>
           					<textarea></textarea><br> 	
           			 
           				</div>
           		
 
           			
           			</div>
           		
           			
           		
  
           			<hr>
           			
           			 </div>
           			 </div>
           			 
           			<!--  ------------------------------------------------- -->
           				   <div class="col-md-12">
		 		 
          			<div class="addjob-4">
           			
           			 
           				근무조건
           			 	<div class="workcon">
           			 	
           				<div class="workcon-salary">	
           			 	 급여(*):<input type="text" class="salary-txt"/>원
						</div>	
           		      	<div class="workcon-map">
           		      		근무지역 <br>
							맵점여 
           		      	</div>		
           		      		
           			</div>
           		
           			
           		
  
           			<hr>
           			
           			 </div>
           			 </div>
           			 
           			 <!--  ------------------------------------------------- -->
           				   <div class="col-md-12">
		 		 
          			<div class="addjob-5">
           			
           			 
           				접수  방법
           			 	<div class="appperiod">
           			 	
           				<div class="appperiod-how">
           				<input type="checkbox" class="appperiod-online">온라인 접수	
           			 	<input type="checkbox" class="appperiod-tel">전화 접수	
           			 	<input type="checkbox" class="appperiod-Visit">방문 접수	
           			 	
						</div>	
						
						<div class="appperiod-hidden-tel">
						
						
						</div>
						
						<div class="appperiod-hidden-online">
						
						
						</div>
           		      
           		      
           		      		
           			</div>
           		
           			
           		
  
           			<hr>
           			
           			 </div>
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
    <!-- <script src="resources/js/servicepage2/bootstrap-material-design.min.js"></script>
      <script src="resources/js/servicepage2/perfect-scrollbar.jquery.min.js"></script>
        <script src="resources/js/servicepage2/moment.min.js"></script>
          <script src="resources/js/servicepage2/sweetalert2.js"></script>
            <script src="resources/js/servicepage2/jquery.validate.min.js"></script>
              <script src="resources/js/servicepage2/jquery.bootstrap-wizard.js"></script>
                <script src="resources/js/servicepage2/bootstrap-selectpicker.js"></script>
                  <script src="resources/js/servicepage2/bootstrap-datetimepicker.min.js"></script> -->
                    <script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
             <!--          <script src="resources/js/servicepage2/bootstrap-tagsinput.js"></script>
                        <script src="resources/js/servicepage2/jasny-bootstrap.min.js"></script> -->
                        <!--   <script src="resources/js/servicepage2/fullcalendar.min.js"></script> -->
                       <!--      <script src="resources/js/servicepage2/jquery-jvectormap.js"></script>
                              <script src="resources/js/servicepage2/nouislider.min.js"></script>
                                 <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
                                   <script src="resources/js/servicepage2/arrive.min.js"></script>
                                      <script src="resources/js/servicepage2/chartist.min.js"></script>
                                       <script src="resources/js/servicepage2/bootstrap-notify.js"></script>
                                           <script src="resources/js/servicepage2/material-dashboard.js"></script> -->
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
      

        /*  $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        }); */

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
  
  

 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</body>
</html>