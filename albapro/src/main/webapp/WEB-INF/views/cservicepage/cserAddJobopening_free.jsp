
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



<style>
.row {
	text-align: center;
}

.appperiod-hidden-tel, .appperiod-hidden-online {
	display: none;
}

.jobcho1 {
	width: 25%;
}

.jobcho1, .jobcho2 {
	display: inline-block;
}

.jobcho2 {
	width: 70%;
	height: 300px;
	/* background-color:black; */
}

.col-md-12 * {
	font-family: 'Noto Sans KR', sans-serif !important;
}

.div-cont {
	width: 800px;
	text-align: left;
	margin: 0 auto;
	padding: 0 0 0 100px;
}

.div-cont input {
	padding: 4px 10px 9px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin: 0 0 20px 20px;
}

.jobchoice {
	width: 350px;
}

.card {
	height: 100%;
}

.div-cont input[type=text]:focus, .div-cont input[type=text]:hover {
	border: 2px solid #45a049;
}

.custom-checkbox{
display:inline-block;   
margin: 0 0 0 20px;
}

.checkbox-line1{
display:inline-block;
}
</style>





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

						<li class="nav-item "><a class="nav-link"
							href="${path}/proalba/comm"> <i class="material-icons">bubble_chart</i>
								커뮤니티
						</a></li>

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

												<div class="div-cont">
													직종/업무: <input type="text" class="jobchoice" />
													<button class="btn btn-light-green jobchoice-btn"
														onclick="jsonout()" data-toggle="modal"
														data-target="#myModal">전체 카테고리</button>
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
													
												
													<br> <br> 고용형태: <input type="checkbox"
														class="jobchoice1">정규직 <input type="checkbox"
														class="jobchoice2">계약직 <input type="checkbox"
														class="jobchoice3">아르바이트
												</div>

											</div>
											<br>




											<hr>
										</div>
									</div>

									<div class="col-md-12">

										<div class="addjob-2">

											<div class="div-cont">
												모집요강(*)필수입력 사항 입니다.
												<div class="Recruitmentrule">

													<div class="recruitper">
														모집인원(*): <input type="text" class="recruitper-txt" /> <input
															type="radio" class="recruitper-radio1" />0명 <input
															type="radio" class="recruitper-radio2" />00명
													</div>


													<div class="assignedtask">
														담당업무: <input type="text" class="assignedtask-txt"
															placeholder="ex)상품진열,재고정리 등">

													</div>

													<div class="Recruitment-time">
														모집시작일: 오늘날짜<br> 모집종료일 : <input type="text"
															class="Recruitment-endtime" placeholder="ex)2019-05-08">

													</div>

												</div>




											</div>
											<br>





											<hr>

										</div>
									</div>
									<div class="col-md-12">

										<div class="addjob-3">

											<div class="div-cont">
												자격조건 우대조건
												<div class="preconditions">

													<div class="recruitper">
														학력(*):<input type="checkbox" class="preconditions1" />무관 <input
															type="checkbox" class="preconditions2" />제한 <select>
															<option>고등학교졸업이상</option>
															<option>대학졸업(2,3년)이상</option>
															<option>대학졸업(4년)이상</option>
															<option>석사졸업이상</option>
															<option>박사졸업이상</option>
															<option>졸업예정</option>
														</select><br> 기타 학력사항 <input type="text"
															class="preconditions-Other-txt" />
													</div>


													<div class="Major">
														전공/학과: <input type="text"
															class="preconditions-Other-major"
															placeholder="ex)컴퓨터 정보계열 등">

													</div>

													<div class="preterms-txt">
														우대조건 <br>
														<textarea></textarea>
														<br>

													</div>
												</div>


											</div>




											<hr>

										</div>
									</div>

									<!--  ------------------------------------------------- -->
									<div class="col-md-12">

										<div class="addjob-4">

											<div class="div-cont">
												근무조건
												<div class="workcon">

													<div class="workcon-salary">
														급여(*):<input type="text" class="salary-txt" />원
													</div>
													<div class="workcon-map">
														근무지역 <br> 맵점여
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
												접수 방법
												<div class="appperiod">

													<div class="appperiod-how">
														<input type="radio" id="appperiod-online"
															name="appperiod-name" class="appperiod-online"
															onclick="hiddendiv()">온라인 접수 <input type="radio"
															id="appperiod-tel" name="appperiod-name"
															class="appperiod-tel" onclick="hiddendiv()">전화 접수
														<input type="radio" id="appperiod-Visit"
															name="appperiod-name" class="appperiod-Visit"
															onclick="hiddendiv()">방문 접수

													</div>

													<div id="appperiod-hidden-tel" class="appperiod-hidden-tel">
														담당자 번호: <input type="text" class="President-num">-<input
															type="text" class="President-num1">-<input
															type="text" class="President-num2">


													</div>

													<div id="appperiod-hidden-online"
														class="appperiod-hidden-online">

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
												<div class="Recruitment-title-div"
													id="Recruitment-title-div">
													체용 제목 <input type="text" class="Recruitment-title" />


													<p id="innertest" class="innertest"></p>


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
					<h4 class="modal-title">출근 시간</h4>
				</div>
				<div class="modal-body">
					<div class="jobcho1"></div>
					<div class="jobcho2">
						<ul class="jobcho-detail2">

						</ul>
					</div>
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



	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</body>
</html>