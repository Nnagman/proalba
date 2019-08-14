<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <head>
   	  <!-- Custom fonts for this template-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
		<!-- Custom styles for this template-->
		<!-- <link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet"> -->
		<link href="resources/css/servicepage/demo.css" rel="stylesheet">
		<link href="resources/css/servicepage/pservicepagecus.css" rel="stylesheet">
		<!--   <link rel="stylesheet" href="resources/css/bootstrap.css" />  -->
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
		<link rel="stylesheet" href="resources/css/albamanage.css" />
		<link rel="stylesheet" href="resources/css/albamanagecus.css" />
		<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
		<link rel="stylesheet" href="resources/css/cserAddjobOpningCS.css" />
		
		
		<script src="resources/js/albamanage.js"></script>
		<script src="resources/js/cal/albamanage.js"></script>
		<script src="resources/js/cal/interaction.js"></script>
		<script src="resources/js/recruinfo/test13.js"></script>
		<script src="resources/js/recruinfo/majorjson.js"></script>
		<script src="resources/js/cserAddjobopening_freeSC.js?ver=2"></script>
		<script src="resources/js/addjobopening.js?ver=3"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="resources/js/bootstrap.js"></script>

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
	<script>
		$(document).ready(function(){
			console.log(arrJobCodeWide);			
		});
	</script>
   <style>
      html, body, header, .carousel {
         height: 9vh !important;
      }
      
      body{
      	padding: 0 !important;
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
      
      .custom-control{
      vertical-align:top;
      }
      
      .placho-line1{
         margin: 0 !important;   
      }
      .custom-control{
      display: inline-block !important;
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
      
      .div-cont{
      font-family: 'Noto Sans KR', sans-serif !important;
	  weight: 300; 
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
      .nav-itemsub li {
	list-style: none;
	color: white !important;
}
.addjob-title{
text-align: center;
}

.nav-itemsub li a {
	color: white !important;
	padding: 8px 0 0 0 !important;
}

.nav-itemsub {
	position: relative;
	padding: 20px 0 20px 0;
	background-color: #2e3949;
	opacity: 0.8;
	color: white !important;
	top: -10px;
	z-index: 1 !important;
	font-size: 0.8rem;
}
.sss{font-size: 12px; color: red; font-weight:lighter;}
      
   </style>
<body>
   <%@ include file="../include/header.jsp"%>

     
			<form id="form" action="/cserAddJobopening_free" method="post">
			
											<div class="addjob-1">
												<h2 class="addjob-title">어떤알바생을 원하세요?</h2>
												<div class="div-cont">
													<div class="jobcho-line1">
														<c:set var="now" value="<%=new java.util.Date()%>" />
														<input type="hidden"value='${login.m_code}/<fmt:formatDate value='${now}' pattern='yyyy-MM-dd hh:mm:ss'/>' name="n_code"/>
														<input type="hidden" value='${login.m_code}'  name="m_code"/>
														<input type="hidden" value=<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /> name="p_date"/>
														직종/업무: <div class="jobchoice">${login.job_type}</div>
														<input type="button" class="btn btn-light-green adr-btn jobchoice-btn" onclick="jsonout()" data-toggle="modal"data-target="#myModal" value="전체 카테고리"/>
													</div>
													<Br>
													<div class="checkbox-line1">
														경력여부*:
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="career1" name="career" value="신입"/>
															<label class=" custom-control-label" for="career1">신입</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="career2" name="career" value="경력"/>
															<label class=" custom-control-label" for="career2">경력</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="career3" name="career" value="경력무관"/>
															<label class=" custom-control-label" for="career3">경력무관</label>
														</div>
													</div>
													<div class="checkbox-line1">
														고용형태*:
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="employment_type1" name="employment_type" value="정규직"/>
															<label class=" custom-control-label" for="employment_type1">정규직</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="employment_type2" name="employment_type" value="계약직"/>
															<label class=" custom-control-label" for="employment_type2">계약직</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="employment_type3" name="employment_type" value="아르바이트"/>
															<label class=" custom-control-label" for="employment_type3">아르바이트</label>
														</div>
													</div>
												</div>
											</div>
											<br>
											<hr>
										</div>
									</div>
									<div class="col-md-12">
										<div class="addjob-2">
											<div class="div-cont">
												<h5 class="div-cont-title">모집요강</h5>
												<div class="Recruitmentrule">
													<div class="radio-line1">
														<!-- Default unchecked -->
														모집인원: <input type="text" class="recruitper-txt" id="personnel1" name="personnel" value="0"/>명
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="personnel2" name="personnel" value="0"/>
															<label class=" custom-control-label" for="personnel2">0명</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="recruitper-radio1 custom-control-input" id="personnel3" name="personnel" value="00"/>
															<label class=" custom-control-label" for="personnel3">00명</label>
														</div>
													</div>
													<div class="checkbox-line1">
														연령:
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice1 custom-control-input custom-radio" id="agechecked" name="age" value="10대"/>
															<label class="custom-control-label" for="agechecked">10대</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice2 custom-control-input custom-radio" id="agenchecked1" name="age" value="20대"/>
															<label class="custom-control-label" for="agenchecked1">20대</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio"class="preconditionschoice3 custom-control-input custom-radio" id="agechecked2" name="age" value="30대"/>
															<label class="custom-control-label" for="agechecked2">30대</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice4 custom-control-input custom-radio" id="agechecked3" name="age" value="40대"/>
															<label class="custom-control-label" for="agechecked3">40대</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice5 custom-control-input custom-radio" id="agechecked4" name="age" value="무관"/>
															<label class="custom-control-label" for="agechecked4">무관</label>
														</div>
													</div>
													<div class="checkbox-line1">
														성별:
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice1 custom-control-input custom-radio" id="gender1" name="gender" value="남"/>
															<label class="custom-control-label" for="gender1">남</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice1 custom-control-input custom-radio" id="gender2" name="gender" value="여"/>
															<label class="custom-control-label" for="gender2">여</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice1 custom-control-input custom-radio" id="gender3" name="gender" value="무관"/>
															<label class="custom-control-label" for="gender3">무관</label>
														</div>
													</div>
													<div class="assignedtask">
														담당업무*: <input type="text" class="assignedtask-txt" placeholder="ex)상품진열,재고정리 등" name="assigned_task" value=""/>
													</div>
													<div class="Recruitment-time">
														<div class="startime">
															모집시작일: <input type="date" class="today1" placeholder="ex)2019-05-08" name="start_date" value=""/>
														</div>
														모집종료일* : <input type="date" class="Recruitment-endtime" placeholder="ex)2019-05-08" name="end_date" value=""/>
													</div>
													<div class="workcon-Period">
														근무기간*:<input type="text" class="workcon-Period-txt" id="workcon-Period-txt" maxlength="2" name="term" value="${list[0].term}"/>개월
													</div>
													<div class="workcon-time">
														근무시간*:
														<input type="time" name="work_time1" id="work_time1" value="${list[0].work_time1}"/>부터
														<input type="time" name="work_time2" id="work_time2" value="${list[0].work_time2}"/>까지
													</div>
													<div class="dayline">
														요일*:<br>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day1" name="work_day" value="월"/>
															<label class="custom-control-label" for="work-day1">월</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day2" name="work_day" value="화"/>
															<label class="custom-control-label" for="work-day2">화</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day3" name="work_day" value="수"/>
															<label class="custom-control-label" for="work-day3">수</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day4" name="work_day" value="목"/>
															<label class="custom-control-label" for="work-day4">목</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day5" name="work_day" value="금"/>
															<label class="custom-control-label" for="work-day5">금</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day6" name="work_day" value="토"/>
															<label class="custom-control-label" for="work-day6">토</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day7" name="work_day" value="일"/>
															<label class="custom-control-label" for="work-day7">일</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day8" name="work_day" value="평일"/>
															<label class="custom-control-label" for="work-day8">평일</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day9" name="work_day" value="주말"/>
															<label class="custom-control-label" for="work-day9">주말</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="preconditionschoice1 custom-control-input" id="work-day10" name="work_day" value="요일협의" checked/>
															<label class="custom-control-label" for="work-day10">요일협의</label>
														</div>
													</div>
													<div>
														추가내용:<br>
														<textarea form="form" name="content">${login.introduction}</textarea>
													</div>
													<!-- dayline -->
												</div>
											</div>
											<br><hr>
										</div>
									</div>
									<div class="col-md-12">
										<div class="addjob-3">
											<div class="div-cont">
												<h5 class="div-cont-title">자격 우대조건 <span class="notRequired">(필수 입력 사항이 아닙니다.)</span></h5>
												<div class="preconditions">
													<div class="checkbox-line1" id="education_box">
														학력:
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice1 custom-control-input custom-radio" id="recruUnchecked2" name="education" value="무관" onclick="hiddendiv()" checked/>
															<label class="custom-control-label" for="recruUnchecked2">무관</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="preconditionschoice2 custom-control-input custom-radio" id="recruUnchecked1" name="education" value=" " onclick="hiddendiv()"/>
															<label class="custom-control-label" for="recruUnchecked1">제한</label>
														</div>
													</div>
													<br> 
													기타 학력사항: <input type="text" class="preconditions-Other-txt" name="education_etc"/>
													<div class="Major">
														전공/학과:
														<input type="text" class="preconditions-Other-major" placeholder="ex)컴퓨터 정보계열 등" name="major"/>
													</div>
													<div class="preferential_conditions" id="preferential_conditions">
														우대조건 <br>
														<textarea form="form" name="preferential_conditions"> </textarea>
													</div>
												</div>
											</div>
											<br><hr>
										</div>
									</div>
									<!--  ------------------------------------------------- -->
									<div class="col-md-12">
										<div class="addjob-4">
											<div class="div-cont">
												<h5 class="div-cont-title">사업체 정보</h5>
												<div class="workcon">
													<div class="work_place_name">
														사업체 명*:<input type="text" class="work_place_name" id="work_place_name" name="work_place_name" value="${list[0].work_place_name}"/>
													</div>
												
													<div class="hour_wage">
														시급: <input type="text" class="hour_wage" id="hour_wage" name="hour_wage" value="${list[0].hour_wage}"/>원
														<span class="sss">　(2019년 최저시급: ${hourWage}원)</span>	
													</div>
													<div class="workcon-map">
													<c:set var="address" value="${fn:split(login.address,'/')}"/>
														근무지역* 
														<input type="text" id="sample6_postcode" placeholder="우편번호" value="${address[0]}"/>
														<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="btn btn-light-green adr-btn"/>
														<br>
														<input type="text" id="sample6_address" class="sample6_address" placeholder="주소" value="${address[1]}"/>
														<input type="hidden" id="sample6_extraAddress" placeholder="참고항목"/>
														<input type="text" id="sample6_detailAddress" placeholder="상세주소" value="${address[2]}"/>
														<input type="button" class="searchmap btn btn-light-green adr-btn" value="위치찾기"/>
														<div id="map" style="width: 100%; height: 350px; margin-top: 0px;" class="map"></div>
														<input type="hidden" id="address" name="address" value=""/>
													</div>
												</div>
											</div>
											<hr>
										</div>
									</div>
									<div class="col-md-12">
										<div class="addjob-6">
											<div class="div-cont">
												<div class="workplace-info">
													<div class="workplace-info-title">
														<h5 class="div-cont-title">채용제목*</h5>
													</div>
													<input type="text" class="Recruitment-title" id="Recruitment-title" name="title" value="${list[0].title}" />
													<input type="button" class="regaddjob btn btn-light-green adr-btn" value="등록" id="submit1"/>
												</div>
											</div>
										</div>
									</div>
				</form>
	
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
               <h4 class="modal-title">직종/업무 선택</h4>
            </div>
            <div class="modal-body">
               <div class="jobcho1"></div>
               <div class="jobcho2"></div>
               <div class="jobcho3-title">선택된 직종/업무</div>
               <div class="jobcho3"></div>
               <button class="btn btn-default btn-sejob" data-dismiss="modal">선택 완료</button>
               <button class="btn btn-default btn-remove">모두지우기</button>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
      </div>
  

   <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
   <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
   <script src="resources/js/servicepage2/popper.min.js"></script>
   <script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
   <script src="resources/js/servicepage2/demo.js"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30778415e99d74364ec3cdbc2fd242bf&libraries=services,clusterer,drawing"></script>
   <script src="//dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   <!-- 주소검색  -->
   <script>
      $(document).on('click','.searchad',function(){      
       //load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
          daum.postcode.load(function(){
              new daum.Postcode({
                  oncomplete: function(data) {
                      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                      // 예제를 참고하여 다양한 활용법을 확인해 보세요.
                  }
              }).open();
          });
      });
</script>

<script>
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = {
       center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
       level: 3 // 지도의 확대 레벨
   };  
   //지도를 생성합니다    
   var map = new daum.maps.Map(mapContainer, mapOption); 
</script>
<script>
   $(document).on('click','.searchmap',function(){
      var address1 = $('.sample6_address').val();   
      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new daum.maps.services.Geocoder();
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch(address1, function(result, status) {
          // 정상적으로 검색이 완료됐으면 
          if (status === daum.maps.services.Status.OK) {
             var coords = new daum.maps.LatLng(result[0].y, result[0].x);   
         
              // 결과값으로 받은 위치를 마커로 표시합니다
              var marker = new daum.maps.Marker({ map: map, position: coords });
              // 인포윈도우로 장소에 대한 설명을 표시합니다
              var infowindow = new daum.maps.InfoWindow({ content: '<div style="width:150px;text-align:center;padding:6px 0;">매장위치</div>' });
              infowindow.open(map, marker);
              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
              map.setCenter(coords);
          } 
      });    
   });
</script>
<script>
   $(document).ready(function() {
      $().ready(function() {
         $("#salary").on("keyup", function(){
             $(this).val($(this).val().replace(/[^0-9]/g,""));
         });
         
         $("#hour_wage").on("keyup", function(){
             $(this).val($(this).val().replace(/[^0-9]/g,""));
         });
         
         $("#workcon-Period-txt").on("keyup", function(){
             $(this).val($(this).val().replace(/[^0-9]/g,""));
         });
         
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
               columnDefs: [ { targets: [ 0, 1, 2 ], className: 'mdl-data-table__cell--non-numeric' } ]
            } );
      

           
    
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
	        
	        $('#submit1').on("click", function() {
	        	
	        	var jobchoice = $('.jobchoice > .sejobre').text();
	        	$('.jobchoice').append('<input type="hidden" name="job_type" id="job_type" value="'+jobchoice+'"/>');
	        	
	        	var address = $("#sample6_postcode").val() + "/" + $("#sample6_address").val() + "/" + $("#sample6_detailAddress").val();
	        	$('#address').val(address);

              if(document.getElementById("appperiod-tel").checked == true){
                 var contact_number = $('.President-num option:selected').val() + $('.President-num1').val() + $('.President-num2').val();
                 $('#contact_number').val(contact_number);
              }
              
              if(document.getElementById("recruUnchecked1").checked == true){
                 var education = $("#schcho option:selected").val();
                 $('#recruUnchecked1').val(education);
              }
              
              $('#way').val($('input:radio[name="radio"]:checked').val());
              console.log($('#salary').val());
              console.log($('#hour_wage').val());
              console.log($('#workcon-Period-txt').val());
              
              if( $('#job_type').val() == "" ){ alert("직종/업무를 선택해주세요."); return };
              if( $('input:radio[name="career"]:checked').val() == undefined ){ alert("경력여부를 선택해주세요."); return };
              if( $('input:radio[name="employment_type"]:checked').val() == undefined ){ alert("고용형태를 선택해주세요."); return };
              if( $('.assignedtask-txt').val() == ""){ alert("담당업무를 입력해주세요."); return };
              if( $('.Recruitment-endtime').val() == ""){ alert("모집종료일을 입력해주세요."); return };
              if( $('#workcon-Period-txt').val() == "" || $('#workcon-Period-txt').val() == undefined || $('#workcon-Period-txt').val() == null){ $('#workcon-Period-txt').val("0"); };
              if( $('#work_time1').val() == ""){ alert("근무시간을 입력해주세요."); return };
              if( $('#work_time2').val() == ""){ alert("근무시간을 입력해주세요."); return };
              if( $("[name='work_day']").val() == "" ){ alert("요일을 선택해주세요."); return };
              if( $('#work_place_name').val() == "" ){ alert("근무지명을 입력해주세요."); return };
       
              if( $('#hour_wage').val() == "" || $('#hour_wage').val() == undefined || $('#hour_wage').val() == null ){ $('#hour_wage').val("0"); };
              if( $('#address').val() == "//"){ alert("주소를 입력해주세요."); return};
              if( $('#Recruitment-title').val() == ""){ alert("제목을 입력해주세요."); return};
              
              console.log($('#salary').val());
              console.log($('#hour_wage').val());
              console.log($('#workcon-Period-txt').val());
              
              //var form = $("#form").serialize();
              
              $("#submit1").after('<button type="submit" id="bt2"></button>');
              document.getElementById("bt2").click();
              
/*             $.ajax({
               async: false,
               type: 'POST',
               data: form,
               url: '${path}/cserAddJobopening_free',
               success: function(data){
            	   alert("등록완료.");
               },
                  error : function(error) { alert("error : " + error); }
            }); */
           });
      }); 
   });

	        	
</script>

   	<script>
		var gender = ${list[0].gender};
		var age = ${list[0].age};
		var work_day = ${list[0].work_day};
		
		work_day = work_day.split(',');
		
		work_day.forEach(function(data){
			if(data == "월"){ $("#work-day1").trigger('click'); };
			if(data == "화"){ $("#work-day2").trigger('click'); };
			if(data == "수"){ $("#work-day3").trigger('click'); };
			if(data == "목"){ $("#work-day4").trigger('click'); };
			if(data == "금"){ $("#work-day5").trigger('click'); };
			if(data == "토"){ $("#work-day6").trigger('click'); };
			if(data == "일"){ $("#work-day7").trigger('click'); };
			if(data == "평일"){ $("#work-day8").trigger('click'); };
			if(data == "주말"){ $("#work-day9").trigger('click'); };
			if(data == "요일협의"){ $("#work-day10").trigger('click'); };
		});
		
		if(gender == "무관"){ $("#gender3").trigger('click'); };
		
		if(gender == "남"){ $("#gender1").trigger('click'); };
		
		if(gender == "여"){ $("#gender2").trigger('click'); };
		
		if(age == "10대"){ $("#agechecked").trigger('click'); };
		
		if(age == "20대"){ $("#agechecked1").trigger('click'); };
		
		if(age == "30대"){ $("#agechecked2").trigger('click'); };
		
		if(age == "40대"){ $("#agechecked3").trigger('click'); };
		
		if(age == "무관"){ $("#agechecked4").trigger('click'); };		
	</script>

</body>
</html>