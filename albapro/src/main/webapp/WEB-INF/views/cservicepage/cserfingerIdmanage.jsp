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
	margin: 0 0 0 20px;
	color:#F15F5F;
	    font-size: 1.2rem;
}
.Bupdate{
    font-size: 1.2rem;
    color:#CC723D;
}
#Binsert{
margin: 0 0 0 20px;
	color:#B7F0B1;
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
	z-index: -1;
	font-size: 0.8rem;
}

#recordupdate{

	color:#2F9D27;
	    font-size: 1.2rem;
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
        <li class="nav-item">
            <a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 
            </a>
          </li>
          
              </li>
           <li class="nav-item">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}&n_code=">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
          
          
           <li class="nav-item ">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 목보
            </a>
      
          <li class="nav-item active">
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
        
        	<div class="nav-itemsub">
							<ul>
							
								<li><a class="nav-link" href="cserEmpManage?id=${login.id}"> 직원 목록 </a></li>

								<li><a class="nav-link" href="cserFullWorkmanagetable?id=${login.id}"> 일별 근태 관리 </a></li>

								<li><a class="nav-link" href="cserEmpManage?id=${login.id}">
										급여 관리 </a></li>

								<li><a class="nav-link" href="#"> 경력 관리 </a></li>
								
									<li><a class="nav-link" href="cserfingerIdmanage?id=${login.id}"> 지문관리 </a></li>

							</ul>

						</div>
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
									<h4 class="card-title ">지문 관리</h4>
									<p class="card-category">
										직원의 근태를 볼수 있습니다. 
									</p>
								</div>
								<div class="card-body">
									<div class="table-responsive">
									
										<table id="example" class="mdl-data-table" style="width: 100%">
											<thead>
												<tr>
													<th class="th-sm">직원</th>
													<th class="th-sm">계약시작일</th>
													<th class="th-sm">지문 아이디</th>
													<th class="th-sm">추가</th>	
												</tr>
											</thead>
											<tbody id="tbody">
												<c:forEach var="row" items="${list}" varStatus="status">
													<tr id="${status.count}" class="${row.em_code}">
														<td>${row.name}</td>
														<td>${row.start_period}</td>
														<c:if test='${row.finger_id == 0}'> <td> 등록된 지문이 없습니다. </td> </c:if>
														<c:if test='${row.finger_id != 0}'> <td> ${row.finger_id} </td> </c:if>
														<td> <i class="fas fa-pencil-alt Bupdate"></i> <i class="fas fa-trash-alt Bdelete"></i> </td>
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
    
            var id;
            var class1;
            var tag;

            //수정하기 버튼
            $(document).on("click",".Bupdate",function(){
            	$('#'+id).html(tag);
          	  	id = $(this).parent().parent().attr('id');
          	  	class1 = $(this).parent().parent().attr('class');
          	  	tag = $(this).parent().parent().html();
          	  	console.log('tag : ' + tag  + '//' + 'id : ' + id);
                $(this).parent().prev().replaceWith('<td><input type="text" id="finger_id" value=""/></td>');
                $(this).replaceWith(' <i class="fas fa-check-square" id="recordupdate"></i>');
            });
            
            //업데이트 버튼
            $(document).on("click","#recordupdate",function(){
          	  var str = class1 + '/' + $('#finger_id').val();
          	  console.log(str);
          	  $.ajax({
      			async: false,
      			type: 'POST',
      			data: str,
      			dataType: 'json',
      			contentType: 'application/json; charset=UTF-8',
      			url: '${path}/cserfingerIdupdate',
      			success: function(data){
      				if(data == null || data == undefined){
      					alert(data.message); location.reload();
      				}
      				alert(data.message); location.reload();
      			},
      			error : function(error) {alert("error : " + error);}
          	  });
            });
            
            //삭제 버튼
            $(document).on("click",".Bdelete",function(){
          	  var str = $(this).parent().parent().attr('class');
          	  $.ajax({
      			async: false,
      			type: 'POST',
      			data: str,
      			dataType: 'json',
      			contentType: 'application/json; charset=UTF-8',
      			url: '${path}/cserfingerIdremove',
      			success: function(data){
      				if(data == null || data == undefined){
      					alert(data.message); location.reload();
      				}
      				alert(data.message); location.reload();
      			},
      			error : function(error) {alert("error : " + error);}
          	  });
            });
      });
  }); 
  </script>
</body>
</html>