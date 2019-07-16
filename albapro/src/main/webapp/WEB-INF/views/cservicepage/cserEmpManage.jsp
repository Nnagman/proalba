<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
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
<script src="resources/js/bootstrap.js"></script>



</head>
<style>
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

.card-btn {
	background-color: #2e3949 !important;
}


.addfingerid{
    width: 250px;
    padding:10px;
    position: relative;
    text-align: center;
    border: 1px solid;
    margin: 0 0 20px 70rem;

        border: 1px solid #999;
            box-shadow: 1px 1px 1px 1px #999;
    border-radius: 5px;
}
</style>

<body>
	<c:if test="${login.id != null}">
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

							<li class="nav-item  "><a class="nav-link"
								href="cserAddJobopening_free_manage?id=${login.id}"> <i
									class="material-icons">dashboard</i> 채용공고
							</a></li>
								
							

								<li class="nav-item"><a class="nav-link"
								href="cserWcontractForm?id=${login.id}&n_code="> <i
									class="material-icons">dashboard</i> 전자근로 계약서 작성
							</a></li>

							<li class="nav-item "><a class="nav-link"
								href="ccontract?id=${login.id}"> <i class="material-icons">dashboard</i>
									전자근로 계약서 목록
							</a></li>
						

							<li class="nav-item active"><a class="nav-link"
								href="cserEmpManage?id=${login.id}"> <i
									class="material-icons">person</i> 직원 관리


							</a></li>


						</ul>


						<div class="nav-itemsub">
							<ul>

								<li><a class="nav-link" href="cserEmpManage?id=${login.id}"> 직원 목록 </a></li>
								
								<li><a class="nav-link" href="cserFullWorkmanagetable?id=${login.id}"> 일별 근태 관리 </a></li>

								<li><a class="nav-link" href="cserEmpManage?id=${login.id}">
										급여 관리 </a></li>

								<!-- <li><a class="nav-link" href="#"> 경력 관리 </a></li> -->
								
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
										<h4 class="card-title ">직원 관리</h4>
										<p class="card-category">사업장내 직원을 관리할 수 있습니다.</p>
									</div>
									<div class="card-body">
										<div class="table-responsive">

								
											<c:forEach var="row" items="${list}">
												
												<div class="card">
													<div class="card-header">
														<h3>${row.name}</h3>
													</div>
													<div class="card-body">
<<<<<<< HEAD
														<fmt:parseNumber var="end_time" value="${row.end_period}" integerOnly="true"/>
=======

														<fmt:parseNumber var="end_time" value="${row.end_date.time / (1000*60*60*24)}" integerOnly="true"/>

>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
														<h5 class="card-title">휴대번호: ${row.phone}</h5>
														<br>
														<h5 class="card-title">생년 월일: ${row.birthday}</h5>
														<br>
														<h5 class="card-title">계약 시작일:<fmt:formatDate value="${row.join_date}" pattern="yyyy/MM/dd"/></h5>
														<c:if test="${row.end_date != null}">
															<h5 class="card-title">계약 종료일: <fmt:formatDate value="${row.end_date}" pattern="yyyy/MM/dd"/></h5>
														</c:if>
															
														<a href="cserSalary?id=${row.id}/${row.em_code}&&name=${row.name}" class="btn btn-primary card-btn">급여 기록</a>
														<a href="cserWorkmanagetable?id=${row.id}&&cid=${login.id}&&em_code=${row.em_code}&&name=${row.name}&&end_date=${end_time}" class="btn btn-primary card-btn ">근태 기록</a>
														<a href="cserInqcareer?id=${row.id}&&name=${row.name}" class="btn btn-primary card-btn">경력 조회</a>
														<a href="cserCareerLeave?em_code=${row.em_code}&&id=${login.id}" class="btn btn-primary card-btn">퇴사처리</a>
													</div>
													
														<!--============= 지문id등록 div   -->
														
														
														<!--============= 지문id등록 div   -->
														
												</div>
												</c:forEach>
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






		<!-- Modal -->
		<div class="modal fade" id="basicExampleModal" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
				
				
						
					</div>
					<div class="modal-footer">

						<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>

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
      
     	      /*   $('#savefinger').on('submit',function(e){
     	    	  var fingerid=$('#fingerid').val();
     	       	if(fingerid > 127){
     	       		alert('127이상은 안됩니다.');
     	       	}else{
     	       	 $.ajax({
                     url: "${path}/empfingeridUpdate",
                     type: "POST",
                     data:{
                    	 
                    	 "fingerid":fingerid
                    	 
                    	 },
                     success: function(data){
                         alert("Successfully submitted.")
                     }
                 });
     	       	alert('지문아이디'+ fingerid + '저장!');
     	       	}
     	       });  */
		
      }); 
    });
    
    
    
    
  </script>

<script>
/* ------지문등록 div show script */
 

$(document).ready(function(){
	 $().ready(function() {
	$('.addbtnfi').on('click',function(e){
		 $(this).after('<div class="addfingerid"  <p>1~127까지 중 숫자를 입력해주세요</p> <input type="text" id="fingerid"maxlength="3" name="fingerid" /> <br/> <input type="button" class="btn btn-primary savefinger"  value="저장"/> <input type="button" class="btn btn-primary fingerdivclose"  value="닫기" /> </div>')

		});

		$('.fingerdivclose').on('click',function(){
			console.log($(this).parent());
		});
		
		$('.savefinger').on('click', function() { });
	 });
});

/*  end */
</script>

	</c:if>
</body>
</html>