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
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<meta name="description" content="">
<meta name="author" content="">

<title>나의 급여</title>
<!-- Custom fonts for this template-->



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
<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>



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
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="pworkmanage?id=${login.id}">
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
          <li class="nav-item">
            <a class="nav-link" href="pworkmanage?id=${login.id}">
              <i class="material-icons">person</i>
              근태 관리
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="pserSalary?id=${login.id}">
              <i class="material-icons">content_paste</i>
              
              급여 관리
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="inqcareer?id=${login.id}">
              <i class="material-icons">library_books</i>
              경력 관리
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
      <div class="content">
        
         <div class="con-pser">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-12">
                     <div class="card">
                      
                        <div class="contract_title">
            <h2 class="contract_title" >전자 근로계약서</h2>
        </div>
        <form id="formCon" name="formCon">
            <div class="div_createPdf" id="createPdf">
            	<img src='${path}/displayContract?name=${contractPath}'/>
            	
            	
            	
            	
            	<div class="boxcover">
            	<div class="box" style="z-index: 100;">
            	<div class="box-p">
            	<h2 class="hh">근로자</h2><br>
                    <div id="sign" style="width: 40%; display: inline-block; float:right;">
                    	<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px;" width="240" height="90"></canvas>
                    	<img class="can1" id="myImage" style="margin:1px;">
                	</div>
                    <span class="t3">근로자: </span>
                    <input class="tex2" name="p_name" type="text" maxlength="11" /><br><br> 
                     

                    <span class="t3">연락처: </span>
                    <input class="tex6" name="p_phone" type="text" maxlength="11" onkeypress="onlyNumber();" /><br><br>
                    
                    <span class="t3">&nbsp주소:  &nbsp&nbsp </span>
                    <input class="tex10" name="p_address" type="text" /> <Br><Br>
                    
                    
                    	<div style="text-align: center;">
				<button type="button" class="bt1" value="근로계약서 작성완료" id="submit2">근로계약서 작성완료</button>
            	<button type="button" class="bt1" value="근로계약서 작성완료" id="signAgain">다시 서명하기</button>
				<input type="button" class="bt1" onclick="toDataURL();"value="서명 저장">
				<button type="button" class="bt1" id="moveSign">서명란이동</button>
				<button type="button" class="bt1" id="moveSignEnd">이동완료</button>
				<!-- <button type="button" class="bt1" id="endGame">최종완료</button> -->
			</div>
            	
            	</div>
            		
                </div>
            	</div>
            	
			</div>
		
		
        </form>
                     </div>
                  </div>

               </div>
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
	<!-- 사인 스크립트  캔버스  -->
	<script>
    $(document).ready(function() {
    	var test = false;

        $("#submit2").on("click", contractServerUp);

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
    }); 
	</script>

</body>
</html>