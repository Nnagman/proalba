<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>

<title>프로알바</title>

<!-- Custom fonts for this template-->

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	
	<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
   integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
   crossorigin="anonymous">

<!-- Custom styles for this template-->
<!--  <link rel="stylesheet" href="resources/css/bootstrap.css" /> -->
<link href="resources/css/servicepage/material-dashboard.css"
	rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/pservicepagecus.css"
	rel="stylesheet">


<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>

</head>
<style>
.odd {
	background-color: #EAEAEA;
}

.Even {
	background-color: white;
}

.Bdelete{
	margin: 0 0 0 5px;
	color:#F15F5F;
	    font-size: 1.2rem;
}
.Bupdate{
    font-size: 1.2rem;
    color:#CC723D;
}

.Bcontract{
	 font-size: 1.5rem;
	 margin: 0 0 0 40px;
}
#Binsert{
margin: 0 0 0 20px;
	color:#B7F0B1;
	    font-size: 1.2rem;
}

#recordupdate{
	margin: 0 0 0 20px;
	color:#2F9D27;
	    font-size: 1.2rem;
}
.nav-itemsub li {
	list-style: none;
	color: white !important;
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

</style>

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
					<a href="/" class="simple-text logo-normal"> proalba </a>
				</div>
				<div class="sidebar-wrapper">
        <ul class="nav">
        <li class="nav-item active">
            <a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 
            </a>
          </li>
          
           <!-- 채용공고 등록 하위 메뉴 -->
								<div class="nav-itemsub">
							<ul>

								<li><a class="nav-link" href="cserAddJobopening_free?id=${login.id}">채용공고 등록 </a></li>
								
								<li><a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}"> 채용공고  관리 </a></li>

							

							</ul>

						</div>

				
				<!-- 채용공고 등록 하위 메뉴 -->
          
        
          <li class="nav-item">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}&n_code=">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
        

           <li class="nav-item ">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 목록
            </a>
          </li>
         
          <li class="nav-item ">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
             직원 관리
            </a>
          </li>
     
          <%-- <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li> --%>
        
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
									<h4 class="card-title ">채용공고 관리</h4>
									<p class="card-category">
										자신이 작성한 채용공고를 관리하는 페이지 입니다.
									</p>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="example" class="mdl-data-table" style="width: 100%">
											<thead>
												<tr>
														<th class="local">근무지</th>
														<th class="title">공고제목</th>
														<th class="data">근무시간</th>
														<th class="salary">급여</th>
														<th class="p_date">공고등록일</th>	
														<th class="th-sm">지원현황</th>
														<th class="th-sm">빠른 근로계약서</th>
														<th class="th-sm">삭제 </th>
												</tr>
											</thead>
											<tbody id="tbody">
												<c:forEach var="row" items="${list}" varStatus="status">
													<tr id="${row.n_code}">
													<td class="local">${row.address}</td>
													<td class="title">
														<a href="recruinfoDetail?n_code=${row.n_code}">
															<span class="company">${row.work_place_name}</span>
															<span>${row.title} </span>
														</a>
													</td>
													<td class="data">${row.work_time1} ~ ${row.work_time2}</td>
													<td class="salary">${row.hour_wage}</td>
													<td class="p_date"><fmt:formatDate value="${row.p_date}" pattern="yyyy-MM-dd"/></td>
													<td>
														<c:if test="${row.way eq '온라인접수'}">
														 <a href="checkResume?n_code=${row.n_code}"><i class="far fa-clipboard Bcontract"></i></a>
														</c:if>
													</td>
													<td><a href="cserWcontractForm?id=${login.id}&n_code=${row.n_code}"><i class="far fa-clipboard Bcontract"></i></a></td>
													<td><i class="fas fa-trash-alt Bdelete"></i></td>
												
													</tr>

												</c:forEach>
											</tbody>

										</table>
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
				<h4 class="modal-title">출근 시간</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<%@ include file="../cservice/calendar.jsp"%> 
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
          $(this).replaceWith(' <i class="fas fa-check-square" id="recordupdate"></i>');
          

      });
      
  /*     //업데이트 버튼
      $(document).on("click","#recordupdate",function(){
    	  alert($("#time1").html());
    	  var time = $("#time1").val()+'/'+$("#time2").val()+'!'+class1;
    	  $.ajax({
			async: false,
			type: 'POST',
			data: time,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			url: 'http://39.127.7.84:8080/proalba/cserWorkmanagetableUpdate',
			success: function(data){
				if(data == null || data == undefined){
					alert(data.message); location.reload();
				}
				alert(data.message); location.reload();
			},
			error : function(error) {alert("error : " + error);}
    	  });
      }); */
      
      //삭제 버튼
      $(document).on("click",".Bdelete",function(){
    	  var delete_n_code = $(this).parent().parent().attr('id');
    	  alert(delete_n_code);
     	  $.ajax({
			async: false,
			type: 'POST',
			data: delete_n_code,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			url: '${path}/cserAddJobopeningfreemanageDelete',
			success: function(data){
				if(data == null || data == undefined){
					alert(data.message); location.reload();
				}
				alert(data.message); location.reload();
			},
			error : function(error) {alert("error : " + error);}
    	  });  
      });
      
      var sa_code_date
      var sa_code
      
      //추가 버튼
      $(document).on("click","#Binsert",function(){
    	  var pid1 = $("tbody").children().attr('class');
    	  var d = new Date();
    	  var date = d.getFullYear()+(d.getMonth()+1)+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
    	  
    	  sa_code = $("tbody").children().attr('class').split('/');
    	  console.log(sa_code[0]);
    	  console.log('${map.id}' + ' ' + '${login.id}');

    	  var str1 = '<tr id="inserted_row" class="">';
    	  var str2 = '<td><input type="date" id="date" value=""/></td><td><input type="time" id="time11" value=""/></td>';
    	  var str3 = '<td><input type="time" id="time22" value=""/></td><td><input type="button" id="insertRecord" value="추가"/></td></tr>';
    	  var str = str1+str2+str3;
    	  $("#tbody").prepend(str);
      });
      
      $(document).on("click","#insertRecord",function(){
    	  sa_code_date = $('#date').val();
    	  sa_code_date = $('#date').val().substr(0,7);
    	  sa_code_date = sa_code_date.replace('-',''); 

    	  var sa_code2 = '${map.id}' + '/' + sa_code_date + '/' + '${login.id}';

    	  var w_code = '${map.id}' + '/' + $('#date').val().replace(/-/gi,'') + ' ' + $("#time11").val();
    	  
    	  var str = sa_code2 + '!' + $('#date').val() + '@' + $("#time11").val() +'#' + $("#time22").val() + '$' + w_code + '*' + '${map.em_code}';
    	  
    	  $.ajax({
			async: false,
			type: 'POST',
			data: str,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			url: '${path}/cserWorkmanagetableInsert',
			success: function(data){ 
				if(data == null || data == undefined){
					alert(data.message); location.reload();
				}
				alert(data.message); location.reload();
			},
			error : function(error) {alert("error : " + error); location.reload();}
    	  });
      });
  });
  </script>
</body>
</html>