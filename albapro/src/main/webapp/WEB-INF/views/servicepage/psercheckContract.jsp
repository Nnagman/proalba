<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
	<head>
		<title>프로알바</title>

		<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=2">
		<link href="resources/css/servicepage/psercheckContractcus.css?ver=2" rel="stylesheet">

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
	</style>
	<body>
		<%@ include file="../include/header.jsp"%>
		<div class="container">
			<div id="SubContents">
			<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">근로계약서 조회</h2>
		</div>
				
					<form id="form">
						<div id="createPdf" class="div_createPdf">
							<h3 class="contract_title">근로 계약서</h3>
							<div class="box">
								<h4 class="gg">1. 근로 계약기간</h4>
								<input type="hidden" name="c_id" value="${login.id}" />
								<input type="hidden" name="c_code" value="${contract.c_code}" />
								<div class="worktime_div">
									<span class="timepiker_txt_title">ㅡ ${fn:substring(contract.start_period,0,10)}부터 ${fn:substring(contract.end_period,0,10)}까지</span>
								</div>
								
								<h4 class="gg">2. 근무장소</h4>
								<div class="worktime_div">
									<span class="timepiker_txt_title">ㅡ ${contract.work_place_name}</span>
								</div>
								
								<h4 class="gg">3. 업무의 내용</h4>
								<div class="worktime_div">
									<span class="timepiker_txt_title">ㅡ ${contract.work_detail}</span>
								</div>
								
								<h4 class="gg">4. 소정근로시간</h4>
								<div class="worktime_div">
									<span class="timepiker_txt_title">ㅡ 근로시간</span>
									${contract.start_work_time}
									
									<span class="timepiker_txt">부터</span>
									${contract.end_work_time}
									<span class="timepiker_txt">까지</span>
								</div>
								
								<h4 class="gg">5. 임금</h4>
								<span class="t1">ㅡ 월(일, 시간)급 : </span>
								${contract.hour_wage}
								<span>원</span><br>
								
								<span class="t1">ㅡ 기타 급여(재수당 등) </span>
								<c:if test="${contract.additional_wage == '0'}">없음</c:if>
								<c:if test="${contract.additional_wage =='1'}">있음</c:if>
								<br>
								
								<span class="t1">ㅡ 임금지급일 : 매월(매주 또는 매일) </span>
								${contract.payday}
								<span>일(휴일의 경우는 전일 지급)</span><br>
								
								<h4 class="gg">6. 연차유급휴가</h4>
								<span class="t1">ㅡ 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>
								
								<h4 class="gg">7. 사회보험 적용여부</h4>
								<input class="che2" type="checkbox" id="고용보험" style="margin-left: 13%;" checked disabled/><span>고용보험</span>
								<input class="che2" type="checkbox" id="국민보험" checked disabled/><span>국민연금</span>
								<input class="che2" type="checkbox" id="건강보험" checked disabled/><span>건강보험</span>
								<input class="che2" type="checkbox" id="산재보험" checked disabled/><span>산재보험</span>
								
								<h4 class="gg">8. 근로계약서 교부</h4>
								<span class="t11">ㅡ 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자에게 교부함</span><br>
								<span class="sp1">(근로기준법 제17조 이행)</span><br><br>
								<div class="worktime_div">
									<span class="sp1">
										20${fn:substring(contract.c_date,2,4)}년
				                    	${fn:substring(contract.c_date,5,7)}월
				                    	${fn:substring(contract.c_date,8,10)}일
				                    </span>
								</div>
								
								<hr><br>
								
								<h4 class="hh">사업주</h4>
								<div id="" style="width: 40%; display: inline-block; float:right;">
									<img class="can1" id="" src="${contract.c_sign}" style="margin:1px;">
								</div>	
								
								<span class="t3">사업체명: </span>
								${contract.work_place_name}<br>
								
								<span class="t3">사업자등록번호: </span>
								${contract.b_number}<br>
								
								<span class="t3" id="mySign">대표자: </span>
								${contract.b_name}<br>
								
								<span class="t3">주소: </span>
								${contract.c_address}<br>
								
								<span class="t3">연락처: </span>
								${contract.work_place_phone}<br><br>
								
								<hr><br>
								
								<h2 class="hh">근로자</h2>
								
								<div id="sign" style="width: 40%; display: inline-block; float:right;">
									<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px; margin-bottom: 20px;" width="360" height="150"></canvas>
									<img class="can1" id="myImage" style="margin:1px;">
								</div>
								
								<span class="t3">근로자: </span>
                    			<input class="tex6" name="p_name" type="text" maxlength="11" value="${login.name}"/><br><br> 
                     
                     			<span class="t3">연락처: </span>
                    			<input class="tex6" name="p_phone" type="text" maxlength="11" onkeypress="onlyNumber();" value="${login.phone}" /><br><br>
                    
                    			<span class="t3">&nbsp주소:  &nbsp&nbsp </span>
                    			<input class="tex10" name="p_address" type="text" /> <Br>
								<Br><Br>
								
								<div class="contButton">
									<button type="button" class="bt1 btn btn-dark" value="근로계약서 작성완료" id="signAgain" style="width: 130px; height: 30px; padding: 0;">다시 서명하기</button>
						 			<button type="button" class="bt1btn btn-dark" id="save-sign" onclick="toDataURL2();" value="서명 저장" style="width: 130px; height: 30px; padding: 0;">서명 저장</button><br/>
									<button type="button" class="subbt2" value="근로계약서 작성완료" id="submit2">근로계약서 작성완료</button>
								</div>
							</div>
						</div>
					</form>
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
		        	
		            $("#submit2").click(function(){
		            	$("#submit2").attr("disabled", true);
		            	var formData = $("#form").serialize();
		            	var c_code = $("#c_code").val();
		            	var blc, car;
		    		  	console.log("formdata!!");
		            	console.log(formData);
		    		  	
		    		 	$.ajax({
		            		async: false,
		            		url: "${path}/psercheckContract",
		            		type: "post",
		            		data: formData,
		        			success: function(data){ 
		        				
		    					var caree = JSON.stringify(data);
		    				    var careeJ = JSON.parse(caree);
		    				    car = careeJ;
		    				    console.log(car);
		        				
		        				alert("계약서작성성공!"); 
		        				console.log("aaa: "+data);
		        				$.ajax({
		        					url: "${path}/getCon",
		        					type : "post",
		        					data : {"c_code":c_code},
		        					success : function(data){
		        					    var myCont = JSON.stringify(data);
		        					    var myContJson = JSON.parse(myCont);
		        					    blc = myContJson;
		        					    console.log(blc);
		        						window.location.href = "${path}/contract?id=${login.id}";

		        					    console.log("dd   "+blc);
		        					  	var c_code = blc.c_code;
		        			    		var start_period = blc.start_period;
		        			    		var end_period = blc.end_period;
		        			    		var c_date = blc.c_date;
		        			    		var c_id = blc.c_id;
		        			    		var p_id = blc.p_id;
		        			    		var work_place_name = blc.work_place_name;
		        			    		var email_check = blc.email_check;
		        			    		var hour_wage = blc.hour_wage;
		        			    		var dedicated_work = blc.dedicated_work;
		        			    		var work_place = blc.work_place;
		        			    		var work_detail = blc.work_detail;
		        			    		var start_work_time = blc.start_work_time;
		        			    		var end_work_time = blc.end_work_time;
		        			    		var additional_wage = blc.additional_wage;
		        			    		var payday = blc.payday;
		        			    		var b_number = blc.b_number;
		        			    		var b_name = blc.b_name;
		        			    		var c_address = blc.c_address;
		        			    		var work_place_phone = blc.work_place_phone;
		        			    		var p_name = blc.p_name;
		        			    		var p_phone = blc.p_phone;
		        			    		var p_address = blc.p_address;
		        			    		
		        			    		var em_code = car.em_code;
		        			    		var m_code = car.m_code;
		        			    		var join_date = car.join_date;
		        			    		var end_date = car.end_date;
		        			    		var work_place = car.work_place;

		        			    	   	console.log(start_period);
		        			    	   
		        			    	   	window.open("http://39.127.7.53:3000?c_code="+c_code+"&start_period="+start_period+"&end_period="+end_period+"&c_date="+c_date+"&c_id="+c_id+"&p_id="+p_id+"&work_place_name="+work_place_name+"&email_check="+email_check+"&hour_wage="+hour_wage+"&dedicated_work="+dedicated_work+"&work_place="+work_place+"&work_detail="+work_detail+"&start_work_time="+start_work_time+"&end_work_time="+end_work_time+"&additional_wage="+additional_wage+"&payday="+payday+"&b_number="+b_number+"&b_name="+b_name+"&c_address="+c_address+"&work_place_phone="+work_place_phone+"&p_name="+p_name+"&p_phone="+p_phone+"&p_address="+p_address+"&em_code="+em_code+"&m_code="+m_code+"&join_date="+join_date+"&end_date="+end_date+"&work_place="+work_place,
		        				    			  "popup",'width=600, height=350, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
		        					    
		        					},
		        					error : function(){
		        						alert("?");
		        					}  
		        				}); 
		        				
		        				
		        			},
		                    error : function(error) { alert("error : " + error); }
		            	});
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