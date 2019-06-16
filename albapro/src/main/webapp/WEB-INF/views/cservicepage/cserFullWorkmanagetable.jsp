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



<!-- Custom styles for this template-->
<!--  <link rel="stylesheet" href="resources/css/bootstrap.css" /> -->
<link href="resources/css/servicepage/material-dashboard.css"
	rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/pservicepagecus.css"
	rel="stylesheet">

<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">



<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

.datesel{
    width: 105px;
    margin: 0 0 20px 0;
}

.dataTables_filter{
	display:none;
	}
	
	.datediv{
	    position: absolute;
    margin: -4px 0 0 55%;
    z-index:5;
    color:#AAAAAA;
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
					<a href="/proalba" class="simple-text logo-normal"> proalba </a>
				</div>
				<div class="sidebar-wrapper">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link"
							href="cserAddJobopening_free?id=${login.id}"> <i
								class="material-icons">dashboard</i> 채용공고 등록
						</a></li>
						<li class="nav-item "><a class="nav-link"
							href="ccontract?id=${login.id}"> <i class="material-icons">dashboard</i>
								전자근로 계약서
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="cserWcontractForm?id=${login.id}"> <i
								class="material-icons">dashboard</i> 전자근로 계약서 작성
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="cserEmpManage?id=${login.id}"> <i
								class="material-icons">person</i> 직원 관리
						</a></li>

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

							<li><a class="nav-link"
								href="cserfingerIdmanage?id=${login.id}"> 지문관리 </a></li>

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
									<h4 class="card-title ">일별 근태 관리</h4>
									<p class="card-category">
										직원의 일별 근태를 볼수 있습니다. 

									</p>
								</div>
								<div class="card-body">
									<div class="table-responsive">

			
										<!--날짜 선택기  -->
										<div class="datediv">
										날짜: <input type="text" id="datepicker" class="form-control datesel" onchange="changedate()"/>
									
													<script>
													
														  $("#datepicker").datepicker({
		      													 dateFormat:'yy-mm-dd'  //Input Display Format 변경
		      	      												     
		      												  });
		      												 $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
												
      												
   													 </script>
										<!--날짜 선택기  -->
										</div>
										<table id="example" class="mdl-data-table" style="width: 100%">
											<thead>
												<tr>

													<th class="th-sm">날짜</th>
													<th class="th-sm">이름</th>
													<th class="th-sm">출근 시간</th>
													<th class="th-sm">퇴근 시간</th>



												</tr>
											</thead>
											<tbody id="tbody">
												<c:forEach var="row" items="${list}" varStatus="status">
													<tr>


														<td>${row.sa_date}</td>
														<td>${row.name}</td>
														<td>${row.sa_start}</td>
														<td>${row.sa_end}</td>


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
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">출근 시간</h4>
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
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/servicepage2/moment.min.js"></script>
	<script src="resources/js/servicepage2/bootstrap-datetimepicker.min.js"></script>


	<script>

    $(document).ready(function() {
      $().ready(function() {
          
    	  var search =$('#datepicker').val();
      	
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
    		/* var search =$('#datepicker').val();
        	var table =$('#example').dataTable();
    		table.fnFilter(search); */
    		
            
            $('table.mdl-data-table tbody tr:odd').addClass('odd');
            $('table.mdl-data-table tbody tr:even').addClass('Even');

   
      
     	

     
    });
  });

    
</script>



<!--  날짜만 검색하게 만들기 조회버튼 -->
<!--   <script>

$(document).ready(function(){


	
	
	
	
	  
	$(document).on("click",'#searbtn',function(){ 
		var search =$('#datepicker').val();
	
		 search = search.substring(2,10); 
		console.log(search); 

		var table =$('#example').dataTable();
		table.fnFilter(search);
		
	

	


	/* keypress 실패작 */

/* 		var search1 =$('input[type="search"]');
		
		search1.attr('id','search_input');
	
	  	var fosearch =search1.focus(); 
			var search2 =$('input[type="search"]').value = search;  
		 	var search3 =$('input[type="search"]').val(search2);    */ 
		 
		/* keypress 실패작 */	 	
	
	});
		
	}); 

   

</script> 
 날짜만 검색하게 만들기 -->

<!-- 날짜별 조회 버튼 없이 -->
<script>
function changedate(){
	var search =$('#datepicker').val();
	
	 search = search.substring(2,10); 
	console.log(search); 

	var table =$('#example').dataTable();
	table.fnFilter(search);
	
	
}
</script>
<!-- 날짜별 조회 버튼 없이 -->

</body>
</html>