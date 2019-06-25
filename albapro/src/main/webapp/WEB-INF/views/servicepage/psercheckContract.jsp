<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<meta name="description" content="">
<meta name="author" content="">

<title>프로알바</title>
<!-- Custom fonts for this template-->

<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=1">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<link rel="stylesheet" type="text/css"  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/psercheckContractcus.css" rel="stylesheet">

<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>

   <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



</head>


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
			<li class="nav-item">
          		<a class="nav-link" href="pserworkList?id=${login.id}">
					<i class="material-icons">dashboard</i>
					알바목록
				</a>
			</li>
			<li class="nav-item active">
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
			<li class="nav-item  ">
				<a class="nav-link" href="listResume?id=${login.id}">
				<i class="material-icons">library_books</i>
				이력서 관리
            	</a>
            </li>
        </ul>
      </div>
    </div>
         <!-- End of Sidebar -->
    </div>
<div class="content">
		<form id="form">
            <div id="createPdf" class="div_createPdf">
                <div class="box">
                   
            <h3 class="contract_title">전자 근로 계약서</h3>
                    <br>
                    <h4 class="gg">1. 근로 계약기간</h4><br>
                    <input type="hidden" id="c_code" name="c_code" value="${contract.c_code}" />
                    <div class="worktime_div">
                    	<span class="timepiker_txt_title">ㅡ ${fn:substring(contract.start_period,0,10)}부터 ${fn:substring(contract.end_period,0,10)}까지</span>
                    </div>

                    <h4 class="gg">2. 근무장소</h4><br>
                    <div class="worktime_div">
                    	<span class="timepiker_txt_title">ㅡ ${contract.work_place_name}</span>
                    </div>

                    <h4 class="gg">3. 업무의 내용</h4><br>
                    <div class="worktime_div">
                    	<span class="timepiker_txt_title">ㅡ ${contract.work_detail}</span>
                    </div>

                    <h4 class="gg">4. 소정근로시간</h4><br>
                    <div class="worktime_div">
                        <span class="timepiker_txt_title">ㅡ근로시간</span>
                            ${contract.start_work_time}
                        <span class="timepiker_txt">부터</span>
                            ${contract.end_work_time}
                        <span class="timepiker_txt">까지</span>
                    </div>

                    <h4 class="gg">5. 임금</h4><br>
                    <span class="t1">ㅡ 월(일, 시간)급 : </span>
                    ${contract.hour_wage}
                    <span>원</span><br><br>
                    
                    <span class="t1">ㅡ 기타 급여(재수당 등) </span>
                    <c:if test="${contract.additional_wage == '0'}">없음</c:if>
                    <c:if test="${contract.additional_wage =='1'}">있음</c:if>
                    <br>
                    
                    <span class="t1">ㅡ 임금지급일 : 매월(매주 또는 매일) </span>
                    ${contract.payday}
                    <span>일(휴일의 경우는 전일 지급)</span><br>

                    <h4 class="gg">6. 연차유급휴가</h4><br>
                    <span class="t1">ㅡ 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>

                    <h4 class="gg">7. 사회보험 적용여부(해당란에 체크)</h4><br>
                    <input class="che2" type="checkbox" id="고용보험" checked/><span>고용보험</span>
                    <input class="che2" type="checkbox" id="국민보험" checked /><span>국민연금</span>
                    <input class="che2" type="checkbox" id="건강보험" checked /><span>건강보험</span>
                    <input class="che2" type="checkbox" id="산재보험" checked /><span>산재보험</span>

                    <h4 class="gg">8. 근로계약서 교부</h4><br>
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
                    	<div id="sign2"></div>
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
                    
                    <h2 class="hh">근로자</h2><br>
                    <div id="sign" style="width: 40%; display: inline-block; float:right;">
                    	<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px;" width="240" height="90"></canvas>
                    	<img class="can1" id="myImage" style="margin:1px;">
                    	<div id="sign2"></div>
                	
                	    <div class="canvas_btn">
		
            	<button type="button" class="bt1" value="근로계약서 작성완료" id="signAgain">다시 서명하기</button>
				<input type="button" class="bt1" onclick="toDataURL2();"value="서명 저장">
				<!-- 시연 안할거라 숨겨 둡니다. -->
				<div class="hiddenbtn">
				<button  class="bt1" id="moveSign">서명란이동</button>
				<button  class="bt1" id="moveSignEnd">이동완료</button>
				</div>
					<!-- 시연 안할거라 숨겨 둡니다. -->
		
			</div>
                	
                	</div>
                	
                	
                    <span class="t3">근로자: </span>
                    <input class="tex6" name="p_name" type="text" maxlength="11" value="${login.name}"/><br><br> 
                     

                    <span class="t3">연락처: </span>
                    <input class="tex6" name="p_phone" type="text" maxlength="11" onkeypress="onlyNumber();" value="${login.phone}" /><br><br>
                    
                    <span class="t3">&nbsp주소:  &nbsp&nbsp </span>
                    <input class="tex10" name="p_address" type="text" /> <Br>
                    		
		 		
                </div>
               </div>
            </form>
        
				<div> 
					<button type="button" class="subbtn2" value="근로계약서 작성완료" id="submit2">근로계약서 작성완료</button>
				</div>
				
    </div>

</div>
   
   <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
   <script src="resources/js/servicepage2/popper.min.js"></script> 
   <script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
   <script src="resources/js/servicepage2/demo.js"></script>
   								
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="resources/js/contract.js?ver=5"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js">
</script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.8/FileSaver.min.js">
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous">
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
	<script src="resources/js/servicepage2/demo.js"></script>	
	<script>
	</script>
	<!-- 사인 스크립트  캔버스  -->
	<script>
    $(document).ready(function() {
    	var test = false;

       // $("#submit2").on("click", contractServerUp);

        function contractServerUp(e) {
    		$(".submit2").remove();
    		$(".signAgain").remove();
        	if(test) return;
        	
            console.log("aaa");
            html2canvas(document.getElementById('createPdf'), {
                onrendered: function(canvas) {

                    // 캔버스를 이미지로 변환
                    var imgData = canvas.toDataURL();

                    var imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
                    var pageHeight = imgWidth * 1.414; // 출력 페이지 세로 길이 계산 A4 기준
                    var imgHeight = canvas.height * imgWidth / canvas.width;
                    var heightLeft = imgHeight;

                    var doc = new jsPDF('p', 'mm');
                    var position = 0;

                    // 첫 페이지 출력
                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                    heightLeft -= pageHeight;

                    // 한 페이지 이상일 경우 루프 돌면서 출력
                    while (heightLeft >= 20) {
                        position = heightLeft - imgHeight;
                        doc.addPage();
                        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                        heightLeft -= pageHeight;
                    }

                    var formData = new FormData();
                    var d = new Date();
                    var pngName = "${contractPath}";
                    var fileName = "${contractPath}";
                    // 파일 저장
                    var file = doc.output('blob');
                    console.log(file);
                    formData.set('file', file, fileName);
                    console.log(doc);
                    console.log(formData);

                    $.ajax({
                    	async: false,
                        url: "${path}/wcontract/checkContract",
                        type: "post",
                        data: formData,
                        dataType: "text",
                        processData: false, // processType: false - header가 아닌 body로 전달
                        contentType: false,
                        success: function(data) {
                        	self.location = "${path}/removeFile?fileName="+encodeURI(data);
                        }
                    });
                }
            });
        }
        
        $("#submit2").click(function(){
        	var formData = $("#form").serialize();
        	var c_code = $("#c_code").val();
        	var blc, car;
		  	
		  	
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
	</script>
</body>
</html>