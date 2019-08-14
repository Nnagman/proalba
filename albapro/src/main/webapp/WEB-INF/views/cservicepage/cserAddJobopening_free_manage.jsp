 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <head>
   	  	<!-- Custom fonts for this template-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
		<!-- Custom styles for this template-->
		<link href="resources/css/servicepage/demo.css" rel="stylesheet">
		<link href="resources/css/servicepage/pservicepagecus.css" rel="stylesheet">
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
		<link rel="stylesheet" href="resources/css/albamanage.css" />
		<link rel="stylesheet" href="resources/css/albamanagecus.css" />
		<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
		<link rel="stylesheet" href="resources/css/cserAddjobOpningCS.css" />
		
		<link rel="stylesheet"
   		href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
   		integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
   		crossorigin="anonymous">
		
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
   <%@ include file="../include/redirect_p.jsp"%>
	<script>

		$(document).ready(function(){
			console.log(arrJobCodeWide);			
		});

	</script>
   <style>
   .th-sm{
   width: 127px !important;
   }
   .recruinfo-title-p{
   margin-top: 61px;
   }
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
.sorting_1{
width: 125px !important;
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

.Bcontract_send{
margin:0 0 0 15px;
font-size:20px;
}


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
      
      .custom-control{
      vertical-align:top;
      }
      
      .placho-line1{
         margin: 0 !important;   
      }
      .custom-control{
      display: inline-block !important;
      }
      .salary{
      width: 59px !important;
      }
      header{
      height:80px !important;
      }
      .card-body{
      padding: 0px !important;
      }
  	  .title{
  	  width: 320px !important;
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
      .col-sm-12{
      width: 1110px !important;
      padding-left: 0px !important;
      padding-right: 0px !important;
      
      }
      .row{
      text-align: left !important;
      }
      .a1{
      text-align: center;
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
.data{
width: 130px !important;

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
      .p_date{
      width: 110px !important;
      }
      .thea{
      color: white;
      background-color: #343a40;
      border-color: #454d55;
      height: 50px;
      }
      .row{
      padding-left: 0px !important;
      width: 1110px;
      margin: 0px !important;      }
      th, td{
      height: 50px !important;
      }
      td{
      text-align: center !important;
      }
      .recruinfo-title, .recruinfo-title-p{
      font-family:'NanumSquareRound', sans-serif !important;
      font-weight: 800;
      text-align: center;
      }
   </style>
<body>
   <%@ include file="../include/header.jsp"%>

     <div class="container">
     <div class="recruinfo-title">
			<h2 class="recruinfo-title-p">채용 공고</h2>
		</div>
		<br>
		<br>
			<div class="card-header card-header-primary">
									<h4 class="card-title " style="color: #474747;">채용공고 관리</h4>
									<p class="card-category" style="color: #474747;">
										자신이 작성한 채용공고를 관리하는 페이지 입니다.
									</p>
								</div>
								<div class="card-body">
									
										<table id="example" class="mdl-data-table" style="width: 100%">
											<thead class="thea">
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
													<td class="a1">
														<c:if test="${row.way eq '온라인접수'}">
														 <a class="a1" style="margin-right: 35%;" href="checkResume?n_code=${row.n_code}"><i class="fas fa-file-import Bcontract_send"></i></a>
														</c:if>
													</td>
													<td><a href="cserWcontractForm?id=${login.id}&n_code=${row.n_code}"><i style="margin: 0px;" class="far fa-clipboard Bcontract"></i></a></td>
													<td><i style="margin-left: 0px; margin-right: 22px;" class="fas fa-trash-alt Bdelete"></i></td>
													</tr>
												</c:forEach>
											</tbody>

										</table>
									</div>
								
	      </div>
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
               <h4 class="modal-title">직종 선택</h4>
            </div>
            <div class="modal-body">
               <div class="jobcho1"></div>
               <div class="jobcho2"></div>
               <div class="jobcho3-title">선택된 직종</div>
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
   <script src="resources/js/cserWorkmanagetableSC.js"></script>
   
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30778415e99d74364ec3cdbc2fd242bf&libraries=services,clusterer,drawing"></script>
   <script src="//dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   <!-- 주소검색  -->
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
			error : function(error) {alert("지원한 이력서가 있어 삭제가 되지 않습니다.");}
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