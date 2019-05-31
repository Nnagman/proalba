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


<script>
  var sel_file;
	$(function() {
		$("#startSearchDate, #endSearchDate").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					showOn : "both",
					buttonImage : "resources/images/date1.png",
					changeMonth : true,
					changeYear : true,
					changeMonth : true,
					dayNames : [ '월', '화', '수', '목', '금', '토', '일' ],
					dayNamesShort : [ '월', '화', '수', '목', '금', '토', '일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					showMonthAfterYear : true,
					yearSuffix : '년'
				});
	});

  $(document).ready(function() {
    $("#input_img").on("change", imgServerUp);
    
    function imgServerUp(e){

		var files = e.target.files; // 드래그한 파일들
		//console.log(files);
		var file = files[0]; // 첫번째 첨부파일
		var formData = new FormData(); // 폼데이터 객체
		formData.append("file", file); // 첨부파일 추가
		var filesArr = Array.prototype.slice.call(files);
		
         filesArr.forEach(function(f) {
            if (!f.type.match("image.*")) {
              alert("이미지만 가능");
              return;
            }
        }); 
			$.ajax({
				url: "${path}/addjob/upload",
				type: "post",
				data : formData,
				dataType: "text",
				processData: false, // processType: false - header가 아닌 body로 전달
				contentType: false,
				success: function(data){

					console.log("file_data: "+data);
					// 첨부 파일의 정보
					//var fileInfo = getFileInfo(data);
					
					if($("#sumImg").html() != ""){
						$.ajax({
							type: "post",
							url: "${path}/addjob/deleteServerFile",
							data: {fileName: $(".file_del").attr("data-src")},
							dataType: "text",
							success: function(result){
								if(result=="deleted"){
									$("#sumImg").empty();
									appendImg();
								}
							}
						});					
					}else{
						appendImg();
					}
					
					
					function appendImg(){
						// hidden 태그 추가
						var html = "<div><input type='hidden' name='file' value='"+data+"'>";
						// 미리보기 추가
						html += "<img class='attImg' style='width: 125%; max-width: 760px; height:80% ' src='<spring:url value='/resources" + data+ "'/>'/>";
						//삭제 태그 추가 
						html += "<a href='#' class='file_del' data-src='"+data+"'>[삭제]</a></div>";
						
						// div에 추가
						$("#sumImg").append(html); 
						
					}
					
					
				}     
        	}); 	
  	   }
    
	$("#sumImg").on("click", ".file_del" , imgServerDelete);
	
	function imgServerDelete(e){
		var that = $(this);
		$.ajax({
			type: "post",
			url: "${path}/addjob/deleteServerFile",
			data: {fileName:$(this).attr("data-src")},
			dataType: "text",
			success: function(result){
				if(result=="deleted"){
					that.parent("div").remove();
				}
			}
		});
	}
    
    
  });
/* 
  function e(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
      if (!f.type.match("image.*")) {
        alert("이미지만 가능");
        return;
      }

      sel_file = f;

      var reader = new FileReader();
      reader.onload = function(e) {
        $("#img").attr("src", e.target.result);
      }
      reader.readAsDataURL(f);
    });
  } */
</script>


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
          <li class="nav-item active ">
            <a class="nav-link" href="cserAddJobopening_free?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 등록
            </a>
          </li>
          
          
           <li class="nav-item ">
            <a class="nav-link" href="cserWcontract">
              <i class="material-icons">dashboard</i>
             전자근로 계약서
            </a>
          </li>
          <li class="nav-item ">
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
          <li class="nav-item ">
            <a class="nav-link" href="inqcareer?id=${login.id}">
              <i class="material-icons">library_books</i>
           직원  경력 조회     
              </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
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
            <div class="card-header card-header-primary">
              <h4 class="card-title">Material Dashboard Heading</h4>
              <p class="card-category">Created using Roboto Font Family</p>
            </div>
            <div class="card-body">
              <div id="typography">
                <div class="card-title">
                  <h2>Typography</h2>
                </div>
                <div class="row">
                 <form method="post" action="addjobopening_free">
	<div class="container">
	<input type="hidden" id="id" name="custId" value='${login.id}'/>
	<br>
		<div class="addjobopening_title"><h2>채용 공고 등록</h2></div>
		<br>
		<div class="div_table_border">
			<h5>근무지 정보</h5>
			<table class="table_addjobopening">
				<tr>
					<td class="table-active">공고제목</td>
					<td><input type="text" name="title" value="" style="width: 200%;"></td>
				</tr>	

				<tr>
					<td class="table-active">회사/점포명</td>
					<td><input type="text" name="work_place_name" value=""></td>
					<td class="table-active">대표자명(CEO)</td>
					<td><input type="text" name="c_name" value=""></td>
				</tr>

				<tr>
					<td class="table-active">모집인원</td>
					<td><input type="text" name="personnel" value=""></td>
				</tr>

				<tr>
					<td class="table-active">회사로고</td>
					<td>
						<div class="img_wrap">
							<div id="sumImg" ></div>
						</div> <input type="file" class="fileupload" id="input_img" name="inputFile" value="">
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>근무지역</h5>
			<table class="table_addjobopening">

				<tr>
					<td class="table-active">근무지</td>
						<td>
							<input type="text" class="tBox tAddr" id="sample6_postcode" name="Address1" placeholder="우편번호">
							<input type="button" id="find_addr" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" class="tBox tAddr" id="sample6_address" name="Address2" placeholder="주소" style="width: 50%;"><br>
							<input type="text" class="tBox tAddr" id="sample6_detailAddress" name="Address3" placeholder="상세주소" style="width: 50%;"><br>
							<input type="text" class="tBox tAddr" id="sample6_extraAddress" name="Address4" placeholder="참고항목">
						</td>
					</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>근무조건</h5>
			<table class="table_addjobopening">


				<tr>
					<td class="table-active">근무기간</td>
					<td><input type="radio" name="term" value="1">1주일이하
						<input type="radio" name="term" value="2">1주일-1개월
						<input type="radio" name="term" value="3">1개월-3개월
						<input type="radio" name="term" value="4">3개월-6개월 
						<input type="radio" name="term" value="5">6개월-1년
						<input type="radio" name="term" value="6">1년 이상
						<input type="radio" name="term" value="0">기간협의</td>
				</tr>

				<tr>
					<td class="table-active">근무요일</td>
					<td>
						<select name="work_day" class="week">
							<option value="none">선택</option>
							<option value="1">평일</option>
							<option value="2">주말</option>
							<option value="3">기간협의</option>
						</select>
					</td>
				</tr>

				<tr>
					<td class="table-active">근무시간</td>
					<td>
						<select class="se_walk_time" name="work_time1">
							<option value="none">선택</option>
							<option value="1">오전</option>
							<option value="2">오후</option>
							<option value="3">세벽</option>
							<option value="4">오전~오후</option>
							<option value="5">오후~세벽</option>
							<option value="6">풀타임</option>
						</select>	시간	<input type="text" name="work_time2" value=" ">
					</td>
				</tr>

				<tr>
					<td class="table-active">급여</td>
					<td>급여 <input type="text" name="hour_wage" value="">
					</td>
				</tr>
			</table>
		</div>
		<br>

		<div class="div_table_border">
			<h5>지원조건</h5>
			<table class="table_addjobopening">


				<tr>
					<td class="table-active">성별</td>
					<td><input type="radio" name="sex" value="1">성별무관
						<input type="radio" name="sex" value="2">남자
						<input type="radio" name="sex" value="3">여자

					</td>
				</tr>

				<tr>
					<td class="table-active">연령</td>
					<td>
						<input type="radio" name="age_set" id="age_set" value="1">연령무관
						<input type="text" name="age_min" id="age_min" value=" ">세 이상
						<input type="text" name="age_max" id="age_max" value=" ">세 이하
					</td>
				</tr>

				<tr>
					<td class="table-active">학력조건</td>
					<td>
						<select class="se_walk_time" name="education">
							<option value="none">선택</option>
							<option value="1">초졸</option>
							<option value="2">중졸</option>
							<option value="3">고졸</option>
							<option value="4">초대졸</option>
							<option value="5">대졸</option>
							<option value="6">무관</option>
						</select>
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>모집종료일</h5>
			<table class="table_addjobopening">
				<tr>
					<td class="table-active">모집종료일</td>
					<td>
						<input type="text" id="startSearchDate" name="end_date" value="" style="height: 18px; width: 120px">
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>추가내용</h5>
			<table class="table_addjobopening">
				<tr>
					<td>
						<textarea rows="5" cols="100" id="content" name="content"></textarea>
					</td>
				</tr>
			</table>
		</div>
		<br>
		
		<div class="buttonline_addjobopening_free">
			<input type="submit" id="submit" value="등록" />
		</div> <br>
	</div>
</form>
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