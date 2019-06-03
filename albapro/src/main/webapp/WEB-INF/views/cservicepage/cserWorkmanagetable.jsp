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

</head>
<style>
 .odd { background-color:#EAEAEA; }

        .Even { background-color : white; }
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
        <a href="/proalba" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<li class="nav-item  ">
            <a class="nav-link" href="cserAddJobopening_free?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 등록
            </a>
          </li>


		<li class="nav-item ">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서
            </a>
          </li>
          <li class="nav-item active">
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
            <a class="nav-link" href="${path}/proalba/comm">
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
         <div class="pser-header"><%@ include file="cserNavHeader.jsp"%>
         </div>
         <div class="pser-con">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-12">
                     <div class="card">
                        <div class="card-header card-header-primary">
                           <h4 class="card-title ">근태 관리</h4>
                           <p class="card-category">
                              ${map.list[0].sa_c} 님의 근태를 볼수 있습니다. <i
                                 class="material-icons calicon" data-toggle="modal"
                                 data-target="#myModal">달력보기 calendar_today</i>

<<<<<<< HEAD
									</p>
								</div>
								<div class="card-body">
									<div id="table" class="table-editable">
									    <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            							 aria-hidden="true">wf</i></a></span>
										<table id="example" class="table table-bordered table-responsive-md table-striped text-center" style="width: 100%">
											<thead>
												<tr>
													<th class="th-sm">날짜</th>
													<th class="th-sm">출근 시간</th>
													<th class="th-sm">퇴근 시간</th>
													<th class="th-sm">수정 하기</th>
												</tr>
											</thead>
											<tbody>
											
												<c:forEach var="row" items="${map.list}" varStatus="status" >
												
													<tr>
														<td class="pt-3-half" contenteditable="true">${row.sa_date}</td>
														<td class="pt-3-half" contenteditable="true">${row.sa_start}</td>
														<td class="pt-3-half" contenteditable="true">${row.sa_end}</td>
													  <td>
              					<span class="table-remove"><button type="button"class="btn btn-danger btn-rounded btn-sm ">Remove</button></span>
            								</td>
            							</tr>
												
												</c:forEach>
=======
                           </p>
                        </div>
                        <div class="card-body">
                           <div class="table-responsive">
                              <table id="example" class="mdl-data-table" style="width: 100%">
                                 <thead>
                                    <tr>
                                       <th class="th-sm">날짜</th>
                                       <th class="th-sm">출근 시간</th>
                                       <th class="th-sm">퇴근 시간</th>
                                       <th class="th-sm">수정 하기</th>
                                       <th class="th-sm">삭제 하기      <input type="button" value="추가하기" id="Binsert"/> </th>
                                    </tr>
                                 </thead>
                                 <tbody id="tbody">
                                    <c:forEach var="row" items="${map.list}" varStatus="status" >         
                                       <tr id="${status.count}" class="${row.w_code}" sa_code="${row.sa_code}">
                                          <td>${row.sa_date}</td>
                                          <td>${row.sa_start}</td>
                                          <td>${row.sa_end}</td>
                                          <td><input type="button" value="수정하기" class="Bupdate"/></td>
                                          <td><input type="button" value="삭제하기" class="Bdelete"/></td>
                                       </tr>
                                    
                                    </c:forEach>

                                 </tbody>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git

                              </table>
                           </div>
                        </div>
                     </div>          
                  </div>

<<<<<<< HEAD
										</table>
									</div>
								</div>
							</div>
							<input type="button" value="추가하기" id="Binsert" onclick="workinsert();"/>
							
						</div>
=======
               </div>
            </div>
         </div>
         <div class="pser-footer"><%@ include file="../servicepage/pserfooter.jsp"%></div>
      </div>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git

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
          <%@ include file = "../cservice/calendar.jsp" %>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
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
                                             <script src="resources/js/cserWorkmanagetableSC.js"></script>
                                            
                                            
                                            
                                
                                            
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
            
            $('table.mdl-data-table tbody tr:odd').addClass('odd');

            $('table.mdl-data-table tbody tr:even').addClass('Even');
      

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
<<<<<<< HEAD
      }); 
      
        //수정하기 버튼
    
      	
  
     
      $(document).on('click','.Bupdate',function() {
    	  $(this).parent().prev().replaceWith('<td><input type="time" /></td>');
          $(this).parent().prev().prev().replaceWith('<td><input type="time" id="time1"/></td>');
          $(this).replaceWith('<input type="button" class="recordupdate" value="업데이트" />');
      });  

  
        
      
      
    });
    $(document).on('click','.recordupdate',function() {
    	  $(this).parent().prev().replaceWith('<td>${row.sa_start}</td>');
          $(this).parent().prev().prev().replaceWith('<td>${row.sa_end}</td>');
    	$(this).replaceWith('<input type="button" class="Bupdate" value="수정하기" />');
    });
    /* $(".Bupdate").click(function(){
    	
        
        $(this).parent().prev().replaceWith('<td><input type="time" /></td>');
        $(this).parent().prev().prev().replaceWith('<td><input type="time" id="time1"/></td>');
        $(this).replaceWith('<input type="button" class="recordupdate" value="업데이트" />');
       
    });
    $(".recordupdate").click(function(){

        
        $(this).replaceWith('<input type="button" class="recordupdate" value="수정하기" />');
       
    }); */
    
   
    
 

  </script>
  

=======
      });
      
      var id;
      var class1;
      var tag;
      
      //수정하기 버튼
      $(document).on("click",".Bupdate",function(){
    	  $('#'+id).html(tag);
    	  id = $(this).parent().parent().attr('id');
    	  class1 = $(this).parent().parent().attr('class');
    	  tag = $(this).parent().parent().html();
          $(this).parent().prev().replaceWith('<td><input type="time" id="time2" value=""/></td>');
          $(this).parent().prev().prev().replaceWith('<td><input type="time" id="time1" value=""/></td>');
          $(this).replaceWith('<input type="button" id="recordupdate" value="업데이트" "/>');
      });
      
      //업데이트 버튼
      $(document).on("click","#recordupdate",function(){
    	  alert($("#time1").html());
    	  var time = $("#time1").val()+'/'+$("#time2").val()+'!'+class1;
    	  $.ajax({
			async: false,
			type: 'POST',
			data: time,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			url: 'http://localhost:8080/proalba/cserWorkmanagetableUpdate',
			success: function(data){ alert(data.message); location.reload(); },
			error : function(error) {alert("error : " + error);}
    	  });
      });
      
      //삭제 버튼
      $(document).on("click",".Bdelete",function(){
    	  var delete_w_code = $(this).parent().parent().attr('class');
    	  alert(delete_w_code);
    	  $.ajax({
			async: false,
			type: 'POST',
			data: delete_w_code,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			url: 'http://localhost:8080/proalba/cserWorkmanagetableDelete',
			success: function(data){ alert(data.message); location.reload(); },
			error : function(error) {alert("error : " + error);}
    	  });
      });
      
      var w_code;
      var sa_code_date
      var sa_code
      
      //추가 버튼
      $(document).on("click","#Binsert",function(){
    	  var pid1 = $("tbody").children().attr('class');
    	  var pid2 = pid1.substr(0, pid1.indexOf('/'));
    	  var d = new Date();
    	  var date = d.getFullYear()+(d.getMonth()+1)+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
    	  
    	  sa_code = $("tbody").children().attr('sa_code').split('/');
    	  alert(sa_code);
    	  w_code = pid2;
    	  var str1 = '<tr id="inserted_row" class="">';
    	  var str2 = '<td><input type="date" id="date" value=""/></td><td><input type="time" id="time11" value=""/></td>';
    	  var str3 = '<td><input type="time" id="time22" value=""/></td><td><input type="button" id="insertRecord" value="추가"/></td></tr>';
    	  var str = str1+str2+str3;
    	  $("#tbody").prepend(str);
      });
      
      $(document).on("click","#insertRecord",function(){
    	  sa_code_date = $('#date').val();
    	  alert('date: ' + $('#date').val().substr(0, 7));
    	  sa_code_date = $('#date').val().substr(0,7);
    	  sa_code_date = sa_code_date.replace('-',''); 
    	  alert('sa_code_date: '+ sa_code_date);
    	  var sa_code2 = sa_code[0] + '/' + sa_code_date + '/' + sa_code[2];
    	  alert(sa_code2);
    	  $('#inserted_row').attr('class',sa_code2);
    	  w_code = w_code + '/' + $('#date').val().substr(0,10).replace(/-/gi,'') + '/'+sa_code[2];
    	  alert(w_code);
    	  
    	  alert($('#inserted_row').attr('class'));
    	  
    	  if($("#time11").val().substr(0,3) > $("#time22").val().substr(0,3)){
        	  var str = $('#inserted_row').attr('class')+'!'+$('#date').val()+'@'+ $('#date').val().substring(2) + " " + $("#time11").val()
	  					+'#' + $('#date').val().substring(2) + " " +$("#time22").val()+'$'+w_code;
    	  }
    	  
    	  if($("#time11").val().substr(0,3) <= $("#time22").val().substr(0,3)){
    		  var split_date = $('#date').split('-');
    		  split_date[1] = split_date[1]+1;
    		  var split_date = split_date[0] + '-' + split_date[1] + '-' + split_date[2];
    		  
        	  var str = $('#inserted_row').attr('class')+'!'+$('#date').val()+'@'+ $('#date').val().substring(2) + " " + $("#time11").val()
	  					+'#' + split_date.substring(2) + " " +$("#time22").val()+'$'+w_code;
    	  }
    	  
    	  $.ajax({
			async: false,
			type: 'POST',
			data: str,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			url: 'http://localhost:8080/proalba/cserWorkmanagetableInsert',
			success: function(data){ alert(data.message); location.reload(); },
			error : function(error) {alert("error : " + error);}
    	  });
      });
  });
  </script>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
 
</body>
</html>