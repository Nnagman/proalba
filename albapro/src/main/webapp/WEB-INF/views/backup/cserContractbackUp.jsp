<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
  <title>프로알바</title>

  <!-- Custom fonts for this template-->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

  <!-- Custom styles for this template-->
  <link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
  <link href="resources/css/servicepage/demo.css" rel="stylesheet">

</head>
<style>
.content{
height: 100%;
    max-height: 100%;
        position: relative;
    float: right;
    width: calc(100% - 260px);
    transition: 0.33s, cubic-bezier(0.685, 0.0473, 0.346, 1);
}
    
.cser-con{
position:relative;
margin-top:70px;
}
.fluid2{
margin-top:100px;
}

.fluid-row{
margin-top:20px;
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
        <a href="/" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<li class="nav-item  ">
            <a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 
            </a>
          </li>
		
		
		
		    <li class="nav-item">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}&n_code=">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
		<li class="nav-item active">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 목록
            </a>
          </li>
       
          <li class="nav-item">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
              직원 관리
            </a>
          </li>
        <%--   <li class="nav-item">
            <a class="nav-link" href="pserSalary?id=${login.id}">
              <i class="material-icons">content_paste</i>
              급여 관리
            </a>
          </li> --%>
          <%-- <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li> --%>
        
        </ul>
      </div>
    </div>
<!-- End of Sidebar -->
	  </div>
      <div class="content">
         <div class="cser-header"><%@ include file="../cservicepage/cserNavHeader.jsp"%>
         </div>
         <div class="cser-con">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-12">
                     <div class="card">
                        <div class="card-header card-header-primary">
                           <h4 class="card-title ">전자근로 계약서 목록</h4>
                           <p class="card-category">
                              	전자 근로 계약서 목록 입니다. 

                           </p>
                        </div>
                        <div class="card-body">
                           <div class="table-responsive">
                              <table id="example" class="mdl-data-table" style="width: 100%">
                               <thead>
						<tr>
							<th class="appDate" scope="col">회사명</th>
							<th class="endDate" scope="col">계약시작일</th>
							<th class="resume" scope="col">계약종료일</th>
							<th class="check" scope="col">서명여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="contract" varStatus="i" items="${map.list}">
							<tr>
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
                     </div>
                  </div>

               </div>
            </div>
         </div>
         <div class="cser-footer"><%@ include file="../servicepage/pserfooter.jsp"%></div>
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
            	"order": [[ 2, "dedc" ]],
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
      
      $(function(){
          var responseMessage = "<c:out value="${message}" />";
          if(responseMessage != ""){
              alert(responseMessage)
          }
      }) 
    });
  </script>



 
</body>
</html>