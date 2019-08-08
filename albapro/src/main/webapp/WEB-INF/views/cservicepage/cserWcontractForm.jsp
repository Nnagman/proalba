<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
	<head>
		<title>프로알바</title>
		
		<!-- <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">  -->
		<link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

		<link href="resources/css/index.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/css/mdb.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<link href="resources/css/datatables.min.css" rel="stylesheet">
		
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	</head>

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
	
		.gg {
			margin-bottom:0px;
			margin-top: 0px;
		}
	
		.contButton{
			margin: 0px 0 50px 20%;
		}
		
		.row{ text-align:left; }
		.tex{ margin-left:0px; }
		.tex3{ margin-left:0px; }
		.sss{font-size: 12px; color: red; font-weight:lighter;}
		
		.btn-secondary{/* background-color:#a6c!important; */ background-color:transparent; color:#fff; border: 1px solid;}
	</style>
	
	<body>
		<%@ include file="../include/header.jsp"%>
		<div class="container">
			<div id="SubContents">
			<c:if test="${wcontractVO != null}">
				${wcontractVO}
			</c:if>
			<h1 style="margin: 40px 0;">근로계약서 작성</h1>
				<c:if test="${list[0] == null}">
					<form action="/cserWcontract" method="post" style="border: 1px solid black;">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12" style="padding-left: 20%;"> 
			          				<div class="addjob-1" style="margin-top: 4%;">
			          					<input type="hidden" name="c_id" value="c${login.id}" />
			          					<span style="width: 110px; display: inline-block;">근로 계약기간:</span>
			          					<input class="tex" name="start_period" type="date" value="" id="startSearchDate" />
			          					<span>부터</span>
			          					<input class="tex1" style="width:20%;" name="end_period" type="date" value="" id="endSearchDate"  />
			          					<span>까지</span>
			          					<br><br>
			          				
			          					<span style="width: 110px; display: inline-block;">근무장소:</span>
			          					<input class="tex3" name="work_place" type="text" value="" />
			          					<br><br>
			          				
			          					<span style="width: 110px; display: inline-block;">업무의 내용:</span>
			          					<input class="tex3" name="work_detail" type="text" value="" />
			          					<br><br>
			          				
			          					<span style="width: 110px; display: inline-block;">소정근로시간:</span>
			          					<input class="timepiker" id="time1" name="start_work_time" data-format="hh:mm:ss" type="time" value=""></input>부터
										<input class="timepiker2" id="time2" name="end_work_time" data-format="hh:mm:ss" type="time" value=""></input>까지
										<br><br>
									
										<span style="width: 110px; display: inline-block;">시급:</span>
										<input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" value="${hourWage}" />
										<span>원</span>
										<span class="sss">　(2019년 최저시급: ${hourWage}원)</span>
										<br><br>
									
										<span style="width: 110px; display: inline-block;">기타 급여:</span>
										<input class="ra" id="y" name="additional_wage" type="radio" value="1" /><span>있음 </span>
										<input class="ra" id="n" name="additional_wage" type="radio" value="0" /><span>없음 </span>
										<br><br>
									
										<span style="width: 110px; display: inline-block;">임금지급일:</span>
										<input class="tex2" type="text" name="payday" maxlength="2" onkeypress="onlyNumber();" />
										<span>일(휴일의 경우는 전일 지급)</span>
									</div>
									<br><hr>
								</div>
							</div>
							<div class="row">
				           		<div class="col-md-12" style="padding-left: 20%;">
				           			<span style="width: 110px; display: inline-block;"> 사업체명: </span>
				           			<input type="text"  name="work_place_name" value="${login.work_place_name}" readonly/>
				           			<br><br>
				           			
				           			<span style="width: 110px; display: inline-block;">사업자번호:</span> ${login.b_number}
				           			<input type="hidden" value="${login.b_number}" name="b_number"/>
				           			<br><br>
				           			
				           			<span style="width: 110px; display: inline-block;">대표자:</span>
				           			<input class="tex8" name="b_name" type="text" value="${login.name}"/>
				           			<br><br>
				           			
				           			<c:set var="address" value="${fn:split(login.address,'/')}"/>
				           			<span style="width: 110px; display: inline-block;">주소:</span>
				           			<input type="text" id="sample6_postcode" placeholder="우편번호" value="${address[0]}"/>
				           			<button type="button" class="btn btn-dark" onclick="execDaumPostcode()" value="우편번호 찾기" style="background-color: #d7d7d7; width: 130px; height: 30px; padding: 0;">우편번호 찾기</button><br>
									<!-- <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="adr-btn"/><br> -->
									<span style="width: 110px; display: inline-block;"></span>
									<input type="text" id="sample6_address" class="sample6_address" placeholder="주소" name="c_address" style="width: 190px;" value="${address[1]}"/>
									<input type="hidden" id="sample6_extraAddress" placeholder="참고항목"/>
									<input type="text" id="sample6_detailAddress" placeholder="상세주소" value="${address[2]}"/>
						 			<br><br>
						 			
						 			<span style="width: 110px; display: inline-block;">연락처:</span>
						 			<input class="tex6" name="work_place_phone" value="${login.phone}" type="text" maxlength="11" onkeypress="onlyNumber();" />
						 			<br/><Br/>
						 			
						 			<span style="width: 110px; display: inline-block;">근로자 연락처:</span>
						 			<c:if test="${memberVO.phone != null}">
						 				<input id="p_phone" name="p_phone" type="text" value="${memberVO.phone}" maxlength="11"/><br/>전송할 근로자의 휴대폰번호를 입력해주세요 ('-' 제외)
						 			</c:if>
						 			
						 			<c:if test="${memberVO.phone == null}">
						 				<input id="p_phone" name="p_phone" type="text" maxlength="11"/><br/>전송할 근로자의 휴대폰번호를 입력해주세요 ('-' 제외)
						 			</c:if>
						 			<input type="hidden" name="p_id" value=" "/>
						 		</div>
							</div>
						 	<hr/>
						</div>
						<div style="padding-left: 27%; padding-bottom: 1%;">
							<div id="sign" style="width: 40%; padding-left: 75px;">
								<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px; margin-bottom: 20px;" width="360" height="150"></canvas>
								<img class="can1" id="myImage" style="margin:1px;">
							 	<div id="sign2"></div>
							</div>
							<div class="btn_line1" style=" padding-left: 45px;">
								<button type="button" class="bt1 btn btn-dark" value="근로계약서 작성완료" id="signAgain" style="width: 130px; height: 30px; padding: 0; box-shadow: none;">다시 서명하기</button>
							 	<button type="button" class="bt1 btn btn-dark" id="save-sign" onclick="toDataURL();" value="서명 저장" style="background-color: #d7d7d7; width: 130px; height: 30px; padding: 0; box-shadow: none;">서명 저장</button>
							 	<input type='submit' class="submitbtn btn btn-primary" value="작성완료" id="submit2" style="width: 130px; height: 30px; padding: 0;"/>
							</div>
						</div>
					</form>
				</c:if>
				
				<c:if test="${list[0] != null}">
					<form action="/cserWcontract" method="post" style="border: 1px solid black;">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12" style="padding-left: 20%;"> 

									<h2>전자근로계약서 작성 </h2>

			          				<div class="addjob-1" style="margin-top: 4%;">
			          					<input type="hidden" name="c_id" value="c${login.id}" />
			          					<span style="width: 110px; display: inline-block;">근로 계약기간:</span>
			          					<input class="tex" name="start_period" type="text" value="${list[0].p_date}" id="startSearchDate" />
			          					<span>부터</span>
			          					<input class="tex1" style="width:15%;" name="end_period" type="text" value="${list[0].end_date}" id="endSearchDate"  />
			          					<span>까지</span>
			          					<br><br>
			          				
			          					<span style="width: 110px; display: inline-block;">근무장소:</span>
			          					<input class="tex3" name="work_place" type="text" value="" />
			          					<br><br>
			          				
			          					<span style="width: 110px; display: inline-block;">업무의 내용:</span>
			          					<input class="tex3" name="work_detail" type="text" value="${list[0].assigned_task}" />
			          					<br><br>
			          				
			          					<span style="width: 110px; display: inline-block;">소정근로시간:</span>
			          					<input class="timepiker" id="time1" name="start_work_time" data-format="hh:mm:ss" type="time" value="${list[0].work_time1}"></input>부터
										<input class="timepiker2" id="time2" name="end_work_time" data-format="hh:mm:ss" type="time" value="${list[0].work_time2}"></input>까지
										<br><br>
									
										<span style="width: 110px; display: inline-block;">시급:</span>
										<input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" value="${list[0].hour_wage}" />
										<span>원</span>
										<span class="sss">　(2019년 최저시급: ${hourWage}원)</span>
										<br><br>
									
										<span style="width: 110px; display: inline-block;">기타 급여:</span>
										<input class="ra" id="y" name="additional_wage" type="radio" value="1" /><span>있음 </span>
										<input class="ra" id="n" name="additional_wage" type="radio" value="0" /><span>없음 </span>
										<br><br>
									
										<span style="width: 110px; display: inline-block;">임금지급일:</span>
										<input class="tex2" type="text" name="payday" maxlength="2" onkeypress="onlyNumber();" />
										<span>일(휴일의 경우는 전일 지급)</span>
									</div>
									<br><hr>
								</div>
							</div>
							<div class="row">
				           		<div class="col-md-12" style="padding-left: 20%;">

				           			<span style="width: 110px; display: inline-block;"> 사업체명: </span>

				           			<input type="text"  name="work_place_name" value="${list[0].work_place_name}" readonly/>
				           			<br><br>
				           			
				           			<span style="width: 110px; display: inline-block;">사업자번호:</span> ${login.b_number}
				           			<input type="hidden" value="${login.b_number}" name="b_number"/>
				           			<br><br>
				           			
				           			<span style="width: 110px; display: inline-block;">대표자:</span>
				           			<input class="tex8" name="b_name" type="text" value="${list[0].name}"/>
				           			<br><br>
				           			
				           			<c:set var="address" value="${fn:split(list[0].address,'/')}"/>
				           			<span style="width: 110px; display: inline-block;">주소:</span>
				           			<input type="text" id="sample6_postcode" placeholder="우편번호" value="${address[0]}"/>
				           			<button type="button" class="btn btn-dark" onclick="execDaumPostcode()" value="우편번호 찾기" style="background-color: #d7d7d7; width: 130px; height: 30px; padding: 0;">우편번호 찾기</button><br>
									<!-- <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="adr-btn"/><br> -->
									<span style="width: 110px; display: inline-block;"></span>
									<input type="text" id="sample6_address" class="sample6_address" placeholder="주소" name="c_address" style="width: 190px;" value="${address[1]}"/>
									<input type="hidden" id="sample6_extraAddress" placeholder="참고항목"/>
									<input type="text" id="sample6_detailAddress" placeholder="상세주소" value="${address[2]}"/>
						 			<br><br>
						 			
						 			<span style="width: 110px; display: inline-block;">연락처:</span>
						 			<input class="tex6" name="work_place_phone" value="${list[0].phone}" type="text" maxlength="11" onkeypress="onlyNumber();" />
						 			<br/><Br/>
						 			
						 			<span style="width: 110px; display: inline-block;">근로자 연락처:</span>
						 			<c:if test="${memberVO.phone != null}">
						 				<input id="p_phone" name="p_phone" type="text" value="${memberVO.phone}" maxlength="11"/><br/>전송할 근로자의 휴대폰번호를 입력해주세요 ('-' 제외)
						 			</c:if>
						 			
						 			<c:if test="${memberVO.phone == null}">
						 				<input id="p_phone" name="p_phone" type="text" maxlength="11"/><br/>전송할 근로자의 휴대폰번호를 입력해주세요 ('-' 제외)
						 			</c:if>
						 			<input type="hidden" name="p_id" value=" "/>
						 		</div>
							</div>
						 	<hr/>
						</div>

						<div style="padding-left: 20%; padding-bottom: 4%;">
					
						<div id="sign" style="width: 40%; padding-left: 75px;">
							<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px; margin-bottom: 20px;" width="360" height="150"></canvas>
							<img class="can1" id="myImage" style="margin:1px;">
						 	<div id="sign2"></div>
						</div>
						<div class="btn_line1" style=" padding-left: 45px; padding-bottom: 4%">
							<button type="button" class="bt1 btn btn-dark" value="근로계약서 작성완료" id="signAgain" style="width: 130px; height: 30px; padding: 0;">다시 서명하기</button>
						 	<button type="button" class="bt1btn btn-dark" id="save-sign" onclick="toDataURL();" value="서명 저장" style="width: 130px; height: 30px; padding: 0;">서명 저장</button><br/>
						 	<input type='submit' class="submitbtn btn btn-primary" value="작성완료" id="submit2" style="width: 130px; height: 30px; padding: 0;"/>

						</div>
						</div>
					</form>
				</c:if>
			</div>
		</div>
		<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	 	<script src="resources/js/servicepage2/popper.min.js"></script>
	 	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
	 	<script src="resources/js/servicepage2/demo.js"></script> 
	 	
	 	<!-- 근로계약서 js -->
	 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 	<script type="text/javascript" src="resources/js/contract.js?ver=5"></script>    
	 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>                        
	 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.8/FileSaver.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>
		<script type="text/javascript" src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript" src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	 	<!-- 근로계약서 js -->
	 	
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
		
		<script>
		    $(function() {
		        $("#startSearchDate, #endSearchDate").datepicker({ 
		            dateFormat: 'yy-mm-dd',
		            prevText: '이전 달',
		            nextText: '다음 달',
		            showOn: "both",  
		            buttonImage: "resources/images/date1.png",
		            changeMonth: true,
		            changeYear: true,
		            changeMonth: true,
		            dayNames: ['월', '화', '수', '목', '금', '토', '일'],
		            dayNamesShort: ['월', '화', '수', '목', '금', '토', '일'],
		            dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
		            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		            showMonthAfterYear: true,
		            yearSuffix: '년'
		        });
		    });
		    
		    $(function() {
		        $('#datetimepicker3').datetimepicker({
		            pickDate: false
		        });
		        $('#datetimepicker4').datetimepicker({
		            pickDate: false
		        });
		        $('#datetimepicker5').datetimepicker({
		            pickDate: false
		        });
		        $('#datetimepicker6').datetimepicker({
		            pickDate: false
		        });
		    });
		</script>
		
		<script>
		function execDaumPostcode(){
		    new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            var addr = ''; // 주소 변수
		            var extraAddr = ''; // 참고항목 변수
		
		            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                addr = data.roadAddress;
		            } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                addr = data.jibunAddress;
		            }
		
		            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		            if(data.userSelectedType === 'R'){
		                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                    extraAddr += data.bname;
		                }
		                // 건물명이 있고, 공동주택일 경우 추가한다.
		                if(data.buildingName !== '' && data.apartment === 'Y'){
		                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                if(extraAddr !== ''){
		                    extraAddr = ' (' + extraAddr + ')';
		                }
		                // 조합된 참고항목을 해당 필드에 넣는다.
		                document.getElementById("sample6_extraAddress").value = extraAddr;
		            
		            } else {
		                document.getElementById("sample6_extraAddress").value = '';
		            }
		
		            // 우편번호와 주소 정보를 해당 필드에 넣는다.
		            document.getElementById('sample6_postcode').value = data.zonecode;
		            document.getElementById("sample6_address").value = addr;
		            // 커서를 상세주소 필드로 이동한다.
		            document.getElementById("sample6_detailAddress").focus();
		        }
		    }).open();
		}
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