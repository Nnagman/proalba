<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<%@ include file="../include/loginCheck.jsp"%>

<script type="text/javascript"
	src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>프로알바</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->



<!-- Custom styles for this template-->
 <link rel="stylesheet" href="resources/css/bootstrap.css" />
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


   <link rel="stylesheet" href="resources/css/recruinfo/job.css">
<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css">
<link rel="stylesheet" href="resources/css/recruinfo/sub.css">
<link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">
 
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
 
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/css/mdb.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
     <link href="resources/css/datatables.min.css" rel="stylesheet">
   


<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>


</head>

<style>
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

.recruinfo-title {
	text-align: center;
	margin-top: 50px;
}

.recruinfo-title-p {
	font-weight: 800;
}

.p.count {
	margin-top: 0px !important;
}

p {
	margin-bottom: 0px !important;
}

#JobCount div p.count {
	margin: 0 0 0 0 !important;
}

.jobSearch dl .data .tabForm li a {
	height: 34px !important;
	padding-top: 5px !important;
	vertical-align: middle !important;
	margin: 0;
	
}

.jobSearch dl .value span {
	height: 23px !important;
}

.placho-line1{
	margin: 0 !important;	
}

.recruinfo-list{
width:100%;
}
header{
height:80px !important;
}

.recruinfo-table{

    position: relative;
    width: 100%;
    margin: 0;
    padding: 0;
    font-family: 'Malgun Gothic';
    letter-spacing: -1px;
    border-top: 1px solid #aaa;
}

.recruinfo-table th{

text-align:left !important;
    font-weight: bold;
    text-align: -internal-center;
    display: table-cell;
    vertical-align: inherit;
}




tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

.recruinfo-list table tr th {
    padding: 9px 0 10px;
    padding: 11px 0 8px\0;
      padding-left: 15px;
    line-height: 1;
    color: #666a5b;
    background-color: #f2f2f2;
    border: 0px solid !important;
    border-bottom: 1px solid #b5b5b5 !important;
}

.recruinfo-list table tr td {
    padding: 12px 0;
    line-height: 1;
    text-align: left;
    color: #474747;
     border: 0px solid !important;
    border-bottom: 1px solid #e4e4e4 !important;
        padding-left: 15px;
       
}

.recruinfo-list table tr td.local {
    width: 13rem;
    padding-left: 15px;
    
}

div.dataTables_filter label{
float: right;
margin-right: 40px;
}

.jobcho-line1{
text-align: center;
}

.company{
    display: block;
    height: auto;
    padding: 2px 0 6px !important;
    font-size: 13px;

    background: none !important;
    color: #0075ab;
}

.recruinfo-list .title a span {
    position: relative;
    overflow: hidden;
  
    
 
    font-family: tahoma;
    line-height: 12px;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
    text-align: left;

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
top:260px;
    position: relative;
}
.content {
position: absolute; left: 50%; transform: translateX(-50%); 
height: 80%;
top: 150px;
}

.page-footer{
	top: 800px !important;
}

.container{
}


.footer-logo{
	left:500px;
	width:80px;
}
.thead-dark th{color:#fff;background-color:#343a40;border-color:#454d55;
			height: 50px !important;
}
</style>

<body>
	<%@ include file="../include/header.jsp"%>
	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">일별 근태 관리</h2>
		</div>
		<br><br><br><br>

		<div id="SubContents">

			<input type="hidden" id="WsSrchKeywordWord" name="WsSrchKeywordWord"
				value=""> <input type="hidden" id="hidschContainText"
				name="hidschContainText" value=""> <input type="hidden"
				id="hidWsearchInOut" name="hidWsearchInOut" value="">
			<!-- base hidden parameter -->
			<input type="hidden" id="hidSort" name="hidSort" value=""> <input
				type="hidden" id="hidSortOrder" name="hidSortOrder" value="">
			<input type="hidden" id="hidSortDate" name="hidSortDate" value="">
			<input type="hidden" id="hidListView" name="hidListView" value="LIST">
			<input type="hidden" id="hidSortCnt" name="hidSortCnt" value="50">
			<input type="hidden" id="hidSortFilter" name="hidSortFilter"
				value="Y"> <input type="hidden" id="hidJobKind"
				name="hidJobKind" value=""> <input type="hidden"
				id="hidJobKindMulti" name="hidJobKindMulti" value=""> <input
				type="hidden" id="page" name="page" value="1"> <input
				type="hidden" id="hidSearchyn" name="hidSearchyn" value="N">
			<input type="hidden" id="strAreaMulti" name="strAreaMulti" value="">
			<input type="hidden" id="schtext" name="schtext" value="">




	


	
								<div class="card-header card-header-primary">
									<h4 class="card-title ">일별 근태 관리</h4>
									<p class="card-category">
										직원의 일별 근태를 볼수 있습니다. 

									</p>
								</div>
								<div class="card-body">
									

			
										<!--날짜 선택기  -->
										<div class="datediv">
										날짜: <input type="text" id="datepicker" class="form-control datesel" onchange="changedate()"/>
									
													<script>
													
														  $("#datepicker").datepicker({
		      													 dateFormat:'yymmdd'  //Input Display Format 변경
		      	      												     
		      												  });
		      												 $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
												
      												
   													 </script>
										<!--날짜 선택기  -->
										</div>
										<table id="example" class="mdl-data-table" style="width: 100%">
											<thead  class="thead-dark">
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
   


    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->

  <script type="text/javascript" src="resources/js/popper.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <script type="text/javascript" src="resources/js/datatables.min.js"></script>

	<script src="resources/js/servicepage2/popper.min.js"></script>
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
    		 var search =$('#datepicker').val();
        	var table =$('#example').dataTable();
    		table.fnFilter(search); 
    		
            
            $('table.mdl-data-table tbody tr:odd').addClass('odd');
            $('table.mdl-data-table tbody tr:even').addClass('Even');
    });
  });

    
</script>


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
       © 2019 Copyright:<a href= "${path}"> <img src="${path}/resources/images/weblogo.png" class="footer-logo"  /> 
      </a>
     
    </div>
    <!--/.Copyright-->

  </footer>
 

</body>


</html>