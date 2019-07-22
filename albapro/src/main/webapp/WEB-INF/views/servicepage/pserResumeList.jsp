<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<%@ include file="../include/loginCheck.jsp"%>


<script type="text/javascript"
	src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>

<head>
<title>프로알바</title>


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
 
 


<script type="text/javascript" src="resources/js/recruinfo/test7.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test8.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test9.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test10.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test11.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test12.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test13.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test14.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test15.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test16.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test17.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test18.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test19.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test20.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/recruinfoCus.js"></script>







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

.jobSearch dl .content .value span {
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
top:400px !important;
    position: relative;
}

.resumetitle{
font-size:18px;
}

.fa-trash-alt{
font-size:18px;
color:red;
}



</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">이력서 목록</h2>
		</div>
		<br><br>

<!-- 		<div id="JobCount">
			<div class="all">
				<p class="title1">전체 채용공고</p>
				<p class="count">
				</p>
			</div>


		</div>
 -->
		<div id="SubContents">

			<!-- Job Count -->

			<!-- //Job Count -->

			<!-- 상단검색 S//-->


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

	


				<!-- 기본검색 -->


			
			
					
	


<!-- 바꿀곳 -->

<div class="recruinfo-list">
<input type="hidden" class="form-control form-control-sm" placeholder="" id="job_type_search" aria-controls="Example">
<table class="table table-striped table-bordered table-sm recruinfo-table " id="Example" style="width: 100%">
	<thead>
		<tr>
			<th class="local" style="width:60% !important;">이력서 제목</th>
		
			<th class="data">이력서 등록일</th>
			<th></th>
		
		</tr>
	</thead>
	<tbody>

		<c:forEach var="row" items="${map.list}">
			<tr>
				
				<td class="title" style="height:50px !important; vertical-align:middle;">
				<a href="viewResume?r_code=${row.r_code}&&id=${login.id}">
					<span class="resumetitle"> ${row.title} </span> </a>
				
					
					</td>
					
			
				<Td style="height:50px !important; vertical-align:middle; "><span class="makeday">작성일: ${row.r_date} </span></Td>
				<td class="salary" style="height:50px !important; vertical-align:middle; ">	<a href="deleteResume?r_code=${row.r_code}&&id=${login.id}" ><i class="fas fa-trash-alt"></i></a></td>
			
			</tr>
		</c:forEach>
	
	</tbody>	
</table>

</div>

   
<!-- 바꿀곳 -->


   </div>
   
   </div>
   
   




<!-- 작동 x 
Modal 직종 
<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">직종선택</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       	<div class="jobcho1"></div>
					<div class="jobcho2"></div>
					<div class="jobcho3-title">선택된 직종</div>
					<div class="jobcho3"></div>
					<button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-sejob" data-dismiss="modal">선택완료</button>
        <button type="button" class="btn btn-primary btn-remove">모두지우기</button>
      </div>
    </div>
  </div>
</div>
 -->


<!-- Modal 지역 -->
<div class="modal fade" id="ExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">직종선택</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       		<div class="placho1"></div>
		<div class="placho2"></div>		
			<div class="jobcho3-title">선택된 지역</div>
			<div class="placho3"></div>
		
					<!-- <button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button> -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-plsejob" data-dismiss="modal" >선택완료</button>
        <button type="button" class="btn btn-primary btn-plremove">모두지우기</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal 지역 -->

 <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
   


    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->

  <script type="text/javascript" src="resources/js/popper.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <script type="text/javascript" src="resources/js/datatables.min.js"></script>
  
   <script type="text/javascript">
 
	$(document).ready(function () {
		$('#Example').DataTable({
			"paging": true, // false to disable pagination (or any other option)
			"order": [[ 1, "desc" ]]
		});
		$('.dataTables_length').addClass('bs-select');
	});
	
	$('#ulGugun').on('click',function(){
		console.log($('.value > span').text());
	});

  </script>
  
  
  
  
<script>



 function plasearch() {
	
	var search =$('#plachoice').val();


	console.log(search); 

	var table =$('#Example').dataTable();
	table.fnFilter(search);
	

};  

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









