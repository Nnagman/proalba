<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>



<script type="text/javascript"
	src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<meta name="description" content="">
<meta name="author" content="">
<title>프로알바</title>


<link rel="stylesheet" href="resources/css/recruinfo/job.css">
<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css">
<link rel="stylesheet" href="resources/css/recruinfo/sub.css">
<link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/mdb.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/datatables.min.css" rel="stylesheet">




<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>




<script type="text/javascript" src="resources/js/recruinfo/test7.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test8.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test9.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test10.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test11.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test12.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test13.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test14.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test15.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test16.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test17.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test18.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test19.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test20.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
<script type="text/javascript"
	src="resources/js/recruinfo/recruinfoCus.js"></script>







</head>

<style>
body{
padding: 0 !important;
}
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
	height: 80px !important;
}

.recruinfo-title {
	text-align: center;
	margin-top: 50px;
}

.recruinfo-title-p {
	font-weight: 800;
}

.p.count {
	margin-top: 0px !important;
}

p {
	margin-bottom: 0px !important;
}

#JobCount div p.count {
	margin: 0 0 0 0 !important;
}

.jobSearch dl .data .tabForm li a {
	height: 34px !important;
	padding-top: 5px !important;
	vertical-align: middle !important;
	margin: 0;
}

.jobSearch dl .content .value span {
	height: 23px !important;
}

.placho-line1 {
	margin: 0 !important;
}

.recruinfo-list {
	width: 100%;
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

.table_thead {
	padding: 9px 0 10px;
	padding: 11px 0 8px\0;
	padding-left: 15px;
	line-height: 1;
	color: #666a5b;
	background-color: #f2f2f2;
	border: 0px solid !important;
	border-bottom: 1px solid #b5b5b5 !important;
}

.recruinfo-list table tr td {
	padding: 12px 0;
	line-height: 1;
	text-align: left;
	color: #474747;
	border: 0px solid !important;
	border-bottom: 1px solid #e4e4e4 !important;
	padding-left: 15px;
}

.recruinfo-list table tr td.local {
	width: 13rem;
	padding-left: 15px;
}

div.dataTables_filter label {
	float: right;
	margin-right: 40px;
}

.jobcho-line1 {
	text-align: center;
}

.company {
	display: block;
	height: auto;
	padding: 2px 0 6px !important;
	font-size: 13px;
	background: none !important;
	color: #0075ab;
}

.recruinfo-list .title a span {
	position: relative;
	overflow: hidden;
	font-family: tahoma;
	line-height: 12px;
	vertical-align: top;
	white-space: nowrap;
	cursor: pointer;
	text-align: left;
}

#Example_info {
	display: none;
}

#Example_paginate {
	float: left;
}

.navbar {
	padding-right: 0 !important;
}

footer {
	top: 400px;
	position: relative;
}

.table-responsive {
	margin: 10px 0 0 0;
}

.cho_woPlace {
	margin: 0 0 10px 0;
	cursor: pointer;
}

.cho_woPlace:hover {
	font-size: 20px;
}
</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">개인 급여 관리</h2>
		</div>
		<br>
		<br>

		<!-- 		<div id="JobCount">
			<div class="all">
				<p class="title1">전체 채용공고</p>
				<p class="count">
				</p>
			</div>


		</div>
 -->
		<div id="SubContents">

			<!-- Job Count -->

			<!-- //Job Count -->

			<!-- 상단검색 S//-->


			<input type="hidden" id="WsSrchKeywordWord" name="WsSrchKeywordWord"
				value=""> <input type="hidden" id="hidschContainText"
				name="hidschContainText" value=""> <input type="hidden"
				id="hidWsearchInOut" name="hidWsearchInOut" value="">
			<!-- base hidden parameter -->
			<input type="hidden" id="hidSort" name="hidSort" value=""> <input
				type="hidden" id="hidSortOrder" name="hidSortOrder" value="">
			<input type="hidden" id="hidSortDate" name="hidSortDate" value="">
			<input type="hidden" id="hidListView" name="hidListView" value="LIST">
			<input type="hidden" id="hidSortCnt" name="hidSortCnt" value="50">
			<input type="hidden" id="hidSortFilter" name="hidSortFilter"
				value="Y"> <input type="hidden" id="hidJobKind"
				name="hidJobKind" value=""> <input type="hidden"
				id="hidJobKindMulti" name="hidJobKindMulti" value=""> <input
				type="hidden" id="page" name="page" value="1"> <input
				type="hidden" id="hidSearchyn" name="hidSearchyn" value="N">
			<input type="hidden" id="strAreaMulti" name="strAreaMulti" value="">
			<input type="hidden" id="schtext" name="schtext" value="">

			<div class="jobSearch" id="JobSearch">


				<!-- 기본검색 -->


				<div class="placho-line1">
					검색: <input type="text" class="plachoice" id="plachoice"
						onchange="plasearch(this.value)" /> <i class="fas fa-search"></i>

					<button type="button" class="btn btn-primary placho-btn"
						data-toggle="modal" onclick="placho()" data-target="#ExampleModal">
						사업장 선택</button>
				</div>

			</div>


			<!-- 수정할곳 -->




			<div class="card-header card-header-primary">
				<h4 class="card-title ">급여 관리</h4>
				<p class="card-category">
					${login.name} 님의 근태를 볼수 있습니다.

					<!-- 
										달력보기 버튼
										<i class="material-icons calicon" data-toggle="modal" data-target="#myModal">달력보기 calendar_today</i>  -->
				</p>
			</div>


			<table id="Example" class="mdl-data-table table" style="width: 100%">
				<thead class="thead-dark">
					<tr>

						<th class="th-sm">사업 장</th>
						<th class="th-sm">총 근로시간</th>
						<th class="th-sm">지급 총액</th>
						<th class="th-sm">공제 총액</th>
						<th class="th-sm">실 지급액</th>
						<th class="th-sm">지급일자</th>
						<th class="th-sm">상세보기</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="salary" items="${map.list}" varStatus="status">
						<tr>

							<td>${salary.work_place}</td>
							<td>${salary.work_hours }시간${salary.work_minute }분</td>
							<td>${salary.basic_salary}</td>
							<td>${salary.total_deduction_amount}</td>
							<td>${salary.actual_salary}</td>
							<c:set var="sa_code" value="${fn:split(salary.sa_code, '/')}" />
							<td>${sa_code[1]}</td>
							<td><input type="hidden" value="${status.index}" /> <i
								class="material-icons searchIcon" data-toggle="modal"
								data-target="#myModal" id="${salary.sa_code}">search</i></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>





			<!-- 수정할곳 -->




		</div>

	</div>


	<footer class="page-footer text-center font-small mt-4 wow fadeIn">

		<!--Call to action-->

		<!--/.Call to action-->

		<hr class="my-4">

		<!-- Social icons -->
		<div class="pb-4">

			<i class="fab fa-html5 footer-icon"></i> <i
				class="fab fa-js-square footer-icon"></i> <i
				class="fab fa-css3-alt footer-icon"></i> <i
				class="fab fa-aws footer-icon"></i> <i
				class="fas fa-leaf footer-icon"></i> <i
				class="fab fa-android footer-icon"></i>
		</div>
		<!-- Social icons -->

		<!--Copyright-->
		<div class="footer-copyright py-3">
			© 2019 Copyright:<a href="${path}"> <img
				src="${path}/resources/images/weblogo.png" class="footer-logo" />
			</a>

		</div>
		<!--/.Copyright-->

	</footer>







	<!-- Modal 지역 -->
	<div class="modal fade" id="ExampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">사업장 선택</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<c:forEach var="salary" items="${map.list}" varStatus="status">
						<tr>
							<td><p class="cho_woPlace" data-dismiss="modal">${salary.work_place}</p></td>
						</tr>
					</c:forEach>
				</div>

			</div>
		</div>
	</div>


	<!-- 부트스트랩 -->
	<!-- 부트스트랩 modal -->
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
       <script src="resources/js/bootstrap.js"></script>
      <!-- Modal content  -->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">출근 시간</h4>
        </div>
        <div class="modal-body">

   			<table class="ui single line table">
      			<thead>
         			<tr>
            			<th>급여</th><th>금액</th><th>공제</th><th>금액</th>
         			</tr>
      			</thead>
      			<tbody>
      				<tr>
            			<th>기본급</th>
            			<td id="basic_salary">${salary.basic_salary}</td>
             			<th>국민연금</th>
            			<td id="national_pension_cost">${salary.national_pension_cost}</td> 
            		</tr>
         			<tr>
            			<th>식비</th>
            			<td id="food_expenses">${salary.food_expenses}</td>
            			<th>건강보험</th>
            			<td id="health_insurance_cost">${salary.health_insurance_cost}</td>
            		</tr>
         			<tr>      
            			<th>교통비</th>
            			<td id="transportation_fee">${salary.transportation_fee}</td>
            			<th>고용보험</th>
            			<td id="employment_insurance_cost">${salary.employment_insurance_cost}</td>
            		</tr>
            		<tr>
            			<th>초과근로수당</th>
            			<td id="additional_extended">${salary.additional_extended}</td>
            			<td></td>
            			<td></td>
            		</tr>
            		<tr>
            			<th>야간수당</th>
            			<td id="additional_night">${salary.additional_night}</td>
            			<td></td>
            			<td></td>
            
      			</tbody>
      		</table >
      		<table class="ui single line table">
      			<thead>
      				<tr>
      					<th>총 급여</th>
      					<th>총 공제금액</th>
      					<th>실급여액</th>
      				</tr>
      			</thead>
      			<tbody>
      				<tr>
      					<th id="total_salary">${salary.basic_salary+salary.food_expenses+salary.transportation_fee+salary.additional_extended+salary.additional_night}</th>
      					<th id="total_deduction_amount">${salary.total_deduction_amount}</th>
      					<th id="actual_salary">${salary.actual_salary}</th>
      				</tr>
      			</tbody>
      		</table>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
   <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
   <script src="resources/js/servicepage2/popper.min.js"></script> 
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
  



   <script src="resources/js/servicepage2/demo.js"></script>	
	<script>
	$(document).ready(function(){
		$(".searchIcon").click(function(e){
			var sa_code = e.currentTarget.id;
			var salarys = ${salarys};
			salarys.forEach(function (salary) {
				if(salary.sa_code == sa_code){
					$("#basic_salary").text(salary.basic_salary);
					$("#national_pension_cost").text(salary.national_pension_cost);
					$("#food_expenses").text(salary.food_expenses);
					$("#health_insurance_cost").text(salary.health_insurance_cost);
					$("#transportation_fee").text(salary.transportation_fee);
					$("#employment_insurance_cost").text(salary.employment_insurance_cost);
					$("#additional_extended").text(salary.additional_extended);
					$("#additional_night").text(salary.additional_night);
					$("#total_salary").text(parseInt(salary.basic_salary)+parseInt(salary.food_expenses)
							+parseInt(salary.transportation_fee)+parseInt(salary.additional_extended)+parseInt(salary.additional_night));
					$("#total_deduction_amount").text(salary.total_deduction_amount);
					$("#actual_salary").text(salary.actual_salary);
				}
			});
		});
	})
	</script>



	<!-- Modal 지역 -->

	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>



	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->

	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/mdb.min.js"></script>
	<script type="text/javascript" src="resources/js/datatables.min.js"></script>

	<script type="text/javascript">
 
	$(document).ready(function () {
		$('#Example').DataTable({
			"paging": true, // false to disable pagination (or any other option)
			"order": [[ 0, "desc" ]]
		});
		$('.dataTables_length').addClass('bs-select');
	});
	
	$('#ulGugun').on('click',function(){
		console.log($('.value > span').text());
	});

  </script>




	<script>



 function plasearch() {
	
	var search =$('#plachoice').val();


	console.log(search); 

	var table =$('#Example').dataTable();
	table.fnFilter(search);
	

};  

</script>


	<script>
  
  $(document).on("click",".cho_woPlace",function(){
	 var woPlace = $('.cho_woPlace').text();
	 $('#plachoice').val(woPlace).trigger('change');
  });
  </script>




</body>


</html>









