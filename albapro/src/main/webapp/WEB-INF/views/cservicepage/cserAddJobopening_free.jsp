
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Swefwefgw sdfrf sdd</title>

<!-- Custom fonts for this template-->


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

<!-- Custom styles for this template-->

<link href="resources/css/servicepage/material-dashboard.css"
	rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/pservicepagecus.css"
	rel="stylesheet">
<!--   <link rel="stylesheet" href="resources/css/bootstrap.css" />  -->


<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/cserAddjobOpningCS.css" />

<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>
<script src="resources/js/recruinfo/test13.js"></script>
<script src="resources/js/recruinfo/majorjson.js"></script>
<script src="resources/js/cserAddjobopening_freeSC.js"></script>
<script src="resources/js/addjobopening.js?ver=3"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/bootstrap.js"></script>



</head>








<script>
		$(document).ready(function(){
			console.log(arrJobCodeWide);
			
			
			
		});
/* 	  $('.jobchoice-btn').click(function() {
	    $.getJSON('ex1.json', function(data) {
	      var html = '';
	      $.each(data, function(entryIndex, entry) {
	    	  html += '<div class="entry">';
	    	  html += '<h3 class="term">' + entry.term + '</h3>';
	    	  html += '<div class="part">' + entry.part + '</div>';
	    	  html += '<div class="definition">';
	    	  html += entry.definition;
	    	  html += '</div>';
	    	  html += '</div>';
	      });
	      console.log(html);
	      $('#dictionary').html(html);
	    });
	    return false;
	  }); */
    </script>







<body>
	<div class="wrapper">
		<div class="div-sidebar">
			<div class="sidebar" data-color="purple"
				data-background-color="white"
				data-image="../assets/img/sidebar-1.jpg">
				<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
        Tip 2: you can also add an image using data-image tag
    -->
				<div class="logo">
					<a href="/proalba" class="simple-text logo-normal"> proalba </a>
				</div>
				<div class="sidebar-wrapper">
					<ul class="nav">

						<li class="nav-item active"><a class="nav-link"
							href="cserAddJobopening_free?id=${login.id}"> <i
								class="material-icons">dashboard</i> 채용공고 등록
						</a></li>


						<li class="nav-item"><a class="nav-link"
							href="ccontract?id=${login.id}"> <i class="material-icons">dashboard</i>
								전자근로 계약서
						</a></li>
						<li class="nav-item "><a class="nav-link"
							href="cserWcontractForm?id=${login.id}"> <i
								class="material-icons">dashboard</i> 전자근로 계약서 작성
						</a></li>

						<li class="nav-item"><a class="nav-link"
							href="cserEmpManage?id=${login.id}"> <i
								class="material-icons">person</i> 직원 관리
						</a></li>

						<%-- <li class="nav-item "><a class="nav-link"
							href="${path}/proalba/comm"> <i class="material-icons">bubble_chart</i>
								커뮤니티
						</a></li> --%>

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

												<h2 class="addjob-title">어떤알바생을 원하세요?</h2>

												<div class="div-cont">

													<div class="jobcho-line1">
														직종/업무:
														<div class="jobchoice"></div>

														<button class="btn btn-light-green jobchoice-btn"
															onclick="jsonout()" data-toggle="modal"
															data-target="#myModal">전체 카테고리</button>
													</div>
													<Br>







													<div class="checkbox-line1">
														경력여부:
														<div class="custom-control custom-checkbox">

															<input type="checkbox"
																class="careerchoice1 custom-control-input"
																id="defaultUnchecked"> <label
																class="custom-control-label" for="defaultUnchecked">신입</label>
														</div>

														<div class="custom-control custom-checkbox">
															<input type="checkbox"
																class="careerchoice2 custom-control-input"
																id="defaultUnchecked1"> <label
																class="custom-control-label" for="defaultUnchecked1">경력</label>
														</div>

														<div class="custom-control custom-checkbox">
															<input type="checkbox"
																class="careerchoice3 custom-control-input"
																id="defaultUnchecked2"> <label
																class="custom-control-label" for="defaultUnchecked2">경력무관</label>
														</div>
													</div>





													<div class="checkbox-line1">
														고용형태:
														<div class="custom-control custom-checkbox">

															<input type="checkbox"
																class="jobchoice1 custom-control-input"
																id="jobUnchecked"> <label
																class="custom-control-label" for="jobUnchecked">정규직</label>
														</div>

														<div class="custom-control custom-checkbox">
															<input type="checkbox"
																class="jobchoice2 custom-control-input"
																id="jobUnchecked1"> <label
																class="custom-control-label" for="jobUnchecked1">계약직</label>
														</div>

														<div class="custom-control custom-checkbox">
															<input type="checkbox"
																class="jobchoice3 custom-control-input"
																id="jobUnchecked2"> <label
																class="custom-control-label" for="jobUnchecked2">아르바이트</label>
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
												<h5 class="div-cont-title">모집요강(*)</h5>
												<div class="Recruitmentrule">

												


														<div class="radio-line1">
															<!-- Default unchecked -->
															모집인원(*): <input type="text" class="recruitper-txt" />명
															<div class="custom-control custom-radio">
																<input type="radio"
																	class="recruitper-radio1 custom-control-input"
																	id="Recru-radio1" name="defaultExampleRadios">
																<label class=" custom-control-label" for="Recru-radio1">0명</label>
															</div>

															<div class="custom-control custom-radio">

																<input type="radio"
																	class="recruitper-radio1 custom-control-input"
																	id="Recru-radio2" name="defaultExampleRadios">
																<label class=" custom-control-label" for="Recru-radio2">00명</label>
															</div>

														</div>
														
														
														<div class="checkbox-line1">
														나이(*):
														<div class="custom-control custom-radio">

															<input type="radio"
																class="preconditionschoice1 custom-control-input custom-radio"
																id="agechecked" name="ra-recruUnchecked"> <label
																class="custom-control-label" for="agechecked">10대</label>
														</div>

														<div class="custom-control custom-radio">
															<input type="radio"
																class="preconditionschoice2 custom-control-input custom-radio"
																id="agenchecked1" name="ra-recruUnchecked"
																onclick="hiddendiv()"> <label
																class="custom-control-label" for="agenchecked1">20대</label>
														</div>
														
																<div class="custom-control custom-radio">
															<input type="radio"
																class="preconditionschoice3 custom-control-input custom-radio"
																id="agechecked2" name="ra-recruUnchecked"
																onclick="hiddendiv()"> <label
																class="custom-control-label" for="agechecked2">30대</label>
														</div>
														
																<div class="custom-control custom-radio">
															<input type="radio"
																class="preconditionschoice4 custom-control-input custom-radio"
																id="agechecked3" name="ra-recruUnchecked"
																onclick="hiddendiv()"> <label
																class="custom-control-label" for="agechecked3">40대</label>
														</div>
														
																<div class="custom-control custom-radio">
															<input type="radio"
																class="preconditionschoice5 custom-control-input custom-radio"
																id="agechecked4" name="ra-recruUnchecked"
																onclick="hiddendiv()"> <label
																class="custom-control-label" for="agechecked4">무관</label>
														</div>


													</div>
														
														
														
													

													<div class="assignedtask">
														담당업무: <input type="text" class="assignedtask-txt"
															placeholder="ex)상품진열,재고정리 등">

													</div>

													

											


													<div class="Recruitment-time">

														<div class="startime">
															모집시작일:
															<div class="today1"></div>
														</div>
														모집종료일 : <input type="text" class="Recruitment-endtime"
															placeholder="ex)2019-05-08">

													</div>
													
													
														<div class="workcon-Period">
														근무기간:<input type="text" class="workcon-Period-txt" />개월
													</div>
													
													
														<div class="workcon-time">
													근무시간:<input type="text" class="time-txt1" />부터<input type="text" class="time-txt2" />까지
													</div>
													
													
													<div class="dayline">
														<div class="workcon-day">
														요일: 
														<select>
														<option>월요일</option>
														<option>화요일</option>
														<option>수요일</option>
														<option>목요일</option>
														<option>금요일</option>
														<option>토요일</option>
														<option>일요일</option>
														
														</select> 부터
													</div>
													
														<div class="workcon-day2">
													<select>
													<option>월요일</option>
														<option>화요일</option>
														<option>수요일</option>
														<option>목요일</option>
														<option>금요일</option>
														<option>토요일</option>
														<option>일요일</option>
													
														</select>
													</div>


													</div><!-- dayline -->
												</div>




											</div>
											<br>





											<hr>

										</div>
									</div>
									<div class="col-md-12">

										<div class="addjob-3">

											<div class="div-cont">

												<h5 class="div-cont-title">자격조건 우대조건</h5>

												<div class="preconditions">



													<div class="checkbox-line1">
														학력(*):
														<div class="custom-control custom-radio">

															<input type="radio"
																class="preconditionschoice1 custom-control-input custom-radio"
																id="recruUnchecked" name="ra-recruUnchecked"> <label
																class="custom-control-label" for="recruUnchecked">무관</label>
														</div>

														<div class="custom-control custom-radio">
															<input type="radio"
																class="preconditionschoice2 custom-control-input custom-radio"
																id="recruUnchecked1" name="ra-recruUnchecked"
																onclick="hiddendiv()"> <label
																class="custom-control-label" for="recruUnchecked1">제한</label>
														</div>


													</div>

													<select class="schcho" id="schcho" style="display: none;">
														<option>고등학교졸업이상</option>
														<option>대학졸업(2,3년)이상</option>
														<option>대학졸업(4년)이상</option>
														<option>석사졸업이상</option>
														<option>박사졸업이상</option>
														<option>졸업예정</option>
													</select><br> 기타 학력사항: <input type="text"
														class="preconditions-Other-txt" />

													<div class="Major">
														전공/학과: <input type="text"
															class="preconditions-Other-major"
															placeholder="ex)컴퓨터 정보계열 등">

													</div>

													<div class="preterms-txt">
														우대조건 <br>
														<textarea></textarea>


													</div>

												</div>


											</div>

											<br>


											<hr>

										</div>
									</div>

									<!--  ------------------------------------------------- -->
									<div class="col-md-12">

										<div class="addjob-4">

											<div class="div-cont">

												<h5 class="div-cont-title">근무지 정보</h5>

												<div class="workcon">

													<div class="workcon-title">
														근무지 명(*):<input type="text" class="workpti-txt" />
													</div>

													<div class="workcon-salary">
														급여(*):<input type="text" class="salary-txt" />원
													</div>

												
													<div class="workcon-map">
														근무지역 
														<input type="text" id="sample6_postcode"  placeholder="우편번호">
															 <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="btn btn-light-green adr-btn"><br>
														<input type="text" id="sample6_address" class="sample6_address"  placeholder="주소">
															<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
														<input type="text" id="sample6_detailAddress" placeholder="상세주소"> 
													<button class="searchmap btn btn-light-green adr-btn">위치찾기</button>

														<div id="map" style="width:100%;height:350px;" class="map"></div>
													</div>

												</div>



											</div>
											<hr>

										</div>
									</div>

									<!--  ------------------------------------------------- -->
									<div class="col-md-12">

										<div class="addjob-5">

											<div class="div-cont">
												<h5 class="div-cont-title">접수 방법</h5>

												<div class="appperiod">

													<div class="appperiod-how">


														<div class="custom-control custom-radio">
															<input type="radio"
																class="appperiod-online custom-control-input"
																id="appperiod-online" name="defaultExampleRadios"
																onclick="hiddendiv()"> <label
																class=" custom-control-label" for="appperiod-online">온라인
																접수</label>
														</div>

														<div class="custom-control custom-radio">

															<input type="radio"
																class="appperiod-tel custom-control-input"
																id="appperiod-tel" name="defaultExampleRadios"
																onclick="hiddendiv()"> <label
																class=" custom-control-label" for="appperiod-tel">전화
																접수</label>
														</div>

														<div class="custom-control custom-radio">

															<input type="radio"
																class="appperiod-Visit custom-control-input"
																id="appperiod-Visit" name="defaultExampleRadios"
																onclick="hiddendiv()"> <label
																class=" custom-control-label" for="appperiod-Visit">방문접수</label>
														</div>




													</div>

													<div id="appperiod-hidden-tel" class="appperiod-hidden-tel">
														담당자 번호: <select class="President-num">
															<option>010</option>
															<option>011</option>
															<option>016</option>
															<option>017</option>
															<option>019</option>
														</select> -<input type="text" class="President-num1"> -<input
															type="text" class="President-num2">


													</div>

													<div id="appperiod-hidden-online"
														class="appperiod-hidden-online">
														<br>

														<div class="documents">
															필요한 제출서류<br>
															<textarea>
							</textarea>
														</div>

														<div class="interview">
															사전인터뷰<br>
															<textarea>
							</textarea>
														</div>


													</div>



												</div>


											</div>

											<hr>

										</div>
									</div>

									<!--  ------------------------------------------------- -->
									<div class="col-md-12">

										<div class="addjob-6">
											<div class="div-cont">


												<div class="workplace-info">

													<div class="workplace-info-title">
														<h5 class="div-cont-title">채용제목</h5>
													</div>

													<input type="text" class="Recruitment-title" />



												<button class="regaddjob btn btn-light-green adr-btn">등록</button>

												</div>

											</div>
										</div>
									</div>





								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="pser-footer"><%@ include
					file="../servicepage/pserfooter.jsp"%></div>

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
					<h4 class="modal-title">직종 선택</h4>
				</div>
				<div class="modal-body">
					<div class="jobcho1"></div>
					<div class="jobcho2"></div>
					<div class="jobcho3-title">선택된 직종</div>
					<div class="jobcho3"></div>
					<button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button>

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

	<script src="resources/js/servicepage2/demo.js"></script>


	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a746e8d90125d9464009ac37f598586f&libraries=services"></script>


	

		
	

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
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">매장 위치</div>'
        });
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